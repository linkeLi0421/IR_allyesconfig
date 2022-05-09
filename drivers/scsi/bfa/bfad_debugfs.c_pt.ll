; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfad_debugfs.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfad_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bfad_port_s = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.bfad_s = type { ptr, %struct.list_head, %struct.bfa_s, %struct.bfa_fcs_s, ptr, ptr, %struct.bfa_pcidev_s, %struct.bfa_ioc_pci_attr_s, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, %struct.bfad_port_s, %struct.bfa_meminfo_s, %struct.bfa_iocfc_cfg_s, i32, i32, %struct.spinlock, ptr, %struct.bfad_cfg_param_s, [22 x %struct.bfad_msix_s], i32, [64 x i8], [64 x i8], %struct.timer_list, i32, ptr, ptr, %struct.bfa_plog_s, i32, %union.bfad_tmp_buf, %struct.fc_host_statistics, %struct.list_head, ptr, i32, [5 x ptr], %struct.list_head, %struct.list_head, [512 x %struct.bfa_aen_entry_s], %struct.spinlock, %struct.list_head }
%struct.bfa_s = type { ptr, ptr, ptr, %struct.bfa_ioc_s, %struct.bfa_iocfc_s, %struct.bfa_timer_mod_s, %struct.bfa_modules_s, %struct.list_head, i32, [4 x %struct.list_head], i32, %struct.bfa_msix_s, i32, i32 }
%struct.bfa_ioc_s = type { ptr, ptr, %struct.bfa_pcidev_s, ptr, %struct.bfa_timer_s, %struct.bfa_timer_s, %struct.bfa_timer_s, i32, %struct.list_head, ptr, i32, i32, i32, %struct.bfa_ioc_regs_s, ptr, %struct.bfa_ioc_drv_stats_s, i32, i32, i32, i8, %struct.bfa_dma_s, ptr, ptr, %struct.bfa_ioc_mbox_mod_s, ptr, %struct.bfa_iocpf_s, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.bfa_rport_aen_data_s = type { i16, [3 x i16], i64, i64, i64, %union.anon.97 }
%union.anon.97 = type { %struct.bfa_rport_qos_attr_s }
%struct.bfa_rport_qos_attr_s = type { i8, [3 x i8], i32 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.file = type { %union.anon.22, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.22 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.bfad_debug_info = type { ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.90, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.91, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.92, ptr, %struct.address_space, %struct.list_head, %union.anon.93, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.91 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.92 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.93 = type { ptr }

@bfa_debugfs_enable = external dso_local local_unnamed_addr global i32, align 4
@bfa_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bfa\00", [28 x i8] zeroinitializer }, align 32
@bfa_debugfs_port_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_dev:%s\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drvtrc\00", [25 x i8] zeroinitializer }, align 32
@bfad_debugfs_op_drvtrc = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @bfad_debugfs_lseek, ptr @bfad_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bfad_debugfs_open_drvtrc, ptr null, ptr @bfad_debugfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fwtrc\00", [26 x i8] zeroinitializer }, align 32
@bfad_debugfs_op_fwtrc = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @bfad_debugfs_lseek, ptr @bfad_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bfad_debugfs_open_fwtrc, ptr null, ptr @bfad_debugfs_release_fwtrc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fwsave\00", [25 x i8] zeroinitializer }, align 32
@bfad_debugfs_op_fwsave = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @bfad_debugfs_lseek, ptr @bfad_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bfad_debugfs_open_fwsave, ptr null, ptr @bfad_debugfs_release_fwtrc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"regrd\00", [26 x i8] zeroinitializer }, align 32
@bfad_debugfs_op_regrd = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @bfad_debugfs_lseek, ptr @bfad_debugfs_read_regrd, ptr @bfad_debugfs_write_regrd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bfad_debugfs_open_reg, ptr null, ptr @bfad_debugfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"regwr\00", [26 x i8] zeroinitializer }, align 32
@bfad_debugfs_op_regwr = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @bfad_debugfs_lseek, ptr null, ptr @bfad_debugfs_write_regwr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bfad_debugfs_open_reg, ptr null, ptr @bfad_debugfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bfad_debugfs_open_fwtrc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016bfad[%d]: Failed to allocate fwtrc buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bfad_debugfs_open_fwtrc\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/bfa/bfad_debugfs.c\00", [32 x i8] zeroinitializer }, align 32
@bfad_debugfs_open_fwtrc._entry_ptr = internal global ptr @bfad_debugfs_open_fwtrc._entry, section ".printk_index", align 4
@bfad_debugfs_open_fwtrc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016bfad[%d]: Failed to collect fwtrc\0A\00", [59 x i8] zeroinitializer }, align 32
@bfad_debugfs_open_fwtrc._entry_ptr.12 = internal global ptr @bfad_debugfs_open_fwtrc._entry.10, section ".printk_index", align 4
@bfad_debugfs_open_fwsave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016bfad[%d]: Failed to allocate fwsave buffer\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfad_debugfs_open_fwsave\00", [39 x i8] zeroinitializer }, align 32
@bfad_debugfs_open_fwsave._entry_ptr = internal global ptr @bfad_debugfs_open_fwsave._entry, section ".printk_index", align 4
@bfad_debugfs_open_fwsave._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.9, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016bfad[%d]: Failed to collect fwsave\0A\00", [58 x i8] zeroinitializer }, align 32
@bfad_debugfs_open_fwsave._entry_ptr.17 = internal global ptr @bfad_debugfs_open_fwsave._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x:%x\00", [26 x i8] zeroinitializer }, align 32
@bfad_debugfs_write_regrd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.9, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016bfad[%d]: %s failed to read user buf\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfad_debugfs_write_regrd\00", [39 x i8] zeroinitializer }, align 32
@bfad_debugfs_write_regrd._entry_ptr = internal global ptr @bfad_debugfs_write_regrd._entry, section ".printk_index", align 4
@bfad_debugfs_write_regrd._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.9, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016bfad[%d]: Failed to allocate regrd buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@bfad_debugfs_write_regrd._entry_ptr.23 = internal global ptr @bfad_debugfs_write_regrd._entry.21, section ".printk_index", align 4
@bfad_debugfs_write_regrd._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.9, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016bfad[%d]: Failed reg offset check\0A\00", [59 x i8] zeroinitializer }, align 32
@bfad_debugfs_write_regrd._entry_ptr.26 = internal global ptr @bfad_debugfs_write_regrd._entry.24, section ".printk_index", align 4
@bfad_debugfs_write_regwr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.27, ptr @.str.9, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfad_debugfs_write_regwr\00", [39 x i8] zeroinitializer }, align 32
@bfad_debugfs_write_regwr._entry_ptr = internal global ptr @bfad_debugfs_write_regwr._entry, section ".printk_index", align 4
@bfad_debugfs_write_regwr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.27, ptr @.str.9, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bfad_debugfs_write_regwr._entry_ptr.29 = internal global ptr @bfad_debugfs_write_regwr._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 20, i64 33, i64 34]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 16, i64 20, i64 33, i64 34]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 16, i64 20, i64 33, i64 34]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 16, i64 20, i64 33, i64 34]
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"bfa_debugfs_root\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 437, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 453, i32 41 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"bfa_debugfs_port_count\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 438, i32 17 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 458, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 430, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"bfad_debugfs_op_drvtrc\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 382, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 431, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"bfad_debugfs_op_fwtrc\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 390, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 432, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"bfad_debugfs_op_fwsave\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 398, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 433, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"bfad_debugfs_op_regrd\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 406, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 434, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"bfad_debugfs_op_regwr\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 415, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 79, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 93, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 121, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 135, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 257, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 259, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 273, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 285, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 326, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private constant [35 x i8] c"../drivers/scsi/bfa/bfad_debugfs.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 339, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @bfad_debugfs_open_fwsave._entry, ptr @bfad_debugfs_open_fwsave._entry.15, ptr @bfad_debugfs_open_fwsave._entry_ptr, ptr @bfad_debugfs_open_fwsave._entry_ptr.17, ptr @bfad_debugfs_open_fwtrc._entry, ptr @bfad_debugfs_open_fwtrc._entry.10, ptr @bfad_debugfs_open_fwtrc._entry_ptr, ptr @bfad_debugfs_open_fwtrc._entry_ptr.12, ptr @bfad_debugfs_write_regrd._entry, ptr @bfad_debugfs_write_regrd._entry.21, ptr @bfad_debugfs_write_regrd._entry.24, ptr @bfad_debugfs_write_regrd._entry_ptr, ptr @bfad_debugfs_write_regrd._entry_ptr.23, ptr @bfad_debugfs_write_regrd._entry_ptr.26, ptr @bfad_debugfs_write_regwr._entry, ptr @bfad_debugfs_write_regwr._entry.28, ptr @bfad_debugfs_write_regwr._entry_ptr, ptr @bfad_debugfs_write_regwr._entry_ptr.29, ptr @bfa_debugfs_root, ptr @.str, ptr @bfa_debugfs_port_count, ptr @.str.1, ptr @.str.2, ptr @bfad_debugfs_op_drvtrc, ptr @.str.3, ptr @bfad_debugfs_op_fwtrc, ptr @.str.4, ptr @bfad_debugfs_op_fwsave, ptr @.str.5, ptr @bfad_debugfs_op_regrd, ptr @.str.6, ptr @bfad_debugfs_op_regwr, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_debugfs_port_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_op_drvtrc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_op_fwtrc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_op_fwsave to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_op_regrd to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_op_regwr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_open_fwtrc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_open_fwtrc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_open_fwsave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_open_fwsave._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_write_regrd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_write_regrd._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_write_regrd._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_write_regwr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_debugfs_write_regwr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_debugfs_init(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfad1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #10
  %2 = call ptr @memset(ptr %name, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_debugfs_enable to i32))
  %3 = load i32, ptr @bfa_debugfs_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @bfa_debugfs_root, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #10
  store ptr %call, ptr @bfa_debugfs_root, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bfa_debugfs_port_count, i32 noundef 4) #10
  store volatile i32 0, ptr @bfa_debugfs_port_count, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %pci_name = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %pci_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_name, align 4
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %6)
  %port_debugfs_root = getelementptr inbounds %struct.bfad_port_s, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_debugfs_root, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %9 = load ptr, ptr @bfa_debugfs_root, align 4
  %call9 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %9) #10
  %10 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %port_debugfs_root, align 4
  %call.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bfa_debugfs_port_count, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull @bfa_debugfs_port_count, i32 1, i32 3, i32 1) #10
  %11 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bfa_debugfs_port_count, ptr nonnull @bfa_debugfs_port_count, i32 1, ptr nonnull elementtype(i32) @bfa_debugfs_port_count) #10, !srcloc !80
  %12 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_debugfs_root, align 4
  %call13 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext -32476, ptr noundef %13, ptr noundef %port, ptr noundef nonnull @bfad_debugfs_op_drvtrc) #10
  %arrayidx14 = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 38, i32 0
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %arrayidx14, align 4
  %15 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_debugfs_root, align 4
  %call13.1 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext -32476, ptr noundef %16, ptr noundef %port, ptr noundef nonnull @bfad_debugfs_op_fwtrc) #10
  %arrayidx14.1 = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 38, i32 1
  %17 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call13.1, ptr %arrayidx14.1, align 4
  %18 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_debugfs_root, align 4
  %call13.2 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext -32476, ptr noundef %19, ptr noundef %port, ptr noundef nonnull @bfad_debugfs_op_fwsave) #10
  %arrayidx14.2 = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 38, i32 2
  %20 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call13.2, ptr %arrayidx14.2, align 4
  %21 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_debugfs_root, align 4
  %call13.3 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext -32348, ptr noundef %22, ptr noundef %port, ptr noundef nonnull @bfad_debugfs_op_regrd) #10
  %arrayidx14.3 = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 38, i32 3
  %23 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call13.3, ptr %arrayidx14.3, align 4
  %24 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_debugfs_root, align 4
  %call13.4 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext -32640, ptr noundef %25, ptr noundef %port, ptr noundef nonnull @bfad_debugfs_op_regwr) #10
  %arrayidx14.4 = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 38, i32 4
  %26 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call13.4, ptr %arrayidx14.4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_debugfs_exit(ptr nocapture noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfad1, align 4
  %arrayidx = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 38, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_remove(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 38, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %6, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_remove(ptr noundef nonnull %6) #10
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 38, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_remove(ptr noundef nonnull %9) #10
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 38, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %12, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_remove(ptr noundef nonnull %12) #10
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 38, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %15, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_remove(ptr noundef nonnull %15) #10
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %port_debugfs_root = getelementptr inbounds %struct.bfad_port_s, ptr %port, i32 0, i32 8
  %17 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port_debugfs_root, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %for.inc.4.if.end10_crit_edge, label %if.then7

for.inc.4.if.end10_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_remove(ptr noundef nonnull %18) #10
  %19 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %port_debugfs_root, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bfa_debugfs_port_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @bfa_debugfs_port_count, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bfa_debugfs_port_count, ptr nonnull @bfa_debugfs_port_count, i32 1, ptr nonnull elementtype(i32) @bfa_debugfs_port_count) #10, !srcloc !81
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %for.inc.4.if.end10_crit_edge
  %call.i.i24 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @bfa_debugfs_port_count, i32 noundef 4) #10
  %21 = load volatile i32, ptr @bfa_debugfs_port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp11 = icmp eq i32 %21, 0
  br i1 %cmp11, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %22 = load ptr, ptr @bfa_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %22) #10
  store ptr null, ptr @bfa_debugfs_root, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bfad_debugfs_lseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buffer_len = getelementptr inbounds %struct.bfad_debug_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %buffer_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_len, align 4
  %conv = sext i32 %3 to i64
  %call = tail call i64 @fixed_size_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig, i64 noundef %conv) #10
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_debugfs_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr noundef %pos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_len = getelementptr inbounds %struct.bfad_debug_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %buffer_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_len, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %nbytes, ptr noundef %pos, ptr noundef nonnull %3, i32 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_debugfs_open_drvtrc(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfad1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 30
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call7.i.i, align 8
  %buffer_len = getelementptr inbounds %struct.bfad_debug_info, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %buffer_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65568, ptr %buffer_len, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_debugfs_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_debugfs_open_fwtrc(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfad1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer_len = getelementptr inbounds %struct.bfad_debug_info, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %buffer_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65568, ptr %buffer_len, align 8
  %call3 = tail call noalias ptr @vzalloc(i32 noundef 65568) #14
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %call7.i.i, align 8
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.then6, label %do.body10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst_no, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %8) #15
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 20
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #10
  %ioc = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %call20 = tail call i32 @bfa_ioc_debug_fwtrc(ptr noundef %ioc, ptr noundef %10, ptr noundef %buffer_len) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22.not = icmp eq i32 %call20, 0
  br i1 %cmp22.not, label %if.end33, label %if.then24

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  tail call void @vfree(ptr noundef %12) #10
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %inst_no31 = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %inst_no31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inst_no31, align 8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %15) #15
  br label %cleanup

if.end33:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then24, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then24 ], [ 0, %if.end33 ], [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_debugfs_release_fwtrc(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vfree(ptr noundef nonnull %3) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_debug_fwtrc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_debugfs_open_fwsave(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfad1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer_len = getelementptr inbounds %struct.bfad_debug_info, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %buffer_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65568, ptr %buffer_len, align 8
  %call3 = tail call noalias ptr @vzalloc(i32 noundef 65568) #14
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %call7.i.i, align 8
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.then6, label %do.body10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst_no, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %8) #15
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 20
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #10
  %ioc = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %call20 = tail call i32 @bfa_ioc_debug_fwsave(ptr noundef %ioc, ptr noundef %10, ptr noundef %buffer_len) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22.not = icmp eq i32 %call20, 0
  br i1 %cmp22.not, label %if.end33, label %if.then24

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  tail call void @vfree(ptr noundef %12) #10
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %inst_no31 = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %inst_no31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inst_no31, align 8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %15) #15
  br label %cleanup

if.end33:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then24, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then24 ], [ 0, %if.end33 ], [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_debug_fwsave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_debugfs_read_regrd(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr noundef %pos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.bfad_debug_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bfad1, align 4
  %regdata = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regdata, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %reglen = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 37
  %8 = ptrtoint ptr %reglen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reglen, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %nbytes, ptr noundef %pos, ptr noundef nonnull %7, i32 noundef %9) #10
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %conv = zext i32 %nbytes to i64
  %add = add i64 %11, %conv
  %12 = ptrtoint ptr %reglen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reglen, align 4
  %conv4 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv4)
  %cmp.not = icmp slt i64 %add, %conv4
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regdata, align 8
  tail call void @kfree(ptr noundef %15) #10
  %16 = ptrtoint ptr %regdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %regdata, align 8
  %17 = ptrtoint ptr %reglen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reglen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then6 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_debugfs_write_regrd(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #5 align 64 {
entry:
  %addr = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.bfad_debug_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bfad1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %addr, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len, align 4, !annotation !82
  %call = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %nbytes) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %addr, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6)
  %cmp = icmp slt i32 %call6, 2
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %10)
  %cmp7 = icmp ugt i32 %10, 1073741823
  br i1 %cmp7, label %lor.lhs.false.do.end_crit_edge, label %if.end10

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 18
  %11 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inst_no, align 8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %12, ptr noundef nonnull @.str.20) #15
  call void @kfree(ptr noundef %call) #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @kfree(ptr noundef %call) #10
  %regdata = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 36
  %13 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regdata, align 8
  call void @kfree(ptr noundef %14) #10
  %15 = ptrtoint ptr %regdata to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %regdata, align 8
  %reglen = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 37
  %16 = ptrtoint ptr %reglen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %reglen, align 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %shl = shl i32 %18, 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %shl, i32 noundef 3520) #14
  %19 = ptrtoint ptr %regdata to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i, ptr %regdata, align 8
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %inst_no20 = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 18
  %20 = ptrtoint ptr %inst_no20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inst_no20, align 8
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %21) #15
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %shl23 = shl i32 %23, 2
  %24 = ptrtoint ptr %reglen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl23, ptr %reglen, align 4
  %pci_bar_kva = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 2, i32 3, i32 2, i32 4
  %25 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_bar_kva, align 4
  %device_id = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 2, i32 3, i32 2, i32 2
  %27 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device_id, align 2
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i16 %28, label %lor.rhs39 [
    i16 20, label %if.end22.lor.end45_crit_edge
    i16 33, label %if.end22.lor.end45_crit_edge129
    i16 34, label %if.end22.lor.end45_crit_edge130
  ]

if.end22.lor.end45_crit_edge130:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end45

if.end22.lor.end45_crit_edge129:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end45

if.end22.lor.end45_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end45

lor.rhs39:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %28)
  %cmp43 = icmp eq i16 %28, 35
  %phi.bo = select i1 %cmp43, i32 262143, i32 131071
  br label %lor.end45

lor.end45:                                        ; preds = %lor.rhs39, %if.end22.lor.end45_crit_edge, %if.end22.lor.end45_crit_edge129, %if.end22.lor.end45_crit_edge130
  %30 = phi i32 [ 262143, %if.end22.lor.end45_crit_edge ], [ %phi.bo, %lor.rhs39 ], [ 262143, %if.end22.lor.end45_crit_edge129 ], [ 262143, %if.end22.lor.end45_crit_edge130 ]
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr, align 4
  %and = and i32 %32, %30
  store i32 %and, ptr %addr, align 4
  %shr.i = lshr i32 %and, 15
  %33 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %shr.i, label %if.else16.i [
    i32 0, label %if.then.i
    i32 1, label %if.then9.i
  ]

if.then.i:                                        ; preds = %lor.end45
  %add.i = add i32 %and, %shl23
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add.i)
  %cmp3.i = icmp ugt i32 %add.i, 32768
  br i1 %cmp3.i, label %if.then.i.do.end51_crit_edge, label %if.then.i.if.end58_crit_edge

if.then.i.if.end58_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then.i.do.end51_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

if.then9.i:                                       ; preds = %lor.end45
  %add11.i = add i32 %and, %shl23
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add11.i)
  %cmp12.i = icmp ugt i32 %add11.i, 65536
  br i1 %cmp12.i, label %if.then9.i.do.end51_crit_edge, label %if.then9.i.if.end58_crit_edge

if.then9.i.if.end58_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then9.i.do.end51_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

if.else16.i:                                      ; preds = %lor.end45
  %add18.i = add i32 %and, %shl23
  %34 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device_id, align 2
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %35, label %lor.rhs34.i [
    i16 20, label %if.else16.i.lor.end41.i_crit_edge
    i16 33, label %if.else16.i.lor.end41.i_crit_edge131
    i16 34, label %if.else16.i.lor.end41.i_crit_edge132
  ]

if.else16.i.lor.end41.i_crit_edge132:             ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end41.i

if.else16.i.lor.end41.i_crit_edge131:             ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end41.i

if.else16.i.lor.end41.i_crit_edge:                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end41.i

lor.rhs34.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %35)
  %cmp39.i = icmp eq i16 %35, 35
  %phi.bo.i = select i1 %cmp39.i, i32 262143, i32 131071
  br label %lor.end41.i

lor.end41.i:                                      ; preds = %lor.rhs34.i, %if.else16.i.lor.end41.i_crit_edge, %if.else16.i.lor.end41.i_crit_edge131, %if.else16.i.lor.end41.i_crit_edge132
  %37 = phi i32 [ 262143, %if.else16.i.lor.end41.i_crit_edge ], [ %phi.bo.i, %lor.rhs34.i ], [ 262143, %if.else16.i.lor.end41.i_crit_edge131 ], [ 262143, %if.else16.i.lor.end41.i_crit_edge132 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %37)
  %cmp42.i = icmp ugt i32 %add18.i, %37
  br i1 %cmp42.i, label %lor.end41.i.do.end51_crit_edge, label %lor.end41.i.if.end58_crit_edge

lor.end41.i.if.end58_crit_edge:                   ; preds = %lor.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

lor.end41.i.do.end51_crit_edge:                   ; preds = %lor.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end51:                                         ; preds = %lor.end41.i.do.end51_crit_edge, %if.then9.i.do.end51_crit_edge, %if.then.i.do.end51_crit_edge
  %inst_no53 = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 18
  %38 = ptrtoint ptr %inst_no53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inst_no53, align 8
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %39) #15
  %40 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regdata, align 8
  call void @kfree(ptr noundef %41) #10
  %42 = ptrtoint ptr %regdata to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %regdata, align 8
  %43 = ptrtoint ptr %reglen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %reglen, align 4
  br label %cleanup

if.end58:                                         ; preds = %lor.end41.i.if.end58_crit_edge, %if.then9.i.if.end58_crit_edge, %if.then.i.if.end58_crit_edge
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 20
  %call66 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #10
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp71125.not = icmp eq i32 %45, 0
  br i1 %cmp71125.not, label %if.end58.for.end_crit_edge, label %for.body.preheader

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end58
  %add.ptr = getelementptr i8, ptr %26, i32 %and
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0128 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %regbuf.0127 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call9.i.i, %for.body.preheader ]
  %reg_addr.0126 = phi ptr [ %add.ptr76, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg_addr.0126) #10, !srcloc !83
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  %48 = ptrtoint ptr %regbuf.0127 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %regbuf.0127, align 4
  %incdec.ptr = getelementptr i32, ptr %regbuf.0127, i32 1
  %add.ptr76 = getelementptr i8, ptr %reg_addr.0126, i32 4
  %inc = add nuw i32 %i.0128, 1
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  %cmp71 = icmp ult i32 %inc, %50
  br i1 %cmp71, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end58.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call66) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end51, %do.end18, %do.end, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ -22, %do.end ], [ -22, %do.end51 ], [ %nbytes, %for.end ], [ -12, %do.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_debugfs_open_reg(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private, align 4
  %i_private1 = getelementptr inbounds %struct.bfad_debug_info, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %i_private1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %i_private1, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_debugfs_write_regwr(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #5 align 64 {
entry:
  %addr = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.bfad_debug_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bfad1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %addr, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val, align 4, !annotation !82
  %call = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %nbytes) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %addr, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6)
  %cmp = icmp slt i32 %call6, 2
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 18
  %9 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inst_no, align 8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %10, ptr noundef nonnull @.str.27) #15
  call void @kfree(ptr noundef %call) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @kfree(ptr noundef %call) #10
  %device_id = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 2, i32 3, i32 2, i32 2
  %11 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device_id, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %12, label %lor.rhs22 [
    i16 20, label %if.end9.lor.end28_crit_edge
    i16 33, label %if.end9.lor.end28_crit_edge81
    i16 34, label %if.end9.lor.end28_crit_edge82
  ]

if.end9.lor.end28_crit_edge82:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end28

if.end9.lor.end28_crit_edge81:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end28

if.end9.lor.end28_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end28

lor.rhs22:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %12)
  %cmp26 = icmp eq i16 %12, 35
  %phi.bo = select i1 %cmp26, i32 262143, i32 131071
  br label %lor.end28

lor.end28:                                        ; preds = %lor.rhs22, %if.end9.lor.end28_crit_edge, %if.end9.lor.end28_crit_edge81, %if.end9.lor.end28_crit_edge82
  %14 = phi i32 [ 262143, %if.end9.lor.end28_crit_edge ], [ %phi.bo, %lor.rhs22 ], [ 262143, %if.end9.lor.end28_crit_edge81 ], [ 262143, %if.end9.lor.end28_crit_edge82 ]
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  %and = and i32 %16, %14
  store i32 %and, ptr %addr, align 4
  %shr.i = lshr i32 %and, 15
  %17 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %shr.i, label %if.else16.i [
    i32 0, label %if.then.i
    i32 1, label %if.then9.i
  ]

if.then.i:                                        ; preds = %lor.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 32764, i32 %and)
  %cmp3.i = icmp ugt i32 %and, 32764
  br i1 %cmp3.i, label %if.then.i.do.end33_crit_edge, label %if.then.i.if.end37_crit_edge

if.then.i.if.end37_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then.i.do.end33_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

if.then9.i:                                       ; preds = %lor.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 65532, i32 %and)
  %cmp12.i = icmp ugt i32 %and, 65532
  br i1 %cmp12.i, label %if.then9.i.do.end33_crit_edge, label %if.then9.i.if.end37_crit_edge

if.then9.i.if.end37_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then9.i.do.end33_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

if.else16.i:                                      ; preds = %lor.end28
  %add18.i = add nuw nsw i32 %and, 4
  %18 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device_id, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %19, label %lor.rhs34.i [
    i16 20, label %if.else16.i.lor.end41.i_crit_edge
    i16 33, label %if.else16.i.lor.end41.i_crit_edge83
    i16 34, label %if.else16.i.lor.end41.i_crit_edge84
  ]

if.else16.i.lor.end41.i_crit_edge84:              ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end41.i

if.else16.i.lor.end41.i_crit_edge83:              ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end41.i

if.else16.i.lor.end41.i_crit_edge:                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end41.i

lor.rhs34.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %19)
  %cmp39.i = icmp eq i16 %19, 35
  %phi.bo.i = select i1 %cmp39.i, i32 262143, i32 131071
  br label %lor.end41.i

lor.end41.i:                                      ; preds = %lor.rhs34.i, %if.else16.i.lor.end41.i_crit_edge, %if.else16.i.lor.end41.i_crit_edge83, %if.else16.i.lor.end41.i_crit_edge84
  %21 = phi i32 [ 262143, %if.else16.i.lor.end41.i_crit_edge ], [ %phi.bo.i, %lor.rhs34.i ], [ 262143, %if.else16.i.lor.end41.i_crit_edge83 ], [ 262143, %if.else16.i.lor.end41.i_crit_edge84 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %21)
  %cmp42.i = icmp ugt i32 %add18.i, %21
  br i1 %cmp42.i, label %lor.end41.i.do.end33_crit_edge, label %lor.end41.i.if.end37_crit_edge

lor.end41.i.if.end37_crit_edge:                   ; preds = %lor.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

lor.end41.i.do.end33_crit_edge:                   ; preds = %lor.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

do.end33:                                         ; preds = %lor.end41.i.do.end33_crit_edge, %if.then9.i.do.end33_crit_edge, %if.then.i.do.end33_crit_edge
  %inst_no35 = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 18
  %22 = ptrtoint ptr %inst_no35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inst_no35, align 8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %23) #15
  br label %cleanup

if.end37:                                         ; preds = %lor.end41.i.if.end37_crit_edge, %if.then9.i.if.end37_crit_edge, %if.then.i.if.end37_crit_edge
  %pci_bar_kva = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 2, i32 3, i32 2, i32 4
  %24 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %and
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 20
  %call45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %28) #10, !srcloc !86
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call45) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end33, %do.end, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ -22, %do.end ], [ -22, %do.end33 ], [ %nbytes, %if.end37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 453, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 458, i32 31}
!4 = !{ptr @bfa_debugfs_root, !5, !"bfa_debugfs_root", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 437, i32 23}
!6 = !{ptr @bfa_debugfs_port_count, !7, !"bfa_debugfs_port_count", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 438, i32 17}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 430, i32 4}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 431, i32 4}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 432, i32 4}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 433, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 434, i32 4}
!18 = distinct !{null, !19, !"bfad_debugfs_files", i1 false, i1 false}
!19 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 429, i32 40}
!20 = !{ptr @bfad_debugfs_op_drvtrc, !21, !"bfad_debugfs_op_drvtrc", i1 false, i1 false}
!21 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 382, i32 37}
!22 = !{ptr @bfad_debugfs_op_fwtrc, !23, !"bfad_debugfs_op_fwtrc", i1 false, i1 false}
!23 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 390, i32 37}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 79, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bfad_debugfs_open_fwtrc._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @bfad_debugfs_open_fwtrc._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 93, i32 3}
!32 = !{ptr @bfad_debugfs_open_fwtrc._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bfad_debugfs_open_fwtrc._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @bfad_debugfs_op_fwsave, !35, !"bfad_debugfs_op_fwsave", i1 false, i1 false}
!35 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 398, i32 37}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 121, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bfad_debugfs_open_fwsave._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @bfad_debugfs_open_fwsave._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 135, i32 3}
!43 = !{ptr @bfad_debugfs_open_fwsave._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bfad_debugfs_open_fwsave._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @bfad_debugfs_op_regrd, !46, !"bfad_debugfs_op_regrd", i1 false, i1 false}
!46 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 406, i32 37}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 257, i32 24}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 259, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bfad_debugfs_write_regrd._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @bfad_debugfs_write_regrd._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 273, i32 3}
!56 = !{ptr @bfad_debugfs_write_regrd._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bfad_debugfs_write_regrd._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 285, i32 3}
!60 = !{ptr @bfad_debugfs_write_regrd._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bfad_debugfs_write_regrd._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @bfad_debugfs_op_regwr, !63, !"bfad_debugfs_op_regwr", i1 false, i1 false}
!63 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 415, i32 37}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 326, i32 3}
!66 = !{ptr @bfad_debugfs_write_regwr._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @bfad_debugfs_write_regwr._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @bfad_debugfs_write_regwr._entry.28, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/scsi/bfa/bfad_debugfs.c", i32 339, i32 3}
!70 = !{ptr @bfad_debugfs_write_regwr._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2148674199, i64 2148674225, i64 2148674254, i64 2148674288, i64 2148674319, i64 2148674342}
!81 = !{i64 2148676664, i64 2148676690, i64 2148676719, i64 2148676753, i64 2148676784, i64 2148676807}
!82 = !{!"auto-init"}
!83 = !{i64 5763635}
!84 = !{i64 2156186897}
!85 = !{i64 2156191104}
!86 = !{i64 5763217}
