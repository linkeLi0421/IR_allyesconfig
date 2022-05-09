; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfad_bsg.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfad_bsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %union.anon.84 }
%union.anon.84 = type { %struct.fc_bsg_ctels_reply }
%struct.fc_bsg_ctels_reply = type { i32, %struct.anon.85 }
%struct.anon.85 = type { i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bfad_s = type { ptr, %struct.list_head, %struct.bfa_s, %struct.bfa_fcs_s, ptr, ptr, %struct.bfa_pcidev_s, %struct.bfa_ioc_pci_attr_s, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, %struct.bfad_port_s, %struct.bfa_meminfo_s, %struct.bfa_iocfc_cfg_s, i32, i32, %struct.spinlock, ptr, %struct.bfad_cfg_param_s, [22 x %struct.bfad_msix_s], i32, [64 x i8], [64 x i8], %struct.timer_list, i32, ptr, ptr, %struct.bfa_plog_s, i32, %union.bfad_tmp_buf, %struct.fc_host_statistics, %struct.list_head, ptr, i32, [5 x ptr], %struct.list_head, %struct.list_head, [512 x %struct.bfa_aen_entry_s], %struct.spinlock, %struct.list_head }
%struct.bfa_s = type { ptr, ptr, ptr, %struct.bfa_ioc_s, %struct.bfa_iocfc_s, %struct.bfa_timer_mod_s, %struct.bfa_modules_s, %struct.list_head, i32, [4 x %struct.list_head], i32, %struct.bfa_msix_s, i32, i32 }
%struct.bfa_ioc_s = type { ptr, ptr, %struct.bfa_pcidev_s, ptr, %struct.bfa_timer_s, %struct.bfa_timer_s, %struct.bfa_timer_s, i32, %struct.list_head, ptr, i32, i32, i32, %struct.bfa_ioc_regs_s, ptr, %struct.bfa_ioc_drv_stats_s, i32, i32, i32, i8, %struct.bfa_dma_s, ptr, ptr, %struct.bfa_ioc_mbox_mod_s, ptr, %struct.bfa_iocpf_s, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
%struct.bfa_ioc_regs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma_s = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod_s = type { %struct.list_head, i32, [35 x %struct.anon.89] }
%struct.anon.89 = type { ptr, ptr }
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
%struct.bfi_diag_dport_scn_s = type { %struct.bfi_mhdr_s, i8, [3 x i8], %union.anon.93 }
%struct.bfi_mhdr_s = type { i8, i8, %union.anon.90 }
%union.anon.90 = type { i16 }
%union.anon.93 = type { %struct.bfi_diag_dport_scn_teststart_s }
%struct.bfi_diag_dport_scn_teststart_s = type { i64, i64, i8, i8, [2 x i8], i32 }
%struct.bfa_diag_dport_result_s = type { i64, i64, i64, i64, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, [4 x %struct.bfa_diag_dport_subtest_result_s] }
%struct.bfa_diag_dport_subtest_result_s = type { i8, [7 x i8], i64 }
%struct.bfa_fcport_s = type <{ ptr, ptr, i64, i64, i32, i32, i32, [3 x i8], i8, i8, %struct.fc_alpabm_s, %struct.bfa_port_cfg_s, [3 x i8], i32, %struct.bfa_qos_attr_s, %struct.bfa_qos_vc_attr_s, %struct.bfa_reqq_wait_s, %struct.bfa_reqq_wait_s, %struct.bfa_reqq_wait_s, ptr, ptr, %union.anon.94, ptr, %struct.bfa_fcport_ln_s, %struct.bfa_cb_qe_s, %struct.bfa_timer_s, i32, ptr, i64, ptr, i32, %struct.list_head, %struct.list_head, i32, [4 x i8], i64, i32, i32, i32, [4 x i8], %struct.bfa_fcport_trunk_s, i16, [6 x i8], %struct.bfa_mem_dma_s, i32, %struct.bfa_bbcr_attr_s, i32, [4 x i8] }>
%struct.fc_alpabm_s = type { [16 x i8] }
%struct.bfa_port_cfg_s = type { i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, %struct.bfa_qos_bw_s }
%struct.bfa_qos_bw_s = type { i8, i8, i8, i8 }
%struct.bfa_qos_attr_s = type { i8, [3 x i8], i32, %struct.bfa_qos_bw_s, %struct.bfa_qos_bw_s }
%struct.bfa_qos_vc_attr_s = type { i16, i16, i32, [16 x %struct.bfa_qos_vc_info_s] }
%struct.bfa_qos_vc_info_s = type { i8, i8, i8, i8 }
%union.anon.94 = type { %union.bfi_fcport_i2h_msg_u }
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
%struct.bfa_fcs_fabric_s = type { %struct.list_head, ptr, ptr, %struct.bfa_fcs_lport_s, i32, i32, i8, i8, i8, i16, i16, i16, i16, %struct.list_head, %struct.list_head, ptr, %struct.bfa_timer_s, i64, i32, %struct.bfa_timer_s, %union.anon.97, %struct.bfa_wc_s, %struct.bfa_vf_stats_s, ptr, [16 x i8], %struct.bfa_wc_s }
%struct.bfa_fcs_lport_s = type { %struct.list_head, ptr, ptr, %struct.bfa_lport_cfg_s, %struct.bfa_timer_s, [3 x i8], i8, i16, %struct.list_head, ptr, %union.bfa_fcs_lport_topo_u, ptr, ptr, ptr, %struct.bfa_fcxp_wqe_s, %struct.bfa_lport_stats_s, %struct.bfa_wc_s }
%struct.bfa_lport_cfg_s = type { i64, i64, %struct.bfa_lport_symname_s, %struct.bfa_lport_symname_s, i32, i32, i32, [16 x i8], [4 x i8] }
%struct.bfa_lport_symname_s = type { [128 x i8] }
%union.bfa_fcs_lport_topo_u = type { %struct.bfa_fcs_lport_n2n_s, [320 x i8] }
%struct.bfa_fcs_lport_n2n_s = type { i32, i16, i64 }
%struct.bfa_fcxp_wqe_s = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.bfa_lport_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.97 = type { i16 }
%struct.bfa_vf_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_stats_s = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32, i32 }
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
%struct.bfa_plog_rec_s = type { i64, i8, i8, i8, i8, i8, i8, i16, %union.anon.86 }
%union.anon.86 = type { [8 x i32] }
%union.bfad_tmp_buf = type { [256 x i64] }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfa_aen_entry_s = type { %struct.list_head, i32, i32, %union.bfa_aen_data_u, i64, i64, i32, i32 }
%union.bfa_aen_data_u = type { %struct.bfa_rport_aen_data_s }
%struct.bfa_rport_aen_data_s = type { i16, [3 x i16], i64, i64, i64, %union.anon.100 }
%union.anon.100 = type { %struct.bfa_rport_qos_attr_s }
%struct.bfa_rport_qos_attr_s = type { i8, [3 x i8], i32 }
%struct.bfa_bsg_fcpt_s = type { i32, i16, i64, i64, i32, i32, i32, %struct.fchs_s }
%struct.fchs_s = type { [12 x i8], i8, i8, i16, i16, i16, i32 }
%struct.bfa_fcs_rport_s = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i64, i64, %struct.bfa_rport_symname_s, ptr, %struct.bfa_timer_s, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.bfa_fcxp_wqe_s, %struct.bfa_rport_stats_s, i32, %struct.bfa_fcs_rpf_s, i32 }
%struct.bfa_rport_symname_s = type { [255 x i8] }
%struct.bfa_rport_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bfa_rport_hal_stats_s }
%struct.bfa_rport_hal_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_rpf_s = type { ptr, ptr, %struct.bfa_timer_s, ptr, %struct.bfa_fcxp_wqe_s, i32, i32, i32 }
%struct.bfad_fcxp = type { ptr, ptr, i32, i16, i16, i16, i8, i8, i32, i32, %struct.fchs_s, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion }
%struct.bfad_buf_info = type { ptr, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.bfa_port_attr_s = type { i64, i64, i64, i64, i32, i32, %struct.fc_symname_s, i32, i32, %struct.bfa_port_cfg_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, [2 x i8] }
%struct.fc_symname_s = type { [256 x i8] }
%struct.mac_s = type { [6 x i8] }
%struct.bfad_hal_comp = type { i32, %struct.completion }
%struct.bfa_lport_attr_s = type { i32, i32, %struct.bfa_lport_cfg_s, i32, i32, i64, [16 x i8], %struct.mac_s, i16 }
%struct.bfa_cb_pending_q_s = type { %struct.bfa_cb_qe_s, ptr }
%struct.fc_bsg_request = type <{ i32, %union.anon.83 }>
%union.anon.83 = type { %struct.fc_bsg_host_vendor, [8 x i8] }
%struct.fc_bsg_host_vendor = type { i64, [0 x i32] }
%struct.bfa_bsg_ioc_info_s = type { i32, i16, i16, [64 x i8], [32 x i8], [32 x i8], [128 x i8], [64 x i8], [64 x i8], [64 x i8], i64, i64, i64, i64, %struct.mac_s, %struct.mac_s, %struct.mac_s, i32, i16, i16, i32, i32, i32 }
%struct.bfad_im_port_s = type { ptr, ptr, %struct.work_struct, i32, i16, i16, %struct.list_head, ptr, %struct.list_head, ptr }
%struct.bfa_bsg_ioc_attr_s = type { i32, i16, i16, %struct.bfa_ioc_attr_s }
%struct.bfa_ioc_attr_s = type { i32, i32, %struct.bfa_adapter_attr_s, %struct.bfa_ioc_driver_attr_s, %struct.bfa_ioc_pci_attr_s, i8, i8, i8, i8, i8, [3 x i8] }
%struct.bfa_adapter_attr_s = type { [8 x i8], [12 x i8], i32, [16 x i8], [128 x i8], i64, [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.bfa_mfg_vpd_s, %struct.mac_s, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, [16 x i8] }
%struct.bfa_mfg_vpd_s = type { i8, [3 x i8], i8, i8, i8, i8, [512 x i8] }
%struct.bfa_ioc_driver_attr_s = type { [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.bfa_bsg_ioc_stats_s = type { i32, i16, i16, %struct.bfa_ioc_stats_s }
%struct.bfa_ioc_stats_s = type { %struct.bfa_ioc_drv_stats_s, %struct.bfa_fw_ioc_stats_s }
%struct.bfa_fw_ioc_stats_s = type { i32, i32, i32, i32, i32, i32 }
%struct.bfa_bsg_ioc_name_s = type { i32, i16, i16, [64 x i8] }
%struct.bfa_bsg_iocfc_attr_s = type { i32, i16, i16, %struct.bfa_iocfc_attr_s }
%struct.bfa_iocfc_attr_s = type { %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_intr_attr_s }
%struct.bfa_iocfc_intr_attr_s = type { i8, [3 x i8], i16, i16 }
%struct.bfa_bsg_iocfc_intr_s = type { i32, i16, i16, %struct.bfa_iocfc_intr_attr_s }
%struct.bfa_bsg_port_attr_s = type { i32, i16, i16, %struct.bfa_port_attr_s }
%struct.bfa_bsg_port_cfg_s = type { i32, i16, i16, i32, i32 }
%struct.bfa_bsg_port_cfg_maxfrsize_s = type { i32, i16, i16 }
%struct.bfa_bsg_bbcr_enable_s = type { i32, i16, i8, i8 }
%struct.bfa_bsg_bbcr_attr_s = type { i32, i16, i16, %struct.bfa_bbcr_attr_s }
%struct.bfa_bsg_lport_attr_s = type { i32, i16, i16, i64, %struct.bfa_lport_attr_s }
%struct.bfa_bsg_lport_stats_s = type { i32, i16, i16, i64, %struct.bfa_lport_stats_s }
%struct.bfa_bsg_reset_stats_s = type { i32, i16, i16, i64 }
%struct.bfa_itnim_s = type { %struct.list_head, ptr, ptr, ptr, ptr, %struct.bfi_mhdr_s, i8, i8, %struct.bfa_cb_qe_s, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.bfa_wc_s, %struct.bfa_timer_s, %struct.bfa_reqq_wait_s, ptr, %struct.bfa_itnim_iostats_s, %struct.bfa_itnim_ioprofile_s }
%struct.bfa_itnim_iostats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32] }
%struct.bfa_itnim_ioprofile_s = type { i32, i32, i32, i32, [14 x i32], %struct.bfa_itnim_latency_s }
%struct.bfa_itnim_latency_s = type { [14 x i32], [14 x i32], [14 x i32], [14 x i32] }
%struct.bfa_rport_s = type { %struct.list_head, ptr, ptr, ptr, i16, i16, i8, [3 x i8], %struct.bfa_rport_info_s, %struct.bfa_reqq_wait_s, %struct.bfa_cb_qe_s, %struct.bfa_rport_hal_stats_s, %struct.bfa_rport_qos_attr_s, %union.a }
%struct.bfa_rport_info_s = type <{ i16, [2 x i8], i64, i8, i8, i16, i32 }>
%union.a = type { i32 }
%struct.bfa_bsg_lport_iostats_s = type { i32, i16, i16, i64, %struct.bfa_itnim_iostats_s }
%struct.bfa_bsg_lport_get_rports_s = type { i32, i16, i16, i64, i64, i32, i32 }
%struct.bfa_bsg_rport_attr_s = type { i32, i16, i16, i64, i64, i32, i32, %struct.bfa_rport_attr_s }
%struct.bfa_rport_attr_s = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.bfa_rport_symname_s, i32, %struct.bfa_rport_qos_attr_s, i32, i32, i32 }
%struct.bfa_bsg_rport_scsi_addr_s = type { i32, i16, i16, i64, i64, i32, i32, i32, i32 }
%struct.bfa_fcs_itnim_s = type { ptr, ptr, ptr, ptr, %struct.bfa_timer_s, ptr, i32, i32, i32, i32, i32, %struct.bfa_fcxp_wqe_s, ptr, %struct.bfa_itnim_stats_s }
%struct.bfa_itnim_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfad_itnim_s = type { %struct.list_head, %struct.bfa_fcs_itnim_s, %struct.work_struct, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i32, i32 }
%struct.bfa_bsg_rport_stats_s = type { i32, i16, i16, i64, i64, %struct.bfa_rport_stats_s }
%struct.bfa_bsg_rport_reset_stats_s = type { i32, i16, i16, i64, i64 }
%struct.bfa_bsg_rport_set_speed_s = type { i32, i16, i16, i32, i32, i64, i64 }
%struct.bfa_bsg_vport_attr_s = type { i32, i16, i16, i64, %struct.bfa_vport_attr_s }
%struct.bfa_vport_attr_s = type { %struct.bfa_lport_attr_s, i32, i32 }
%struct.bfa_bsg_vport_stats_s = type { i32, i16, i16, i64, %struct.bfa_vport_stats_s }
%struct.bfa_vport_stats_s = type { %struct.bfa_lport_stats_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_vport_s = type { %struct.list_head, ptr, %struct.bfa_fcs_lport_s, %struct.bfa_timer_s, ptr, %struct.bfa_vport_stats_s, ptr, i32 }
%struct.bfa_bsg_fabric_get_lports_s = type { i32, i16, i16, i64, i32, i32 }
%struct.bfa_bsg_trl_speed_s = type { i32, i16, i16, i32 }
%struct.bfa_bsg_fcpim_s = type { i32, i16, i16 }
%struct.bfa_bsg_fcpim_modstats_s = type { i32, i16, %struct.bfa_itnim_iostats_s }
%struct.bfa_bsg_fcpim_del_itn_stats_s = type { i32, i16, %struct.bfa_fcpim_del_itn_stats_s }
%struct.bfa_bsg_itnim_attr_s = type { i32, i16, i16, i64, i64, %struct.bfa_itnim_attr_s }
%struct.bfa_itnim_attr_s = type { i32, i8, i8, i8, i8 }
%struct.bfa_bsg_itnim_iostats_s = type { i32, i16, i16, i64, i64, %struct.bfa_itnim_iostats_s }
%struct.bfa_bsg_itnim_itnstats_s = type { i32, i16, i16, i64, i64, %struct.bfa_itnim_stats_s }
%struct.bfa_bsg_pcifn_cfg_s = type { i32, i16, i16, %struct.bfa_ablk_cfg_s }
%struct.bfa_ablk_cfg_s = type { [2 x %struct.bfa_ablk_cfg_inst_s] }
%struct.bfa_ablk_cfg_inst_s = type { i8, i8, [6 x i8], [16 x %struct.bfa_ablk_cfg_pf_s], [2 x %struct.bfa_ablk_cfg_port_s] }
%struct.bfa_ablk_cfg_pf_s = type { i16, i8, i8, i8, i8, i8, [1 x i8], i16, i16, i16, i16 }
%struct.bfa_ablk_cfg_port_s = type { i8, i8, i8, [5 x i8] }
%struct.bfa_bsg_pcifn_s = type { i32, i16, i16, i16, i16, i8, i32, [1 x i8] }
%struct.bfa_bsg_adapter_cfg_mode_s = type { i32, i16, i16, %struct.bfa_adapter_cfg_mode_s }
%struct.bfa_adapter_cfg_mode_s = type { i16, i16, i32 }
%struct.bfa_bsg_port_cfg_mode_s = type { i32, i16, i16, %struct.bfa_port_cfg_mode_s }
%struct.bfa_port_cfg_mode_s = type { i16, i16, i32 }
%struct.bfa_bsg_faa_attr_s = type { i32, i16, i16, %struct.bfa_faa_attr_s }
%struct.bfa_faa_attr_s = type { i64, i8, i8, [6 x i8] }
%struct.bfa_bsg_sfp_media_s = type { i32, i16, i16, i32 }
%struct.bfa_bsg_sfp_speed_s = type { i32, i16, i16, i32 }
%struct.bfa_bsg_flash_attr_s = type { i32, i16, i16, %struct.bfa_flash_attr_s }
%struct.bfa_flash_attr_s = type { i32, i32, [32 x %struct.bfa_flash_part_attr_s] }
%struct.bfa_flash_part_attr_s = type { i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.bfa_bsg_flash_s = type { i32, i16, i8, i8, i32, i32, i64 }
%struct.bfa_bsg_diag_get_temp_s = type { i32, i16, i16, %struct.bfa_diag_results_tempsensor_s }
%struct.bfa_diag_results_tempsensor_s = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.bfa_bsg_diag_memtest_s = type { i32, i16, [3 x i16], i32, %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_s }
%struct.bfa_diag_memtest_result = type { i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8] }
%struct.bfa_diag_memtest_s = type { i8, [7 x i8] }
%struct.bfa_bsg_diag_loopback_s = type { i32, i16, i16, i32, i32, i32, i32, %struct.bfa_diag_loopback_result_s }
%struct.bfa_diag_loopback_result_s = type { i32, i32, i32, i32, i32, i8, [3 x i8] }
%struct.bfa_bsg_diag_fwping_s = type { i32, i16, i16, i32, i32, %struct.bfa_diag_results_fwping }
%struct.bfa_diag_results_fwping = type { i32, i32, i32, [4 x i8] }
%struct.bfa_bsg_diag_qtest_s = type { i32, i16, i16, i32, i32, %struct.bfa_diag_qtest_result_s }
%struct.bfa_diag_qtest_result_s = type { i32, i16, i8, i8 }
%struct.bfa_bsg_sfp_show_s = type { i32, i16, i16, %struct.sfp_mem_s }
%struct.sfp_mem_s = type { %struct.sfp_srlid_base_s, %struct.sfp_srlid_ext_s, %struct.sfp_diag_base_s, %struct.sfp_diag_ext_s, %struct.sfp_usr_eeprom_s }
%struct.sfp_srlid_base_s = type { i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], i8, [3 x i8], [16 x i8], [4 x i8], [2 x i8], i8, i8 }
%struct.sfp_srlid_ext_s = type { [2 x i8], i8, i8, [16 x i8], [8 x i8], i8, i8, i8, i8 }
%struct.sfp_diag_base_s = type { [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [16 x i8], [20 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [3 x i8], i8 }
%struct.sfp_diag_ext_s = type { [10 x i8], [4 x i8], i8, i8, [2 x i8], [2 x i8], [2 x i8], [2 x i8] }
%struct.sfp_usr_eeprom_s = type { [2 x i8], i8, [2 x i8], i8, [2 x i8], i8, [2 x i8], i8, i8, [2 x i8], i8, i8, [2 x i8], i8, [3 x i8], i8, i8, [2 x i8], [3 x i8], [2 x i8] }
%struct.bfa_bsg_diag_led_s = type { i32, i16, i16, %struct.bfa_diag_ledtest_s }
%struct.bfa_diag_ledtest_s = type { i32, i32, i16, i8, [5 x i8] }
%struct.bfa_bsg_diag_beacon_s = type { i32, i16, i16, i32, i32, i32 }
%struct.bfa_bsg_dport_enable_s = type { i32, i16, i16, i16, i16 }
%struct.bfa_bsg_diag_dport_show_s = type { i32, i16, i16, %struct.bfa_diag_dport_result_s }
%struct.bfa_bsg_phy_attr_s = type { i32, i16, i16, %struct.bfa_phy_attr_s }
%struct.bfa_phy_attr_s = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_bsg_phy_stats_s = type { i32, i16, i16, %struct.bfa_phy_stats_s }
%struct.bfa_phy_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_bsg_phy_s = type { i32, i16, i16, i64, i64 }
%struct.bfa_bsg_vhba_attr_s = type { i32, i16, i16, %struct.bfa_vhba_attr_s }
%struct.bfa_vhba_attr_s = type { i64, i64, i32, i32, i32, i16, [2 x i8] }
%struct.bfi_ioc_attr_s = type { i64, i64, %struct.mac_s, i8, i8, i64, i64, %struct.mac_s, i16, %struct.mac_s, i16, [12 x i8], i8, i8, i8, i8, i32, i16, i8, i8, [64 x i8], [64 x i8], %struct.bfa_mfg_vpd_s, i32, i8, i8, i16, [16 x i8] }
%struct.bfa_bsg_debug_s = type { i32, i16, i16, i32, i32, i64, i64 }
%struct.bfa_trc_mod_s = type { i32, i32, i32, i32, i32, [3 x i32], [4096 x %struct.bfa_trc_s] }
%struct.bfa_trc_s = type { i16, i16, i32, %union.anon.87 }
%union.anon.87 = type { i64 }
%struct.bfa_bsg_portlogctl_s = type { i32, i16, i16, i32, i32 }
%struct.bfa_bsg_itnim_ioprofile_s = type { i32, i16, i16, i64, i64, %struct.bfa_itnim_ioprofile_s }
%struct.bfa_bsg_fcport_stats_s = type { i32, i16, i16, %union.bfa_fcport_stats_u }
%union.bfa_fcport_stats_u = type { %struct.bfa_fcoe_stats_s }
%struct.bfa_fcoe_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfa_bsg_boot_s = type { i32, i16, i16, %struct.bfa_boot_cfg_s }
%struct.bfa_boot_cfg_s = type { i8, i8, i16, i8, i8, i8, i8, i32, i32, [4 x %struct.bfa_boot_bootlun_s], [4 x %struct.bfa_boot_bootlun_s] }
%struct.bfa_boot_bootlun_s = type { i64, %struct.scsi_lun }
%struct.scsi_lun = type { [8 x i8] }
%struct.bfa_bsg_preboot_s = type { i32, i16, i16, %struct.bfa_boot_pbc_s }
%struct.bfa_boot_pbc_s = type { i8, i8, i8, i8, i32, [8 x %struct.bfa_boot_bootlun_s] }
%struct.bfi_iocfc_cfgrsp_s = type <{ %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_intr_attr_s, %struct.bfi_iocfc_bootwwns, %struct.bfi_pbc_s, %struct.bfi_iocfc_qreg_s }>
%struct.bfi_iocfc_bootwwns = type { [4 x i64], i8, [7 x i8] }
%struct.bfi_pbc_s = type { i8, i8, i8, i8, i8, i8, i16, i64, i64, [8 x %struct.bfi_pbc_blun_s], [16 x %struct.bfi_pbc_vport_s] }
%struct.bfi_pbc_blun_s = type { i64, %struct.scsi_lun }
%struct.bfi_pbc_vport_s = type { i64, i64 }
%struct.bfi_iocfc_qreg_s = type { [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i8] }
%struct.bfa_bsg_ethboot_s = type { i32, i16, i16, %struct.bfa_ethboot_cfg_s }
%struct.bfa_ethboot_cfg_s = type { i8, i8, i16, i8, i8, i16 }
%struct.bfa_bsg_trunk_attr_s = type { i32, i16, i16, %struct.bfa_trunk_attr_s }
%struct.bfa_bsg_qos_attr_s = type { i32, i16, i16, %struct.bfa_qos_attr_s }
%struct.bfa_bsg_qos_vc_attr_s = type { i32, i16, i16, %struct.bfa_qos_vc_attr_s }
%struct.bfa_bsg_qos_bw_s = type { i32, i16, i16, %struct.bfa_qos_bw_s }
%struct.bfa_bsg_vf_stats_s = type { i32, i16, i16, %struct.bfa_vf_stats_s }
%struct.bfa_bsg_vf_reset_stats_s = type { i32, i16, i16 }
%struct.bfa_bsg_fcpim_lunmask_query_s = type <{ i32, i16, %struct.bfa_lunmask_cfg_s, [2 x i8] }>
%struct.bfa_lunmask_cfg_s = type { i32, i32, [16 x %struct.bfa_lun_mask_s] }
%struct.bfa_lun_mask_s = type { i64, i64, %struct.scsi_lun, i8, [3 x i8], i16, i8, i8 }
%struct.bfa_bsg_fcpim_lunmask_s = type { i32, i16, i16, i64, i64, %struct.scsi_lun }
%struct.bfa_bsg_fcpim_throttle_s = type { i32, i16, i16, %struct.bfa_defs_fcpim_throttle_s }
%struct.bfa_defs_fcpim_throttle_s = type { i16, i16, i16, i16 }
%struct.bfa_bsg_tfru_s = type { i32, i16, i16, i32, i32, [64 x i8] }
%struct.bfa_bsg_fruvpd_s = type { i32, i16, i16, i32, i32, [4096 x i8], i8, [3 x i8] }
%struct.bfa_bsg_fruvpd_max_size_s = type { i32, i16, i16, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.bfa_sge_s = type { i32, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3.2.25.1\00", [23 x i8] zeroinitializer }, align 32
@bfad_mutex = external dso_local global %struct.mutex, align 4
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/bfa/bfad_bsg.c\00", [36 x i8] zeroinitializer }, align 32
@bfad_im_bsg_els_ct_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 3445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016bfa %s: fcpt request buffer alloc failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfad_im_bsg_els_ct_request\00", [37 x i8] zeroinitializer }, align 32
@bfad_im_bsg_els_ct_request._entry_ptr = internal global ptr @bfad_im_bsg_els_ct_request._entry, section ".printk_index", align 4
@bfad_im_bsg_els_ct_request._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 3453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016bfa %s: fcpt response buffer alloc failed\0A\00", [51 x i8] zeroinitializer }, align 32
@bfad_im_bsg_els_ct_request._entry_ptr.8 = internal global ptr @bfad_im_bsg_els_ct_request._entry.6, section ".printk_index", align 4
@bfad_im_bsg_els_ct_request._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 3468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016bfa %s: fcpt request fcxp_map_sg failed\0A\00", [53 x i8] zeroinitializer }, align 32
@bfad_im_bsg_els_ct_request._entry_ptr.11 = internal global ptr @bfad_im_bsg_els_ct_request._entry.9, section ".printk_index", align 4
@bfad_im_bsg_els_ct_request._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.3, i32 3484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016bfa %s: fcpt response fcxp_map_sg failed\0A\00", [52 x i8] zeroinitializer }, align 32
@bfad_im_bsg_els_ct_request._entry_ptr.14 = internal global ptr @bfad_im_bsg_els_ct_request._entry.12, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1073741825, i64 1073741826, i64 2147483651, i64 2147483652, i64 2147483903]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1073741825, i64 1073741826, i64 2147483651, i64 2147483652]
@__sancov_gen_cov_switch_values.19 = internal global [133 x i64] [i64 131, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 128, i64 129, i64 130, i64 131]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 19, i64 20, i64 21, i64 23]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 25]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 41, i64 42]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 88, i64 89, i64 90, i64 91]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 93, i64 94]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 103, i64 104]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 106, i64 107]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 114, i64 115, i64 116]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 118, i64 119]
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 87, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 123, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 2450, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 3444, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 3452, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 3467, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private constant [31 x i8] c"../drivers/scsi/bfa/bfad_bsg.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 3483, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 230, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 214, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 156, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @bfad_im_bsg_els_ct_request._entry, ptr @bfad_im_bsg_els_ct_request._entry.12, ptr @bfad_im_bsg_els_ct_request._entry.6, ptr @bfad_im_bsg_els_ct_request._entry.9, ptr @bfad_im_bsg_els_ct_request._entry_ptr, ptr @bfad_im_bsg_els_ct_request._entry_ptr.11, ptr @bfad_im_bsg_els_ct_request._entry_ptr.14, ptr @bfad_im_bsg_els_ct_request._entry_ptr.8, ptr @init_completion.__key, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_bsg_els_ct_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_bsg_els_ct_request._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_bsg_els_ct_request._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_bsg_els_ct_request._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_im_bsg_request(ptr noundef %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 3
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %1, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 -2147483393, label %sw.bb
    i32 -2147483645, label %entry.sw.bb1_crit_edge
    i32 1073741825, label %entry.sw.bb1_crit_edge43
    i32 -2147483644, label %entry.sw.bb1_crit_edge44
    i32 1073741826, label %entry.sw.bb1_crit_edge45
  ]

entry.sw.bb1_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @bfad_im_bsg_vendor_request(ptr noundef %job)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge43, %entry.sw.bb1_crit_edge44, %entry.sw.bb1_crit_edge45
  %5 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %job, align 4
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %7 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %job, align 4
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb1.while.cond.i.i.i_crit_edge

sw.bb1.while.cond.i.i.i_crit_edge:                ; preds = %sw.bb1
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %sw.bb1.while.cond.i.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %10, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %8, %sw.bb1.while.cond.i.i.i_crit_edge ]
  %call.i.i305.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i305.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i305.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i, label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i.i, label %while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i

while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fc_bsg_to_shost.exit.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i306.i = getelementptr i8, ptr %dev.addr.0.i.i.i, i32 -584
  br label %fc_bsg_to_shost.exit.i

if.end.i.i:                                       ; preds = %sw.bb1
  %parent.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i.i, align 8
  br label %while.cond.i11.i.i

while.cond.i11.i.i:                               ; preds = %while.body.i14.i.i.while.cond.i11.i.i_crit_edge, %if.end.i.i
  %dev.addr.0.i8.i.i = phi ptr [ %12, %if.end.i.i ], [ %14, %while.body.i14.i.i.while.cond.i11.i.i_crit_edge ]
  %call.i9.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i)
  %tobool.not.i10.i.i = icmp eq i32 %call.i9.i.i, 0
  br i1 %tobool.not.i10.i.i, label %while.body.i14.i.i, label %while.end.i16.i.i

while.body.i14.i.i:                               ; preds = %while.cond.i11.i.i
  %parent.i12.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %parent.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i12.i.i, align 8
  %tobool1.not.i13.i.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i13.i.i, label %while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge, label %while.body.i14.i.i.while.cond.i11.i.i_crit_edge

while.body.i14.i.i.while.cond.i11.i.i_crit_edge:  ; preds = %while.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i11.i.i

while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge: ; preds = %while.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fc_bsg_to_shost.exit.i

while.end.i16.i.i:                                ; preds = %while.cond.i11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i15.i.i = getelementptr i8, ptr %dev.addr.0.i8.i.i, i32 -584
  br label %fc_bsg_to_shost.exit.i

fc_bsg_to_shost.exit.i:                           ; preds = %while.end.i16.i.i, %while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge, %while.end.i.i.i, %while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i306.i, %while.end.i.i.i ], [ %add.ptr.i15.i.i, %while.end.i16.i.i ], [ null, %while.body.i14.i.i.fc_bsg_to_shost.exit.i_crit_edge ], [ null, %while.body.i.i.i.fc_bsg_to_shost.exit.i_crit_edge ]
  %hostdata.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  %15 = ptrtoint ptr %hostdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hostdata.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %request, align 4
  %reply.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 4
  %21 = ptrtoint ptr %reply.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reply.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %20, align 1
  %reply_len.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 6
  %25 = ptrtoint ptr %reply_len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %reply_len.i, align 4
  %reply_payload_rcv_len.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %reply_payload_rcv_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %reply_payload_rcv_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 20
  %cmp.i = icmp eq ptr %add.ptr.i, null
  br i1 %cmp.i, label %fc_bsg_to_shost.exit.i.out.thread.i_crit_edge, label %if.end8.i.i311.i

fc_bsg_to_shost.exit.i.out.thread.i_crit_edge:    ; preds = %fc_bsg_to_shost.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread.i

if.end8.i.i311.i:                                 ; preds = %fc_bsg_to_shost.exit.i
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr.i, align 1
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #14
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i311.i.out.thread.i_crit_edge, label %if.end5.i

if.end8.i.i311.i.out.thread.i_crit_edge:          ; preds = %if.end8.i.i311.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread.i

if.end5.i:                                        ; preds = %if.end8.i.i311.i
  %payload.i = getelementptr i8, ptr %20, i32 24
  %29 = ptrtoint ptr %payload.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %payload.i, align 1
  %conv.i = trunc i64 %30 to i32
  %31 = inttoptr i32 %conv.i to ptr
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp9.i.i.i = icmp slt i32 %33, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end5.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.out.thread.sink.split.i_crit_edge, label %if.then27.i.i.i, !prof !45

land.rhs16.i.i.i.out.thread.sink.split.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread.sink.split.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %out.thread.sink.split.i

if.then.i.i.i.i:                                  ; preds = %if.end5.i
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %33, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 %33, i32 -1226833920) #15, !srcloc !46
  %asmresult.i.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !45

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef %33) #11
  %35 = tail call i32 @llvm.read_register.i32(metadata !35) #11
  %and.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !47
  %and.i.i.i.i.i = and i32 %37, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !49
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i.i, ptr noundef %31, i32 noundef %33) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #11, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !49
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %33, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %33, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end10.i, label %if.then11.i.i.i, !prof !45

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub i32 %33, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %sub.i.i.i
  %38 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %out.thread.sink.split.i

if.end10.i:                                       ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i318.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 136) #16
  %cmp12.i = icmp eq ptr %call7.i.i318.i, null
  br i1 %cmp12.i, label %if.end10.i.out.thread.sink.split.i_crit_edge, label %do.body16.i

if.end10.i.out.thread.sink.split.i_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread.sink.split.i

do.body16.i:                                      ; preds = %if.end10.i
  %bfad_lock.i = getelementptr inbounds %struct.bfad_s, ptr %18, i32 0, i32 20
  %call20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i) #11
  %bfa_fcs.i = getelementptr inbounds %struct.bfad_s, ptr %18, i32 0, i32 3
  %vf_id.i = getelementptr inbounds %struct.bfa_bsg_fcpt_s, ptr %call9.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %vf_id.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vf_id.i, align 4
  %lpwwn.i = getelementptr inbounds %struct.bfa_bsg_fcpt_s, ptr %call9.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %lpwwn.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %lpwwn.i, align 8
  %call23.i = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i, i16 noundef zeroext %41, i64 noundef %43) #11
  %cmp24.i = icmp eq ptr %call23.i, null
  br i1 %cmp24.i, label %if.then26.i, label %if.end28.i

if.then26.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 18, ptr %call9.i.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call20.i) #11
  br label %out_free_mem.i

if.end28.i:                                       ; preds = %do.body16.i
  %call29.i = tail call i32 @bfa_fcs_lport_is_online(ptr noundef nonnull %call23.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end34.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 34, ptr %call9.i.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call20.i) #11
  br label %out_free_mem.i

if.end34.i:                                       ; preds = %if.end28.i
  %bfad_port.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %call23.i, i32 0, i32 11
  %46 = ptrtoint ptr %bfad_port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bfad_port.i, align 8
  %48 = ptrtoint ptr %call7.i.i318.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %call7.i.i318.i, align 8
  %bfad36.i = getelementptr inbounds %struct.bfad_port_s, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %bfad36.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bfad36.i, align 4
  %tobool37.not.i = icmp eq ptr %50, null
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %bfad36.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %18, ptr %bfad36.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.end34.i.if.end41.i_crit_edge
  %52 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %24, label %if.else62.i [
    i32 -2147483645, label %if.end41.i.if.end65.i_crit_edge
    i32 -2147483644, label %if.end41.i.if.end65.i_crit_edge46
    i32 1073741825, label %if.end41.i.if.then52.i_crit_edge
    i32 1073741826, label %if.end41.i.if.then52.i_crit_edge47
  ]

if.end41.i.if.then52.i_crit_edge47:               ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52.i

if.end41.i.if.then52.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52.i

if.end41.i.if.end65.i_crit_edge46:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.end41.i.if.end65.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.then52.i:                                      ; preds = %if.end41.i.if.then52.i_crit_edge, %if.end41.i.if.then52.i_crit_edge47
  %dpwwn.i = getelementptr inbounds %struct.bfa_bsg_fcpt_s, ptr %call9.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %dpwwn.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dpwwn.i, align 16
  %call53.i = tail call ptr @bfa_fcs_lport_get_rport_by_pwwn(ptr noundef nonnull %call23.i, i64 noundef %54) #11
  %cmp54.i = icmp eq ptr %call53.i, null
  br i1 %cmp54.i, label %if.then56.i, label %if.end59.i

if.then56.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 19, ptr %call9.i.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call20.i) #11
  br label %out_free_mem.i

if.end59.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa_rport60.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call53.i, i32 0, i32 20
  %56 = ptrtoint ptr %bfa_rport60.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bfa_rport60.i, align 4
  br label %if.end65.i

if.else62.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call20.i) #11
  br label %out_free_mem.i

if.end65.i:                                       ; preds = %if.end59.i, %if.end41.i.if.end65.i_crit_edge, %if.end41.i.if.end65.i_crit_edge46
  %.sink434.i = phi ptr [ %57, %if.end59.i ], [ null, %if.end41.i.if.end65.i_crit_edge ], [ null, %if.end41.i.if.end65.i_crit_edge46 ]
  %bfa_rport61.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 1
  %58 = ptrtoint ptr %bfa_rport61.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %.sink434.i, ptr %bfa_rport61.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call20.i) #11
  %request_payload.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7
  %59 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %request_payload.i, align 4
  %call9.i.i346.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %60, i32 noundef 3520) #14
  %tobool69.not.i = icmp eq ptr %call9.i.i346.i, null
  br i1 %tobool69.not.i, label %do.end73.i, label %if.end76.i

do.end73.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  %pci_name.i = getelementptr inbounds %struct.bfad_s, ptr %18, i32 0, i32 5
  %61 = ptrtoint ptr %pci_name.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pci_name.i, align 4
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %62) #17
  br label %out_free_mem.i

if.end76.i:                                       ; preds = %if.end65.i
  %reply_payload.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8
  %63 = ptrtoint ptr %reply_payload.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reply_payload.i, align 4
  %call9.i.i375.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %64, i32 noundef 3520) #14
  %tobool79.not.i = icmp eq ptr %call9.i.i375.i, null
  br i1 %tobool79.not.i, label %do.end83.i, label %if.end87.i

do.end83.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  %pci_name85.i = getelementptr inbounds %struct.bfad_s, ptr %18, i32 0, i32 5
  %65 = ptrtoint ptr %pci_name85.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci_name85.i, align 4
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %66) #17
  br label %out_free_mem.i

if.end87.i:                                       ; preds = %if.end76.i
  %sg_list.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %67 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sg_list.i, align 4
  %sg_cnt.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 1
  %69 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sg_cnt.i, align 4
  %71 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %request_payload.i, align 4
  %call92.i = tail call i32 @sg_copy_to_buffer(ptr noundef %68, i32 noundef %70, ptr noundef nonnull %call9.i.i346.i, i32 noundef %72) #11
  %73 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %request_payload.i, align 4
  %num_req_sgles.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 20) #16
  %tobool.not.i379.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i379.i, label %if.end87.i.do.end101.i_crit_edge, label %if.end.i381.i

if.end87.i.do.end101.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end101.i

if.end.i381.i:                                    ; preds = %if.end87.i
  %size.i.i = getelementptr inbounds %struct.bfad_buf_info, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %74, ptr %size.i.i, align 8
  %pcidev.i.i = getelementptr inbounds %struct.bfad_s, ptr %18, i32 0, i32 4
  %77 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcidev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %phys.i.i = getelementptr inbounds %struct.bfad_buf_info, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %call.i.i380.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %74, ptr noundef %phys.i.i, i32 noundef 3264, i32 noundef 0) #11
  %79 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i.i380.i, ptr %call7.i.i.i.i.i, align 8
  %tobool4.not.i.i = icmp eq ptr %call.i.i380.i, null
  br i1 %tobool4.not.i.i, label %out_free_mem.i.i, label %if.end105.i

out_free_mem.i.i:                                 ; preds = %if.end.i381.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #11
  br label %do.end101.i

do.end101.i:                                      ; preds = %out_free_mem.i.i, %if.end87.i.do.end101.i_crit_edge
  %reqbuf_info420.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 11
  %80 = ptrtoint ptr %reqbuf_info420.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %reqbuf_info420.i, align 4
  %pci_name103.i = getelementptr inbounds %struct.bfad_s, ptr %18, i32 0, i32 5
  %81 = ptrtoint ptr %pci_name103.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pci_name103.i, align 4
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %82) #17
  br label %out_free_mem.i

if.end105.i:                                      ; preds = %if.end.i381.i
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 12
  %83 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size.i.i, align 8
  %85 = call ptr @memcpy(ptr %call.i.i380.i, ptr %call9.i.i346.i, i32 %84)
  %86 = load i32, ptr %size.i.i, align 8
  %87 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %add.ptr.i.i, align 4
  %88 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %phys.i.i, align 4
  %90 = inttoptr i32 %89 to ptr
  %sg_addr.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 16
  %91 = ptrtoint ptr %sg_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %sg_addr.i.i, align 8
  %92 = ptrtoint ptr %num_req_sgles.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %num_req_sgles.i, align 4
  %reqbuf_info.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 11
  %93 = ptrtoint ptr %reqbuf_info.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i.i.i.i, ptr %reqbuf_info.i, align 4
  %req_sge.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 13
  %94 = ptrtoint ptr %req_sge.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %add.ptr.i.i, ptr %req_sge.i, align 4
  %95 = ptrtoint ptr %reply_payload.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reply_payload.i, align 4
  %num_rsp_sgles.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3520, i32 noundef 20) #16
  %tobool.not.i15 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i15, label %if.end105.i.do.end117.i_crit_edge, label %if.end.i17

if.end105.i.do.end117.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end117.i

if.end.i17:                                       ; preds = %if.end105.i
  %size.i = getelementptr inbounds %struct.bfad_buf_info, ptr %call7.i.i.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %96, ptr %size.i, align 8
  %99 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pcidev.i.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %phys.i = getelementptr inbounds %struct.bfad_buf_info, ptr %call7.i.i.i.i, i32 0, i32 1
  %call.i.i16 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %96, ptr noundef %phys.i, i32 noundef 3264, i32 noundef 0) #11
  %101 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i.i16, ptr %call7.i.i.i.i, align 8
  %tobool4.not.i = icmp eq ptr %call.i.i16, null
  br i1 %tobool4.not.i, label %out_free_mem.i19, label %if.end121.i

out_free_mem.i19:                                 ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %do.end117.i

do.end117.i:                                      ; preds = %out_free_mem.i19, %if.end105.i.do.end117.i_crit_edge
  %rspbuf_info.i22 = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 12
  %102 = ptrtoint ptr %rspbuf_info.i22 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %rspbuf_info.i22, align 8
  %pci_name119.i = getelementptr inbounds %struct.bfad_s, ptr %18, i32 0, i32 5
  %103 = ptrtoint ptr %pci_name119.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pci_name119.i, align 4
  %call120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %104) #17
  br label %out_free_mem.i

if.end121.i:                                      ; preds = %if.end.i17
  %add.ptr.i18 = getelementptr i8, ptr %call7.i.i.i.i, i32 12
  %105 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size.i, align 8
  %107 = call ptr @memcpy(ptr %call.i.i16, ptr %call9.i.i375.i, i32 %106)
  %108 = load i32, ptr %size.i, align 8
  %109 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %add.ptr.i18, align 4
  %110 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %phys.i, align 4
  %112 = inttoptr i32 %111 to ptr
  %sg_addr.i = getelementptr i8, ptr %call7.i.i.i.i, i32 16
  %113 = ptrtoint ptr %sg_addr.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %sg_addr.i, align 8
  %114 = ptrtoint ptr %num_rsp_sgles.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %num_rsp_sgles.i, align 8
  %rspbuf_info.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 12
  %115 = ptrtoint ptr %rspbuf_info.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call7.i.i.i.i, ptr %rspbuf_info.i, align 8
  %rsp_sge.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 14
  %116 = ptrtoint ptr %rsp_sge.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %add.ptr.i18, ptr %rsp_sge.i, align 8
  %comp.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 18
  %117 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %comp.i, align 8
  %wait.i.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 18, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %118 = ptrtoint ptr %call7.i.i318.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call7.i.i318.i, align 8
  %bfad1.i = getelementptr inbounds %struct.bfad_port_s, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %bfad1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bfad1.i, align 4
  %bfad_lock.i7 = getelementptr inbounds %struct.bfad_s, ptr %121, i32 0, i32 20
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i7) #11
  %bfa.i = getelementptr inbounds %struct.bfad_s, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %num_req_sgles.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_req_sgles.i, align 4
  %124 = ptrtoint ptr %num_rsp_sgles.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_rsp_sgles.i, align 8
  %call6.i = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef nonnull %call7.i.i318.i, ptr noundef %bfa.i, i32 noundef %123, i32 noundef %125, ptr noundef nonnull @bfad_fcxp_get_req_sgaddr_cb, ptr noundef nonnull @bfad_fcxp_get_req_sglen_cb, ptr noundef nonnull @bfad_fcxp_get_rsp_sgaddr_cb, ptr noundef nonnull @bfad_fcxp_get_rsp_sglen_cb, i32 noundef 1) #11
  %tobool.not.i10 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i10, label %if.else133.i, label %if.then130.i

if.then130.i:                                     ; preds = %if.end121.i
  %bfa_fcxp.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 17
  %126 = ptrtoint ptr %bfa_fcxp.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call6.i, ptr %bfa_fcxp.i, align 4
  %fchs.i = getelementptr inbounds %struct.bfa_bsg_fcpt_s, ptr %call9.i.i.i, i32 0, i32 7
  %127 = ptrtoint ptr %fchs.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 12)
  %bf.load.i = load i96, ptr %fchs.i, align 4
  %bf.lshr.i = lshr i96 %bf.load.i, 32
  %128 = trunc i96 %bf.lshr.i to i32
  %bf.cast.i = and i32 %128, 16777215
  %call9.i = tail call zeroext i8 @bfa_lps_get_tag_from_pid(ptr noundef %bfa.i, i32 noundef %bf.cast.i) #11
  %129 = ptrtoint ptr %bfa_rport61.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bfa_rport61.i, align 4
  %131 = ptrtoint ptr %vf_id.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %vf_id.i, align 4
  %cts.i = getelementptr inbounds %struct.bfa_bsg_fcpt_s, ptr %call9.i.i.i, i32 0, i32 5
  %133 = ptrtoint ptr %cts.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cts.i, align 4
  %cos.i = getelementptr inbounds %struct.bfa_bsg_fcpt_s, ptr %call9.i.i.i, i32 0, i32 6
  %135 = ptrtoint ptr %cos.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cos.i, align 32
  %137 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %request_payload.i, align 4
  %139 = ptrtoint ptr %reply_payload.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %reply_payload.i, align 4
  %tsecs.i = getelementptr inbounds %struct.bfa_bsg_fcpt_s, ptr %call9.i.i.i, i32 0, i32 4
  %141 = ptrtoint ptr %tsecs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tsecs.i, align 8
  %conv12.i = trunc i32 %142 to i8
  tail call void @bfa_fcxp_send(ptr noundef nonnull %call6.i, ptr noundef %130, i16 noundef zeroext %132, i8 noundef zeroext %call9.i, i32 noundef %134, i32 noundef %136, i32 noundef %138, ptr noundef %fchs.i, ptr noundef nonnull @bfad_send_fcpt_cb, ptr noundef %121, i32 noundef %140, i8 noundef zeroext %conv12.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i7, i32 noundef %call3.i) #11
  tail call void @wait_for_completion(ptr noundef %comp.i) #11
  %req_status.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 2
  %143 = ptrtoint ptr %req_status.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %req_status.i, align 8
  %145 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp137.i = icmp eq i32 %144, 0
  br i1 %cmp137.i, label %if.then139.i, label %if.else146.i

if.else133.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i = getelementptr inbounds %struct.bfad_s, ptr %121, i32 0, i32 30
  %146 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %trcmod.i, align 8
  tail call void @__bfa_trc(ptr noundef %147, i32 noundef 3075, i32 noundef 3321, i64 noundef 0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i7, i32 noundef %call3.i) #11
  %148 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 3, ptr %call9.i.i.i, align 128
  br label %out_free_mem.i

if.then139.i:                                     ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #13
  %rsp_len.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 4
  %149 = ptrtoint ptr %rsp_len.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %rsp_len.i, align 2
  %conv140.i = zext i16 %150 to i32
  %151 = ptrtoint ptr %reply_len.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv140.i, ptr %reply_len.i, align 4
  %152 = ptrtoint ptr %reply_payload_rcv_len.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv140.i, ptr %reply_payload_rcv_len.i, align 4
  br label %if.end151.i

if.else146.i:                                     ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %reply_payload_rcv_len.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 8, ptr %reply_payload_rcv_len.i, align 4
  %154 = ptrtoint ptr %reply_len.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 4, ptr %reply_len.i, align 4
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else146.i, %if.then139.i
  %.sink.i = phi i32 [ 0, %if.then139.i ], [ 1, %if.else146.i ]
  %155 = getelementptr inbounds %struct.fc_bsg_reply, ptr %22, i32 0, i32 2
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %.sink.i, ptr %155, align 4
  %sg_list153.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 2
  %157 = ptrtoint ptr %sg_list153.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %sg_list153.i, align 4
  %sg_cnt155.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 1
  %159 = ptrtoint ptr %sg_cnt155.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %sg_cnt155.i, align 4
  %161 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %call7.i.i.i.i, align 8
  %163 = ptrtoint ptr %reply_payload.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %reply_payload.i, align 4
  %call158.i = tail call i32 @sg_copy_from_buffer(ptr noundef %158, i32 noundef %160, ptr noundef %162, i32 noundef %164) #11
  br label %out_free_mem.i

out_free_mem.i:                                   ; preds = %if.end151.i, %if.else133.i, %do.end117.i, %do.end101.i, %do.end83.i, %do.end73.i, %if.else62.i, %if.then56.i, %if.then31.i, %if.then26.i
  %req_kbuf.0.i = phi ptr [ null, %if.then26.i ], [ %call9.i.i346.i, %if.end151.i ], [ %call9.i.i346.i, %if.else133.i ], [ %call9.i.i346.i, %do.end117.i ], [ %call9.i.i346.i, %do.end101.i ], [ %call9.i.i346.i, %do.end83.i ], [ null, %do.end73.i ], [ null, %if.then56.i ], [ null, %if.else62.i ], [ null, %if.then31.i ]
  %rsp_kbuf.0.i = phi ptr [ null, %if.then26.i ], [ %call9.i.i375.i, %if.end151.i ], [ %call9.i.i375.i, %if.else133.i ], [ %call9.i.i375.i, %do.end117.i ], [ %call9.i.i375.i, %do.end101.i ], [ null, %do.end83.i ], [ null, %do.end73.i ], [ null, %if.then56.i ], [ null, %if.else62.i ], [ null, %if.then31.i ]
  %cmp170.i = phi i1 [ false, %if.then26.i ], [ true, %if.end151.i ], [ false, %if.else133.i ], [ false, %do.end117.i ], [ false, %do.end101.i ], [ false, %do.end83.i ], [ false, %do.end73.i ], [ false, %if.then56.i ], [ false, %if.else62.i ], [ false, %if.then31.i ]
  %rc.0.i = phi i32 [ -22, %if.then26.i ], [ 0, %if.end151.i ], [ 3, %if.else133.i ], [ -12, %do.end117.i ], [ -12, %do.end101.i ], [ -12, %do.end83.i ], [ -12, %do.end73.i ], [ -22, %if.then56.i ], [ -22, %if.else62.i ], [ -22, %if.then31.i ]
  %rspbuf_info159.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 12
  %165 = ptrtoint ptr %rspbuf_info159.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rspbuf_info159.i, align 8
  %num_rsp_sgles160.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 9
  %167 = ptrtoint ptr %num_rsp_sgles160.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_rsp_sgles160.i, align 8
  %tobool.not.i383.i = icmp eq ptr %166, null
  br i1 %tobool.not.i383.i, label %out_free_mem.i.bfad_fcxp_free_mem.exit.i_crit_edge, label %for.cond.preheader.i.i

out_free_mem.i.bfad_fcxp_free_mem.exit.i_crit_edge: ; preds = %out_free_mem.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_fcxp_free_mem.exit.i

for.cond.preheader.i.i:                           ; preds = %out_free_mem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp12.not.i.i = icmp eq i32 %168, 0
  br i1 %cmp12.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %pcidev.i384.i = getelementptr inbounds %struct.bfad_s, ptr %18, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %buf_info.014.i.i = phi ptr [ %166, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %169 = ptrtoint ptr %buf_info.014.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %buf_info.014.i.i, align 4
  %cmp1.not.i.i = icmp eq ptr %170, null
  br i1 %cmp1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then2.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then2.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %171 = ptrtoint ptr %pcidev.i384.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pcidev.i384.i, align 8
  %dev.i385.i = getelementptr inbounds %struct.pci_dev, ptr %172, i32 0, i32 44
  %size.i386.i = getelementptr inbounds %struct.bfad_buf_info, ptr %buf_info.014.i.i, i32 0, i32 2
  %173 = ptrtoint ptr %size.i386.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %size.i386.i, align 4
  %phys.i387.i = getelementptr inbounds %struct.bfad_buf_info, ptr %buf_info.014.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %phys.i387.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %phys.i387.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i385.i, i32 noundef %174, ptr noundef nonnull %170, i32 noundef %176, i32 noundef 0) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then2.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bfad_buf_info, ptr %buf_info.014.i.i, i32 1
  %inc.i.i = add nuw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %168
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %166) #11
  br label %bfad_fcxp_free_mem.exit.i

bfad_fcxp_free_mem.exit.i:                        ; preds = %for.end.i.i, %out_free_mem.i.bfad_fcxp_free_mem.exit.i_crit_edge
  %reqbuf_info161.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 11
  %177 = ptrtoint ptr %reqbuf_info161.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reqbuf_info161.i, align 4
  %num_req_sgles162.i = getelementptr inbounds %struct.bfad_fcxp, ptr %call7.i.i318.i, i32 0, i32 8
  %179 = ptrtoint ptr %num_req_sgles162.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_req_sgles162.i, align 4
  %tobool.not.i388.i = icmp eq ptr %178, null
  br i1 %tobool.not.i388.i, label %bfad_fcxp_free_mem.exit.i.bfad_fcxp_free_mem.exit406.i_crit_edge, label %for.cond.preheader.i390.i

bfad_fcxp_free_mem.exit.i.bfad_fcxp_free_mem.exit406.i_crit_edge: ; preds = %bfad_fcxp_free_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_fcxp_free_mem.exit406.i

for.cond.preheader.i390.i:                        ; preds = %bfad_fcxp_free_mem.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp12.not.i389.i = icmp eq i32 %180, 0
  br i1 %cmp12.not.i389.i, label %for.cond.preheader.i390.i.for.end.i405.i_crit_edge, label %for.body.lr.ph.i392.i

for.cond.preheader.i390.i.for.end.i405.i_crit_edge: ; preds = %for.cond.preheader.i390.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i405.i

for.body.lr.ph.i392.i:                            ; preds = %for.cond.preheader.i390.i
  %pcidev.i391.i = getelementptr inbounds %struct.bfad_s, ptr %18, i32 0, i32 4
  br label %for.body.i396.i

for.body.i396.i:                                  ; preds = %for.inc.i404.i.for.body.i396.i_crit_edge, %for.body.lr.ph.i392.i
  %buf_info.014.i393.i = phi ptr [ %178, %for.body.lr.ph.i392.i ], [ %incdec.ptr.i401.i, %for.inc.i404.i.for.body.i396.i_crit_edge ]
  %i.013.i394.i = phi i32 [ 0, %for.body.lr.ph.i392.i ], [ %inc.i402.i, %for.inc.i404.i.for.body.i396.i_crit_edge ]
  %181 = ptrtoint ptr %buf_info.014.i393.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %buf_info.014.i393.i, align 4
  %cmp1.not.i395.i = icmp eq ptr %182, null
  br i1 %cmp1.not.i395.i, label %for.body.i396.i.for.inc.i404.i_crit_edge, label %if.then2.i400.i

for.body.i396.i.for.inc.i404.i_crit_edge:         ; preds = %for.body.i396.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i404.i

if.then2.i400.i:                                  ; preds = %for.body.i396.i
  call void @__sanitizer_cov_trace_pc() #13
  %183 = ptrtoint ptr %pcidev.i391.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pcidev.i391.i, align 8
  %dev.i397.i = getelementptr inbounds %struct.pci_dev, ptr %184, i32 0, i32 44
  %size.i398.i = getelementptr inbounds %struct.bfad_buf_info, ptr %buf_info.014.i393.i, i32 0, i32 2
  %185 = ptrtoint ptr %size.i398.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %size.i398.i, align 4
  %phys.i399.i = getelementptr inbounds %struct.bfad_buf_info, ptr %buf_info.014.i393.i, i32 0, i32 1
  %187 = ptrtoint ptr %phys.i399.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %phys.i399.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i397.i, i32 noundef %186, ptr noundef nonnull %182, i32 noundef %188, i32 noundef 0) #11
  br label %for.inc.i404.i

for.inc.i404.i:                                   ; preds = %if.then2.i400.i, %for.body.i396.i.for.inc.i404.i_crit_edge
  %incdec.ptr.i401.i = getelementptr %struct.bfad_buf_info, ptr %buf_info.014.i393.i, i32 1
  %inc.i402.i = add nuw i32 %i.013.i394.i, 1
  %exitcond.not.i403.i = icmp eq i32 %inc.i402.i, %180
  br i1 %exitcond.not.i403.i, label %for.inc.i404.i.for.end.i405.i_crit_edge, label %for.inc.i404.i.for.body.i396.i_crit_edge

for.inc.i404.i.for.body.i396.i_crit_edge:         ; preds = %for.inc.i404.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i396.i

for.inc.i404.i.for.end.i405.i_crit_edge:          ; preds = %for.inc.i404.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i405.i

for.end.i405.i:                                   ; preds = %for.inc.i404.i.for.end.i405.i_crit_edge, %for.cond.preheader.i390.i.for.end.i405.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %178) #11
  br label %bfad_fcxp_free_mem.exit406.i

bfad_fcxp_free_mem.exit406.i:                     ; preds = %for.end.i405.i, %bfad_fcxp_free_mem.exit.i.bfad_fcxp_free_mem.exit406.i_crit_edge
  tail call void @kfree(ptr noundef %req_kbuf.0.i) #11
  tail call void @kfree(ptr noundef %rsp_kbuf.0.i) #11
  %189 = ptrtoint ptr %payload.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 8)
  %190 = load i64, ptr %payload.i, align 1
  %conv164.i = trunc i64 %190 to i32
  %191 = inttoptr i32 %conv164.i to ptr
  %192 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %192, i32 4)
  %193 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp9.i.i291.i = icmp slt i32 %193, 0
  br i1 %cmp9.i.i291.i, label %land.rhs16.i.i294.i, label %if.then.i.i.i297.i

land.rhs16.i.i294.i:                              ; preds = %bfad_fcxp_free_mem.exit406.i
  %.b71.i.i293.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i293.i, label %land.rhs16.i.i294.i.copy_to_user.exit.i_crit_edge, label %if.then27.i.i295.i, !prof !45

land.rhs16.i.i294.i.copy_to_user.exit.i_crit_edge: ; preds = %land.rhs16.i.i294.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.then27.i.i295.i:                               ; preds = %land.rhs16.i.i294.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_to_user.exit.i

if.then.i.i.i297.i:                               ; preds = %bfad_fcxp_free_mem.exit406.i
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %193, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #11
  %call.i.i298.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i298.i, label %if.then.i.i.i297.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i302.i

if.then.i.i.i297.i.copy_to_user.exit.i_crit_edge: ; preds = %if.then.i.i.i297.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.end.i.i302.i:                                  ; preds = %if.then.i.i.i297.i
  %194 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %191, i32 %193, i32 -1226833920) #15, !srcloc !50
  %asmresult.i.i300.i = extractvalue { i32, i32 } %194, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i300.i)
  %cmp.i6.i301.i = icmp eq i32 %asmresult.i.i300.i, 0
  br i1 %cmp.i6.i301.i, label %if.then2.i.i.i, label %if.end.i.i302.i.copy_to_user.exit.i_crit_edge

if.end.i.i302.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.end.i.i302.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i302.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i303.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i.i, i32 noundef %193) #11
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %191, ptr noundef nonnull %call9.i.i.i, i32 noundef %193) #11
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i302.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i297.i.copy_to_user.exit.i_crit_edge, %if.then27.i.i295.i, %land.rhs16.i.i294.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i304.i = phi i32 [ %193, %if.then.i.i.i297.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %193, %if.end.i.i302.i.copy_to_user.exit.i_crit_edge ], [ 1, %if.then27.i.i295.i ], [ 1, %land.rhs16.i.i294.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i304.i)
  %tobool167.not.i = icmp eq i32 %n.addr.0.i304.i, 0
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i318.i) #11
  br i1 %tobool167.not.i, label %out.i, label %copy_to_user.exit.i.out.thread.i_crit_edge

copy_to_user.exit.i.out.thread.i_crit_edge:       ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread.i

out.thread.sink.split.i:                          ; preds = %if.end10.i.out.thread.sink.split.i_crit_edge, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.out.thread.sink.split.i_crit_edge
  %rc.2.ph.ph.i = phi i32 [ -5, %if.then11.i.i.i ], [ -5, %if.then27.i.i.i ], [ -5, %land.rhs16.i.i.i.out.thread.sink.split.i_crit_edge ], [ -12, %if.end10.i.out.thread.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %out.thread.i

out.thread.i:                                     ; preds = %out.thread.sink.split.i, %copy_to_user.exit.i.out.thread.i_crit_edge, %if.end8.i.i311.i.out.thread.i_crit_edge, %fc_bsg_to_shost.exit.i.out.thread.i_crit_edge
  %rc.2.ph.i = phi i32 [ -12, %if.end8.i.i311.i.out.thread.i_crit_edge ], [ -5, %copy_to_user.exit.i.out.thread.i_crit_edge ], [ -22, %fc_bsg_to_shost.exit.i.out.thread.i_crit_edge ], [ %rc.2.ph.ph.i, %out.thread.sink.split.i ]
  %195 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %rc.2.ph.i, ptr %22, align 4
  br label %sw.epilog

out.i:                                            ; preds = %copy_to_user.exit.i
  %196 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %rc.0.i, ptr %22, align 4
  br i1 %cmp170.i, label %if.then172.i, label %out.i.sw.epilog_crit_edge

out.i.sw.epilog_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then172.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %reply_payload_rcv_len.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %reply_payload_rcv_len.i, align 4
  tail call void @bsg_job_done(ptr noundef %job, i32 noundef 0, i32 noundef %198) #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reply = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 4
  %199 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %reply, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 -22, ptr %200, align 4
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %200, i32 0, i32 1
  %202 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %reply_payload_rcv_len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then172.i, %out.i.sw.epilog_crit_edge, %out.thread.i, %sw.bb
  %rc.0 = phi i32 [ -22, %sw.default ], [ %call, %sw.bb ], [ %rc.2.ph.i, %out.thread.i ], [ 0, %if.then172.i ], [ %rc.0.i, %out.i.sw.epilog_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bfad_im_bsg_vendor_request(ptr noundef %job) unnamed_addr #0 align 64 {
entry:
  %pattr.i = alloca %struct.bfa_port_attr_s, align 8
  %tmp9.i = alloca %struct.mac_s, align 1
  %tmp12.i = alloca %struct.mac_s, align 1
  %fcomp.i1084 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i1072 = alloca %struct.bfad_hal_comp, align 4
  %port_attr.i1063 = alloca %struct.bfa_lport_attr_s, align 8
  %fcomp.i1049 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i1037 = alloca %struct.bfad_hal_comp, align 4
  %nports.i = alloca i32, align 4
  %fcomp.i708 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i692 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i681 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i668 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i654 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i642 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i632 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i623 = alloca %struct.bfad_hal_comp, align 4
  %cee_comp.i608 = alloca %struct.bfad_hal_comp, align 4
  %cee_comp.i = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i577 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i565 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i555 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i544 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i526 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i511 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i499 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i486 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i471 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i459 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i449 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i440 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i411 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i400 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i383 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i371 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i360 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i340 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i329 = alloca %struct.bfad_hal_comp, align 4
  %offset.i312 = alloca i32, align 4
  %fcomp.i279 = alloca %struct.bfad_hal_comp, align 4
  %cb_qe.i280 = alloca %struct.bfa_cb_pending_q_s, align 4
  %fcomp.i269 = alloca %struct.bfad_hal_comp, align 4
  %cb_qe.i270 = alloca %struct.bfa_cb_pending_q_s, align 4
  %fcomp.i258 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i247 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i233 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i224 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i153 = alloca %struct.bfad_hal_comp, align 4
  %cb_qe.i154 = alloca %struct.bfa_cb_pending_q_s, align 4
  %fcomp.i145 = alloca %struct.bfad_hal_comp, align 4
  %cb_qe.i = alloca %struct.bfa_cb_pending_q_s, align 4
  %fcomp.i101 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i88 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i75 = alloca %struct.bfad_hal_comp, align 4
  %fcomp.i = alloca %struct.bfad_hal_comp, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 3
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %reply = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 4
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply, align 4
  %vendor_cmd1 = getelementptr inbounds %struct.fc_bsg_request, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %vendor_cmd1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %vendor_cmd1, align 1
  %6 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %job, align 4
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %8 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %job, align 4
  br i1 %tobool.not.i, label %if.end.i, label %entry.while.cond.i.i_crit_edge

entry.while.cond.i.i_crit_edge:                   ; preds = %entry
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry.while.cond.i.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %11, %while.body.i.i.while.cond.i.i_crit_edge ], [ %9, %entry.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.fc_bsg_to_shost.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

while.body.i.i.fc_bsg_to_shost.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fc_bsg_to_shost.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %fc_bsg_to_shost.exit

if.end.i:                                         ; preds = %entry
  %parent.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i11.i

while.cond.i11.i:                                 ; preds = %while.body.i14.i.while.cond.i11.i_crit_edge, %if.end.i
  %dev.addr.0.i8.i = phi ptr [ %13, %if.end.i ], [ %15, %while.body.i14.i.while.cond.i11.i_crit_edge ]
  %call.i9.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i8.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.not.i10.i, label %while.body.i14.i, label %while.end.i16.i

while.body.i14.i:                                 ; preds = %while.cond.i11.i
  %parent.i12.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i8.i, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i12.i, align 8
  %tobool1.not.i13.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i13.i, label %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge, label %while.body.i14.i.while.cond.i11.i_crit_edge

while.body.i14.i.while.cond.i11.i_crit_edge:      ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i11.i

while.body.i14.i.fc_bsg_to_shost.exit_crit_edge:  ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fc_bsg_to_shost.exit

while.end.i16.i:                                  ; preds = %while.cond.i11.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i15.i = getelementptr i8, ptr %dev.addr.0.i8.i, i32 -584
  br label %fc_bsg_to_shost.exit

fc_bsg_to_shost.exit:                             ; preds = %while.end.i16.i, %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge, %while.end.i.i, %while.body.i.i.fc_bsg_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ %add.ptr.i15.i, %while.end.i16.i ], [ null, %while.body.i14.i.fc_bsg_to_shost.exit_crit_edge ], [ null, %while.body.i.i.fc_bsg_to_shost.exit_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %16 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hostdata.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %request_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7
  %20 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %request_payload, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %fc_bsg_to_shost.exit.out_crit_edge, label %if.end

fc_bsg_to_shost.exit.out_crit_edge:               ; preds = %fc_bsg_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %fc_bsg_to_shost.exit
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg_cnt, align 4
  %26 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %request_payload, align 4
  %call9 = tail call i32 @sg_copy_to_buffer(ptr noundef %23, i32 noundef %25, ptr noundef nonnull %call9.i.i, i32 noundef %27) #11
  %28 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %request_payload, align 4
  %30 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %5, label %if.end.error_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb3.i
    i32 3, label %sw.bb5.i
    i32 5, label %sw.bb7.i
    i32 6, label %sw.bb9.i
    i32 7, label %if.end.sw.bb11.i_crit_edge
    i32 8, label %if.end.sw.bb11.i_crit_edge1185
    i32 9, label %if.end.sw.bb13.i_crit_edge
    i32 10, label %if.end.sw.bb13.i_crit_edge1186
    i32 12, label %sw.bb15.i
    i32 13, label %sw.bb17.i
    i32 14, label %sw.bb19.i
    i32 15, label %sw.bb21.i
    i32 16, label %sw.bb23.i
    i32 17, label %sw.bb25.i
    i32 18, label %sw.bb27.i
    i32 19, label %if.end.sw.bb29.i_crit_edge
    i32 20, label %if.end.sw.bb29.i_crit_edge1187
    i32 21, label %if.end.sw.bb29.i_crit_edge1188
    i32 23, label %if.end.sw.bb29.i_crit_edge1189
    i32 22, label %sw.bb31.i
    i32 24, label %if.end.sw.bb33.i_crit_edge
    i32 25, label %if.end.sw.bb33.i_crit_edge1190
    i32 26, label %sw.bb35.i
    i32 27, label %sw.bb37.i
    i32 29, label %sw.bb39.i
    i32 30, label %sw.bb41.i
    i32 31, label %sw.bb43.i
    i32 28, label %sw.bb45.i
    i32 32, label %sw.bb47.i
    i32 33, label %sw.bb49.i
    i32 34, label %sw.bb51.i
    i32 35, label %sw.bb53.i
    i32 36, label %sw.bb55.i
    i32 37, label %sw.bb57.i
    i32 38, label %sw.bb59.i
    i32 39, label %sw.bb61.i
    i32 40, label %sw.bb63.i
    i32 41, label %if.end.sw.bb65.i_crit_edge
    i32 42, label %if.end.sw.bb65.i_crit_edge1191
    i32 43, label %sw.bb67.i
    i32 44, label %sw.bb69.i
    i32 45, label %sw.bb71.i
    i32 46, label %sw.bb73.i
    i32 47, label %sw.bb75.i
    i32 48, label %sw.bb77.i
    i32 49, label %sw.bb79.i
    i32 50, label %sw.bb81.i
    i32 51, label %sw.bb83.i
    i32 53, label %sw.bb85.i
    i32 54, label %sw.bb87.i
    i32 52, label %sw.bb89.i
    i32 11, label %sw.bb91.i
    i32 55, label %sw.bb93.i
    i32 56, label %sw.bb95.i
    i32 57, label %sw.bb97.i
    i32 58, label %sw.bb99.i
    i32 59, label %sw.bb101.i
    i32 60, label %if.end.sw.bb103.i_crit_edge
    i32 61, label %if.end.sw.bb103.i_crit_edge1192
    i32 62, label %sw.bb105.i
    i32 63, label %sw.bb107.i
    i32 64, label %sw.bb109.i
    i32 65, label %sw.bb111.i
    i32 66, label %sw.bb113.i
    i32 67, label %sw.bb115.i
    i32 68, label %sw.bb117.i
    i32 69, label %sw.bb119.i
    i32 70, label %sw.bb121.i
    i32 71, label %sw.bb123.i
    i32 72, label %sw.bb125.i
    i32 73, label %sw.bb127.i
    i32 74, label %sw.bb129.i
    i32 75, label %sw.bb131.i
    i32 76, label %sw.bb133.i
    i32 77, label %sw.bb135.i
    i32 78, label %sw.bb137.i
    i32 79, label %sw.bb139.i
    i32 80, label %sw.bb141.i
    i32 120, label %sw.bb143.i
    i32 121, label %sw.bb145.i
    i32 130, label %sw.bb147.i
    i32 131, label %sw.bb149.i
    i32 81, label %sw.bb151.i
    i32 82, label %sw.bb153.i
    i32 83, label %sw.bb155.i
    i32 84, label %sw.bb157.i
    i32 85, label %sw.bb159.i
    i32 86, label %sw.bb161.i
    i32 87, label %sw.bb163.i
    i32 88, label %if.end.sw.bb165.i_crit_edge
    i32 89, label %if.end.sw.bb165.i_crit_edge1193
    i32 90, label %if.end.sw.bb165.i_crit_edge1194
    i32 91, label %if.end.sw.bb165.i_crit_edge1195
    i32 92, label %sw.bb167.i
    i32 93, label %if.end.sw.bb169.i_crit_edge
    i32 94, label %if.end.sw.bb169.i_crit_edge1196
    i32 95, label %sw.bb171.i
    i32 96, label %sw.bb173.i
    i32 97, label %sw.bb175.i
    i32 98, label %sw.bb177.i
    i32 99, label %sw.bb179.i
    i32 100, label %sw.bb181.i
    i32 101, label %sw.bb183.i
    i32 102, label %sw.bb185.i
    i32 103, label %if.end.sw.bb187.i_crit_edge
    i32 104, label %if.end.sw.bb187.i_crit_edge1197
    i32 105, label %sw.bb189.i
    i32 106, label %if.end.sw.bb191.i_crit_edge
    i32 107, label %if.end.sw.bb191.i_crit_edge1198
    i32 108, label %sw.bb193.i
    i32 109, label %sw.bb195.i
    i32 110, label %sw.bb197.i
    i32 111, label %sw.bb199.i
    i32 122, label %sw.bb201.i
    i32 112, label %sw.bb203.i
    i32 113, label %sw.bb205.i
    i32 114, label %if.end.sw.bb207.i_crit_edge
    i32 115, label %if.end.sw.bb207.i_crit_edge1199
    i32 116, label %if.end.sw.bb207.i_crit_edge1200
    i32 117, label %sw.bb209.i
    i32 118, label %if.end.sw.bb211.i_crit_edge
    i32 119, label %if.end.sw.bb211.i_crit_edge1201
    i32 123, label %sw.bb213.i
    i32 124, label %sw.bb215.i
    i32 125, label %sw.bb217.i
    i32 126, label %sw.bb219.i
    i32 127, label %sw.bb221.i
    i32 128, label %sw.bb223.i
    i32 129, label %sw.bb225.i
  ]

if.end.sw.bb211.i_crit_edge1201:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb211.i

if.end.sw.bb211.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb211.i

if.end.sw.bb207.i_crit_edge1200:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb207.i

if.end.sw.bb207.i_crit_edge1199:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb207.i

if.end.sw.bb207.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb207.i

if.end.sw.bb191.i_crit_edge1198:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb191.i

if.end.sw.bb191.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb191.i

if.end.sw.bb187.i_crit_edge1197:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb187.i

if.end.sw.bb187.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb187.i

if.end.sw.bb169.i_crit_edge1196:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb169.i

if.end.sw.bb169.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb169.i

if.end.sw.bb165.i_crit_edge1195:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb165.i

if.end.sw.bb165.i_crit_edge1194:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb165.i

if.end.sw.bb165.i_crit_edge1193:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb165.i

if.end.sw.bb165.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb165.i

if.end.sw.bb103.i_crit_edge1192:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb103.i

if.end.sw.bb103.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb103.i

if.end.sw.bb65.i_crit_edge1191:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb65.i

if.end.sw.bb65.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb65.i

if.end.sw.bb33.i_crit_edge1190:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33.i

if.end.sw.bb33.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33.i

if.end.sw.bb29.i_crit_edge1189:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29.i

if.end.sw.bb29.i_crit_edge1188:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29.i

if.end.sw.bb29.i_crit_edge1187:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29.i

if.end.sw.bb29.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29.i

if.end.sw.bb13.i_crit_edge1186:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13.i

if.end.sw.bb13.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13.i

if.end.sw.bb11.i_crit_edge1185:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

if.end.sw.bb11.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

sw.bb.i:                                          ; preds = %if.end
  %bfad_lock.i1147 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1147) #11
  %ioc.i1148 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3
  %call5.i1149 = tail call i32 @bfa_ioc_is_disabled(ptr noundef %ioc.i1148) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i1149)
  %tobool.not.i1150 = icmp eq i32 %call5.i1149, 0
  br i1 %tobool.not.i1150, label %if.then.i1151, label %if.end.i1154

if.then.i1151:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1147, i32 noundef %call2.i) #11
  %31 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

if.end.i1154:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa.i1152 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %enable_comp.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 12
  %32 = ptrtoint ptr %enable_comp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %enable_comp.i, align 4
  %wait.i.i1153 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i1153, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  tail call void @bfa_iocfc_enable(ptr noundef %bfa.i1152) #11
  %33 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1147, i32 noundef %call2.i) #11
  tail call void @wait_for_completion(ptr noundef %enable_comp.i) #11
  br label %if.end14

sw.bb1.i:                                         ; preds = %if.end
  %bfad_lock.i1137 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1138 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1137) #11
  %bfa.i1139 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %ioc.i1140 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3
  %call5.i1141 = tail call i32 @bfa_ioc_is_disabled(ptr noundef %ioc.i1140) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i1141)
  %tobool.not.i1142 = icmp eq i32 %call5.i1141, 0
  br i1 %tobool.not.i1142, label %if.end.i1144, label %if.then.i1143

if.then.i1143:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1137, i32 noundef %call2.i1138) #11
  %34 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

if.end.i1144:                                     ; preds = %sw.bb1.i
  %disable_active.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 14
  %35 = ptrtoint ptr %disable_active.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %disable_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not.i = icmp eq i32 %36, 0
  br i1 %tobool7.not.i, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i1144
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1137, i32 noundef %call2.i1138) #11
  br label %error

if.end10.i:                                       ; preds = %if.end.i1144
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %disable_active.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %disable_active.i, align 8
  %disable_comp.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 13
  %38 = ptrtoint ptr %disable_comp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %disable_comp.i, align 4
  %wait.i.i1145 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i1145, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  tail call void @bfa_iocfc_disable(ptr noundef %bfa.i1139) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1137, i32 noundef %call2.i1138) #11
  tail call void @wait_for_completion(ptr noundef %disable_comp.i) #11
  %39 = ptrtoint ptr %disable_active.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %disable_active.i, align 8
  %40 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb3.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %pattr.i) #11
  %41 = call ptr @memset(ptr %pattr.i, i32 255, i32 376)
  %bfad_lock.i1123 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1124 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1123) #11
  %bfa.i1125 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  call void @bfa_fcport_get_attr(ptr noundef %bfa.i1125, ptr noundef nonnull %pattr.i) #11
  %42 = ptrtoint ptr %pattr.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %pattr.i, align 8
  %nwwn5.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 11
  %44 = ptrtoint ptr %nwwn5.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %nwwn5.i, align 16
  %pwwn.i1126 = getelementptr inbounds %struct.bfa_port_attr_s, ptr %pattr.i, i32 0, i32 1
  %45 = ptrtoint ptr %pwwn.i1126 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %pwwn.i1126, align 8
  %pwwn6.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 10
  %47 = ptrtoint ptr %pwwn6.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %pwwn6.i, align 8
  %ioc.i1127 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3
  %call8.i1128 = call i32 @bfa_ioc_get_type(ptr noundef %ioc.i1127) #11
  %ioc_type.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 17
  %48 = ptrtoint ptr %ioc_type.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call8.i1128, ptr %ioc_type.i, align 4
  %mac.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp9.i) #11
  call void @bfa_ioc_get_mac(ptr nonnull sret(%struct.mac_s) align 1 %tmp9.i, ptr noundef %ioc.i1127) #11
  %49 = call ptr @memcpy(ptr %mac.i, ptr %tmp9.i, i32 6)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp9.i) #11
  %factory_mac.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp12.i) #11
  call void @bfa_ioc_get_mfg_mac(ptr nonnull sret(%struct.mac_s) align 1 %tmp12.i, ptr noundef %ioc.i1127) #11
  %50 = call ptr @memcpy(ptr %factory_mac.i, ptr %tmp12.i, i32 6)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp12.i) #11
  %serialnum.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 3
  call void @bfa_ioc_get_adapter_serial_num(ptr noundef %ioc.i1127, ptr noundef %serialnum.i) #11
  %factorynwwn.i = getelementptr inbounds %struct.bfa_port_attr_s, ptr %pattr.i, i32 0, i32 2
  %51 = ptrtoint ptr %factorynwwn.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %factorynwwn.i, align 8
  %factorynwwn17.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 13
  %53 = ptrtoint ptr %factorynwwn17.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %factorynwwn17.i, align 32
  %factorypwwn.i = getelementptr inbounds %struct.bfa_port_attr_s, ptr %pattr.i, i32 0, i32 3
  %54 = ptrtoint ptr %factorypwwn.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %factorypwwn.i, align 8
  %factorypwwn18.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 12
  %56 = ptrtoint ptr %factorypwwn18.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %factorypwwn18.i, align 8
  %inst_no.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 18
  %57 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %inst_no.i, align 8
  %conv19.i1129 = trunc i32 %58 to i16
  %bfad_num.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %bfad_num.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv19.i1129, ptr %bfad_num.i, align 4
  %im_port20.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 15, i32 7
  %60 = ptrtoint ptr %im_port20.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %im_port20.i, align 4
  %shost.i1130 = getelementptr inbounds %struct.bfad_im_port_s, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %shost.i1130 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shost.i1130, align 4
  %host_no.i1131 = getelementptr inbounds %struct.Scsi_Host, ptr %63, i32 0, i32 17
  %64 = ptrtoint ptr %host_no.i1131 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %host_no.i1131, align 4
  %host.i1132 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 20
  %66 = ptrtoint ptr %host.i1132 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %host.i1132, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1123, i32 noundef %call2.i1124) #11
  %name.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 7
  %adapter_name.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 25
  %call24.i = call ptr @strcpy(ptr noundef %name.i, ptr noundef %adapter_name.i) #18
  %port_name.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 8
  %port_name26.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 26
  %call28.i = call ptr @strcpy(ptr noundef %port_name.i, ptr noundef %port_name26.i) #18
  %hwpath.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 4
  %pci_name.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 5
  %67 = ptrtoint ptr %pci_name.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci_name.i, align 4
  %call30.i1133 = call ptr @strcpy(ptr noundef %hwpath.i, ptr noundef %68) #18
  %adapter_hwpath.i = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %pci_name.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pci_name.i, align 4
  %call33.i = call ptr @strcpy(ptr noundef %adapter_hwpath.i, ptr noundef %70) #18
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %sw.bb3.i
  %i.0.i = phi i32 [ 0, %sw.bb3.i ], [ %inc.i1136, %for.cond.i.for.cond.i_crit_edge ]
  %arrayidx.i1134 = getelementptr %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 5, i32 %i.0.i
  %71 = ptrtoint ptr %arrayidx.i1134 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i1134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %72)
  %cmp36.not.i = icmp ne i8 %72, 58
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.0.i)
  %cmp38.i = icmp ult i32 %i.0.i, 32
  %or.cond.i1135 = select i1 %cmp36.not.i, i1 %cmp38.i, i1 false
  %inc.i1136 = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i1135, label %for.cond.i.for.cond.i_crit_edge, label %for.cond.i.for.cond40.i_crit_edge

for.cond.i.for.cond40.i_crit_edge:                ; preds = %for.cond.i
  br label %for.cond40.i

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.cond40.i:                                     ; preds = %for.cond40.i.for.cond40.i_crit_edge, %for.cond.i.for.cond40.i_crit_edge
  %i.1.i = phi i32 [ %inc42.i, %for.cond40.i.for.cond40.i_crit_edge ], [ %i.0.i, %for.cond.i.for.cond40.i_crit_edge ]
  %inc42.i = add nuw nsw i32 %i.1.i, 1
  %arrayidx43.i = getelementptr %struct.bfa_bsg_ioc_info_s, ptr %call9.i.i, i32 0, i32 5, i32 %inc42.i
  %73 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %74)
  %cmp45.not.i = icmp ne i8 %74, 58
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.1.i)
  %cmp48.i = icmp ult i32 %i.1.i, 31
  %or.cond1.i = select i1 %cmp45.not.i, i1 %cmp48.i, i1 false
  br i1 %or.cond1.i, label %for.cond40.i.for.cond40.i_crit_edge, label %bfad_iocmd_ioc_get_info.exit

for.cond40.i.for.cond40.i_crit_edge:              ; preds = %for.cond40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond40.i

bfad_iocmd_ioc_get_info.exit:                     ; preds = %for.cond40.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx43.i, align 1
  %76 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %call9.i.i, align 128
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %pattr.i) #11
  br label %if.end14

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i1118 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1119 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1118) #11
  %ioc.i1120 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3
  %ioc_attr.i = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, ptr %call9.i.i, i32 0, i32 3
  tail call void @bfa_ioc_get_attr(ptr noundef %ioc.i1120, ptr noundef %ioc_attr.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1118, i32 noundef %call2.i1119) #11
  %driver_attr.i = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3
  %77 = ptrtoint ptr %driver_attr.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1650876672, ptr %driver_attr.i, align 16
  %driver_ver.i = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3, i32 1
  %call11.i1121 = tail call i32 @strlcpy(ptr noundef %driver_ver.i, ptr noundef nonnull @.str.2, i32 noundef 64) #11
  %fw_ver.i = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3, i32 2
  %fw_ver16.i = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 2, i32 8
  %call18.i1122 = tail call ptr @strcpy(ptr noundef %fw_ver.i, ptr noundef %fw_ver16.i) #18
  %bios_ver.i = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3, i32 3
  %optrom_ver.i = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 2, i32 9
  %call25.i = tail call ptr @strcpy(ptr noundef %bios_ver.i, ptr noundef %optrom_ver.i) #18
  %pci_attr.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 7
  %chip_rev.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 7, i32 6
  %pci_attr28.i = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 4
  %chip_rev29.i = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 4, i32 6
  %78 = ptrtoint ptr %chip_rev29.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %chip_rev29.i, align 16
  %80 = ptrtoint ptr %chip_rev.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %chip_rev.i, align 8
  %81 = call ptr @memcpy(ptr %pci_attr28.i, ptr %pci_attr.i, i32 24)
  %82 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ioc_stats.i.i = getelementptr inbounds %struct.bfa_bsg_ioc_stats_s, ptr %call9.i.i, i32 0, i32 3
  %stats.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3, i32 15
  %83 = call ptr @memcpy(ptr %ioc_stats.i.i, ptr %stats.i.i, i32 48)
  %84 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %29)
  %cmp.not.i1106 = icmp eq i32 %29, 960
  br i1 %cmp.not.i1106, label %if.end.i1114, label %if.then.i1107

if.then.i1107:                                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 70, ptr %call9.i.i, align 128
  br label %bfad_iocmd_ioc_get_fwstats.exit

if.end.i1114:                                     ; preds = %sw.bb9.i
  %add.ptr.i1108 = getelementptr i8, ptr %call9.i.i, i32 24
  %bfad_lock.i1109 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call4.i1110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1109) #11
  %ioc.i1111 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3
  %call7.i1112 = tail call i32 @bfa_ioc_fw_stats_get(ptr noundef %ioc.i1111, ptr noundef %add.ptr.i1108) #11
  %86 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call7.i1112, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1109, i32 noundef %call4.i1110) #11
  %87 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp11.not.i1113 = icmp eq i32 %88, 0
  br i1 %cmp11.not.i1113, label %if.end.i1114.bfad_iocmd_ioc_get_fwstats.exit_crit_edge, label %if.then13.i1117

if.end.i1114.bfad_iocmd_ioc_get_fwstats.exit_crit_edge: ; preds = %if.end.i1114
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ioc_get_fwstats.exit

if.then13.i1117:                                  ; preds = %if.end.i1114
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i1115 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %89 = ptrtoint ptr %trcmod.i1115 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %trcmod.i1115, align 8
  %conv15.i1116 = zext i32 %88 to i64
  tail call void @__bfa_trc(ptr noundef %90, i32 noundef 3075, i32 noundef 171, i64 noundef %conv15.i1116) #11
  br label %bfad_iocmd_ioc_get_fwstats.exit

bfad_iocmd_ioc_get_fwstats.exit:                  ; preds = %if.then13.i1117, %if.end.i1114.bfad_iocmd_ioc_get_fwstats.exit_crit_edge, %if.then.i1107
  %trcmod17.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %91 = ptrtoint ptr %trcmod17.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %trcmod17.i, align 8
  tail call void @__bfa_trc(ptr noundef %92, i32 noundef 3075, i32 noundef 175, i64 noundef 26214) #11
  br label %if.end14

sw.bb11.i:                                        ; preds = %if.end.sw.bb11.i_crit_edge, %if.end.sw.bb11.i_crit_edge1185
  %93 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %5, label %sw.bb11.i.if.end14_crit_edge [
    i32 7, label %if.then.i1102
    i32 8, label %do.body3.i
  ]

sw.bb11.i.if.end14_crit_edge:                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then.i1102:                                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  %stats.i1101 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3, i32 15
  %94 = call ptr @memset(ptr %stats.i1101, i32 0, i32 48)
  %95 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

do.body3.i:                                       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i1103 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call5.i1104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1103) #11
  %ioc9.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3
  %call10.i1105 = tail call i32 @bfa_ioc_fw_stats_clear(ptr noundef %ioc9.i) #11
  %96 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call10.i1105, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1103, i32 noundef %call5.i1104) #11
  br label %if.end14

sw.bb13.i:                                        ; preds = %if.end.sw.bb13.i_crit_edge, %if.end.sw.bb13.i_crit_edge1186
  %97 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %5, label %sw.bb13.i.bfad_iocmd_ioc_set_name.exit.i_crit_edge [
    i32 9, label %if.then.i.i66
    i32 10, label %if.then3.i.i
  ]

sw.bb13.i.bfad_iocmd_ioc_set_name.exit.i_crit_edge: ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ioc_set_name.exit.i

if.then.i.i66:                                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #13
  %adapter_name.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 25
  br label %if.end8.sink.split.i.i

if.then3.i.i:                                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #13
  %port_name.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 26
  br label %if.end8.sink.split.i.i

if.end8.sink.split.i.i:                           ; preds = %if.then3.i.i, %if.then.i.i66
  %port_name.sink.i.i = phi ptr [ %port_name.i.i, %if.then3.i.i ], [ %adapter_name.i.i, %if.then.i.i66 ]
  %name5.i.i = getelementptr inbounds %struct.bfa_bsg_ioc_name_s, ptr %call9.i.i, i32 0, i32 3
  %call7.i.i67 = tail call ptr @strcpy(ptr noundef %port_name.sink.i.i, ptr noundef %name5.i.i) #18
  br label %bfad_iocmd_ioc_set_name.exit.i

bfad_iocmd_ioc_set_name.exit.i:                   ; preds = %if.end8.sink.split.i.i, %sw.bb13.i.bfad_iocmd_ioc_set_name.exit.i_crit_edge
  %98 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb15.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %call9.i.i, align 128
  %bfa.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %iocfc_attr.i.i = getelementptr inbounds %struct.bfa_bsg_iocfc_attr_s, ptr %call9.i.i, i32 0, i32 3
  tail call void @bfa_iocfc_get_attr(ptr noundef %bfa.i.i, ptr noundef %iocfc_attr.i.i) #11
  br label %if.end14

sw.bb17.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i1096 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1097 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1096) #11
  %bfa.i1098 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %attr.i1099 = getelementptr inbounds %struct.bfa_bsg_iocfc_intr_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i1100 = tail call i32 @bfa_iocfc_israttr_set(ptr noundef %bfa.i1098, ptr noundef %attr.i1099) #11
  %100 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call5.i1100, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1096, i32 noundef %call2.i1097) #11
  br label %if.end14

sw.bb19.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i1084) #11
  %101 = call ptr @memset(ptr %fcomp.i1084, i32 255, i32 60)
  %comp.i1085 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i1084, i32 0, i32 1
  %102 = ptrtoint ptr %comp.i1085 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %comp.i1085, align 4
  %wait.i.i1086 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i1084, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i1086, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i1087 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1088 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1087) #11
  %port.i1089 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 8
  %call5.i1090 = call i32 @bfa_port_enable(ptr noundef %port.i1089, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i1084) #11
  %103 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call5.i1090, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1087, i32 noundef %call2.i1088) #11
  %104 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp8.not.i1091 = icmp eq i32 %105, 0
  br i1 %cmp8.not.i1091, label %if.end.i1095, label %if.then.i1094

if.then.i1094:                                    ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i1092 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %106 = ptrtoint ptr %trcmod.i1092 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %trcmod.i1092, align 8
  %conv11.i1093 = zext i32 %105 to i64
  call void @__bfa_trc(ptr noundef %107, i32 noundef 3075, i32 noundef 260, i64 noundef %conv11.i1093) #11
  br label %bfad_iocmd_port_enable.exit

if.end.i1095:                                     ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i1085) #11
  %108 = ptrtoint ptr %fcomp.i1084 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %fcomp.i1084, align 4
  %110 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %call9.i.i, align 128
  br label %bfad_iocmd_port_enable.exit

bfad_iocmd_port_enable.exit:                      ; preds = %if.end.i1095, %if.then.i1094
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i1084) #11
  br label %if.end14

sw.bb21.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i1072) #11
  %111 = call ptr @memset(ptr %fcomp.i1072, i32 255, i32 60)
  %comp.i1073 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i1072, i32 0, i32 1
  %112 = ptrtoint ptr %comp.i1073 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %comp.i1073, align 4
  %wait.i.i1074 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i1072, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i1074, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i1075 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1076 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1075) #11
  %port.i1077 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 8
  %call5.i1078 = call i32 @bfa_port_disable(ptr noundef %port.i1077, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i1072) #11
  %113 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call5.i1078, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1075, i32 noundef %call2.i1076) #11
  %114 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp8.not.i1079 = icmp eq i32 %115, 0
  br i1 %cmp8.not.i1079, label %if.end.i1083, label %if.then.i1082

if.then.i1082:                                    ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i1080 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %116 = ptrtoint ptr %trcmod.i1080 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %trcmod.i1080, align 8
  %conv11.i1081 = zext i32 %115 to i64
  call void @__bfa_trc(ptr noundef %117, i32 noundef 3075, i32 noundef 282, i64 noundef %conv11.i1081) #11
  br label %bfad_iocmd_port_disable.exit

if.end.i1083:                                     ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i1073) #11
  %118 = ptrtoint ptr %fcomp.i1072 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fcomp.i1072, align 4
  %120 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %call9.i.i, align 128
  br label %bfad_iocmd_port_disable.exit

bfad_iocmd_port_disable.exit:                     ; preds = %if.end.i1083, %if.then.i1082
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i1072) #11
  br label %if.end14

sw.bb23.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %port_attr.i1063) #11
  %121 = call ptr @memset(ptr %port_attr.i1063, i32 255, i32 352)
  %bfad_lock.i1064 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1065 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1064) #11
  %bfa.i1066 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %attr.i1067 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, ptr %call9.i.i, i32 0, i32 3
  tail call void @bfa_fcport_get_attr(ptr noundef %bfa.i1066, ptr noundef %attr.i1067) #11
  %bport.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3, i32 8, i32 3
  call void @bfa_fcs_lport_get_attr(ptr noundef %bport.i, ptr noundef nonnull %port_attr.i1063) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1064, i32 noundef %call2.i1065) #11
  %topology.i = getelementptr inbounds %struct.bfa_bsg_port_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 12
  %122 = ptrtoint ptr %topology.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %topology.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp7.not.i = icmp eq i32 %123, 0
  br i1 %cmp7.not.i, label %sw.bb23.i.bfad_iocmd_port_get_attr.exit_crit_edge, label %if.then.i1069

sw.bb23.i.bfad_iocmd_port_get_attr.exit_crit_edge: ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_port_get_attr.exit

if.then.i1069:                                    ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  %pid.i1068 = getelementptr inbounds %struct.bfa_lport_attr_s, ptr %port_attr.i1063, i32 0, i32 1
  %124 = ptrtoint ptr %pid.i1068 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pid.i1068, align 4
  br label %bfad_iocmd_port_get_attr.exit

bfad_iocmd_port_get_attr.exit:                    ; preds = %if.then.i1069, %sw.bb23.i.bfad_iocmd_port_get_attr.exit_crit_edge
  %.sink.i1070 = phi i32 [ %125, %if.then.i1069 ], [ 0, %sw.bb23.i.bfad_iocmd_port_get_attr.exit_crit_edge ]
  %126 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 17
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %.sink.i1070, ptr %126, align 4
  %port_type.i = getelementptr inbounds %struct.bfa_lport_attr_s, ptr %port_attr.i1063, i32 0, i32 3
  %128 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port_type.i, align 8
  %port_type14.i = getelementptr inbounds %struct.bfa_bsg_port_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 18
  %130 = ptrtoint ptr %port_type14.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %port_type14.i, align 16
  %loopback.i = getelementptr inbounds %struct.bfa_lport_attr_s, ptr %port_attr.i1063, i32 0, i32 4
  %131 = ptrtoint ptr %loopback.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %loopback.i, align 4
  %loopback16.i = getelementptr inbounds %struct.bfa_bsg_port_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 19
  %133 = ptrtoint ptr %loopback16.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %loopback16.i, align 4
  %authfail.i = getelementptr inbounds %struct.bfa_lport_attr_s, ptr %port_attr.i1063, i32 0, i32 8
  %134 = ptrtoint ptr %authfail.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %authfail.i, align 2
  %conv17.i = zext i16 %135 to i32
  %authfail19.i = getelementptr inbounds %struct.bfa_bsg_port_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 20
  %136 = ptrtoint ptr %authfail19.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %conv17.i, ptr %authfail19.i, align 8
  %port_symname.i = getelementptr inbounds %struct.bfa_bsg_port_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 6
  %sym_name.i = getelementptr inbounds %struct.bfa_lport_attr_s, ptr %port_attr.i1063, i32 0, i32 2, i32 2
  %call23.i = call i32 @strlcpy(ptr noundef %port_symname.i, ptr noundef %sym_name.i, i32 noundef 256) #11
  %137 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %call9.i.i, align 128
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %port_attr.i1063) #11
  br label %if.end14

sw.bb25.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i1049) #11
  %138 = call ptr @memset(ptr %fcomp.i1049, i32 255, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %29)
  %cmp.not.i1050 = icmp eq i32 %29, 360
  br i1 %cmp.not.i1050, label %if.end.i1060, label %if.then.i1051

if.then.i1051:                                    ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 70, ptr %call9.i.i, align 128
  br label %bfad_iocmd_port_get_stats.exit

if.end.i1060:                                     ; preds = %sw.bb25.i
  %add.ptr.i1052 = getelementptr i8, ptr %call9.i.i, i32 24
  %comp.i1053 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i1049, i32 0, i32 1
  %140 = ptrtoint ptr %comp.i1053 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %comp.i1053, align 4
  %wait.i.i1054 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i1049, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i1054, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i1055 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call4.i1056 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1055) #11
  %port.i1057 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 8
  %call7.i1058 = call i32 @bfa_port_get_stats(ptr noundef %port.i1057, ptr noundef %add.ptr.i1052, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i1049) #11
  %141 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call7.i1058, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1055, i32 noundef %call4.i1056) #11
  %142 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp11.not.i1059 = icmp eq i32 %143, 0
  br i1 %cmp11.not.i1059, label %if.end16.i1062, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i1060
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i1061 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %144 = ptrtoint ptr %trcmod.i1061 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %trcmod.i1061, align 8
  %conv15.i = zext i32 %143 to i64
  call void @__bfa_trc(ptr noundef %145, i32 noundef 3075, i32 noundef 342, i64 noundef %conv15.i) #11
  br label %bfad_iocmd_port_get_stats.exit

if.end16.i1062:                                   ; preds = %if.end.i1060
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i1053) #11
  %146 = ptrtoint ptr %fcomp.i1049 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %fcomp.i1049, align 4
  %148 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %call9.i.i, align 128
  br label %bfad_iocmd_port_get_stats.exit

bfad_iocmd_port_get_stats.exit:                   ; preds = %if.end16.i1062, %if.then13.i, %if.then.i1051
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i1049) #11
  br label %if.end14

sw.bb27.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i1037) #11
  %149 = call ptr @memset(ptr %fcomp.i1037, i32 255, i32 60)
  %comp.i1038 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i1037, i32 0, i32 1
  %150 = ptrtoint ptr %comp.i1038 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %comp.i1038, align 4
  %wait.i.i1039 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i1037, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i1039, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i1040 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1041 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1040) #11
  %port.i1042 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 8
  %call5.i1043 = call i32 @bfa_port_clear_stats(ptr noundef %port.i1042, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i1037) #11
  %151 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call5.i1043, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1040, i32 noundef %call2.i1041) #11
  %152 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp8.not.i1044 = icmp eq i32 %153, 0
  br i1 %cmp8.not.i1044, label %if.end.i1048, label %if.then.i1047

if.then.i1047:                                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i1045 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %154 = ptrtoint ptr %trcmod.i1045 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %trcmod.i1045, align 8
  %conv11.i1046 = zext i32 %153 to i64
  call void @__bfa_trc(ptr noundef %155, i32 noundef 3075, i32 noundef 365, i64 noundef %conv11.i1046) #11
  br label %bfad_iocmd_port_reset_stats.exit

if.end.i1048:                                     ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i1038) #11
  %156 = ptrtoint ptr %fcomp.i1037 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %fcomp.i1037, align 4
  %158 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %call9.i.i, align 128
  br label %bfad_iocmd_port_reset_stats.exit

bfad_iocmd_port_reset_stats.exit:                 ; preds = %if.end.i1048, %if.then.i1047
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i1037) #11
  br label %if.end14

sw.bb29.i:                                        ; preds = %if.end.sw.bb29.i_crit_edge, %if.end.sw.bb29.i_crit_edge1187, %if.end.sw.bb29.i_crit_edge1188, %if.end.sw.bb29.i_crit_edge1189
  %bfad_lock.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i.i) #11
  %159 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %5, label %sw.bb29.i.bfad_iocmd_set_port_cfg.exit.i_crit_edge [
    i32 19, label %if.then.i478.i
    i32 20, label %if.then10.i.i
    i32 21, label %if.then18.i.i
    i32 23, label %if.then27.i.i
  ]

sw.bb29.i.bfad_iocmd_set_port_cfg.exit.i_crit_edge: ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_set_port_cfg.exit.i

if.then.i478.i:                                   ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa.i476.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %param.i.i = getelementptr inbounds %struct.bfa_bsg_port_cfg_s, ptr %call9.i.i, i32 0, i32 3
  %160 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %param.i.i, align 8
  %call7.i477.i = tail call i32 @bfa_fcport_cfg_topology(ptr noundef %bfa.i476.i, i32 noundef %161) #11
  br label %if.end33.sink.split.i.i

if.then10.i.i:                                    ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa11.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %param12.i.i = getelementptr inbounds %struct.bfa_bsg_port_cfg_s, ptr %call9.i.i, i32 0, i32 3
  %162 = ptrtoint ptr %param12.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %param12.i.i, align 8
  %call13.i.i = tail call i32 @bfa_fcport_cfg_speed(ptr noundef %bfa11.i.i, i32 noundef %163) #11
  br label %if.end33.sink.split.i.i

if.then18.i.i:                                    ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa19.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %param20.i.i = getelementptr inbounds %struct.bfa_bsg_port_cfg_s, ptr %call9.i.i, i32 0, i32 3
  %164 = ptrtoint ptr %param20.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %param20.i.i, align 8
  %conv21.i.i = trunc i32 %165 to i8
  %call22.i.i = tail call i32 @bfa_fcport_cfg_hardalpa(ptr noundef %bfa19.i.i, i8 noundef zeroext %conv21.i.i) #11
  br label %if.end33.sink.split.i.i

if.then27.i.i:                                    ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa28.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call29.i.i = tail call i32 @bfa_fcport_clr_hardalpa(ptr noundef %bfa28.i.i) #11
  br label %if.end33.sink.split.i.i

if.end33.sink.split.i.i:                          ; preds = %if.then27.i.i, %if.then18.i.i, %if.then10.i.i, %if.then.i478.i
  %call13.sink.i.i = phi i32 [ %call13.i.i, %if.then10.i.i ], [ %call29.i.i, %if.then27.i.i ], [ %call22.i.i, %if.then18.i.i ], [ %call7.i477.i, %if.then.i478.i ]
  %166 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call13.sink.i.i, ptr %call9.i.i, align 128
  br label %bfad_iocmd_set_port_cfg.exit.i

bfad_iocmd_set_port_cfg.exit.i:                   ; preds = %if.end33.sink.split.i.i, %sw.bb29.i.bfad_iocmd_set_port_cfg.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i.i, i32 noundef %call2.i.i) #11
  br label %if.end14

sw.bb31.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i1033 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1034 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1033) #11
  %bfa.i1035 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %maxfrsize.i = getelementptr inbounds %struct.bfa_bsg_port_cfg_maxfrsize_s, ptr %call9.i.i, i32 0, i32 2
  %167 = ptrtoint ptr %maxfrsize.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %maxfrsize.i, align 2
  %call5.i1036 = tail call i32 @bfa_fcport_cfg_maxfrsize(ptr noundef %bfa.i1035, i16 noundef zeroext %168) #11
  %169 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %call5.i1036, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1033, i32 noundef %call2.i1034) #11
  br label %if.end14

sw.bb33.i:                                        ; preds = %if.end.sw.bb33.i_crit_edge, %if.end.sw.bb33.i_crit_edge1190
  %bfad_lock.i1023 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1024 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1023) #11
  %170 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %5, label %if.else13.i [
    i32 24, label %if.then.i1027
    i32 25, label %if.then10.i1029
  ]

if.then.i1027:                                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa.i1025 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %bb_scn.i = getelementptr inbounds %struct.bfa_bsg_bbcr_enable_s, ptr %call9.i.i, i32 0, i32 2
  %171 = ptrtoint ptr %bb_scn.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %bb_scn.i, align 2
  %call7.i1026 = tail call i32 @bfa_fcport_cfg_bbcr(ptr noundef %bfa.i1025, i32 noundef 1, i8 noundef zeroext %172) #11
  br label %if.end15.i1031

if.then10.i1029:                                  ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa11.i1028 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call12.i = tail call i32 @bfa_fcport_cfg_bbcr(ptr noundef %bfa11.i1028, i32 noundef 0, i8 noundef zeroext 0) #11
  br label %if.end15.i1031

if.else13.i:                                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1023, i32 noundef %call2.i1024) #11
  br label %error

if.end15.i1031:                                   ; preds = %if.then10.i1029, %if.then.i1027
  %rc.0.i1030 = phi i32 [ %call7.i1026, %if.then.i1027 ], [ %call12.i, %if.then10.i1029 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1023, i32 noundef %call2.i1024) #11
  %173 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %rc.0.i1030, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb35.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i1018 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1019 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1018) #11
  %bfa.i1020 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %attr.i1021 = getelementptr inbounds %struct.bfa_bsg_bbcr_attr_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i1022 = tail call i32 @bfa_fcport_get_bbcr_attr(ptr noundef %bfa.i1020, ptr noundef %attr.i1021) #11
  %174 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %call5.i1022, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1018, i32 noundef %call2.i1019) #11
  br label %if.end14

sw.bb37.i:                                        ; preds = %if.end
  %bfad_lock.i1009 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1010 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1009) #11
  %bfa_fcs.i1011 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i1012 = getelementptr inbounds %struct.bfa_bsg_lport_attr_s, ptr %call9.i.i, i32 0, i32 2
  %175 = ptrtoint ptr %vf_id.i1012 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %vf_id.i1012, align 2
  %pwwn.i1013 = getelementptr inbounds %struct.bfa_bsg_lport_attr_s, ptr %call9.i.i, i32 0, i32 3
  %177 = ptrtoint ptr %pwwn.i1013 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %pwwn.i1013, align 8
  %call5.i1014 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i1011, i16 noundef zeroext %176, i64 noundef %178) #11
  %cmp6.i1015 = icmp eq ptr %call5.i1014, null
  br i1 %cmp6.i1015, label %sw.bb37.i.bfad_iocmd_lport_get_attr.exit_crit_edge, label %if.end.i1016

sw.bb37.i.bfad_iocmd_lport_get_attr.exit_crit_edge: ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_lport_get_attr.exit

if.end.i1016:                                     ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #13
  %port_attr.i = getelementptr inbounds %struct.bfa_bsg_lport_attr_s, ptr %call9.i.i, i32 0, i32 4
  tail call void @bfa_fcs_lport_get_attr(ptr noundef nonnull %call5.i1014, ptr noundef %port_attr.i) #11
  br label %bfad_iocmd_lport_get_attr.exit

bfad_iocmd_lport_get_attr.exit:                   ; preds = %if.end.i1016, %sw.bb37.i.bfad_iocmd_lport_get_attr.exit_crit_edge
  %storemerge.i1017 = phi i32 [ 0, %if.end.i1016 ], [ 18, %sw.bb37.i.bfad_iocmd_lport_get_attr.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1009, i32 noundef %call2.i1010) #11
  %179 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %storemerge.i1017, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb39.i:                                        ; preds = %if.end
  %bfad_lock.i1000 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i1001 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i1000) #11
  %bfa_fcs.i1002 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i1003 = getelementptr inbounds %struct.bfa_bsg_lport_stats_s, ptr %call9.i.i, i32 0, i32 2
  %180 = ptrtoint ptr %vf_id.i1003 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %vf_id.i1003, align 2
  %pwwn.i1004 = getelementptr inbounds %struct.bfa_bsg_lport_stats_s, ptr %call9.i.i, i32 0, i32 3
  %182 = ptrtoint ptr %pwwn.i1004 to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %pwwn.i1004, align 8
  %call5.i1005 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i1002, i16 noundef zeroext %181, i64 noundef %183) #11
  %cmp6.i1006 = icmp eq ptr %call5.i1005, null
  br i1 %cmp6.i1006, label %sw.bb39.i.bfad_iocmd_lport_get_stats.exit_crit_edge, label %if.end.i1007

sw.bb39.i.bfad_iocmd_lport_get_stats.exit_crit_edge: ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_lport_get_stats.exit

if.end.i1007:                                     ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #13
  %port_stats.i = getelementptr inbounds %struct.bfa_bsg_lport_stats_s, ptr %call9.i.i, i32 0, i32 4
  tail call void @bfa_fcs_lport_get_stats(ptr noundef nonnull %call5.i1005, ptr noundef %port_stats.i) #11
  br label %bfad_iocmd_lport_get_stats.exit

bfad_iocmd_lport_get_stats.exit:                  ; preds = %if.end.i1007, %sw.bb39.i.bfad_iocmd_lport_get_stats.exit_crit_edge
  %storemerge.i1008 = phi i32 [ 0, %if.end.i1007 ], [ 18, %sw.bb39.i.bfad_iocmd_lport_get_stats.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i1000, i32 noundef %call2.i1001) #11
  %184 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %storemerge.i1008, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb41.i:                                        ; preds = %if.end
  %bfad_lock.i985 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i986 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i985) #11
  %bfa_fcs.i987 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i988 = getelementptr inbounds %struct.bfa_bsg_reset_stats_s, ptr %call9.i.i, i32 0, i32 2
  %185 = ptrtoint ptr %vf_id.i988 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %vf_id.i988, align 2
  %vpwwn.i989 = getelementptr inbounds %struct.bfa_bsg_reset_stats_s, ptr %call9.i.i, i32 0, i32 3
  %187 = ptrtoint ptr %vpwwn.i989 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %vpwwn.i989, align 8
  %call6.i990 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i987, i16 noundef zeroext %186, i64 noundef %188) #11
  %cmp7.i991 = icmp eq ptr %call6.i990, null
  br i1 %cmp7.i991, label %sw.bb41.i.bfad_iocmd_lport_reset_stats.exit_crit_edge, label %if.end.i993

sw.bb41.i.bfad_iocmd_lport_reset_stats.exit_crit_edge: ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_lport_reset_stats.exit

if.end.i993:                                      ; preds = %sw.bb41.i
  tail call void @bfa_fcs_lport_clear_stats(ptr noundef nonnull %call6.i990) #11
  %itnim_q.i992 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 6, i32 11, i32 11
  %189 = ptrtoint ptr %itnim_q.i992 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %itnim_q.i992, align 8
  %cmp.i.not2.i = icmp eq ptr %190, %itnim_q.i992
  br i1 %cmp.i.not2.i, label %if.end.i993.bfad_iocmd_lport_reset_stats.exit_crit_edge, label %for.body.lr.ph.i

if.end.i993.bfad_iocmd_lport_reset_stats.exit_crit_edge: ; preds = %if.end.i993
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_lport_reset_stats.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i993
  %lp_tag13.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %call6.i990, i32 0, i32 6
  br label %for.body.i996

for.body.i996:                                    ; preds = %for.inc.i.for.body.i996_crit_edge, %for.body.lr.ph.i
  %qe.03.i = phi ptr [ %190, %for.body.lr.ph.i ], [ %qen.04.i, %for.inc.i.for.body.i996_crit_edge ]
  %191 = ptrtoint ptr %qe.03.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %qen.04.i = load ptr, ptr %qe.03.i, align 4
  %rport.i = getelementptr inbounds %struct.bfa_itnim_s, ptr %qe.03.i, i32 0, i32 3
  %192 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rport.i, align 4
  %lp_tag.i994 = getelementptr inbounds %struct.bfa_rport_s, ptr %193, i32 0, i32 8, i32 2
  %194 = ptrtoint ptr %lp_tag.i994 to i32
  call void @__asan_loadN_noabort(i32 %194, i32 8)
  %bf.load.i = load i64, ptr %lp_tag.i994, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 32
  %195 = ptrtoint ptr %lp_tag13.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %lp_tag13.i, align 1
  %197 = trunc i64 %bf.lshr.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %196, i8 %197)
  %cmp15.not.i995 = icmp eq i8 %196, %197
  br i1 %cmp15.not.i995, label %if.end18.i997, label %for.body.i996.for.inc.i_crit_edge

for.body.i996.for.inc.i_crit_edge:                ; preds = %for.body.i996
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end18.i997:                                    ; preds = %for.body.i996
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bfa_itnim_clear_stats(ptr noundef %qe.03.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end18.i997, %for.body.i996.for.inc.i_crit_edge
  %cmp.i.not.i998 = icmp eq ptr %qen.04.i, %itnim_q.i992
  br i1 %cmp.i.not.i998, label %for.inc.i.bfad_iocmd_lport_reset_stats.exit_crit_edge, label %for.inc.i.for.body.i996_crit_edge

for.inc.i.for.body.i996_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i996

for.inc.i.bfad_iocmd_lport_reset_stats.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_lport_reset_stats.exit

bfad_iocmd_lport_reset_stats.exit:                ; preds = %for.inc.i.bfad_iocmd_lport_reset_stats.exit_crit_edge, %if.end.i993.bfad_iocmd_lport_reset_stats.exit_crit_edge, %sw.bb41.i.bfad_iocmd_lport_reset_stats.exit_crit_edge
  %storemerge.i999 = phi i32 [ 18, %sw.bb41.i.bfad_iocmd_lport_reset_stats.exit_crit_edge ], [ 0, %if.end.i993.bfad_iocmd_lport_reset_stats.exit_crit_edge ], [ 0, %for.inc.i.bfad_iocmd_lport_reset_stats.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i985, i32 noundef %call3.i986) #11
  %198 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %storemerge.i999, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb43.i:                                        ; preds = %if.end
  %bfad_lock.i973 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i974 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i973) #11
  %bfa_fcs.i975 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i976 = getelementptr inbounds %struct.bfa_bsg_lport_iostats_s, ptr %call9.i.i, i32 0, i32 2
  %199 = ptrtoint ptr %vf_id.i976 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %vf_id.i976, align 2
  %pwwn.i977 = getelementptr inbounds %struct.bfa_bsg_lport_iostats_s, ptr %call9.i.i, i32 0, i32 3
  %201 = ptrtoint ptr %pwwn.i977 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %pwwn.i977, align 8
  %call5.i978 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i975, i16 noundef zeroext %200, i64 noundef %202) #11
  %cmp6.i979 = icmp eq ptr %call5.i978, null
  br i1 %cmp6.i979, label %sw.bb43.i.bfad_iocmd_lport_get_iostats.exit_crit_edge, label %if.end.i983

sw.bb43.i.bfad_iocmd_lport_get_iostats.exit_crit_edge: ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_lport_get_iostats.exit

if.end.i983:                                      ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa.i980 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %iostats.i981 = getelementptr inbounds %struct.bfa_bsg_lport_iostats_s, ptr %call9.i.i, i32 0, i32 4
  %lp_tag.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %call5.i978, i32 0, i32 6
  %203 = ptrtoint ptr %lp_tag.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %lp_tag.i, align 1
  %call9.i982 = tail call i32 @bfa_fcpim_port_iostats(ptr noundef %bfa.i980, ptr noundef %iostats.i981, i8 noundef zeroext %204) #11
  br label %bfad_iocmd_lport_get_iostats.exit

bfad_iocmd_lport_get_iostats.exit:                ; preds = %if.end.i983, %sw.bb43.i.bfad_iocmd_lport_get_iostats.exit_crit_edge
  %storemerge.i984 = phi i32 [ 0, %if.end.i983 ], [ 18, %sw.bb43.i.bfad_iocmd_lport_get_iostats.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i973, i32 noundef %call2.i974) #11
  %205 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %storemerge.i984, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb45.i:                                        ; preds = %if.end
  %nrports.i = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, ptr %call9.i.i, i32 0, i32 5
  %206 = ptrtoint ptr %nrports.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %nrports.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp.i957 = icmp eq i32 %207, 0
  br i1 %cmp.i957, label %sw.bb45.i.error_crit_edge, label %if.end.i960

sw.bb45.i.error_crit_edge:                        ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.i960:                                      ; preds = %sw.bb45.i
  %mul.i958 = shl i32 %207, 4
  %add.i959 = add i32 %mul.i958, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i959, i32 %29)
  %cmp2.not.i = icmp eq i32 %add.i959, %29
  br i1 %cmp2.not.i, label %if.end5.i, label %if.end.i960.cleanup.sink.split.i971_crit_edge

if.end.i960.cleanup.sink.split.i971_crit_edge:    ; preds = %if.end.i960
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i971

if.end5.i:                                        ; preds = %if.end.i960
  %bfad_lock.i961 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call8.i962 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i961) #11
  %bfa_fcs.i963 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i964 = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, ptr %call9.i.i, i32 0, i32 2
  %208 = ptrtoint ptr %vf_id.i964 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %vf_id.i964, align 2
  %pwwn.i965 = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, ptr %call9.i.i, i32 0, i32 3
  %210 = ptrtoint ptr %pwwn.i965 to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %pwwn.i965, align 8
  %call11.i966 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i963, i16 noundef zeroext %209, i64 noundef %211) #11
  %cmp12.i = icmp eq ptr %call11.i966, null
  br i1 %cmp12.i, label %if.then14.i968, label %if.end17.i

if.then14.i968:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i961, i32 noundef %call8.i962) #11
  %trcmod.i967 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %212 = ptrtoint ptr %trcmod.i967 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %trcmod.i967, align 8
  tail call void @__bfa_trc(ptr noundef %213, i32 noundef 3075, i32 noundef 579, i64 noundef 0) #11
  br label %cleanup.sink.split.i971

if.end17.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i969 = getelementptr i8, ptr %call9.i.i, i32 32
  tail call void @bfa_fcs_lport_get_rport_quals(ptr noundef nonnull %call11.i966, ptr noundef %add.ptr.i969, ptr noundef %nrports.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i961, i32 noundef %call8.i962) #11
  br label %cleanup.sink.split.i971

cleanup.sink.split.i971:                          ; preds = %if.end17.i, %if.then14.i968, %if.end.i960.cleanup.sink.split.i971_crit_edge
  %storemerge.sink.i970 = phi i32 [ 70, %if.end.i960.cleanup.sink.split.i971_crit_edge ], [ 0, %if.end17.i ], [ 18, %if.then14.i968 ]
  %214 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %storemerge.sink.i970, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb47.i:                                        ; preds = %if.end
  %bfad_lock.i939 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i940 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i939) #11
  %bfa_fcs.i941 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i942 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, ptr %call9.i.i, i32 0, i32 2
  %215 = ptrtoint ptr %vf_id.i942 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %vf_id.i942, align 2
  %pwwn.i943 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, ptr %call9.i.i, i32 0, i32 3
  %217 = ptrtoint ptr %pwwn.i943 to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %pwwn.i943, align 8
  %call5.i944 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i941, i16 noundef zeroext %216, i64 noundef %218) #11
  %cmp6.i945 = icmp eq ptr %call5.i944, null
  br i1 %cmp6.i945, label %if.then.i947, label %if.end.i949

if.then.i947:                                     ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i946 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %219 = ptrtoint ptr %trcmod.i946 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %trcmod.i946, align 8
  tail call void @__bfa_trc(ptr noundef %220, i32 noundef 3075, i32 noundef 605, i64 noundef 0) #11
  br label %bfad_iocmd_rport_get_attr.exit

if.end.i949:                                      ; preds = %sw.bb47.i
  %pid.i = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, ptr %call9.i.i, i32 0, i32 5
  %221 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %pid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool.not.i948 = icmp eq i32 %222, 0
  %rpwwn12.i = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, ptr %call9.i.i, i32 0, i32 4
  %223 = ptrtoint ptr %rpwwn12.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %rpwwn12.i, align 16
  br i1 %tobool.not.i948, label %if.else.i953, label %if.then9.i951

if.then9.i951:                                    ; preds = %if.end.i949
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i950 = tail call ptr @bfa_fcs_lport_get_rport_by_qualifier(ptr noundef nonnull %call5.i944, i64 noundef %224, i32 noundef %222) #11
  br label %if.end14.i

if.else.i953:                                     ; preds = %if.end.i949
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i952 = tail call ptr @bfa_fcs_rport_lookup(ptr noundef nonnull %call5.i944, i64 noundef %224) #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i953, %if.then9.i951
  %fcs_rport.0.i = phi ptr [ %call11.i950, %if.then9.i951 ], [ %call13.i952, %if.else.i953 ]
  %cmp15.i = icmp eq ptr %fcs_rport.0.i, null
  br i1 %cmp15.i, label %if.then17.i954, label %if.end21.i

if.then17.i954:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod18.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %225 = ptrtoint ptr %trcmod18.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %trcmod18.i, align 8
  tail call void @__bfa_trc(ptr noundef %226, i32 noundef 3075, i32 noundef 617, i64 noundef 0) #11
  br label %bfad_iocmd_rport_get_attr.exit

if.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %attr.i955 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, ptr %call9.i.i, i32 0, i32 7
  tail call void @bfa_fcs_rport_get_attr(ptr noundef nonnull %fcs_rport.0.i, ptr noundef %attr.i955) #11
  br label %bfad_iocmd_rport_get_attr.exit

bfad_iocmd_rport_get_attr.exit:                   ; preds = %if.end21.i, %if.then17.i954, %if.then.i947
  %.sink.i956 = phi i32 [ 0, %if.end21.i ], [ 19, %if.then17.i954 ], [ 18, %if.then.i947 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i939, i32 noundef %call2.i940) #11
  %227 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %.sink.i956, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb49.i:                                        ; preds = %if.end
  %bfad_lock.i918 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i919 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i918) #11
  %bfa_fcs.i920 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i921 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, ptr %call9.i.i, i32 0, i32 2
  %228 = ptrtoint ptr %vf_id.i921 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %vf_id.i921, align 2
  %pwwn.i922 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, ptr %call9.i.i, i32 0, i32 3
  %230 = ptrtoint ptr %pwwn.i922 to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %pwwn.i922, align 8
  %call5.i923 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i920, i16 noundef zeroext %229, i64 noundef %231) #11
  %cmp6.i924 = icmp eq ptr %call5.i923, null
  br i1 %cmp6.i924, label %if.then.i926, label %if.end.i930

if.then.i926:                                     ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i925 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %232 = ptrtoint ptr %trcmod.i925 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %trcmod.i925, align 8
  tail call void @__bfa_trc(ptr noundef %233, i32 noundef 3075, i32 noundef 644, i64 noundef 0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i918, i32 noundef %call2.i919) #11
  br label %bfad_iocmd_rport_get_addr.exit

if.end.i930:                                      ; preds = %sw.bb49.i
  %rpwwn.i927 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, ptr %call9.i.i, i32 0, i32 4
  %234 = ptrtoint ptr %rpwwn.i927 to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %rpwwn.i927, align 16
  %call9.i928 = tail call ptr @bfa_fcs_itnim_lookup(ptr noundef nonnull %call5.i923, i64 noundef %235) #11
  %cmp10.i929 = icmp eq ptr %call9.i928, null
  br i1 %cmp10.i929, label %if.then12.i932, label %if.end16.i934

if.then12.i932:                                   ; preds = %if.end.i930
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod13.i931 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %236 = ptrtoint ptr %trcmod13.i931 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %trcmod13.i931, align 8
  tail call void @__bfa_trc(ptr noundef %237, i32 noundef 3075, i32 noundef 652, i64 noundef 0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i918, i32 noundef %call2.i919) #11
  br label %bfad_iocmd_rport_get_addr.exit

if.end16.i934:                                    ; preds = %if.end.i930
  %itnim_drv.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %call9.i928, i32 0, i32 2
  %238 = ptrtoint ptr %itnim_drv.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %itnim_drv.i, align 4
  %tobool.not.i933 = icmp eq ptr %239, null
  br i1 %tobool.not.i933, label %if.end16.i934.if.else.i937_crit_edge, label %land.lhs.true.i935

if.end16.i934.if.else.i937_crit_edge:             ; preds = %if.end16.i934
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i937

land.lhs.true.i935:                               ; preds = %if.end16.i934
  %im_port.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %239, i32 0, i32 6
  %240 = ptrtoint ptr %im_port.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %im_port.i, align 4
  %tobool17.not.i = icmp eq ptr %241, null
  br i1 %tobool17.not.i, label %land.lhs.true.i935.if.else.i937_crit_edge, label %if.then18.i

land.lhs.true.i935.if.else.i937_crit_edge:        ; preds = %land.lhs.true.i935
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i937

if.then18.i:                                      ; preds = %land.lhs.true.i935
  call void @__sanitizer_cov_trace_pc() #13
  %shost.i = getelementptr inbounds %struct.bfad_im_port_s, ptr %241, i32 0, i32 7
  %242 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %shost.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %243, i32 0, i32 17
  %244 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %host_no.i, align 4
  %host.i = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, ptr %call9.i.i, i32 0, i32 5
  %246 = ptrtoint ptr %host.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %host.i, align 8
  %scsi_tgt_id.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %239, i32 0, i32 10
  %247 = ptrtoint ptr %scsi_tgt_id.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %scsi_tgt_id.i, align 4
  %conv24.i = zext i16 %248 to i32
  %target.i = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, ptr %call9.i.i, i32 0, i32 7
  %249 = ptrtoint ptr %target.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %conv24.i, ptr %target.i, align 32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i918, i32 noundef %call2.i919) #11
  %bus.i = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, ptr %call9.i.i, i32 0, i32 6
  %250 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %bus.i, align 4
  %lun.i936 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, ptr %call9.i.i, i32 0, i32 8
  %251 = ptrtoint ptr %lun.i936 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %lun.i936, align 4
  br label %bfad_iocmd_rport_get_addr.exit

if.else.i937:                                     ; preds = %land.lhs.true.i935.if.else.i937_crit_edge, %if.end16.i934.if.else.i937_crit_edge
  %trcmod20.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %252 = ptrtoint ptr %trcmod20.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %trcmod20.i, align 8
  tail call void @__bfa_trc(ptr noundef %253, i32 noundef 3075, i32 noundef 663, i64 noundef 0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i918, i32 noundef %call2.i919) #11
  br label %bfad_iocmd_rport_get_addr.exit

bfad_iocmd_rport_get_addr.exit:                   ; preds = %if.else.i937, %if.then18.i, %if.then12.i932, %if.then.i926
  %.sink.i938 = phi i32 [ 0, %if.then18.i ], [ 19, %if.else.i937 ], [ 19, %if.then12.i932 ], [ 18, %if.then.i926 ]
  %254 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %.sink.i938, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb51.i:                                        ; preds = %if.end
  %bfad_lock.i900 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i901 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i900) #11
  %bfa_fcs.i902 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i903 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, ptr %call9.i.i, i32 0, i32 2
  %255 = ptrtoint ptr %vf_id.i903 to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %vf_id.i903, align 2
  %pwwn.i904 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, ptr %call9.i.i, i32 0, i32 3
  %257 = ptrtoint ptr %pwwn.i904 to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %pwwn.i904, align 8
  %call5.i905 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i902, i16 noundef zeroext %256, i64 noundef %258) #11
  %cmp6.i906 = icmp eq ptr %call5.i905, null
  br i1 %cmp6.i906, label %if.then.i908, label %if.end.i912

if.then.i908:                                     ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i907 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %259 = ptrtoint ptr %trcmod.i907 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %trcmod.i907, align 8
  tail call void @__bfa_trc(ptr noundef %260, i32 noundef 3075, i32 noundef 692, i64 noundef 0) #11
  br label %bfad_iocmd_rport_get_stats.exit

if.end.i912:                                      ; preds = %sw.bb51.i
  %rpwwn.i909 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, ptr %call9.i.i, i32 0, i32 4
  %261 = ptrtoint ptr %rpwwn.i909 to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %rpwwn.i909, align 16
  %call9.i910 = tail call ptr @bfa_fcs_rport_lookup(ptr noundef nonnull %call5.i905, i64 noundef %262) #11
  %cmp10.i911 = icmp eq ptr %call9.i910, null
  br i1 %cmp10.i911, label %if.then12.i, label %if.end16.i

if.then12.i:                                      ; preds = %if.end.i912
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod13.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %263 = ptrtoint ptr %trcmod13.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %trcmod13.i, align 8
  tail call void @__bfa_trc(ptr noundef %264, i32 noundef 3075, i32 noundef 700, i64 noundef 0) #11
  br label %bfad_iocmd_rport_get_stats.exit

if.end16.i:                                       ; preds = %if.end.i912
  %stats.i913 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, ptr %call9.i.i, i32 0, i32 5
  %stats17.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call9.i910, i32 0, i32 25
  %265 = call ptr @memcpy(ptr %stats.i913, ptr %stats17.i, i32 264)
  %bfa_rport.i.i914 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call9.i910, i32 0, i32 20
  %266 = ptrtoint ptr %bfa_rport.i.i914 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %bfa_rport.i.i914, align 4
  %tobool.not.i915 = icmp eq ptr %267, null
  br i1 %tobool.not.i915, label %if.end16.i.bfad_iocmd_rport_get_stats.exit_crit_edge, label %if.then19.i916

if.end16.i.bfad_iocmd_rport_get_stats.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_rport_get_stats.exit

if.then19.i916:                                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %hal_stats.i = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, ptr %call9.i.i, i32 0, i32 5, i32 28
  %stats22.i = getelementptr inbounds %struct.bfa_rport_s, ptr %267, i32 0, i32 11
  %268 = call ptr @memcpy(ptr %hal_stats.i, ptr %stats22.i, i32 152)
  br label %bfad_iocmd_rport_get_stats.exit

bfad_iocmd_rport_get_stats.exit:                  ; preds = %if.then19.i916, %if.end16.i.bfad_iocmd_rport_get_stats.exit_crit_edge, %if.then12.i, %if.then.i908
  %.sink.i917 = phi i32 [ 19, %if.then12.i ], [ 18, %if.then.i908 ], [ 0, %if.then19.i916 ], [ 0, %if.end16.i.bfad_iocmd_rport_get_stats.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i900, i32 noundef %call2.i901) #11
  %269 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %.sink.i917, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb53.i:                                        ; preds = %if.end
  %bfad_lock.i885 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i886 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i885) #11
  %bfa_fcs.i887 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i888 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, ptr %call9.i.i, i32 0, i32 2
  %270 = ptrtoint ptr %vf_id.i888 to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %vf_id.i888, align 2
  %pwwn.i889 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, ptr %call9.i.i, i32 0, i32 3
  %272 = ptrtoint ptr %pwwn.i889 to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %pwwn.i889, align 8
  %call5.i890 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i887, i16 noundef zeroext %271, i64 noundef %273) #11
  %cmp6.i891 = icmp eq ptr %call5.i890, null
  br i1 %cmp6.i891, label %sw.bb53.i.bfad_iocmd_rport_clr_stats.exit_crit_edge, label %if.end.i895

sw.bb53.i.bfad_iocmd_rport_clr_stats.exit_crit_edge: ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_rport_clr_stats.exit

if.end.i895:                                      ; preds = %sw.bb53.i
  %rpwwn.i892 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, ptr %call9.i.i, i32 0, i32 4
  %274 = ptrtoint ptr %rpwwn.i892 to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %rpwwn.i892, align 16
  %call9.i893 = tail call ptr @bfa_fcs_rport_lookup(ptr noundef nonnull %call5.i890, i64 noundef %275) #11
  %cmp10.i894 = icmp eq ptr %call9.i893, null
  br i1 %cmp10.i894, label %if.end.i895.bfad_iocmd_rport_clr_stats.exit_crit_edge, label %if.end15.i898

if.end.i895.bfad_iocmd_rport_clr_stats.exit_crit_edge: ; preds = %if.end.i895
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_rport_clr_stats.exit

if.end15.i898:                                    ; preds = %if.end.i895
  %stats.i896 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call9.i893, i32 0, i32 25
  %276 = call ptr @memset(ptr %stats.i896, i32 0, i32 264)
  %bfa_rport.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call9.i893, i32 0, i32 20
  %277 = ptrtoint ptr %bfa_rport.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %bfa_rport.i.i, align 4
  %tobool.not.i897 = icmp eq ptr %278, null
  br i1 %tobool.not.i897, label %if.end15.i898.bfad_iocmd_rport_clr_stats.exit_crit_edge, label %if.then17.i

if.end15.i898.bfad_iocmd_rport_clr_stats.exit_crit_edge: ; preds = %if.end15.i898
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_rport_clr_stats.exit

if.then17.i:                                      ; preds = %if.end15.i898
  call void @__sanitizer_cov_trace_pc() #13
  %stats18.i = getelementptr inbounds %struct.bfa_rport_s, ptr %278, i32 0, i32 11
  %279 = call ptr @memset(ptr %stats18.i, i32 0, i32 152)
  br label %bfad_iocmd_rport_clr_stats.exit

bfad_iocmd_rport_clr_stats.exit:                  ; preds = %if.then17.i, %if.end15.i898.bfad_iocmd_rport_clr_stats.exit_crit_edge, %if.end.i895.bfad_iocmd_rport_clr_stats.exit_crit_edge, %sw.bb53.i.bfad_iocmd_rport_clr_stats.exit_crit_edge
  %.sink.i899 = phi i32 [ 18, %sw.bb53.i.bfad_iocmd_rport_clr_stats.exit_crit_edge ], [ 19, %if.end.i895.bfad_iocmd_rport_clr_stats.exit_crit_edge ], [ 0, %if.then17.i ], [ 0, %if.end15.i898.bfad_iocmd_rport_clr_stats.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i885, i32 noundef %call2.i886) #11
  %280 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %.sink.i899, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb55.i:                                        ; preds = %if.end
  %bfad_lock.i869 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i870 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i869) #11
  %bfa_fcs.i871 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i872 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, ptr %call9.i.i, i32 0, i32 2
  %281 = ptrtoint ptr %vf_id.i872 to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %vf_id.i872, align 2
  %pwwn.i873 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, ptr %call9.i.i, i32 0, i32 5
  %283 = ptrtoint ptr %pwwn.i873 to i32
  call void @__asan_load8_noabort(i32 %283)
  %284 = load i64, ptr %pwwn.i873, align 16
  %call5.i874 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i871, i16 noundef zeroext %282, i64 noundef %284) #11
  %cmp6.i875 = icmp eq ptr %call5.i874, null
  br i1 %cmp6.i875, label %sw.bb55.i.bfad_iocmd_rport_set_speed.exit_crit_edge, label %if.end.i879

sw.bb55.i.bfad_iocmd_rport_set_speed.exit_crit_edge: ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_rport_set_speed.exit

if.end.i879:                                      ; preds = %sw.bb55.i
  %rpwwn.i876 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, ptr %call9.i.i, i32 0, i32 6
  %285 = ptrtoint ptr %rpwwn.i876 to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %rpwwn.i876, align 8
  %call9.i877 = tail call ptr @bfa_fcs_rport_lookup(ptr noundef nonnull %call5.i874, i64 noundef %286) #11
  %cmp10.i878 = icmp eq ptr %call9.i877, null
  br i1 %cmp10.i878, label %if.end.i879.bfad_iocmd_rport_set_speed.exit_crit_edge, label %if.end15.i881

if.end.i879.bfad_iocmd_rport_set_speed.exit_crit_edge: ; preds = %if.end.i879
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_rport_set_speed.exit

if.end15.i881:                                    ; preds = %if.end.i879
  %speed.i880 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, ptr %call9.i.i, i32 0, i32 3
  %287 = ptrtoint ptr %speed.i880 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %speed.i880, align 8
  %assigned_speed.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call9.i877, i32 0, i32 27, i32 7
  %289 = ptrtoint ptr %assigned_speed.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %assigned_speed.i, align 8
  %rpsc_speed.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call9.i877, i32 0, i32 27, i32 6
  %290 = ptrtoint ptr %rpsc_speed.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %rpsc_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %cmp17.i = icmp eq i32 %291, 0
  br i1 %cmp17.i, label %if.then19.i883, label %if.end15.i881.bfad_iocmd_rport_set_speed.exit_crit_edge

if.end15.i881.bfad_iocmd_rport_set_speed.exit_crit_edge: ; preds = %if.end15.i881
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_rport_set_speed.exit

if.then19.i883:                                   ; preds = %if.end15.i881
  %bfa_rport.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call9.i877, i32 0, i32 20
  %292 = ptrtoint ptr %bfa_rport.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %bfa_rport.i, align 4
  %tobool.not.i882 = icmp eq ptr %293, null
  br i1 %tobool.not.i882, label %if.then19.i883.bfad_iocmd_rport_set_speed.exit_crit_edge, label %if.then20.i

if.then19.i883.bfad_iocmd_rport_set_speed.exit_crit_edge: ; preds = %if.then19.i883
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_rport_set_speed.exit

if.then20.i:                                      ; preds = %if.then19.i883
  call void @__sanitizer_cov_trace_pc() #13
  %294 = ptrtoint ptr %speed.i880 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %speed.i880, align 8
  tail call void @bfa_rport_speed(ptr noundef nonnull %293, i32 noundef %295) #11
  br label %bfad_iocmd_rport_set_speed.exit

bfad_iocmd_rport_set_speed.exit:                  ; preds = %if.then20.i, %if.then19.i883.bfad_iocmd_rport_set_speed.exit_crit_edge, %if.end15.i881.bfad_iocmd_rport_set_speed.exit_crit_edge, %if.end.i879.bfad_iocmd_rport_set_speed.exit_crit_edge, %sw.bb55.i.bfad_iocmd_rport_set_speed.exit_crit_edge
  %.sink.i884 = phi i32 [ 18, %sw.bb55.i.bfad_iocmd_rport_set_speed.exit_crit_edge ], [ 19, %if.end.i879.bfad_iocmd_rport_set_speed.exit_crit_edge ], [ 0, %if.then19.i883.bfad_iocmd_rport_set_speed.exit_crit_edge ], [ 0, %if.then20.i ], [ 0, %if.end15.i881.bfad_iocmd_rport_set_speed.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i869, i32 noundef %call2.i870) #11
  %296 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %.sink.i884, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb57.i:                                        ; preds = %if.end
  %bfad_lock.i860 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i861 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i860) #11
  %bfa_fcs.i862 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i863 = getelementptr inbounds %struct.bfa_bsg_vport_attr_s, ptr %call9.i.i, i32 0, i32 2
  %297 = ptrtoint ptr %vf_id.i863 to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %vf_id.i863, align 2
  %vpwwn.i864 = getelementptr inbounds %struct.bfa_bsg_vport_attr_s, ptr %call9.i.i, i32 0, i32 3
  %299 = ptrtoint ptr %vpwwn.i864 to i32
  call void @__asan_load8_noabort(i32 %299)
  %300 = load i64, ptr %vpwwn.i864, align 8
  %call5.i865 = tail call ptr @bfa_fcs_vport_lookup(ptr noundef %bfa_fcs.i862, i16 noundef zeroext %298, i64 noundef %300) #11
  %cmp6.i866 = icmp eq ptr %call5.i865, null
  br i1 %cmp6.i866, label %sw.bb57.i.bfad_iocmd_vport_get_attr.exit_crit_edge, label %if.end.i867

sw.bb57.i.bfad_iocmd_vport_get_attr.exit_crit_edge: ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_vport_get_attr.exit

if.end.i867:                                      ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #13
  %vport_attr.i = getelementptr inbounds %struct.bfa_bsg_vport_attr_s, ptr %call9.i.i, i32 0, i32 4
  tail call void @bfa_fcs_vport_get_attr(ptr noundef nonnull %call5.i865, ptr noundef %vport_attr.i) #11
  br label %bfad_iocmd_vport_get_attr.exit

bfad_iocmd_vport_get_attr.exit:                   ; preds = %if.end.i867, %sw.bb57.i.bfad_iocmd_vport_get_attr.exit_crit_edge
  %storemerge.i868 = phi i32 [ 0, %if.end.i867 ], [ 30, %sw.bb57.i.bfad_iocmd_vport_get_attr.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i860, i32 noundef %call2.i861) #11
  %301 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %storemerge.i868, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb59.i:                                        ; preds = %if.end
  %bfad_lock.i849 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i850 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i849) #11
  %bfa_fcs.i851 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i852 = getelementptr inbounds %struct.bfa_bsg_vport_stats_s, ptr %call9.i.i, i32 0, i32 2
  %302 = ptrtoint ptr %vf_id.i852 to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %vf_id.i852, align 2
  %vpwwn.i853 = getelementptr inbounds %struct.bfa_bsg_vport_stats_s, ptr %call9.i.i, i32 0, i32 3
  %304 = ptrtoint ptr %vpwwn.i853 to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %vpwwn.i853, align 8
  %call5.i854 = tail call ptr @bfa_fcs_vport_lookup(ptr noundef %bfa_fcs.i851, i16 noundef zeroext %303, i64 noundef %305) #11
  %cmp6.i855 = icmp eq ptr %call5.i854, null
  br i1 %cmp6.i855, label %sw.bb59.i.bfad_iocmd_vport_get_stats.exit_crit_edge, label %if.end.i858

sw.bb59.i.bfad_iocmd_vport_get_stats.exit_crit_edge: ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_vport_get_stats.exit

if.end.i858:                                      ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #13
  %vport_stats.i856 = getelementptr inbounds %struct.bfa_bsg_vport_stats_s, ptr %call9.i.i, i32 0, i32 4
  %vport_stats9.i = getelementptr inbounds %struct.bfa_fcs_vport_s, ptr %call5.i854, i32 0, i32 5
  %306 = call ptr @memcpy(ptr %vport_stats.i856, ptr %vport_stats9.i, i32 328)
  %stats.i857 = getelementptr inbounds %struct.bfa_fcs_vport_s, ptr %call5.i854, i32 0, i32 2, i32 15
  %307 = call ptr @memcpy(ptr %vport_stats.i856, ptr %stats.i857, i32 248)
  br label %bfad_iocmd_vport_get_stats.exit

bfad_iocmd_vport_get_stats.exit:                  ; preds = %if.end.i858, %sw.bb59.i.bfad_iocmd_vport_get_stats.exit_crit_edge
  %storemerge.i859 = phi i32 [ 0, %if.end.i858 ], [ 30, %sw.bb59.i.bfad_iocmd_vport_get_stats.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i849, i32 noundef %call2.i850) #11
  %308 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %storemerge.i859, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb61.i:                                        ; preds = %if.end
  %bfad_lock.i840 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i841 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i840) #11
  %bfa_fcs.i842 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i843 = getelementptr inbounds %struct.bfa_bsg_reset_stats_s, ptr %call9.i.i, i32 0, i32 2
  %309 = ptrtoint ptr %vf_id.i843 to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %vf_id.i843, align 2
  %vpwwn.i = getelementptr inbounds %struct.bfa_bsg_reset_stats_s, ptr %call9.i.i, i32 0, i32 3
  %311 = ptrtoint ptr %vpwwn.i to i32
  call void @__asan_load8_noabort(i32 %311)
  %312 = load i64, ptr %vpwwn.i, align 8
  %call5.i844 = tail call ptr @bfa_fcs_vport_lookup(ptr noundef %bfa_fcs.i842, i16 noundef zeroext %310, i64 noundef %312) #11
  %cmp6.i845 = icmp eq ptr %call5.i844, null
  br i1 %cmp6.i845, label %sw.bb61.i.bfad_iocmd_vport_clr_stats.exit_crit_edge, label %if.end.i847

sw.bb61.i.bfad_iocmd_vport_clr_stats.exit_crit_edge: ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_vport_clr_stats.exit

if.end.i847:                                      ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #13
  %vport_stats.i = getelementptr inbounds %struct.bfa_fcs_vport_s, ptr %call5.i844, i32 0, i32 5
  %313 = call ptr @memset(ptr %vport_stats.i, i32 0, i32 328)
  %stats.i846 = getelementptr inbounds %struct.bfa_fcs_vport_s, ptr %call5.i844, i32 0, i32 2, i32 15
  %314 = call ptr @memset(ptr %stats.i846, i32 0, i32 248)
  br label %bfad_iocmd_vport_clr_stats.exit

bfad_iocmd_vport_clr_stats.exit:                  ; preds = %if.end.i847, %sw.bb61.i.bfad_iocmd_vport_clr_stats.exit_crit_edge
  %storemerge.i848 = phi i32 [ 0, %if.end.i847 ], [ 30, %sw.bb61.i.bfad_iocmd_vport_clr_stats.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i840, i32 noundef %call2.i841) #11
  %315 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %storemerge.i848, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb63.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nports.i) #11
  %nports1.i = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, ptr %call9.i.i, i32 0, i32 4
  %316 = ptrtoint ptr %nports1.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %nports1.i, align 16
  %318 = ptrtoint ptr %nports.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %317, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %cmp.i828 = icmp eq i32 %317, 0
  br i1 %cmp.i828, label %sw.bb63.i.bfad_iocmd_fabric_get_lports.exit_crit_edge, label %if.end.i830

sw.bb63.i.bfad_iocmd_fabric_get_lports.exit_crit_edge: ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_fabric_get_lports.exit

if.end.i830:                                      ; preds = %sw.bb63.i
  %mul.i = shl i32 %317, 3
  %add.i829 = add i32 %mul.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i829, i32 %29)
  %cmp3.not.i = icmp eq i32 %add.i829, %29
  br i1 %cmp3.not.i, label %if.end7.i, label %if.end.i830.bfad_iocmd_fabric_get_lports.exit_crit_edge

if.end.i830.bfad_iocmd_fabric_get_lports.exit_crit_edge: ; preds = %if.end.i830
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_fabric_get_lports.exit

if.end7.i:                                        ; preds = %if.end.i830
  %bfad_lock.i831 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call10.i832 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i831) #11
  %bfa_fcs.i833 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i834 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, ptr %call9.i.i, i32 0, i32 2
  %319 = ptrtoint ptr %vf_id.i834 to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %vf_id.i834, align 2
  %call13.i835 = tail call ptr @bfa_fcs_vf_lookup(ptr noundef %bfa_fcs.i833, i16 noundef zeroext %320) #11
  %cmp14.i836 = icmp eq ptr %call13.i835, null
  br i1 %cmp14.i836, label %if.then16.i837, label %if.end19.i

if.then16.i837:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i831, i32 noundef %call10.i832) #11
  br label %bfad_iocmd_fabric_get_lports.exit

if.end19.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i838 = getelementptr i8, ptr %call9.i.i, i32 24
  call void @bfa_fcs_vf_get_ports(ptr noundef nonnull %call13.i835, ptr noundef %add.ptr.i838, ptr noundef nonnull %nports.i) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i831, i32 noundef %call10.i832) #11
  %321 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %nports.i, align 4
  %323 = ptrtoint ptr %nports1.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %322, ptr %nports1.i, align 16
  br label %bfad_iocmd_fabric_get_lports.exit

bfad_iocmd_fabric_get_lports.exit:                ; preds = %if.end19.i, %if.then16.i837, %if.end.i830.bfad_iocmd_fabric_get_lports.exit_crit_edge, %sw.bb63.i.bfad_iocmd_fabric_get_lports.exit_crit_edge
  %.sink.i839 = phi i32 [ 0, %if.end19.i ], [ 11, %if.then16.i837 ], [ 2, %sw.bb63.i.bfad_iocmd_fabric_get_lports.exit_crit_edge ], [ 70, %if.end.i830.bfad_iocmd_fabric_get_lports.exit_crit_edge ]
  %324 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %.sink.i839, ptr %call9.i.i, align 128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nports.i) #11
  br label %if.end14

sw.bb65.i:                                        ; preds = %if.end.sw.bb65.i_crit_edge, %if.end.sw.bb65.i_crit_edge1191
  %bfad_lock.i816 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i817 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i816) #11
  %cfg.i818 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11
  %325 = ptrtoint ptr %cfg.i818 to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %cfg.i818, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %326)
  %cmp7.i819 = icmp eq i8 %326, 2
  br i1 %cmp7.i819, label %land.lhs.true.i822, label %sw.bb65.i.if.else.i823_crit_edge

sw.bb65.i.if.else.i823_crit_edge:                 ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i823

land.lhs.true.i822:                               ; preds = %sw.bb65.i
  %topology9.i820 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 6
  %327 = ptrtoint ptr %topology9.i820 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %topology9.i820, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %328)
  %cmp10.i821 = icmp eq i32 %328, 2
  br i1 %cmp10.i821, label %land.lhs.true.i822.bfad_iocmd_ratelim.exit_crit_edge, label %land.lhs.true.i822.if.else.i823_crit_edge

land.lhs.true.i822.if.else.i823_crit_edge:        ; preds = %land.lhs.true.i822
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i823

land.lhs.true.i822.bfad_iocmd_ratelim.exit_crit_edge: ; preds = %land.lhs.true.i822
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ratelim.exit

if.else.i823:                                     ; preds = %land.lhs.true.i822.if.else.i823_crit_edge, %sw.bb65.i.if.else.i823_crit_edge
  %329 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %329, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %if.else.i823.if.end22.i_crit_edge [
    i32 41, label %if.else.i823.if.end22.sink.split.i_crit_edge
    i32 42, label %if.then19.i824
  ]

if.else.i823.if.end22.sink.split.i_crit_edge:     ; preds = %if.else.i823
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.sink.split.i

if.else.i823.if.end22.i_crit_edge:                ; preds = %if.else.i823
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then19.i824:                                   ; preds = %if.else.i823
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.then19.i824, %if.else.i823.if.end22.sink.split.i_crit_edge
  %.sink.i825 = phi i8 [ 0, %if.then19.i824 ], [ 1, %if.else.i823.if.end22.sink.split.i_crit_edge ]
  %ratelimit21.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 9
  %330 = ptrtoint ptr %ratelimit21.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %.sink.i825, ptr %ratelimit21.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %if.else.i823.if.end22.i_crit_edge
  %trl_def_speed.i826 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 10
  %331 = ptrtoint ptr %trl_def_speed.i826 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %trl_def_speed.i826, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %332)
  %cmp25.i = icmp eq i8 %332, 0
  br i1 %cmp25.i, label %if.then27.i, label %if.end22.i.bfad_iocmd_ratelim.exit_crit_edge

if.end22.i.bfad_iocmd_ratelim.exit_crit_edge:     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ratelim.exit

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %333 = ptrtoint ptr %trl_def_speed.i826 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 1, ptr %trl_def_speed.i826, align 1
  br label %bfad_iocmd_ratelim.exit

bfad_iocmd_ratelim.exit:                          ; preds = %if.then27.i, %if.end22.i.bfad_iocmd_ratelim.exit_crit_edge, %land.lhs.true.i822.bfad_iocmd_ratelim.exit_crit_edge
  %storemerge.i827 = phi i32 [ 230, %land.lhs.true.i822.bfad_iocmd_ratelim.exit_crit_edge ], [ 0, %if.then27.i ], [ 0, %if.end22.i.bfad_iocmd_ratelim.exit_crit_edge ]
  %334 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %storemerge.i827, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i816, i32 noundef %call3.i817) #11
  br label %if.end14

sw.bb67.i:                                        ; preds = %if.end
  %bfad_lock.i807 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i808 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i807) #11
  %speed.i809 = getelementptr inbounds %struct.bfa_bsg_trl_speed_s, ptr %call9.i.i, i32 0, i32 3
  %335 = ptrtoint ptr %speed.i809 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %speed.i809, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %336)
  %cmp6.i810 = icmp eq i32 %336, 15
  br i1 %cmp6.i810, label %sw.bb67.i.bfad_iocmd_ratelim_speed.exit_crit_edge, label %lor.lhs.false.i811

sw.bb67.i.bfad_iocmd_ratelim_speed.exit_crit_edge: ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ratelim_speed.exit

lor.lhs.false.i811:                               ; preds = %sw.bb67.i
  %speed_sup.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 4
  %337 = ptrtoint ptr %speed_sup.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %speed_sup.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %336, i32 %338)
  %cmp9.i = icmp ugt i32 %336, %338
  br i1 %cmp9.i, label %lor.lhs.false.i811.bfad_iocmd_ratelim_speed.exit_crit_edge, label %if.end.i813

lor.lhs.false.i811.bfad_iocmd_ratelim_speed.exit_crit_edge: ; preds = %lor.lhs.false.i811
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ratelim_speed.exit

if.end.i813:                                      ; preds = %lor.lhs.false.i811
  %cfg.i812 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11
  %339 = ptrtoint ptr %cfg.i812 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %cfg.i812, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %340)
  %cmp13.i = icmp eq i8 %340, 2
  br i1 %cmp13.i, label %land.lhs.true.i814, label %if.end.i813.if.else.i815_crit_edge

if.end.i813.if.else.i815_crit_edge:               ; preds = %if.end.i813
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i815

land.lhs.true.i814:                               ; preds = %if.end.i813
  %topology15.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 6
  %341 = ptrtoint ptr %topology15.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %topology15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %342)
  %cmp16.i = icmp eq i32 %342, 2
  br i1 %cmp16.i, label %land.lhs.true.i814.bfad_iocmd_ratelim_speed.exit_crit_edge, label %land.lhs.true.i814.if.else.i815_crit_edge

land.lhs.true.i814.if.else.i815_crit_edge:        ; preds = %land.lhs.true.i814
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i815

land.lhs.true.i814.bfad_iocmd_ratelim_speed.exit_crit_edge: ; preds = %land.lhs.true.i814
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ratelim_speed.exit

if.else.i815:                                     ; preds = %land.lhs.true.i814.if.else.i815_crit_edge, %if.end.i813.if.else.i815_crit_edge
  %conv21.i = trunc i32 %336 to i8
  %trl_def_speed.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 10
  %343 = ptrtoint ptr %trl_def_speed.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %conv21.i, ptr %trl_def_speed.i, align 1
  br label %bfad_iocmd_ratelim_speed.exit

bfad_iocmd_ratelim_speed.exit:                    ; preds = %if.else.i815, %land.lhs.true.i814.bfad_iocmd_ratelim_speed.exit_crit_edge, %lor.lhs.false.i811.bfad_iocmd_ratelim_speed.exit_crit_edge, %sw.bb67.i.bfad_iocmd_ratelim_speed.exit_crit_edge
  %storemerge.sink.i = phi i32 [ 23, %lor.lhs.false.i811.bfad_iocmd_ratelim_speed.exit_crit_edge ], [ 23, %sw.bb67.i.bfad_iocmd_ratelim_speed.exit_crit_edge ], [ 0, %if.else.i815 ], [ 230, %land.lhs.true.i814.bfad_iocmd_ratelim_speed.exit_crit_edge ]
  %344 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %storemerge.sink.i, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i807, i32 noundef %call3.i808) #11
  br label %if.end14

sw.bb69.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i804 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i805 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i804) #11
  %bfa.i806 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %param.i = getelementptr inbounds %struct.bfa_bsg_fcpim_s, ptr %call9.i.i, i32 0, i32 2
  %345 = ptrtoint ptr %param.i to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %param.i, align 2
  tail call void @bfa_fcpim_path_tov_set(ptr noundef %bfa.i806, i16 noundef zeroext %346) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i804, i32 noundef %call2.i805) #11
  %347 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb71.i:                                        ; preds = %if.end
  %bfad_lock.i794 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i795 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i794) #11
  %modstats.i796 = getelementptr inbounds %struct.bfa_bsg_fcpim_modstats_s, ptr %call9.i.i, i32 0, i32 2
  %348 = call ptr @memset(ptr %modstats.i796, i32 0, i32 216)
  %itnim_q.i797 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 6, i32 11, i32 11
  %349 = ptrtoint ptr %itnim_q.i797 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %itnim_q.i797, align 8
  %cmp.i.not1.i798 = icmp eq ptr %350, %itnim_q.i797
  br i1 %cmp.i.not1.i798, label %sw.bb71.i.bfad_iocmd_fcpim_get_modstats.exit_crit_edge, label %sw.bb71.i.for.body.i803_crit_edge

sw.bb71.i.for.body.i803_crit_edge:                ; preds = %sw.bb71.i
  br label %for.body.i803

sw.bb71.i.bfad_iocmd_fcpim_get_modstats.exit_crit_edge: ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_fcpim_get_modstats.exit

for.body.i803:                                    ; preds = %for.body.i803.for.body.i803_crit_edge, %sw.bb71.i.for.body.i803_crit_edge
  %qe.02.i799 = phi ptr [ %qen.0.i800, %for.body.i803.for.body.i803_crit_edge ], [ %350, %sw.bb71.i.for.body.i803_crit_edge ]
  %351 = ptrtoint ptr %qe.02.i799 to i32
  call void @__asan_load4_noabort(i32 %351)
  %qen.0.i800 = load ptr, ptr %qe.02.i799, align 4
  %stats.i801 = getelementptr inbounds %struct.bfa_itnim_s, ptr %qe.02.i799, i32 0, i32 21
  tail call void @bfa_fcpim_add_stats(ptr noundef %modstats.i796, ptr noundef %stats.i801) #11
  %cmp.i.not.i802 = icmp eq ptr %qen.0.i800, %itnim_q.i797
  br i1 %cmp.i.not.i802, label %for.body.i803.bfad_iocmd_fcpim_get_modstats.exit_crit_edge, label %for.body.i803.for.body.i803_crit_edge

for.body.i803.for.body.i803_crit_edge:            ; preds = %for.body.i803
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i803

for.body.i803.bfad_iocmd_fcpim_get_modstats.exit_crit_edge: ; preds = %for.body.i803
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_fcpim_get_modstats.exit

bfad_iocmd_fcpim_get_modstats.exit:               ; preds = %for.body.i803.bfad_iocmd_fcpim_get_modstats.exit_crit_edge, %sw.bb71.i.bfad_iocmd_fcpim_get_modstats.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i794, i32 noundef %call3.i795) #11
  %352 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb73.i:                                        ; preds = %if.end
  %bfad_lock.i791 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i792 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i791) #11
  %itnim_q.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 6, i32 11, i32 11
  %353 = ptrtoint ptr %itnim_q.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %itnim_q.i, align 8
  %cmp.i.not1.i = icmp eq ptr %354, %itnim_q.i
  br i1 %cmp.i.not1.i, label %sw.bb73.i.bfad_iocmd_fcpim_clr_modstats.exit_crit_edge, label %sw.bb73.i.for.body.i_crit_edge

sw.bb73.i.for.body.i_crit_edge:                   ; preds = %sw.bb73.i
  br label %for.body.i

sw.bb73.i.bfad_iocmd_fcpim_clr_modstats.exit_crit_edge: ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_fcpim_clr_modstats.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb73.i.for.body.i_crit_edge
  %qe.02.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %354, %sw.bb73.i.for.body.i_crit_edge ]
  %355 = ptrtoint ptr %qe.02.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %qen.0.i = load ptr, ptr %qe.02.i, align 4
  tail call void @bfa_itnim_clear_stats(ptr noundef %qe.02.i) #11
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %itnim_q.i
  br i1 %cmp.i.not.i, label %for.body.i.bfad_iocmd_fcpim_clr_modstats.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.bfad_iocmd_fcpim_clr_modstats.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_fcpim_clr_modstats.exit

bfad_iocmd_fcpim_clr_modstats.exit:               ; preds = %for.body.i.bfad_iocmd_fcpim_clr_modstats.exit_crit_edge, %sw.bb73.i.bfad_iocmd_fcpim_clr_modstats.exit_crit_edge
  %del_itn_stats.i793 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 6, i32 11, i32 18
  %356 = call ptr @memset(ptr %del_itn_stats.i793, i32 0, i32 32)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i791, i32 noundef %call3.i792) #11
  %357 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb75.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i789 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i790 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i789) #11
  %modstats.i = getelementptr inbounds %struct.bfa_bsg_fcpim_del_itn_stats_s, ptr %call9.i.i, i32 0, i32 2
  %del_itn_stats.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 6, i32 11, i32 18
  %358 = call ptr @memcpy(ptr %modstats.i, ptr %del_itn_stats.i, i32 32)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i789, i32 noundef %call3.i790) #11
  %359 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb77.i:                                        ; preds = %if.end
  %bfad_lock.i776 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i777 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i776) #11
  %bfa_fcs.i778 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i779 = getelementptr inbounds %struct.bfa_bsg_itnim_attr_s, ptr %call9.i.i, i32 0, i32 2
  %360 = ptrtoint ptr %vf_id.i779 to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %vf_id.i779, align 2
  %lpwwn.i780 = getelementptr inbounds %struct.bfa_bsg_itnim_attr_s, ptr %call9.i.i, i32 0, i32 3
  %362 = ptrtoint ptr %lpwwn.i780 to i32
  call void @__asan_load8_noabort(i32 %362)
  %363 = load i64, ptr %lpwwn.i780, align 8
  %call5.i781 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i778, i16 noundef zeroext %361, i64 noundef %363) #11
  %tobool.not.i782 = icmp eq ptr %call5.i781, null
  br i1 %tobool.not.i782, label %sw.bb77.i.bfad_iocmd_itnim_get_attr.exit_crit_edge, label %if.else.i786

sw.bb77.i.bfad_iocmd_itnim_get_attr.exit_crit_edge: ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_itnim_get_attr.exit

if.else.i786:                                     ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #13
  %rpwwn.i783 = getelementptr inbounds %struct.bfa_bsg_itnim_attr_s, ptr %call9.i.i, i32 0, i32 4
  %364 = ptrtoint ptr %rpwwn.i783 to i32
  call void @__asan_load8_noabort(i32 %364)
  %365 = load i64, ptr %rpwwn.i783, align 16
  %attr.i784 = getelementptr inbounds %struct.bfa_bsg_itnim_attr_s, ptr %call9.i.i, i32 0, i32 5
  %call6.i785 = tail call i32 @bfa_fcs_itnim_attr_get(ptr noundef nonnull %call5.i781, i64 noundef %365, ptr noundef %attr.i784) #11
  br label %bfad_iocmd_itnim_get_attr.exit

bfad_iocmd_itnim_get_attr.exit:                   ; preds = %if.else.i786, %sw.bb77.i.bfad_iocmd_itnim_get_attr.exit_crit_edge
  %storemerge.i787 = phi i32 [ %call6.i785, %if.else.i786 ], [ 18, %sw.bb77.i.bfad_iocmd_itnim_get_attr.exit_crit_edge ]
  %366 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %storemerge.i787, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i776, i32 noundef %call2.i777) #11
  br label %if.end14

sw.bb79.i:                                        ; preds = %if.end
  %bfad_lock.i758 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i759 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i758) #11
  %bfa_fcs.i760 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i761 = getelementptr inbounds %struct.bfa_bsg_itnim_iostats_s, ptr %call9.i.i, i32 0, i32 2
  %367 = ptrtoint ptr %vf_id.i761 to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %vf_id.i761, align 2
  %lpwwn.i762 = getelementptr inbounds %struct.bfa_bsg_itnim_iostats_s, ptr %call9.i.i, i32 0, i32 3
  %369 = ptrtoint ptr %lpwwn.i762 to i32
  call void @__asan_load8_noabort(i32 %369)
  %370 = load i64, ptr %lpwwn.i762, align 8
  %call5.i763 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i760, i16 noundef zeroext %368, i64 noundef %370) #11
  %tobool.not.i764 = icmp eq ptr %call5.i763, null
  br i1 %tobool.not.i764, label %if.then.i766, label %if.else.i770

if.then.i766:                                     ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #13
  %371 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 18, ptr %call9.i.i, align 128
  %trcmod.i765 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %372 = ptrtoint ptr %trcmod.i765 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %trcmod.i765, align 8
  tail call void @__bfa_trc(ptr noundef %373, i32 noundef 3075, i32 noundef 1088, i64 noundef 0) #11
  br label %bfad_iocmd_itnim_get_iostats.exit

if.else.i770:                                     ; preds = %sw.bb79.i
  %rpwwn.i767 = getelementptr inbounds %struct.bfa_bsg_itnim_iostats_s, ptr %call9.i.i, i32 0, i32 4
  %374 = ptrtoint ptr %rpwwn.i767 to i32
  call void @__asan_load8_noabort(i32 %374)
  %375 = load i64, ptr %rpwwn.i767, align 16
  %call6.i768 = tail call ptr @bfa_fcs_itnim_lookup(ptr noundef nonnull %call5.i763, i64 noundef %375) #11
  %cmp7.i769 = icmp eq ptr %call6.i768, null
  br i1 %cmp7.i769, label %if.then9.i771, label %if.else11.i773

if.then9.i771:                                    ; preds = %if.else.i770
  call void @__sanitizer_cov_trace_pc() #13
  %376 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 19, ptr %call9.i.i, align 128
  br label %bfad_iocmd_itnim_get_iostats.exit

if.else11.i773:                                   ; preds = %if.else.i770
  %377 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 0, ptr %call9.i.i, align 128
  %bfa_itnim.i.i772 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %call6.i768, i32 0, i32 5
  %378 = ptrtoint ptr %bfa_itnim.i.i772 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %bfa_itnim.i.i772, align 4
  %tobool14.not.i = icmp eq ptr %379, null
  br i1 %tobool14.not.i, label %if.else11.i773.bfad_iocmd_itnim_get_iostats.exit_crit_edge, label %if.then15.i

if.else11.i773.bfad_iocmd_itnim_get_iostats.exit_crit_edge: ; preds = %if.else11.i773
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_itnim_get_iostats.exit

if.then15.i:                                      ; preds = %if.else11.i773
  call void @__sanitizer_cov_trace_pc() #13
  %iostats.i = getelementptr inbounds %struct.bfa_bsg_itnim_iostats_s, ptr %call9.i.i, i32 0, i32 5
  %stats.i774 = getelementptr inbounds %struct.bfa_itnim_s, ptr %379, i32 0, i32 21
  %380 = call ptr @memcpy(ptr %iostats.i, ptr %stats.i774, i32 216)
  br label %bfad_iocmd_itnim_get_iostats.exit

bfad_iocmd_itnim_get_iostats.exit:                ; preds = %if.then15.i, %if.else11.i773.bfad_iocmd_itnim_get_iostats.exit_crit_edge, %if.then9.i771, %if.then.i766
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i758, i32 noundef %call2.i759) #11
  br label %if.end14

sw.bb81.i:                                        ; preds = %if.end
  %bfad_lock.i742 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i743 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i742) #11
  %bfa_fcs.i744 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i745 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, ptr %call9.i.i, i32 0, i32 2
  %381 = ptrtoint ptr %vf_id.i745 to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %vf_id.i745, align 2
  %pwwn.i746 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, ptr %call9.i.i, i32 0, i32 3
  %383 = ptrtoint ptr %pwwn.i746 to i32
  call void @__asan_load8_noabort(i32 %383)
  %384 = load i64, ptr %pwwn.i746, align 8
  %call5.i747 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i744, i16 noundef zeroext %382, i64 noundef %384) #11
  %tobool.not.i748 = icmp eq ptr %call5.i747, null
  br i1 %tobool.not.i748, label %if.then.i749, label %if.else.i753

if.then.i749:                                     ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #13
  %385 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 18, ptr %call9.i.i, align 128
  br label %bfad_iocmd_itnim_reset_stats.exit

if.else.i753:                                     ; preds = %sw.bb81.i
  %rpwwn.i750 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, ptr %call9.i.i, i32 0, i32 4
  %386 = ptrtoint ptr %rpwwn.i750 to i32
  call void @__asan_load8_noabort(i32 %386)
  %387 = load i64, ptr %rpwwn.i750, align 16
  %call6.i751 = tail call ptr @bfa_fcs_itnim_lookup(ptr noundef nonnull %call5.i747, i64 noundef %387) #11
  %cmp7.i752 = icmp eq ptr %call6.i751, null
  br i1 %cmp7.i752, label %if.then9.i754, label %if.else11.i757

if.then9.i754:                                    ; preds = %if.else.i753
  call void @__sanitizer_cov_trace_pc() #13
  %388 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 19, ptr %call9.i.i, align 128
  br label %bfad_iocmd_itnim_reset_stats.exit

if.else11.i757:                                   ; preds = %if.else.i753
  call void @__sanitizer_cov_trace_pc() #13
  %389 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 0, ptr %call9.i.i, align 128
  %390 = ptrtoint ptr %rpwwn.i750 to i32
  call void @__asan_load8_noabort(i32 %390)
  %391 = load i64, ptr %rpwwn.i750, align 16
  %call14.i755 = tail call i32 @bfa_fcs_itnim_stats_clear(ptr noundef nonnull %call5.i747, i64 noundef %391) #11
  %bfa_itnim.i.i756 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %call6.i751, i32 0, i32 5
  %392 = ptrtoint ptr %bfa_itnim.i.i756 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %bfa_itnim.i.i756, align 4
  tail call void @bfa_itnim_clear_stats(ptr noundef %393) #11
  br label %bfad_iocmd_itnim_reset_stats.exit

bfad_iocmd_itnim_reset_stats.exit:                ; preds = %if.else11.i757, %if.then9.i754, %if.then.i749
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i742, i32 noundef %call2.i743) #11
  br label %if.end14

sw.bb83.i:                                        ; preds = %if.end
  %bfad_lock.i725 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i726 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i725) #11
  %bfa_fcs.i727 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i728 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, ptr %call9.i.i, i32 0, i32 2
  %394 = ptrtoint ptr %vf_id.i728 to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %vf_id.i728, align 2
  %lpwwn.i729 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, ptr %call9.i.i, i32 0, i32 3
  %396 = ptrtoint ptr %lpwwn.i729 to i32
  call void @__asan_load8_noabort(i32 %396)
  %397 = load i64, ptr %lpwwn.i729, align 8
  %call5.i730 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i727, i16 noundef zeroext %395, i64 noundef %397) #11
  %tobool.not.i731 = icmp eq ptr %call5.i730, null
  br i1 %tobool.not.i731, label %if.then.i733, label %if.else.i737

if.then.i733:                                     ; preds = %sw.bb83.i
  call void @__sanitizer_cov_trace_pc() #13
  %398 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 18, ptr %call9.i.i, align 128
  %trcmod.i732 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %399 = ptrtoint ptr %trcmod.i732 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %trcmod.i732, align 8
  tail call void @__bfa_trc(ptr noundef %400, i32 noundef 3075, i32 noundef 1148, i64 noundef 0) #11
  br label %bfad_iocmd_itnim_get_itnstats.exit

if.else.i737:                                     ; preds = %sw.bb83.i
  %rpwwn.i734 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, ptr %call9.i.i, i32 0, i32 4
  %401 = ptrtoint ptr %rpwwn.i734 to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %rpwwn.i734, align 16
  %call6.i735 = tail call ptr @bfa_fcs_itnim_lookup(ptr noundef nonnull %call5.i730, i64 noundef %402) #11
  %cmp7.i736 = icmp eq ptr %call6.i735, null
  br i1 %cmp7.i736, label %if.then9.i738, label %if.else11.i740

if.then9.i738:                                    ; preds = %if.else.i737
  call void @__sanitizer_cov_trace_pc() #13
  %403 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 19, ptr %call9.i.i, align 128
  br label %bfad_iocmd_itnim_get_itnstats.exit

if.else11.i740:                                   ; preds = %if.else.i737
  call void @__sanitizer_cov_trace_pc() #13
  %404 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 0, ptr %call9.i.i, align 128
  %405 = ptrtoint ptr %rpwwn.i734 to i32
  call void @__asan_load8_noabort(i32 %405)
  %406 = load i64, ptr %rpwwn.i734, align 16
  %itnstats.i = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, ptr %call9.i.i, i32 0, i32 5
  %call14.i739 = tail call i32 @bfa_fcs_itnim_stats_get(ptr noundef nonnull %call5.i730, i64 noundef %406, ptr noundef %itnstats.i) #11
  br label %bfad_iocmd_itnim_get_itnstats.exit

bfad_iocmd_itnim_get_itnstats.exit:               ; preds = %if.else11.i740, %if.then9.i738, %if.then.i733
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i725, i32 noundef %call2.i726) #11
  br label %if.end14

sw.bb85.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i721 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i722 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i721) #11
  %bfa.i723 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call5.i724 = tail call i32 @bfa_fcport_enable(ptr noundef %bfa.i723) #11
  %407 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %call5.i724, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i721, i32 noundef %call2.i722) #11
  br label %if.end14

sw.bb87.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i717 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i718 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i717) #11
  %bfa.i719 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call5.i720 = tail call i32 @bfa_fcport_disable(ptr noundef %bfa.i719) #11
  %408 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %call5.i720, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i717, i32 noundef %call2.i718) #11
  br label %if.end14

sw.bb89.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i708) #11
  %409 = call ptr @memset(ptr %fcomp.i708, i32 255, i32 60)
  %comp.i709 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i708, i32 0, i32 1
  %410 = ptrtoint ptr %comp.i709 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 0, ptr %comp.i709, align 4
  %wait.i.i710 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i708, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i710, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i711 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i712 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i711) #11
  %ablk.i713 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 9
  %pcifn_cfg.i = getelementptr inbounds %struct.bfa_bsg_pcifn_cfg_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i714 = call i32 @bfa_ablk_query(ptr noundef %ablk.i713, ptr noundef %pcifn_cfg.i, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i708) #11
  %411 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %call5.i714, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i711, i32 noundef %call2.i712) #11
  %412 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %cmp8.not.i715 = icmp eq i32 %413, 0
  br i1 %cmp8.not.i715, label %if.end.i716, label %sw.bb89.i.bfad_iocmd_ioc_get_pcifn_cfg.exit_crit_edge

sw.bb89.i.bfad_iocmd_ioc_get_pcifn_cfg.exit_crit_edge: ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ioc_get_pcifn_cfg.exit

if.end.i716:                                      ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i709) #11
  %414 = ptrtoint ptr %fcomp.i708 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %fcomp.i708, align 4
  %416 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %415, ptr %call9.i.i, align 128
  br label %bfad_iocmd_ioc_get_pcifn_cfg.exit

bfad_iocmd_ioc_get_pcifn_cfg.exit:                ; preds = %if.end.i716, %sw.bb89.i.bfad_iocmd_ioc_get_pcifn_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i708) #11
  br label %if.end14

sw.bb91.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i704 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i705 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i704) #11
  %ioc.i706 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3
  %call5.i707 = tail call i32 @bfa_ioc_fwsig_invalidate(ptr noundef %ioc.i706) #11
  %417 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %call5.i707, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i704, i32 noundef %call2.i705) #11
  br label %if.end14

sw.bb93.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i692) #11
  %418 = call ptr @memset(ptr %fcomp.i692, i32 255, i32 60)
  %comp.i693 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i692, i32 0, i32 1
  %419 = ptrtoint ptr %comp.i693 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 0, ptr %comp.i693, align 4
  %wait.i.i694 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i692, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i694, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i695 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i696 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i695) #11
  %ablk.i697 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 9
  %pcifn_id.i698 = getelementptr inbounds %struct.bfa_bsg_pcifn_s, ptr %call9.i.i, i32 0, i32 2
  %port.i = getelementptr inbounds %struct.bfa_bsg_pcifn_s, ptr %call9.i.i, i32 0, i32 5
  %420 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %port.i, align 4
  %pcifn_class.i = getelementptr inbounds %struct.bfa_bsg_pcifn_s, ptr %call9.i.i, i32 0, i32 6
  %422 = ptrtoint ptr %pcifn_class.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %pcifn_class.i, align 16
  %bw_min.i699 = getelementptr inbounds %struct.bfa_bsg_pcifn_s, ptr %call9.i.i, i32 0, i32 3
  %424 = ptrtoint ptr %bw_min.i699 to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %bw_min.i699, align 8
  %bw_max.i700 = getelementptr inbounds %struct.bfa_bsg_pcifn_s, ptr %call9.i.i, i32 0, i32 4
  %426 = ptrtoint ptr %bw_max.i700 to i32
  call void @__asan_load2_noabort(i32 %426)
  %427 = load i16, ptr %bw_max.i700, align 2
  %call5.i701 = call i32 @bfa_ablk_pf_create(ptr noundef %ablk.i697, ptr noundef %pcifn_id.i698, i8 noundef zeroext %421, i32 noundef %423, i16 noundef zeroext %425, i16 noundef zeroext %427, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i692) #11
  %428 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %call5.i701, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i695, i32 noundef %call2.i696) #11
  %429 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %cmp8.not.i702 = icmp eq i32 %430, 0
  br i1 %cmp8.not.i702, label %if.end.i703, label %sw.bb93.i.bfad_iocmd_pcifn_create.exit_crit_edge

sw.bb93.i.bfad_iocmd_pcifn_create.exit_crit_edge: ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_pcifn_create.exit

if.end.i703:                                      ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i693) #11
  %431 = ptrtoint ptr %fcomp.i692 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %fcomp.i692, align 4
  %433 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %432, ptr %call9.i.i, align 128
  br label %bfad_iocmd_pcifn_create.exit

bfad_iocmd_pcifn_create.exit:                     ; preds = %if.end.i703, %sw.bb93.i.bfad_iocmd_pcifn_create.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i692) #11
  br label %if.end14

sw.bb95.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i681) #11
  %434 = call ptr @memset(ptr %fcomp.i681, i32 255, i32 60)
  %comp.i682 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i681, i32 0, i32 1
  %435 = ptrtoint ptr %comp.i682 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 0, ptr %comp.i682, align 4
  %wait.i.i683 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i681, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i683, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i684 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i685 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i684) #11
  %ablk.i686 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 9
  %pcifn_id.i687 = getelementptr inbounds %struct.bfa_bsg_pcifn_s, ptr %call9.i.i, i32 0, i32 2
  %436 = ptrtoint ptr %pcifn_id.i687 to i32
  call void @__asan_load2_noabort(i32 %436)
  %437 = load i16, ptr %pcifn_id.i687, align 2
  %conv5.i688 = zext i16 %437 to i32
  %call6.i689 = call i32 @bfa_ablk_pf_delete(ptr noundef %ablk.i686, i32 noundef %conv5.i688, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i681) #11
  %438 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %call6.i689, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i684, i32 noundef %call2.i685) #11
  %439 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %440)
  %cmp9.not.i690 = icmp eq i32 %440, 0
  br i1 %cmp9.not.i690, label %if.end.i691, label %sw.bb95.i.bfad_iocmd_pcifn_delete.exit_crit_edge

sw.bb95.i.bfad_iocmd_pcifn_delete.exit_crit_edge: ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_pcifn_delete.exit

if.end.i691:                                      ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i682) #11
  %441 = ptrtoint ptr %fcomp.i681 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %fcomp.i681, align 4
  %443 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %442, ptr %call9.i.i, align 128
  br label %bfad_iocmd_pcifn_delete.exit

bfad_iocmd_pcifn_delete.exit:                     ; preds = %if.end.i691, %sw.bb95.i.bfad_iocmd_pcifn_delete.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i681) #11
  br label %if.end14

sw.bb97.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i668) #11
  %444 = call ptr @memset(ptr %fcomp.i668, i32 255, i32 60)
  %comp.i669 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i668, i32 0, i32 1
  %445 = ptrtoint ptr %comp.i669 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 0, ptr %comp.i669, align 4
  %wait.i.i670 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i668, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i670, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i671 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i672 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i671) #11
  %ablk.i673 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 9
  %pcifn_id.i = getelementptr inbounds %struct.bfa_bsg_pcifn_s, ptr %call9.i.i, i32 0, i32 2
  %446 = ptrtoint ptr %pcifn_id.i to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %pcifn_id.i, align 2
  %conv5.i674 = zext i16 %447 to i32
  %bw_min.i = getelementptr inbounds %struct.bfa_bsg_pcifn_s, ptr %call9.i.i, i32 0, i32 3
  %448 = ptrtoint ptr %bw_min.i to i32
  call void @__asan_load2_noabort(i32 %448)
  %449 = load i16, ptr %bw_min.i, align 8
  %bw_max.i = getelementptr inbounds %struct.bfa_bsg_pcifn_s, ptr %call9.i.i, i32 0, i32 4
  %450 = ptrtoint ptr %bw_max.i to i32
  call void @__asan_load2_noabort(i32 %450)
  %451 = load i16, ptr %bw_max.i, align 2
  %call6.i675 = call i32 @bfa_ablk_pf_update(ptr noundef %ablk.i673, i32 noundef %conv5.i674, i16 noundef zeroext %449, i16 noundef zeroext %451, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i668) #11
  %452 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %call6.i675, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i671, i32 noundef %call2.i672) #11
  %trcmod.i676 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %453 = ptrtoint ptr %trcmod.i676 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %trcmod.i676, align 8
  %455 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %call9.i.i, align 128
  %conv9.i677 = zext i32 %456 to i64
  call void @__bfa_trc(ptr noundef %454, i32 noundef 3075, i32 noundef 1269, i64 noundef %conv9.i677) #11
  %457 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %458)
  %cmp11.not.i678 = icmp eq i32 %458, 0
  br i1 %cmp11.not.i678, label %if.end.i680, label %sw.bb97.i.bfad_iocmd_pcifn_bw.exit_crit_edge

sw.bb97.i.bfad_iocmd_pcifn_bw.exit_crit_edge:     ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_pcifn_bw.exit

if.end.i680:                                      ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i669) #11
  %459 = ptrtoint ptr %fcomp.i668 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %fcomp.i668, align 4
  %461 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %460, ptr %call9.i.i, align 128
  %462 = ptrtoint ptr %trcmod.i676 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %trcmod.i676, align 8
  %conv18.i679 = zext i32 %460 to i64
  call void @__bfa_trc(ptr noundef %463, i32 noundef 3075, i32 noundef 1275, i64 noundef %conv18.i679) #11
  br label %bfad_iocmd_pcifn_bw.exit

bfad_iocmd_pcifn_bw.exit:                         ; preds = %if.end.i680, %sw.bb97.i.bfad_iocmd_pcifn_bw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i668) #11
  br label %if.end14

sw.bb99.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i654) #11
  %464 = call ptr @memset(ptr %fcomp.i654, i32 255, i32 60)
  %comp.i655 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i654, i32 0, i32 1
  %465 = ptrtoint ptr %comp.i655 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 0, ptr %comp.i655, align 4
  %wait.i.i656 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i654, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i656, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i657 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i658 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i657) #11
  %ablk.i659 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 9
  %cfg.i660 = getelementptr inbounds %struct.bfa_bsg_adapter_cfg_mode_s, ptr %call9.i.i, i32 0, i32 3
  %mode.i661 = getelementptr inbounds %struct.bfa_bsg_adapter_cfg_mode_s, ptr %call9.i.i, i32 0, i32 3, i32 2
  %466 = ptrtoint ptr %mode.i661 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %mode.i661, align 4
  %468 = ptrtoint ptr %cfg.i660 to i32
  call void @__asan_load2_noabort(i32 %468)
  %469 = load i16, ptr %cfg.i660, align 8
  %conv6.i662 = zext i16 %469 to i32
  %max_vf.i663 = getelementptr inbounds %struct.bfa_bsg_adapter_cfg_mode_s, ptr %call9.i.i, i32 0, i32 3, i32 1
  %470 = ptrtoint ptr %max_vf.i663 to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %max_vf.i663, align 2
  %conv8.i664 = zext i16 %471 to i32
  %call9.i665 = call i32 @bfa_ablk_adapter_config(ptr noundef %ablk.i659, i32 noundef %467, i32 noundef %conv6.i662, i32 noundef %conv8.i664, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i654) #11
  %472 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %call9.i665, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i657, i32 noundef %call2.i658) #11
  %473 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %474)
  %cmp12.not.i666 = icmp eq i32 %474, 0
  br i1 %cmp12.not.i666, label %if.end.i667, label %sw.bb99.i.bfad_iocmd_adapter_cfg_mode.exit_crit_edge

sw.bb99.i.bfad_iocmd_adapter_cfg_mode.exit_crit_edge: ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_adapter_cfg_mode.exit

if.end.i667:                                      ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i655) #11
  %475 = ptrtoint ptr %fcomp.i654 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %fcomp.i654, align 4
  %477 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 %476, ptr %call9.i.i, align 128
  br label %bfad_iocmd_adapter_cfg_mode.exit

bfad_iocmd_adapter_cfg_mode.exit:                 ; preds = %if.end.i667, %sw.bb99.i.bfad_iocmd_adapter_cfg_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i654) #11
  br label %if.end14

sw.bb101.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i642) #11
  %478 = call ptr @memset(ptr %fcomp.i642, i32 255, i32 60)
  %comp.i643 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i642, i32 0, i32 1
  %479 = ptrtoint ptr %comp.i643 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 0, ptr %comp.i643, align 4
  %wait.i.i644 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i642, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i644, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i645 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i646 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i645) #11
  %ablk.i647 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 9
  %instance.i648 = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, ptr %call9.i.i, i32 0, i32 2
  %480 = ptrtoint ptr %instance.i648 to i32
  call void @__asan_load2_noabort(i32 %480)
  %481 = load i16, ptr %instance.i648, align 2
  %conv5.i649 = zext i16 %481 to i32
  %cfg.i650 = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, ptr %call9.i.i, i32 0, i32 3
  %mode.i = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, ptr %call9.i.i, i32 0, i32 3, i32 2
  %482 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %mode.i, align 4
  %484 = ptrtoint ptr %cfg.i650 to i32
  call void @__asan_load2_noabort(i32 %484)
  %485 = load i16, ptr %cfg.i650, align 8
  %conv7.i651 = zext i16 %485 to i32
  %max_vf.i = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, ptr %call9.i.i, i32 0, i32 3, i32 1
  %486 = ptrtoint ptr %max_vf.i to i32
  call void @__asan_load2_noabort(i32 %486)
  %487 = load i16, ptr %max_vf.i, align 2
  %conv9.i652 = zext i16 %487 to i32
  %call10.i = call i32 @bfa_ablk_port_config(ptr noundef %ablk.i647, i32 noundef %conv5.i649, i32 noundef %483, i32 noundef %conv7.i651, i32 noundef %conv9.i652, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i642) #11
  %488 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %call10.i, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i645, i32 noundef %call2.i646) #11
  %489 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %490)
  %cmp13.not.i = icmp eq i32 %490, 0
  br i1 %cmp13.not.i, label %if.end.i653, label %sw.bb101.i.bfad_iocmd_port_cfg_mode.exit_crit_edge

sw.bb101.i.bfad_iocmd_port_cfg_mode.exit_crit_edge: ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_port_cfg_mode.exit

if.end.i653:                                      ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i643) #11
  %491 = ptrtoint ptr %fcomp.i642 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %fcomp.i642, align 4
  %493 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %492, ptr %call9.i.i, align 128
  br label %bfad_iocmd_port_cfg_mode.exit

bfad_iocmd_port_cfg_mode.exit:                    ; preds = %if.end.i653, %sw.bb101.i.bfad_iocmd_port_cfg_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i642) #11
  br label %if.end14

sw.bb103.i:                                       ; preds = %if.end.sw.bb103.i_crit_edge, %if.end.sw.bb103.i_crit_edge1192
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i632) #11
  %494 = call ptr @memset(ptr %fcomp.i632, i32 255, i32 60)
  %comp.i633 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i632, i32 0, i32 1
  %495 = ptrtoint ptr %comp.i633 to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 0, ptr %comp.i633, align 4
  %wait.i.i634 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i632, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i634, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i635 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i636 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i635) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %5)
  %cmp5.i = icmp eq i32 %5, 60
  %ablk.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 9
  br i1 %cmp5.i, label %if.then.i638, label %if.else.i639

if.then.i638:                                     ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i637 = call i32 @bfa_ablk_optrom_en(ptr noundef %ablk.i, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i632) #11
  br label %if.end.i641

if.else.i639:                                     ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = call i32 @bfa_ablk_optrom_dis(ptr noundef %ablk.i, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i632) #11
  br label %if.end.i641

if.end.i641:                                      ; preds = %if.else.i639, %if.then.i638
  %storemerge.i640 = phi i32 [ %call11.i, %if.else.i639 ], [ %call7.i637, %if.then.i638 ]
  %496 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 %storemerge.i640, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i635, i32 noundef %call2.i636) #11
  %497 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %498)
  %cmp15.not.i = icmp eq i32 %498, 0
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end.i641.bfad_iocmd_ablk_optrom.exit_crit_edge

if.end.i641.bfad_iocmd_ablk_optrom.exit_crit_edge: ; preds = %if.end.i641
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ablk_optrom.exit

if.end18.i:                                       ; preds = %if.end.i641
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i633) #11
  %499 = ptrtoint ptr %fcomp.i632 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %fcomp.i632, align 4
  %501 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 %500, ptr %call9.i.i, align 128
  br label %bfad_iocmd_ablk_optrom.exit

bfad_iocmd_ablk_optrom.exit:                      ; preds = %if.end18.i, %if.end.i641.bfad_iocmd_ablk_optrom.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i632) #11
  br label %if.end14

sw.bb105.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i623) #11
  %502 = call ptr @memset(ptr %fcomp.i623, i32 255, i32 60)
  %comp.i624 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i623, i32 0, i32 1
  %503 = ptrtoint ptr %comp.i624 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 0, ptr %comp.i624, align 4
  %wait.i.i625 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i623, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i625, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %504 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 0, ptr %call9.i.i, align 128
  %bfad_lock.i626 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i627 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i626) #11
  %bfa.i628 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %faa_attr.i = getelementptr inbounds %struct.bfa_bsg_faa_attr_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i629 = call i32 @bfa_faa_query(ptr noundef %bfa.i628, ptr noundef %faa_attr.i, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i623) #11
  %505 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %call5.i629, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i626, i32 noundef %call2.i627) #11
  %506 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %507)
  %cmp9.not.i630 = icmp eq i32 %507, 0
  br i1 %cmp9.not.i630, label %if.end.i631, label %sw.bb105.i.bfad_iocmd_faa_query.exit_crit_edge

sw.bb105.i.bfad_iocmd_faa_query.exit_crit_edge:   ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_faa_query.exit

if.end.i631:                                      ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i624) #11
  %508 = ptrtoint ptr %fcomp.i623 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %fcomp.i623, align 4
  %510 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 %509, ptr %call9.i.i, align 128
  br label %bfad_iocmd_faa_query.exit

bfad_iocmd_faa_query.exit:                        ; preds = %if.end.i631, %sw.bb105.i.bfad_iocmd_faa_query.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i623) #11
  br label %if.end14

sw.bb107.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cee_comp.i608) #11
  %511 = getelementptr inbounds i8, ptr %cee_comp.i608, i32 8
  %512 = call ptr @memset(ptr %511, i32 255, i32 52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 856, i32 %29)
  %cmp.not.i609 = icmp eq i32 %29, 856
  br i1 %cmp.not.i609, label %if.end.i619, label %if.then.i610

if.then.i610:                                     ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_pc() #13
  %513 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 70, ptr %call9.i.i, align 128
  br label %bfad_iocmd_cee_attr.exit

if.end.i619:                                      ; preds = %sw.bb107.i
  %add.ptr.i611 = getelementptr i8, ptr %call9.i.i, i32 24
  %514 = ptrtoint ptr %cee_comp.i608 to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 0, ptr %cee_comp.i608, align 4
  %comp.i612 = getelementptr inbounds %struct.bfad_hal_comp, ptr %cee_comp.i608, i32 0, i32 1
  %515 = ptrtoint ptr %comp.i612 to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 0, ptr %comp.i612, align 4
  call void @__init_swait_queue_head(ptr noundef %511, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  call void @mutex_lock_nested(ptr noundef nonnull @bfad_mutex, i32 noundef 0) #11
  %bfad_lock.i614 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call5.i615 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i614) #11
  %cee.i616 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 10
  %call8.i617 = call i32 @bfa_cee_get_attr(ptr noundef %cee.i616, ptr noundef %add.ptr.i611, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %cee_comp.i608) #11
  %516 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %516)
  store i32 %call8.i617, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i614, i32 noundef %call5.i615) #11
  %517 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %518)
  %cmp12.not.i618 = icmp eq i32 %518, 0
  br i1 %cmp12.not.i618, label %if.end15.i622, label %if.then14.i621

if.then14.i621:                                   ; preds = %if.end.i619
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #11
  %trcmod.i620 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %519 = ptrtoint ptr %trcmod.i620 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %trcmod.i620, align 8
  call void @__bfa_trc(ptr noundef %520, i32 noundef 3075, i32 noundef 1403, i64 noundef 21845) #11
  br label %bfad_iocmd_cee_attr.exit

if.end15.i622:                                    ; preds = %if.end.i619
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i612) #11
  call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #11
  br label %bfad_iocmd_cee_attr.exit

bfad_iocmd_cee_attr.exit:                         ; preds = %if.end15.i622, %if.then14.i621, %if.then.i610
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cee_comp.i608) #11
  br label %if.end14

sw.bb109.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cee_comp.i) #11
  %521 = getelementptr inbounds i8, ptr %cee_comp.i, i32 8
  %522 = call ptr @memset(ptr %521, i32 255, i32 52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %29)
  %cmp.not.i595 = icmp eq i32 %29, 96
  br i1 %cmp.not.i595, label %if.end.i605, label %if.then.i596

if.then.i596:                                     ; preds = %sw.bb109.i
  call void @__sanitizer_cov_trace_pc() #13
  %523 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 70, ptr %call9.i.i, align 128
  br label %bfad_iocmd_cee_get_stats.exit

if.end.i605:                                      ; preds = %sw.bb109.i
  %add.ptr.i597 = getelementptr i8, ptr %call9.i.i, i32 24
  %524 = ptrtoint ptr %cee_comp.i to i32
  call void @__asan_store4_noabort(i32 %524)
  store i32 0, ptr %cee_comp.i, align 4
  %comp.i598 = getelementptr inbounds %struct.bfad_hal_comp, ptr %cee_comp.i, i32 0, i32 1
  %525 = ptrtoint ptr %comp.i598 to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 0, ptr %comp.i598, align 4
  call void @__init_swait_queue_head(ptr noundef %521, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  call void @mutex_lock_nested(ptr noundef nonnull @bfad_mutex, i32 noundef 0) #11
  %bfad_lock.i600 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call5.i601 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i600) #11
  %cee.i602 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 10
  %call8.i603 = call i32 @bfa_cee_get_stats(ptr noundef %cee.i602, ptr noundef %add.ptr.i597, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %cee_comp.i) #11
  %526 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %call8.i603, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i600, i32 noundef %call5.i601) #11
  %527 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %528)
  %cmp12.not.i604 = icmp eq i32 %528, 0
  br i1 %cmp12.not.i604, label %if.end15.i607, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i605
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #11
  %trcmod.i606 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %529 = ptrtoint ptr %trcmod.i606 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %trcmod.i606, align 8
  call void @__bfa_trc(ptr noundef %530, i32 noundef 3075, i32 noundef 1440, i64 noundef 21845) #11
  br label %bfad_iocmd_cee_get_stats.exit

if.end15.i607:                                    ; preds = %if.end.i605
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i598) #11
  call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #11
  br label %bfad_iocmd_cee_get_stats.exit

bfad_iocmd_cee_get_stats.exit:                    ; preds = %if.end15.i607, %if.then14.i, %if.then.i596
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cee_comp.i) #11
  br label %if.end14

sw.bb111.i:                                       ; preds = %if.end
  %bfad_lock.i588 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i589 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i588) #11
  %cee.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 10
  %call5.i590 = tail call i32 @bfa_cee_reset_stats(ptr noundef %cee.i, ptr noundef null, ptr noundef null) #11
  %531 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 %call5.i590, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i588, i32 noundef %call2.i589) #11
  %532 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %533)
  %cmp8.not.i591 = icmp eq i32 %533, 0
  br i1 %cmp8.not.i591, label %sw.bb111.i.if.end14_crit_edge, label %if.then.i593

sw.bb111.i.if.end14_crit_edge:                    ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then.i593:                                     ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i592 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %534 = ptrtoint ptr %trcmod.i592 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %trcmod.i592, align 8
  tail call void @__bfa_trc(ptr noundef %535, i32 noundef 3075, i32 noundef 1459, i64 noundef 21845) #11
  br label %if.end14

sw.bb113.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i577) #11
  %536 = call ptr @memset(ptr %fcomp.i577, i32 255, i32 60)
  %comp.i578 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i577, i32 0, i32 1
  %537 = ptrtoint ptr %comp.i578 to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 0, ptr %comp.i578, align 4
  %wait.i.i579 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i577, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i579, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i580 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i581 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i580) #11
  %sfp.i582 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 11
  %media.i = getelementptr inbounds %struct.bfa_bsg_sfp_media_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i583 = call i32 @bfa_sfp_media(ptr noundef %sfp.i582, ptr noundef %media.i, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i577) #11
  %538 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 %call5.i583, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i580, i32 noundef %call2.i581) #11
  %trcmod.i584 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %539 = ptrtoint ptr %trcmod.i584 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %trcmod.i584, align 8
  %541 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %call9.i.i, align 128
  %conv8.i585 = zext i32 %542 to i64
  call void @__bfa_trc(ptr noundef %540, i32 noundef 3075, i32 noundef 1475, i64 noundef %conv8.i585) #11
  %543 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %544)
  %cmp10.not.i586 = icmp eq i32 %544, 159
  br i1 %cmp10.not.i586, label %if.end.i587, label %sw.bb113.i.bfad_iocmd_sfp_media.exit_crit_edge

sw.bb113.i.bfad_iocmd_sfp_media.exit_crit_edge:   ; preds = %sw.bb113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_sfp_media.exit

if.end.i587:                                      ; preds = %sw.bb113.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i578) #11
  %545 = ptrtoint ptr %fcomp.i577 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %fcomp.i577, align 4
  %547 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 %546, ptr %call9.i.i, align 128
  br label %bfad_iocmd_sfp_media.exit

bfad_iocmd_sfp_media.exit:                        ; preds = %if.end.i587, %sw.bb113.i.bfad_iocmd_sfp_media.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i577) #11
  br label %if.end14

sw.bb115.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i565) #11
  %548 = call ptr @memset(ptr %fcomp.i565, i32 255, i32 60)
  %comp.i566 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i565, i32 0, i32 1
  %549 = ptrtoint ptr %comp.i566 to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 0, ptr %comp.i566, align 4
  %wait.i.i567 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i565, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i567, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i568 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i569 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i568) #11
  %sfp.i570 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 11
  %speed.i571 = getelementptr inbounds %struct.bfa_bsg_sfp_speed_s, ptr %call9.i.i, i32 0, i32 3
  %550 = ptrtoint ptr %speed.i571 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %speed.i571, align 8
  %call5.i572 = call i32 @bfa_sfp_speed(ptr noundef %sfp.i570, i32 noundef %551, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i565) #11
  %552 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 %call5.i572, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i568, i32 noundef %call2.i569) #11
  %trcmod.i573 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %553 = ptrtoint ptr %trcmod.i573 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %trcmod.i573, align 8
  %555 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %call9.i.i, align 128
  %conv8.i574 = zext i32 %556 to i64
  call void @__bfa_trc(ptr noundef %554, i32 noundef 3075, i32 noundef 1497, i64 noundef %conv8.i574) #11
  %557 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %558)
  %cmp10.not.i575 = icmp eq i32 %558, 159
  br i1 %cmp10.not.i575, label %if.end.i576, label %sw.bb115.i.bfad_iocmd_sfp_speed.exit_crit_edge

sw.bb115.i.bfad_iocmd_sfp_speed.exit_crit_edge:   ; preds = %sw.bb115.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_sfp_speed.exit

if.end.i576:                                      ; preds = %sw.bb115.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i566) #11
  %559 = ptrtoint ptr %fcomp.i565 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %fcomp.i565, align 4
  %561 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 %560, ptr %call9.i.i, align 128
  br label %bfad_iocmd_sfp_speed.exit

bfad_iocmd_sfp_speed.exit:                        ; preds = %if.end.i576, %sw.bb115.i.bfad_iocmd_sfp_speed.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i565) #11
  br label %if.end14

sw.bb117.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i555) #11
  %562 = call ptr @memset(ptr %fcomp.i555, i32 255, i32 60)
  %comp.i556 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i555, i32 0, i32 1
  %563 = ptrtoint ptr %comp.i556 to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 0, ptr %comp.i556, align 4
  %wait.i.i557 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i555, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i557, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i558 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i559 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i558) #11
  %flash.i560 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 12
  %attr.i561 = getelementptr inbounds %struct.bfa_bsg_flash_attr_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i562 = call i32 @bfa_flash_get_attr(ptr noundef %flash.i560, ptr noundef %attr.i561, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i555) #11
  %564 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %564)
  store i32 %call5.i562, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i558, i32 noundef %call2.i559) #11
  %565 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %566)
  %cmp8.not.i563 = icmp eq i32 %566, 0
  br i1 %cmp8.not.i563, label %if.end.i564, label %sw.bb117.i.bfad_iocmd_flash_get_attr.exit_crit_edge

sw.bb117.i.bfad_iocmd_flash_get_attr.exit_crit_edge: ; preds = %sw.bb117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_flash_get_attr.exit

if.end.i564:                                      ; preds = %sw.bb117.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i556) #11
  %567 = ptrtoint ptr %fcomp.i555 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %fcomp.i555, align 4
  %569 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 %568, ptr %call9.i.i, align 128
  br label %bfad_iocmd_flash_get_attr.exit

bfad_iocmd_flash_get_attr.exit:                   ; preds = %if.end.i564, %sw.bb117.i.bfad_iocmd_flash_get_attr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i555) #11
  br label %if.end14

sw.bb119.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i544) #11
  %570 = call ptr @memset(ptr %fcomp.i544, i32 255, i32 60)
  %comp.i545 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i544, i32 0, i32 1
  %571 = ptrtoint ptr %comp.i545 to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 0, ptr %comp.i545, align 4
  %wait.i.i546 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i544, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i546, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i547 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i548 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i547) #11
  %flash.i549 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 12
  %type.i550 = getelementptr inbounds %struct.bfa_bsg_flash_s, ptr %call9.i.i, i32 0, i32 4
  %572 = ptrtoint ptr %type.i550 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %type.i550, align 8
  %instance.i551 = getelementptr inbounds %struct.bfa_bsg_flash_s, ptr %call9.i.i, i32 0, i32 2
  %574 = ptrtoint ptr %instance.i551 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %instance.i551, align 2
  %call5.i552 = call i32 @bfa_flash_erase_part(ptr noundef %flash.i549, i32 noundef %573, i8 noundef zeroext %575, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i544) #11
  %576 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %576)
  store i32 %call5.i552, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i547, i32 noundef %call2.i548) #11
  %577 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %578)
  %cmp8.not.i553 = icmp eq i32 %578, 0
  br i1 %cmp8.not.i553, label %if.end.i554, label %sw.bb119.i.bfad_iocmd_flash_erase_part.exit_crit_edge

sw.bb119.i.bfad_iocmd_flash_erase_part.exit_crit_edge: ; preds = %sw.bb119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_flash_erase_part.exit

if.end.i554:                                      ; preds = %sw.bb119.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i545) #11
  %579 = ptrtoint ptr %fcomp.i544 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %fcomp.i544, align 4
  %581 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 %580, ptr %call9.i.i, align 128
  br label %bfad_iocmd_flash_erase_part.exit

bfad_iocmd_flash_erase_part.exit:                 ; preds = %if.end.i554, %sw.bb119.i.bfad_iocmd_flash_erase_part.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i544) #11
  br label %if.end14

sw.bb121.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i526) #11
  %582 = call ptr @memset(ptr %fcomp.i526, i32 255, i32 60)
  %bufsz.i527 = getelementptr inbounds %struct.bfa_bsg_flash_s, ptr %call9.i.i, i32 0, i32 5
  %583 = ptrtoint ptr %bufsz.i527 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %bufsz.i527, align 4
  %add.i528 = add i32 %584, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i528, i32 %29)
  %cmp.not.i529 = icmp eq i32 %add.i528, %29
  br i1 %cmp.not.i529, label %if.end.i540, label %sw.bb121.i.cleanup.sink.split.i543_crit_edge

sw.bb121.i.cleanup.sink.split.i543_crit_edge:     ; preds = %sw.bb121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i543

if.end.i540:                                      ; preds = %sw.bb121.i
  %add.ptr.i530 = getelementptr i8, ptr %call9.i.i, i32 24
  %comp.i531 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i526, i32 0, i32 1
  %585 = ptrtoint ptr %comp.i531 to i32
  call void @__asan_store4_noabort(i32 %585)
  store i32 0, ptr %comp.i531, align 4
  %wait.i.i532 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i526, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i532, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i533 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call4.i534 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i533) #11
  %flash.i535 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 12
  %type.i536 = getelementptr inbounds %struct.bfa_bsg_flash_s, ptr %call9.i.i, i32 0, i32 4
  %586 = ptrtoint ptr %type.i536 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %type.i536, align 8
  %instance.i537 = getelementptr inbounds %struct.bfa_bsg_flash_s, ptr %call9.i.i, i32 0, i32 2
  %588 = ptrtoint ptr %instance.i537 to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %instance.i537, align 2
  %590 = ptrtoint ptr %bufsz.i527 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %bufsz.i527, align 4
  %call8.i538 = call i32 @bfa_flash_update_part(ptr noundef %flash.i535, i32 noundef %587, i8 noundef zeroext %589, ptr noundef %add.ptr.i530, i32 noundef %591, i32 noundef 0, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i526) #11
  %592 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %592)
  store i32 %call8.i538, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i533, i32 noundef %call4.i534) #11
  %593 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %594)
  %cmp12.not.i539 = icmp eq i32 %594, 0
  br i1 %cmp12.not.i539, label %if.end15.i541, label %if.end.i540.bfad_iocmd_flash_update_part.exit_crit_edge

if.end.i540.bfad_iocmd_flash_update_part.exit_crit_edge: ; preds = %if.end.i540
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_flash_update_part.exit

if.end15.i541:                                    ; preds = %if.end.i540
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i531) #11
  %595 = ptrtoint ptr %fcomp.i526 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %fcomp.i526, align 4
  br label %cleanup.sink.split.i543

cleanup.sink.split.i543:                          ; preds = %if.end15.i541, %sw.bb121.i.cleanup.sink.split.i543_crit_edge
  %.sink.i542 = phi i32 [ %596, %if.end15.i541 ], [ 70, %sw.bb121.i.cleanup.sink.split.i543_crit_edge ]
  %597 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %597)
  store i32 %.sink.i542, ptr %call9.i.i, align 128
  br label %bfad_iocmd_flash_update_part.exit

bfad_iocmd_flash_update_part.exit:                ; preds = %cleanup.sink.split.i543, %if.end.i540.bfad_iocmd_flash_update_part.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i526) #11
  br label %if.end14

sw.bb123.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i511) #11
  %598 = call ptr @memset(ptr %fcomp.i511, i32 255, i32 60)
  %bufsz.i512 = getelementptr inbounds %struct.bfa_bsg_flash_s, ptr %call9.i.i, i32 0, i32 5
  %599 = ptrtoint ptr %bufsz.i512 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %bufsz.i512, align 4
  %add.i513 = add i32 %600, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i513, i32 %29)
  %cmp.not.i514 = icmp eq i32 %add.i513, %29
  br i1 %cmp.not.i514, label %if.end.i523, label %sw.bb123.i.cleanup.sink.split.i525_crit_edge

sw.bb123.i.cleanup.sink.split.i525_crit_edge:     ; preds = %sw.bb123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i525

if.end.i523:                                      ; preds = %sw.bb123.i
  %add.ptr.i515 = getelementptr i8, ptr %call9.i.i, i32 24
  %comp.i516 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i511, i32 0, i32 1
  %601 = ptrtoint ptr %comp.i516 to i32
  call void @__asan_store4_noabort(i32 %601)
  store i32 0, ptr %comp.i516, align 4
  %wait.i.i517 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i511, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i517, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i518 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call4.i519 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i518) #11
  %flash.i520 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 12
  %type.i = getelementptr inbounds %struct.bfa_bsg_flash_s, ptr %call9.i.i, i32 0, i32 4
  %602 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %type.i, align 8
  %instance.i521 = getelementptr inbounds %struct.bfa_bsg_flash_s, ptr %call9.i.i, i32 0, i32 2
  %604 = ptrtoint ptr %instance.i521 to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %instance.i521, align 2
  %606 = ptrtoint ptr %bufsz.i512 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %bufsz.i512, align 4
  %call8.i522 = call i32 @bfa_flash_read_part(ptr noundef %flash.i520, i32 noundef %603, i8 noundef zeroext %605, ptr noundef %add.ptr.i515, i32 noundef %607, i32 noundef 0, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i511) #11
  %608 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %608)
  store i32 %call8.i522, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i518, i32 noundef %call4.i519) #11
  %609 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %610)
  %cmp12.not.i = icmp eq i32 %610, 0
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end.i523.bfad_iocmd_flash_read_part.exit_crit_edge

if.end.i523.bfad_iocmd_flash_read_part.exit_crit_edge: ; preds = %if.end.i523
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_flash_read_part.exit

if.end15.i:                                       ; preds = %if.end.i523
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i516) #11
  %611 = ptrtoint ptr %fcomp.i511 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %fcomp.i511, align 4
  br label %cleanup.sink.split.i525

cleanup.sink.split.i525:                          ; preds = %if.end15.i, %sw.bb123.i.cleanup.sink.split.i525_crit_edge
  %.sink.i524 = phi i32 [ %612, %if.end15.i ], [ 70, %sw.bb123.i.cleanup.sink.split.i525_crit_edge ]
  %613 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 %.sink.i524, ptr %call9.i.i, align 128
  br label %bfad_iocmd_flash_read_part.exit

bfad_iocmd_flash_read_part.exit:                  ; preds = %cleanup.sink.split.i525, %if.end.i523.bfad_iocmd_flash_read_part.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i511) #11
  br label %if.end14

sw.bb125.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i499) #11
  %614 = call ptr @memset(ptr %fcomp.i499, i32 255, i32 60)
  %comp.i500 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i499, i32 0, i32 1
  %615 = ptrtoint ptr %comp.i500 to i32
  call void @__asan_store4_noabort(i32 %615)
  store i32 0, ptr %comp.i500, align 4
  %wait.i.i501 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i499, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i501, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i502 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i503 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i502) #11
  %diag_mod.i504 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 13
  %result.i505 = getelementptr inbounds %struct.bfa_bsg_diag_get_temp_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i506 = call i32 @bfa_diag_tsensor_query(ptr noundef %diag_mod.i504, ptr noundef %result.i505, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i499) #11
  %616 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %616)
  store i32 %call5.i506, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i502, i32 noundef %call2.i503) #11
  %trcmod.i507 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %617 = ptrtoint ptr %trcmod.i507 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %trcmod.i507, align 8
  %619 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %call9.i.i, align 128
  %conv8.i508 = zext i32 %620 to i64
  call void @__bfa_trc(ptr noundef %618, i32 noundef 3075, i32 noundef 1624, i64 noundef %conv8.i508) #11
  %621 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %622)
  %cmp10.not.i509 = icmp eq i32 %622, 0
  br i1 %cmp10.not.i509, label %if.end.i510, label %sw.bb125.i.bfad_iocmd_diag_temp.exit_crit_edge

sw.bb125.i.bfad_iocmd_diag_temp.exit_crit_edge:   ; preds = %sw.bb125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_diag_temp.exit

if.end.i510:                                      ; preds = %sw.bb125.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i500) #11
  %623 = ptrtoint ptr %fcomp.i499 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %fcomp.i499, align 4
  %625 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %625)
  store i32 %624, ptr %call9.i.i, align 128
  br label %bfad_iocmd_diag_temp.exit

bfad_iocmd_diag_temp.exit:                        ; preds = %if.end.i510, %sw.bb125.i.bfad_iocmd_diag_temp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i499) #11
  br label %if.end14

sw.bb127.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i486) #11
  %626 = call ptr @memset(ptr %fcomp.i486, i32 255, i32 60)
  %comp.i487 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i486, i32 0, i32 1
  %627 = ptrtoint ptr %comp.i487 to i32
  call void @__asan_store4_noabort(i32 %627)
  store i32 0, ptr %comp.i487, align 4
  %wait.i.i488 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i486, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i488, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i489 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i490 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i489) #11
  %diag_mod.i491 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 13
  %memtest.i = getelementptr inbounds %struct.bfa_bsg_diag_memtest_s, ptr %call9.i.i, i32 0, i32 5
  %pat.i492 = getelementptr inbounds %struct.bfa_bsg_diag_memtest_s, ptr %call9.i.i, i32 0, i32 3
  %628 = ptrtoint ptr %pat.i492 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %pat.i492, align 4
  %result.i493 = getelementptr inbounds %struct.bfa_bsg_diag_memtest_s, ptr %call9.i.i, i32 0, i32 4
  %call5.i494 = call i32 @bfa_diag_memtest(ptr noundef %diag_mod.i491, ptr noundef %memtest.i, i32 noundef %629, ptr noundef %result.i493, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i486) #11
  %630 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %630)
  store i32 %call5.i494, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i489, i32 noundef %call2.i490) #11
  %trcmod.i495 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %631 = ptrtoint ptr %trcmod.i495 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %trcmod.i495, align 8
  %633 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %call9.i.i, align 128
  %conv8.i496 = zext i32 %634 to i64
  call void @__bfa_trc(ptr noundef %632, i32 noundef 3075, i32 noundef 1647, i64 noundef %conv8.i496) #11
  %635 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %636)
  %cmp10.not.i497 = icmp eq i32 %636, 0
  br i1 %cmp10.not.i497, label %if.end.i498, label %sw.bb127.i.bfad_iocmd_diag_memtest.exit_crit_edge

sw.bb127.i.bfad_iocmd_diag_memtest.exit_crit_edge: ; preds = %sw.bb127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_diag_memtest.exit

if.end.i498:                                      ; preds = %sw.bb127.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i487) #11
  %637 = ptrtoint ptr %fcomp.i486 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %fcomp.i486, align 4
  %639 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %639)
  store i32 %638, ptr %call9.i.i, align 128
  br label %bfad_iocmd_diag_memtest.exit

bfad_iocmd_diag_memtest.exit:                     ; preds = %if.end.i498, %sw.bb127.i.bfad_iocmd_diag_memtest.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i486) #11
  br label %if.end14

sw.bb129.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i471) #11
  %640 = call ptr @memset(ptr %fcomp.i471, i32 255, i32 60)
  %comp.i472 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i471, i32 0, i32 1
  %641 = ptrtoint ptr %comp.i472 to i32
  call void @__asan_store4_noabort(i32 %641)
  store i32 0, ptr %comp.i472, align 4
  %wait.i.i473 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i471, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i473, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i474 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i475 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i474) #11
  %bfa.i476 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %opmode.i = getelementptr inbounds %struct.bfa_bsg_diag_loopback_s, ptr %call9.i.i, i32 0, i32 3
  %642 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %opmode.i, align 8
  %speed.i477 = getelementptr inbounds %struct.bfa_bsg_diag_loopback_s, ptr %call9.i.i, i32 0, i32 4
  %644 = ptrtoint ptr %speed.i477 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %speed.i477, align 4
  %lpcnt.i478 = getelementptr inbounds %struct.bfa_bsg_diag_loopback_s, ptr %call9.i.i, i32 0, i32 5
  %646 = ptrtoint ptr %lpcnt.i478 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %lpcnt.i478, align 16
  %pat.i479 = getelementptr inbounds %struct.bfa_bsg_diag_loopback_s, ptr %call9.i.i, i32 0, i32 6
  %648 = ptrtoint ptr %pat.i479 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %pat.i479, align 4
  %result.i480 = getelementptr inbounds %struct.bfa_bsg_diag_loopback_s, ptr %call9.i.i, i32 0, i32 7
  %call5.i481 = call i32 @bfa_fcdiag_loopback(ptr noundef %bfa.i476, i32 noundef %643, i32 noundef %645, i32 noundef %647, i32 noundef %649, ptr noundef %result.i480, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i471) #11
  %650 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %650)
  store i32 %call5.i481, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i474, i32 noundef %call2.i475) #11
  %trcmod.i482 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %651 = ptrtoint ptr %trcmod.i482 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %trcmod.i482, align 8
  %653 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %call9.i.i, align 128
  %conv8.i483 = zext i32 %654 to i64
  call void @__bfa_trc(ptr noundef %652, i32 noundef 3075, i32 noundef 1670, i64 noundef %conv8.i483) #11
  %655 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %656)
  %cmp10.not.i484 = icmp eq i32 %656, 0
  br i1 %cmp10.not.i484, label %if.end.i485, label %sw.bb129.i.bfad_iocmd_diag_loopback.exit_crit_edge

sw.bb129.i.bfad_iocmd_diag_loopback.exit_crit_edge: ; preds = %sw.bb129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_diag_loopback.exit

if.end.i485:                                      ; preds = %sw.bb129.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i472) #11
  %657 = ptrtoint ptr %fcomp.i471 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %fcomp.i471, align 4
  %659 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %659)
  store i32 %658, ptr %call9.i.i, align 128
  br label %bfad_iocmd_diag_loopback.exit

bfad_iocmd_diag_loopback.exit:                    ; preds = %if.end.i485, %sw.bb129.i.bfad_iocmd_diag_loopback.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i471) #11
  br label %if.end14

sw.bb131.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i459) #11
  %660 = call ptr @memset(ptr %fcomp.i459, i32 255, i32 60)
  %comp.i460 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i459, i32 0, i32 1
  %661 = ptrtoint ptr %comp.i460 to i32
  call void @__asan_store4_noabort(i32 %661)
  store i32 0, ptr %comp.i460, align 4
  %wait.i.i461 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i459, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i461, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i462 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i463 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i462) #11
  %diag_mod.i464 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 13
  %cnt.i = getelementptr inbounds %struct.bfa_bsg_diag_fwping_s, ptr %call9.i.i, i32 0, i32 3
  %662 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %cnt.i, align 8
  %pattern.i = getelementptr inbounds %struct.bfa_bsg_diag_fwping_s, ptr %call9.i.i, i32 0, i32 4
  %664 = ptrtoint ptr %pattern.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %pattern.i, align 4
  %result.i465 = getelementptr inbounds %struct.bfa_bsg_diag_fwping_s, ptr %call9.i.i, i32 0, i32 5
  %call5.i466 = call i32 @bfa_diag_fwping(ptr noundef %diag_mod.i464, i32 noundef %663, i32 noundef %665, ptr noundef %result.i465, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i459) #11
  %666 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %666)
  store i32 %call5.i466, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i462, i32 noundef %call2.i463) #11
  %trcmod.i467 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %667 = ptrtoint ptr %trcmod.i467 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %trcmod.i467, align 8
  %669 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load i32, ptr %call9.i.i, align 128
  %conv8.i468 = zext i32 %670 to i64
  call void @__bfa_trc(ptr noundef %668, i32 noundef 3075, i32 noundef 1693, i64 noundef %conv8.i468) #11
  %671 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %672)
  %cmp10.not.i469 = icmp eq i32 %672, 0
  br i1 %cmp10.not.i469, label %if.end.i470, label %sw.bb131.i.bfad_iocmd_diag_fwping.exit_crit_edge

sw.bb131.i.bfad_iocmd_diag_fwping.exit_crit_edge: ; preds = %sw.bb131.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_diag_fwping.exit

if.end.i470:                                      ; preds = %sw.bb131.i
  call void @__sanitizer_cov_trace_pc() #13
  %673 = ptrtoint ptr %trcmod.i467 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %trcmod.i467, align 8
  call void @__bfa_trc(ptr noundef %674, i32 noundef 3075, i32 noundef 1696, i64 noundef 489329) #11
  call void @wait_for_completion(ptr noundef %comp.i460) #11
  %675 = ptrtoint ptr %fcomp.i459 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %fcomp.i459, align 4
  %677 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %677)
  store i32 %676, ptr %call9.i.i, align 128
  br label %bfad_iocmd_diag_fwping.exit

bfad_iocmd_diag_fwping.exit:                      ; preds = %if.end.i470, %sw.bb131.i.bfad_iocmd_diag_fwping.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i459) #11
  br label %if.end14

sw.bb133.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i449) #11
  %678 = call ptr @memset(ptr %fcomp.i449, i32 255, i32 60)
  %comp.i450 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i449, i32 0, i32 1
  %679 = ptrtoint ptr %comp.i450 to i32
  call void @__asan_store4_noabort(i32 %679)
  store i32 0, ptr %comp.i450, align 4
  %wait.i.i451 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i449, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i451, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i452 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i453 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i452) #11
  %bfa.i454 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %force.i = getelementptr inbounds %struct.bfa_bsg_diag_qtest_s, ptr %call9.i.i, i32 0, i32 3
  %680 = ptrtoint ptr %force.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %force.i, align 8
  %queue.i = getelementptr inbounds %struct.bfa_bsg_diag_qtest_s, ptr %call9.i.i, i32 0, i32 4
  %682 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %queue.i, align 4
  %result.i455 = getelementptr inbounds %struct.bfa_bsg_diag_qtest_s, ptr %call9.i.i, i32 0, i32 5
  %call5.i456 = call i32 @bfa_fcdiag_queuetest(ptr noundef %bfa.i454, i32 noundef %681, i32 noundef %683, ptr noundef %result.i455, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i449) #11
  %684 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %684)
  store i32 %call5.i456, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i452, i32 noundef %call2.i453) #11
  %685 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %686)
  %cmp8.not.i457 = icmp eq i32 %686, 0
  br i1 %cmp8.not.i457, label %if.end.i458, label %sw.bb133.i.bfad_iocmd_diag_queuetest.exit_crit_edge

sw.bb133.i.bfad_iocmd_diag_queuetest.exit_crit_edge: ; preds = %sw.bb133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_diag_queuetest.exit

if.end.i458:                                      ; preds = %sw.bb133.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i450) #11
  %687 = ptrtoint ptr %fcomp.i449 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %fcomp.i449, align 4
  %689 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %689)
  store i32 %688, ptr %call9.i.i, align 128
  br label %bfad_iocmd_diag_queuetest.exit

bfad_iocmd_diag_queuetest.exit:                   ; preds = %if.end.i458, %sw.bb133.i.bfad_iocmd_diag_queuetest.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i449) #11
  br label %if.end14

sw.bb135.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i440) #11
  %690 = call ptr @memset(ptr %fcomp.i440, i32 255, i32 60)
  %comp.i441 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i440, i32 0, i32 1
  %691 = ptrtoint ptr %comp.i441 to i32
  call void @__asan_store4_noabort(i32 %691)
  store i32 0, ptr %comp.i441, align 4
  %wait.i.i442 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i440, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i442, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i443 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i444 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i443) #11
  %sfp.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 11
  %sfp5.i = getelementptr inbounds %struct.bfa_bsg_sfp_show_s, ptr %call9.i.i, i32 0, i32 3
  %call6.i445 = call i32 @bfa_sfp_show(ptr noundef %sfp.i, ptr noundef %sfp5.i, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i440) #11
  %692 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %692)
  store i32 %call6.i445, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i443, i32 noundef %call2.i444) #11
  %trcmod.i446 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %693 = ptrtoint ptr %trcmod.i446 to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %trcmod.i446, align 8
  %695 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %call9.i.i, align 128
  %conv9.i = zext i32 %696 to i64
  call void @__bfa_trc(ptr noundef %694, i32 noundef 3075, i32 noundef 1737, i64 noundef %conv9.i) #11
  %697 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %698)
  %cmp11.not.i = icmp eq i32 %698, 0
  br i1 %cmp11.not.i, label %if.end.i448, label %sw.bb135.i.bfad_iocmd_diag_sfp.exit_crit_edge

sw.bb135.i.bfad_iocmd_diag_sfp.exit_crit_edge:    ; preds = %sw.bb135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_diag_sfp.exit

if.end.i448:                                      ; preds = %sw.bb135.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i441) #11
  %699 = ptrtoint ptr %fcomp.i440 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %fcomp.i440, align 4
  %701 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %701)
  store i32 %700, ptr %call9.i.i, align 128
  %702 = ptrtoint ptr %trcmod.i446 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %trcmod.i446, align 8
  %conv18.i447 = zext i32 %700 to i64
  call void @__bfa_trc(ptr noundef %703, i32 noundef 3075, i32 noundef 1742, i64 noundef %conv18.i447) #11
  br label %bfad_iocmd_diag_sfp.exit

bfad_iocmd_diag_sfp.exit:                         ; preds = %if.end.i448, %sw.bb135.i.bfad_iocmd_diag_sfp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i440) #11
  br label %if.end14

sw.bb137.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i436 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i437 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i436) #11
  %diag_mod.i438 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 13
  %ledtest.i = getelementptr inbounds %struct.bfa_bsg_diag_led_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i439 = tail call i32 @bfa_diag_ledtest(ptr noundef %diag_mod.i438, ptr noundef %ledtest.i) #11
  %704 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %704)
  store i32 %call5.i439, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i436, i32 noundef %call2.i437) #11
  br label %if.end14

sw.bb139.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i433 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i434 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i433) #11
  %diag_mod.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 13
  %beacon.i = getelementptr inbounds %struct.bfa_bsg_diag_beacon_s, ptr %call9.i.i, i32 0, i32 3
  %705 = ptrtoint ptr %beacon.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %beacon.i, align 8
  %link_e2e_beacon.i = getelementptr inbounds %struct.bfa_bsg_diag_beacon_s, ptr %call9.i.i, i32 0, i32 4
  %707 = ptrtoint ptr %link_e2e_beacon.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %link_e2e_beacon.i, align 4
  %second.i = getelementptr inbounds %struct.bfa_bsg_diag_beacon_s, ptr %call9.i.i, i32 0, i32 5
  %709 = ptrtoint ptr %second.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %second.i, align 16
  %call5.i435 = tail call i32 @bfa_diag_beacon_port(ptr noundef %diag_mod.i, i32 noundef %706, i32 noundef %708, i32 noundef %710) #11
  %711 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %711)
  store i32 %call5.i435, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i433, i32 noundef %call2.i434) #11
  br label %if.end14

sw.bb141.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i428 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i429 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i428) #11
  %bfa.i430 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call5.i431 = tail call i32 @bfa_fcdiag_lb_is_running(ptr noundef %bfa.i430) #11
  %712 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %712)
  store i32 %call5.i431, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i428, i32 noundef %call2.i429) #11
  %trcmod.i432 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %713 = ptrtoint ptr %trcmod.i432 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %trcmod.i432, align 8
  %715 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %call9.i.i, align 128
  %conv8.i = zext i32 %716 to i64
  tail call void @__bfa_trc(ptr noundef %714, i32 noundef 3075, i32 noundef 1785, i64 noundef %conv8.i) #11
  br label %if.end14

sw.bb143.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i411) #11
  %717 = call ptr @memset(ptr %fcomp.i411, i32 255, i32 60)
  %comp.i412 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i411, i32 0, i32 1
  %718 = ptrtoint ptr %comp.i412 to i32
  call void @__asan_store4_noabort(i32 %718)
  store i32 0, ptr %comp.i412, align 4
  %wait.i.i413 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i411, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i413, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i414 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i415 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i414) #11
  %bfa.i416 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %lpcnt.i417 = getelementptr inbounds %struct.bfa_bsg_dport_enable_s, ptr %call9.i.i, i32 0, i32 3
  %719 = ptrtoint ptr %lpcnt.i417 to i32
  call void @__asan_load2_noabort(i32 %719)
  %720 = load i16, ptr %lpcnt.i417, align 8
  %conv5.i418 = zext i16 %720 to i32
  %pat.i419 = getelementptr inbounds %struct.bfa_bsg_dport_enable_s, ptr %call9.i.i, i32 0, i32 4
  %721 = ptrtoint ptr %pat.i419 to i32
  call void @__asan_load2_noabort(i32 %721)
  %722 = load i16, ptr %pat.i419, align 2
  %conv6.i420 = zext i16 %722 to i32
  %call7.i421 = call i32 @bfa_dport_enable(ptr noundef %bfa.i416, i32 noundef %conv5.i418, i32 noundef %conv6.i420, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i411) #11
  %723 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %723)
  store i32 %call7.i421, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i414, i32 noundef %call2.i415) #11
  %724 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %725)
  %cmp10.not.i422 = icmp eq i32 %725, 0
  br i1 %cmp10.not.i422, label %if.else.i426, label %if.then.i425

if.then.i425:                                     ; preds = %sw.bb143.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i423 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %726 = ptrtoint ptr %trcmod.i423 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %trcmod.i423, align 8
  %conv13.i424 = zext i32 %725 to i64
  call void @__bfa_trc(ptr noundef %727, i32 noundef 3075, i32 noundef 1804, i64 noundef %conv13.i424) #11
  br label %bfad_iocmd_diag_dport_enable.exit

if.else.i426:                                     ; preds = %sw.bb143.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i412) #11
  %728 = ptrtoint ptr %fcomp.i411 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load i32, ptr %fcomp.i411, align 4
  %730 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %730)
  store i32 %729, ptr %call9.i.i, align 128
  br label %bfad_iocmd_diag_dport_enable.exit

bfad_iocmd_diag_dport_enable.exit:                ; preds = %if.else.i426, %if.then.i425
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i411) #11
  br label %if.end14

sw.bb145.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i400) #11
  %731 = call ptr @memset(ptr %fcomp.i400, i32 255, i32 60)
  %comp.i401 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i400, i32 0, i32 1
  %732 = ptrtoint ptr %comp.i401 to i32
  call void @__asan_store4_noabort(i32 %732)
  store i32 0, ptr %comp.i401, align 4
  %wait.i.i402 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i400, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i402, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i403 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i404 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i403) #11
  %bfa.i405 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call5.i406 = call i32 @bfa_dport_disable(ptr noundef %bfa.i405, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i400) #11
  %733 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %733)
  store i32 %call5.i406, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i403, i32 noundef %call2.i404) #11
  %734 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %735)
  %cmp8.not.i = icmp eq i32 %735, 0
  br i1 %cmp8.not.i, label %if.else.i409, label %if.then.i408

if.then.i408:                                     ; preds = %sw.bb145.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i407 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %736 = ptrtoint ptr %trcmod.i407 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %trcmod.i407, align 8
  %conv11.i = zext i32 %735 to i64
  call void @__bfa_trc(ptr noundef %737, i32 noundef 3075, i32 noundef 1824, i64 noundef %conv11.i) #11
  br label %bfad_iocmd_diag_dport_disable.exit

if.else.i409:                                     ; preds = %sw.bb145.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i401) #11
  %738 = ptrtoint ptr %fcomp.i400 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %fcomp.i400, align 4
  %740 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %740)
  store i32 %739, ptr %call9.i.i, align 128
  br label %bfad_iocmd_diag_dport_disable.exit

bfad_iocmd_diag_dport_disable.exit:               ; preds = %if.else.i409, %if.then.i408
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i400) #11
  br label %if.end14

sw.bb147.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i396 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i397 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i396) #11
  %bfa.i398 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %result.i = getelementptr inbounds %struct.bfa_bsg_diag_dport_show_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i399 = tail call i32 @bfa_dport_show(ptr noundef %bfa.i398, ptr noundef %result.i) #11
  %741 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %741)
  store i32 %call5.i399, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i396, i32 noundef %call2.i397) #11
  br label %if.end14

sw.bb149.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i383) #11
  %742 = call ptr @memset(ptr %fcomp.i383, i32 255, i32 60)
  %comp.i384 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i383, i32 0, i32 1
  %743 = ptrtoint ptr %comp.i384 to i32
  call void @__asan_store4_noabort(i32 %743)
  store i32 0, ptr %comp.i384, align 4
  %wait.i.i385 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i383, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i385, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i386 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i387 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i386) #11
  %bfa.i388 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %lpcnt.i = getelementptr inbounds %struct.bfa_bsg_dport_enable_s, ptr %call9.i.i, i32 0, i32 3
  %744 = ptrtoint ptr %lpcnt.i to i32
  call void @__asan_load2_noabort(i32 %744)
  %745 = load i16, ptr %lpcnt.i, align 8
  %conv5.i389 = zext i16 %745 to i32
  %pat.i = getelementptr inbounds %struct.bfa_bsg_dport_enable_s, ptr %call9.i.i, i32 0, i32 4
  %746 = ptrtoint ptr %pat.i to i32
  call void @__asan_load2_noabort(i32 %746)
  %747 = load i16, ptr %pat.i, align 2
  %conv6.i = zext i16 %747 to i32
  %call7.i390 = call i32 @bfa_dport_start(ptr noundef %bfa.i388, i32 noundef %conv5.i389, i32 noundef %conv6.i, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i383) #11
  %748 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %748)
  store i32 %call7.i390, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i386, i32 noundef %call2.i387) #11
  %749 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %750)
  %cmp10.not.i = icmp eq i32 %750, 0
  br i1 %cmp10.not.i, label %if.else.i394, label %if.then.i393

if.then.i393:                                     ; preds = %sw.bb149.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i391 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %751 = ptrtoint ptr %trcmod.i391 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %trcmod.i391, align 8
  %conv13.i392 = zext i32 %750 to i64
  call void @__bfa_trc(ptr noundef %752, i32 noundef 3075, i32 noundef 1848, i64 noundef %conv13.i392) #11
  br label %bfad_iocmd_diag_dport_start.exit

if.else.i394:                                     ; preds = %sw.bb149.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i384) #11
  %753 = ptrtoint ptr %fcomp.i383 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load i32, ptr %fcomp.i383, align 4
  %755 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %755)
  store i32 %754, ptr %call9.i.i, align 128
  br label %bfad_iocmd_diag_dport_start.exit

bfad_iocmd_diag_dport_start.exit:                 ; preds = %if.else.i394, %if.then.i393
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i383) #11
  br label %if.end14

sw.bb151.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i371) #11
  %756 = call ptr @memset(ptr %fcomp.i371, i32 255, i32 60)
  %comp.i372 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i371, i32 0, i32 1
  %757 = ptrtoint ptr %comp.i372 to i32
  call void @__asan_store4_noabort(i32 %757)
  store i32 0, ptr %comp.i372, align 4
  %wait.i.i373 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i371, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i373, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i374 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i375 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i374) #11
  %phy.i376 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 14
  %instance.i377 = getelementptr inbounds %struct.bfa_bsg_phy_attr_s, ptr %call9.i.i, i32 0, i32 2
  %758 = ptrtoint ptr %instance.i377 to i32
  call void @__asan_load2_noabort(i32 %758)
  %759 = load i16, ptr %instance.i377, align 2
  %conv5.i378 = trunc i16 %759 to i8
  %attr.i379 = getelementptr inbounds %struct.bfa_bsg_phy_attr_s, ptr %call9.i.i, i32 0, i32 3
  %call6.i380 = call i32 @bfa_phy_get_attr(ptr noundef %phy.i376, i8 noundef zeroext %conv5.i378, ptr noundef %attr.i379, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i371) #11
  %760 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 %call6.i380, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i374, i32 noundef %call2.i375) #11
  %761 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %762)
  %cmp9.not.i381 = icmp eq i32 %762, 0
  br i1 %cmp9.not.i381, label %if.end.i382, label %sw.bb151.i.bfad_iocmd_phy_get_attr.exit_crit_edge

sw.bb151.i.bfad_iocmd_phy_get_attr.exit_crit_edge: ; preds = %sw.bb151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_phy_get_attr.exit

if.end.i382:                                      ; preds = %sw.bb151.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i372) #11
  %763 = ptrtoint ptr %fcomp.i371 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %fcomp.i371, align 4
  %765 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %765)
  store i32 %764, ptr %call9.i.i, align 128
  br label %bfad_iocmd_phy_get_attr.exit

bfad_iocmd_phy_get_attr.exit:                     ; preds = %if.end.i382, %sw.bb151.i.bfad_iocmd_phy_get_attr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i371) #11
  br label %if.end14

sw.bb153.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i360) #11
  %766 = call ptr @memset(ptr %fcomp.i360, i32 255, i32 60)
  %comp.i361 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i360, i32 0, i32 1
  %767 = ptrtoint ptr %comp.i361 to i32
  call void @__asan_store4_noabort(i32 %767)
  store i32 0, ptr %comp.i361, align 4
  %wait.i.i362 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i360, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i362, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i363 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i364 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i363) #11
  %phy.i365 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 14
  %instance.i366 = getelementptr inbounds %struct.bfa_bsg_phy_stats_s, ptr %call9.i.i, i32 0, i32 2
  %768 = ptrtoint ptr %instance.i366 to i32
  call void @__asan_load2_noabort(i32 %768)
  %769 = load i16, ptr %instance.i366, align 2
  %conv5.i = trunc i16 %769 to i8
  %stats.i367 = getelementptr inbounds %struct.bfa_bsg_phy_stats_s, ptr %call9.i.i, i32 0, i32 3
  %call6.i368 = call i32 @bfa_phy_get_stats(ptr noundef %phy.i365, i8 noundef zeroext %conv5.i, ptr noundef %stats.i367, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i360) #11
  %770 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %770)
  store i32 %call6.i368, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i363, i32 noundef %call2.i364) #11
  %771 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %772)
  %cmp9.not.i369 = icmp eq i32 %772, 0
  br i1 %cmp9.not.i369, label %if.end.i370, label %sw.bb153.i.bfad_iocmd_phy_get_stats.exit_crit_edge

sw.bb153.i.bfad_iocmd_phy_get_stats.exit_crit_edge: ; preds = %sw.bb153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_phy_get_stats.exit

if.end.i370:                                      ; preds = %sw.bb153.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i361) #11
  %773 = ptrtoint ptr %fcomp.i360 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %fcomp.i360, align 4
  %775 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %775)
  store i32 %774, ptr %call9.i.i, align 128
  br label %bfad_iocmd_phy_get_stats.exit

bfad_iocmd_phy_get_stats.exit:                    ; preds = %if.end.i370, %sw.bb153.i.bfad_iocmd_phy_get_stats.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i360) #11
  br label %if.end14

sw.bb155.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i340) #11
  %776 = call ptr @memset(ptr %fcomp.i340, i32 255, i32 60)
  %conv.i341 = zext i32 %29 to i64
  %bufsz.i342 = getelementptr inbounds %struct.bfa_bsg_phy_s, ptr %call9.i.i, i32 0, i32 3
  %777 = ptrtoint ptr %bufsz.i342 to i32
  call void @__asan_load8_noabort(i32 %777)
  %778 = load i64, ptr %bufsz.i342, align 8
  %add.i343 = add i64 %778, 24
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i343, i64 %conv.i341)
  %cmp.not.i344 = icmp eq i64 %add.i343, %conv.i341
  br i1 %cmp.not.i344, label %if.end.i356, label %sw.bb155.i.cleanup.sink.split.i359_crit_edge

sw.bb155.i.cleanup.sink.split.i359_crit_edge:     ; preds = %sw.bb155.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i359

if.end.i356:                                      ; preds = %sw.bb155.i
  %add.ptr.i345 = getelementptr i8, ptr %call9.i.i, i32 24
  %comp.i346 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i340, i32 0, i32 1
  %779 = ptrtoint ptr %comp.i346 to i32
  call void @__asan_store4_noabort(i32 %779)
  store i32 0, ptr %comp.i346, align 4
  %wait.i.i347 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i340, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i347, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i348 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call7.i349 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i348) #11
  %phy.i350 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 14
  %instance.i351 = getelementptr inbounds %struct.bfa_bsg_phy_s, ptr %call9.i.i, i32 0, i32 2
  %780 = ptrtoint ptr %instance.i351 to i32
  call void @__asan_load2_noabort(i32 %780)
  %781 = load i16, ptr %instance.i351, align 2
  %conv10.i352 = trunc i16 %781 to i8
  %782 = ptrtoint ptr %bufsz.i342 to i32
  call void @__asan_load8_noabort(i32 %782)
  %783 = load i64, ptr %bufsz.i342, align 8
  %conv12.i353 = trunc i64 %783 to i32
  %call13.i354 = call i32 @bfa_phy_update(ptr noundef %phy.i350, i8 noundef zeroext %conv10.i352, ptr noundef %add.ptr.i345, i32 noundef %conv12.i353, i32 noundef 0, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i340) #11
  %784 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %784)
  store i32 %call13.i354, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i348, i32 noundef %call7.i349) #11
  %785 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %786)
  %cmp17.not.i355 = icmp eq i32 %786, 0
  br i1 %cmp17.not.i355, label %if.end20.i357, label %if.end.i356.bfad_iocmd_phy_update.exit_crit_edge

if.end.i356.bfad_iocmd_phy_update.exit_crit_edge: ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_phy_update.exit

if.end20.i357:                                    ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i346) #11
  %787 = ptrtoint ptr %fcomp.i340 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %fcomp.i340, align 4
  br label %cleanup.sink.split.i359

cleanup.sink.split.i359:                          ; preds = %if.end20.i357, %sw.bb155.i.cleanup.sink.split.i359_crit_edge
  %.sink.i358 = phi i32 [ %788, %if.end20.i357 ], [ 70, %sw.bb155.i.cleanup.sink.split.i359_crit_edge ]
  %789 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %789)
  store i32 %.sink.i358, ptr %call9.i.i, align 128
  br label %bfad_iocmd_phy_update.exit

bfad_iocmd_phy_update.exit:                       ; preds = %cleanup.sink.split.i359, %if.end.i356.bfad_iocmd_phy_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i340) #11
  br label %if.end14

sw.bb157.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i329) #11
  %790 = call ptr @memset(ptr %fcomp.i329, i32 255, i32 60)
  %conv.i = zext i32 %29 to i64
  %bufsz.i330 = getelementptr inbounds %struct.bfa_bsg_phy_s, ptr %call9.i.i, i32 0, i32 3
  %791 = ptrtoint ptr %bufsz.i330 to i32
  call void @__asan_load8_noabort(i32 %791)
  %792 = load i64, ptr %bufsz.i330, align 8
  %add.i = add i64 %792, 24
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp.not.i331 = icmp eq i64 %add.i, %conv.i
  br i1 %cmp.not.i331, label %if.end.i338, label %sw.bb157.i.cleanup.sink.split.i_crit_edge

sw.bb157.i.cleanup.sink.split.i_crit_edge:        ; preds = %sw.bb157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i338:                                      ; preds = %sw.bb157.i
  %add.ptr.i332 = getelementptr i8, ptr %call9.i.i, i32 24
  %comp.i333 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i329, i32 0, i32 1
  %793 = ptrtoint ptr %comp.i333 to i32
  call void @__asan_store4_noabort(i32 %793)
  store i32 0, ptr %comp.i333, align 4
  %wait.i.i334 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i329, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i334, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i335 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call7.i336 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i335) #11
  %phy.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 14
  %instance.i = getelementptr inbounds %struct.bfa_bsg_phy_s, ptr %call9.i.i, i32 0, i32 2
  %794 = ptrtoint ptr %instance.i to i32
  call void @__asan_load2_noabort(i32 %794)
  %795 = load i16, ptr %instance.i, align 2
  %conv10.i = trunc i16 %795 to i8
  %796 = ptrtoint ptr %bufsz.i330 to i32
  call void @__asan_load8_noabort(i32 %796)
  %797 = load i64, ptr %bufsz.i330, align 8
  %conv12.i = trunc i64 %797 to i32
  %call13.i337 = call i32 @bfa_phy_read(ptr noundef %phy.i, i8 noundef zeroext %conv10.i, ptr noundef %add.ptr.i332, i32 noundef %conv12.i, i32 noundef 0, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i329) #11
  %798 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %798)
  store i32 %call13.i337, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i335, i32 noundef %call7.i336) #11
  %799 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %800)
  %cmp17.not.i = icmp eq i32 %800, 0
  br i1 %cmp17.not.i, label %if.end20.i, label %if.end.i338.bfad_iocmd_phy_read.exit_crit_edge

if.end.i338.bfad_iocmd_phy_read.exit_crit_edge:   ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_phy_read.exit

if.end20.i:                                       ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i333) #11
  %801 = ptrtoint ptr %fcomp.i329 to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load i32, ptr %fcomp.i329, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end20.i, %sw.bb157.i.cleanup.sink.split.i_crit_edge
  %.sink.i339 = phi i32 [ %802, %if.end20.i ], [ 70, %sw.bb157.i.cleanup.sink.split.i_crit_edge ]
  %803 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %803)
  store i32 %.sink.i339, ptr %call9.i.i, align 128
  br label %bfad_iocmd_phy_read.exit

bfad_iocmd_phy_read.exit:                         ; preds = %cleanup.sink.split.i, %if.end.i338.bfad_iocmd_phy_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i329) #11
  br label %if.end14

sw.bb159.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %attr1.i = getelementptr inbounds %struct.bfa_bsg_vhba_attr_s, ptr %call9.i.i, i32 0, i32 3
  %bfad_lock.i324 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i325 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i324) #11
  %bfa.i326 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %attr6.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3, i32 21
  %804 = ptrtoint ptr %attr6.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %attr6.i, align 8
  %pwwn.i327 = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %805, i32 0, i32 5
  %806 = ptrtoint ptr %pwwn.i327 to i32
  call void @__asan_loadN_noabort(i32 %806, i32 8)
  %807 = load i64, ptr %pwwn.i327, align 1
  %pwwn7.i = getelementptr inbounds %struct.bfa_bsg_vhba_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 1
  %808 = ptrtoint ptr %pwwn7.i to i32
  call void @__asan_store8_noabort(i32 %808)
  store i64 %807, ptr %pwwn7.i, align 16
  %809 = load ptr, ptr %attr6.i, align 8
  %nwwn.i = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %809, i32 0, i32 6
  %810 = ptrtoint ptr %nwwn.i to i32
  call void @__asan_loadN_noabort(i32 %810, i32 8)
  %811 = load i64, ptr %nwwn.i, align 1
  %812 = ptrtoint ptr %attr1.i to i32
  call void @__asan_store8_noabort(i32 %812)
  store i64 %811, ptr %attr1.i, align 8
  %plog.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 1
  %813 = ptrtoint ptr %plog.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %plog.i, align 4
  %plog_enabled.i = getelementptr inbounds %struct.bfa_plog_s, ptr %814, i32 0, i32 1
  %815 = ptrtoint ptr %plog_enabled.i to i32
  call void @__asan_load1_noabort(i32 %815)
  %816 = load i8, ptr %plog_enabled.i, align 8
  %conv13.i328 = zext i8 %816 to i32
  %plog_enabled14.i = getelementptr inbounds %struct.bfa_bsg_vhba_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 4
  %817 = ptrtoint ptr %plog_enabled14.i to i32
  call void @__asan_store4_noabort(i32 %817)
  store i32 %conv13.i328, ptr %plog_enabled14.i, align 32
  %io_profile.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 6, i32 11, i32 20
  %818 = ptrtoint ptr %io_profile.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load i32, ptr %io_profile.i, align 4
  %io_profile16.i = getelementptr inbounds %struct.bfa_bsg_vhba_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3
  %820 = ptrtoint ptr %io_profile16.i to i32
  call void @__asan_store4_noabort(i32 %820)
  store i32 %819, ptr %io_profile16.i, align 4
  %call18.i = tail call zeroext i16 @bfa_fcpim_path_tov_get(ptr noundef %bfa.i326) #11
  %path_tov.i = getelementptr inbounds %struct.bfa_bsg_vhba_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 5
  %821 = ptrtoint ptr %path_tov.i to i32
  call void @__asan_store2_noabort(i32 %821)
  store i16 %call18.i, ptr %path_tov.i, align 4
  %822 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %822)
  store i32 0, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i324, i32 noundef %call3.i325) #11
  br label %if.end14

sw.bb161.i:                                       ; preds = %if.end
  %bufsz.i319 = getelementptr inbounds %struct.bfa_bsg_debug_s, ptr %call9.i.i, i32 0, i32 3
  %823 = ptrtoint ptr %bufsz.i319 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %bufsz.i319, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12312, i32 %824)
  %cmp.i = icmp ult i32 %824, 12312
  br i1 %cmp.i, label %if.then.i321, label %if.end.i323

if.then.i321:                                     ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i320 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %825 = ptrtoint ptr %trcmod.i320 to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %trcmod.i320, align 8
  tail call void @__bfa_trc(ptr noundef %826, i32 noundef 3075, i32 noundef 2002, i64 noundef 12312) #11
  %827 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %827)
  store i32 2, ptr %call9.i.i, align 128
  br label %if.end14

if.end.i323:                                      ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #13
  %828 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %828)
  store i32 0, ptr %call9.i.i, align 128
  %add.ptr.i322 = getelementptr i8, ptr %call9.i.i, i32 32
  %plog_buf.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 31
  %829 = call ptr @memcpy(ptr %add.ptr.i322, ptr %plog_buf.i, i32 12312)
  br label %if.end14

sw.bb163.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i312) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16416, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 16416
  br i1 %cmp.not.i, label %if.end.i314, label %if.then.i313

if.then.i313:                                     ; preds = %sw.bb163.i
  call void @__sanitizer_cov_trace_pc() #13
  %830 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %830)
  store i32 70, ptr %call9.i.i, align 128
  br label %bfad_iocmd_debug_fw_core.exit

if.end.i314:                                      ; preds = %sw.bb163.i
  %bufsz.i = getelementptr inbounds %struct.bfa_bsg_debug_s, ptr %call9.i.i, i32 0, i32 3
  %831 = ptrtoint ptr %bufsz.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load i32, ptr %bufsz.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %832)
  %cmp2.i = icmp ugt i32 %832, 16383
  %and.i = and i32 %832, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %cmp2.i, %cmp4.i
  br i1 %or.cond.i, label %lor.lhs.false5.i, label %if.end.i314.if.then9.i_crit_edge

if.end.i314.if.then9.i_crit_edge:                 ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

lor.lhs.false5.i:                                 ; preds = %if.end.i314
  %offset6.i = getelementptr inbounds %struct.bfa_bsg_debug_s, ptr %call9.i.i, i32 0, i32 6
  %833 = ptrtoint ptr %offset6.i to i32
  call void @__asan_load8_noabort(i32 %833)
  %834 = load i64, ptr %offset6.i, align 8
  %and7.i = and i64 %834, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %cmp8.i315 = icmp eq i64 %and7.i, 0
  br i1 %cmp8.i315, label %if.end11.i, label %lor.lhs.false5.i.if.then9.i_crit_edge

lor.lhs.false5.i.if.then9.i_crit_edge:            ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false5.i.if.then9.i_crit_edge, %if.end.i314.if.then9.i_crit_edge
  %trcmod.i316 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %835 = ptrtoint ptr %trcmod.i316 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %trcmod.i316, align 8
  tail call void @__bfa_trc(ptr noundef %836, i32 noundef 3075, i32 noundef 2033, i64 noundef 16384) #11
  %837 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %837)
  store i32 2, ptr %call9.i.i, align 128
  br label %bfad_iocmd_debug_fw_core.exit

if.end11.i:                                       ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 32
  %bfad_lock.i317 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i317) #11
  %838 = ptrtoint ptr %offset6.i to i32
  call void @__asan_load8_noabort(i32 %838)
  %839 = load i64, ptr %offset6.i, align 8
  %conv18.i = trunc i64 %839 to i32
  %840 = ptrtoint ptr %offset.i312 to i32
  call void @__asan_store4_noabort(i32 %840)
  store i32 %conv18.i, ptr %offset.i312, align 4
  %ioc.i318 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3
  %call20.i = call i32 @bfa_ioc_debug_fwcore(ptr noundef %ioc.i318, ptr noundef %add.ptr.i, ptr noundef nonnull %offset.i312, ptr noundef %bufsz.i) #11
  %841 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %841)
  store i32 %call20.i, ptr %call9.i.i, align 128
  %842 = ptrtoint ptr %offset.i312 to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load i32, ptr %offset.i312, align 4
  %conv22.i = zext i32 %843 to i64
  %844 = ptrtoint ptr %offset6.i to i32
  call void @__asan_store8_noabort(i32 %844)
  store i64 %conv22.i, ptr %offset6.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i317, i32 noundef %call14.i) #11
  br label %bfad_iocmd_debug_fw_core.exit

bfad_iocmd_debug_fw_core.exit:                    ; preds = %if.end11.i, %if.then9.i, %if.then.i313
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i312) #11
  br label %if.end14

sw.bb165.i:                                       ; preds = %if.end.sw.bb165.i_crit_edge, %if.end.sw.bb165.i_crit_edge1193, %if.end.sw.bb165.i_crit_edge1194, %if.end.sw.bb165.i_crit_edge1195
  %845 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %845, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %sw.bb165.i.bfad_iocmd_debug_ctl.exit.i_crit_edge [
    i32 88, label %do.body1.i.i
    i32 89, label %if.then9.i.i
    i32 90, label %if.then14.i.i
    i32 91, label %if.then18.i480.i
  ]

sw.bb165.i.bfad_iocmd_debug_ctl.exit.i_crit_edge: ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_debug_ctl.exit.i

do.body1.i.i:                                     ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i479.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i479.i) #11
  %dbg_fwsave_once.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3, i32 11
  %846 = ptrtoint ptr %dbg_fwsave_once.i.i to i32
  call void @__asan_store4_noabort(i32 %846)
  store i32 1, ptr %dbg_fwsave_once.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i479.i, i32 noundef %call3.i.i) #11
  br label %bfad_iocmd_debug_ctl.exit.i

if.then9.i.i:                                     ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 31, i32 5
  %847 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store2_noabort(i32 %847)
  store i16 0, ptr %tail.i.i, align 2
  %head.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 31, i32 4
  %848 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store2_noabort(i32 %848)
  store i16 0, ptr %head.i.i, align 4
  br label %bfad_iocmd_debug_ctl.exit.i

if.then14.i.i:                                    ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %849 = ptrtoint ptr %trcmod.i.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %trcmod.i.i, align 8
  %stopped.i.i.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %850, i32 0, i32 3
  %851 = ptrtoint ptr %stopped.i.i.i to i32
  call void @__asan_store4_noabort(i32 %851)
  store i32 0, ptr %stopped.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %850, i32 0, i32 1
  %852 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %852)
  store i32 0, ptr %tail.i.i.i, align 4
  %853 = ptrtoint ptr %850 to i32
  call void @__asan_store4_noabort(i32 %853)
  store i32 0, ptr %850, align 8
  %ntrc.i.i.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %850, i32 0, i32 2
  %854 = ptrtoint ptr %ntrc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %854)
  store i32 4096, ptr %ntrc.i.i.i, align 8
  br label %bfad_iocmd_debug_ctl.exit.i

if.then18.i480.i:                                 ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod19.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %855 = ptrtoint ptr %trcmod19.i.i to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %trcmod19.i.i, align 8
  %stopped.i1.i.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %856, i32 0, i32 3
  %857 = ptrtoint ptr %stopped.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %857)
  store i32 1, ptr %stopped.i1.i.i, align 4
  br label %bfad_iocmd_debug_ctl.exit.i

bfad_iocmd_debug_ctl.exit.i:                      ; preds = %if.then18.i480.i, %if.then14.i.i, %if.then9.i.i, %do.body1.i.i, %sw.bb165.i.bfad_iocmd_debug_ctl.exit.i_crit_edge
  %858 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %858)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb167.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctl.i.i = getelementptr inbounds %struct.bfa_bsg_portlogctl_s, ptr %call9.i.i, i32 0, i32 3
  %859 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %ctl.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %860)
  %cmp.i.i68 = icmp eq i32 %860, 1
  %spec.select.i.i = zext i1 %cmp.i.i68 to i8
  %861 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 31, i32 1
  %862 = ptrtoint ptr %861 to i32
  call void @__asan_store1_noabort(i32 %862)
  store i8 %spec.select.i.i, ptr %861, align 8
  %863 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %863)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb169.i:                                       ; preds = %if.end.sw.bb169.i_crit_edge, %if.end.sw.bb169.i_crit_edge1196
  %bfad_lock.i305 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i306 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i305) #11
  %864 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %864, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %5, label %sw.bb169.i.bfad_iocmd_fcpim_cfg_profile.exit_crit_edge [
    i32 93, label %if.then.i310
    i32 94, label %if.then11.i
  ]

sw.bb169.i.bfad_iocmd_fcpim_cfg_profile.exit_crit_edge: ; preds = %sw.bb169.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_fcpim_cfg_profile.exit

if.then.i310:                                     ; preds = %sw.bb169.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa.i307 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call7.i308 = tail call i64 @ktime_get_real_seconds() #11
  %call8.i309 = tail call i32 @bfa_fcpim_profile_on(ptr noundef %bfa.i307, i64 noundef %call7.i308) #11
  br label %if.end15.sink.split.i

if.then11.i:                                      ; preds = %sw.bb169.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa12.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call13.i311 = tail call i32 @bfa_fcpim_profile_off(ptr noundef %bfa12.i) #11
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %if.then11.i, %if.then.i310
  %call13.sink.i = phi i32 [ %call13.i311, %if.then11.i ], [ %call8.i309, %if.then.i310 ]
  %865 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %865)
  store i32 %call13.sink.i, ptr %call9.i.i, align 128
  br label %bfad_iocmd_fcpim_cfg_profile.exit

bfad_iocmd_fcpim_cfg_profile.exit:                ; preds = %if.end15.sink.split.i, %sw.bb169.i.bfad_iocmd_fcpim_cfg_profile.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i305, i32 noundef %call2.i306) #11
  br label %if.end14

sw.bb171.i:                                       ; preds = %if.end
  %bfad_lock.i293 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i294 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i293) #11
  %bfa_fcs.i295 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i296 = getelementptr inbounds %struct.bfa_bsg_itnim_ioprofile_s, ptr %call9.i.i, i32 0, i32 2
  %866 = ptrtoint ptr %vf_id.i296 to i32
  call void @__asan_load2_noabort(i32 %866)
  %867 = load i16, ptr %vf_id.i296, align 2
  %lpwwn.i = getelementptr inbounds %struct.bfa_bsg_itnim_ioprofile_s, ptr %call9.i.i, i32 0, i32 3
  %868 = ptrtoint ptr %lpwwn.i to i32
  call void @__asan_load8_noabort(i32 %868)
  %869 = load i64, ptr %lpwwn.i, align 8
  %call5.i297 = tail call ptr @bfa_fcs_lookup_port(ptr noundef %bfa_fcs.i295, i16 noundef zeroext %867, i64 noundef %869) #11
  %tobool.not.i298 = icmp eq ptr %call5.i297, null
  br i1 %tobool.not.i298, label %sw.bb171.i.bfad_iocmd_itnim_get_ioprofile.exit_crit_edge, label %if.else.i302

sw.bb171.i.bfad_iocmd_itnim_get_ioprofile.exit_crit_edge: ; preds = %sw.bb171.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_itnim_get_ioprofile.exit

if.else.i302:                                     ; preds = %sw.bb171.i
  %rpwwn.i299 = getelementptr inbounds %struct.bfa_bsg_itnim_ioprofile_s, ptr %call9.i.i, i32 0, i32 4
  %870 = ptrtoint ptr %rpwwn.i299 to i32
  call void @__asan_load8_noabort(i32 %870)
  %871 = load i64, ptr %rpwwn.i299, align 16
  %call6.i300 = tail call ptr @bfa_fcs_itnim_lookup(ptr noundef nonnull %call5.i297, i64 noundef %871) #11
  %cmp7.i301 = icmp eq ptr %call6.i300, null
  br i1 %cmp7.i301, label %if.else.i302.bfad_iocmd_itnim_get_ioprofile.exit_crit_edge, label %if.else11.i

if.else.i302.bfad_iocmd_itnim_get_ioprofile.exit_crit_edge: ; preds = %if.else.i302
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_itnim_get_ioprofile.exit

if.else11.i:                                      ; preds = %if.else.i302
  call void @__sanitizer_cov_trace_pc() #13
  %bfa_itnim.i.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %call6.i300, i32 0, i32 5
  %872 = ptrtoint ptr %bfa_itnim.i.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %bfa_itnim.i.i, align 4
  %ioprofile.i = getelementptr inbounds %struct.bfa_bsg_itnim_ioprofile_s, ptr %call9.i.i, i32 0, i32 5
  %call13.i303 = tail call i32 @bfa_itnim_get_ioprofile(ptr noundef %873, ptr noundef %ioprofile.i) #11
  br label %bfad_iocmd_itnim_get_ioprofile.exit

bfad_iocmd_itnim_get_ioprofile.exit:              ; preds = %if.else11.i, %if.else.i302.bfad_iocmd_itnim_get_ioprofile.exit_crit_edge, %sw.bb171.i.bfad_iocmd_itnim_get_ioprofile.exit_crit_edge
  %.sink.i304 = phi i32 [ %call13.i303, %if.else11.i ], [ 18, %sw.bb171.i.bfad_iocmd_itnim_get_ioprofile.exit_crit_edge ], [ 19, %if.else.i302.bfad_iocmd_itnim_get_ioprofile.exit_crit_edge ]
  %874 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %874)
  store i32 %.sink.i304, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i293, i32 noundef %call2.i294) #11
  br label %if.end14

sw.bb173.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i279) #11
  %875 = call ptr @memset(ptr %fcomp.i279, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cb_qe.i280) #11
  %876 = getelementptr inbounds %struct.list_head, ptr %cb_qe.i280, i32 0, i32 1
  %877 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i280, i32 0, i32 1
  %878 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i280, i32 0, i32 3
  %879 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i280, i32 0, i32 5
  %880 = getelementptr inbounds %struct.bfa_cb_pending_q_s, ptr %cb_qe.i280, i32 0, i32 1
  %comp.i281 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i279, i32 0, i32 1
  %881 = getelementptr inbounds i8, ptr %cb_qe.i280, i32 12
  %882 = call ptr @memset(ptr %881, i32 255, i32 12)
  %883 = ptrtoint ptr %comp.i281 to i32
  call void @__asan_store4_noabort(i32 %883)
  store i32 0, ptr %comp.i281, align 4
  %wait.i.i282 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i279, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i282, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %884 = ptrtoint ptr %cb_qe.i280 to i32
  call void @__asan_store4_noabort(i32 %884)
  store ptr null, ptr %cb_qe.i280, align 4
  %885 = ptrtoint ptr %876 to i32
  call void @__asan_store4_noabort(i32 %885)
  store ptr null, ptr %876, align 4
  %886 = ptrtoint ptr %877 to i32
  call void @__asan_store4_noabort(i32 %886)
  store ptr @bfad_hcb_comp, ptr %877, align 4
  %887 = ptrtoint ptr %879 to i32
  call void @__asan_store4_noabort(i32 %887)
  store ptr %fcomp.i279, ptr %879, align 4
  %888 = ptrtoint ptr %878 to i32
  call void @__asan_store4_noabort(i32 %888)
  store i32 1, ptr %878, align 4
  %stats.i283 = getelementptr inbounds %struct.bfa_bsg_fcport_stats_s, ptr %call9.i.i, i32 0, i32 3
  %889 = ptrtoint ptr %880 to i32
  call void @__asan_store4_noabort(i32 %889)
  store ptr %stats.i283, ptr %880, align 4
  %bfad_lock.i284 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call8.i285 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i284) #11
  %bfa.i286 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call13.i287 = call i32 @bfa_fcport_get_stats(ptr noundef %bfa.i286, ptr noundef nonnull %cb_qe.i280) #11
  %890 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %890)
  store i32 %call13.i287, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i284, i32 noundef %call8.i285) #11
  %891 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %892)
  %cmp16.not.i288 = icmp eq i32 %892, 0
  br i1 %cmp16.not.i288, label %if.end.i292, label %if.then.i291

if.then.i291:                                     ; preds = %sw.bb173.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i289 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %893 = ptrtoint ptr %trcmod.i289 to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %trcmod.i289, align 8
  %conv19.i290 = zext i32 %892 to i64
  call void @__bfa_trc(ptr noundef %894, i32 noundef 3075, i32 noundef 2144, i64 noundef %conv19.i290) #11
  br label %bfad_iocmd_fcport_get_stats.exit

if.end.i292:                                      ; preds = %sw.bb173.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i281) #11
  %895 = ptrtoint ptr %fcomp.i279 to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load i32, ptr %fcomp.i279, align 4
  %897 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %897)
  store i32 %896, ptr %call9.i.i, align 128
  br label %bfad_iocmd_fcport_get_stats.exit

bfad_iocmd_fcport_get_stats.exit:                 ; preds = %if.end.i292, %if.then.i291
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cb_qe.i280) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i279) #11
  br label %if.end14

sw.bb175.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i269) #11
  %898 = call ptr @memset(ptr %fcomp.i269, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cb_qe.i270) #11
  %899 = getelementptr inbounds %struct.list_head, ptr %cb_qe.i270, i32 0, i32 1
  %900 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i270, i32 0, i32 1
  %901 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i270, i32 0, i32 3
  %902 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i270, i32 0, i32 5
  %903 = getelementptr inbounds %struct.bfa_cb_pending_q_s, ptr %cb_qe.i270, i32 0, i32 1
  %comp.i271 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i269, i32 0, i32 1
  %904 = getelementptr inbounds i8, ptr %cb_qe.i270, i32 12
  %905 = call ptr @memset(ptr %904, i32 255, i32 12)
  %906 = ptrtoint ptr %comp.i271 to i32
  call void @__asan_store4_noabort(i32 %906)
  store i32 0, ptr %comp.i271, align 4
  %wait.i.i272 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i269, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i272, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %907 = ptrtoint ptr %cb_qe.i270 to i32
  call void @__asan_store4_noabort(i32 %907)
  store ptr null, ptr %cb_qe.i270, align 4
  %908 = ptrtoint ptr %899 to i32
  call void @__asan_store4_noabort(i32 %908)
  store ptr null, ptr %899, align 4
  %909 = ptrtoint ptr %900 to i32
  call void @__asan_store4_noabort(i32 %909)
  store ptr @bfad_hcb_comp, ptr %900, align 4
  %910 = ptrtoint ptr %902 to i32
  call void @__asan_store4_noabort(i32 %910)
  store ptr %fcomp.i269, ptr %902, align 4
  %911 = ptrtoint ptr %901 to i32
  call void @__asan_store4_noabort(i32 %911)
  store i32 1, ptr %901, align 4
  %912 = ptrtoint ptr %903 to i32
  call void @__asan_store4_noabort(i32 %912)
  store ptr null, ptr %903, align 4
  %bfad_lock.i273 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call8.i274 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i273) #11
  %bfa.i275 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call13.i = call i32 @bfa_fcport_clear_stats(ptr noundef %bfa.i275, ptr noundef nonnull %cb_qe.i270) #11
  %913 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %913)
  store i32 %call13.i, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i273, i32 noundef %call8.i274) #11
  %914 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %915)
  %cmp16.not.i = icmp eq i32 %915, 0
  br i1 %cmp16.not.i, label %if.end.i278, label %if.then.i277

if.then.i277:                                     ; preds = %sw.bb175.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i276 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %916 = ptrtoint ptr %trcmod.i276 to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %trcmod.i276, align 8
  %conv19.i = zext i32 %915 to i64
  call void @__bfa_trc(ptr noundef %917, i32 noundef 3075, i32 noundef 2168, i64 noundef %conv19.i) #11
  br label %bfad_iocmd_fcport_reset_stats.exit

if.end.i278:                                      ; preds = %sw.bb175.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i271) #11
  %918 = ptrtoint ptr %fcomp.i269 to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load i32, ptr %fcomp.i269, align 4
  %920 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %920)
  store i32 %919, ptr %call9.i.i, align 128
  br label %bfad_iocmd_fcport_reset_stats.exit

bfad_iocmd_fcport_reset_stats.exit:               ; preds = %if.end.i278, %if.then.i277
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cb_qe.i270) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i269) #11
  br label %if.end14

sw.bb177.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i258) #11
  %921 = call ptr @memset(ptr %fcomp.i258, i32 255, i32 60)
  %comp.i259 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i258, i32 0, i32 1
  %922 = ptrtoint ptr %comp.i259 to i32
  call void @__asan_store4_noabort(i32 %922)
  store i32 0, ptr %comp.i259, align 4
  %wait.i.i260 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i258, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i260, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i261 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i262 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i261) #11
  %flash.i263 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 12
  %port_id.i264 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3, i32 19
  %923 = ptrtoint ptr %port_id.i264 to i32
  call void @__asan_load1_noabort(i32 %923)
  %924 = load i8, ptr %port_id.i264, align 8
  %cfg.i265 = getelementptr inbounds %struct.bfa_bsg_boot_s, ptr %call9.i.i, i32 0, i32 3
  %call6.i266 = call i32 @bfa_flash_update_part(ptr noundef %flash.i263, i32 noundef 5, i8 noundef zeroext %924, ptr noundef %cfg.i265, i32 noundef 144, i32 noundef 0, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i258) #11
  %925 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %925)
  store i32 %call6.i266, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i261, i32 noundef %call2.i262) #11
  %926 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %927)
  %cmp9.not.i267 = icmp eq i32 %927, 0
  br i1 %cmp9.not.i267, label %if.end.i268, label %sw.bb177.i.bfad_iocmd_boot_cfg.exit_crit_edge

sw.bb177.i.bfad_iocmd_boot_cfg.exit_crit_edge:    ; preds = %sw.bb177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_boot_cfg.exit

if.end.i268:                                      ; preds = %sw.bb177.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i259) #11
  %928 = ptrtoint ptr %fcomp.i258 to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load i32, ptr %fcomp.i258, align 4
  %930 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %930)
  store i32 %929, ptr %call9.i.i, align 128
  br label %bfad_iocmd_boot_cfg.exit

bfad_iocmd_boot_cfg.exit:                         ; preds = %if.end.i268, %sw.bb177.i.bfad_iocmd_boot_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i258) #11
  br label %if.end14

sw.bb179.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i247) #11
  %931 = call ptr @memset(ptr %fcomp.i247, i32 255, i32 60)
  %comp.i248 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i247, i32 0, i32 1
  %932 = ptrtoint ptr %comp.i248 to i32
  call void @__asan_store4_noabort(i32 %932)
  store i32 0, ptr %comp.i248, align 4
  %wait.i.i249 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i247, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i249, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i250 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i251 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i250) #11
  %flash.i252 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 12
  %port_id.i253 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3, i32 19
  %933 = ptrtoint ptr %port_id.i253 to i32
  call void @__asan_load1_noabort(i32 %933)
  %934 = load i8, ptr %port_id.i253, align 8
  %cfg.i254 = getelementptr inbounds %struct.bfa_bsg_boot_s, ptr %call9.i.i, i32 0, i32 3
  %call6.i255 = call i32 @bfa_flash_read_part(ptr noundef %flash.i252, i32 noundef 5, i8 noundef zeroext %934, ptr noundef %cfg.i254, i32 noundef 144, i32 noundef 0, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i247) #11
  %935 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %935)
  store i32 %call6.i255, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i250, i32 noundef %call2.i251) #11
  %936 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %937)
  %cmp9.not.i256 = icmp eq i32 %937, 0
  br i1 %cmp9.not.i256, label %if.end.i257, label %sw.bb179.i.bfad_iocmd_boot_query.exit_crit_edge

sw.bb179.i.bfad_iocmd_boot_query.exit_crit_edge:  ; preds = %sw.bb179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_boot_query.exit

if.end.i257:                                      ; preds = %sw.bb179.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i248) #11
  %938 = ptrtoint ptr %fcomp.i247 to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load i32, ptr %fcomp.i247, align 4
  %940 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %940)
  store i32 %939, ptr %call9.i.i, align 128
  br label %bfad_iocmd_boot_query.exit

bfad_iocmd_boot_query.exit:                       ; preds = %if.end.i257, %sw.bb179.i.bfad_iocmd_boot_query.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i247) #11
  br label %if.end14

sw.bb181.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cfgrsp1.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 4, i32 17
  %941 = ptrtoint ptr %cfgrsp1.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %cfgrsp1.i, align 8
  %cfg.i244 = getelementptr inbounds %struct.bfa_bsg_preboot_s, ptr %call9.i.i, i32 0, i32 3
  %bfad_lock.i245 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i246 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i245) #11
  %boot_enabled.i = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %942, i32 0, i32 3, i32 1
  %943 = ptrtoint ptr %boot_enabled.i to i32
  call void @__asan_load1_noabort(i32 %943)
  %944 = load i8, ptr %boot_enabled.i, align 1
  %945 = ptrtoint ptr %cfg.i244 to i32
  call void @__asan_store1_noabort(i32 %945)
  store i8 %944, ptr %cfg.i244, align 8
  %nbluns.i = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %942, i32 0, i32 3, i32 2
  %946 = ptrtoint ptr %nbluns.i to i32
  call void @__asan_load1_noabort(i32 %946)
  %947 = load i8, ptr %nbluns.i, align 1
  %conv7.i = zext i8 %947 to i32
  %nbluns8.i = getelementptr inbounds %struct.bfa_bsg_preboot_s, ptr %call9.i.i, i32 0, i32 3, i32 4
  %948 = ptrtoint ptr %nbluns8.i to i32
  call void @__asan_store4_noabort(i32 %948)
  store i32 %conv7.i, ptr %nbluns8.i, align 4
  %port_speed.i = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %942, i32 0, i32 3, i32 4
  %949 = ptrtoint ptr %port_speed.i to i32
  call void @__asan_load1_noabort(i32 %949)
  %950 = load i8, ptr %port_speed.i, align 1
  %speed.i = getelementptr inbounds %struct.bfa_bsg_preboot_s, ptr %call9.i.i, i32 0, i32 3, i32 1
  %951 = ptrtoint ptr %speed.i to i32
  call void @__asan_store1_noabort(i32 %951)
  store i8 %950, ptr %speed.i, align 1
  %pblun.i = getelementptr inbounds %struct.bfa_bsg_preboot_s, ptr %call9.i.i, i32 0, i32 3, i32 5
  %blun.i = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %942, i32 0, i32 3, i32 9
  %952 = call ptr @memcpy(ptr %pblun.i, ptr %blun.i, i32 128)
  %953 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %953)
  store i32 0, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i245, i32 noundef %call3.i246) #11
  br label %if.end14

sw.bb183.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i233) #11
  %954 = call ptr @memset(ptr %fcomp.i233, i32 255, i32 60)
  %comp.i234 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i233, i32 0, i32 1
  %955 = ptrtoint ptr %comp.i234 to i32
  call void @__asan_store4_noabort(i32 %955)
  store i32 0, ptr %comp.i234, align 4
  %wait.i.i235 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i233, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i235, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i236 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i237 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i236) #11
  %flash.i238 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 12
  %port_id.i239 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3, i32 19
  %956 = ptrtoint ptr %port_id.i239 to i32
  call void @__asan_load1_noabort(i32 %956)
  %957 = load i8, ptr %port_id.i239, align 8
  %cfg.i240 = getelementptr inbounds %struct.bfa_bsg_ethboot_s, ptr %call9.i.i, i32 0, i32 3
  %call6.i241 = call i32 @bfa_flash_update_part(ptr noundef %flash.i238, i32 noundef 13, i8 noundef zeroext %957, ptr noundef %cfg.i240, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i233) #11
  %958 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %958)
  store i32 %call6.i241, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i236, i32 noundef %call2.i237) #11
  %959 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %960)
  %cmp9.not.i242 = icmp eq i32 %960, 0
  br i1 %cmp9.not.i242, label %if.end.i243, label %sw.bb183.i.bfad_iocmd_ethboot_cfg.exit_crit_edge

sw.bb183.i.bfad_iocmd_ethboot_cfg.exit_crit_edge: ; preds = %sw.bb183.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ethboot_cfg.exit

if.end.i243:                                      ; preds = %sw.bb183.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i234) #11
  %961 = ptrtoint ptr %fcomp.i233 to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load i32, ptr %fcomp.i233, align 4
  %963 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %963)
  store i32 %962, ptr %call9.i.i, align 128
  br label %bfad_iocmd_ethboot_cfg.exit

bfad_iocmd_ethboot_cfg.exit:                      ; preds = %if.end.i243, %sw.bb183.i.bfad_iocmd_ethboot_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i233) #11
  br label %if.end14

sw.bb185.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i224) #11
  %964 = call ptr @memset(ptr %fcomp.i224, i32 255, i32 60)
  %comp.i225 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i224, i32 0, i32 1
  %965 = ptrtoint ptr %comp.i225 to i32
  call void @__asan_store4_noabort(i32 %965)
  store i32 0, ptr %comp.i225, align 4
  %wait.i.i226 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i224, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i226, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i227 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i228 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i227) #11
  %flash.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 12
  %port_id.i229 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3, i32 19
  %966 = ptrtoint ptr %port_id.i229 to i32
  call void @__asan_load1_noabort(i32 %966)
  %967 = load i8, ptr %port_id.i229, align 8
  %cfg.i230 = getelementptr inbounds %struct.bfa_bsg_ethboot_s, ptr %call9.i.i, i32 0, i32 3
  %call6.i231 = call i32 @bfa_flash_read_part(ptr noundef %flash.i, i32 noundef 13, i8 noundef zeroext %967, ptr noundef %cfg.i230, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i224) #11
  %968 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %968)
  store i32 %call6.i231, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i227, i32 noundef %call2.i228) #11
  %969 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %970)
  %cmp9.not.i = icmp eq i32 %970, 0
  br i1 %cmp9.not.i, label %if.end.i232, label %sw.bb185.i.bfad_iocmd_ethboot_query.exit_crit_edge

sw.bb185.i.bfad_iocmd_ethboot_query.exit_crit_edge: ; preds = %sw.bb185.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_ethboot_query.exit

if.end.i232:                                      ; preds = %sw.bb185.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i225) #11
  %971 = ptrtoint ptr %fcomp.i224 to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load i32, ptr %fcomp.i224, align 4
  %973 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %973)
  store i32 %972, ptr %call9.i.i, align 128
  br label %bfad_iocmd_ethboot_query.exit

bfad_iocmd_ethboot_query.exit:                    ; preds = %if.end.i232, %sw.bb185.i.bfad_iocmd_ethboot_query.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i224) #11
  br label %if.end14

sw.bb187.i:                                       ; preds = %if.end.sw.bb187.i_crit_edge, %if.end.sw.bb187.i_crit_edge1197
  %bfa.i210 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %trunk2.i211 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 40
  %bfad_lock.i212 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call4.i213 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i212) #11
  %call8.i = tail call i32 @bfa_fcport_is_dport(ptr noundef %bfa.i210) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i214 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i214, label %if.end.i217, label %bfad_iocmd_handler.exit

if.end.i217:                                      ; preds = %sw.bb187.i
  %cfg.i215 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11
  %974 = ptrtoint ptr %cfg.i215 to i32
  call void @__asan_load1_noabort(i32 %974)
  %975 = load i8, ptr %cfg.i215, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %975)
  %cmp11.i216 = icmp eq i8 %975, 2
  br i1 %cmp11.i216, label %if.end.i217.bfad_iocmd_handler.exit.thread1165_crit_edge, label %lor.lhs.false.i220

if.end.i217.bfad_iocmd_handler.exit.thread1165_crit_edge: ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_handler.exit.thread1165

lor.lhs.false.i220:                               ; preds = %if.end.i217
  %topology13.i218 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 6
  %976 = ptrtoint ptr %topology13.i218 to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load i32, ptr %topology13.i218, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %977)
  %cmp14.i219 = icmp eq i32 %977, 2
  br i1 %cmp14.i219, label %lor.lhs.false.i220.bfad_iocmd_handler.exit.thread1165_crit_edge, label %if.else.i221

lor.lhs.false.i220.bfad_iocmd_handler.exit.thread1165_crit_edge: ; preds = %lor.lhs.false.i220
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_handler.exit.thread1165

if.else.i221:                                     ; preds = %lor.lhs.false.i220
  %978 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %978, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %5, label %if.else.i221.if.end34.i_crit_edge [
    i32 103, label %if.else.i221.if.end34.sink.split.i_crit_edge
    i32 104, label %if.then26.i
  ]

if.else.i221.if.end34.sink.split.i_crit_edge:     ; preds = %if.else.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.sink.split.i

if.else.i221.if.end34.i_crit_edge:                ; preds = %if.else.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then26.i:                                      ; preds = %if.else.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.sink.split.i

if.end34.sink.split.i:                            ; preds = %if.then26.i, %if.else.i221.if.end34.sink.split.i_crit_edge
  %.sink64.i = phi i32 [ 0, %if.then26.i ], [ 2, %if.else.i221.if.end34.sink.split.i_crit_edge ]
  %.sink.i = phi i8 [ 0, %if.then26.i ], [ 1, %if.else.i221.if.end34.sink.split.i_crit_edge ]
  %979 = ptrtoint ptr %trunk2.i211 to i32
  call void @__asan_store4_noabort(i32 %979)
  store i32 %.sink64.i, ptr %trunk2.i211, align 8
  %call30.i = tail call i32 @bfa_fcport_disable(ptr noundef %bfa.i210) #11
  %trunked32.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 2
  %980 = ptrtoint ptr %trunked32.i to i32
  call void @__asan_store1_noabort(i32 %980)
  store i8 %.sink.i, ptr %trunked32.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end34.sink.split.i, %if.else.i221.if.end34.i_crit_edge
  %call36.i = tail call i32 @bfa_fcport_is_disabled(ptr noundef %bfa.i210) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end34.i.bfad_iocmd_handler.exit.thread1165_crit_edge

if.end34.i.bfad_iocmd_handler.exit.thread1165_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_handler.exit.thread1165

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %call40.i = tail call i32 @bfa_fcport_enable(ptr noundef %bfa.i210) #11
  br label %bfad_iocmd_handler.exit.thread1165

bfad_iocmd_handler.exit.thread1165:               ; preds = %if.then38.i, %if.end34.i.bfad_iocmd_handler.exit.thread1165_crit_edge, %lor.lhs.false.i220.bfad_iocmd_handler.exit.thread1165_crit_edge, %if.end.i217.bfad_iocmd_handler.exit.thread1165_crit_edge
  %storemerge.i222 = phi i32 [ 230, %lor.lhs.false.i220.bfad_iocmd_handler.exit.thread1165_crit_edge ], [ 230, %if.end.i217.bfad_iocmd_handler.exit.thread1165_crit_edge ], [ 0, %if.then38.i ], [ 0, %if.end34.i.bfad_iocmd_handler.exit.thread1165_crit_edge ]
  %981 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %981)
  store i32 %storemerge.i222, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i212, i32 noundef %call4.i213) #11
  br label %if.end14

sw.bb189.i:                                       ; preds = %if.end
  %bfa.i201 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %trunk2.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 40
  %bfad_lock.i202 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i202) #11
  %cfg.i203 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11
  %982 = ptrtoint ptr %cfg.i203 to i32
  call void @__asan_load1_noabort(i32 %982)
  %983 = load i8, ptr %cfg.i203, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %983)
  %cmp8.i204 = icmp eq i8 %983, 2
  br i1 %cmp8.i204, label %sw.bb189.i.bfad_iocmd_trunk_get_attr.exit_crit_edge, label %lor.lhs.false.i

sw.bb189.i.bfad_iocmd_trunk_get_attr.exit_crit_edge: ; preds = %sw.bb189.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_trunk_get_attr.exit

lor.lhs.false.i:                                  ; preds = %sw.bb189.i
  %topology10.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 6
  %984 = ptrtoint ptr %topology10.i to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load i32, ptr %topology10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %985)
  %cmp11.i205 = icmp eq i32 %985, 2
  br i1 %cmp11.i205, label %lor.lhs.false.i.bfad_iocmd_trunk_get_attr.exit_crit_edge, label %if.else.i207

lor.lhs.false.i.bfad_iocmd_trunk_get_attr.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_trunk_get_attr.exit

if.else.i207:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %attr.i206 = getelementptr inbounds %struct.bfa_bsg_trunk_attr_s, ptr %call9.i.i, i32 0, i32 3
  %986 = call ptr @memcpy(ptr %attr.i206, ptr %trunk2.i, i32 64)
  %call15.i = tail call i32 @bfa_lps_get_base_pid(ptr noundef %bfa.i201) #11
  %port_id.i = getelementptr inbounds %struct.bfa_bsg_trunk_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 2
  %987 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store4_noabort(i32 %987)
  store i32 %call15.i, ptr %port_id.i, align 16
  br label %bfad_iocmd_trunk_get_attr.exit

bfad_iocmd_trunk_get_attr.exit:                   ; preds = %if.else.i207, %lor.lhs.false.i.bfad_iocmd_trunk_get_attr.exit_crit_edge, %sw.bb189.i.bfad_iocmd_trunk_get_attr.exit_crit_edge
  %storemerge.i208 = phi i32 [ 0, %if.else.i207 ], [ 230, %lor.lhs.false.i.bfad_iocmd_trunk_get_attr.exit_crit_edge ], [ 230, %sw.bb189.i.bfad_iocmd_trunk_get_attr.exit_crit_edge ]
  %988 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %988)
  store i32 %storemerge.i208, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i202, i32 noundef %call4.i) #11
  br label %if.end14

sw.bb191.i:                                       ; preds = %if.end.sw.bb191.i_crit_edge, %if.end.sw.bb191.i_crit_edge1198
  %bfad_lock.i189 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i190 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i189) #11
  %ioc.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3
  %call7.i191 = tail call i32 @bfa_ioc_get_type(ptr noundef %ioc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i191)
  %cmp8.i192 = icmp eq i32 %call7.i191, 1
  br i1 %cmp8.i192, label %if.then.i194, label %sw.bb191.i.bfad_iocmd_qos.exit_crit_edge

sw.bb191.i.bfad_iocmd_qos.exit_crit_edge:         ; preds = %sw.bb191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_qos.exit

if.then.i194:                                     ; preds = %sw.bb191.i
  %cfg.i193 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11
  %989 = ptrtoint ptr %cfg.i193 to i32
  call void @__asan_load1_noabort(i32 %989)
  %990 = load i8, ptr %cfg.i193, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %990)
  %cmp11.i = icmp eq i8 %990, 2
  br i1 %cmp11.i, label %land.lhs.true.i196, label %if.then.i194.if.else.i197_crit_edge

if.then.i194.if.else.i197_crit_edge:              ; preds = %if.then.i194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i197

land.lhs.true.i196:                               ; preds = %if.then.i194
  %topology13.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 6
  %991 = ptrtoint ptr %topology13.i to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load i32, ptr %topology13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %992)
  %cmp14.i195 = icmp eq i32 %992, 2
  br i1 %cmp14.i195, label %if.then16.i, label %land.lhs.true.i196.if.else.i197_crit_edge

land.lhs.true.i196.if.else.i197_crit_edge:        ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i197

if.then16.i:                                      ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #13
  %993 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %993)
  store i32 230, ptr %call9.i.i, align 128
  br label %bfad_iocmd_qos.exit

if.else.i197:                                     ; preds = %land.lhs.true.i196.if.else.i197_crit_edge, %if.then.i194.if.else.i197_crit_edge
  %994 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %994, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %5, label %if.else.i197.bfad_iocmd_qos.exit_crit_edge [
    i32 106, label %if.then19.i
    i32 107, label %if.then24.i
  ]

if.else.i197.bfad_iocmd_qos.exit_crit_edge:       ; preds = %if.else.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_qos.exit

if.then19.i:                                      ; preds = %if.else.i197
  call void @__sanitizer_cov_trace_pc() #13
  %qos_enabled.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 3
  %995 = ptrtoint ptr %qos_enabled.i to i32
  call void @__asan_store1_noabort(i32 %995)
  store i8 1, ptr %qos_enabled.i, align 1
  br label %bfad_iocmd_qos.exit

if.then24.i:                                      ; preds = %if.else.i197
  call void @__sanitizer_cov_trace_pc() #13
  %qos_enabled26.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 3
  %996 = ptrtoint ptr %qos_enabled26.i to i32
  call void @__asan_store1_noabort(i32 %996)
  store i8 0, ptr %qos_enabled26.i, align 1
  %high.i198 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 17, i32 1
  %997 = ptrtoint ptr %high.i198 to i32
  call void @__asan_store1_noabort(i32 %997)
  store i8 60, ptr %high.i198, align 1
  %med.i199 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 17, i32 2
  %998 = ptrtoint ptr %med.i199 to i32
  call void @__asan_store1_noabort(i32 %998)
  store i8 30, ptr %med.i199, align 1
  %low.i200 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 17, i32 3
  %999 = ptrtoint ptr %low.i200 to i32
  call void @__asan_store1_noabort(i32 %999)
  store i8 10, ptr %low.i200, align 1
  br label %bfad_iocmd_qos.exit

bfad_iocmd_qos.exit:                              ; preds = %if.then24.i, %if.then19.i, %if.else.i197.bfad_iocmd_qos.exit_crit_edge, %if.then16.i, %sw.bb191.i.bfad_iocmd_qos.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i189, i32 noundef %call3.i190) #11
  br label %if.end14

sw.bb193.i:                                       ; preds = %if.end
  %bfad_lock.i181 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i182 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i181) #11
  %cfg.i183 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11
  %1000 = ptrtoint ptr %cfg.i183 to i32
  call void @__asan_load1_noabort(i32 %1000)
  %1001 = load i8, ptr %cfg.i183, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1001)
  %cmp7.i = icmp eq i8 %1001, 2
  br i1 %cmp7.i, label %land.lhs.true.i184, label %sw.bb193.i.if.else.i186_crit_edge

sw.bb193.i.if.else.i186_crit_edge:                ; preds = %sw.bb193.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i186

land.lhs.true.i184:                               ; preds = %sw.bb193.i
  %topology9.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 6
  %1002 = ptrtoint ptr %topology9.i to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load i32, ptr %topology9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1003)
  %cmp10.i = icmp eq i32 %1003, 2
  br i1 %cmp10.i, label %land.lhs.true.i184.bfad_iocmd_qos_get_attr.exit_crit_edge, label %land.lhs.true.i184.if.else.i186_crit_edge

land.lhs.true.i184.if.else.i186_crit_edge:        ; preds = %land.lhs.true.i184
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i186

land.lhs.true.i184.bfad_iocmd_qos_get_attr.exit_crit_edge: ; preds = %land.lhs.true.i184
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_qos_get_attr.exit

if.else.i186:                                     ; preds = %land.lhs.true.i184.if.else.i186_crit_edge, %sw.bb193.i.if.else.i186_crit_edge
  %qos_attr.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 14
  %1004 = ptrtoint ptr %qos_attr.i to i32
  call void @__asan_load1_noabort(i32 %1004)
  %1005 = load i8, ptr %qos_attr.i, align 8
  %attr.i185 = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, ptr %call9.i.i, i32 0, i32 3
  %1006 = ptrtoint ptr %attr.i185 to i32
  call void @__asan_store1_noabort(i32 %1006)
  store i8 %1005, ptr %attr.i185, align 8
  %total_bb_cr.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 14, i32 2
  %1007 = ptrtoint ptr %total_bb_cr.i to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load i32, ptr %total_bb_cr.i, align 4
  %total_bb_cr15.i = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 2
  %1009 = ptrtoint ptr %total_bb_cr15.i to i32
  call void @__asan_store4_noabort(i32 %1009)
  store i32 %1008, ptr %total_bb_cr15.i, align 4
  %high.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 17, i32 1
  %1010 = ptrtoint ptr %high.i to i32
  call void @__asan_load1_noabort(i32 %1010)
  %1011 = load i8, ptr %high.i, align 1
  %high19.i = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3, i32 1
  %1012 = ptrtoint ptr %high19.i to i32
  call void @__asan_store1_noabort(i32 %1012)
  store i8 %1011, ptr %high19.i, align 1
  %med.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 17, i32 2
  %1013 = ptrtoint ptr %med.i to i32
  call void @__asan_load1_noabort(i32 %1013)
  %1014 = load i8, ptr %med.i, align 1
  %med24.i = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3, i32 2
  %1015 = ptrtoint ptr %med24.i to i32
  call void @__asan_store1_noabort(i32 %1015)
  store i8 %1014, ptr %med24.i, align 2
  %low.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11, i32 17, i32 3
  %1016 = ptrtoint ptr %low.i to i32
  call void @__asan_load1_noabort(i32 %1016)
  %1017 = load i8, ptr %low.i, align 1
  %low29.i = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3, i32 3
  %1018 = ptrtoint ptr %low29.i to i32
  call void @__asan_store1_noabort(i32 %1018)
  store i8 %1017, ptr %low29.i, align 1
  %qos_bw_op.i = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 4
  %qos_bw_op32.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 14, i32 4
  %1019 = ptrtoint ptr %qos_bw_op32.i to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load i32, ptr %qos_bw_op32.i, align 4
  %1021 = ptrtoint ptr %qos_bw_op.i to i32
  call void @__asan_store4_noabort(i32 %1021)
  store i32 %1020, ptr %qos_bw_op.i, align 4
  br label %bfad_iocmd_qos_get_attr.exit

bfad_iocmd_qos_get_attr.exit:                     ; preds = %if.else.i186, %land.lhs.true.i184.bfad_iocmd_qos_get_attr.exit_crit_edge
  %storemerge.i187 = phi i32 [ 0, %if.else.i186 ], [ 230, %land.lhs.true.i184.bfad_iocmd_qos_get_attr.exit_crit_edge ]
  %1022 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1022)
  store i32 %storemerge.i187, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i181, i32 noundef %call3.i182) #11
  br label %if.end14

sw.bb195.i:                                       ; preds = %if.end
  %qos_vc_attr.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 15
  %bfad_lock.i179 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i180 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i179) #11
  %1023 = ptrtoint ptr %qos_vc_attr.i to i32
  call void @__asan_loadN_noabort(i32 %1023, i32 2)
  %1024 = load i16, ptr %qos_vc_attr.i, align 1
  %attr.i = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, ptr %call9.i.i, i32 0, i32 3
  %1025 = ptrtoint ptr %attr.i to i32
  call void @__asan_store2_noabort(i32 %1025)
  store i16 %1024, ptr %attr.i, align 8
  %shared_credit.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 15, i32 1
  %1026 = ptrtoint ptr %shared_credit.i to i32
  call void @__asan_loadN_noabort(i32 %1026, i32 2)
  %1027 = load i16, ptr %shared_credit.i, align 1
  %shared_credit8.i = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 1
  %1028 = ptrtoint ptr %shared_credit8.i to i32
  call void @__asan_store2_noabort(i32 %1028)
  store i16 %1027, ptr %shared_credit8.i, align 2
  %elp_opmode_flags.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 15, i32 2
  %1029 = ptrtoint ptr %elp_opmode_flags.i to i32
  call void @__asan_loadN_noabort(i32 %1029, i32 4)
  %1030 = load i32, ptr %elp_opmode_flags.i, align 1
  %elp_opmode_flags10.i = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 2
  %1031 = ptrtoint ptr %elp_opmode_flags10.i to i32
  call void @__asan_store4_noabort(i32 %1031)
  store i32 %1030, ptr %elp_opmode_flags10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1024)
  %cmp142.not.i = icmp eq i16 %1024, 0
  br i1 %cmp142.not.i, label %sw.bb195.i.bfad_iocmd_qos_get_vc_attr.exit_crit_edge, label %sw.bb195.i.while.body.i_crit_edge

sw.bb195.i.while.body.i_crit_edge:                ; preds = %sw.bb195.i
  br label %while.body.i

sw.bb195.i.bfad_iocmd_qos_get_vc_attr.exit_crit_edge: ; preds = %sw.bb195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_qos_get_vc_attr.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.bb195.i.while.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %sw.bb195.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 15, i32 3, i32 %i.03.i
  %1032 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1032)
  %1033 = load i8, ptr %arrayidx.i, align 1
  %arrayidx18.i = getelementptr %struct.bfa_bsg_qos_vc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3, i32 %i.03.i
  %1034 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %1034)
  store i8 %1033, ptr %arrayidx18.i, align 4
  %borrow_credit.i = getelementptr %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 15, i32 3, i32 %i.03.i, i32 1
  %1035 = ptrtoint ptr %borrow_credit.i to i32
  call void @__asan_load1_noabort(i32 %1035)
  %1036 = load i8, ptr %borrow_credit.i, align 1
  %borrow_credit25.i = getelementptr %struct.bfa_bsg_qos_vc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3, i32 %i.03.i, i32 1
  %1037 = ptrtoint ptr %borrow_credit25.i to i32
  call void @__asan_store1_noabort(i32 %1037)
  store i8 %1036, ptr %borrow_credit25.i, align 1
  %priority.i = getelementptr %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 15, i32 3, i32 %i.03.i, i32 2
  %1038 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %1038)
  %1039 = load i8, ptr %priority.i, align 1
  %priority31.i = getelementptr %struct.bfa_bsg_qos_vc_attr_s, ptr %call9.i.i, i32 0, i32 3, i32 3, i32 %i.03.i, i32 2
  %1040 = ptrtoint ptr %priority31.i to i32
  call void @__asan_store1_noabort(i32 %1040)
  store i8 %1039, ptr %priority31.i, align 2
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %1041 = ptrtoint ptr %attr.i to i32
  call void @__asan_load2_noabort(i32 %1041)
  %1042 = load i16, ptr %attr.i, align 8
  %conv13.i = zext i16 %1042 to i32
  %cmp14.i = icmp ult i32 %inc.i, %conv13.i
  br i1 %cmp14.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.bfad_iocmd_qos_get_vc_attr.exit_crit_edge

while.body.i.bfad_iocmd_qos_get_vc_attr.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_qos_get_vc_attr.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

bfad_iocmd_qos_get_vc_attr.exit:                  ; preds = %while.body.i.bfad_iocmd_qos_get_vc_attr.exit_crit_edge, %sw.bb195.i.bfad_iocmd_qos_get_vc_attr.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i179, i32 noundef %call3.i180) #11
  %1043 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1043)
  store i32 0, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb197.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i153) #11
  %1044 = call ptr @memset(ptr %fcomp.i153, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cb_qe.i154) #11
  %1045 = getelementptr inbounds %struct.list_head, ptr %cb_qe.i154, i32 0, i32 1
  %1046 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i154, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i154, i32 0, i32 3
  %1048 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i154, i32 0, i32 5
  %1049 = getelementptr inbounds %struct.bfa_cb_pending_q_s, ptr %cb_qe.i154, i32 0, i32 1
  %bfa.i155 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %comp.i156 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i153, i32 0, i32 1
  %1050 = getelementptr inbounds i8, ptr %cb_qe.i154, i32 12
  %1051 = call ptr @memset(ptr %1050, i32 255, i32 12)
  %1052 = ptrtoint ptr %comp.i156 to i32
  call void @__asan_store4_noabort(i32 %1052)
  store i32 0, ptr %comp.i156, align 4
  %wait.i.i157 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i153, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i157, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %1053 = ptrtoint ptr %cb_qe.i154 to i32
  call void @__asan_store4_noabort(i32 %1053)
  store ptr null, ptr %cb_qe.i154, align 4
  %1054 = ptrtoint ptr %1045 to i32
  call void @__asan_store4_noabort(i32 %1054)
  store ptr null, ptr %1045, align 4
  %1055 = ptrtoint ptr %1046 to i32
  call void @__asan_store4_noabort(i32 %1055)
  store ptr @bfad_hcb_comp, ptr %1046, align 4
  %1056 = ptrtoint ptr %1048 to i32
  call void @__asan_store4_noabort(i32 %1056)
  store ptr %fcomp.i153, ptr %1048, align 4
  %1057 = ptrtoint ptr %1047 to i32
  call void @__asan_store4_noabort(i32 %1057)
  store i32 1, ptr %1047, align 4
  %stats.i158 = getelementptr inbounds %struct.bfa_bsg_fcport_stats_s, ptr %call9.i.i, i32 0, i32 3
  %1058 = ptrtoint ptr %1049 to i32
  call void @__asan_store4_noabort(i32 %1058)
  store ptr %stats.i158, ptr %1049, align 4
  %bfad_lock.i159 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call9.i160 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i159) #11
  %fcmode.i161 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3, i32 16
  %1059 = ptrtoint ptr %fcmode.i161 to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load i32, ptr %fcmode.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1060)
  %tobool.not.i162 = icmp eq i32 %1060, 0
  br i1 %tobool.not.i162, label %do.end26.i163, label %sw.bb197.i.if.end.i166_crit_edge, !prof !51

sw.bb197.i.if.end.i166_crit_edge:                 ; preds = %sw.bb197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i166

do.end26.i163:                                    ; preds = %sw.bb197.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2450, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i166

if.end.i166:                                      ; preds = %do.end26.i163, %sw.bb197.i.if.end.i166_crit_edge
  %cfg.i164 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11
  %1061 = ptrtoint ptr %cfg.i164 to i32
  call void @__asan_load1_noabort(i32 %1061)
  %1062 = load i8, ptr %cfg.i164, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1062)
  %cmp40.i165 = icmp eq i8 %1062, 2
  br i1 %cmp40.i165, label %land.lhs.true.i169, label %if.end.i166.if.else.i171_crit_edge

if.end.i166.if.else.i171_crit_edge:               ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i171

land.lhs.true.i169:                               ; preds = %if.end.i166
  %topology42.i167 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 6
  %1063 = ptrtoint ptr %topology42.i167 to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load i32, ptr %topology42.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1064)
  %cmp43.i168 = icmp eq i32 %1064, 2
  br i1 %cmp43.i168, label %land.lhs.true.i169.if.end49.i174_crit_edge, label %land.lhs.true.i169.if.else.i171_crit_edge

land.lhs.true.i169.if.else.i171_crit_edge:        ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i171

land.lhs.true.i169.if.end49.i174_crit_edge:       ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i174

if.else.i171:                                     ; preds = %land.lhs.true.i169.if.else.i171_crit_edge, %if.end.i166.if.else.i171_crit_edge
  %call47.i170 = call i32 @bfa_fcport_get_stats(ptr noundef %bfa.i155, ptr noundef nonnull %cb_qe.i154) #11
  br label %if.end49.i174

if.end49.i174:                                    ; preds = %if.else.i171, %land.lhs.true.i169.if.end49.i174_crit_edge
  %storemerge.i172 = phi i32 [ %call47.i170, %if.else.i171 ], [ 230, %land.lhs.true.i169.if.end49.i174_crit_edge ]
  %1065 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1065)
  store i32 %storemerge.i172, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i159, i32 noundef %call9.i160) #11
  %1066 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1067)
  %cmp52.not.i173 = icmp eq i32 %1067, 0
  br i1 %cmp52.not.i173, label %if.end57.i178, label %if.then54.i177

if.then54.i177:                                   ; preds = %if.end49.i174
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i175 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %1068 = ptrtoint ptr %trcmod.i175 to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %trcmod.i175, align 8
  %conv56.i176 = zext i32 %1067 to i64
  call void @__bfa_trc(ptr noundef %1069, i32 noundef 3075, i32 noundef 2458, i64 noundef %conv56.i176) #11
  br label %bfad_iocmd_qos_get_stats.exit

if.end57.i178:                                    ; preds = %if.end49.i174
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i156) #11
  %1070 = ptrtoint ptr %fcomp.i153 to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load i32, ptr %fcomp.i153, align 4
  %1072 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1072)
  store i32 %1071, ptr %call9.i.i, align 128
  br label %bfad_iocmd_qos_get_stats.exit

bfad_iocmd_qos_get_stats.exit:                    ; preds = %if.end57.i178, %if.then54.i177
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cb_qe.i154) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i153) #11
  br label %if.end14

sw.bb199.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i145) #11
  %1073 = call ptr @memset(ptr %fcomp.i145, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cb_qe.i) #11
  %1074 = getelementptr inbounds %struct.list_head, ptr %cb_qe.i, i32 0, i32 1
  %1075 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i, i32 0, i32 1
  %1076 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i, i32 0, i32 3
  %1077 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %cb_qe.i, i32 0, i32 5
  %1078 = getelementptr inbounds %struct.bfa_cb_pending_q_s, ptr %cb_qe.i, i32 0, i32 1
  %bfa.i146 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %comp.i147 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i145, i32 0, i32 1
  %1079 = getelementptr inbounds i8, ptr %cb_qe.i, i32 12
  %1080 = call ptr @memset(ptr %1079, i32 255, i32 12)
  %1081 = ptrtoint ptr %comp.i147 to i32
  call void @__asan_store4_noabort(i32 %1081)
  store i32 0, ptr %comp.i147, align 4
  %wait.i.i148 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i145, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i148, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %1082 = ptrtoint ptr %cb_qe.i to i32
  call void @__asan_store4_noabort(i32 %1082)
  store ptr null, ptr %cb_qe.i, align 4
  %1083 = ptrtoint ptr %1074 to i32
  call void @__asan_store4_noabort(i32 %1083)
  store ptr null, ptr %1074, align 4
  %1084 = ptrtoint ptr %1075 to i32
  call void @__asan_store4_noabort(i32 %1084)
  store ptr @bfad_hcb_comp, ptr %1075, align 4
  %1085 = ptrtoint ptr %1077 to i32
  call void @__asan_store4_noabort(i32 %1085)
  store ptr %fcomp.i145, ptr %1077, align 4
  %1086 = ptrtoint ptr %1076 to i32
  call void @__asan_store4_noabort(i32 %1086)
  store i32 1, ptr %1076, align 4
  %1087 = ptrtoint ptr %1078 to i32
  call void @__asan_store4_noabort(i32 %1087)
  store ptr null, ptr %1078, align 4
  %bfad_lock.i149 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call9.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i149) #11
  %fcmode.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 3, i32 16
  %1088 = ptrtoint ptr %fcmode.i to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load i32, ptr %fcmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1089)
  %tobool.not.i150 = icmp eq i32 %1089, 0
  br i1 %tobool.not.i150, label %do.end26.i, label %sw.bb199.i.if.end.i151_crit_edge, !prof !51

sw.bb199.i.if.end.i151_crit_edge:                 ; preds = %sw.bb199.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i151

do.end26.i:                                       ; preds = %sw.bb199.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2481, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i151

if.end.i151:                                      ; preds = %do.end26.i, %sw.bb199.i.if.end.i151_crit_edge
  %cfg.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 11
  %1090 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load1_noabort(i32 %1090)
  %1091 = load i8, ptr %cfg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1091)
  %cmp40.i = icmp eq i8 %1091, 2
  br i1 %cmp40.i, label %land.lhs.true.i, label %if.end.i151.if.else.i_crit_edge

if.end.i151.if.else.i_crit_edge:                  ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i151
  %topology42.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 1, i32 6
  %1092 = ptrtoint ptr %topology42.i to i32
  call void @__asan_load4_noabort(i32 %1092)
  %1093 = load i32, ptr %topology42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1093)
  %cmp43.i = icmp eq i32 %1093, 2
  br i1 %cmp43.i, label %land.lhs.true.i.if.end49.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.if.end49.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i151.if.else.i_crit_edge
  %call47.i = call i32 @bfa_fcport_clear_stats(ptr noundef %bfa.i146, ptr noundef nonnull %cb_qe.i) #11
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %land.lhs.true.i.if.end49.i_crit_edge
  %storemerge.i152 = phi i32 [ %call47.i, %if.else.i ], [ 230, %land.lhs.true.i.if.end49.i_crit_edge ]
  %1094 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1094)
  store i32 %storemerge.i152, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i149, i32 noundef %call9.i) #11
  %1095 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1096)
  %cmp52.not.i = icmp eq i32 %1096, 0
  br i1 %cmp52.not.i, label %if.end57.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 30
  %1097 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %1097)
  %1098 = load ptr, ptr %trcmod.i, align 8
  %conv56.i = zext i32 %1096 to i64
  call void @__bfa_trc(ptr noundef %1098, i32 noundef 3075, i32 noundef 2489, i64 noundef %conv56.i) #11
  br label %bfad_iocmd_qos_reset_stats.exit

if.end57.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i147) #11
  %1099 = ptrtoint ptr %fcomp.i145 to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load i32, ptr %fcomp.i145, align 4
  %1101 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1101)
  store i32 %1100, ptr %call9.i.i, align 128
  br label %bfad_iocmd_qos_reset_stats.exit

bfad_iocmd_qos_reset_stats.exit:                  ; preds = %if.end57.i, %if.then54.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cb_qe.i) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i145) #11
  br label %if.end14

sw.bb201.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i141 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i142 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i141) #11
  %bfa.i143 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %qos_bw.i = getelementptr inbounds %struct.bfa_bsg_qos_bw_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i144 = tail call i32 @bfa_fcport_set_qos_bw(ptr noundef %bfa.i143, ptr noundef %qos_bw.i) #11
  %1102 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1102)
  store i32 %call5.i144, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i141, i32 noundef %call2.i142) #11
  br label %if.end14

sw.bb203.i:                                       ; preds = %if.end
  %bfad_lock.i132 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i133 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i132) #11
  %bfa_fcs.i134 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i135 = getelementptr inbounds %struct.bfa_bsg_vf_stats_s, ptr %call9.i.i, i32 0, i32 2
  %1103 = ptrtoint ptr %vf_id.i135 to i32
  call void @__asan_load2_noabort(i32 %1103)
  %1104 = load i16, ptr %vf_id.i135, align 2
  %call5.i136 = tail call ptr @bfa_fcs_vf_lookup(ptr noundef %bfa_fcs.i134, i16 noundef zeroext %1104) #11
  %cmp6.i137 = icmp eq ptr %call5.i136, null
  br i1 %cmp6.i137, label %sw.bb203.i.bfad_iocmd_vf_get_stats.exit_crit_edge, label %if.end.i139

sw.bb203.i.bfad_iocmd_vf_get_stats.exit_crit_edge: ; preds = %sw.bb203.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_vf_get_stats.exit

if.end.i139:                                      ; preds = %sw.bb203.i
  call void @__sanitizer_cov_trace_pc() #13
  %stats.i138 = getelementptr inbounds %struct.bfa_bsg_vf_stats_s, ptr %call9.i.i, i32 0, i32 3
  %stats9.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %call5.i136, i32 0, i32 22
  %1105 = call ptr @memcpy(ptr %stats.i138, ptr %stats9.i, i32 48)
  br label %bfad_iocmd_vf_get_stats.exit

bfad_iocmd_vf_get_stats.exit:                     ; preds = %if.end.i139, %sw.bb203.i.bfad_iocmd_vf_get_stats.exit_crit_edge
  %storemerge.i140 = phi i32 [ 0, %if.end.i139 ], [ 11, %sw.bb203.i.bfad_iocmd_vf_get_stats.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i132, i32 noundef %call2.i133) #11
  %1106 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1106)
  store i32 %storemerge.i140, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb205.i:                                       ; preds = %if.end
  %bfad_lock.i127 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i128 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i127) #11
  %bfa_fcs.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 3
  %vf_id.i129 = getelementptr inbounds %struct.bfa_bsg_vf_reset_stats_s, ptr %call9.i.i, i32 0, i32 2
  %1107 = ptrtoint ptr %vf_id.i129 to i32
  call void @__asan_load2_noabort(i32 %1107)
  %1108 = load i16, ptr %vf_id.i129, align 2
  %call5.i130 = tail call ptr @bfa_fcs_vf_lookup(ptr noundef %bfa_fcs.i, i16 noundef zeroext %1108) #11
  %cmp6.i = icmp eq ptr %call5.i130, null
  br i1 %cmp6.i, label %sw.bb205.i.bfad_iocmd_vf_clr_stats.exit_crit_edge, label %if.end.i131

sw.bb205.i.bfad_iocmd_vf_clr_stats.exit_crit_edge: ; preds = %sw.bb205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_vf_clr_stats.exit

if.end.i131:                                      ; preds = %sw.bb205.i
  call void @__sanitizer_cov_trace_pc() #13
  %stats.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %call5.i130, i32 0, i32 22
  %1109 = call ptr @memset(ptr %stats.i, i32 0, i32 48)
  br label %bfad_iocmd_vf_clr_stats.exit

bfad_iocmd_vf_clr_stats.exit:                     ; preds = %if.end.i131, %sw.bb205.i.bfad_iocmd_vf_clr_stats.exit_crit_edge
  %storemerge.i = phi i32 [ 0, %if.end.i131 ], [ 11, %sw.bb205.i.bfad_iocmd_vf_clr_stats.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i127, i32 noundef %call2.i128) #11
  %1110 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1110)
  store i32 %storemerge.i, ptr %call9.i.i, align 128
  br label %if.end14

sw.bb207.i:                                       ; preds = %if.end.sw.bb207.i_crit_edge, %if.end.sw.bb207.i_crit_edge1199, %if.end.sw.bb207.i_crit_edge1200
  %bfad_lock.i481.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i482.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i481.i) #11
  %1111 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1111, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %5, label %sw.bb207.i.bfad_iocmd_lunmask.exit.i_crit_edge [
    i32 114, label %if.then.i485.i
    i32 115, label %if.then14.i486.i
    i32 116, label %if.then26.i.i
  ]

sw.bb207.i.bfad_iocmd_lunmask.exit.i_crit_edge:   ; preds = %sw.bb207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_lunmask.exit.i

if.then.i485.i:                                   ; preds = %sw.bb207.i
  %bfa.i483.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call7.i484.i = tail call i32 @bfa_fcpim_lunmask_update(ptr noundef %bfa.i483.i, i32 noundef 1) #11
  %1112 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1112)
  store i32 %call7.i484.i, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i484.i)
  %cmp9.i.i = icmp eq i32 %call7.i484.i, 0
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.then.i485.i.bfad_iocmd_lunmask.exit.i_crit_edge

if.then.i485.i.bfad_iocmd_lunmask.exit.i_crit_edge: ; preds = %if.then.i485.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_lunmask.exit.i

if.then11.i.i:                                    ; preds = %if.then.i485.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bfad_iocmd_lunmask_reset_lunscan_mode(ptr noundef %19, i32 noundef 1) #11
  br label %bfad_iocmd_lunmask.exit.i

if.then14.i486.i:                                 ; preds = %sw.bb207.i
  %bfa15.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call16.i.i = tail call i32 @bfa_fcpim_lunmask_update(ptr noundef %bfa15.i.i, i32 noundef 0) #11
  %1113 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1113)
  store i32 %call16.i.i, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp19.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.then14.i486.i.bfad_iocmd_lunmask.exit.i_crit_edge

if.then14.i486.i.bfad_iocmd_lunmask.exit.i_crit_edge: ; preds = %if.then14.i486.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_lunmask.exit.i

if.then21.i.i:                                    ; preds = %if.then14.i486.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bfad_iocmd_lunmask_reset_lunscan_mode(ptr noundef %19, i32 noundef 0) #11
  br label %bfad_iocmd_lunmask.exit.i

if.then26.i.i:                                    ; preds = %sw.bb207.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa27.i.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call28.i.i = tail call i32 @bfa_fcpim_lunmask_clear(ptr noundef %bfa27.i.i) #11
  %1114 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1114)
  store i32 %call28.i.i, ptr %call9.i.i, align 128
  br label %bfad_iocmd_lunmask.exit.i

bfad_iocmd_lunmask.exit.i:                        ; preds = %if.then26.i.i, %if.then21.i.i, %if.then14.i486.i.bfad_iocmd_lunmask.exit.i_crit_edge, %if.then11.i.i, %if.then.i485.i.bfad_iocmd_lunmask.exit.i_crit_edge, %sw.bb207.i.bfad_iocmd_lunmask.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i481.i, i32 noundef %call2.i482.i) #11
  br label %if.end14

sw.bb209.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %lun_mask1.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_query_s, ptr %call9.i.i, i32 0, i32 2
  %bfad_lock.i125 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i125) #11
  %bfa.i126 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %call6.i = tail call i32 @bfa_fcpim_lunmask_query(ptr noundef %bfa.i126, ptr noundef %lun_mask1.i) #11
  %1115 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1115)
  store i32 %call6.i, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i125, i32 noundef %call3.i) #11
  br label %if.end14

sw.bb211.i:                                       ; preds = %if.end.sw.bb211.i_crit_edge, %if.end.sw.bb211.i_crit_edge1201
  %bfad_lock.i121 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i122 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i121) #11
  %1116 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1116, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %5, label %sw.bb211.i.bfad_iocmd_fcpim_cfg_lunmask.exit_crit_edge [
    i32 118, label %if.then.i124
    i32 119, label %if.then10.i
  ]

sw.bb211.i.bfad_iocmd_fcpim_cfg_lunmask.exit_crit_edge: ; preds = %sw.bb211.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_fcpim_cfg_lunmask.exit

if.then.i124:                                     ; preds = %sw.bb211.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa.i123 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %vf_id.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, ptr %call9.i.i, i32 0, i32 2
  %1117 = ptrtoint ptr %vf_id.i to i32
  call void @__asan_load2_noabort(i32 %1117)
  %1118 = load i16, ptr %vf_id.i, align 2
  %pwwn.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, ptr %call9.i.i, i32 0, i32 3
  %rpwwn.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, ptr %call9.i.i, i32 0, i32 4
  %1119 = ptrtoint ptr %rpwwn.i to i32
  call void @__asan_load8_noabort(i32 %1119)
  %1120 = load i64, ptr %rpwwn.i, align 16
  %lun.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, ptr %call9.i.i, i32 0, i32 5
  %1121 = ptrtoint ptr %lun.i to i32
  call void @__asan_load4_noabort(i32 %1121)
  %.unpack3.i = load i32, ptr %lun.i, align 8
  %1122 = insertvalue [2 x i32] undef, i32 %.unpack3.i, 0
  %.elt4.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 4
  %1123 = ptrtoint ptr %.elt4.i to i32
  call void @__asan_load4_noabort(i32 %1123)
  %.unpack5.i = load i32, ptr %.elt4.i, align 4
  %1124 = insertvalue [2 x i32] %1122, i32 %.unpack5.i, 1
  %call7.i = tail call i32 @bfa_fcpim_lunmask_add(ptr noundef %bfa.i123, i16 noundef zeroext %1118, ptr noundef %pwwn.i, i64 noundef %1120, [2 x i32] %1124) #11
  br label %if.end19.sink.split.i

if.then10.i:                                      ; preds = %sw.bb211.i
  call void @__sanitizer_cov_trace_pc() #13
  %bfa11.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %vf_id12.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, ptr %call9.i.i, i32 0, i32 2
  %1125 = ptrtoint ptr %vf_id12.i to i32
  call void @__asan_load2_noabort(i32 %1125)
  %1126 = load i16, ptr %vf_id12.i, align 2
  %pwwn13.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, ptr %call9.i.i, i32 0, i32 3
  %rpwwn14.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, ptr %call9.i.i, i32 0, i32 4
  %1127 = ptrtoint ptr %rpwwn14.i to i32
  call void @__asan_load8_noabort(i32 %1127)
  %1128 = load i64, ptr %rpwwn14.i, align 16
  %lun15.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, ptr %call9.i.i, i32 0, i32 5
  %1129 = ptrtoint ptr %lun15.i to i32
  call void @__asan_load4_noabort(i32 %1129)
  %.unpack.i = load i32, ptr %lun15.i, align 8
  %1130 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %.elt1.i = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 4
  %1131 = ptrtoint ptr %.elt1.i to i32
  call void @__asan_load4_noabort(i32 %1131)
  %.unpack2.i = load i32, ptr %.elt1.i, align 4
  %1132 = insertvalue [2 x i32] %1130, i32 %.unpack2.i, 1
  %call17.i = tail call i32 @bfa_fcpim_lunmask_delete(ptr noundef %bfa11.i, i16 noundef zeroext %1126, ptr noundef %pwwn13.i, i64 noundef %1128, [2 x i32] %1132) #11
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.then10.i, %if.then.i124
  %call17.sink.i = phi i32 [ %call17.i, %if.then10.i ], [ %call7.i, %if.then.i124 ]
  %1133 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1133)
  store i32 %call17.sink.i, ptr %call9.i.i, align 128
  br label %bfad_iocmd_fcpim_cfg_lunmask.exit

bfad_iocmd_fcpim_cfg_lunmask.exit:                ; preds = %if.end19.sink.split.i, %sw.bb211.i.bfad_iocmd_fcpim_cfg_lunmask.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i121, i32 noundef %call2.i122) #11
  br label %if.end14

sw.bb213.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i117 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i117) #11
  %bfa.i119 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %throttle.i = getelementptr inbounds %struct.bfa_bsg_fcpim_throttle_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i120 = tail call i32 @bfa_fcpim_throttle_get(ptr noundef %bfa.i119, ptr noundef %throttle.i) #11
  %1134 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1134)
  store i32 %call5.i120, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i117, i32 noundef %call2.i118) #11
  br label %if.end14

sw.bb215.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i114 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i114) #11
  %bfa.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2
  %cfg_value.i = getelementptr inbounds %struct.bfa_bsg_fcpim_throttle_s, ptr %call9.i.i, i32 0, i32 3, i32 2
  %1135 = ptrtoint ptr %cfg_value.i to i32
  call void @__asan_load2_noabort(i32 %1135)
  %1136 = load i16, ptr %cfg_value.i, align 4
  %call5.i116 = tail call i32 @bfa_fcpim_throttle_set(ptr noundef %bfa.i, i16 noundef zeroext %1136) #11
  %1137 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1137)
  store i32 %call5.i116, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i114, i32 noundef %call2.i115) #11
  br label %if.end14

sw.bb217.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i101) #11
  %1138 = call ptr @memset(ptr %fcomp.i101, i32 255, i32 60)
  %comp.i102 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i101, i32 0, i32 1
  %1139 = ptrtoint ptr %comp.i102 to i32
  call void @__asan_store4_noabort(i32 %1139)
  store i32 0, ptr %comp.i102, align 4
  %wait.i.i103 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i101, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i103, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i104 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i105 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i104) #11
  %fru.i106 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 16
  %data.i107 = getelementptr inbounds %struct.bfa_bsg_tfru_s, ptr %call9.i.i, i32 0, i32 5
  %len.i108 = getelementptr inbounds %struct.bfa_bsg_tfru_s, ptr %call9.i.i, i32 0, i32 4
  %1140 = ptrtoint ptr %len.i108 to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load i32, ptr %len.i108, align 4
  %offset.i109 = getelementptr inbounds %struct.bfa_bsg_tfru_s, ptr %call9.i.i, i32 0, i32 3
  %1142 = ptrtoint ptr %offset.i109 to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load i32, ptr %offset.i109, align 8
  %call5.i110 = call i32 @bfa_tfru_read(ptr noundef %fru.i106, ptr noundef %data.i107, i32 noundef %1141, i32 noundef %1143, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i101) #11
  %1144 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1144)
  store i32 %call5.i110, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i104, i32 noundef %call2.i105) #11
  %1145 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %1145)
  %1146 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1146)
  %cmp8.i111 = icmp eq i32 %1146, 0
  br i1 %cmp8.i111, label %if.then.i112, label %sw.bb217.i.bfad_iocmd_tfru_read.exit_crit_edge

sw.bb217.i.bfad_iocmd_tfru_read.exit_crit_edge:   ; preds = %sw.bb217.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_tfru_read.exit

if.then.i112:                                     ; preds = %sw.bb217.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i102) #11
  %1147 = ptrtoint ptr %fcomp.i101 to i32
  call void @__asan_load4_noabort(i32 %1147)
  %1148 = load i32, ptr %fcomp.i101, align 4
  %1149 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1149)
  store i32 %1148, ptr %call9.i.i, align 128
  br label %bfad_iocmd_tfru_read.exit

bfad_iocmd_tfru_read.exit:                        ; preds = %if.then.i112, %sw.bb217.i.bfad_iocmd_tfru_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i101) #11
  br label %if.end14

sw.bb219.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i88) #11
  %1150 = call ptr @memset(ptr %fcomp.i88, i32 255, i32 60)
  %comp.i89 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i88, i32 0, i32 1
  %1151 = ptrtoint ptr %comp.i89 to i32
  call void @__asan_store4_noabort(i32 %1151)
  store i32 0, ptr %comp.i89, align 4
  %wait.i.i90 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i88, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i90, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i91 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i92 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i91) #11
  %fru.i93 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 16
  %data.i94 = getelementptr inbounds %struct.bfa_bsg_tfru_s, ptr %call9.i.i, i32 0, i32 5
  %len.i95 = getelementptr inbounds %struct.bfa_bsg_tfru_s, ptr %call9.i.i, i32 0, i32 4
  %1152 = ptrtoint ptr %len.i95 to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load i32, ptr %len.i95, align 4
  %offset.i96 = getelementptr inbounds %struct.bfa_bsg_tfru_s, ptr %call9.i.i, i32 0, i32 3
  %1154 = ptrtoint ptr %offset.i96 to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load i32, ptr %offset.i96, align 8
  %call5.i97 = call i32 @bfa_tfru_write(ptr noundef %fru.i93, ptr noundef %data.i94, i32 noundef %1153, i32 noundef %1155, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i88) #11
  %1156 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1156)
  store i32 %call5.i97, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i91, i32 noundef %call2.i92) #11
  %1157 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1158)
  %cmp8.i98 = icmp eq i32 %1158, 0
  br i1 %cmp8.i98, label %if.then.i99, label %sw.bb219.i.bfad_iocmd_tfru_write.exit_crit_edge

sw.bb219.i.bfad_iocmd_tfru_write.exit_crit_edge:  ; preds = %sw.bb219.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_tfru_write.exit

if.then.i99:                                      ; preds = %sw.bb219.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i89) #11
  %1159 = ptrtoint ptr %fcomp.i88 to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load i32, ptr %fcomp.i88, align 4
  %1161 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1161)
  store i32 %1160, ptr %call9.i.i, align 128
  br label %bfad_iocmd_tfru_write.exit

bfad_iocmd_tfru_write.exit:                       ; preds = %if.then.i99, %sw.bb219.i.bfad_iocmd_tfru_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i88) #11
  br label %if.end14

sw.bb221.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i75) #11
  %1162 = call ptr @memset(ptr %fcomp.i75, i32 255, i32 60)
  %comp.i76 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i75, i32 0, i32 1
  %1163 = ptrtoint ptr %comp.i76 to i32
  call void @__asan_store4_noabort(i32 %1163)
  store i32 0, ptr %comp.i76, align 4
  %wait.i.i77 = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i75, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i77, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i78 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i79 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i78) #11
  %fru.i80 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 16
  %data.i81 = getelementptr inbounds %struct.bfa_bsg_fruvpd_s, ptr %call9.i.i, i32 0, i32 5
  %len.i82 = getelementptr inbounds %struct.bfa_bsg_fruvpd_s, ptr %call9.i.i, i32 0, i32 4
  %1164 = ptrtoint ptr %len.i82 to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load i32, ptr %len.i82, align 4
  %offset.i83 = getelementptr inbounds %struct.bfa_bsg_fruvpd_s, ptr %call9.i.i, i32 0, i32 3
  %1166 = ptrtoint ptr %offset.i83 to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load i32, ptr %offset.i83, align 8
  %call5.i84 = call i32 @bfa_fruvpd_read(ptr noundef %fru.i80, ptr noundef %data.i81, i32 noundef %1165, i32 noundef %1167, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i75) #11
  %1168 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1168)
  store i32 %call5.i84, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i78, i32 noundef %call2.i79) #11
  %1169 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %1169)
  %1170 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1170)
  %cmp8.i85 = icmp eq i32 %1170, 0
  br i1 %cmp8.i85, label %if.then.i86, label %sw.bb221.i.bfad_iocmd_fruvpd_read.exit_crit_edge

sw.bb221.i.bfad_iocmd_fruvpd_read.exit_crit_edge: ; preds = %sw.bb221.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_fruvpd_read.exit

if.then.i86:                                      ; preds = %sw.bb221.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i76) #11
  %1171 = ptrtoint ptr %fcomp.i75 to i32
  call void @__asan_load4_noabort(i32 %1171)
  %1172 = load i32, ptr %fcomp.i75, align 4
  %1173 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1173)
  store i32 %1172, ptr %call9.i.i, align 128
  br label %bfad_iocmd_fruvpd_read.exit

bfad_iocmd_fruvpd_read.exit:                      ; preds = %if.then.i86, %sw.bb221.i.bfad_iocmd_fruvpd_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i75) #11
  br label %if.end14

sw.bb223.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp.i) #11
  %1174 = call ptr @memset(ptr %fcomp.i, i32 255, i32 60)
  %comp.i = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i, i32 0, i32 1
  %1175 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %1175)
  store i32 0, ptr %comp.i, align 4
  %wait.i.i = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp.i, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i70 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i71 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i70) #11
  %fru.i72 = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 16
  %data.i = getelementptr inbounds %struct.bfa_bsg_fruvpd_s, ptr %call9.i.i, i32 0, i32 5
  %len.i = getelementptr inbounds %struct.bfa_bsg_fruvpd_s, ptr %call9.i.i, i32 0, i32 4
  %1176 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load i32, ptr %len.i, align 4
  %offset.i = getelementptr inbounds %struct.bfa_bsg_fruvpd_s, ptr %call9.i.i, i32 0, i32 3
  %1178 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %1178)
  %1179 = load i32, ptr %offset.i, align 8
  %trfr_cmpl.i = getelementptr inbounds %struct.bfa_bsg_fruvpd_s, ptr %call9.i.i, i32 0, i32 6
  %1180 = ptrtoint ptr %trfr_cmpl.i to i32
  call void @__asan_load1_noabort(i32 %1180)
  %1181 = load i8, ptr %trfr_cmpl.i, align 16
  %call5.i73 = call i32 @bfa_fruvpd_update(ptr noundef %fru.i72, ptr noundef %data.i, i32 noundef %1177, i32 noundef %1179, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp.i, i8 noundef zeroext %1181) #11
  %1182 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1182)
  store i32 %call5.i73, ptr %call9.i.i, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i70, i32 noundef %call2.i71) #11
  %1183 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %1183)
  %1184 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1184)
  %cmp8.i = icmp eq i32 %1184, 0
  br i1 %cmp8.i, label %if.then.i, label %sw.bb223.i.bfad_iocmd_fruvpd_update.exit_crit_edge

sw.bb223.i.bfad_iocmd_fruvpd_update.exit_crit_edge: ; preds = %sw.bb223.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_iocmd_fruvpd_update.exit

if.then.i:                                        ; preds = %sw.bb223.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %comp.i) #11
  %1185 = ptrtoint ptr %fcomp.i to i32
  call void @__asan_load4_noabort(i32 %1185)
  %1186 = load i32, ptr %fcomp.i, align 4
  %1187 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1187)
  store i32 %1186, ptr %call9.i.i, align 128
  br label %bfad_iocmd_fruvpd_update.exit

bfad_iocmd_fruvpd_update.exit:                    ; preds = %if.then.i, %sw.bb223.i.bfad_iocmd_fruvpd_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp.i) #11
  br label %if.end14

sw.bb225.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 20
  %call2.i69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i) #11
  %fru.i = getelementptr inbounds %struct.bfad_s, ptr %19, i32 0, i32 2, i32 6, i32 16
  %max_size.i = getelementptr inbounds %struct.bfa_bsg_fruvpd_max_size_s, ptr %call9.i.i, i32 0, i32 3
  %call5.i = tail call i32 @bfa_fruvpd_get_max_size(ptr noundef %fru.i, ptr noundef %max_size.i) #11
  %1188 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1188)
  store i32 %call5.i, ptr %call9.i.i, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call2.i69) #11
  br label %if.end14

bfad_iocmd_handler.exit:                          ; preds = %sw.bb187.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i212, i32 noundef %call4.i213) #11
  br label %error

if.end14:                                         ; preds = %sw.bb225.i, %bfad_iocmd_fruvpd_update.exit, %bfad_iocmd_fruvpd_read.exit, %bfad_iocmd_tfru_write.exit, %bfad_iocmd_tfru_read.exit, %sw.bb215.i, %sw.bb213.i, %bfad_iocmd_fcpim_cfg_lunmask.exit, %sw.bb209.i, %bfad_iocmd_lunmask.exit.i, %bfad_iocmd_vf_clr_stats.exit, %bfad_iocmd_vf_get_stats.exit, %sw.bb201.i, %bfad_iocmd_qos_reset_stats.exit, %bfad_iocmd_qos_get_stats.exit, %bfad_iocmd_qos_get_vc_attr.exit, %bfad_iocmd_qos_get_attr.exit, %bfad_iocmd_qos.exit, %bfad_iocmd_trunk_get_attr.exit, %bfad_iocmd_handler.exit.thread1165, %bfad_iocmd_ethboot_query.exit, %bfad_iocmd_ethboot_cfg.exit, %sw.bb181.i, %bfad_iocmd_boot_query.exit, %bfad_iocmd_boot_cfg.exit, %bfad_iocmd_fcport_reset_stats.exit, %bfad_iocmd_fcport_get_stats.exit, %bfad_iocmd_itnim_get_ioprofile.exit, %bfad_iocmd_fcpim_cfg_profile.exit, %sw.bb167.i, %bfad_iocmd_debug_ctl.exit.i, %bfad_iocmd_debug_fw_core.exit, %if.end.i323, %if.then.i321, %sw.bb159.i, %bfad_iocmd_phy_read.exit, %bfad_iocmd_phy_update.exit, %bfad_iocmd_phy_get_stats.exit, %bfad_iocmd_phy_get_attr.exit, %bfad_iocmd_diag_dport_start.exit, %sw.bb147.i, %bfad_iocmd_diag_dport_disable.exit, %bfad_iocmd_diag_dport_enable.exit, %sw.bb141.i, %sw.bb139.i, %sw.bb137.i, %bfad_iocmd_diag_sfp.exit, %bfad_iocmd_diag_queuetest.exit, %bfad_iocmd_diag_fwping.exit, %bfad_iocmd_diag_loopback.exit, %bfad_iocmd_diag_memtest.exit, %bfad_iocmd_diag_temp.exit, %bfad_iocmd_flash_read_part.exit, %bfad_iocmd_flash_update_part.exit, %bfad_iocmd_flash_erase_part.exit, %bfad_iocmd_flash_get_attr.exit, %bfad_iocmd_sfp_speed.exit, %bfad_iocmd_sfp_media.exit, %if.then.i593, %sw.bb111.i.if.end14_crit_edge, %bfad_iocmd_cee_get_stats.exit, %bfad_iocmd_cee_attr.exit, %bfad_iocmd_faa_query.exit, %bfad_iocmd_ablk_optrom.exit, %bfad_iocmd_port_cfg_mode.exit, %bfad_iocmd_adapter_cfg_mode.exit, %bfad_iocmd_pcifn_bw.exit, %bfad_iocmd_pcifn_delete.exit, %bfad_iocmd_pcifn_create.exit, %sw.bb91.i, %bfad_iocmd_ioc_get_pcifn_cfg.exit, %sw.bb87.i, %sw.bb85.i, %bfad_iocmd_itnim_get_itnstats.exit, %bfad_iocmd_itnim_reset_stats.exit, %bfad_iocmd_itnim_get_iostats.exit, %bfad_iocmd_itnim_get_attr.exit, %sw.bb75.i, %bfad_iocmd_fcpim_clr_modstats.exit, %bfad_iocmd_fcpim_get_modstats.exit, %sw.bb69.i, %bfad_iocmd_ratelim_speed.exit, %bfad_iocmd_ratelim.exit, %bfad_iocmd_fabric_get_lports.exit, %bfad_iocmd_vport_clr_stats.exit, %bfad_iocmd_vport_get_stats.exit, %bfad_iocmd_vport_get_attr.exit, %bfad_iocmd_rport_set_speed.exit, %bfad_iocmd_rport_clr_stats.exit, %bfad_iocmd_rport_get_stats.exit, %bfad_iocmd_rport_get_addr.exit, %bfad_iocmd_rport_get_attr.exit, %cleanup.sink.split.i971, %bfad_iocmd_lport_get_iostats.exit, %bfad_iocmd_lport_reset_stats.exit, %bfad_iocmd_lport_get_stats.exit, %bfad_iocmd_lport_get_attr.exit, %sw.bb35.i, %if.end15.i1031, %sw.bb31.i, %bfad_iocmd_set_port_cfg.exit.i, %bfad_iocmd_port_reset_stats.exit, %bfad_iocmd_port_get_stats.exit, %bfad_iocmd_port_get_attr.exit, %bfad_iocmd_port_disable.exit, %bfad_iocmd_port_enable.exit, %sw.bb17.i, %sw.bb15.i, %bfad_iocmd_ioc_set_name.exit.i, %do.body3.i, %if.then.i1102, %sw.bb11.i.if.end14_crit_edge, %bfad_iocmd_ioc_get_fwstats.exit, %sw.bb7.i, %sw.bb5.i, %bfad_iocmd_ioc_get_info.exit, %if.end10.i, %if.then.i1143, %if.end.i1154, %if.then.i1151
  %reply_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8
  %sg_list15 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 2
  %1189 = ptrtoint ptr %sg_list15 to i32
  call void @__asan_load4_noabort(i32 %1189)
  %1190 = load ptr, ptr %sg_list15, align 4
  %sg_cnt17 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 1
  %1191 = ptrtoint ptr %sg_cnt17 to i32
  call void @__asan_load4_noabort(i32 %1191)
  %1192 = load i32, ptr %sg_cnt17, align 4
  %1193 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %1193)
  %1194 = load i32, ptr %reply_payload, align 4
  %call20 = call i32 @sg_copy_from_buffer(ptr noundef %1190, i32 noundef %1192, ptr noundef nonnull %call9.i.i, i32 noundef %1194) #11
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  %1195 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %1195)
  %1196 = load i32, ptr %reply_payload, align 4
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 6
  %1197 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %1197)
  store i32 %1196, ptr %reply_len, align 4
  %reply_payload_rcv_len = getelementptr inbounds %struct.fc_bsg_reply, ptr %3, i32 0, i32 1
  %1198 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %1198)
  store i32 %1196, ptr %reply_payload_rcv_len, align 4
  %1199 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %1199)
  store i32 0, ptr %3, align 4
  call void @bsg_job_done(ptr noundef %job, i32 noundef 0, i32 noundef %1196) #11
  br label %cleanup

error:                                            ; preds = %bfad_iocmd_handler.exit, %sw.bb45.i.error_crit_edge, %if.else13.i, %if.then8.i, %if.end.error_crit_edge
  %rc.0.i1164 = phi i32 [ 245, %bfad_iocmd_handler.exit ], [ -22, %sw.bb45.i.error_crit_edge ], [ -22, %if.else13.i ], [ -16, %if.then8.i ], [ -22, %if.end.error_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %out

out:                                              ; preds = %error, %fc_bsg_to_shost.exit.out_crit_edge
  %rc.0 = phi i32 [ %rc.0.i1164, %error ], [ -12, %fc_bsg_to_shost.exit.out_crit_edge ]
  %1200 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %1200)
  store i32 %rc.0, ptr %3, align 4
  %reply_len28 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 6
  %1201 = ptrtoint ptr %reply_len28 to i32
  call void @__asan_store4_noabort(i32 %1201)
  store i32 4, ptr %reply_len28, align 4
  %reply_payload_rcv_len29 = getelementptr inbounds %struct.fc_bsg_reply, ptr %3, i32 0, i32 1
  %1202 = ptrtoint ptr %reply_payload_rcv_len29 to i32
  call void @__asan_store4_noabort(i32 %1202)
  store i32 0, ptr %reply_payload_rcv_len29, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end14
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfad_im_bsg_timeout(ptr nocapture noundef readnone %job) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_job_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_is_disabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_iocfc_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_iocfc_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_get_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_mac(ptr sret(%struct.mac_s) align 1, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_mfg_mac(ptr sret(%struct.mac_s) align 1, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_adapter_serial_num(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_fw_stats_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfa_trc(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_fw_stats_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_iocfc_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_iocfc_israttr_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_port_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_hcb_comp(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_port_disable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_port_get_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_port_clear_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_cfg_topology(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_cfg_speed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_cfg_hardalpa(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_clr_hardalpa(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_cfg_maxfrsize(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_cfg_bbcr(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_get_bbcr_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_lookup_port(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_clear_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_itnim_clear_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcpim_port_iostats(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_get_rport_quals(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_lport_get_rport_by_qualifier(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_rport_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_rport_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_itnim_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_rport_speed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_vport_lookup(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_vport_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_vf_lookup(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_vf_get_ports(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcpim_path_tov_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcpim_add_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_itnim_attr_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_itnim_stats_clear(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_itnim_stats_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ablk_query(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_fwsig_invalidate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ablk_pf_create(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ablk_pf_delete(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ablk_pf_update(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ablk_adapter_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ablk_port_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ablk_optrom_en(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ablk_optrom_dis(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_faa_query(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_cee_get_attr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_cee_get_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_cee_reset_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_sfp_media(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_sfp_speed(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_flash_get_attr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_flash_erase_part(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_flash_update_part(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_flash_read_part(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_diag_tsensor_query(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_diag_memtest(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcdiag_loopback(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_diag_fwping(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcdiag_queuetest(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_sfp_show(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_diag_ledtest(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_diag_beacon_port(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcdiag_lb_is_running(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_dport_enable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_dport_disable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_dport_show(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_dport_start(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_phy_get_attr(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_phy_get_stats(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_phy_update(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_phy_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bfa_fcpim_path_tov_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_debug_fwcore(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcpim_profile_on(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcpim_profile_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_itnim_get_ioprofile(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_clear_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_is_dport(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_is_disabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_lps_get_base_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_set_qos_bw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcpim_lunmask_update(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfad_iocmd_lunmask_reset_lunscan_mode(ptr noundef readonly %bfad, i32 noundef %lunmask_cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %im_port = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 7
  %0 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im_port, align 4
  %itnim_mapped_list = getelementptr inbounds %struct.bfad_im_port_s, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %itnim_mapped_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %__itnim.0107 = load ptr, ptr %itnim_mapped_list, align 4
  %cmp.not108 = icmp eq ptr %__itnim.0107, %itnim_mapped_list
  br i1 %cmp.not108, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shost = getelementptr inbounds %struct.bfad_im_port_s, ptr %1, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lunmask_cfg)
  %cmp3 = icmp eq i32 %lunmask_cfg, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %__itnim.0109 = phi ptr [ %__itnim.0107, %for.body.lr.ph ], [ %__itnim.0, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shost, align 4
  %channel = getelementptr inbounds %struct.bfad_itnim_s, ptr %__itnim.0109, i32 0, i32 11
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %channel, align 2
  %conv = zext i16 %6 to i32
  %scsi_tgt_id = getelementptr inbounds %struct.bfad_itnim_s, ptr %__itnim.0109, i32 0, i32 10
  %7 = ptrtoint ptr %scsi_tgt_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %scsi_tgt_id, align 4
  %conv2 = zext i16 %8 to i32
  %call = tail call ptr @scsi_device_lookup(ptr noundef %4, i32 noundef %conv, i32 noundef %conv2, i64 noundef 0) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sdev_bflags = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 39
  %9 = ptrtoint ptr %sdev_bflags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sdev_bflags, align 8
  %and = and i64 %10, 4294705087
  %or = or i64 %10, 262208
  %and.sink = select i1 %cmp3, i64 %or, i64 %and
  store i64 %and.sink, ptr %sdev_bflags, align 8
  tail call void @scsi_device_put(ptr noundef nonnull %call) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %__itnim.0109 to i32
  call void @__asan_load4_noabort(i32 %11)
  %__itnim.0 = load ptr, ptr %__itnim.0109, align 4
  %cmp.not = icmp eq ptr %__itnim.0, %itnim_mapped_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %vport_list = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 43
  %12 = ptrtoint ptr %vport_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn114 = load ptr, ptr %vport_list, align 4
  %cmp22.not115 = icmp eq ptr %.pn114, %vport_list
  br i1 %cmp22.not115, label %for.end.for.end83_crit_edge, label %do.body26.lr.ph

for.end.for.end83_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end83

do.body26.lr.ph:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lunmask_cfg)
  %cmp55 = icmp eq i32 %lunmask_cfg, 1
  br label %do.body26

for.cond19.loopexit:                              ; preds = %for.inc68.for.cond19.loopexit_crit_edge, %do.body26.for.cond19.loopexit_crit_edge
  %13 = ptrtoint ptr %.pn116 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn116, align 4
  %cmp22.not = icmp eq ptr %.pn, %vport_list
  br i1 %cmp22.not, label %for.cond19.loopexit.for.end83_crit_edge, label %for.cond19.loopexit.do.body26_crit_edge

for.cond19.loopexit.do.body26_crit_edge:          ; preds = %for.cond19.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

for.cond19.loopexit.for.end83_crit_edge:          ; preds = %for.cond19.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end83

do.body26:                                        ; preds = %for.cond19.loopexit.do.body26_crit_edge, %do.body26.lr.ph
  %.pn116 = phi ptr [ %.pn114, %do.body26.lr.ph ], [ %.pn, %for.cond19.loopexit.do.body26_crit_edge ]
  %im_port31 = getelementptr i8, ptr %.pn116, i32 -1404
  %14 = ptrtoint ptr %im_port31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %im_port31, align 8
  %itnim_mapped_list32 = getelementptr inbounds %struct.bfad_im_port_s, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %itnim_mapped_list32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %__itnim28.0110 = load ptr, ptr %itnim_mapped_list32, align 4
  %cmp41.not112 = icmp eq ptr %__itnim28.0110, %itnim_mapped_list32
  br i1 %cmp41.not112, label %do.body26.for.cond19.loopexit_crit_edge, label %do.body26.for.body44_crit_edge

do.body26.for.body44_crit_edge:                   ; preds = %do.body26
  br label %for.body44

do.body26.for.cond19.loopexit_crit_edge:          ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond19.loopexit

for.body44:                                       ; preds = %for.inc68.for.body44_crit_edge, %do.body26.for.body44_crit_edge
  %17 = phi ptr [ %28, %for.inc68.for.body44_crit_edge ], [ %15, %do.body26.for.body44_crit_edge ]
  %__itnim28.0113 = phi ptr [ %__itnim28.0, %for.inc68.for.body44_crit_edge ], [ %__itnim28.0110, %do.body26.for.body44_crit_edge ]
  %shost47 = getelementptr inbounds %struct.bfad_im_port_s, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %shost47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost47, align 4
  %channel48 = getelementptr inbounds %struct.bfad_itnim_s, ptr %__itnim28.0113, i32 0, i32 11
  %20 = ptrtoint ptr %channel48 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %channel48, align 2
  %conv49 = zext i16 %21 to i32
  %scsi_tgt_id50 = getelementptr inbounds %struct.bfad_itnim_s, ptr %__itnim28.0113, i32 0, i32 10
  %22 = ptrtoint ptr %scsi_tgt_id50 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %scsi_tgt_id50, align 4
  %conv51 = zext i16 %23 to i32
  %call52 = tail call ptr @scsi_device_lookup(ptr noundef %19, i32 noundef %conv49, i32 noundef %conv51, i64 noundef 0) #11
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %for.body44.for.inc68_crit_edge, label %if.then54

for.body44.for.inc68_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68

if.then54:                                        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #13
  %sdev_bflags59 = getelementptr inbounds %struct.scsi_device, ptr %call52, i32 0, i32 39
  %24 = ptrtoint ptr %sdev_bflags59 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sdev_bflags59, align 8
  %and65 = and i64 %25, 4294705087
  %or60 = or i64 %25, 262208
  %and65.sink = select i1 %cmp55, i64 %or60, i64 %and65
  store i64 %and65.sink, ptr %sdev_bflags59, align 8
  tail call void @scsi_device_put(ptr noundef nonnull %call52) #11
  br label %for.inc68

for.inc68:                                        ; preds = %if.then54, %for.body44.for.inc68_crit_edge
  %26 = ptrtoint ptr %__itnim28.0113 to i32
  call void @__asan_load4_noabort(i32 %26)
  %__itnim28.0 = load ptr, ptr %__itnim28.0113, align 4
  %27 = ptrtoint ptr %im_port31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %im_port31, align 8
  %itnim_mapped_list40 = getelementptr inbounds %struct.bfad_im_port_s, ptr %28, i32 0, i32 8
  %cmp41.not = icmp eq ptr %__itnim28.0, %itnim_mapped_list40
  br i1 %cmp41.not, label %for.inc68.for.cond19.loopexit_crit_edge, label %for.inc68.for.body44_crit_edge

for.inc68.for.body44_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body44

for.inc68.for.cond19.loopexit_crit_edge:          ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond19.loopexit

for.end83:                                        ; preds = %for.cond19.loopexit.for.end83_crit_edge, %for.end.for.end83_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcpim_lunmask_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcpim_lunmask_query(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcpim_lunmask_add(ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef, [2 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcpim_lunmask_delete(ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef, [2 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcpim_throttle_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcpim_throttle_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_tfru_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_tfru_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fruvpd_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fruvpd_update(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fruvpd_get_max_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_lport_is_online(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_lport_get_rport_by_pwwn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcxp_req_rsp_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @bfad_fcxp_get_req_sgaddr_cb(ptr nocapture noundef readonly %bfad_fcxp, i32 noundef %sgeid) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_sge = getelementptr inbounds %struct.bfad_fcxp, ptr %bfad_fcxp, i32 0, i32 13
  %0 = ptrtoint ptr %req_sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_sge, align 4
  %sg_addr = getelementptr %struct.bfa_sge_s, ptr %1, i32 %sgeid, i32 1
  %2 = ptrtoint ptr %sg_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  %conv = zext i32 %4 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bfad_fcxp_get_req_sglen_cb(ptr nocapture noundef readonly %bfad_fcxp, i32 noundef %sgeid) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_sge = getelementptr inbounds %struct.bfad_fcxp, ptr %bfad_fcxp, i32 0, i32 13
  %0 = ptrtoint ptr %req_sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_sge, align 4
  %add.ptr = getelementptr %struct.bfa_sge_s, ptr %1, i32 %sgeid
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @bfad_fcxp_get_rsp_sgaddr_cb(ptr nocapture noundef readonly %bfad_fcxp, i32 noundef %sgeid) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp_sge = getelementptr inbounds %struct.bfad_fcxp, ptr %bfad_fcxp, i32 0, i32 14
  %0 = ptrtoint ptr %rsp_sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp_sge, align 4
  %sg_addr = getelementptr %struct.bfa_sge_s, ptr %1, i32 %sgeid, i32 1
  %2 = ptrtoint ptr %sg_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  %conv = zext i32 %4 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bfad_fcxp_get_rsp_sglen_cb(ptr nocapture noundef readonly %bfad_fcxp, i32 noundef %sgeid) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp_sge = getelementptr inbounds %struct.bfad_fcxp, ptr %bfad_fcxp, i32 0, i32 14
  %0 = ptrtoint ptr %rsp_sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp_sge, align 4
  %add.ptr = getelementptr %struct.bfa_sge_s, ptr %1, i32 %sgeid
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @bfa_lps_get_tag_from_pid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_send(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_send_fcpt_cb(ptr noundef %bfad_fcxp, ptr nocapture noundef readnone %fcxp, ptr nocapture noundef readnone %cbarg, i32 noundef %req_status, i32 noundef %rsp_len, i32 noundef %resid_len, ptr nocapture noundef readnone %rsp_fchs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_status1 = getelementptr inbounds %struct.bfad_fcxp, ptr %bfad_fcxp, i32 0, i32 2
  %0 = ptrtoint ptr %req_status1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %req_status, ptr %req_status1, align 4
  %conv = trunc i32 %rsp_len to i16
  %rsp_len2 = getelementptr inbounds %struct.bfad_fcxp, ptr %bfad_fcxp, i32 0, i32 4
  %1 = ptrtoint ptr %rsp_len2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %rsp_len2, align 2
  %bfa_fcxp = getelementptr inbounds %struct.bfad_fcxp, ptr %bfad_fcxp, i32 0, i32 17
  %2 = ptrtoint ptr %bfa_fcxp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bfa_fcxp, align 4
  %comp = getelementptr inbounds %struct.bfad_fcxp, ptr %bfad_fcxp, i32 0, i32 18
  tail call void @complete(ptr noundef %comp) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @init_completion.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../include/linux/completion.h", i32 87, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/bfa/bfad_bsg.c", i32 121, i32 45}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/scsi/bfa/bfad_bsg.c", i32 123, i32 3}
!7 = distinct !{null, !8, !"__trc_fileno", i1 false, i1 false}
!8 = !{!"../drivers/scsi/bfa/bfad_bsg.c", i32 16, i32 1}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/bfa/bfad_bsg.c", i32 2450, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/bfa/bfad_bsg.c", i32 3444, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @bfad_im_bsg_els_ct_request._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @bfad_im_bsg_els_ct_request._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/bfa/bfad_bsg.c", i32 3452, i32 3}
!18 = !{ptr @bfad_im_bsg_els_ct_request._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @bfad_im_bsg_els_ct_request._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/bfa/bfad_bsg.c", i32 3467, i32 3}
!22 = !{ptr @bfad_im_bsg_els_ct_request._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bfad_im_bsg_els_ct_request._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/bfa/bfad_bsg.c", i32 3483, i32 3}
!26 = !{ptr @bfad_im_bsg_els_ct_request._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bfad_im_bsg_els_ct_request._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2150595100, i64 2150595125}
!47 = !{i64 3090655}
!48 = !{i64 3090852}
!49 = !{i64 2150576085}
!50 = !{i64 2150595781, i64 2150595806}
!51 = !{!"branch_weights", i32 1, i32 2000}
