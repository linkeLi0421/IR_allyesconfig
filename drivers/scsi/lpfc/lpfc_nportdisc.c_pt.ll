; ModuleID = '/llk/IR_all_yes/drivers/scsi/lpfc/lpfc_nportdisc.c_pt.bc'
source_filename = "../drivers/scsi/lpfc/lpfc_nportdisc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.serv_parm = type { %struct.csp, %struct.lpfc_name, %struct.lpfc_name, %struct.class_parms, %struct.class_parms, %struct.class_parms, %struct.class_parms, %union.anon.118 }
%struct.csp = type { i8, i8, i8, i8, i16, i8, i8, %union.anon.114, i32 }
%union.anon.114 = type { i32 }
%struct.lpfc_name = type { %union.anon.116 }
%union.anon.116 = type { i64 }
%struct.class_parms = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.118 = type { %struct.anon.119, [8 x i8] }
%struct.anon.119 = type { i32, i32 }
%struct.lpfc_vport = type { ptr, %struct.list_head, i8, i32, i16, i16, i8, i32, i32, %struct.list_head, i16, i16, i16, i16, i16, i16, i16, i16, %struct.serv_parm, i32, i32, %struct.lpfc_name, %struct.lpfc_name, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], %struct.lpfc_name, %struct.lpfc_name, %struct.lpfc_work_evt, %struct.timer_list, i8, i32, %struct.spinlock, i32, %struct.timer_list, %struct.timer_list, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, [256 x %struct.hlist_head], %struct.rwlock_t, %struct.lpfc_vmid_priority_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i8, i8, %struct.list_head, i32, i32, i16, i32, i32, ptr, i8, i32, i32 }
%struct.lpfc_work_evt = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lpfc_vmid_priority_info = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lpfc_nodelist = type { %struct.list_head, %struct.serv_parm, %struct.lpfc_name, %struct.lpfc_name, %struct.spinlock, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, %struct.timer_list, ptr, ptr, ptr, ptr, %struct.lpfc_work_evt, %struct.lpfc_work_evt, %struct.lpfc_work_evt, %struct.kref, %struct.atomic_t, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.lpfc_hba = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lpfc_epd_pool, %struct.lpfc_sli4_hba, ptr, %struct.delayed_work, %struct.delayed_work, %struct.lpfc_sli, i8, i32, i32, i32, i32, %struct.lpfc_trunk_link, i32, i32, i32, ptr, i32, %struct.lpfc_dmabuf, ptr, ptr, %struct.lpfc_mbox_ext_buf_ctx, i32, ptr, ptr, %struct.lpfc_dmabuf, i16, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, %struct.serv_parm, [128 x i8], i32, i32, i32, %struct.lpfc_stats, %struct.lpfc_nodelist, i32, [8 x i8], [8 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.lpfc_vpd, i32, i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, [2 x i32], %struct.wait_queue_head, ptr, i32, i32, i32, i32, [1 x %struct.hbq_s], %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [32 x i8], [16 x i8], [256 x i8], [80 x i8], [256 x i8], [20 x i8], i8, i8, %struct.timer_list, %struct.timer_list, i32, i64, i64, i64, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lpfc_dma_pool, ptr, ptr, ptr, ptr, %struct.fc_host_statistics, i32, i32, i32, %struct.list_head, %struct.spinlock, ptr, i16, i16, i16, i16, ptr, ptr, i16, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.timer_list, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_name, i64, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i16, %struct.list_head, i32, i32, i8, i32, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, %struct.wait_queue_head, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.lpfc_fcf, [3 x i8], i8, i16, %struct.list_head, i8, i16, i16, %struct.spinlock, %struct.list_head, [64 x %struct.unsol_rcv_ct_ctx], i32, %struct.timer_list, %struct.lpfc_ras_fwlog, i8, i32, i32, %struct.atomic_t, %struct.spinlock, ptr, %struct.list_head, i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32, i64, i64, i64, i64, %struct.hrtimer, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.timespec64, i32, i32, i8, i8, i8, i8, i16, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.lpfc_cgn_param, %struct.lpfc_cgn_acqe_stat, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.timespec64, %struct.atomic64_t, i32, i32, %struct.hlist_node, %struct.timer_list, %struct.list_head, [64 x i8], %struct.scsi_host_template, %struct.scsi_host_template, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [256 x %struct.dbg_log_ent] }
%struct.lpfc_epd_pool = type { %struct.list_head, i32, %struct.spinlock }
%struct.lpfc_sli4_hba = type { ptr, ptr, ptr, ptr, %union.anon.206, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.lpfc_register, %struct.lpfc_pc_sli4_params, %struct.lpfc_bbscn_params, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lpfc_name, %struct.lpfc_name, i32, i32, i32, i64, [8 x i8], [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_bmbx, %struct.lpfc_max_cfg_param, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, ptr, i16, %struct.list_head, ptr, ptr, %struct.list_head, ptr, ptr, i16, %struct.list_head, %struct.lpfc_sli4_flags, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.lpfc_sli4_link, %struct.lpfc_sli4_lnk_info, i32, %struct.lpfc_iov, %struct.spinlock, %struct.spinlock, i32, ptr, i16, i16, %struct.cpumask, i16, ptr, ptr, ptr, i32, i8, i8 }
%union.anon.206 = type { %struct.anon.208 }
%struct.anon.208 = type { ptr, ptr, ptr, ptr, ptr }
%struct.lpfc_register = type { i32 }
%struct.lpfc_pc_sli4_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lpfc_bbscn_params = type { i32 }
%struct.lpfc_bmbx = type { ptr, %struct.dma_address, ptr, i32, i32 }
%struct.dma_address = type { i32, i32 }
%struct.lpfc_max_cfg_param = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.lpfc_sli4_flags = type { i32 }
%struct.lpfc_sli4_link = type { i32, i8, i8, i8, i8, i8, i32, i16 }
%struct.lpfc_sli4_lnk_info = type { i8, i8, i8, i8 }
%struct.lpfc_iov = type { i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.lpfc_sli = type { i32, i32, ptr, %struct.lpfc_sli_stat, %struct.list_head, i16, i16, ptr, %struct.list_head, %struct.timer_list, ptr, i32, i16, i64, %struct.lpfc_lnk_stat }
%struct.lpfc_sli_stat = type { i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.lpfc_lnk_stat = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_trunk_link = type { %struct.lpfc_trunk_link_state, %struct.lpfc_trunk_link_state, %struct.lpfc_trunk_link_state, %struct.lpfc_trunk_link_state }
%struct.lpfc_trunk_link_state = type { i32, i8 }
%struct.lpfc_mbox_ext_buf_ctx = type { i32, i32, i32, i32, i32, i32, ptr, %struct.list_head }
%struct.lpfc_dmabuf = type { %struct.list_head, ptr, i32, i32 }
%struct.lpfc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_vpd = type { i32, i32, %struct.anon.209, %struct.anon.210 }
%struct.anon.209 = type { i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, i32, [16 x i8], i32, [16 x i8], i32, [16 x i8] }
%struct.anon.210 = type { i32 }
%struct.hbq_s = type { i16, i16, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lpfc_dma_pool = type { ptr, i32, i32 }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lpfc_fcf = type { i16, i32, i16, i32, i32, %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec, %struct.list_head, [32 x %struct.lpfc_fcf_pri], i32, %struct.timer_list, ptr }
%struct.lpfc_fcf_rec = type { [8 x i8], [8 x i8], [6 x i8], i16, i32, i16, i32, i32 }
%struct.lpfc_fcf_pri = type { %struct.list_head, %struct.lpfc_fcf_pri_rec }
%struct.lpfc_fcf_pri_rec = type { i16, i16, i32 }
%struct.unsol_rcv_ct_ctx = type { i32, i32, i32, i16, i16 }
%struct.lpfc_ras_fwlog = type { ptr, i32, i32, %struct.lpfc_dmabuf, %struct.list_head, i8, i8, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.lpfc_cgn_param = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lpfc_cgn_acqe_stat = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.timespec64 = type { i64, i32 }
%struct.atomic64_t = type { i64 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.dbg_log_ent = type { [256 x i8], i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.211, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.211 = type { ptr }
%struct.lpfc_queue = type { %struct.list_head, %struct.list_head, i16, i16, i8, i8, %struct.list_head, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i16, i16, i8, i8, ptr, i16, i16, ptr, i32, i32, i32, i64, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, i64, ptr, %struct.list_head, ptr, %struct.irq_poll, i32 }
%struct.irq_poll = type { %struct.list_head, i32, i32, ptr }
%struct.lpfc_sli_ring = type { i16, i16, i8, i8, %struct.spinlock, i32, i32, i32, %struct.list_head, i16, i16, %struct.list_head, i16, i16, i32, %struct.list_head, i16, i16, %struct.list_head, i16, i16, %struct.list_head, [5 x %struct.lpfc_sli_ring_mask], i32, ptr, %struct.lpfc_sli_ring_stat, ptr, %union.anon.202 }
%struct.lpfc_sli_ring_mask = type { i8, i8, i8, i8, ptr }
%struct.lpfc_sli_ring_stat = type { i64, i64, i64, i64, i64, i64, i64 }
%union.anon.202 = type { %struct.lpfc_sli3_ring }
%struct.lpfc_sli3_ring = type { i32, i32, i32, i32, i16, i16, i16, i16, ptr, ptr }
%struct.lpfc_iocbq = type { %struct.list_head, %struct.list_head, %struct.list_head, i16, i16, i16, i16, %struct.lpfc_cq_event, %struct.lpfc_wcqe_complete, i64, %union.lpfc_wqe128, %struct._IOCB, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, i32, %union.anon.6, %union.lpfc_vmid_iocb_tag, ptr, ptr, ptr, ptr }
%struct.lpfc_cq_event = type { %struct.list_head, i16, %union.anon }
%union.anon = type { %struct.lpfc_mcqe }
%struct.lpfc_mcqe = type { i32, i32, i32, i32 }
%struct.lpfc_wcqe_complete = type { i32, i32, i32, i32 }
%union.lpfc_wqe128 = type { [32 x i32] }
%struct._IOCB = type { %union.anon.0, %union.anon.2, i32, %union.anon.5 }
%union.anon.0 = type { %struct.ELS_REQUEST64 }
%struct.ELS_REQUEST64 = type { %struct.ULP_BDL, i64 }
%struct.ULP_BDL = type { i32, i32, i32, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i16 }
%union.anon.5 = type { %struct.que_xri64cx_ext_fields }
%struct.que_xri64cx_ext_fields = type { i32, i32, i32, i32, [5 x %struct.lpfc_hbq_entry] }
%struct.lpfc_hbq_entry = type { %struct.ulp_bde64, i32 }
%struct.ulp_bde64 = type { %union.ULP_BDE_TUS, i32, i32 }
%union.ULP_BDE_TUS = type { i32 }
%union.anon.6 = type { ptr }
%union.lpfc_vmid_iocb_tag = type { i32 }
%struct.lpfcMboxq = type { %struct.list_head, %union.anon.11, ptr, ptr, ptr, ptr, ptr, i8, i16, i16, i8, %struct.lpfc_mcqe, ptr }
%union.anon.11 = type { %struct.MAILBOX_t }
%struct.MAILBOX_t = type { %union.anon.12, %union.MAILVARIANTS, %union.sli_var }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%union.MAILVARIANTS = type <{ %struct.READ_XRI_VAR, [92 x i8] }>
%struct.READ_XRI_VAR = type { i16, i16, i16, i16, i64, i32, i8, i8, i16, i16, i16, i32 }
%union.sli_var = type { %struct.sli2_desc }
%struct.sli2_desc = type { [16 x i32], [4 x %struct.lpfc_hgp], [4 x %struct.lpfc_pgp] }
%struct.lpfc_hgp = type { i32, i32 }
%struct.lpfc_pgp = type { i32, i32 }
%struct._ADISC = type <{ i32, %struct.lpfc_name, %struct.lpfc_name, i32 }>
%struct.anon.15 = type { i16, i8, i8 }
%struct.nvmet_fc_target_port = type { i32, i64, i64, ptr, i32, i32 }
%struct._PRLI = type { i8, i8, i8, i8, i32, i32, i8, i8, i16 }
%struct.lpfc_nvme_prli = type { i32, i32, i32, i32, i32 }
%struct.RCV_ELS_REQ = type { [2 x %struct.ulp_bde], i32, i32 }
%struct.ulp_bde = type { i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lpfc_check_sparm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 163, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"%d:(%d):0207 Device %x (%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x) sent invalid service parameters.  Ignoring device.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpfc_check_sparm\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/lpfc/lpfc_nportdisc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpfc_check_sparm._entry_ptr = internal global ptr @lpfc_check_sparm._entry, section ".printk_index", align 4
@lpfc_els_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 225, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%d:(%d):2819 Abort outstanding I/O on NPort x%x Data: x%x x%x x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpfc_els_abort\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lpfc_els_abort._entry_ptr = internal global ptr @lpfc_els_abort._entry, section ".printk_index", align 4
@lpfc_disc_state_machine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 3077, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%d:(%d):0211 DSM in event x%x on NPort x%x in state %d rpi x%x Data: x%x x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_disc_state_machine\00", [40 x i8] zeroinitializer }, align 32
@lpfc_disc_state_machine._entry_ptr = internal global ptr @lpfc_disc_state_machine._entry, section ".printk_index", align 4
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DSM in:          evt:%d ste:%d did:x%x\00", [57 x i8] zeroinitializer }, align 32
@lpfc_disc_action = internal constant { [117 x ptr], [108 x i8] } { [117 x ptr] [ptr @lpfc_rcv_plogi_unused_node, ptr @lpfc_rcv_els_unused_node, ptr @lpfc_rcv_logo_unused_node, ptr @lpfc_rcv_els_unused_node, ptr @lpfc_rcv_els_unused_node, ptr @lpfc_rcv_els_unused_node, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_cmpl_logo_unused_node, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_device_rm_unused_node, ptr @lpfc_device_recov_unused_node, ptr @lpfc_rcv_plogi_plogi_issue, ptr @lpfc_rcv_prli_plogi_issue, ptr @lpfc_rcv_logo_plogi_issue, ptr @lpfc_rcv_els_plogi_issue, ptr @lpfc_rcv_els_plogi_issue, ptr @lpfc_rcv_els_plogi_issue, ptr @lpfc_cmpl_plogi_plogi_issue, ptr @lpfc_disc_illegal, ptr @lpfc_cmpl_logo_plogi_issue, ptr @lpfc_disc_illegal, ptr @lpfc_cmpl_reglogin_plogi_issue, ptr @lpfc_device_rm_plogi_issue, ptr @lpfc_device_recov_plogi_issue, ptr @lpfc_rcv_plogi_adisc_issue, ptr @lpfc_rcv_prli_adisc_issue, ptr @lpfc_rcv_logo_adisc_issue, ptr @lpfc_rcv_padisc_adisc_issue, ptr @lpfc_rcv_padisc_adisc_issue, ptr @lpfc_rcv_prlo_adisc_issue, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_cmpl_adisc_adisc_issue, ptr @lpfc_disc_illegal, ptr @lpfc_device_rm_adisc_issue, ptr @lpfc_device_recov_adisc_issue, ptr @lpfc_rcv_plogi_reglogin_issue, ptr @lpfc_rcv_prli_reglogin_issue, ptr @lpfc_rcv_logo_reglogin_issue, ptr @lpfc_rcv_padisc_reglogin_issue, ptr @lpfc_rcv_padisc_reglogin_issue, ptr @lpfc_rcv_prlo_reglogin_issue, ptr @lpfc_cmpl_plogi_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_cmpl_reglogin_reglogin_issue, ptr @lpfc_device_rm_reglogin_issue, ptr @lpfc_device_recov_reglogin_issue, ptr @lpfc_rcv_plogi_prli_issue, ptr @lpfc_rcv_prli_prli_issue, ptr @lpfc_rcv_logo_prli_issue, ptr @lpfc_rcv_padisc_prli_issue, ptr @lpfc_rcv_padisc_prli_issue, ptr @lpfc_rcv_prlo_prli_issue, ptr @lpfc_cmpl_plogi_illegal, ptr @lpfc_cmpl_prli_prli_issue, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_device_rm_prli_issue, ptr @lpfc_device_recov_prli_issue, ptr @lpfc_rcv_plogi_logo_issue, ptr @lpfc_rcv_prli_logo_issue, ptr @lpfc_rcv_logo_logo_issue, ptr @lpfc_rcv_padisc_logo_issue, ptr @lpfc_rcv_padisc_logo_issue, ptr @lpfc_rcv_prlo_logo_issue, ptr @lpfc_cmpl_plogi_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_cmpl_logo_logo_issue, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_device_rm_logo_issue, ptr @lpfc_device_recov_logo_issue, ptr @lpfc_rcv_plogi_unmap_node, ptr @lpfc_rcv_prli_unmap_node, ptr @lpfc_rcv_logo_unmap_node, ptr @lpfc_rcv_padisc_unmap_node, ptr @lpfc_rcv_padisc_unmap_node, ptr @lpfc_rcv_prlo_unmap_node, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_device_rm_unmap_node, ptr @lpfc_device_recov_unmap_node, ptr @lpfc_rcv_plogi_mapped_node, ptr @lpfc_rcv_prli_mapped_node, ptr @lpfc_rcv_logo_mapped_node, ptr @lpfc_rcv_padisc_mapped_node, ptr @lpfc_rcv_padisc_mapped_node, ptr @lpfc_rcv_prlo_mapped_node, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_disc_illegal, ptr @lpfc_device_recov_mapped_node, ptr @lpfc_rcv_plogi_npr_node, ptr @lpfc_rcv_prli_npr_node, ptr @lpfc_rcv_logo_npr_node, ptr @lpfc_rcv_padisc_npr_node, ptr @lpfc_rcv_padisc_npr_node, ptr @lpfc_rcv_prlo_npr_node, ptr @lpfc_cmpl_plogi_npr_node, ptr @lpfc_cmpl_prli_npr_node, ptr @lpfc_cmpl_logo_npr_node, ptr @lpfc_cmpl_adisc_npr_node, ptr @lpfc_cmpl_reglogin_npr_node, ptr @lpfc_device_rm_npr_node, ptr @lpfc_device_recov_npr_node], [108 x i8] zeroinitializer }, align 32
@lpfc_disc_state_machine._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 3094, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%d:(%d):0212 DSM out state %d on NPort x%x rpi x%x Data: x%x x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@lpfc_disc_state_machine._entry_ptr.13 = internal global ptr @lpfc_disc_state_machine._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DSM out:         ste:%d did:x%x flg:x%x\00", [56 x i8] zeroinitializer }, align 32
@lpfc_disc_state_machine._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.3, i32 3103, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):0213 DSM out state %d on NPort free\0A\00", [51 x i8] zeroinitializer }, align 32
@lpfc_disc_state_machine._entry_ptr.17 = internal global ptr @lpfc_disc_state_machine._entry.15, section ".printk_index", align 4
@lpfc_rcv_plogi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 344, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d:(%d):0140 PLOGI Reject: invalid pname\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpfc_rcv_plogi\00", [17 x i8] zeroinitializer }, align 32
@lpfc_rcv_plogi._entry_ptr = internal global ptr @lpfc_rcv_plogi._entry, section ".printk_index", align 4
@lpfc_rcv_plogi._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 353, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d:(%d):0141 PLOGI Reject: invalid nname\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_rcv_plogi._entry_ptr.22 = internal global ptr @lpfc_rcv_plogi._entry.20, section ".printk_index", align 4
@lpfc_rcv_plogi._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 378, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%d:(%d):0114 PLOGI chkparm OK Data: x%x x%x x%x x%x x%x x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@lpfc_rcv_plogi._entry_ptr.25 = internal global ptr @lpfc_rcv_plogi._entry.23, section ".printk_index", align 4
@lpfc_rcv_plogi._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.3, i32 433, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%d:(%d):0143 PLOGI recv'd from DID: x%x WWPN changed: old %llx new %llx\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_rcv_plogi._entry_ptr.28 = internal global ptr @lpfc_rcv_plogi._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lpfc_defer_plogi_acc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 309, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:4576 PLOGI ACC fails pt2pt discovery: DID %x Data: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lpfc_defer_plogi_acc\00", [43 x i8] zeroinitializer }, align 32
@lpfc_defer_plogi_acc._entry_ptr = internal global ptr @lpfc_defer_plogi_acc._entry, section ".printk_index", align 4
@lpfc_disc_illegal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 1112, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%d:(%d):0271 Illegal State Transition: node x%x event x%x, state x%x Data: x%x x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpfc_disc_illegal\00", [46 x i8] zeroinitializer }, align 32
@lpfc_disc_illegal._entry_ptr = internal global ptr @lpfc_disc_illegal._entry, section ".printk_index", align 4
@lpfc_release_rpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1058, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%d:(%d):1435 release_rpi SKIP UNREG x%x on NPort x%x deferred x%x  flg x%x Data: x%px\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpfc_release_rpi\00", [47 x i8] zeroinitializer }, align 32
@lpfc_release_rpi._entry_ptr = internal global ptr @lpfc_release_rpi._entry, section ".printk_index", align 4
@lpfc_release_rpi._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 1066, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d:(%d):2796 mailbox memory allocation failed \0A\00", [48 x i8] zeroinitializer }, align 32
@lpfc_release_rpi._entry_ptr.37 = internal global ptr @lpfc_release_rpi._entry.35, section ".printk_index", align 4
@lpfc_release_rpi._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 1084, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%d:(%d):1437 release_rpi UNREG x%x on NPort x%x flg x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lpfc_release_rpi._entry_ptr.40 = internal global ptr @lpfc_release_rpi._entry.38, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lpfc_cmpl_plogi_plogi_issue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 1348, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d:(%d):0142 PLOGI RSP: Invalid WWN.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpfc_cmpl_plogi_plogi_issue\00", [36 x i8] zeroinitializer }, align 32
@lpfc_cmpl_plogi_plogi_issue._entry_ptr = internal global ptr @lpfc_cmpl_plogi_plogi_issue._entry, section ".printk_index", align 4
@lpfc_cmpl_plogi_plogi_issue._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 1357, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%d:(%d):0121 PLOGI chkparm OK Data: x%x x%x x%x x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@lpfc_cmpl_plogi_plogi_issue._entry_ptr.45 = internal global ptr @lpfc_cmpl_plogi_plogi_issue._entry.43, section ".printk_index", align 4
@lpfc_cmpl_plogi_plogi_issue._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 1415, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%d:(%d):0133 PLOGI: no memory for config_link Data: x%x x%x x%x x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@lpfc_cmpl_plogi_plogi_issue._entry_ptr.48 = internal global ptr @lpfc_cmpl_plogi_plogi_issue._entry.46, section ".printk_index", align 4
@lpfc_cmpl_plogi_plogi_issue._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.3, i32 1439, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%d:(%d):0018 PLOGI: no memory for reg_login Data: x%x x%x x%x x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@lpfc_cmpl_plogi_plogi_issue._entry_ptr.51 = internal global ptr @lpfc_cmpl_plogi_plogi_issue._entry.49, section ".printk_index", align 4
@lpfc_cmpl_plogi_plogi_issue._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.3, i32 1485, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%d:(%d):0134 PLOGI: cannot issue reg_login Data: x%x x%x x%x x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@lpfc_cmpl_plogi_plogi_issue._entry_ptr.54 = internal global ptr @lpfc_cmpl_plogi_plogi_issue._entry.52, section ".printk_index", align 4
@lpfc_cmpl_plogi_plogi_issue._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.42, ptr @.str.3, i32 1493, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%d:(%d):0135 PLOGI: cannot format reg_login Data: x%x x%x x%x x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@lpfc_cmpl_plogi_plogi_issue._entry_ptr.57 = internal global ptr @lpfc_cmpl_plogi_plogi_issue._entry.55, section ".printk_index", align 4
@lpfc_cmpl_plogi_plogi_issue._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.42, ptr @.str.3, i32 1501, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d:(%d):0261 Cannot Register NameServer login\0A\00", [49 x i8] zeroinitializer }, align 32
@lpfc_cmpl_plogi_plogi_issue._entry_ptr.60 = internal global ptr @lpfc_cmpl_plogi_plogi_issue._entry.58, section ".printk_index", align 4
@lpfc_rcv_prli_support_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 919, ptr @.str.63, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%d:(%d):6115 Rcv PRLI (%x) check failed: ndlp rpi %d state x%x flags x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpfc_rcv_prli_support_check\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lpfc_rcv_prli_support_check._entry_ptr = internal global ptr @lpfc_rcv_prli_support_check._entry, section ".printk_index", align 4
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rport rolechg:   role:x%x did:x%x flg:x%x\00", [54 x i8] zeroinitializer }, align 32
@lpfc_cmpl_plogi_illegal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 1130, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%d:(%d):0272 Illegal State Transition: node x%x event x%x, state x%x Data: x%x x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_cmpl_plogi_illegal\00", [40 x i8] zeroinitializer }, align 32
@lpfc_cmpl_plogi_illegal._entry_ptr = internal global ptr @lpfc_cmpl_plogi_illegal._entry, section ".printk_index", align 4
@lpfc_cmpl_reglogin_reglogin_issue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 1918, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%d:(%d):0246 RegLogin failed Data: x%x x%x x%x x%x x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lpfc_cmpl_reglogin_reglogin_issue\00", [62 x i8] zeroinitializer }, align 32
@lpfc_cmpl_reglogin_reglogin_issue._entry_ptr = internal global ptr @lpfc_cmpl_reglogin_reglogin_issue._entry, section ".printk_index", align 4
@lpfc_cmpl_reglogin_reglogin_issue._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 1950, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d:(%d):3066 RegLogin Complete on x%x x%x x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@lpfc_cmpl_reglogin_reglogin_issue._entry_ptr.71 = internal global ptr @lpfc_cmpl_reglogin_reglogin_issue._entry.69, section ".printk_index", align 4
@lpfc_cmpl_prli_prli_issue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 2168, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d:(%d):6028 FCP NPR PRLI Cmpl Init %d Target %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lpfc_cmpl_prli_prli_issue\00", [38 x i8] zeroinitializer }, align 32
@lpfc_cmpl_prli_prli_issue._entry_ptr = internal global ptr @lpfc_cmpl_prli_prli_issue._entry, section ".printk_index", align 4
@lpfc_cmpl_prli_prli_issue._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 2239, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"%d:(%d):6029 NVME PRLI Cmpl w1 x%08x w4 x%08x w5 x%08x flag x%x, fcp_info x%x nlp_type x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@lpfc_cmpl_prli_prli_issue._entry_ptr.76 = internal global ptr @lpfc_cmpl_prli_prli_issue._entry.74, section ".printk_index", align 4
@lpfc_cmpl_prli_prli_issue._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.3, i32 2272, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%d:(%d):3067 PRLI's still outstanding on x%06x - count %d, Pend Node Mode transition...\0A\00", [39 x i8] zeroinitializer }, align 32
@lpfc_cmpl_prli_prli_issue._entry_ptr.79 = internal global ptr @lpfc_cmpl_prli_prli_issue._entry.77, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16777210, i64 16777212]
@__sancov_gen_cov_switch_values.80 = internal global [7 x i64] [i64 5, i64 16, i64 3, i64 4, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 40]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 155, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 221, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 3073, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 3080, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"lpfc_disc_action\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2925, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 3090, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 3097, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 3102, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 343, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 352, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 373, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 427, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 307, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1108, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1052, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1065, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1081, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1347, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1354, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1409, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1435, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1481, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1489, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1500, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 915, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 994, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1126, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1913, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1948, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2165, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2231, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.311 = private constant [38 x i8] c"../drivers/scsi/lpfc/lpfc_nportdisc.c\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2267, i32 3 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @lpfc_check_sparm._entry, ptr @lpfc_check_sparm._entry_ptr, ptr @lpfc_cmpl_plogi_illegal._entry, ptr @lpfc_cmpl_plogi_illegal._entry_ptr, ptr @lpfc_cmpl_plogi_plogi_issue._entry, ptr @lpfc_cmpl_plogi_plogi_issue._entry.43, ptr @lpfc_cmpl_plogi_plogi_issue._entry.46, ptr @lpfc_cmpl_plogi_plogi_issue._entry.49, ptr @lpfc_cmpl_plogi_plogi_issue._entry.52, ptr @lpfc_cmpl_plogi_plogi_issue._entry.55, ptr @lpfc_cmpl_plogi_plogi_issue._entry.58, ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr, ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.45, ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.48, ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.51, ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.54, ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.57, ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.60, ptr @lpfc_cmpl_prli_prli_issue._entry, ptr @lpfc_cmpl_prli_prli_issue._entry.74, ptr @lpfc_cmpl_prli_prli_issue._entry.77, ptr @lpfc_cmpl_prli_prli_issue._entry_ptr, ptr @lpfc_cmpl_prli_prli_issue._entry_ptr.76, ptr @lpfc_cmpl_prli_prli_issue._entry_ptr.79, ptr @lpfc_cmpl_reglogin_reglogin_issue._entry, ptr @lpfc_cmpl_reglogin_reglogin_issue._entry.69, ptr @lpfc_cmpl_reglogin_reglogin_issue._entry_ptr, ptr @lpfc_cmpl_reglogin_reglogin_issue._entry_ptr.71, ptr @lpfc_defer_plogi_acc._entry, ptr @lpfc_defer_plogi_acc._entry_ptr, ptr @lpfc_disc_illegal._entry, ptr @lpfc_disc_illegal._entry_ptr, ptr @lpfc_disc_state_machine._entry, ptr @lpfc_disc_state_machine._entry.11, ptr @lpfc_disc_state_machine._entry.15, ptr @lpfc_disc_state_machine._entry_ptr, ptr @lpfc_disc_state_machine._entry_ptr.13, ptr @lpfc_disc_state_machine._entry_ptr.17, ptr @lpfc_els_abort._entry, ptr @lpfc_els_abort._entry_ptr, ptr @lpfc_rcv_plogi._entry, ptr @lpfc_rcv_plogi._entry.20, ptr @lpfc_rcv_plogi._entry.23, ptr @lpfc_rcv_plogi._entry.26, ptr @lpfc_rcv_plogi._entry_ptr, ptr @lpfc_rcv_plogi._entry_ptr.22, ptr @lpfc_rcv_plogi._entry_ptr.25, ptr @lpfc_rcv_plogi._entry_ptr.28, ptr @lpfc_rcv_prli_support_check._entry, ptr @lpfc_rcv_prli_support_check._entry_ptr, ptr @lpfc_release_rpi._entry, ptr @lpfc_release_rpi._entry.35, ptr @lpfc_release_rpi._entry.38, ptr @lpfc_release_rpi._entry_ptr, ptr @lpfc_release_rpi._entry_ptr.37, ptr @lpfc_release_rpi._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @lpfc_disc_action, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_check_sparm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_els_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_disc_state_machine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_disc_action to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_disc_state_machine._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_disc_state_machine._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_rcv_plogi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_rcv_plogi._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_rcv_plogi._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_rcv_plogi._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_defer_plogi_acc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_disc_illegal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_release_rpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_release_rpi._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_release_rpi._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_plogi_plogi_issue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_plogi_plogi_issue._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_plogi_plogi_issue._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_plogi_plogi_issue._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_plogi_plogi_issue._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_plogi_plogi_issue._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_plogi_plogi_issue._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_rcv_prli_support_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_plogi_illegal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_reglogin_reglogin_issue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_reglogin_reglogin_issue._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_prli_prli_issue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_prli_prli_issue._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_prli_prli_issue._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_check_sparm(ptr noundef %vport, ptr nocapture noundef %ndlp, ptr nocapture noundef %sp, i32 noundef %class, i32 noundef %flogi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cls1 = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 3
  %0 = ptrtoint ptr %cls1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %cls1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flogi)
  %tobool1.not = icmp eq i32 %flogi, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end36_crit_edge

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then2:                                         ; preds = %if.then
  %rcvDataSizeMsb = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 3, i32 6
  %1 = ptrtoint ptr %rcvDataSizeMsb to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %rcvDataSizeMsb, align 2
  %rcvDataSizeLsb = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 3, i32 7
  %3 = ptrtoint ptr %rcvDataSizeLsb to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %rcvDataSizeLsb, align 1
  %rcvDataSizeMsb8 = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 3, i32 6
  %5 = ptrtoint ptr %rcvDataSizeMsb8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rcvDataSizeMsb8, align 2
  %conv9 = zext i8 %6 to i16
  %shl10 = shl nuw i16 %conv9, 8
  %rcvDataSizeLsb12 = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %rcvDataSizeLsb12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rcvDataSizeLsb12, align 1
  %conv13 = zext i8 %8 to i16
  %or14 = or i16 %shl10, %conv13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or14)
  %tobool16.not = icmp eq i16 %or14, 0
  br i1 %tobool16.not, label %if.then2.do.body_crit_edge, label %if.end

if.then2.do.body_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end:                                           ; preds = %if.then2
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv5 = zext i8 %4 to i32
  %or = or i32 %shl, %conv5
  %conv18 = zext i16 %or14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv18)
  %cmp = icmp ult i32 %or, %conv18
  br i1 %cmp, label %if.then21, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %rcvDataSizeLsb to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %rcvDataSizeLsb, align 1
  %11 = ptrtoint ptr %rcvDataSizeLsb12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rcvDataSizeLsb12, align 1
  %12 = ptrtoint ptr %rcvDataSizeMsb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %rcvDataSizeMsb, align 2
  %14 = ptrtoint ptr %rcvDataSizeMsb8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %rcvDataSizeMsb8, align 2
  br label %if.end36

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %class)
  %cmp32 = icmp eq i32 %class, 0
  br i1 %cmp32, label %if.else.do.body_crit_edge, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end36:                                         ; preds = %if.else.if.end36_crit_edge, %if.then21, %if.end.if.end36_crit_edge, %if.then.if.end36_crit_edge
  %cls2 = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 4
  %15 = ptrtoint ptr %cls2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load37 = load i8, ptr %cls2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load37)
  %tobool39.not = icmp sgt i8 %bf.load37, -1
  br i1 %tobool39.not, label %if.else79, label %if.then40

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flogi)
  %tobool41.not = icmp eq i32 %flogi, 0
  br i1 %tobool41.not, label %if.then42, label %if.then40.if.end84_crit_edge

if.then40.if.end84_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then42:                                        ; preds = %if.then40
  %rcvDataSizeMsb44 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 4, i32 6
  %16 = ptrtoint ptr %rcvDataSizeMsb44 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %rcvDataSizeMsb44, align 2
  %rcvDataSizeLsb48 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 4, i32 7
  %18 = ptrtoint ptr %rcvDataSizeLsb48 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %rcvDataSizeLsb48, align 1
  %rcvDataSizeMsb53 = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %rcvDataSizeMsb53 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rcvDataSizeMsb53, align 2
  %conv54 = zext i8 %21 to i16
  %shl55 = shl nuw i16 %conv54, 8
  %rcvDataSizeLsb57 = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 4, i32 7
  %22 = ptrtoint ptr %rcvDataSizeLsb57 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rcvDataSizeLsb57, align 1
  %conv58 = zext i8 %23 to i16
  %or59 = or i16 %shl55, %conv58
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or59)
  %tobool61.not = icmp eq i16 %or59, 0
  br i1 %tobool61.not, label %if.then42.do.body_crit_edge, label %if.end63

if.then42.do.body_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end63:                                         ; preds = %if.then42
  %conv45 = zext i8 %17 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %conv49 = zext i8 %19 to i32
  %or50 = or i32 %shl46, %conv49
  %conv64 = zext i16 %or59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or50, i32 %conv64)
  %cmp66 = icmp ult i32 %or50, %conv64
  br i1 %cmp66, label %if.then68, label %if.end63.if.end84_crit_edge

if.end63.if.end84_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %rcvDataSizeLsb48 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %rcvDataSizeLsb48, align 1
  %26 = ptrtoint ptr %rcvDataSizeLsb57 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %rcvDataSizeLsb57, align 1
  %27 = ptrtoint ptr %rcvDataSizeMsb44 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load volatile i8, ptr %rcvDataSizeMsb44, align 2
  %29 = ptrtoint ptr %rcvDataSizeMsb53 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %rcvDataSizeMsb53, align 2
  br label %if.end84

if.else79:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %class)
  %cmp80 = icmp eq i32 %class, 1
  br i1 %cmp80, label %if.else79.do.body_crit_edge, label %if.else79.if.end84_crit_edge

if.else79.if.end84_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.else79.do.body_crit_edge:                      ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end84:                                         ; preds = %if.else79.if.end84_crit_edge, %if.then68, %if.end63.if.end84_crit_edge, %if.then40.if.end84_crit_edge
  %cls3 = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 5
  %30 = ptrtoint ptr %cls3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load85 = load i8, ptr %cls3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load85)
  %tobool87.not = icmp sgt i8 %bf.load85, -1
  br i1 %tobool87.not, label %if.else127, label %if.then88

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flogi)
  %tobool89.not = icmp eq i32 %flogi, 0
  br i1 %tobool89.not, label %if.then90, label %if.then88.if.end132_crit_edge

if.then88.if.end132_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then90:                                        ; preds = %if.then88
  %rcvDataSizeMsb92 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 5, i32 6
  %31 = ptrtoint ptr %rcvDataSizeMsb92 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %rcvDataSizeMsb92, align 2
  %rcvDataSizeLsb96 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 5, i32 7
  %33 = ptrtoint ptr %rcvDataSizeLsb96 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load volatile i8, ptr %rcvDataSizeLsb96, align 1
  %rcvDataSizeMsb101 = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 5, i32 6
  %35 = ptrtoint ptr %rcvDataSizeMsb101 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rcvDataSizeMsb101, align 2
  %conv102 = zext i8 %36 to i16
  %shl103 = shl nuw i16 %conv102, 8
  %rcvDataSizeLsb105 = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 5, i32 7
  %37 = ptrtoint ptr %rcvDataSizeLsb105 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rcvDataSizeLsb105, align 1
  %conv106 = zext i8 %38 to i16
  %or107 = or i16 %shl103, %conv106
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or107)
  %tobool109.not = icmp eq i16 %or107, 0
  br i1 %tobool109.not, label %if.then90.do.body_crit_edge, label %if.end111

if.then90.do.body_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end111:                                        ; preds = %if.then90
  %conv93 = zext i8 %32 to i32
  %shl94 = shl nuw nsw i32 %conv93, 8
  %conv97 = zext i8 %34 to i32
  %or98 = or i32 %shl94, %conv97
  %conv112 = zext i16 %or107 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or98, i32 %conv112)
  %cmp114 = icmp ult i32 %or98, %conv112
  br i1 %cmp114, label %if.then116, label %if.end111.if.end132_crit_edge

if.end111.if.end132_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %rcvDataSizeLsb96 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %rcvDataSizeLsb96, align 1
  %41 = ptrtoint ptr %rcvDataSizeLsb105 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %rcvDataSizeLsb105, align 1
  %42 = ptrtoint ptr %rcvDataSizeMsb92 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load volatile i8, ptr %rcvDataSizeMsb92, align 2
  %44 = ptrtoint ptr %rcvDataSizeMsb101 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %rcvDataSizeMsb101, align 2
  br label %if.end132

if.else127:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %class)
  %cmp128 = icmp eq i32 %class, 2
  br i1 %cmp128, label %if.else127.do.body_crit_edge, label %if.else127.if.end132_crit_edge

if.else127.if.end132_crit_edge:                   ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.else127.do.body_crit_edge:                     ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end132:                                        ; preds = %if.else127.if.end132_crit_edge, %if.then116, %if.end111.if.end132_crit_edge, %if.then88.if.end132_crit_edge
  %bbRcvSizeMsb = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 0, i32 5
  %45 = ptrtoint ptr %bbRcvSizeMsb to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load volatile i8, ptr %bbRcvSizeMsb, align 2
  %conv133 = zext i8 %46 to i32
  %shl134 = shl nuw nsw i32 %conv133, 8
  %bbRcvSizeLsb = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 0, i32 6
  %47 = ptrtoint ptr %bbRcvSizeLsb to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load volatile i8, ptr %bbRcvSizeLsb, align 1
  %conv136 = zext i8 %48 to i32
  %or137 = or i32 %shl134, %conv136
  %bbRcvSizeMsb140 = getelementptr inbounds %struct.csp, ptr %sp, i32 0, i32 5
  %49 = ptrtoint ptr %bbRcvSizeMsb140 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bbRcvSizeMsb140, align 2
  %conv141 = zext i8 %50 to i32
  %shl142 = shl nuw nsw i32 %conv141, 8
  %bbRcvSizeLsb144 = getelementptr inbounds %struct.csp, ptr %sp, i32 0, i32 6
  %51 = ptrtoint ptr %bbRcvSizeLsb144 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bbRcvSizeLsb144, align 1
  %conv145 = zext i8 %52 to i32
  %or146 = or i32 %shl142, %conv145
  call void @__sanitizer_cov_trace_cmp4(i32 %or146, i32 %or137)
  %cmp150 = icmp ugt i32 %or146, %or137
  br i1 %cmp150, label %if.then152, label %if.end132.if.end168_crit_edge

if.end132.if.end168_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168

if.then152:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %bbRcvSizeLsb to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load volatile i8, ptr %bbRcvSizeLsb, align 1
  %55 = ptrtoint ptr %bbRcvSizeLsb144 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %bbRcvSizeLsb144, align 1
  %56 = and i8 %50, -16
  %57 = ptrtoint ptr %bbRcvSizeMsb to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load volatile i8, ptr %bbRcvSizeMsb, align 2
  %59 = and i8 %58, 15
  %or164334 = or i8 %59, %56
  %60 = ptrtoint ptr %bbRcvSizeMsb140 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %or164334, ptr %bbRcvSizeMsb140, align 2
  br label %if.end168

if.end168:                                        ; preds = %if.then152, %if.end132.if.end168_crit_edge
  %nlp_nodename = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 3
  %nodeName = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 2
  %61 = ptrtoint ptr %nodeName to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %nodeName, align 8
  %63 = ptrtoint ptr %nlp_nodename to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %nlp_nodename, align 8
  %nlp_portname = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 2
  %portName = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 1
  %64 = ptrtoint ptr %portName to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %portName, align 8
  %66 = ptrtoint ptr %nlp_portname to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %nlp_portname, align 8
  br label %cleanup

do.body:                                          ; preds = %if.else127.do.body_crit_edge, %if.then90.do.body_crit_edge, %if.else79.do.body_crit_edge, %if.then42.do.body_crit_edge, %if.else.do.body_crit_edge, %if.then2.do.body_crit_edge
  %67 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %68) #10
  %69 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %70, i32 0, i32 165
  %71 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %70, i32 0, i32 197
  %73 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %75 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vpi, align 4
  %conv178 = zext i16 %76 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %77 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nlp_DID, align 8
  %nodeName179 = getelementptr inbounds %struct.serv_parm, ptr %sp, i32 0, i32 2
  %79 = ptrtoint ptr %nodeName179 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %nodeName179, align 8
  %conv180 = zext i8 %80 to i32
  %arrayidx183 = getelementptr [8 x i8], ptr %nodeName179, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %82 to i32
  %arrayidx187 = getelementptr [8 x i8], ptr %nodeName179, i32 0, i32 2
  %83 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx187, align 2
  %conv188 = zext i8 %84 to i32
  %arrayidx191 = getelementptr [8 x i8], ptr %nodeName179, i32 0, i32 3
  %85 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx191, align 1
  %conv192 = zext i8 %86 to i32
  %arrayidx195 = getelementptr [8 x i8], ptr %nodeName179, i32 0, i32 4
  %87 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx195, align 4
  %conv196 = zext i8 %88 to i32
  %arrayidx199 = getelementptr [8 x i8], ptr %nodeName179, i32 0, i32 5
  %89 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx199, align 1
  %conv200 = zext i8 %90 to i32
  %arrayidx203 = getelementptr [8 x i8], ptr %nodeName179, i32 0, i32 6
  %91 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx203, align 2
  %conv204 = zext i8 %92 to i32
  %arrayidx207 = getelementptr [8 x i8], ptr %nodeName179, i32 0, i32 7
  %93 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx207, align 1
  %conv208 = zext i8 %94 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %74, i32 noundef %conv178, i32 noundef %78, i32 noundef %conv180, i32 noundef %conv184, i32 noundef %conv188, i32 noundef %conv192, i32 noundef %conv196, i32 noundef %conv200, i32 noundef %conv204, i32 noundef %conv208) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end168
  %retval.0 = phi i32 [ 1, %if.end168 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dmp_dbg(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dbg_print(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_els_abort(ptr noundef %phba, ptr noundef %ndlp) local_unnamed_addr #0 align 64 {
entry:
  %abort_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %abort_list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %abort_list, i32 0, i32 1
  %1 = ptrtoint ptr %abort_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %abort_list, ptr %abort_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %abort_list, ptr %0, align 4
  %sli_rev.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %3 = ptrtoint ptr %sli_rev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sli_rev.i, align 4
  %.off.i = add i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp7.i = icmp eq i32 %4, 4
  br i1 %cmp7.i, label %if.then8.i, label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  %els_wq.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 36
  %5 = ptrtoint ptr %els_wq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %els_wq.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then8.i.cleanup_crit_edge, label %if.then9.i

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %pring.i = getelementptr inbounds %struct.lpfc_queue, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %pring.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pring.i, align 8
  br label %lpfc_phba_elsring.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sli3_ring.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 2
  %9 = ptrtoint ptr %sli3_ring.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sli3_ring.i, align 8
  %arrayidx.i = getelementptr %struct.lpfc_sli_ring, ptr %10, i32 2
  br label %lpfc_phba_elsring.exit

lpfc_phba_elsring.exit:                           ; preds = %if.end12.i, %if.then9.i
  %retval.0.i = phi ptr [ %8, %if.then9.i ], [ %arrayidx.i, %if.end12.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %lpfc_phba_elsring.exit.cleanup_crit_edge, label %do.body, !prof !146

lpfc_phba_elsring.exit.cleanup_crit_edge:         ; preds = %lpfc_phba_elsring.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %lpfc_phba_elsring.exit
  %vport = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 25
  %11 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vport, align 4
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %12, i32 0, i32 51
  %13 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %16, i32 0, i32 165
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %16, i32 0, i32 197
  %19 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %12, i32 0, i32 4
  %21 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vpi, align 4
  %conv = zext i16 %22 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %23 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nlp_DID, align 8
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %25 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nlp_flag, align 4
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %27 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nlp_state, align 2
  %conv12 = zext i16 %28 to i32
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %29 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nlp_rpi, align 4
  %conv13 = zext i16 %30 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %20, i32 noundef %conv, i32 noundef %24, i32 noundef %26, i32 noundef %conv12, i32 noundef %conv13) #13
  br label %do.end35

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %if.then17, label %if.else.do.end35_crit_edge

if.else.do.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %12, align 8
  %brd_no22 = getelementptr inbounds %struct.lpfc_hba, ptr %32, i32 0, i32 197
  %33 = ptrtoint ptr %brd_no22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %brd_no22, align 4
  %vpi24 = getelementptr inbounds %struct.lpfc_vport, ptr %12, i32 0, i32 4
  %35 = ptrtoint ptr %vpi24 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vpi24, align 4
  %conv25 = zext i16 %36 to i32
  %nlp_DID26 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %37 = ptrtoint ptr %nlp_DID26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nlp_DID26, align 8
  %nlp_flag27 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %39 = ptrtoint ptr %nlp_flag27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nlp_flag27, align 4
  %nlp_state28 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %41 = ptrtoint ptr %nlp_state28 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %nlp_state28, align 2
  %conv29 = zext i16 %42 to i32
  %nlp_rpi30 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %43 = ptrtoint ptr %nlp_rpi30 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %nlp_rpi30, align 4
  %conv31 = zext i16 %44 to i32
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %32, ptr noundef nonnull @.str.5, i32 noundef %34, i32 noundef %conv25, i32 noundef %38, i32 noundef %40, i32 noundef %conv29, i32 noundef %conv31) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then17, %if.else.do.end35_crit_edge, %do.end
  call void @lpfc_fabric_abort_nport(ptr noundef %ndlp) #10
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  call void @_raw_spin_lock_irq(ptr noundef %hbalock) #10
  %45 = ptrtoint ptr %sli_rev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sli_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp = icmp eq i32 %46, 4
  br i1 %cmp, label %if.then37, label %do.end35.if.end38_crit_edge

do.end35.if.end38_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then37:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  %ring_lock = getelementptr inbounds %struct.lpfc_sli_ring, ptr %retval.0.i, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %ring_lock) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %do.end35.if.end38_crit_edge
  %txcmplq = getelementptr inbounds %struct.lpfc_sli_ring, ptr %retval.0.i, i32 0, i32 11
  %47 = ptrtoint ptr %txcmplq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %txcmplq, align 4
  %cmp46.not221 = icmp eq ptr %48, %txcmplq
  br i1 %cmp46.not221, label %if.end38.for.end_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  br label %for.body

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end38.for.body_crit_edge
  %iocb.0222 = phi ptr [ %next_iocb.0223, %for.inc.for.body_crit_edge ], [ %48, %if.end38.for.body_crit_edge ]
  %49 = ptrtoint ptr %iocb.0222 to i32
  call void @__asan_load4_noabort(i32 %49)
  %next_iocb.0223 = load ptr, ptr %iocb.0222, align 8
  %call50 = call i32 @lpfc_check_sli_ndlp(ptr noundef %phba, ptr noundef nonnull %retval.0.i, ptr noundef %iocb.0222, ptr noundef %ndlp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.body.for.inc_crit_edge, label %if.then52

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then52:                                        ; preds = %for.body
  %dlist = getelementptr inbounds %struct.lpfc_iocbq, ptr %iocb.0222, i32 0, i32 2
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %dlist, ptr noundef %51, ptr noundef nonnull %abort_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then52.for.inc_crit_edge

if.then52.for.inc_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dlist, ptr %0, align 4
  %53 = ptrtoint ptr %dlist to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %abort_list, ptr %dlist, align 4
  %prev3.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %iocb.0222, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %dlist, ptr %51, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.then52.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp46.not = icmp eq ptr %next_iocb.0223, %txcmplq
  br i1 %cmp46.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end38.for.end_crit_edge
  %56 = ptrtoint ptr %sli_rev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sli_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp60 = icmp eq i32 %57, 4
  br i1 %cmp60, label %if.then62, label %for.end.if.end64_crit_edge

for.end.if.end64_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then62:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %ring_lock63 = getelementptr inbounds %struct.lpfc_sli_ring, ptr %retval.0.i, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %ring_lock63) #10
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.end.if.end64_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #10
  %58 = ptrtoint ptr %abort_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %abort_list, align 4
  %cmp77.not224 = icmp eq ptr %59, %abort_list
  br i1 %cmp77.not224, label %if.end64.for.end92_crit_edge, label %if.end64.for.body81_crit_edge

if.end64.for.body81_crit_edge:                    ; preds = %if.end64
  br label %for.body81

if.end64.for.end92_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end92

for.body81:                                       ; preds = %list_del_init.exit.for.body81_crit_edge, %if.end64.for.body81_crit_edge
  %.pn.in225 = phi ptr [ %.pn, %list_del_init.exit.for.body81_crit_edge ], [ %59, %if.end64.for.body81_crit_edge ]
  %iocb.1 = getelementptr i8, ptr %.pn.in225, i32 -16
  %60 = ptrtoint ptr %.pn.in225 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn = load ptr, ptr %.pn.in225, align 8
  call void @_raw_spin_lock_irq(ptr noundef %hbalock) #10
  %call.i.i204 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in225) #10
  br i1 %call.i.i204, label %if.end.i.i205, label %for.body81.list_del_init.exit_crit_edge

for.body81.list_del_init.exit_crit_edge:          ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i205:                                    ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in225, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %.pn.in225 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %.pn.in225, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i205, %for.body81.list_del_init.exit_crit_edge
  %67 = ptrtoint ptr %.pn.in225 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %.pn.in225, ptr %.pn.in225, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in225, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %.pn.in225, ptr %prev.i3.i, align 4
  %call84 = call i32 @lpfc_sli_issue_abort_iotag(ptr noundef %phba, ptr noundef nonnull %retval.0.i, ptr noundef %iocb.1, ptr noundef null) #10
  call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #10
  %cmp77.not = icmp eq ptr %.pn, %abort_list
  br i1 %cmp77.not, label %list_del_init.exit.for.end92_crit_edge, label %list_del_init.exit.for.body81_crit_edge

list_del_init.exit.for.body81_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body81

list_del_init.exit.for.end92_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end92

for.end92:                                        ; preds = %list_del_init.exit.for.end92_crit_edge, %if.end64.for.end92_crit_edge
  call void @lpfc_issue_hb_tmo(ptr noundef %phba) #10
  %69 = ptrtoint ptr %abort_list to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %abort_list, ptr %abort_list, align 4
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %abort_list, ptr %0, align 4
  call void @_raw_spin_lock_irq(ptr noundef %hbalock) #10
  %71 = ptrtoint ptr %sli_rev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sli_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp95 = icmp eq i32 %72, 4
  br i1 %cmp95, label %if.then97, label %for.end92.if.end99_crit_edge

for.end92.if.end99_crit_edge:                     ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then97:                                        ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #12
  %ring_lock98 = getelementptr inbounds %struct.lpfc_sli_ring, ptr %retval.0.i, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %ring_lock98) #10
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %for.end92.if.end99_crit_edge
  %txq = getelementptr inbounds %struct.lpfc_sli_ring, ptr %retval.0.i, i32 0, i32 8
  %73 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %txq, align 8
  %cmp112.not228 = icmp eq ptr %74, %txq
  br i1 %cmp112.not228, label %if.end99.for.end129_crit_edge, label %if.end99.for.body116_crit_edge

if.end99.for.body116_crit_edge:                   ; preds = %if.end99
  br label %for.body116

if.end99.for.end129_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end129

for.body116:                                      ; preds = %for.inc123.for.body116_crit_edge, %if.end99.for.body116_crit_edge
  %iocb.2229 = phi ptr [ %next_iocb.2230, %for.inc123.for.body116_crit_edge ], [ %74, %if.end99.for.body116_crit_edge ]
  %75 = ptrtoint ptr %iocb.2229 to i32
  call void @__asan_load4_noabort(i32 %75)
  %next_iocb.2230 = load ptr, ptr %iocb.2229, align 8
  %call117 = call i32 @lpfc_check_sli_ndlp(ptr noundef %phba, ptr noundef nonnull %retval.0.i, ptr noundef %iocb.2229, ptr noundef %ndlp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %for.body116.for.inc123_crit_edge, label %if.then119

for.body116.for.inc123_crit_edge:                 ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123

if.then119:                                       ; preds = %for.body116
  %call.i.i207 = call zeroext i1 @__list_del_entry_valid(ptr noundef %iocb.2229) #10
  br i1 %call.i.i207, label %if.end.i.i210, label %if.then119.list_del_init.exit212_crit_edge

if.then119.list_del_init.exit212_crit_edge:       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit212

if.end.i.i210:                                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i208 = getelementptr inbounds %struct.list_head, ptr %iocb.2229, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i208 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i208, align 4
  %78 = ptrtoint ptr %iocb.2229 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iocb.2229, align 4
  %prev1.i.i.i209 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i209 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i209, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del_init.exit212

list_del_init.exit212:                            ; preds = %if.end.i.i210, %if.then119.list_del_init.exit212_crit_edge
  %82 = ptrtoint ptr %iocb.2229 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %iocb.2229, ptr %iocb.2229, align 4
  %prev.i3.i211 = getelementptr inbounds %struct.list_head, ptr %iocb.2229, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i3.i211 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %iocb.2229, ptr %prev.i3.i211, align 4
  %84 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %0, align 4
  %call.i.i214 = call zeroext i1 @__list_add_valid(ptr noundef %iocb.2229, ptr noundef %85, ptr noundef nonnull %abort_list) #10
  br i1 %call.i.i214, label %if.end.i.i216, label %list_del_init.exit212.for.inc123_crit_edge

list_del_init.exit212.for.inc123_crit_edge:       ; preds = %list_del_init.exit212
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123

if.end.i.i216:                                    ; preds = %list_del_init.exit212
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %iocb.2229, ptr %0, align 4
  %87 = ptrtoint ptr %iocb.2229 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %abort_list, ptr %iocb.2229, align 4
  %88 = ptrtoint ptr %prev.i3.i211 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev.i3.i211, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %iocb.2229, ptr %85, align 4
  br label %for.inc123

for.inc123:                                       ; preds = %if.end.i.i216, %list_del_init.exit212.for.inc123_crit_edge, %for.body116.for.inc123_crit_edge
  %cmp112.not = icmp eq ptr %next_iocb.2230, %txq
  br i1 %cmp112.not, label %for.inc123.for.end129_crit_edge, label %for.inc123.for.body116_crit_edge

for.inc123.for.body116_crit_edge:                 ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body116

for.inc123.for.end129_crit_edge:                  ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end129

for.end129:                                       ; preds = %for.inc123.for.end129_crit_edge, %if.end99.for.end129_crit_edge
  %90 = ptrtoint ptr %sli_rev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sli_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %91)
  %cmp131 = icmp eq i32 %91, 4
  br i1 %cmp131, label %if.then133, label %for.end129.if.end135_crit_edge

for.end129.if.end135_crit_edge:                   ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then133:                                       ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #12
  %ring_lock134 = getelementptr inbounds %struct.lpfc_sli_ring, ptr %retval.0.i, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %ring_lock134) #10
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %for.end129.if.end135_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #10
  call void @lpfc_sli_cancel_iocbs(ptr noundef %phba, ptr noundef nonnull %abort_list, i32 noundef 3, i32 noundef 259) #10
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %92 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pport, align 8
  call void @lpfc_cancel_retry_delay_tmo(ptr noundef %93, ptr noundef %ndlp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %lpfc_phba_elsring.exit.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %abort_list) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_fabric_abort_nport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_check_sli_ndlp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli_issue_abort_iotag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_issue_hb_tmo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_cancel_iocbs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_cancel_retry_delay_tmo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_disc_state_machine(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lpfc_nlp_get(ptr noundef %ndlp) #10
  %tobool.not = icmp eq ptr %call, null
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  %nlp_fc4_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %2 = ptrtoint ptr %nlp_fc4_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlp_fc4_type, align 2
  %conv1 = zext i16 %3 to i32
  %shl = shl nuw i32 %conv1, 16
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %4 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlp_type, align 8
  %conv2 = zext i16 %5 to i32
  %or = or i32 %shl, %conv2
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %6 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %9, i32 0, i32 165
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %9, i32 0, i32 197
  %12 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %14 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vpi, align 4
  %conv7 = zext i16 %15 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %16 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlp_DID, align 8
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %18 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nlp_rpi, align 4
  %conv8 = zext i16 %19 to i32
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %20 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlp_flag, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %13, i32 noundef %conv7, i32 noundef %evt, i32 noundef %17, i32 noundef %conv, i32 noundef %conv8, i32 noundef %21, i32 noundef %or) #13
  br label %do.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.do.end24_crit_edge

if.else.do.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vport, align 8
  %brd_no14 = getelementptr inbounds %struct.lpfc_hba, ptr %23, i32 0, i32 197
  %24 = ptrtoint ptr %brd_no14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brd_no14, align 4
  %vpi15 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %26 = ptrtoint ptr %vpi15 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vpi15, align 4
  %conv16 = zext i16 %27 to i32
  %nlp_DID17 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %28 = ptrtoint ptr %nlp_DID17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlp_DID17, align 8
  %nlp_rpi18 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %30 = ptrtoint ptr %nlp_rpi18 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nlp_rpi18, align 4
  %conv19 = zext i16 %31 to i32
  %nlp_flag20 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %32 = ptrtoint ptr %nlp_flag20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nlp_flag20, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %23, ptr noundef nonnull @.str.8, i32 noundef %25, i32 noundef %conv16, i32 noundef %evt, i32 noundef %29, i32 noundef %conv, i32 noundef %conv19, i32 noundef %33, i32 noundef %or) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then11, %if.else.do.end24_crit_edge, %do.end
  %nlp_DID25 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %34 = ptrtoint ptr %nlp_DID25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nlp_DID25, align 8
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %vport, i32 noundef 64, ptr noundef nonnull @.str.10, i32 noundef %evt, i32 noundef %conv, i32 noundef %35) #10
  %mul = mul nuw nsw i32 %conv, 13
  %add = add i32 %mul, %evt
  %arrayidx = getelementptr [117 x ptr], ptr @lpfc_disc_action, i32 0, i32 %add
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %call26 = tail call i32 %37(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #10
  br i1 %tobool.not, label %do.body75, label %if.then28

if.then28:                                        ; preds = %do.end24
  %38 = ptrtoint ptr %nlp_fc4_type to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nlp_fc4_type, align 2
  %conv30 = zext i16 %39 to i32
  %shl31 = shl nuw i32 %conv30, 16
  %40 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nlp_type, align 8
  %conv33 = zext i16 %41 to i32
  %or34 = or i32 %shl31, %conv33
  %42 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cfg_log_verbose, align 4
  %and37 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else54, label %do.end42

do.end42:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vport, align 8
  %pcidev44 = getelementptr inbounds %struct.lpfc_hba, ptr %45, i32 0, i32 165
  %46 = ptrtoint ptr %pcidev44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcidev44, align 4
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %brd_no47 = getelementptr inbounds %struct.lpfc_hba, ptr %45, i32 0, i32 197
  %48 = ptrtoint ptr %brd_no47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brd_no47, align 4
  %vpi48 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %50 = ptrtoint ptr %vpi48 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vpi48, align 4
  %conv49 = zext i16 %51 to i32
  %52 = ptrtoint ptr %nlp_DID25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nlp_DID25, align 8
  %nlp_rpi51 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %54 = ptrtoint ptr %nlp_rpi51 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %nlp_rpi51, align 4
  %conv52 = zext i16 %55 to i32
  %nlp_flag53 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %56 = ptrtoint ptr %nlp_flag53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nlp_flag53, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev45, ptr noundef nonnull @.str.12, i32 noundef %49, i32 noundef %conv49, i32 noundef %call26, i32 noundef %53, i32 noundef %conv52, i32 noundef %57, i32 noundef %or34) #13
  br label %do.end70

if.else54:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool56.not = icmp eq i32 %43, 0
  br i1 %tobool56.not, label %if.then57, label %if.else54.do.end70_crit_edge

if.else54.do.end70_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

if.then57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vport, align 8
  %brd_no60 = getelementptr inbounds %struct.lpfc_hba, ptr %59, i32 0, i32 197
  %60 = ptrtoint ptr %brd_no60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %brd_no60, align 4
  %vpi61 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %62 = ptrtoint ptr %vpi61 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vpi61, align 4
  %conv62 = zext i16 %63 to i32
  %64 = ptrtoint ptr %nlp_DID25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nlp_DID25, align 8
  %nlp_rpi64 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %66 = ptrtoint ptr %nlp_rpi64 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %nlp_rpi64, align 4
  %conv65 = zext i16 %67 to i32
  %nlp_flag66 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %68 = ptrtoint ptr %nlp_flag66 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nlp_flag66, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %59, ptr noundef nonnull @.str.12, i32 noundef %61, i32 noundef %conv62, i32 noundef %call26, i32 noundef %65, i32 noundef %conv65, i32 noundef %69, i32 noundef %or34) #10
  br label %do.end70

do.end70:                                         ; preds = %if.then57, %if.else54.do.end70_crit_edge, %do.end42
  %70 = ptrtoint ptr %nlp_DID25 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nlp_DID25, align 8
  %nlp_flag72 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %72 = ptrtoint ptr %nlp_flag72 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nlp_flag72, align 4
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %vport, i32 noundef 64, ptr noundef nonnull @.str.14, i32 noundef %call26, i32 noundef %71, i32 noundef %73) #10
  %call73 = tail call i32 @lpfc_nlp_put(ptr noundef %ndlp) #10
  br label %if.end103

do.body75:                                        ; preds = %do.end24
  %74 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cfg_log_verbose, align 4
  %and77 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.else90, label %do.end82

do.end82:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vport, align 8
  %pcidev84 = getelementptr inbounds %struct.lpfc_hba, ptr %77, i32 0, i32 165
  %78 = ptrtoint ptr %pcidev84 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pcidev84, align 4
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %brd_no87 = getelementptr inbounds %struct.lpfc_hba, ptr %77, i32 0, i32 197
  %80 = ptrtoint ptr %brd_no87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %brd_no87, align 4
  %vpi88 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %82 = ptrtoint ptr %vpi88 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %vpi88, align 4
  %conv89 = zext i16 %83 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev85, ptr noundef nonnull @.str.16, i32 noundef %81, i32 noundef %conv89, i32 noundef %call26) #13
  br label %do.end102

if.else90:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool92.not = icmp eq i32 %75, 0
  br i1 %tobool92.not, label %if.then93, label %if.else90.do.end102_crit_edge

if.else90.do.end102_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end102

if.then93:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vport, align 8
  %brd_no96 = getelementptr inbounds %struct.lpfc_hba, ptr %85, i32 0, i32 197
  %86 = ptrtoint ptr %brd_no96 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %brd_no96, align 4
  %vpi97 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %88 = ptrtoint ptr %vpi97 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vpi97, align 4
  %conv98 = zext i16 %89 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %85, ptr noundef nonnull @.str.16, i32 noundef %87, i32 noundef %conv98, i32 noundef %call26) #10
  br label %do.end102

do.end102:                                        ; preds = %if.then93, %if.else90.do.end102_crit_edge, %do.end82
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %vport, i32 noundef 64, ptr noundef nonnull @.str.14, i32 noundef %call26, i32 noundef 0, i32 noundef 0) #10
  br label %if.end103

if.end103:                                        ; preds = %do.end102, %do.end70
  ret i32 %call26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_nlp_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_debugfs_disc_trc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_nlp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_plogi_unused_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpfc_rcv_plogi(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then ], [ 255, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_els_unused_node(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_issue_els_logo(ptr noundef %vport, ptr noundef %ndlp, i8 noundef zeroext 0) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_logo_unused_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %1, 1048576
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %call = tail call i32 @lpfc_els_rsp_acc(ptr noundef %vport, i32 noundef 33554432, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %2 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_disc_illegal(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readonly %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %2 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pport, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %load_flag, align 4
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %evt)
  %cmp = icmp eq i32 %evt, 10
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %land.lhs.true3, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true3:                                   ; preds = %entry
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not = icmp eq i16 %8, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true3.do.body_crit_edge

land.lhs.true3.do.body_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %arg, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %un, align 4
  %conv6 = trunc i32 %10 to i16
  tail call fastcc void @lpfc_release_rpi(ptr noundef %1, ptr noundef %vport, ptr noundef %ndlp, i16 noundef zeroext %conv6)
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true3.do.body_crit_edge, %entry.do.body_crit_edge
  %11 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %12) #10
  %13 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %14, i32 0, i32 165
  %15 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %14, i32 0, i32 197
  %17 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %19 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vpi, align 4
  %conv17 = zext i16 %20 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %21 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nlp_DID, align 8
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %23 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nlp_state, align 2
  %conv18 = zext i16 %24 to i32
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %25 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nlp_rpi, align 4
  %conv19 = zext i16 %26 to i32
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %27 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nlp_flag, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %18, i32 noundef %conv17, i32 noundef %22, i32 noundef %evt, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %28) #13
  %29 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nlp_state, align 2
  %conv39 = zext i16 %30 to i32
  ret i32 %conv39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_cmpl_logo_unused_node(ptr nocapture noundef readnone %vport, ptr nocapture noundef readnone %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 255
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_device_rm_unused_node(ptr nocapture noundef readnone %vport, ptr nocapture noundef readnone %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 255
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_device_recov_unused_node(ptr nocapture noundef readnone %vport, ptr nocapture noundef readonly %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_plogi_plogi_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt, align 4
  %fc_stat = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 67
  %6 = ptrtoint ptr %fc_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc_stat, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %fc_stat, align 4
  %fc_portname = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 32
  %portName = getelementptr i32, ptr %5, i32 5
  %call2 = tail call i32 @memcmp(ptr noundef dereferenceable(8) %fc_portname, ptr noundef dereferenceable(8) %portName, i32 noundef 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 596224, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  br label %if.end21

if.else:                                          ; preds = %entry
  %call6 = tail call fastcc i32 @lpfc_rcv_plogi(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.else.if.end21_crit_edge, label %land.lhs.true

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %if.else
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %8 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true8

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true8:                                   ; preds = %land.lhs.true
  %num_disc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 25
  %10 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_disc_nodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.end21_crit_edge, label %if.then10

land.lhs.true8.if.end21_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then10:                                        ; preds = %land.lhs.true8
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %12 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nlp_flag, align 4
  %and12 = and i32 %13, -262145
  store i32 %and12, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  tail call void @lpfc_more_plogi(ptr noundef %vport) #10
  %14 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_disc_nodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15 = icmp eq i32 %15, 0
  br i1 %cmp15, label %if.then16, label %if.then10.if.end21_crit_edge

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %host_lock = getelementptr i8, ptr %vport, i32 -2380
  %16 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %17) #10
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %18 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fc_flag, align 4
  %and17 = and i32 %19, -65537
  store i32 %and17, ptr %fc_flag, align 4
  %20 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %21) #10
  %call19 = tail call i32 @lpfc_can_disctmo(ptr noundef %vport) #10
  tail call void @lpfc_end_rscn(ptr noundef %vport) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then10.if.end21_crit_edge, %land.lhs.true8.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.then
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %22 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %23 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prli_plogi_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 327680, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_logo_plogi_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ulpIoTag = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 11, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %ulpIoTag to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ulpIoTag, align 2
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %6 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %nlp_rpi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %8, ptr noundef %ndlp)
  tail call fastcc void @lpfc_rcv_logo(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef 83886080)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %9 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %10 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_els_plogi_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %1, ptr noundef %ndlp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %evt)
  %cmp = icmp eq i32 %evt, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @lpfc_els_rsp_acc(ptr noundef %vport, i32 noundef 33554432, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @lpfc_issue_els_logo(ptr noundef %vport, ptr noundef %ndlp, i8 noundef zeroext 0) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nlp_delayfunc = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 100
  %call4 = tail call i32 @mod_timer(ptr noundef %nlp_delayfunc, i32 noundef %add) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %3 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %4, 131072
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_last_elscmd = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 7
  %5 = ptrtoint ptr %nlp_last_elscmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 50331648, ptr %nlp_last_elscmd, align 4
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %6 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %7 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %8 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_plogi_plogi_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readonly %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %4 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlp_state, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 22
  %6 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context_un, align 8
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %7, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %9 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 19
  %10 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context2, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %11, align 4
  %cmp.i = icmp eq ptr %13, %11
  %tobool7.not = icmp eq ptr %13, null
  %or.cond695 = or i1 %cmp.i, %tobool7.not
  br i1 %or.cond695, label %if.end4.out_crit_edge, label %if.end9

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 4
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %16 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlp_DID, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777210, i32 %17)
  %cmp.not = icmp eq i32 %17, 16777210
  br i1 %cmp.not, label %if.end9.if.end45_crit_edge, label %land.lhs.true

if.end9.if.end45_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end9
  %portName = getelementptr i8, ptr %15, i32 20
  %18 = ptrtoint ptr %portName to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %portName, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp13 = icmp eq i64 %19, 0
  br i1 %cmp13, label %land.lhs.true.do.body_crit_edge, label %lor.lhs.false

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true
  %nodeName = getelementptr i8, ptr %15, i32 28
  %20 = ptrtoint ptr %nodeName to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %nodeName, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp18 = icmp eq i64 %21, 0
  br i1 %cmp18, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end45_crit_edge

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #10
  %22 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %23, i32 0, i32 165
  %24 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %23, i32 0, i32 197
  %26 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %28 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vpi, align 4
  %conv32 = zext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %27, i32 noundef %conv32) #13
  br label %out

if.end45:                                         ; preds = %lor.lhs.false.if.end45_crit_edge, %if.end9.if.end45_crit_edge
  %call46 = tail call i32 @lpfc_check_sparm(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %add.ptr10, i32 noundef 2, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.out_crit_edge, label %do.body50

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body50:                                        ; preds = %if.end45
  %cfg_log_verbose51 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %30 = ptrtoint ptr %cfg_log_verbose51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cfg_log_verbose51, align 4
  %and52 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else70, label %do.end57

do.end57:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vport, align 8
  %pcidev59 = getelementptr inbounds %struct.lpfc_hba, ptr %33, i32 0, i32 165
  %34 = ptrtoint ptr %pcidev59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcidev59, align 4
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %brd_no62 = getelementptr inbounds %struct.lpfc_hba, ptr %33, i32 0, i32 197
  %36 = ptrtoint ptr %brd_no62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %brd_no62, align 4
  %vpi63 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %38 = ptrtoint ptr %vpi63 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vpi63, align 4
  %conv64 = zext i16 %39 to i32
  %40 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nlp_DID, align 8
  %nlp_state66 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %42 = ptrtoint ptr %nlp_state66 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nlp_state66, align 2
  %conv67 = zext i16 %43 to i32
  %44 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nlp_flag, align 4
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %46 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nlp_rpi, align 4
  %conv69 = zext i16 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev60, ptr noundef nonnull @.str.44, i32 noundef %37, i32 noundef %conv64, i32 noundef %41, i32 noundef %conv67, i32 noundef %45, i32 noundef %conv69) #13
  br label %do.end88

if.else70:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool72.not = icmp eq i32 %31, 0
  br i1 %tobool72.not, label %if.then73, label %if.else70.do.end88_crit_edge

if.else70.do.end88_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end88

if.then73:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vport, align 8
  %brd_no76 = getelementptr inbounds %struct.lpfc_hba, ptr %49, i32 0, i32 197
  %50 = ptrtoint ptr %brd_no76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %brd_no76, align 4
  %vpi77 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %52 = ptrtoint ptr %vpi77 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vpi77, align 4
  %conv78 = zext i16 %53 to i32
  %54 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nlp_DID, align 8
  %nlp_state80 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %56 = ptrtoint ptr %nlp_state80 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %nlp_state80, align 2
  %conv81 = zext i16 %57 to i32
  %58 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nlp_flag, align 4
  %nlp_rpi83 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %60 = ptrtoint ptr %nlp_rpi83 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nlp_rpi83, align 4
  %conv84 = zext i16 %61 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %49, ptr noundef nonnull @.str.44, i32 noundef %51, i32 noundef %conv78, i32 noundef %55, i32 noundef %conv81, i32 noundef %59, i32 noundef %conv84) #10
  br label %do.end88

do.end88:                                         ; preds = %if.then73, %if.else70.do.end88_crit_edge, %do.end57
  %cfg_fcp_class = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 48
  %62 = ptrtoint ptr %cfg_fcp_class to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cfg_fcp_class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp89 = icmp eq i32 %63, 2
  br i1 %cmp89, label %land.lhs.true91, label %do.end88.if.else99_crit_edge

do.end88.if.else99_crit_edge:                     ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else99

land.lhs.true91:                                  ; preds = %do.end88
  %cls2 = getelementptr i8, ptr %15, i32 52
  %64 = ptrtoint ptr %cls2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load92 = load i8, ptr %cls2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load92)
  %tobool95.not = icmp sgt i8 %bf.load92, -1
  br i1 %tobool95.not, label %land.lhs.true91.if.else99_crit_edge, label %land.lhs.true91.if.end104_crit_edge

land.lhs.true91.if.end104_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

land.lhs.true91.if.else99_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else99

if.else99:                                        ; preds = %land.lhs.true91.if.else99_crit_edge, %do.end88.if.else99_crit_edge
  br label %if.end104

if.end104:                                        ; preds = %if.else99, %land.lhs.true91.if.end104_crit_edge
  %.sink697 = phi i8 [ 2, %if.else99 ], [ 1, %land.lhs.true91.if.end104_crit_edge ]
  %nlp_fcp_info100 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 18
  %65 = ptrtoint ptr %nlp_fcp_info100 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nlp_fcp_info100, align 2
  %67 = or i8 %66, %.sink697
  store i8 %67, ptr %nlp_fcp_info100, align 2
  %nlp_class_sup = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 16
  %68 = ptrtoint ptr %nlp_class_sup to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %nlp_class_sup, align 8
  %cls1 = getelementptr i8, ptr %15, i32 36
  %69 = ptrtoint ptr %cls1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load105 = load i8, ptr %cls1, align 8
  %70 = lshr i8 %bf.load105, 6
  %71 = and i8 %70, 2
  store i8 %71, ptr %nlp_class_sup, align 8
  %cls2114 = getelementptr i8, ptr %15, i32 52
  %72 = ptrtoint ptr %cls2114 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load115 = load i8, ptr %cls2114, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load115)
  %tobool117.not = icmp sgt i8 %bf.load115, -1
  br i1 %tobool117.not, label %if.end104.if.end123_crit_edge, label %if.then118

if.end104.if.end123_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then118:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %73 = or i8 %71, 4
  %74 = ptrtoint ptr %nlp_class_sup to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %nlp_class_sup, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then118, %if.end104.if.end123_crit_edge
  %cls3 = getelementptr i8, ptr %15, i32 68
  %75 = ptrtoint ptr %cls3 to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load124 = load i8, ptr %cls3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load124)
  %tobool126.not = icmp sgt i8 %bf.load124, -1
  br i1 %tobool126.not, label %if.end123.if.end132_crit_edge, label %if.then127

if.end123.if.end132_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %nlp_class_sup to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %nlp_class_sup, align 8
  %78 = or i8 %77, 8
  store i8 %78, ptr %nlp_class_sup, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %if.end123.if.end132_crit_edge
  %cls4 = getelementptr i8, ptr %15, i32 84
  %79 = ptrtoint ptr %cls4 to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load133 = load i8, ptr %cls4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load133)
  %tobool135.not = icmp sgt i8 %bf.load133, -1
  br i1 %tobool135.not, label %if.end132.if.end141_crit_edge, label %if.then136

if.end132.if.end141_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %nlp_class_sup to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %nlp_class_sup, align 8
  %82 = or i8 %81, 16
  store i8 %82, ptr %nlp_class_sup, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %if.end132.if.end141_crit_edge
  %bbRcvSizeMsb = getelementptr i8, ptr %15, i32 10
  %83 = ptrtoint ptr %bbRcvSizeMsb to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bbRcvSizeMsb, align 2
  %85 = and i8 %84, 15
  %and143 = zext i8 %85 to i16
  %shl = shl nuw nsw i16 %and143, 8
  %bbRcvSizeLsb = getelementptr i8, ptr %15, i32 11
  %86 = ptrtoint ptr %bbRcvSizeLsb to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bbRcvSizeLsb, align 1
  %conv145 = zext i8 %87 to i16
  %or146 = or i16 %shl, %conv145
  %nlp_maxframe = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 15
  %88 = ptrtoint ptr %nlp_maxframe to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %or146, ptr %nlp_maxframe, align 2
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %89 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fc_flag, align 4
  %91 = and i32 %90, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %91)
  %.not = icmp eq i32 %91, 3
  br i1 %.not, label %if.then154, label %if.end141.if.end257_crit_edge

if.end141.if.end257_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end257

if.then154:                                       ; preds = %if.end141
  %e_d_tov = getelementptr i8, ptr %15, i32 16
  %92 = ptrtoint ptr %e_d_tov to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %e_d_tov, align 4
  %edtovResolution = getelementptr i8, ptr %15, i32 8
  %94 = ptrtoint ptr %edtovResolution to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load157 = load i16, ptr %edtovResolution, align 4
  %95 = and i16 %bf.load157, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool160.not = icmp eq i16 %95, 0
  br i1 %tobool160.not, label %if.then154.if.end162_crit_edge, label %if.then161

if.then154.if.end162_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162

if.then161:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  %fc_edtov = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 56
  %96 = ptrtoint ptr %fc_edtov to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fc_edtov, align 8
  %add = add i32 %97, 999999
  %div = udiv i32 %add, 1000000
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.then154.if.end162_crit_edge
  %ed_tov.0 = phi i32 [ %div, %if.then161 ], [ %93, %if.then154.if.end162_crit_edge ]
  %98 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nlp_flag, align 4
  %and164 = and i32 %99, -17
  store i32 %and164, ptr %nlp_flag, align 4
  %sli_flag = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 29, i32 1
  %100 = ptrtoint ptr %sli_flag to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %sli_flag, align 4
  %and165 = and i32 %101, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end162.if.end186_crit_edge, label %land.lhs.true167

if.end162.if.end186_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

land.lhs.true167:                                 ; preds = %if.end162
  %102 = ptrtoint ptr %edtovResolution to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load169 = load i16, ptr %edtovResolution, align 4
  %103 = and i16 %bf.load169, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool173.not = icmp eq i16 %103, 0
  br i1 %tobool173.not, label %land.lhs.true167.if.end186_crit_edge, label %if.then174

land.lhs.true167.if.end186_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then174:                                       ; preds = %land.lhs.true167
  %un = getelementptr i8, ptr %15, i32 100
  %104 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %un, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1162693720, i32 %105)
  %cmp177 = icmp eq i32 %105, 1162693720
  br i1 %cmp177, label %land.lhs.true179, label %if.then174.if.end186_crit_edge

if.then174.if.end186_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

land.lhs.true179:                                 ; preds = %if.then174
  %flags = getelementptr i8, ptr %15, i32 104
  %106 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags, align 4
  %and180 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %land.lhs.true179.if.end186_crit_edge, label %if.then182

land.lhs.true179.if.end186_crit_edge:             ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then182:                                       ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #12
  %or184 = or i32 %99, 16
  %108 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or184, ptr %nlp_flag, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then182, %land.lhs.true179.if.end186_crit_edge, %if.then174.if.end186_crit_edge, %land.lhs.true167.if.end186_crit_edge, %if.end162.if.end186_crit_edge
  %fc_edtov187 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 56
  %109 = ptrtoint ptr %fc_edtov187 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fc_edtov187, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ed_tov.0, i32 %110)
  %cmp188 = icmp ugt i32 %ed_tov.0, %110
  br i1 %cmp188, label %if.then190, label %if.end186.if.end192_crit_edge

if.end186.if.end192_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192

if.then190:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %fc_edtov187 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %ed_tov.0, ptr %fc_edtov187, align 8
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %if.end186.if.end192_crit_edge
  %112 = ptrtoint ptr %fc_edtov187 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fc_edtov187, align 8
  %mul = shl i32 %113, 1
  %div194 = udiv i32 %mul, 1000
  %fc_ratov = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 58
  %114 = ptrtoint ptr %fc_ratov to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %div194, ptr %fc_ratov, align 8
  %fc_fabparam = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 62
  %115 = call ptr @memcpy(ptr %fc_fabparam, ptr %add.ptr10, i32 112)
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 31
  %116 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %117)
  %cmp195 = icmp eq i32 %117, 4
  br i1 %cmp195, label %if.then197, label %if.else199

if.then197:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  %call198 = tail call i32 @lpfc_issue_reg_vfi(ptr noundef %vport) #10
  br label %if.end257

if.else199:                                       ; preds = %if.end192
  %mbox_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 231
  %118 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mbox_mem_pool, align 8
  %call200 = tail call noalias ptr @mempool_alloc(ptr noundef %119, i32 noundef 3264) #10
  %tobool201.not = icmp eq ptr %call200, null
  br i1 %tobool201.not, label %do.body203, label %if.end248

do.body203:                                       ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %121) #10
  %122 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %vport, align 8
  %pcidev217 = getelementptr inbounds %struct.lpfc_hba, ptr %123, i32 0, i32 165
  %124 = ptrtoint ptr %pcidev217 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pcidev217, align 4
  %dev218 = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %brd_no220 = getelementptr inbounds %struct.lpfc_hba, ptr %123, i32 0, i32 197
  %126 = ptrtoint ptr %brd_no220 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %brd_no220, align 4
  %vpi221 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %128 = ptrtoint ptr %vpi221 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %vpi221, align 4
  %conv222 = zext i16 %129 to i32
  %130 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nlp_DID, align 8
  %nlp_state224 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %132 = ptrtoint ptr %nlp_state224 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %nlp_state224, align 2
  %conv225 = zext i16 %133 to i32
  %134 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nlp_flag, align 4
  %nlp_rpi227 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %136 = ptrtoint ptr %nlp_rpi227 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %nlp_rpi227, align 4
  %conv228 = zext i16 %137 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev218, ptr noundef nonnull @.str.47, i32 noundef %127, i32 noundef %conv222, i32 noundef %131, i32 noundef %conv225, i32 noundef %135, i32 noundef %conv228) #13
  br label %out

if.end248:                                        ; preds = %if.else199
  tail call void @lpfc_config_link(ptr noundef %1, ptr noundef nonnull %call200) #10
  %mbox_cmpl = getelementptr inbounds %struct.lpfcMboxq, ptr %call200, i32 0, i32 6
  %138 = ptrtoint ptr %mbox_cmpl to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @lpfc_sli_def_mbox_cmpl, ptr %mbox_cmpl, align 4
  %vport249 = getelementptr inbounds %struct.lpfcMboxq, ptr %call200, i32 0, i32 2
  %139 = ptrtoint ptr %vport249 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %vport, ptr %vport249, align 4
  %call250 = tail call i32 @lpfc_sli_issue_mbox(ptr noundef %1, ptr noundef nonnull %call200, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call250)
  %cmp251 = icmp eq i32 %call250, 255
  br i1 %cmp251, label %if.then253, label %if.end248.if.end257_crit_edge

if.end248.if.end257_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end257

if.then253:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_free(ptr noundef nonnull %call200, ptr noundef %141) #10
  br label %out

if.end257:                                        ; preds = %if.end248.if.end257_crit_edge, %if.then197, %if.end141.if.end257_crit_edge
  %call258 = tail call i32 @lpfc_unreg_rpi(ptr noundef %vport, ptr noundef %ndlp) #10
  %mbox_mem_pool259 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 231
  %142 = ptrtoint ptr %mbox_mem_pool259 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mbox_mem_pool259, align 8
  %call260 = tail call noalias ptr @mempool_alloc(ptr noundef %143, i32 noundef 3264) #10
  %tobool261.not = icmp eq ptr %call260, null
  br i1 %tobool261.not, label %do.body263, label %if.end308

do.body263:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %145) #10
  %146 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %vport, align 8
  %pcidev277 = getelementptr inbounds %struct.lpfc_hba, ptr %147, i32 0, i32 165
  %148 = ptrtoint ptr %pcidev277 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pcidev277, align 4
  %dev278 = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 44
  %brd_no280 = getelementptr inbounds %struct.lpfc_hba, ptr %147, i32 0, i32 197
  %150 = ptrtoint ptr %brd_no280 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %brd_no280, align 4
  %vpi281 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %152 = ptrtoint ptr %vpi281 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %vpi281, align 4
  %conv282 = zext i16 %153 to i32
  %154 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %nlp_DID, align 8
  %nlp_state284 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %156 = ptrtoint ptr %nlp_state284 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %nlp_state284, align 2
  %conv285 = zext i16 %157 to i32
  %158 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %nlp_flag, align 4
  %nlp_rpi287 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %160 = ptrtoint ptr %nlp_rpi287 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %nlp_rpi287, align 4
  %conv288 = zext i16 %161 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev278, ptr noundef nonnull @.str.50, i32 noundef %151, i32 noundef %conv282, i32 noundef %155, i32 noundef %conv285, i32 noundef %159, i32 noundef %conv288) #13
  br label %out

if.end308:                                        ; preds = %if.end257
  %vpi309 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %162 = ptrtoint ptr %vpi309 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %vpi309, align 4
  %remoteID = getelementptr inbounds %struct.lpfc_iocbq, ptr %7, i32 0, i32 11, i32 0, i32 0, i32 1
  %164 = ptrtoint ptr %remoteID to i32
  call void @__asan_loadN_noabort(i32 %164, i32 8)
  %bf.load311 = load i64, ptr %remoteID, align 4
  %165 = trunc i64 %bf.load311 to i32
  %bf.cast = and i32 %165, 16777215
  %nlp_rpi313 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %166 = ptrtoint ptr %nlp_rpi313 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %nlp_rpi313, align 4
  %call314 = tail call i32 @lpfc_reg_rpi(ptr noundef %1, i16 noundef zeroext %163, i32 noundef %bf.cast, ptr noundef %add.ptr10, ptr noundef nonnull %call260, i16 noundef zeroext %167) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %cmp315 = icmp eq i32 %call314, 0
  br i1 %cmp315, label %if.then317, label %if.else393

if.then317:                                       ; preds = %if.end308
  %168 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %nlp_DID, align 8
  %170 = zext i32 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values)
  switch i32 %169, label %sw.default [
    i32 16777212, label %sw.bb
    i32 16777210, label %sw.bb320
  ]

sw.bb:                                            ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #12
  %mbox_cmpl319 = getelementptr inbounds %struct.lpfcMboxq, ptr %call260, i32 0, i32 6
  %171 = ptrtoint ptr %mbox_cmpl319 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @lpfc_mbx_cmpl_ns_reg_login, ptr %mbox_cmpl319, align 4
  %fc_sparam = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 1
  %172 = call ptr @memcpy(ptr %fc_sparam, ptr %add.ptr10, i32 112)
  br label %sw.epilog

sw.bb320:                                         ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #12
  %mbox_cmpl321 = getelementptr inbounds %struct.lpfcMboxq, ptr %call260, i32 0, i32 6
  %173 = ptrtoint ptr %mbox_cmpl321 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @lpfc_mbx_cmpl_fdmi_reg_login, ptr %mbox_cmpl321, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #12
  %174 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %nlp_flag, align 4
  %or323 = or i32 %175, 2
  store i32 %or323, ptr %nlp_flag, align 4
  %mbox_cmpl324 = getelementptr inbounds %struct.lpfcMboxq, ptr %call260, i32 0, i32 6
  %176 = ptrtoint ptr %mbox_cmpl324 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @lpfc_mbx_cmpl_reg_login, ptr %mbox_cmpl324, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb320, %sw.bb
  %call325 = tail call ptr @lpfc_nlp_get(ptr noundef %ndlp) #10
  %ctx_ndlp = getelementptr inbounds %struct.lpfcMboxq, ptr %call260, i32 0, i32 3
  %177 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call325, ptr %ctx_ndlp, align 4
  %tobool327.not = icmp eq ptr %call325, null
  br i1 %tobool327.not, label %sw.epilog.out_crit_edge, label %if.end329

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end329:                                        ; preds = %sw.epilog
  %vport330 = getelementptr inbounds %struct.lpfcMboxq, ptr %call260, i32 0, i32 2
  %178 = ptrtoint ptr %vport330 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %vport, ptr %vport330, align 4
  %call331 = tail call i32 @lpfc_sli_issue_mbox(ptr noundef %1, ptr noundef nonnull %call260, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call331)
  %cmp332.not = icmp eq i32 %call331, 255
  br i1 %cmp332.not, label %if.end337, label %if.then334

if.then334:                                       ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 3) #10
  %nlp_state335 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %179 = ptrtoint ptr %nlp_state335 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %nlp_state335, align 2
  br label %cleanup

if.end337:                                        ; preds = %if.end329
  %181 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %nlp_flag, align 4
  %and339 = and i32 %182, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %tobool340.not = icmp eq i32 %and339, 0
  br i1 %tobool340.not, label %if.end337.if.end344_crit_edge, label %if.then341

if.end337.if.end344_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end344

if.then341:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #12
  %and343 = and i32 %182, -3
  %183 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %and343, ptr %nlp_flag, align 4
  br label %if.end344

if.end344:                                        ; preds = %if.then341, %if.end337.if.end344_crit_edge
  %call345 = tail call i32 @lpfc_nlp_put(ptr noundef %ndlp) #10
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %call260, i32 0, i32 4
  %184 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ctx_buf, align 4
  %virt346 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %virt346 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %virt346, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %185, i32 0, i32 2
  %188 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %1, ptr noundef %187, i32 noundef %189) #10
  tail call void @kfree(ptr noundef %185) #10
  %190 = ptrtoint ptr %mbox_mem_pool259 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mbox_mem_pool259, align 8
  tail call void @mempool_free(ptr noundef nonnull %call260, ptr noundef %191) #10
  %192 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %193) #10
  %194 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %vport, align 8
  %pcidev362 = getelementptr inbounds %struct.lpfc_hba, ptr %195, i32 0, i32 165
  %196 = ptrtoint ptr %pcidev362 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pcidev362, align 4
  %dev363 = getelementptr inbounds %struct.pci_dev, ptr %197, i32 0, i32 44
  %brd_no365 = getelementptr inbounds %struct.lpfc_hba, ptr %195, i32 0, i32 197
  %198 = ptrtoint ptr %brd_no365 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %brd_no365, align 4
  %200 = ptrtoint ptr %vpi309 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %vpi309, align 4
  %conv367 = zext i16 %201 to i32
  %202 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %nlp_DID, align 8
  %nlp_state369 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %204 = ptrtoint ptr %nlp_state369 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %nlp_state369, align 2
  %conv370 = zext i16 %205 to i32
  %206 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %nlp_flag, align 4
  %208 = ptrtoint ptr %nlp_rpi313 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %nlp_rpi313, align 4
  %conv373 = zext i16 %209 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev363, ptr noundef nonnull @.str.53, i32 noundef %199, i32 noundef %conv367, i32 noundef %203, i32 noundef %conv370, i32 noundef %207, i32 noundef %conv373) #13
  br label %out

if.else393:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %mbox_mem_pool259 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %mbox_mem_pool259, align 8
  tail call void @mempool_free(ptr noundef nonnull %call260, ptr noundef %211) #10
  %212 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %213) #10
  %214 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %vport, align 8
  %pcidev409 = getelementptr inbounds %struct.lpfc_hba, ptr %215, i32 0, i32 165
  %216 = ptrtoint ptr %pcidev409 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pcidev409, align 4
  %dev410 = getelementptr inbounds %struct.pci_dev, ptr %217, i32 0, i32 44
  %brd_no412 = getelementptr inbounds %struct.lpfc_hba, ptr %215, i32 0, i32 197
  %218 = ptrtoint ptr %brd_no412 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %brd_no412, align 4
  %220 = ptrtoint ptr %vpi309 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %vpi309, align 4
  %conv414 = zext i16 %221 to i32
  %222 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %nlp_DID, align 8
  %nlp_state416 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %224 = ptrtoint ptr %nlp_state416 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %nlp_state416, align 2
  %conv417 = zext i16 %225 to i32
  %226 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %nlp_flag, align 4
  %228 = ptrtoint ptr %nlp_rpi313 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %nlp_rpi313, align 4
  %conv420 = zext i16 %229 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev410, ptr noundef nonnull @.str.56, i32 noundef %219, i32 noundef %conv414, i32 noundef %223, i32 noundef %conv417, i32 noundef %227, i32 noundef %conv420) #13
  br label %out

out:                                              ; preds = %if.else393, %if.end344, %sw.epilog.out_crit_edge, %do.body263, %if.then253, %do.body203, %if.end45.out_crit_edge, %do.body, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %nlp_DID441 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %230 = ptrtoint ptr %nlp_DID441 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %nlp_DID441, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777212, i32 %231)
  %cmp442 = icmp eq i32 %231, 16777212
  br i1 %cmp442, label %if.then444, label %out.if.end478_crit_edge

out.if.end478_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end478

if.then444:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_vport_set_state(ptr noundef %vport, i32 noundef 9) #10
  %232 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %233) #10
  %234 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %vport, align 8
  %pcidev459 = getelementptr inbounds %struct.lpfc_hba, ptr %235, i32 0, i32 165
  %236 = ptrtoint ptr %pcidev459 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pcidev459, align 4
  %dev460 = getelementptr inbounds %struct.pci_dev, ptr %237, i32 0, i32 44
  %brd_no462 = getelementptr inbounds %struct.lpfc_hba, ptr %235, i32 0, i32 197
  %238 = ptrtoint ptr %brd_no462 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %brd_no462, align 4
  %vpi463 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %240 = ptrtoint ptr %vpi463 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %vpi463, align 4
  %conv464 = zext i16 %241 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev460, ptr noundef nonnull @.str.59, i32 noundef %239, i32 noundef %conv464) #13
  br label %if.end478

if.end478:                                        ; preds = %if.then444, %out.if.end478_crit_edge
  %nlp_state479 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %242 = ptrtoint ptr %nlp_state479 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %nlp_state479, align 2
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %244 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %243, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end478, %if.then334, %if.then
  %retval.0.shrunk = phi i16 [ %5, %if.then ], [ 255, %if.end478 ], [ %180, %if.then334 ]
  %retval.0 = zext i16 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_cmpl_logo_plogi_issue(ptr nocapture noundef readnone %vport, ptr nocapture noundef readonly %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_reglogin_plogi_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readonly %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %2 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pport, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %load_flag, align 4
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %arg, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %un, align 4
  %conv4 = trunc i32 %10 to i16
  tail call fastcc void @lpfc_release_rpi(ptr noundef %1, ptr noundef %vport, ptr noundef %ndlp, i16 noundef zeroext %conv4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %11 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nlp_state, align 2
  %conv5 = zext i16 %12 to i32
  ret i32 %conv5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_rm_plogi_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %3, 134217728
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %4 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %5 to i32
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %7, ptr noundef %ndlp)
  tail call void @lpfc_drop_node(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 255, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_recov_plogi_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %0 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_flag, align 4
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %3, ptr noundef %ndlp)
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %4 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %5 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlp_flag, align 4
  %and2 = and i32 %6, -134479873
  store i32 %and2, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %7 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_plogi_adisc_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %1, ptr noundef %ndlp)
  %call = tail call fastcc i32 @lpfc_rcv_plogi(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %4 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlp_flag, align 4
  %and5 = and i32 %5, -262145
  store i32 %and5, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %num_disc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 25
  %6 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_disc_nodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then3.cleanup_crit_edge, label %if.then8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_more_adisc(ptr noundef %vport) #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %8 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %nlp_prev_state, align 8
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %9 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlp_DID, align 8
  %call11 = tail call i32 @lpfc_issue_els_plogi(ptr noundef %vport, i32 noundef %10, i8 noundef zeroext 0) #10
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %11 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %11)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prli_adisc_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpfc_rcv_prli_support_check(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @lpfc_els_rsp_prli_acc(ptr noundef %vport, ptr noundef %arg, ptr noundef %ndlp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_logo_adisc_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %1, ptr noundef %ndlp)
  tail call fastcc void @lpfc_rcv_logo(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef 83886080)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %2 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_padisc_adisc_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_rcv_padisc(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prlo_adisc_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_rcv_logo(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef 554696724)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_adisc_adisc_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readonly %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 22
  %2 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context_un, align 8
  %context2.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 19
  %4 = ptrtoint ptr %context2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %cmp.i.i = icmp eq ptr %7, %5
  %tobool3.not.i = icmp eq ptr %7, null
  %or.cond.i = or i1 %cmp.i.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.then.i.lpfc_check_elscmpl_iocb.exit_crit_edge, label %if.then4.i

if.then.i.lpfc_check_elscmpl_iocb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_check_elscmpl_iocb.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %virt.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 4
  br label %lpfc_check_elscmpl_iocb.exit

if.else.i:                                        ; preds = %entry
  %ulpStatus.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %3, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %ulpStatus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %ulpStatus.i, align 4
  %11 = and i32 %bf.load.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i.lpfc_check_elscmpl_iocb.exit_crit_edge

if.else.i.lpfc_check_elscmpl_iocb.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_check_elscmpl_iocb.exit

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear10.i = and i32 %bf.load.i, -241
  %bf.set.i = or i32 %bf.clear10.i, 48
  %12 = ptrtoint ptr %ulpStatus.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.set.i, ptr %ulpStatus.i, align 4
  %arrayidx.i = getelementptr %struct.lpfc_iocbq, ptr %3, i32 0, i32 11, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 259, ptr %arrayidx.i, align 4
  br label %lpfc_check_elscmpl_iocb.exit

lpfc_check_elscmpl_iocb.exit:                     ; preds = %if.then7.i, %if.else.i.lpfc_check_elscmpl_iocb.exit_crit_edge, %if.then4.i, %if.then.i.lpfc_check_elscmpl_iocb.exit_crit_edge
  %ptr.0.i = phi ptr [ %add.ptr5.i, %if.then4.i ], [ null, %if.then7.i ], [ null, %if.else.i.lpfc_check_elscmpl_iocb.exit_crit_edge ], [ null, %if.then.i.lpfc_check_elscmpl_iocb.exit_crit_edge ]
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %3, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %15 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %lor.lhs.false, label %lpfc_check_elscmpl_iocb.exit.if.then_crit_edge

lpfc_check_elscmpl_iocb.exit.if.then_crit_edge:   ; preds = %lpfc_check_elscmpl_iocb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %lpfc_check_elscmpl_iocb.exit
  %portName = getelementptr inbounds %struct._ADISC, ptr %ptr.0.i, i32 0, i32 1
  %nlp_flag.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %16 = ptrtoint ptr %nlp_flag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlp_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool.not.i81 = icmp sgt i32 %17, -1
  br i1 %tobool.not.i81, label %lor.lhs.false.if.then_crit_edge, label %if.end.i

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false
  %nodeName = getelementptr inbounds %struct._ADISC, ptr %ptr.0.i, i32 0, i32 2
  %nlp_nodename.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %nodeName, ptr noundef dereferenceable(8) %nlp_nodename.i, i32 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i, label %lpfc_check_adisc.exit, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lpfc_check_adisc.exit:                            ; preds = %if.end.i
  %nlp_portname.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 2
  %bcmp1.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %portName, ptr noundef dereferenceable(8) %nlp_portname.i, i32 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i)
  %tobool5.not.i.not = icmp eq i32 %bcmp1.i, 0
  br i1 %tobool5.not.i.not, label %if.end, label %lpfc_check_adisc.exit.if.then_crit_edge

lpfc_check_adisc.exit.if.then_crit_edge:          ; preds = %lpfc_check_adisc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lpfc_check_adisc.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %lpfc_check_elscmpl_iocb.exit.if.then_crit_edge
  %nlp_delayfunc = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 100
  %call5 = tail call i32 @mod_timer(ptr noundef %nlp_delayfunc, i32 noundef %add) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %19 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %20, 131072
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_last_elscmd = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 7
  %21 = ptrtoint ptr %nlp_last_elscmd to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50331648, ptr %nlp_last_elscmd, align 4
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %22 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  %call7 = tail call i32 @lpfc_unreg_rpi(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %cleanup

if.end:                                           ; preds = %lpfc_check_adisc.exit
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 31
  %23 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp = icmp eq i32 %24, 4
  br i1 %cmp, label %if.then9, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then9:                                         ; preds = %if.end
  %call10 = tail call i32 @lpfc_sli4_resume_rpi(ptr noundef %ndlp, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end17_crit_edge, label %if.then12

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_prev_state13 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %25 = ptrtoint ptr %nlp_prev_state13 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %nlp_prev_state13, align 8
  br label %cleanup

if.end17:                                         ; preds = %if.then9.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %26 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nlp_type, align 8
  %28 = and i16 %27, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool19.not = icmp eq i16 %28, 0
  br i1 %tobool19.not, label %if.end17.if.end24_crit_edge, label %if.then20

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_fc4_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %29 = ptrtoint ptr %nlp_fc4_type to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nlp_fc4_type, align 2
  %31 = or i16 %30, 1
  store i16 %31, ptr %nlp_fc4_type, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end17.if.end24_crit_edge
  %32 = and i16 %27, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool28.not = icmp eq i16 %32, 0
  br i1 %tobool28.not, label %if.end24.if.end34_crit_edge, label %if.then29

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_fc4_type30 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %33 = ptrtoint ptr %nlp_fc4_type30 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %nlp_fc4_type30, align 2
  %35 = or i16 %34, 2
  store i16 %35, ptr %nlp_fc4_type30, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end24.if.end34_crit_edge
  %36 = and i16 %27, 40
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool38.not = icmp eq i16 %36, 0
  %nlp_prev_state41 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %37 = ptrtoint ptr %nlp_prev_state41 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %nlp_prev_state41, align 8
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 7) #10
  br label %cleanup

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then39, %if.then12, %if.then
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %38 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %38)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_rm_adisc_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %3, 134217728
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %4 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %5 to i32
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %7, ptr noundef %ndlp)
  tail call void @lpfc_drop_node(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 255, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_recov_adisc_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %0 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_flag, align 4
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %3, ptr noundef %ndlp)
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %4 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %5 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlp_flag, align 4
  %and2 = and i32 %6, -134479873
  store i32 %and2, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  tail call fastcc void @lpfc_disc_set_adisc(ptr noundef %vport, ptr noundef %ndlp)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %7 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_plogi_reglogin_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpfc_rcv_plogi(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prli_reglogin_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpfc_rcv_prli_support_check(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 74
  %2 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else12, label %if.then2

if.then2:                                         ; preds = %if.end
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %4 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlp_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool3.not = icmp sgt i32 %5, -1
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @lpfc_rcv_prli(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %call5 = tail call i32 @lpfc_els_rsp_prli_acc(ptr noundef %vport, ptr noundef %arg, ptr noundef %ndlp) #10
  br label %cleanup

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 327680, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  br label %cleanup

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @lpfc_els_rsp_prli_acc(ptr noundef %vport, ptr noundef %arg, ptr noundef %ndlp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else12, %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %6 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_logo_reglogin_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %mbox_active = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 29, i32 7
  %2 = ptrtoint ptr %mbox_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_active, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %3, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.15, ptr %u, i32 0, i32 1
  %4 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mbxCommand, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -109, i8 %5)
  %cmp = icmp eq i8 %5, -109
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then
  %ctx_ndlp = getelementptr inbounds %struct.lpfcMboxq, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx_ndlp, align 4
  %cmp3 = icmp eq ptr %7, %ndlp
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %8 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %9, -3
  store i32 %and, ptr %nlp_flag, align 4
  %call = tail call i32 @lpfc_nlp_put(ptr noundef %ndlp) #10
  %10 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ctx_ndlp, align 4
  %mbox_cmpl = getelementptr inbounds %struct.lpfcMboxq, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %mbox_cmpl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @lpfc_sli_def_mbox_cmpl, ptr %mbox_cmpl, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 221
  tail call void @_raw_spin_lock_irq(ptr noundef %hbalock) #10
  %mboxq = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 29, i32 4
  %12 = ptrtoint ptr %mboxq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mboxq, align 8
  %cmp16.not89 = icmp eq ptr %13, %mboxq
  br i1 %cmp16.not89, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %nlp_flag31 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %mboxq_cnt = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 29, i32 5
  %mbox_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 231
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mb.090 = phi ptr [ %13, %for.body.lr.ph ], [ %nextmb.092, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %mb.090 to i32
  call void @__asan_load4_noabort(i32 %14)
  %nextmb.092 = load ptr, ptr %mb.090, align 4
  %u18 = getelementptr inbounds %struct.lpfcMboxq, ptr %mb.090, i32 0, i32 1
  %mbxCommand19 = getelementptr inbounds %struct.anon.15, ptr %u18, i32 0, i32 1
  %15 = ptrtoint ptr %mbxCommand19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mbxCommand19, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -109, i8 %16)
  %cmp21 = icmp eq i8 %16, -109
  br i1 %cmp21, label %land.lhs.true23, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true23:                                  ; preds = %for.body
  %ctx_ndlp24 = getelementptr inbounds %struct.lpfcMboxq, ptr %mb.090, i32 0, i32 3
  %17 = ptrtoint ptr %ctx_ndlp24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx_ndlp24, align 4
  %cmp25 = icmp eq ptr %18, %ndlp
  br i1 %cmp25, label %if.then27, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true23
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %mb.090, i32 0, i32 4
  %19 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx_buf, align 4
  %tobool28.not = icmp eq ptr %20, null
  br i1 %tobool28.not, label %if.then27.if.end30_crit_edge, label %if.then29

if.then27.if.end30_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys, align 4
  tail call void @__lpfc_mbuf_free(ptr noundef %1, ptr noundef %22, i32 noundef %24) #10
  tail call void @kfree(ptr noundef nonnull %20) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27.if.end30_crit_edge
  %25 = ptrtoint ptr %nlp_flag31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nlp_flag31, align 4
  %and32 = and i32 %26, -3
  store i32 %and32, ptr %nlp_flag31, align 4
  %call33 = tail call i32 @lpfc_nlp_put(ptr noundef %ndlp) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mb.090) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end30.list_del.exit_crit_edge

if.end30.list_del.exit_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mb.090, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %mb.090 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mb.090, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end30.list_del.exit_crit_edge
  %33 = ptrtoint ptr %mb.090 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %mb.090, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mb.090, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %35 = ptrtoint ptr %mboxq_cnt to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mboxq_cnt, align 8
  %dec = add i16 %36, -1
  store i16 %dec, ptr %mboxq_cnt, align 8
  %37 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_free(ptr noundef %mb.090, ptr noundef %38) #10
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %land.lhs.true23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp16.not = icmp eq ptr %nextmb.092, %mboxq
  br i1 %cmp16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #10
  %cfg_enable_fc4_type = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 52
  %39 = ptrtoint ptr %cfg_enable_fc4_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cfg_enable_fc4_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp43.not = icmp eq i32 %40, 1
  br i1 %cmp43.not, label %for.end.if.end50_crit_edge, label %if.then45

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then45:                                        ; preds = %for.end
  %call46 = tail call ptr @lpfc_findnode_did(ptr noundef %vport, i32 noundef 16777212) #10
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then45.if.end50_crit_edge, label %if.then48

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_els_abort(ptr noundef %1, ptr noundef nonnull %call46)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then45.if.end50_crit_edge, %for.end.if.end50_crit_edge
  tail call fastcc void @lpfc_rcv_logo(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef 83886080)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %41 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %nlp_state, align 2
  %conv52 = zext i16 %42 to i32
  ret i32 %conv52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_padisc_reglogin_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_rcv_padisc(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prlo_reglogin_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_els_rsp_acc(ptr noundef %vport, i32 noundef 554696724, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_plogi_illegal(ptr nocapture noundef readonly %vport, ptr nocapture noundef readonly %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #10
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 165
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 197
  %8 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %10 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vpi, align 4
  %conv8 = zext i16 %11 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %12 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nlp_DID, align 8
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %14 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nlp_state, align 2
  %conv9 = zext i16 %15 to i32
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %16 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nlp_rpi, align 4
  %conv10 = zext i16 %17 to i32
  %18 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlp_flag, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %9, i32 noundef %conv8, i32 noundef %13, i32 noundef %evt, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %19) #13
  br label %if.end28

if.end28:                                         ; preds = %do.body, %entry.if.end28_crit_edge
  %nlp_state29 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %20 = ptrtoint ptr %nlp_state29 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nlp_state29, align 2
  %conv30 = zext i16 %21 to i32
  ret i32 %conv30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_reglogin_reglogin_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readonly %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %arg, i32 0, i32 1
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %arg, i32 0, i32 1, i32 0, i32 1
  %arrayidx = getelementptr %struct.lpfcMboxq, ptr %arg, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end49, label %do.body

do.body:                                          ; preds = %entry
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #10
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %12 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vpi, align 4
  %conv9 = zext i16 %13 to i32
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %u, align 4
  %conv11 = zext i16 %15 to i32
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %16 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_state, align 8
  %vpi13 = getelementptr inbounds %struct.lpfcMboxq, ptr %arg, i32 0, i32 1, i32 0, i32 1, i32 0, i32 8
  %18 = ptrtoint ptr %vpi13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vpi13, align 2
  %conv14 = zext i16 %19 to i32
  %rpi = getelementptr inbounds %struct.lpfcMboxq, ptr %arg, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %rpi to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rpi, align 2
  %conv16 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %11, i32 noundef %conv9, i32 noundef %3, i32 noundef %conv11, i32 noundef %17, i32 noundef %conv14, i32 noundef %conv16) #13
  %22 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %23)
  %cmp39 = icmp eq i16 %23, 12
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %24 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 3, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  br label %cleanup

if.end43:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_delayfunc = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %25, 100
  %call44 = tail call i32 @mod_timer(ptr noundef %nlp_delayfunc, i32 noundef %add) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %26 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %27, 131072
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_last_elscmd = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 7
  %28 = ptrtoint ptr %nlp_last_elscmd to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 50331648, ptr %nlp_last_elscmd, align 4
  %call46 = tail call i32 @lpfc_issue_els_logo(ptr noundef %vport, ptr noundef %ndlp, i8 noundef zeroext 0) #10
  br label %cleanup

if.end49:                                         ; preds = %entry
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 31
  %29 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp50 = icmp ult i32 %30, 4
  br i1 %cmp50, label %if.then52, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %un, align 4
  %conv55 = trunc i32 %32 to i16
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %33 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv55, ptr %nlp_rpi, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end49.if.end56_crit_edge
  %nlp_flag57 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %34 = ptrtoint ptr %nlp_flag57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nlp_flag57, align 4
  %or58 = or i32 %35, -2147483648
  store i32 %or58, ptr %nlp_flag57, align 4
  %cfg_log_verbose60 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %36 = ptrtoint ptr %cfg_log_verbose60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg_log_verbose60, align 4
  %and61 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else76, label %do.end66

do.end66:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vport, align 8
  %pcidev68 = getelementptr inbounds %struct.lpfc_hba, ptr %39, i32 0, i32 165
  %40 = ptrtoint ptr %pcidev68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcidev68, align 4
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %brd_no71 = getelementptr inbounds %struct.lpfc_hba, ptr %39, i32 0, i32 197
  %42 = ptrtoint ptr %brd_no71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %brd_no71, align 4
  %vpi72 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %44 = ptrtoint ptr %vpi72 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vpi72, align 4
  %conv73 = zext i16 %45 to i32
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %46 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nlp_type, align 8
  %conv74 = zext i16 %47 to i32
  %nlp_fc4_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %48 = ptrtoint ptr %nlp_fc4_type to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nlp_fc4_type, align 2
  %conv75 = zext i16 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev69, ptr noundef nonnull @.str.70, i32 noundef %43, i32 noundef %conv73, i32 noundef %3, i32 noundef %conv74, i32 noundef %conv75) #13
  br label %do.end92

if.else76:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool78.not = icmp eq i32 %37, 0
  br i1 %tobool78.not, label %if.then79, label %if.else76.do.end92_crit_edge

if.else76.do.end92_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end92

if.then79:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vport, align 8
  %brd_no82 = getelementptr inbounds %struct.lpfc_hba, ptr %51, i32 0, i32 197
  %52 = ptrtoint ptr %brd_no82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %brd_no82, align 4
  %vpi83 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %54 = ptrtoint ptr %vpi83 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vpi83, align 4
  %conv84 = zext i16 %55 to i32
  %nlp_type85 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %56 = ptrtoint ptr %nlp_type85 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %nlp_type85, align 8
  %conv86 = zext i16 %57 to i32
  %nlp_fc4_type87 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %58 = ptrtoint ptr %nlp_fc4_type87 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %nlp_fc4_type87, align 2
  %conv88 = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %51, ptr noundef nonnull @.str.70, i32 noundef %53, i32 noundef %conv84, i32 noundef %3, i32 noundef %conv86, i32 noundef %conv88) #10
  br label %do.end92

do.end92:                                         ; preds = %if.then79, %if.else76.do.end92_crit_edge, %do.end66
  %nlp_type93 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %60 = ptrtoint ptr %nlp_type93 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nlp_type93, align 8
  %62 = and i16 %61, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool96.not = icmp eq i16 %62, 0
  br i1 %tobool96.not, label %land.lhs.true, label %do.end92.if.else157_crit_edge

do.end92.if.else157_crit_edge:                    ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else157

land.lhs.true:                                    ; preds = %do.end92
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 74
  %63 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp98 = icmp eq i8 %64, 0
  br i1 %cmp98, label %if.then100, label %land.lhs.true.if.else157_crit_edge

land.lhs.true.if.else157_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else157

if.then100:                                       ; preds = %land.lhs.true
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %65 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fc_flag, align 4
  %and101 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.else124, label %if.then103

if.then103:                                       ; preds = %if.then100
  %nlp_fc4_type104 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %67 = ptrtoint ptr %nlp_fc4_type104 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %nlp_fc4_type104, align 2
  %69 = or i16 %68, 1
  store i16 %69, ptr %nlp_fc4_type104, align 2
  %70 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fc_flag, align 4
  %and109 = and i32 %71, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %land.lhs.true111, label %if.then103.if.end149_crit_edge

if.then103.if.end149_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

land.lhs.true111:                                 ; preds = %if.then103
  %cfg_enable_fc4_type = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 52
  %72 = ptrtoint ptr %cfg_enable_fc4_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cfg_enable_fc4_type, align 8
  %74 = and i32 %73, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %switch = icmp eq i32 %74, 2
  br i1 %switch, label %if.then118, label %land.lhs.true111.if.end149_crit_edge

land.lhs.true111.if.end149_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then118:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  %75 = or i16 %68, 3
  %76 = ptrtoint ptr %nlp_fc4_type104 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %nlp_fc4_type104, align 2
  tail call void @lpfc_nvme_update_localport(ptr noundef %vport) #10
  br label %if.end149

if.else124:                                       ; preds = %if.then100
  %fc_topology = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 65
  %77 = ptrtoint ptr %fc_topology to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fc_topology, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp125 = icmp eq i32 %78, 2
  %nlp_fc4_type128 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %79 = ptrtoint ptr %nlp_fc4_type128 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %nlp_fc4_type128, align 2
  br i1 %cmp125, label %if.then127, label %if.else132

if.then127:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #12
  %81 = or i16 %80, 1
  %82 = ptrtoint ptr %nlp_fc4_type128 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %nlp_fc4_type128, align 2
  br label %if.end149

if.else132:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp135 = icmp eq i16 %80, 0
  br i1 %cmp135, label %if.then137, label %if.else132.if.end149_crit_edge

if.else132.if.end149_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then137:                                       ; preds = %if.else132
  %cfg_enable_fc4_type138 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 52
  %83 = ptrtoint ptr %cfg_enable_fc4_type138 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cfg_enable_fc4_type138, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp139.not = icmp eq i32 %84, 1
  br i1 %cmp139.not, label %if.end145, label %if.then141

if.then141:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %85 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nlp_DID, align 8
  %call142 = tail call i32 @lpfc_ns_cmd(ptr noundef %vport, i32 noundef 279, i8 noundef zeroext 0, i32 noundef %86) #10
  br label %cleanup

if.end145:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %nlp_fc4_type128 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %nlp_fc4_type128, align 2
  br label %if.end149

if.end149:                                        ; preds = %if.end145, %if.else132.if.end149_crit_edge, %if.then127, %if.then118, %land.lhs.true111.if.end149_crit_edge, %if.then103.if.end149_crit_edge
  %nlp_prev_state150 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %88 = ptrtoint ptr %nlp_prev_state150 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 3, ptr %nlp_prev_state150, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 4) #10
  %call151 = tail call i32 @lpfc_issue_els_prli(ptr noundef %vport, ptr noundef %ndlp, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end149.cleanup_crit_edge, label %if.then153

if.end149.cleanup_crit_edge:                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then153:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %call154 = tail call i32 @lpfc_issue_els_logo(ptr noundef %vport, ptr noundef %ndlp, i8 noundef zeroext 0) #10
  %89 = ptrtoint ptr %nlp_prev_state150 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 3, ptr %nlp_prev_state150, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  br label %cleanup

if.else157:                                       ; preds = %land.lhs.true.if.else157_crit_edge, %do.end92.if.else157_crit_edge
  %fc_flag158 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %90 = ptrtoint ptr %fc_flag158 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fc_flag158, align 4
  %and159 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.else157.if.end166_crit_edge, label %land.lhs.true161

if.else157.if.end166_crit_edge:                   ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

land.lhs.true161:                                 ; preds = %if.else157
  %nvmet_support162 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 74
  %92 = ptrtoint ptr %nvmet_support162 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %nvmet_support162, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool164.not = icmp eq i8 %93, 0
  br i1 %tobool164.not, label %land.lhs.true161.if.end166_crit_edge, label %if.then165

land.lhs.true161.if.end166_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then165:                                       ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #12
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %94 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fc_myDID, align 8
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 159
  %96 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %targetport, align 8
  %port_id = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %port_id, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %land.lhs.true161.if.end166_crit_edge, %if.else157.if.end166_crit_edge
  %99 = ptrtoint ptr %nlp_type93 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %nlp_type93, align 8
  %101 = and i16 %100, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool170.not = icmp eq i16 %101, 0
  br i1 %tobool170.not, label %if.end166.cleanup_crit_edge, label %if.then171

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then171:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_fc4_type172 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %102 = ptrtoint ptr %nlp_fc4_type172 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %nlp_fc4_type172, align 2
  %104 = and i16 %103, -2
  store i16 %104, ptr %nlp_fc4_type172, align 2
  %nlp_prev_state176 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %105 = ptrtoint ptr %nlp_prev_state176 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 3, ptr %nlp_prev_state176, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %if.end166.cleanup_crit_edge, %if.then153, %if.end149.cleanup_crit_edge, %if.then141, %if.end43, %if.then41
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %106 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %106)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_rm_reglogin_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %3, 134217728
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %4 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %5 to i32
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_drop_node(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 255, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_recov_reglogin_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %0 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_flag, align 4
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %2 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 3, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %3 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nlp_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool2.not = icmp sgt i32 %4, -1
  br i1 %tobool2.not, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vport, align 8
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %6, i32 0, i32 74
  %7 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.if.end6_crit_edge

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %or = or i32 %4, 1
  %9 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %nlp_flag, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %lor.lhs.false.if.end6_crit_edge
  %10 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlp_flag, align 4
  %and8 = and i32 %11, -134479873
  store i32 %and8, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  tail call fastcc void @lpfc_disc_set_adisc(ptr noundef %vport, ptr noundef %ndlp)
  br label %return

return:                                           ; preds = %if.end6, %entry.return_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %12 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %12)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_plogi_prli_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpfc_rcv_plogi(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prli_prli_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpfc_rcv_prli_support_check(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @lpfc_rcv_prli(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %call1 = tail call i32 @lpfc_els_rsp_prli_acc(ptr noundef %vport, ptr noundef %arg, ptr noundef %ndlp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %0)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_logo_prli_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %1, ptr noundef %ndlp)
  tail call fastcc void @lpfc_rcv_logo(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef 83886080)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %2 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_padisc_prli_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_rcv_padisc(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prlo_prli_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_els_rsp_acc(ptr noundef %vport, i32 noundef 554696724, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_prli_prli_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readonly %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 22
  %2 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context_un, align 8
  %context2.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 19
  %4 = ptrtoint ptr %context2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %cmp.i.i = icmp eq ptr %7, %5
  %tobool3.not.i = icmp eq ptr %7, null
  %or.cond.i = or i1 %cmp.i.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.then.i.lpfc_check_elscmpl_iocb.exit_crit_edge, label %if.then4.i

if.then.i.lpfc_check_elscmpl_iocb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_check_elscmpl_iocb.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %virt.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 4
  br label %lpfc_check_elscmpl_iocb.exit

if.else.i:                                        ; preds = %entry
  %ulpStatus.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %3, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %ulpStatus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %ulpStatus.i, align 4
  %11 = and i32 %bf.load.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i.lpfc_check_elscmpl_iocb.exit_crit_edge

if.else.i.lpfc_check_elscmpl_iocb.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_check_elscmpl_iocb.exit

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear10.i = and i32 %bf.load.i, -241
  %bf.set.i = or i32 %bf.clear10.i, 48
  %12 = ptrtoint ptr %ulpStatus.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.set.i, ptr %ulpStatus.i, align 4
  %arrayidx.i = getelementptr %struct.lpfc_iocbq, ptr %3, i32 0, i32 11, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 259, ptr %arrayidx.i, align 4
  br label %lpfc_check_elscmpl_iocb.exit

lpfc_check_elscmpl_iocb.exit:                     ; preds = %if.then7.i, %if.else.i.lpfc_check_elscmpl_iocb.exit_crit_edge, %if.then4.i, %if.then.i.lpfc_check_elscmpl_iocb.exit_crit_edge
  %ptr.0.i = phi ptr [ %add.ptr5.i, %if.then4.i ], [ null, %if.then7.i ], [ null, %if.else.i.lpfc_check_elscmpl_iocb.exit_crit_edge ], [ null, %if.then.i.lpfc_check_elscmpl_iocb.exit_crit_edge ]
  %iocb_flag = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 15
  %14 = ptrtoint ptr %iocb_flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iocb_flag, align 4
  %and = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %15, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %spec.select = select i1 %tobool4.not, ptr null, ptr %ptr.0.i
  %npr.0 = select i1 %tobool.not, ptr null, ptr %ptr.0.i
  %nvpr.0 = select i1 %tobool.not, ptr %spec.select, ptr null
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %3, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %17 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.end26, label %if.then8

if.then8:                                         ; preds = %lpfc_check_elscmpl_iocb.exit
  %port_type = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 2
  %18 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp = icmp eq i8 %19, 2
  br i1 %cmp, label %land.lhs.true, label %if.then8.if.end12_crit_edge

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.then8
  %cfg_restrict_login = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 46
  %20 = ptrtoint ptr %cfg_restrict_login to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg_restrict_login, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.then8.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %npr.0, null
  br i1 %tobool13.not, label %if.end12.if.end18_crit_edge, label %if.then14

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_fc4_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %22 = ptrtoint ptr %nlp_fc4_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nlp_fc4_type, align 2
  %24 = and i16 %23, -2
  store i16 %24, ptr %nlp_fc4_type, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end12.if.end18_crit_edge
  %tobool19.not = icmp eq ptr %nvpr.0, null
  br i1 %tobool19.not, label %if.end18.out_err_crit_edge, label %if.then20

if.end18.out_err_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_fc4_type21 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %25 = ptrtoint ptr %nlp_fc4_type21 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nlp_fc4_type21, align 2
  %27 = and i16 %26, -3
  store i16 %27, ptr %nlp_fc4_type21, align 2
  br label %out_err

if.end26:                                         ; preds = %lpfc_check_elscmpl_iocb.exit
  %tobool27.not = icmp eq ptr %npr.0, null
  br i1 %tobool27.not, label %if.end26.if.else112_crit_edge, label %land.lhs.true28

if.end26.if.else112_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else112

land.lhs.true28:                                  ; preds = %if.end26
  %acceptRspCode = getelementptr inbounds %struct._PRLI, ptr %npr.0, i32 0, i32 2
  %28 = ptrtoint ptr %acceptRspCode to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load29 = load i8, ptr %acceptRspCode, align 2
  %bf.clear30 = and i8 %bf.load29, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear30)
  %cmp32 = icmp eq i8 %bf.clear30, 1
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true28.if.else112_crit_edge

land.lhs.true28.if.else112_crit_edge:             ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else112

land.lhs.true34:                                  ; preds = %land.lhs.true28
  %29 = ptrtoint ptr %npr.0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %npr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %30)
  %cmp36 = icmp eq i8 %30, 8
  br i1 %cmp36, label %do.body, label %land.lhs.true34.if.else112_crit_edge

land.lhs.true34.if.else112_crit_edge:             ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else112

do.body:                                          ; preds = %land.lhs.true34
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %31 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cfg_log_verbose, align 4
  %and39 = and i32 %32, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else54, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %34, i32 0, i32 165
  %35 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %34, i32 0, i32 197
  %37 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %39 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vpi, align 4
  %conv45 = zext i16 %40 to i32
  %initiatorFunc = getelementptr inbounds %struct._PRLI, ptr %npr.0, i32 0, i32 8
  %41 = ptrtoint ptr %initiatorFunc to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load46 = load i16, ptr %initiatorFunc, align 2
  %bf.lshr47 = lshr i16 %bf.load46, 5
  %bf.clear48 = and i16 %bf.lshr47, 1
  %conv49 = zext i16 %bf.clear48 to i32
  %bf.lshr51 = lshr i16 %bf.load46, 4
  %bf.clear52 = and i16 %bf.lshr51, 1
  %conv53 = zext i16 %bf.clear52 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %38, i32 noundef %conv45, i32 noundef %conv49, i32 noundef %conv53) #13
  br label %do.end76

if.else54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool56.not = icmp eq i32 %32, 0
  br i1 %tobool56.not, label %if.then57, label %if.else54.do.end76_crit_edge

if.else54.do.end76_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

if.then57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vport, align 8
  %brd_no60 = getelementptr inbounds %struct.lpfc_hba, ptr %43, i32 0, i32 197
  %44 = ptrtoint ptr %brd_no60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brd_no60, align 4
  %vpi61 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %46 = ptrtoint ptr %vpi61 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vpi61, align 4
  %conv62 = zext i16 %47 to i32
  %initiatorFunc63 = getelementptr inbounds %struct._PRLI, ptr %npr.0, i32 0, i32 8
  %48 = ptrtoint ptr %initiatorFunc63 to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load64 = load i16, ptr %initiatorFunc63, align 2
  %bf.lshr65 = lshr i16 %bf.load64, 5
  %bf.clear66 = and i16 %bf.lshr65, 1
  %conv67 = zext i16 %bf.clear66 to i32
  %bf.lshr70 = lshr i16 %bf.load64, 4
  %bf.clear71 = and i16 %bf.lshr70, 1
  %conv72 = zext i16 %bf.clear71 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %43, ptr noundef nonnull @.str.72, i32 noundef %45, i32 noundef %conv62, i32 noundef %conv67, i32 noundef %conv72) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then57, %if.else54.do.end76_crit_edge, %do.end
  %initiatorFunc77 = getelementptr inbounds %struct._PRLI, ptr %npr.0, i32 0, i32 8
  %49 = ptrtoint ptr %initiatorFunc77 to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load78 = load i16, ptr %initiatorFunc77, align 2
  %50 = and i16 %bf.load78, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool81.not = icmp eq i16 %50, 0
  br i1 %tobool81.not, label %do.end76.if.end85_crit_edge, label %if.then82

do.end76.if.end85_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then82:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %51 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %nlp_type, align 8
  %53 = or i16 %52, 16
  store i16 %53, ptr %nlp_type, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %do.end76.if.end85_crit_edge
  %54 = ptrtoint ptr %initiatorFunc77 to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load87 = load i16, ptr %initiatorFunc77, align 2
  %55 = and i16 %bf.load87, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool90.not = icmp eq i16 %55, 0
  br i1 %tobool90.not, label %if.end85.if.end102_crit_edge, label %if.then91

if.end85.if.end102_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then91:                                        ; preds = %if.end85
  %nlp_type92 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %56 = ptrtoint ptr %nlp_type92 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %nlp_type92, align 8
  %58 = or i16 %57, 8
  store i16 %58, ptr %nlp_type92, align 8
  %59 = ptrtoint ptr %initiatorFunc77 to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load96 = load i16, ptr %initiatorFunc77, align 2
  %bf.clear97 = and i16 %bf.load96, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear97)
  %tobool98.not = icmp eq i16 %bf.clear97, 0
  br i1 %tobool98.not, label %if.then91.if.end102_crit_edge, label %if.then99

if.then91.if.end102_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then99:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %60 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nlp_flag, align 4
  %or100 = or i32 %61, 1073741824
  store i32 %or100, ptr %nlp_flag, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.then91.if.end102_crit_edge, %if.end85.if.end102_crit_edge
  %62 = ptrtoint ptr %initiatorFunc77 to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load103 = load i16, ptr %initiatorFunc77, align 2
  %63 = and i16 %bf.load103, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool106.not = icmp eq i16 %63, 0
  br i1 %tobool106.not, label %if.end102.if.end243_crit_edge, label %if.then107

if.end102.if.end243_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243

if.then107:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_fcp_info = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 18
  %64 = ptrtoint ptr %nlp_fcp_info to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nlp_fcp_info, align 2
  %66 = or i8 %65, 16
  store i8 %66, ptr %nlp_fcp_info, align 2
  br label %if.end243

if.else112:                                       ; preds = %land.lhs.true34.if.else112_crit_edge, %land.lhs.true28.if.else112_crit_edge, %if.end26.if.else112_crit_edge
  %tobool113.not = icmp eq ptr %nvpr.0, null
  br i1 %tobool113.not, label %if.else112.if.end243_crit_edge, label %land.lhs.true114

if.else112.if.end243_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243

land.lhs.true114:                                 ; preds = %if.else112
  %67 = ptrtoint ptr %nvpr.0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nvpr.0, align 4
  %69 = and i32 %68, -16773376
  call void @__sanitizer_cov_trace_const_cmp4(i32 671088896, i32 %69)
  %70 = icmp eq i32 %69, 671088896
  br i1 %70, label %if.then124, label %land.lhs.true114.if.end243_crit_edge

land.lhs.true114.if.end243_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243

if.then124:                                       ; preds = %land.lhs.true114
  %word4 = getelementptr inbounds %struct.lpfc_nvme_prli, ptr %nvpr.0, i32 0, i32 3
  %71 = ptrtoint ptr %word4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %word4, align 4
  %73 = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool127.not = icmp eq i32 %73, 0
  br i1 %tobool127.not, label %if.then124.if.end133_crit_edge, label %if.then128

if.then124.if.end133_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then128:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_type129 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %74 = ptrtoint ptr %nlp_type129 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %nlp_type129, align 8
  %76 = or i16 %75, 64
  store i16 %76, ptr %nlp_type129, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %if.then124.if.end133_crit_edge
  %nsler = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 78
  %77 = ptrtoint ptr %nsler to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %nsler, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool135.not = icmp eq i8 %78, 0
  br i1 %tobool135.not, label %if.end133.if.else150_crit_edge, label %land.lhs.true136

if.end133.if.else150_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else150

land.lhs.true136:                                 ; preds = %if.end133
  %79 = ptrtoint ptr %word4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %word4, align 4
  %81 = and i32 %80, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %81)
  %.not = icmp eq i32 %81, 384
  br i1 %.not, label %if.then146, label %land.lhs.true136.if.else150_crit_edge

land.lhs.true136.if.else150_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else150

if.then146:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_nvme_info = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 19
  %82 = ptrtoint ptr %nlp_nvme_info to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %nlp_nvme_info, align 1
  %84 = or i8 %83, 1
  store i8 %84, ptr %nlp_nvme_info, align 1
  br label %if.end155

if.else150:                                       ; preds = %land.lhs.true136.if.else150_crit_edge, %if.end133.if.else150_crit_edge
  %nlp_nvme_info151 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 19
  %85 = ptrtoint ptr %nlp_nvme_info151 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nlp_nvme_info151, align 1
  %87 = and i8 %86, -2
  store i8 %87, ptr %nlp_nvme_info151, align 1
  br label %if.end155

if.end155:                                        ; preds = %if.else150, %if.then146
  %88 = ptrtoint ptr %word4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %word4, align 4
  %90 = and i32 %89, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool159.not = icmp eq i32 %90, 0
  br i1 %tobool159.not, label %if.end155.do.body198_crit_edge, label %if.then160

if.end155.do.body198_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body198

if.then160:                                       ; preds = %if.end155
  %nlp_type161 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %91 = ptrtoint ptr %nlp_type161 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %nlp_type161, align 8
  %93 = or i16 %92, 32
  store i16 %93, ptr %nlp_type161, align 8
  %94 = ptrtoint ptr %word4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %word4, align 4
  %96 = and i32 %95, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool168.not = icmp eq i32 %96, 0
  br i1 %tobool168.not, label %if.then160.if.end174_crit_edge, label %if.then169

if.then160.if.end174_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end174

if.then169:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  %97 = or i16 %92, 160
  %98 = ptrtoint ptr %nlp_type161 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %nlp_type161, align 8
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %if.then160.if.end174_crit_edge
  %99 = ptrtoint ptr %word4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %word4, align 4
  %and177 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %cmp178.not = icmp eq i32 %and177, 0
  br i1 %cmp178.not, label %if.end174.do.body198_crit_edge, label %land.lhs.true180

if.end174.do.body198_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body198

land.lhs.true180:                                 ; preds = %if.end174
  %cfg_nvme_enable_fb = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 114
  %101 = ptrtoint ptr %cfg_nvme_enable_fb to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cfg_nvme_enable_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool181.not = icmp eq i32 %102, 0
  br i1 %tobool181.not, label %land.lhs.true180.do.body198_crit_edge, label %land.lhs.true182

land.lhs.true180.do.body198_crit_edge:            ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body198

land.lhs.true182:                                 ; preds = %land.lhs.true180
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 74
  %103 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool183.not = icmp eq i8 %104, 0
  br i1 %tobool183.not, label %if.then184, label %land.lhs.true182.do.body198_crit_edge

land.lhs.true182.do.body198_crit_edge:            ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body198

if.then184:                                       ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_flag185 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %105 = ptrtoint ptr %nlp_flag185 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nlp_flag185, align 4
  %or186 = or i32 %106, 1073741824
  store i32 %or186, ptr %nlp_flag185, align 4
  %word5 = getelementptr inbounds %struct.lpfc_nvme_prli, ptr %nvpr.0, i32 0, i32 4
  %107 = ptrtoint ptr %word5 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %word5, align 4
  %and188 = and i32 %108, 65535
  %nvme_fb_size = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool190.not = icmp eq i32 %and188, 0
  %shl = shl nuw nsw i32 %and188, 9
  %shl.sink = select i1 %tobool190.not, i32 1048576, i32 %shl
  %109 = ptrtoint ptr %nvme_fb_size to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %shl.sink, ptr %nvme_fb_size, align 8
  br label %do.body198

do.body198:                                       ; preds = %if.then184, %land.lhs.true182.do.body198_crit_edge, %land.lhs.true180.do.body198_crit_edge, %if.end174.do.body198_crit_edge, %if.end155.do.body198_crit_edge
  %cfg_log_verbose199 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %110 = ptrtoint ptr %cfg_log_verbose199 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cfg_log_verbose199, align 4
  %and200 = and i32 %111, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %if.else221, label %do.end205

do.end205:                                        ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %vport, align 8
  %pcidev207 = getelementptr inbounds %struct.lpfc_hba, ptr %113, i32 0, i32 165
  %114 = ptrtoint ptr %pcidev207 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pcidev207, align 4
  %dev208 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %brd_no210 = getelementptr inbounds %struct.lpfc_hba, ptr %113, i32 0, i32 197
  %116 = ptrtoint ptr %brd_no210 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %brd_no210, align 4
  %vpi211 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %118 = ptrtoint ptr %vpi211 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %vpi211, align 4
  %conv212 = zext i16 %119 to i32
  %120 = ptrtoint ptr %nvpr.0 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nvpr.0, align 4
  %122 = ptrtoint ptr %word4 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %word4, align 4
  %word5215 = getelementptr inbounds %struct.lpfc_nvme_prli, ptr %nvpr.0, i32 0, i32 4
  %124 = ptrtoint ptr %word5215 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %word5215, align 4
  %nlp_flag216 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %126 = ptrtoint ptr %nlp_flag216 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nlp_flag216, align 4
  %nlp_fcp_info217 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 18
  %128 = ptrtoint ptr %nlp_fcp_info217 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %nlp_fcp_info217, align 2
  %conv218 = zext i8 %129 to i32
  %nlp_type219 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %130 = ptrtoint ptr %nlp_type219 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %nlp_type219, align 8
  %conv220 = zext i16 %131 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev208, ptr noundef nonnull @.str.75, i32 noundef %117, i32 noundef %conv212, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %127, i32 noundef %conv218, i32 noundef %conv220) #13
  br label %if.end243

if.else221:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool223.not = icmp eq i32 %111, 0
  br i1 %tobool223.not, label %if.then224, label %if.else221.if.end243_crit_edge

if.else221.if.end243_crit_edge:                   ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243

if.then224:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %vport, align 8
  %brd_no227 = getelementptr inbounds %struct.lpfc_hba, ptr %133, i32 0, i32 197
  %134 = ptrtoint ptr %brd_no227 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %brd_no227, align 4
  %vpi228 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %136 = ptrtoint ptr %vpi228 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %vpi228, align 4
  %conv229 = zext i16 %137 to i32
  %138 = ptrtoint ptr %nvpr.0 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nvpr.0, align 4
  %140 = ptrtoint ptr %word4 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %word4, align 4
  %word5232 = getelementptr inbounds %struct.lpfc_nvme_prli, ptr %nvpr.0, i32 0, i32 4
  %142 = ptrtoint ptr %word5232 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %word5232, align 4
  %nlp_flag233 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %144 = ptrtoint ptr %nlp_flag233 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nlp_flag233, align 4
  %nlp_fcp_info234 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 18
  %146 = ptrtoint ptr %nlp_fcp_info234 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %nlp_fcp_info234, align 2
  %conv235 = zext i8 %147 to i32
  %nlp_type236 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %148 = ptrtoint ptr %nlp_type236 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %nlp_type236, align 8
  %conv237 = zext i16 %149 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %133, ptr noundef nonnull @.str.75, i32 noundef %135, i32 noundef %conv229, i32 noundef %139, i32 noundef %141, i32 noundef %143, i32 noundef %145, i32 noundef %conv235, i32 noundef %conv237) #10
  br label %if.end243

if.end243:                                        ; preds = %if.then224, %if.else221.if.end243_crit_edge, %do.end205, %land.lhs.true114.if.end243_crit_edge, %if.else112.if.end243_crit_edge, %if.then107, %if.end102.if.end243_crit_edge
  %nlp_type244 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %150 = ptrtoint ptr %nlp_type244 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %nlp_type244, align 8
  %152 = and i16 %151, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool247.not = icmp eq i16 %152, 0
  br i1 %tobool247.not, label %land.lhs.true248, label %if.end243.out_err_crit_edge

if.end243.out_err_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

land.lhs.true248:                                 ; preds = %if.end243
  %port_type249 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 2
  %153 = ptrtoint ptr %port_type249 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %port_type249, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %154)
  %cmp251 = icmp eq i8 %154, 2
  br i1 %cmp251, label %land.lhs.true253, label %land.lhs.true248.out_err_crit_edge

land.lhs.true248.out_err_crit_edge:               ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

land.lhs.true253:                                 ; preds = %land.lhs.true248
  %cfg_restrict_login254 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 46
  %155 = ptrtoint ptr %cfg_restrict_login254 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cfg_restrict_login254, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool255.not = icmp eq i32 %156, 0
  br i1 %tobool255.not, label %land.lhs.true253.out_err_crit_edge, label %land.lhs.true253.out_crit_edge

land.lhs.true253.out_crit_edge:                   ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true253.out_err_crit_edge:               ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

out:                                              ; preds = %land.lhs.true253.out_crit_edge, %land.lhs.true.out_crit_edge
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag257 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %157 = ptrtoint ptr %nlp_flag257 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %nlp_flag257, align 4
  %or258 = or i32 %158, 268435456
  store i32 %or258, ptr %nlp_flag257, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %call260 = tail call i32 @lpfc_issue_els_logo(ptr noundef %vport, ptr noundef %ndlp, i8 noundef zeroext 0) #10
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %159 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 4, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  br label %cleanup

out_err:                                          ; preds = %land.lhs.true253.out_err_crit_edge, %land.lhs.true248.out_err_crit_edge, %if.end243.out_err_crit_edge, %if.then20, %if.end18.out_err_crit_edge
  %fc4_prli_sent = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 35
  %160 = ptrtoint ptr %fc4_prli_sent to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %fc4_prli_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp263 = icmp eq i32 %161, 0
  br i1 %cmp263, label %if.then265, label %do.body281

if.then265:                                       ; preds = %out_err
  %nlp_prev_state266 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %162 = ptrtoint ptr %nlp_prev_state266 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 4, ptr %nlp_prev_state266, align 8
  %nlp_type267 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %163 = ptrtoint ptr %nlp_type267 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %nlp_type267, align 8
  %conv268 = zext i16 %164 to i32
  %and269 = and i32 %conv268, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269)
  %tobool270.not = icmp eq i32 %and269, 0
  br i1 %tobool270.not, label %if.else272, label %if.then271

if.then271:                                       ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 7) #10
  br label %cleanup

if.else272:                                       ; preds = %if.then265
  %and275 = and i32 %conv268, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %tobool276.not = icmp eq i32 %and275, 0
  br i1 %tobool276.not, label %if.else272.cleanup_crit_edge, label %if.then277

if.else272.cleanup_crit_edge:                     ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then277:                                       ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 6) #10
  br label %cleanup

do.body281:                                       ; preds = %out_err
  %cfg_log_verbose282 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %165 = ptrtoint ptr %cfg_log_verbose282 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cfg_log_verbose282, align 4
  %and283 = and i32 %166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  br i1 %tobool284.not, label %if.else297, label %do.end288

do.end288:                                        ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %vport, align 8
  %pcidev290 = getelementptr inbounds %struct.lpfc_hba, ptr %168, i32 0, i32 165
  %169 = ptrtoint ptr %pcidev290 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pcidev290, align 4
  %dev291 = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  %brd_no293 = getelementptr inbounds %struct.lpfc_hba, ptr %168, i32 0, i32 197
  %171 = ptrtoint ptr %brd_no293 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %brd_no293, align 4
  %vpi294 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %173 = ptrtoint ptr %vpi294 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %vpi294, align 4
  %conv295 = zext i16 %174 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %175 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %nlp_DID, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev291, ptr noundef nonnull @.str.78, i32 noundef %172, i32 noundef %conv295, i32 noundef %176, i32 noundef %161) #13
  br label %cleanup

if.else297:                                       ; preds = %do.body281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool299.not = icmp eq i32 %166, 0
  br i1 %tobool299.not, label %if.then300, label %if.else297.cleanup_crit_edge

if.else297.cleanup_crit_edge:                     ; preds = %if.else297
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then300:                                       ; preds = %if.else297
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %vport, align 8
  %brd_no303 = getelementptr inbounds %struct.lpfc_hba, ptr %178, i32 0, i32 197
  %179 = ptrtoint ptr %brd_no303 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %brd_no303, align 4
  %vpi304 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %181 = ptrtoint ptr %vpi304 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %vpi304, align 4
  %conv305 = zext i16 %182 to i32
  %nlp_DID306 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %183 = ptrtoint ptr %nlp_DID306 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %nlp_DID306, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %178, ptr noundef nonnull @.str.78, i32 noundef %180, i32 noundef %conv305, i32 noundef %184, i32 noundef %161) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then300, %if.else297.cleanup_crit_edge, %do.end288, %if.then277, %if.else272.cleanup_crit_edge, %if.then271, %out
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %185 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %185)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_rm_prli_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %3, 134217728
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %4 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %5 to i32
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %7, ptr noundef %ndlp)
  tail call void @lpfc_drop_node(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 255, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_recov_prli_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %0 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_flag, align 4
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %3, ptr noundef %ndlp)
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %4 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %5 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlp_flag, align 4
  %and2 = and i32 %6, -134479873
  store i32 %and2, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  tail call fastcc void @lpfc_disc_set_adisc(ptr noundef %vport, ptr noundef %ndlp)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %7 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_plogi_logo_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 589824, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prli_logo_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 589824, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_logo_logo_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %1, 1048576
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %call = tail call i32 @lpfc_els_rsp_acc(ptr noundef %vport, i32 noundef 33554432, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %2 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_padisc_logo_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 589824, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prlo_logo_issue(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 589824, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_logo_logo_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %0 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 5, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %1 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %2, -134479873
  store i32 %and, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  tail call fastcc void @lpfc_disc_set_adisc(ptr noundef %vport, ptr noundef %ndlp)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %3 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %4 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_rm_logo_issue(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_unreg_rpi(ptr noundef %vport, ptr noundef %ndlp) #10
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  tail call void @lpfc_els_abort(ptr noundef %1, ptr noundef %ndlp)
  tail call void @lpfc_drop_node(ptr noundef %vport, ptr noundef %ndlp) #10
  ret i32 255
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_device_recov_logo_issue(ptr nocapture noundef readnone %vport, ptr nocapture noundef readonly %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_plogi_unmap_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpfc_rcv_plogi(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prli_unmap_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpfc_rcv_prli_support_check(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @lpfc_rcv_prli(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %call1 = tail call i32 @lpfc_els_rsp_prli_acc(ptr noundef %vport, ptr noundef %arg, ptr noundef %ndlp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %0)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_logo_unmap_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_rcv_logo(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef 83886080)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_padisc_unmap_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_rcv_padisc(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prlo_unmap_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_els_rsp_acc(ptr noundef %vport, i32 noundef 554696724, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_rm_unmap_node(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lpfc_drop_node(ptr noundef %vport, ptr noundef %ndlp) #10
  ret i32 255
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_recov_unmap_node(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %0 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 6, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %1 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %2, -134479873
  store i32 %and, ptr %nlp_flag, align 4
  %nlp_fc4_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %3 = ptrtoint ptr %nlp_fc4_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nlp_fc4_type, align 2
  %5 = and i16 %4, -4
  store i16 %5, ptr %nlp_fc4_type, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  tail call fastcc void @lpfc_disc_set_adisc(ptr noundef %vport, ptr noundef %ndlp)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %6 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlp_state, align 2
  %conv4 = zext i16 %7 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_plogi_mapped_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpfc_rcv_plogi(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prli_mapped_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpfc_rcv_prli_support_check(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @lpfc_els_rsp_prli_acc(ptr noundef %vport, ptr noundef %arg, ptr noundef %ndlp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %0)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_logo_mapped_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_rcv_logo(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef 83886080)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_padisc_mapped_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_rcv_padisc(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prlo_mapped_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_sid = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 14
  %0 = ptrtoint ptr %nlp_sid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_sid, align 4
  %call = tail call i32 @lpfc_sli_abort_iocb(ptr noundef %vport, i16 noundef zeroext %1, i64 noundef 0, i32 noundef 1) #10
  tail call fastcc void @lpfc_rcv_logo(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef 554696724)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %2 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_recov_mapped_node(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_disc_set_adisc(ptr noundef %vport, ptr noundef %ndlp)
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %0 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 7, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %1 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %2, -134479873
  store i32 %and, ptr %nlp_flag, align 4
  %nlp_fc4_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %3 = ptrtoint ptr %nlp_fc4_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nlp_fc4_type, align 2
  %5 = and i16 %4, -4
  store i16 %5, ptr %nlp_fc4_type, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %6 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlp_state, align 2
  %conv4 = zext i16 %7 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_plogi_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %1, 1048832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @lpfc_rcv_plogi(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_cancel_retry_delay_tmo(ptr noundef %vport, ptr noundef %ndlp) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %and4 = and i32 %3, -33816577
  store i32 %and4, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %4 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlp_flag, align 4
  %6 = and i32 %5, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.then13, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %8 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 1) #10
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %9 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlp_DID, align 8
  %call14 = tail call i32 @lpfc_issue_els_plogi(ptr noundef %vport, i32 noundef %10, i8 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.else.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %11 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %11)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prli_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 589824, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %2 = and i32 %1, 33685504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.then6, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %4 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 8, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 1) #10
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %5 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlp_DID, align 8
  %call7 = tail call i32 @lpfc_issue_els_plogi(ptr noundef %vport, i32 noundef %6, i8 noundef zeroext 0) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %entry.if.end8_crit_edge
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %7 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %8 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_logo_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_rcv_logo(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef 83886080)
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %0 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_padisc_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpfc_rcv_padisc(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg)
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %2 = and i32 %1, 33947648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.then7, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %4 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 8, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 1) #10
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %5 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlp_DID, align 8
  %call8 = tail call i32 @lpfc_issue_els_plogi(ptr noundef %vport, i32 noundef %6, i8 noundef zeroext 0) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %entry.if.end9_crit_edge
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %7 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %8 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_rcv_prlo_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %1, 1048576
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %call = tail call i32 @lpfc_els_rsp_acc(ptr noundef %vport, i32 noundef 33554432, ptr noundef %arg, ptr noundef %ndlp, ptr noundef null) #10
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_delayfunc = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  %call4 = tail call i32 @mod_timer(ptr noundef %nlp_delayfunc, i32 noundef %add) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %5 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlp_flag, align 4
  %or7 = and i32 %6, -33685505
  %and9 = or i32 %or7, 131072
  store i32 %and9, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_last_elscmd = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 7
  %7 = ptrtoint ptr %nlp_last_elscmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 50331648, ptr %nlp_last_elscmd, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %8 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlp_flag, align 4
  %and13 = and i32 %9, -33554433
  store i32 %and13, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %10 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %11 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_cmpl_plogi_npr_node(ptr nocapture noundef readnone %vport, ptr nocapture noundef readonly %ndlp, ptr nocapture noundef readonly %arg, i32 noundef %evt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 22
  %0 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context_un, align 8
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %1, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %3 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %4 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 255, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_prli_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readonly %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 22
  %0 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context_un, align 8
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %1, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %3 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %4 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_drop_node(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %6 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 255, %if.then ], [ %conv, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_logo_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %0 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_DID, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %1)
  %cmp = icmp eq i32 %1, 16777214
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host_lock = getelementptr i8, ptr %vport, i32 -2380
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #10
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %4 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fc_flag, align 4
  %and = and i32 %5, -265
  store i32 %and, ptr %fc_flag, align 4
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @lpfc_unreg_rpi(ptr noundef %vport, ptr noundef %ndlp) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %8 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %9 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_adisc_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readonly %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %arg, i32 0, i32 22
  %0 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context_un, align 8
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %1, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %3 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %4 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_drop_node(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %6 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 255, %if.then ], [ %conv, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_cmpl_reglogin_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readonly %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 8
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ult i32 %5, 4
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %arg, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %un, align 4
  %conv = trunc i32 %7 to i16
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %8 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %nlp_rpi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %9 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %10, -2147483648
  store i32 %or, ptr %nlp_flag, align 4
  %and = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @lpfc_unreg_rpi(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %if.end11

if.else:                                          ; preds = %entry
  %nlp_flag6 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %11 = ptrtoint ptr %nlp_flag6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nlp_flag6, align 4
  %and7 = and i32 %12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_drop_node(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then4, %if.end.if.end11_crit_edge
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %13 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nlp_state, align 2
  %conv12 = zext i16 %14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9
  %retval.0 = phi i32 [ 255, %if.then9 ], [ %conv12, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_rm_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %3, 134217728
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %4 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %5 to i32
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_drop_node(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 255, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_device_recov_npr_node(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readnone %arg, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %0 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_flag, align 4
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_cancel_retry_delay_tmo(ptr noundef %vport, ptr noundef %ndlp) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %and1 = and i32 %3, -134479873
  store i32 %and1, ptr %nlp_flag, align 4
  %nlp_fc4_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %4 = ptrtoint ptr %nlp_fc4_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlp_fc4_type, align 2
  %6 = and i16 %5, -4
  store i16 %6, ptr %nlp_fc4_type, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0.in.in = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %7 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpfc_rcv_plogi(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %cmdiocb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %2 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %portName = getelementptr i8, ptr %5, i32 20
  %6 = ptrtoint ptr %portName to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %portName, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %do.body, label %if.end24

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #10
  %8 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %9, i32 0, i32 165
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %9, i32 0, i32 197
  %12 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %14 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vpi, align 4
  %conv9 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %13, i32 noundef %conv9) #13
  %call23 = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 593152, ptr noundef %cmdiocb, ptr noundef %ndlp, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %entry
  %nodeName = getelementptr i8, ptr %5, i32 28
  %16 = ptrtoint ptr %nodeName to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %nodeName, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp28 = icmp eq i64 %17, 0
  br i1 %cmp28, label %do.body31, label %if.end70

do.body31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #10
  %18 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vport, align 8
  %pcidev45 = getelementptr inbounds %struct.lpfc_hba, ptr %19, i32 0, i32 165
  %20 = ptrtoint ptr %pcidev45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcidev45, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %brd_no48 = getelementptr inbounds %struct.lpfc_hba, ptr %19, i32 0, i32 197
  %22 = ptrtoint ptr %brd_no48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brd_no48, align 4
  %vpi49 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %24 = ptrtoint ptr %vpi49 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vpi49, align 4
  %conv50 = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev46, ptr noundef nonnull @.str.21, i32 noundef %23, i32 noundef %conv50) #13
  %call69 = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 593408, ptr noundef %cmdiocb, ptr noundef %ndlp, ptr noundef null) #10
  br label %cleanup

if.end70:                                         ; preds = %if.end24
  %nlp_portname = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 2
  %26 = ptrtoint ptr %nlp_portname to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %nlp_portname, align 1
  %call74 = tail call i32 @lpfc_check_sparm(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %add.ptr, i32 noundef 2, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end84

if.then77:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %call83 = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 590080, ptr noundef %cmdiocb, ptr noundef %ndlp, ptr noundef null) #10
  br label %cleanup

if.end84:                                         ; preds = %if.end70
  %iocb = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 11
  %cfg_log_verbose86 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %28 = ptrtoint ptr %cfg_log_verbose86 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg_log_verbose86, align 4
  %and87 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.else102, label %do.end92

do.end92:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vport, align 8
  %pcidev94 = getelementptr inbounds %struct.lpfc_hba, ptr %31, i32 0, i32 165
  %32 = ptrtoint ptr %pcidev94 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcidev94, align 4
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %brd_no97 = getelementptr inbounds %struct.lpfc_hba, ptr %31, i32 0, i32 197
  %34 = ptrtoint ptr %brd_no97 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %brd_no97, align 4
  %vpi98 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %36 = ptrtoint ptr %vpi98 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vpi98, align 4
  %conv99 = zext i16 %37 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %38 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nlp_DID, align 8
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %40 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nlp_state, align 2
  %conv100 = zext i16 %41 to i32
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %42 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nlp_flag, align 4
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %44 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %nlp_rpi, align 4
  %conv101 = zext i16 %45 to i32
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %46 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port_state, align 8
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %48 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fc_flag, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev95, ptr noundef nonnull @.str.24, i32 noundef %35, i32 noundef %conv99, i32 noundef %39, i32 noundef %conv100, i32 noundef %43, i32 noundef %conv101, i32 noundef %47, i32 noundef %49) #13
  br label %do.end122

if.else102:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool104.not = icmp eq i32 %29, 0
  br i1 %tobool104.not, label %if.then105, label %if.else102.do.end122_crit_edge

if.else102.do.end122_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

if.then105:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vport, align 8
  %brd_no108 = getelementptr inbounds %struct.lpfc_hba, ptr %51, i32 0, i32 197
  %52 = ptrtoint ptr %brd_no108 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %brd_no108, align 4
  %vpi109 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %54 = ptrtoint ptr %vpi109 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vpi109, align 4
  %conv110 = zext i16 %55 to i32
  %nlp_DID111 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %56 = ptrtoint ptr %nlp_DID111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nlp_DID111, align 8
  %nlp_state112 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %58 = ptrtoint ptr %nlp_state112 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %nlp_state112, align 2
  %conv113 = zext i16 %59 to i32
  %nlp_flag114 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %60 = ptrtoint ptr %nlp_flag114 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nlp_flag114, align 4
  %nlp_rpi115 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %62 = ptrtoint ptr %nlp_rpi115 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %nlp_rpi115, align 4
  %conv116 = zext i16 %63 to i32
  %port_state117 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %64 = ptrtoint ptr %port_state117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port_state117, align 8
  %fc_flag118 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %66 = ptrtoint ptr %fc_flag118 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fc_flag118, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %51, ptr noundef nonnull @.str.24, i32 noundef %53, i32 noundef %conv110, i32 noundef %57, i32 noundef %conv113, i32 noundef %61, i32 noundef %conv116, i32 noundef %65, i32 noundef %67) #10
  br label %do.end122

do.end122:                                        ; preds = %if.then105, %if.else102.do.end122_crit_edge, %do.end92
  %cfg_fcp_class = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 48
  %68 = ptrtoint ptr %cfg_fcp_class to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cfg_fcp_class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp123 = icmp eq i32 %69, 2
  br i1 %cmp123, label %land.lhs.true, label %do.end122.if.else130_crit_edge

do.end122.if.else130_crit_edge:                   ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else130

land.lhs.true:                                    ; preds = %do.end122
  %cls2 = getelementptr i8, ptr %5, i32 52
  %70 = ptrtoint ptr %cls2 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load = load i8, ptr %cls2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool126.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool126.not, label %land.lhs.true.if.else130_crit_edge, label %land.lhs.true.if.end135_crit_edge

land.lhs.true.if.end135_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

land.lhs.true.if.else130_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else130

if.else130:                                       ; preds = %land.lhs.true.if.else130_crit_edge, %do.end122.if.else130_crit_edge
  br label %if.end135

if.end135:                                        ; preds = %if.else130, %land.lhs.true.if.end135_crit_edge
  %.sink773 = phi i8 [ 2, %if.else130 ], [ 1, %land.lhs.true.if.end135_crit_edge ]
  %nlp_fcp_info131 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 18
  %71 = ptrtoint ptr %nlp_fcp_info131 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %nlp_fcp_info131, align 2
  %73 = or i8 %72, %.sink773
  store i8 %73, ptr %nlp_fcp_info131, align 2
  %nlp_class_sup = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 16
  %74 = ptrtoint ptr %nlp_class_sup to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %nlp_class_sup, align 8
  %cls1 = getelementptr i8, ptr %5, i32 36
  %75 = ptrtoint ptr %cls1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load136 = load i8, ptr %cls1, align 8
  %76 = lshr i8 %bf.load136, 6
  %77 = and i8 %76, 2
  store i8 %77, ptr %nlp_class_sup, align 8
  %cls2145 = getelementptr i8, ptr %5, i32 52
  %78 = ptrtoint ptr %cls2145 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load146 = load i8, ptr %cls2145, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load146)
  %tobool148.not = icmp sgt i8 %bf.load146, -1
  br i1 %tobool148.not, label %if.end135.if.end154_crit_edge, label %if.then149

if.end135.if.end154_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end154

if.then149:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  %79 = or i8 %77, 4
  %80 = ptrtoint ptr %nlp_class_sup to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %nlp_class_sup, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.then149, %if.end135.if.end154_crit_edge
  %cls3 = getelementptr i8, ptr %5, i32 68
  %81 = ptrtoint ptr %cls3 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load155 = load i8, ptr %cls3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load155)
  %tobool157.not = icmp sgt i8 %bf.load155, -1
  br i1 %tobool157.not, label %if.end154.if.end163_crit_edge, label %if.then158

if.end154.if.end163_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %nlp_class_sup to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %nlp_class_sup, align 8
  %84 = or i8 %83, 8
  store i8 %84, ptr %nlp_class_sup, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then158, %if.end154.if.end163_crit_edge
  %cls4 = getelementptr i8, ptr %5, i32 84
  %85 = ptrtoint ptr %cls4 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load164 = load i8, ptr %cls4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load164)
  %tobool166.not = icmp sgt i8 %bf.load164, -1
  br i1 %tobool166.not, label %if.end163.if.end172_crit_edge, label %if.then167

if.end163.if.end172_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172

if.then167:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %nlp_class_sup to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %nlp_class_sup, align 8
  %88 = or i8 %87, 16
  store i8 %88, ptr %nlp_class_sup, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then167, %if.end163.if.end172_crit_edge
  %bbRcvSizeMsb = getelementptr i8, ptr %5, i32 10
  %89 = ptrtoint ptr %bbRcvSizeMsb to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bbRcvSizeMsb, align 2
  %91 = and i8 %90, 15
  %and174 = zext i8 %91 to i16
  %shl = shl nuw nsw i16 %and174, 8
  %bbRcvSizeLsb = getelementptr i8, ptr %5, i32 11
  %92 = ptrtoint ptr %bbRcvSizeLsb to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bbRcvSizeLsb, align 1
  %conv176 = zext i8 %93 to i16
  %or177 = or i16 %shl, %conv176
  %nlp_maxframe = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 15
  %94 = ptrtoint ptr %nlp_maxframe to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %or177, ptr %nlp_maxframe, align 2
  %nlp_state179 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %95 = ptrtoint ptr %nlp_state179 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %nlp_state179, align 2
  %97 = zext i16 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %96, label %if.end172.sw.epilog_crit_edge [
    i16 8, label %sw.bb
    i16 3, label %if.end172.sw.bb186_crit_edge
    i16 4, label %if.end172.sw.bb186_crit_edge775
    i16 6, label %if.end172.sw.bb186_crit_edge776
    i16 7, label %if.end172.sw.bb186_crit_edge777
  ]

if.end172.sw.bb186_crit_edge777:                  ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb186

if.end172.sw.bb186_crit_edge776:                  ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb186

if.end172.sw.bb186_crit_edge775:                  ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb186

if.end172.sw.bb186_crit_edge:                     ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb186

if.end172.sw.epilog_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end172
  %nlp_flag181 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %98 = ptrtoint ptr %nlp_flag181 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nlp_flag181, align 4
  %and182 = and i32 %99, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.bb186_crit_edge

sw.bb.sw.bb186_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb186

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb186:                                         ; preds = %sw.bb.sw.bb186_crit_edge, %if.end172.sw.bb186_crit_edge, %if.end172.sw.bb186_crit_edge775, %if.end172.sw.bb186_crit_edge776, %if.end172.sw.bb186_crit_edge777
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %100 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %nlp_type, align 8
  %102 = and i16 %101, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool189.not = icmp eq i16 %102, 0
  br i1 %tobool189.not, label %land.lhs.true190, label %sw.bb186.if.end211_crit_edge

sw.bb186.if.end211_crit_edge:                     ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

land.lhs.true190:                                 ; preds = %sw.bb186
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 74
  %103 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool191.not = icmp eq i8 %104, 0
  br i1 %tobool191.not, label %if.then192, label %land.lhs.true190.if.end211_crit_edge

land.lhs.true190.if.end211_crit_edge:             ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.then192:                                       ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #12
  %105 = and i16 %101, -121
  %106 = ptrtoint ptr %nlp_type to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %nlp_type, align 8
  %nlp_fcp_info201 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 18
  %107 = ptrtoint ptr %nlp_fcp_info201 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %nlp_fcp_info201, align 2
  %109 = and i8 %108, -17
  store i8 %109, ptr %nlp_fcp_info201, align 2
  %nlp_nvme_info = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 19
  %110 = ptrtoint ptr %nlp_nvme_info to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %nlp_nvme_info, align 1
  %112 = and i8 %111, -2
  store i8 %112, ptr %nlp_nvme_info, align 1
  %nlp_flag208 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %113 = ptrtoint ptr %nlp_flag208 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nlp_flag208, align 4
  %and209 = and i32 %114, -1073741825
  store i32 %and209, ptr %nlp_flag208, align 4
  %call210 = tail call i32 @lpfc_els_rsp_acc(ptr noundef %vport, i32 noundef 50331648, ptr noundef %cmdiocb, ptr noundef %ndlp, ptr noundef null) #10
  br label %cleanup

if.end211:                                        ; preds = %land.lhs.true190.if.end211_crit_edge, %sw.bb186.if.end211_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp212.not = icmp eq i64 %27, 0
  br i1 %cmp212.not, label %if.end211.if.end265_crit_edge, label %land.lhs.true214

if.end211.if.end265_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end265

land.lhs.true214:                                 ; preds = %if.end211
  %115 = ptrtoint ptr %portName to i32
  call void @__asan_loadN_noabort(i32 %115, i32 8)
  %116 = load i64, ptr %portName, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %116)
  %cmp219.not = icmp eq i64 %27, %116
  br i1 %cmp219.not, label %land.lhs.true214.if.end265_crit_edge, label %do.body222

land.lhs.true214.if.end265_crit_edge:             ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end265

do.body222:                                       ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %118) #10
  %119 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vport, align 8
  %pcidev236 = getelementptr inbounds %struct.lpfc_hba, ptr %120, i32 0, i32 165
  %121 = ptrtoint ptr %pcidev236 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pcidev236, align 4
  %dev237 = getelementptr inbounds %struct.pci_dev, ptr %122, i32 0, i32 44
  %brd_no239 = getelementptr inbounds %struct.lpfc_hba, ptr %120, i32 0, i32 197
  %123 = ptrtoint ptr %brd_no239 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %brd_no239, align 4
  %vpi240 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %125 = ptrtoint ptr %vpi240 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %vpi240, align 4
  %conv241 = zext i16 %126 to i32
  %nlp_DID242 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %127 = ptrtoint ptr %nlp_DID242 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nlp_DID242, align 8
  %129 = ptrtoint ptr %portName to i32
  call void @__asan_loadN_noabort(i32 %129, i32 8)
  %130 = load i64, ptr %portName, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev237, ptr noundef nonnull @.str.27, i32 noundef %124, i32 noundef %conv241, i32 noundef %128, i64 noundef %27, i64 noundef %130) #13
  br label %if.end265

if.end265:                                        ; preds = %do.body222, %land.lhs.true214.if.end265_crit_edge, %if.end211.if.end265_crit_edge
  %nvmet_support266 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 74
  %131 = ptrtoint ptr %nvmet_support266 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %nvmet_support266, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool268.not = icmp eq i8 %132, 0
  br i1 %tobool268.not, label %if.end265.if.end275_crit_edge, label %land.lhs.true269

if.end265.if.end275_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end275

land.lhs.true269:                                 ; preds = %if.end265
  %133 = ptrtoint ptr %nlp_state179 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %nlp_state179, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %134)
  %cmp272 = icmp eq i16 %134, 6
  br i1 %cmp272, label %if.then274, label %land.lhs.true269.if.end275_crit_edge

land.lhs.true269.if.end275_crit_edge:             ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end275

if.then274:                                       ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_nvmet_invalidate_host(ptr noundef %1, ptr noundef %ndlp) #10
  br label %if.end275

if.end275:                                        ; preds = %if.then274, %land.lhs.true269.if.end275_crit_edge, %if.end265.if.end275_crit_edge
  %135 = ptrtoint ptr %nlp_state179 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %nlp_state179, align 2
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %137 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end275, %sw.bb.sw.epilog_crit_edge, %if.end172.sw.epilog_crit_edge
  %nlp_type277 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %138 = ptrtoint ptr %nlp_type277 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %nlp_type277, align 8
  %140 = and i16 %139, -121
  store i16 %140, ptr %nlp_type277, align 8
  %nlp_fcp_info285 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 18
  %141 = ptrtoint ptr %nlp_fcp_info285 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %nlp_fcp_info285, align 2
  %143 = and i8 %142, -17
  store i8 %143, ptr %nlp_fcp_info285, align 2
  %nlp_nvme_info289 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 19
  %144 = ptrtoint ptr %nlp_nvme_info289 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %nlp_nvme_info289, align 1
  %146 = and i8 %145, -2
  store i8 %146, ptr %nlp_nvme_info289, align 1
  %nlp_flag293 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %147 = ptrtoint ptr %nlp_flag293 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %nlp_flag293, align 4
  %and294 = and i32 %148, -1073741825
  store i32 %and294, ptr %nlp_flag293, align 4
  %fc_flag295 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %149 = ptrtoint ptr %fc_flag295 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %fc_flag295, align 4
  %151 = and i32 %150, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %if.then302, label %sw.epilog.if.end342_crit_edge

sw.epilog.if.end342_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end342

if.then302:                                       ; preds = %sw.epilog
  %parmRo = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 11, i32 0, i32 0, i32 1
  %153 = ptrtoint ptr %parmRo to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %parmRo, align 4
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %155 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %fc_myDID, align 8
  %hba_flag = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 38
  %156 = ptrtoint ptr %hba_flag to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %hba_flag, align 4
  %and304 = and i32 %157, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304)
  %tobool305.not = icmp eq i32 %and304, 0
  br i1 %tobool305.not, label %if.then302.if.end308_crit_edge, label %if.then306

if.then302.if.end308_crit_edge:                   ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end308

if.then306:                                       ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #12
  %call307 = tail call i32 @lpfc_els_abort_flogi(ptr noundef %1) #10
  br label %if.end308

if.end308:                                        ; preds = %if.then306, %if.then302.if.end308_crit_edge
  %e_d_tov = getelementptr i8, ptr %5, i32 16
  %158 = ptrtoint ptr %e_d_tov to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %e_d_tov, align 4
  %edtovResolution = getelementptr i8, ptr %5, i32 8
  %160 = ptrtoint ptr %edtovResolution to i32
  call void @__asan_load2_noabort(i32 %160)
  %bf.load311 = load i16, ptr %edtovResolution, align 4
  %161 = and i16 %bf.load311, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %tobool313.not = icmp eq i16 %161, 0
  br i1 %tobool313.not, label %if.end308.if.end315_crit_edge, label %if.then314

if.end308.if.end315_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end315

if.then314:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #12
  %fc_edtov = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 56
  %162 = ptrtoint ptr %fc_edtov to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %fc_edtov, align 8
  %add = add i32 %163, 999999
  %div = udiv i32 %add, 1000000
  br label %if.end315

if.end315:                                        ; preds = %if.then314, %if.end308.if.end315_crit_edge
  %ed_tov.0 = phi i32 [ %div, %if.then314 ], [ %159, %if.end308.if.end315_crit_edge ]
  %fc_edtov316 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 56
  %164 = ptrtoint ptr %fc_edtov316 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %fc_edtov316, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ed_tov.0, i32 %165)
  %cmp317 = icmp ugt i32 %ed_tov.0, %165
  br i1 %cmp317, label %if.then319, label %if.end315.if.end321_crit_edge

if.end315.if.end321_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end321

if.then319:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %fc_edtov316 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %ed_tov.0, ptr %fc_edtov316, align 8
  br label %if.end321

if.end321:                                        ; preds = %if.then319, %if.end315.if.end321_crit_edge
  %167 = ptrtoint ptr %fc_edtov316 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %fc_edtov316, align 8
  %mul = shl i32 %168, 1
  %div323 = udiv i32 %mul, 1000
  %fc_ratov = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 58
  %169 = ptrtoint ptr %fc_ratov to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %div323, ptr %fc_ratov, align 8
  %fc_fabparam = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 62
  %170 = call ptr @memcpy(ptr %fc_fabparam, ptr %add.ptr, i32 112)
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 31
  %171 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %172)
  %cmp324 = icmp eq i32 %172, 4
  br i1 %cmp324, label %if.then326, label %if.else328

if.then326:                                       ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #12
  %call327 = tail call i32 @lpfc_issue_reg_vfi(ptr noundef %vport) #10
  br label %if.end340

if.else328:                                       ; preds = %if.end321
  %mbox_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 231
  %173 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %mbox_mem_pool, align 8
  %call329 = tail call noalias ptr @mempool_alloc(ptr noundef %174, i32 noundef 3264) #10
  %tobool330.not = icmp eq ptr %call329, null
  br i1 %tobool330.not, label %if.else328.out.thread_crit_edge, label %if.end332

if.else328.out.thread_crit_edge:                  ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end332:                                        ; preds = %if.else328
  tail call void @lpfc_config_link(ptr noundef %1, ptr noundef nonnull %call329) #10
  %mbox_cmpl = getelementptr inbounds %struct.lpfcMboxq, ptr %call329, i32 0, i32 6
  %175 = ptrtoint ptr %mbox_cmpl to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @lpfc_sli_def_mbox_cmpl, ptr %mbox_cmpl, align 4
  %vport333 = getelementptr inbounds %struct.lpfcMboxq, ptr %call329, i32 0, i32 2
  %176 = ptrtoint ptr %vport333 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %vport, ptr %vport333, align 4
  %ctx_ndlp = getelementptr inbounds %struct.lpfcMboxq, ptr %call329, i32 0, i32 3
  %177 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %ndlp, ptr %ctx_ndlp, align 4
  %call334 = tail call i32 @lpfc_sli_issue_mbox(ptr noundef %1, ptr noundef nonnull %call329, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call334)
  %cmp335 = icmp eq i32 %call334, 255
  br i1 %cmp335, label %if.then337, label %if.end332.if.end340_crit_edge

if.end332.if.end340_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end340

if.then337:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #12
  %178 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_free(ptr noundef nonnull %call329, ptr noundef %179) #10
  br label %out.thread

if.end340:                                        ; preds = %if.end332.if.end340_crit_edge, %if.then326
  %call341 = tail call i32 @lpfc_can_disctmo(ptr noundef %vport) #10
  br label %if.end342

if.end342:                                        ; preds = %if.end340, %sw.epilog.if.end342_crit_edge
  %180 = ptrtoint ptr %nlp_flag293 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %nlp_flag293, align 4
  %and344 = and i32 %181, -17
  store i32 %and344, ptr %nlp_flag293, align 4
  %sli_flag = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 29, i32 1
  %182 = ptrtoint ptr %sli_flag to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %sli_flag, align 4
  %and345 = and i32 %183, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and345)
  %tobool346.not = icmp eq i32 %and345, 0
  br i1 %tobool346.not, label %if.end342.if.end367_crit_edge, label %land.lhs.true347

if.end342.if.end367_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end367

land.lhs.true347:                                 ; preds = %if.end342
  %response_multiple_NPort = getelementptr i8, ptr %5, i32 8
  %184 = ptrtoint ptr %response_multiple_NPort to i32
  call void @__asan_load2_noabort(i32 %184)
  %bf.load349 = load i16, ptr %response_multiple_NPort, align 4
  %185 = and i16 %bf.load349, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %185)
  %tobool353.not = icmp eq i16 %185, 0
  br i1 %tobool353.not, label %land.lhs.true347.if.end367_crit_edge, label %if.then354

land.lhs.true347.if.end367_crit_edge:             ; preds = %land.lhs.true347
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end367

if.then354:                                       ; preds = %land.lhs.true347
  %un355 = getelementptr i8, ptr %5, i32 100
  %186 = ptrtoint ptr %un355 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %un355, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1162693720, i32 %187)
  %cmp358 = icmp eq i32 %187, 1162693720
  br i1 %cmp358, label %land.lhs.true360, label %if.then354.if.end367_crit_edge

if.then354.if.end367_crit_edge:                   ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end367

land.lhs.true360:                                 ; preds = %if.then354
  %flags = getelementptr i8, ptr %5, i32 104
  %188 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %flags, align 4
  %and361 = and i32 %189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361)
  %tobool362.not = icmp eq i32 %and361, 0
  br i1 %tobool362.not, label %land.lhs.true360.if.end367_crit_edge, label %if.then363

land.lhs.true360.if.end367_crit_edge:             ; preds = %land.lhs.true360
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end367

if.then363:                                       ; preds = %land.lhs.true360
  call void @__sanitizer_cov_trace_pc() #12
  %or365 = or i32 %181, 16
  %190 = ptrtoint ptr %nlp_flag293 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %or365, ptr %nlp_flag293, align 4
  br label %if.end367

if.end367:                                        ; preds = %if.then363, %land.lhs.true360.if.end367_crit_edge, %if.then354.if.end367_crit_edge, %land.lhs.true347.if.end367_crit_edge, %if.end342.if.end367_crit_edge
  %mbox_mem_pool368 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 231
  %191 = ptrtoint ptr %mbox_mem_pool368 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mbox_mem_pool368, align 8
  %call369 = tail call noalias ptr @mempool_alloc(ptr noundef %192, i32 noundef 3264) #10
  %tobool370.not = icmp eq ptr %call369, null
  br i1 %tobool370.not, label %if.end367.out.thread_crit_edge, label %if.end372

if.end367.out.thread_crit_edge:                   ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end372:                                        ; preds = %if.end367
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %193 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %193, i32 noundef 3520, i32 noundef 400) #16
  %tobool374.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool374.not, label %if.end372.if.then448_crit_edge, label %if.end376

if.end372.if.then448_crit_edge:                   ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then448

if.end376:                                        ; preds = %if.end372
  %194 = call ptr @memcpy(ptr %call7.i.i, ptr %cmdiocb, i32 400)
  %sli_rev377 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 31
  %195 = ptrtoint ptr %sli_rev377 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %sli_rev377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %196)
  %cmp378 = icmp eq i32 %196, 4
  br i1 %cmp378, label %if.then380, label %if.end376.if.end382_crit_edge

if.end376.if.end382_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end382

if.then380:                                       ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #12
  %call381 = tail call i32 @lpfc_unreg_rpi(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %if.end382

if.end382:                                        ; preds = %if.then380, %if.end376.if.end382_crit_edge
  %vpi383 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %197 = ptrtoint ptr %vpi383 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %vpi383, align 4
  %remoteID = getelementptr inbounds %struct.RCV_ELS_REQ, ptr %iocb, i32 0, i32 2
  %199 = ptrtoint ptr %remoteID to i32
  call void @__asan_load4_noabort(i32 %199)
  %bf.load385 = load i32, ptr %remoteID, align 4
  %bf.clear386 = and i32 %bf.load385, 16777215
  %nlp_rpi387 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %200 = ptrtoint ptr %nlp_rpi387 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %nlp_rpi387, align 4
  %call388 = tail call i32 @lpfc_reg_rpi(ptr noundef %1, i16 noundef zeroext %198, i32 noundef %bf.clear386, ptr noundef %add.ptr, ptr noundef nonnull %call369, i16 noundef zeroext %201) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call388)
  %tobool389.not = icmp eq i32 %call388, 0
  br i1 %tobool389.not, label %if.end391, label %if.end382.if.then448_crit_edge

if.end382.if.then448_crit_edge:                   ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then448

if.end391:                                        ; preds = %if.end382
  %mbox_cmpl392 = getelementptr inbounds %struct.lpfcMboxq, ptr %call369, i32 0, i32 6
  %202 = ptrtoint ptr %mbox_cmpl392 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @lpfc_mbx_cmpl_reg_login, ptr %mbox_cmpl392, align 4
  %vport393 = getelementptr inbounds %struct.lpfcMboxq, ptr %call369, i32 0, i32 2
  %203 = ptrtoint ptr %vport393 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %vport, ptr %vport393, align 4
  %204 = ptrtoint ptr %nlp_state179 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %nlp_state179, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %205)
  %cmp396 = icmp eq i16 %205, 1
  br i1 %cmp396, label %land.lhs.true398, label %if.end391.if.end403_crit_edge

if.end391.if.end403_crit_edge:                    ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end403

land.lhs.true398:                                 ; preds = %if.end391
  %206 = ptrtoint ptr %fc_flag295 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %fc_flag295, align 4
  %and400 = and i32 %207, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and400)
  %tobool401.not = icmp eq i32 %and400, 0
  br i1 %tobool401.not, label %land.lhs.true398.if.end403_crit_edge, label %if.then402

land.lhs.true398.if.end403_crit_edge:             ; preds = %land.lhs.true398
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end403

if.then402:                                       ; preds = %land.lhs.true398
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_els_abort(ptr noundef %1, ptr noundef %ndlp)
  br label %if.end403

if.end403:                                        ; preds = %if.then402, %land.lhs.true398.if.end403_crit_edge, %if.end391.if.end403_crit_edge
  %port_type = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 2
  %208 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %209)
  %cmp405 = icmp eq i8 %209, 2
  br i1 %cmp405, label %land.lhs.true407, label %if.end403.if.end434_crit_edge

if.end403.if.end434_crit_edge:                    ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end434

land.lhs.true407:                                 ; preds = %if.end403
  %cfg_restrict_login = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 46
  %210 = ptrtoint ptr %cfg_restrict_login to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %cfg_restrict_login, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool408.not = icmp eq i32 %211, 0
  br i1 %tobool408.not, label %land.lhs.true407.if.end434_crit_edge, label %if.then409

land.lhs.true407.if.end434_crit_edge:             ; preds = %land.lhs.true407
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end434

if.then409:                                       ; preds = %land.lhs.true407
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %212 = ptrtoint ptr %sli_rev377 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %sli_rev377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %213)
  %cmp411 = icmp eq i32 %213, 4
  br i1 %cmp411, label %if.then413, label %if.else419

if.then413:                                       ; preds = %if.then409
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %call369, i32 0, i32 4
  %214 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ctx_buf, align 4
  %tobool414.not = icmp eq ptr %215, null
  br i1 %tobool414.not, label %if.then413.if.end417_crit_edge, label %if.then415

if.then413.if.end417_crit_edge:                   ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end417

if.then415:                                       ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #12
  %virt416 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %virt416 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %virt416, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %215, i32 0, i32 2
  %218 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %1, ptr noundef %217, i32 noundef %219) #10
  tail call void @kfree(ptr noundef nonnull %215) #10
  br label %if.end417

if.end417:                                        ; preds = %if.then415, %if.then413.if.end417_crit_edge
  %220 = ptrtoint ptr %mbox_mem_pool368 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mbox_mem_pool368, align 8
  tail call void @mempool_free(ptr noundef nonnull %call369, ptr noundef %221) #10
  br label %if.end423

if.else419:                                       ; preds = %if.then409
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %222 = ptrtoint ptr %nlp_flag293 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %nlp_flag293, align 4
  %or421 = or i32 %223, 84410368
  store i32 %or421, ptr %nlp_flag293, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %if.end423

if.end423:                                        ; preds = %if.else419, %if.end417
  %login_mbox.0 = phi ptr [ null, %if.end417 ], [ %call369, %if.else419 ]
  %call429 = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 65536, ptr noundef %cmdiocb, ptr noundef %ndlp, ptr noundef %login_mbox.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call429)
  %tobool430.not = icmp eq i32 %call429, 0
  br i1 %tobool430.not, label %if.end423.cleanup_crit_edge, label %if.then431

if.end423.cleanup_crit_edge:                      ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then431:                                       ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #12
  %224 = ptrtoint ptr %mbox_mem_pool368 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mbox_mem_pool368, align 8
  tail call void @mempool_free(ptr noundef %login_mbox.0, ptr noundef %225) #10
  br label %cleanup

if.end434:                                        ; preds = %land.lhs.true407.if.end434_crit_edge, %if.end403.if.end434_crit_edge
  %226 = ptrtoint ptr %mbox_cmpl392 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr @lpfc_defer_plogi_acc, ptr %mbox_cmpl392, align 4
  %call436 = tail call ptr @lpfc_nlp_get(ptr noundef %ndlp) #10
  %ctx_ndlp437 = getelementptr inbounds %struct.lpfcMboxq, ptr %call369, i32 0, i32 3
  %227 = ptrtoint ptr %ctx_ndlp437 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call436, ptr %ctx_ndlp437, align 4
  %context3 = getelementptr inbounds %struct.lpfcMboxq, ptr %call369, i32 0, i32 5
  %228 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call7.i.i, ptr %context3, align 4
  %lock438 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock438) #10
  %229 = ptrtoint ptr %nlp_flag293 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %nlp_flag293, align 4
  %or440 = or i32 %230, 17301504
  store i32 %or440, ptr %nlp_flag293, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock438) #10
  %call442 = tail call i32 @lpfc_sli_issue_mbox(ptr noundef %1, ptr noundef nonnull %call369, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call442)
  %cmp443 = icmp eq i32 %call442, 255
  br i1 %cmp443, label %if.end434.if.then448_crit_edge, label %if.end446

if.end434.if.then448_crit_edge:                   ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then448

if.end446:                                        ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 3) #10
  br label %cleanup

out.thread:                                       ; preds = %if.end367.out.thread_crit_edge, %if.then337, %if.else328.out.thread_crit_edge
  tail call void @kfree(ptr noundef null) #10
  br label %if.end450

if.then448:                                       ; preds = %if.end434.if.then448_crit_edge, %if.end382.if.then448_crit_edge, %if.end372.if.then448_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #10
  %231 = ptrtoint ptr %mbox_mem_pool368 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mbox_mem_pool368, align 8
  tail call void @mempool_free(ptr noundef nonnull %call369, ptr noundef %232) #10
  br label %if.end450

if.end450:                                        ; preds = %if.then448, %out.thread
  %call456 = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 600320, ptr noundef %cmdiocb, ptr noundef %ndlp, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end450, %if.end446, %if.then431, %if.end423.cleanup_crit_edge, %if.then192, %if.then77, %do.body31, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ 0, %do.body31 ], [ 0, %if.then77 ], [ 0, %if.end450 ], [ 1, %if.end446 ], [ 1, %if.then192 ], [ 1, %if.then431 ], [ 1, %if.end423.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_els_rsp_reject(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_els_rsp_acc(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_nvmet_invalidate_host(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_nlp_set_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_els_abort_flogi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_issue_reg_vfi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_config_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_def_mbox_cmpl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli_issue_mbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_can_disctmo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_unreg_rpi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_reg_rpi(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_mbx_cmpl_reg_login(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_mbuf_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_defer_plogi_acc(ptr noundef %phba, ptr noundef %login_mbox) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %login_mbox, i32 0, i32 1
  %ctx_ndlp = getelementptr inbounds %struct.lpfcMboxq, ptr %login_mbox, i32 0, i32 3
  %0 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_ndlp, align 4
  %context3 = getelementptr inbounds %struct.lpfcMboxq, ptr %login_mbox, i32 0, i32 5
  %2 = ptrtoint ptr %context3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context3, align 4
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then:                                          ; preds = %entry
  %vport = getelementptr inbounds %struct.lpfcMboxq, ptr %login_mbox, i32 0, i32 2
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vport, align 4
  %call = tail call i32 @lpfc_els_rsp_acc(ptr noundef %7, i32 noundef 50331648, ptr noundef %3, ptr noundef %1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end21_crit_edge, label %do.body

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #10
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no, align 4
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nlp_DID, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %11, i32 noundef %13, i32 noundef %call) #13
  br label %if.end21

if.end21:                                         ; preds = %do.body, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  tail call void @lpfc_mbx_cmpl_reg_login(ptr noundef %phba, ptr noundef %login_mbox) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlp_flag, align 4
  %and22 = and i32 %15, -16777217
  store i32 %and22, ptr %nlp_flag, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_issue_els_logo(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_release_rpi(ptr noundef %phba, ptr noundef %vport, ptr noundef %ndlp, i16 noundef zeroext %rpi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end25, label %do.body

do.body:                                          ; preds = %entry
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %2 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg_log_verbose, align 4
  %and1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 165
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 197
  %8 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %10 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vpi, align 4
  %conv = zext i16 %11 to i32
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %12 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nlp_rpi, align 4
  %conv7 = zext i16 %13 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %14 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlp_DID, align 8
  %nlp_defer_did = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 39
  %16 = ptrtoint ptr %nlp_defer_did to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlp_defer_did, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %9, i32 noundef %conv, i32 noundef %conv7, i32 noundef %15, i32 noundef %17, i32 noundef %1, ptr noundef %ndlp) #13
  br label %cleanup

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vport, align 8
  %brd_no14 = getelementptr inbounds %struct.lpfc_hba, ptr %19, i32 0, i32 197
  %20 = ptrtoint ptr %brd_no14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brd_no14, align 4
  %vpi15 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %22 = ptrtoint ptr %vpi15 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vpi15, align 4
  %conv16 = zext i16 %23 to i32
  %nlp_rpi17 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %24 = ptrtoint ptr %nlp_rpi17 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nlp_rpi17, align 4
  %conv18 = zext i16 %25 to i32
  %nlp_DID19 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %26 = ptrtoint ptr %nlp_DID19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nlp_DID19, align 8
  %nlp_defer_did20 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 39
  %28 = ptrtoint ptr %nlp_defer_did20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlp_defer_did20, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %19, ptr noundef nonnull @.str.33, i32 noundef %21, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %27, i32 noundef %29, i32 noundef %1, ptr noundef %ndlp) #10
  br label %cleanup

if.end25:                                         ; preds = %entry
  %mbox_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  %30 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mbox_mem_pool, align 8
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %31, i32 noundef 3264) #10
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %do.body28, label %if.else59

do.body28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %33) #10
  %34 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vport, align 8
  %pcidev40 = getelementptr inbounds %struct.lpfc_hba, ptr %35, i32 0, i32 165
  %36 = ptrtoint ptr %pcidev40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcidev40, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %brd_no43 = getelementptr inbounds %struct.lpfc_hba, ptr %35, i32 0, i32 197
  %38 = ptrtoint ptr %brd_no43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %brd_no43, align 4
  %vpi44 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %40 = ptrtoint ptr %vpi44 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vpi44, align 4
  %conv45 = zext i16 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev41, ptr noundef nonnull @.str.36, i32 noundef %39, i32 noundef %conv45) #13
  br label %cleanup

if.else59:                                        ; preds = %if.end25
  %vpi60 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %42 = ptrtoint ptr %vpi60 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vpi60, align 4
  %conv61 = zext i16 %rpi to i32
  tail call void @lpfc_unreg_login(ptr noundef %phba, i16 noundef zeroext %43, i32 noundef %conv61, ptr noundef nonnull %call) #10
  %mbox_cmpl = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 6
  %44 = ptrtoint ptr %mbox_cmpl to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @lpfc_sli_def_mbox_cmpl, ptr %mbox_cmpl, align 4
  %vport62 = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 2
  %45 = ptrtoint ptr %vport62 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %vport, ptr %vport62, align 4
  %call63 = tail call ptr @lpfc_nlp_get(ptr noundef %ndlp) #10
  %ctx_ndlp = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 3
  %46 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call63, ptr %ctx_ndlp, align 4
  %tobool65.not = icmp eq ptr %call63, null
  br i1 %tobool65.not, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %48) #10
  br label %cleanup

if.end68:                                         ; preds = %if.else59
  %nlp_DID69 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %49 = ptrtoint ptr %nlp_DID69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nlp_DID69, align 8
  %and70 = and i32 %50, 16773120
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %and70)
  %cmp71.not = icmp eq i32 %and70, 16773120
  br i1 %cmp71.not, label %if.end68.do.body78_crit_edge, label %land.lhs.true

if.end68.do.body78_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body78

land.lhs.true:                                    ; preds = %if.end68
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %51 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fc_flag, align 4
  %and73 = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then75, label %land.lhs.true.do.body78_crit_edge

land.lhs.true.do.body78_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body78

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %54, 32768
  store i32 %or, ptr %nlp_flag, align 4
  br label %do.body78

do.body78:                                        ; preds = %if.then75, %land.lhs.true.do.body78_crit_edge, %if.end68.do.body78_crit_edge
  %cfg_log_verbose79 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %55 = ptrtoint ptr %cfg_log_verbose79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cfg_log_verbose79, align 4
  %and80 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else97, label %do.end85

do.end85:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vport, align 8
  %pcidev87 = getelementptr inbounds %struct.lpfc_hba, ptr %58, i32 0, i32 165
  %59 = ptrtoint ptr %pcidev87 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcidev87, align 4
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %brd_no90 = getelementptr inbounds %struct.lpfc_hba, ptr %58, i32 0, i32 197
  %61 = ptrtoint ptr %brd_no90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %brd_no90, align 4
  %63 = ptrtoint ptr %vpi60 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vpi60, align 4
  %conv92 = zext i16 %64 to i32
  %nlp_rpi93 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %65 = ptrtoint ptr %nlp_rpi93 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %nlp_rpi93, align 4
  %conv94 = zext i16 %66 to i32
  %67 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nlp_flag, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev88, ptr noundef nonnull @.str.39, i32 noundef %62, i32 noundef %conv92, i32 noundef %conv94, i32 noundef %50, i32 noundef %68) #13
  br label %do.end113

if.else97:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool99.not = icmp eq i32 %56, 0
  br i1 %tobool99.not, label %if.then100, label %if.else97.do.end113_crit_edge

if.else97.do.end113_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end113

if.then100:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vport, align 8
  %brd_no103 = getelementptr inbounds %struct.lpfc_hba, ptr %70, i32 0, i32 197
  %71 = ptrtoint ptr %brd_no103 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %brd_no103, align 4
  %73 = ptrtoint ptr %vpi60 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vpi60, align 4
  %conv105 = zext i16 %74 to i32
  %nlp_rpi106 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %75 = ptrtoint ptr %nlp_rpi106 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %nlp_rpi106, align 4
  %conv107 = zext i16 %76 to i32
  %77 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nlp_flag, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %70, ptr noundef nonnull @.str.39, i32 noundef %72, i32 noundef %conv105, i32 noundef %conv107, i32 noundef %50, i32 noundef %78) #10
  br label %do.end113

do.end113:                                        ; preds = %if.then100, %if.else97.do.end113_crit_edge, %do.end85
  %call114 = tail call i32 @lpfc_sli_issue_mbox(ptr noundef %phba, ptr noundef nonnull %call, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call114)
  %cmp115 = icmp eq i32 %call114, 255
  br i1 %cmp115, label %if.then117, label %do.end113.cleanup_crit_edge

do.end113.cleanup_crit_edge:                      ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then117:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %80) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %do.end113.cleanup_crit_edge, %if.then66, %do.body28, %if.then11, %if.else.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_unreg_login(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_more_plogi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_end_rscn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_rcv_logo(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %cmdiocb, i32 noundef %els_cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %3, 1048576
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 554696724, i32 %els_cmd)
  %cmp = icmp eq i32 %els_cmd, 554696724
  %. = select i1 %cmp, i32 554696724, i32 33554432
  %call4 = tail call i32 @lpfc_els_rsp_acc(ptr noundef %vport, i32 noundef %., ptr noundef %cmdiocb, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %4 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlp_type, align 8
  %6 = and i16 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %7 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlp_DID, align 8
  %and5 = and i32 %8, 16777200
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777200, i32 %and5)
  %cmp6.not = icmp eq i32 %and5, 16777200
  br i1 %cmp6.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 74
  %9 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %if.end9.if.end17_crit_edge, label %land.lhs.true12

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true12:                                  ; preds = %if.end9
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %11 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nlp_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %12)
  %cmp14 = icmp eq i16 %12, 6
  br i1 %cmp14, label %if.then16, label %land.lhs.true12.if.end17_crit_edge

land.lhs.true12.if.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_nvmet_invalidate_host(ptr noundef %1, ptr noundef %ndlp) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true12.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %nlp_DID18 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %13 = ptrtoint ptr %nlp_DID18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlp_DID18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %14)
  %cmp19 = icmp eq i32 %14, 16777214
  br i1 %cmp19, label %if.then21, label %if.else67

if.then21:                                        ; preds = %if.end17
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %15 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %16)
  %cmp22 = icmp ult i32 %16, 9
  br i1 %cmp22, label %if.then21.out_crit_edge, label %if.end25

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end25:                                         ; preds = %if.then21
  tail call void @lpfc_linkdown_port(ptr noundef %vport) #10
  %host_lock = getelementptr i8, ptr %vport, i32 -2380
  %17 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %18) #10
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %19 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fc_flag, align 4
  %or26 = or i32 %20, 512
  store i32 %or26, ptr %fc_flag, align 4
  %21 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %22) #10
  %call28 = tail call ptr @lpfc_create_vport_work_array(ptr noundef %1) #10
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end25.if.else61_crit_edge, label %for.cond.preheader

if.end25.if.else61_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

for.cond.preheader:                               ; preds = %if.end25
  %max_vports = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 243
  %23 = ptrtoint ptr %max_vports to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %max_vports, align 2
  %conv31 = zext i16 %24 to i32
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader
  %i.07 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %call28, i32 %i.07
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %cmp34.not = icmp eq ptr %26, null
  br i1 %cmp34.not, label %land.rhs.if.end47_crit_edge, label %for.body

land.rhs.if.end47_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

for.body:                                         ; preds = %land.rhs
  %fc_flag37 = getelementptr inbounds %struct.lpfc_vport, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %fc_flag37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fc_flag37, align 4
  %and38 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true40:                                  ; preds = %for.body
  %port_state42 = getelementptr inbounds %struct.lpfc_vport, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %port_state42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_state42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %30)
  %cmp43 = icmp ugt i32 %30, 8
  br i1 %cmp43, label %land.lhs.true40.if.end47_crit_edge, label %land.lhs.true40.for.inc_crit_edge

land.lhs.true40.for.inc_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true40.if.end47_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

for.inc:                                          ; preds = %land.lhs.true40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond = icmp eq i32 %i.07, %conv31
  br i1 %exitcond, label %for.inc.if.end47_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.if.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.end47:                                         ; preds = %for.inc.if.end47_crit_edge, %land.lhs.true40.if.end47_crit_edge, %land.rhs.if.end47_crit_edge
  %tobool52.not = phi i1 [ true, %land.rhs.if.end47_crit_edge ], [ true, %for.inc.if.end47_crit_edge ], [ false, %land.lhs.true40.if.end47_crit_edge ]
  tail call void @lpfc_destroy_vport_work_array(ptr noundef %1, ptr noundef nonnull %call28) #10
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 41
  %31 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %load_flag, align 4
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool50.not = icmp ne i8 %33, 0
  %or.cond = or i1 %tobool52.not, %tobool50.not
  br i1 %or.cond, label %if.end47.if.else61_crit_edge, label %if.then53

if.end47.if.else61_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_delayfunc = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %34, 100
  %call55 = tail call i32 @mod_timer(ptr noundef %nlp_delayfunc, i32 noundef %add) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %35 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nlp_flag, align 4
  %or58 = or i32 %36, 131072
  store i32 %or58, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_last_elscmd = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 7
  %37 = ptrtoint ptr %nlp_last_elscmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1358954496, ptr %nlp_last_elscmd, align 4
  %38 = ptrtoint ptr %port_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %port_state, align 8
  br label %out

if.else61:                                        ; preds = %if.end47.if.else61_crit_edge, %if.end25.if.else61_crit_edge
  %39 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %40) #10
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %41 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pport, align 8
  %fc_flag63 = getelementptr inbounds %struct.lpfc_vport, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %fc_flag63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fc_flag63, align 4
  %and64 = and i32 %44, -2049
  store i32 %and64, ptr %fc_flag63, align 4
  %45 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %46) #10
  tail call void @lpfc_retry_pport_discovery(ptr noundef %1) #10
  br label %out

if.else67:                                        ; preds = %if.end17
  %47 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %nlp_type, align 8
  %conv69 = zext i16 %48 to i32
  %and70 = and i32 %conv69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %land.lhs.true72, label %if.else67.lor.lhs.false85_crit_edge

if.else67.lor.lhs.false85_crit_edge:              ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false85

land.lhs.true72:                                  ; preds = %if.else67
  %49 = and i32 %conv69, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %lor.lhs.false81, label %land.lhs.true72.if.then90_crit_edge

land.lhs.true72.if.then90_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then90

lor.lhs.false81:                                  ; preds = %land.lhs.true72
  %fc_flag82 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %51 = ptrtoint ptr %fc_flag82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fc_flag82, align 4
  %and83 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %lor.lhs.false81.lor.lhs.false85_crit_edge, label %lor.lhs.false81.if.then90_crit_edge

lor.lhs.false81.if.then90_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then90

lor.lhs.false81.lor.lhs.false85_crit_edge:        ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false81.lor.lhs.false85_crit_edge, %if.else67.lor.lhs.false85_crit_edge
  %nlp_state86 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %53 = ptrtoint ptr %nlp_state86 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %nlp_state86, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %54)
  %cmp88 = icmp eq i16 %54, 2
  br i1 %cmp88, label %lor.lhs.false85.if.then90_crit_edge, label %lor.lhs.false85.out_crit_edge

lor.lhs.false85.out_crit_edge:                    ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false85.if.then90_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then90

if.then90:                                        ; preds = %lor.lhs.false85.if.then90_crit_edge, %lor.lhs.false81.if.then90_crit_edge, %land.lhs.true72.if.then90_crit_edge
  %nlp_delayfunc91 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add93 = add i32 %55, 100
  %call94 = tail call i32 @mod_timer(ptr noundef %nlp_delayfunc91, i32 noundef %add93) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %56 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nlp_flag, align 4
  %or97 = or i32 %57, 131072
  store i32 %or97, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_last_elscmd99 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 7
  %58 = ptrtoint ptr %nlp_last_elscmd99 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 50331648, ptr %nlp_last_elscmd99, align 4
  br label %out

out:                                              ; preds = %if.then90, %lor.lhs.false85.out_crit_edge, %if.else61, %if.then53, %if.then21.out_crit_edge
  tail call void @lpfc_nlp_unreg_node(ptr noundef %vport, ptr noundef %ndlp) #10
  %nlp_state102 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %59 = ptrtoint ptr %nlp_state102 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %nlp_state102, align 2
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %61 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 8) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %62 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nlp_flag, align 4
  %and105 = and i32 %63, -33554433
  store i32 %and105, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_linkdown_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_create_vport_work_array(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_destroy_vport_work_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_retry_pport_discovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_nlp_unreg_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_mbx_cmpl_ns_reg_login(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_mbx_cmpl_fdmi_reg_login(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_vport_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_drop_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_more_adisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_issue_els_plogi(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpfc_rcv_prli_support_check(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %cmdiocb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vport, align 8
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 74
  %8 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 537919508, i32 %5)
  %cmp = icmp eq i32 %5, 537919508
  br i1 %cmp, label %if.then.do.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else:                                          ; preds = %entry
  %nvmei_support = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 90
  %10 = ptrtoint ptr %nvmei_support to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nvmei_support, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 538181656, i32 %5)
  %cmp3 = icmp eq i32 %5, 538181656
  %or.cond = select i1 %tobool2.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.else.do.body_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.then.do.body_crit_edge
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %12 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else14, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 165
  %14 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 197
  %16 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %18 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vpi, align 4
  %conv = zext i16 %19 to i32
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %20 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nlp_rpi, align 4
  %conv12 = zext i16 %21 to i32
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %22 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nlp_state, align 2
  %conv13 = zext i16 %23 to i32
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %24 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nlp_flag, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.63, ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %17, i32 noundef %conv, i32 noundef %5, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %25) #13
  br label %do.end31

if.else14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  br i1 %tobool16.not, label %if.then17, label %if.else14.do.end31_crit_edge

if.else14.do.end31_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

if.then17:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  %brd_no20 = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 197
  %26 = ptrtoint ptr %brd_no20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brd_no20, align 4
  %vpi21 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %28 = ptrtoint ptr %vpi21 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vpi21, align 4
  %conv22 = zext i16 %29 to i32
  %nlp_rpi23 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %30 = ptrtoint ptr %nlp_rpi23 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nlp_rpi23, align 4
  %conv24 = zext i16 %31 to i32
  %nlp_state25 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %32 = ptrtoint ptr %nlp_state25 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nlp_state25, align 2
  %conv26 = zext i16 %33 to i32
  %nlp_flag27 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %34 = ptrtoint ptr %nlp_flag27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nlp_flag27, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %7, ptr noundef nonnull @.str.61, i32 noundef %27, i32 noundef %conv22, i32 noundef %5, i32 noundef %conv24, i32 noundef %conv26, i32 noundef %35) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then17, %if.else14.do.end31_crit_edge, %do.end
  %call = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 732160, ptr noundef %cmdiocb, ptr noundef %ndlp, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end31 ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_els_rsp_prli_acc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_rcv_padisc(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %cmdiocb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1375731712, i32 %5)
  %cmp = icmp eq i32 %5, 1375731712
  %pnn.0.v = select i1 %cmp, i32 4, i32 7
  %pnn.0 = getelementptr i32, ptr %3, i32 %pnn.0.v
  %ppn.0.v = select i1 %cmp, i32 2, i32 5
  %ppn.0 = getelementptr i32, ptr %3, i32 %ppn.0.v
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %7 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %land.lhs.true, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %nlp_flag.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %8 = ptrtoint ptr %nlp_flag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlp_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.i = icmp sgt i32 %9, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end30_crit_edge, label %if.end.i

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end.i:                                         ; preds = %land.lhs.true
  %nlp_nodename.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %pnn.0, ptr noundef dereferenceable(8) %nlp_nodename.i, i32 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i, label %lpfc_check_adisc.exit, label %if.end.i.if.end30_crit_edge

if.end.i.if.end30_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

lpfc_check_adisc.exit:                            ; preds = %if.end.i
  %nlp_portname.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 2
  %bcmp1.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %ppn.0, ptr noundef dereferenceable(8) %nlp_portname.i, i32 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i)
  %tobool5.not.i.not = icmp eq i32 %bcmp1.i, 0
  br i1 %tobool5.not.i.not, label %if.then4, label %lpfc_check_adisc.exit.if.end30_crit_edge

lpfc_check_adisc.exit.if.end30_crit_edge:         ; preds = %lpfc_check_adisc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then4:                                         ; preds = %lpfc_check_adisc.exit
  %10 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vport, align 8
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp5 = icmp eq i32 %13, 4
  br i1 %cmp5, label %if.then6, label %if.then4.if.end12_crit_edge

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %if.then4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 400) #16
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %15 = call ptr @memcpy(ptr %call7.i, ptr %cmdiocb, i32 400)
  %drvrTimeout = getelementptr inbounds %struct.lpfc_iocbq, ptr %call7.i, i32 0, i32 16
  %16 = ptrtoint ptr %drvrTimeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %5, ptr %drvrTimeout, align 8
  %call10 = tail call i32 @lpfc_sli4_resume_rpi(ptr noundef %ndlp, ptr noundef nonnull @lpfc_mbx_cmpl_resume_rpi, ptr noundef nonnull %call7.i) #10
  br label %out

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.then4.if.end12_crit_edge
  br i1 %cmp, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 @lpfc_els_rsp_adisc_acc(ptr noundef %vport, ptr noundef %cmdiocb, ptr noundef %ndlp) #10
  br label %out

if.else16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 @lpfc_els_rsp_acc(ptr noundef %vport, i32 noundef 50331648, ptr noundef %cmdiocb, ptr noundef %ndlp, ptr noundef null) #10
  br label %out

out:                                              ; preds = %if.else16, %if.then14, %if.then9
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %17 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nlp_type, align 8
  %19 = and i16 %18, 40
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool19.not = icmp eq i16 %19, 0
  br i1 %tobool19.not, label %out.cleanup_crit_edge, label %if.then20

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20:                                        ; preds = %out
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %20 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nlp_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %21)
  %cmp22.not = icmp eq i16 %21, 7
  br i1 %cmp22.not, label %if.then20.cleanup_crit_edge, label %land.lhs.true24

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true24:                                  ; preds = %if.then20
  %22 = ptrtoint ptr %nlp_flag.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nlp_flag.i, align 4
  %and25 = and i32 %23, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true24.cleanup.sink.split_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true24.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end30:                                         ; preds = %lpfc_check_adisc.exit.if.end30_crit_edge, %if.end.i.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %entry.if.end30_crit_edge
  %call35 = tail call i32 @lpfc_els_rsp_reject(ptr noundef %vport, i32 noundef 590080, ptr noundef %cmdiocb, ptr noundef %ndlp, ptr noundef null) #10
  %nlp_delayfunc = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %24, 100
  %call37 = tail call i32 @mod_timer(ptr noundef %nlp_delayfunc, i32 noundef %add) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag38 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %25 = ptrtoint ptr %nlp_flag38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nlp_flag38, align 4
  %or = or i32 %26, 131072
  store i32 %or, ptr %nlp_flag38, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %nlp_last_elscmd = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 7
  %27 = ptrtoint ptr %nlp_last_elscmd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 50331648, ptr %nlp_last_elscmd, align 4
  %nlp_state40 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %28 = ptrtoint ptr %nlp_state40 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nlp_state40, align 2
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 12
  %30 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %nlp_prev_state, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end30, %land.lhs.true24.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 8, %if.end30 ], [ 7, %land.lhs.true24.cleanup.sink.split_crit_edge ]
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true24.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %out.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli4_resume_rpi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_mbx_cmpl_resume_rpi(ptr nocapture noundef readonly %phba, ptr noundef %mboxq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 4
  %0 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_buf, align 4
  %ctx_ndlp = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 3
  %2 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx_ndlp, align 4
  %vport1 = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 2
  %4 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vport1, align 4
  %drvrTimeout = getelementptr inbounds %struct.lpfc_iocbq, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %drvrTimeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drvrTimeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1375731712, i32 %7)
  %cmp = icmp eq i32 %7, 1375731712
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @lpfc_els_rsp_adisc_acc(ptr noundef %5, ptr noundef %1, ptr noundef %3) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @lpfc_els_rsp_acc(ptr noundef %5, i32 noundef 50331648, ptr noundef %1, ptr noundef %3, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = tail call i32 @lpfc_nlp_put(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %1) #10
  %mbox_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  %8 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_free(ptr noundef %mboxq, ptr noundef %9) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_els_rsp_adisc_acc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_disc_set_adisc(ptr noundef %vport, ptr noundef %ndlp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %0 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlp_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %2 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlp_flag, align 4
  %and2 = and i32 %3, -33554433
  store i32 %and2, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %return

if.end:                                           ; preds = %entry
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %4 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fc_flag, align 4
  %and4 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then6:                                         ; preds = %if.end
  %cfg_use_adisc = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 49
  %6 = ptrtoint ptr %cfg_use_adisc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg_use_adisc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then6.if.end22_crit_edge, label %land.lhs.true

if.then6.if.end22_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then6
  %and9 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %land.lhs.true.if.then17_crit_edge

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

lor.lhs.false:                                    ; preds = %land.lhs.true
  %nlp_fcp_info = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 18
  %8 = ptrtoint ptr %nlp_fcp_info to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nlp_fcp_info, align 2
  %10 = and i8 %9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.end22_crit_edge, label %land.lhs.true13

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %11 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nlp_type, align 8
  %13 = and i16 %12, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool16.not = icmp eq i16 %13, 0
  br i1 %tobool16.not, label %land.lhs.true13.if.end22_crit_edge, label %land.lhs.true13.if.then17_crit_edge

land.lhs.true13.if.then17_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

land.lhs.true13.if.end22_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true13.if.then17_crit_edge, %land.lhs.true.if.then17_crit_edge
  %lock18 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock18) #10
  %14 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %15, 33554432
  store i32 %or, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock18) #10
  br label %return

if.end22:                                         ; preds = %land.lhs.true13.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge, %if.then6.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %lock23 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock23) #10
  %16 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlp_flag, align 4
  %and25 = and i32 %17, -33554433
  store i32 %and25, ptr %nlp_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock23) #10
  %call = tail call i32 @lpfc_unreg_rpi(ptr noundef %vport, ptr noundef %ndlp) #10
  br label %return

return:                                           ; preds = %if.end22, %if.then17, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_rcv_prli(ptr noundef %vport, ptr noundef %ndlp, ptr nocapture noundef readonly %cmdiocb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %rport2 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 23
  %2 = ptrtoint ptr %rport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rport2, align 4
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %4 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %9, label %entry.if.end118_crit_edge [
    i8 8, label %entry.if.then_crit_edge
    i8 40, label %entry.if.then_crit_edge179
  ]

entry.if.then_crit_edge179:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end118_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge179
  %initiatorFunc = getelementptr i8, ptr %7, i32 18
  %11 = ptrtoint ptr %initiatorFunc to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %initiatorFunc, align 2
  %12 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.then.if.end26_crit_edge, label %if.then8

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp11 = icmp eq i8 %9, 8
  br i1 %cmp11, label %if.then13, label %if.then8.if.end_crit_edge

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %13 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nlp_type, align 8
  %15 = or i16 %14, 16
  store i16 %15, ptr %nlp_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then8.if.end_crit_edge
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %17)
  %cmp18 = icmp eq i8 %17, 40
  br i1 %cmp18, label %if.then20, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_type21 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %18 = ptrtoint ptr %nlp_type21 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nlp_type21, align 8
  %20 = or i16 %19, 64
  store i16 %20, ptr %nlp_type21, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end.if.end26_crit_edge, %if.then.if.end26_crit_edge
  %21 = ptrtoint ptr %initiatorFunc to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load27 = load i16, ptr %initiatorFunc, align 2
  %22 = and i16 %bf.load27, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool30.not = icmp eq i16 %22, 0
  br i1 %tobool30.not, label %if.end26.if.end58_crit_edge, label %if.then31

if.end26.if.end58_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then31:                                        ; preds = %if.end26
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %24)
  %cmp34 = icmp eq i8 %24, 8
  br i1 %cmp34, label %if.then36, label %if.then31.if.end41_crit_edge

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then36:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_type37 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %25 = ptrtoint ptr %nlp_type37 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nlp_type37, align 8
  %27 = or i16 %26, 8
  store i16 %27, ptr %nlp_type37, align 8
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr = load i8, ptr %add.ptr, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.then31.if.end41_crit_edge
  %29 = phi i8 [ %.pr, %if.then36 ], [ %24, %if.then31.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %29)
  %cmp44 = icmp eq i8 %29, 40
  br i1 %cmp44, label %if.then46, label %if.end41.if.end51_crit_edge

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_type47 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %30 = ptrtoint ptr %nlp_type47 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nlp_type47, align 8
  %32 = or i16 %31, 32
  store i16 %32, ptr %nlp_type47, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end41.if.end51_crit_edge
  %33 = ptrtoint ptr %initiatorFunc to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load52 = load i16, ptr %initiatorFunc, align 2
  %bf.clear53 = and i16 %bf.load52, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear53)
  %tobool54.not = icmp eq i16 %bf.clear53, 0
  br i1 %tobool54.not, label %if.end51.if.end58_crit_edge, label %if.then55

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %34 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nlp_flag, align 4
  %or56 = or i32 %35, 1073741824
  store i32 %or56, ptr %nlp_flag, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end51.if.end58_crit_edge, %if.end26.if.end58_crit_edge
  %36 = ptrtoint ptr %initiatorFunc to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load59 = load i16, ptr %initiatorFunc, align 2
  %37 = and i16 %bf.load59, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool63.not = icmp eq i16 %37, 0
  br i1 %tobool63.not, label %if.end58.if.end71_crit_edge, label %land.lhs.true

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true:                                    ; preds = %if.end58
  %nlp_type64 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %38 = ptrtoint ptr %nlp_type64 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nlp_type64, align 8
  %40 = and i16 %39, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool66.not = icmp eq i16 %40, 0
  br i1 %tobool66.not, label %land.lhs.true.if.end71_crit_edge, label %if.then67

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_fcp_info = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 18
  %41 = ptrtoint ptr %nlp_fcp_info to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nlp_fcp_info, align 2
  %43 = or i8 %42, 16
  store i8 %43, ptr %nlp_fcp_info, align 2
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %land.lhs.true.if.end71_crit_edge, %if.end58.if.end71_crit_edge
  %44 = ptrtoint ptr %initiatorFunc to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load73 = load i16, ptr %initiatorFunc, align 2
  %45 = and i16 %bf.load73, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool77.not = icmp eq i16 %45, 0
  br i1 %tobool77.not, label %if.end71.if.end90_crit_edge, label %land.lhs.true78

if.end71.if.end90_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

land.lhs.true78:                                  ; preds = %if.end71
  %nsler = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 78
  %46 = ptrtoint ptr %nsler to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %nsler, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool80.not = icmp eq i8 %47, 0
  br i1 %tobool80.not, label %land.lhs.true78.if.end90_crit_edge, label %land.lhs.true81

land.lhs.true78.if.end90_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

land.lhs.true81:                                  ; preds = %land.lhs.true78
  %nlp_type82 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %48 = ptrtoint ptr %nlp_type82 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nlp_type82, align 8
  %50 = and i16 %49, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool85.not = icmp eq i16 %50, 0
  br i1 %tobool85.not, label %land.lhs.true81.if.end90_crit_edge, label %if.then86

land.lhs.true81.if.end90_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then86:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_nvme_info = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 19
  %51 = ptrtoint ptr %nlp_nvme_info to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %nlp_nvme_info, align 1
  %53 = or i8 %52, 1
  store i8 %53, ptr %nlp_nvme_info, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %land.lhs.true81.if.end90_crit_edge, %land.lhs.true78.if.end90_crit_edge, %if.end71.if.end90_crit_edge
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 74
  %54 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool92.not = icmp eq i8 %55, 0
  br i1 %tobool92.not, label %if.end90.if.end102thread-pre-split_crit_edge, label %land.lhs.true93

if.end90.if.end102thread-pre-split_crit_edge:     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102thread-pre-split

land.lhs.true93:                                  ; preds = %if.end90
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %57)
  %cmp96 = icmp eq i8 %57, 40
  br i1 %cmp96, label %if.then98, label %land.lhs.true93.if.end102_crit_edge

land.lhs.true93.if.end102_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then98:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_fc4_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %58 = ptrtoint ptr %nlp_fc4_type to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %nlp_fc4_type, align 2
  %60 = or i16 %59, 2
  store i16 %60, ptr %nlp_fc4_type, align 2
  tail call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef %ndlp, i32 noundef 6) #10
  br label %if.end102thread-pre-split

if.end102thread-pre-split:                        ; preds = %if.then98, %if.end90.if.end102thread-pre-split_crit_edge
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %61)
  %.pr178 = load i8, ptr %add.ptr, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end102thread-pre-split, %land.lhs.true93.if.end102_crit_edge
  %62 = phi i8 [ %.pr178, %if.end102thread-pre-split ], [ %57, %land.lhs.true93.if.end102_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %62)
  %cmp105 = icmp eq i8 %62, 8
  br i1 %cmp105, label %land.lhs.true107, label %if.end102.if.end118_crit_edge

if.end102.if.end118_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

land.lhs.true107:                                 ; preds = %if.end102
  %nlp_type108 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %63 = ptrtoint ptr %nlp_type108 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %nlp_type108, align 8
  %65 = and i16 %64, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool111.not = icmp eq i16 %65, 0
  br i1 %tobool111.not, label %if.then112, label %land.lhs.true107.if.end118_crit_edge

land.lhs.true107.if.end118_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then112:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #12
  %nlp_fc4_type113 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 9
  %66 = ptrtoint ptr %nlp_fc4_type113 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %nlp_fc4_type113, align 2
  %68 = or i16 %67, 1
  store i16 %68, ptr %nlp_fc4_type113, align 2
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %land.lhs.true107.if.end118_crit_edge, %if.end102.if.end118_crit_edge, %entry.if.end118_crit_edge
  %tobool119.not = icmp eq ptr %3, null
  br i1 %tobool119.not, label %if.end118.if.end140_crit_edge, label %if.then120

if.end118.if.end140_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.then120:                                       ; preds = %if.end118
  %nlp_type121 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %69 = ptrtoint ptr %nlp_type121 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %nlp_type121, align 8
  %71 = lshr i16 %70, 3
  %72 = and i16 %71, 3
  %73 = zext i16 %72 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %74 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nlp_DID, align 8
  %nlp_flag135 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %76 = ptrtoint ptr %nlp_flag135 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nlp_flag135, align 4
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %vport, i32 noundef 128, ptr noundef nonnull @.str.64, i32 noundef %73, i32 noundef %75, i32 noundef %77) #10
  %cfg_enable_fc4_type = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 52
  %78 = ptrtoint ptr %cfg_enable_fc4_type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cfg_enable_fc4_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp136.not = icmp eq i32 %79, 2
  br i1 %cmp136.not, label %if.then120.if.end140_crit_edge, label %if.then138

if.then120.if.end140_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.then138:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fc_remote_port_rolechg(ptr noundef nonnull %3, i32 noundef %73) #10
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then120.if.end140_crit_edge, %if.end118.if.end140_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remote_port_rolechg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lpfc_mbuf_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_findnode_did(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_nvme_update_localport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_ns_cmd(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_issue_els_prli(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli_abort_iocb(ptr noundef, i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !108, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 155, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lpfc_check_sparm._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lpfc_check_sparm._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 221, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @lpfc_els_abort._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @lpfc_els_abort._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 3073, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lpfc_disc_state_machine._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @lpfc_disc_state_machine._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 3080, i32 4}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 3090, i32 3}
!23 = !{ptr @lpfc_disc_state_machine._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @lpfc_disc_state_machine._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 3097, i32 4}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 3102, i32 3}
!29 = !{ptr @lpfc_disc_state_machine._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lpfc_disc_state_machine._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @lpfc_disc_action, !32, !"lpfc_disc_action", i1 false, i1 false}
!32 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 2925, i32 19}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 343, i32 3}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @lpfc_rcv_plogi._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @lpfc_rcv_plogi._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 352, i32 3}
!40 = !{ptr @lpfc_rcv_plogi._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @lpfc_rcv_plogi._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 373, i32 2}
!44 = !{ptr @lpfc_rcv_plogi._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @lpfc_rcv_plogi._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 427, i32 4}
!48 = !{ptr @lpfc_rcv_plogi._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @lpfc_rcv_plogi._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 307, i32 4}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @lpfc_defer_plogi_acc._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @lpfc_defer_plogi_acc._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1108, i32 2}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lpfc_disc_illegal._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @lpfc_disc_illegal._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1052, i32 3}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lpfc_release_rpi._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @lpfc_release_rpi._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1065, i32 3}
!67 = !{ptr @lpfc_release_rpi._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @lpfc_release_rpi._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1081, i32 3}
!71 = !{ptr @lpfc_release_rpi._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @lpfc_release_rpi._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1347, i32 3}
!75 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1354, i32 2}
!80 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1409, i32 5}
!84 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1435, i32 3}
!88 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry.49, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.51, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1481, i32 3}
!92 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry.52, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.54, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1489, i32 3}
!96 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry.55, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.57, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.59, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1500, i32 3}
!100 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry.58, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @lpfc_cmpl_plogi_plogi_issue._entry_ptr.60, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.61, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 915, i32 2}
!104 = !{ptr @.str.62, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.63, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @lpfc_rcv_prli_support_check._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @lpfc_rcv_prli_support_check._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 994, i32 4}
!110 = !{ptr @.str.65, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1126, i32 3}
!112 = !{ptr @.str.66, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @lpfc_cmpl_plogi_illegal._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @lpfc_cmpl_plogi_illegal._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1913, i32 3}
!117 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @lpfc_cmpl_reglogin_reglogin_issue._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @lpfc_cmpl_reglogin_reglogin_issue._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.70, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 1948, i32 2}
!122 = !{ptr @lpfc_cmpl_reglogin_reglogin_issue._entry.69, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @lpfc_cmpl_reglogin_reglogin_issue._entry_ptr.71, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 2165, i32 3}
!126 = !{ptr @.str.73, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @lpfc_cmpl_prli_prli_issue._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @lpfc_cmpl_prli_prli_issue._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 2231, i32 3}
!131 = !{ptr @lpfc_cmpl_prli_prli_issue._entry.74, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @lpfc_cmpl_prli_prli_issue._entry_ptr.76, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.78, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/lpfc/lpfc_nportdisc.c", i32 2267, i32 3}
!135 = !{ptr @lpfc_cmpl_prli_prli_issue._entry.77, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @lpfc_cmpl_prli_prli_issue._entry_ptr.79, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"branch_weights", i32 1, i32 2000}
