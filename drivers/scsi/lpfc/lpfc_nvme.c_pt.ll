; ModuleID = '/llk/IR_all_yes/drivers/scsi/lpfc/lpfc_nvme.c_pt.bc'
source_filename = "../drivers/scsi/lpfc/lpfc_nvme.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvme_fc_port_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i64, i32, i32, i32, i32 }
%union.lpfc_wqe128 = type { [32 x i32] }
%struct.lock_class_key = type { %union.anon.12 }
%union.anon.12 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lpfc_async_xchg_ctx = type { %union.anon.212, %struct.list_head, ptr, ptr, ptr, %struct.nvmefc_ls_rsp, ptr, ptr, %struct.spinlock, i32, i32, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.212 = type { %struct.nvmefc_tgt_fcp_req }
%struct.nvmefc_tgt_fcp_req = type { i8, i16, i32, i32, i32, %struct.fc_ba_rjt, ptr, i32, ptr, i32, i16, ptr, ptr, i32, i32 }
%struct.fc_ba_rjt = type { i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvmefc_ls_rsp = type { ptr, i32, i16, ptr, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lpfc_nodelist = type { %struct.list_head, %struct.serv_parm, %struct.lpfc_name, %struct.lpfc_name, %struct.spinlock, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, %struct.timer_list, ptr, ptr, ptr, ptr, %struct.lpfc_work_evt, %struct.lpfc_work_evt, %struct.lpfc_work_evt, %struct.kref, %struct.atomic_t, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.serv_parm = type { %struct.csp, %struct.lpfc_name, %struct.lpfc_name, %struct.class_parms, %struct.class_parms, %struct.class_parms, %struct.class_parms, %union.anon.10 }
%struct.csp = type { i8, i8, i8, i8, i16, i8, i8, %union.anon.6, i32 }
%union.anon.6 = type { i32 }
%struct.class_parms = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.10 = type { %struct.anon.11, [8 x i8] }
%struct.anon.11 = type { i32, i32 }
%struct.lpfc_name = type { %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lpfc_work_evt = type { %struct.list_head, ptr, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lpfc_nvme_rport = type { ptr, ptr, ptr, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lpfc_vport = type { ptr, %struct.list_head, i8, i32, i16, i16, i8, i32, i32, %struct.list_head, i16, i16, i16, i16, i16, i16, i16, i16, %struct.serv_parm, i32, i32, %struct.lpfc_name, %struct.lpfc_name, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], %struct.lpfc_name, %struct.lpfc_name, %struct.lpfc_work_evt, %struct.timer_list, i8, i32, %struct.spinlock, i32, %struct.timer_list, %struct.timer_list, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, [256 x %struct.hlist_head], %struct.rwlock_t, %struct.lpfc_vmid_priority_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i8, i8, %struct.list_head, i32, i32, i16, i32, i32, ptr, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lpfc_vmid_priority_info = type { i32, ptr }
%struct.nvme_fc_local_port = type { i32, i32, i64, i64, ptr, i32, i32 }
%struct.lpfc_hba = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lpfc_epd_pool, %struct.lpfc_sli4_hba, ptr, %struct.delayed_work, %struct.delayed_work, %struct.lpfc_sli, i8, i32, i32, i32, i32, %struct.lpfc_trunk_link, i32, i32, i32, ptr, i32, %struct.lpfc_dmabuf, ptr, ptr, %struct.lpfc_mbox_ext_buf_ctx, i32, ptr, ptr, %struct.lpfc_dmabuf, i16, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, %struct.serv_parm, [128 x i8], i32, i32, i32, %struct.lpfc_stats, %struct.lpfc_nodelist, i32, [8 x i8], [8 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.lpfc_vpd, i32, i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, [2 x i32], %struct.wait_queue_head, ptr, i32, i32, i32, i32, [1 x %struct.hbq_s], %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [32 x i8], [16 x i8], [256 x i8], [80 x i8], [256 x i8], [20 x i8], i8, i8, %struct.timer_list, %struct.timer_list, i32, i64, i64, i64, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lpfc_dma_pool, ptr, ptr, ptr, ptr, %struct.fc_host_statistics, i32, i32, i32, %struct.list_head, %struct.spinlock, ptr, i16, i16, i16, i16, ptr, ptr, i16, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.timer_list, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_name, i64, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i16, %struct.list_head, i32, i32, i8, i32, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, %struct.wait_queue_head, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.lpfc_fcf, [3 x i8], i8, i16, %struct.list_head, i8, i16, i16, %struct.spinlock, %struct.list_head, [64 x %struct.unsol_rcv_ct_ctx], i32, %struct.timer_list, %struct.lpfc_ras_fwlog, i8, i32, i32, %struct.atomic_t, %struct.spinlock, ptr, %struct.list_head, i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32, i64, i64, i64, i64, %struct.hrtimer, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.timespec64, i32, i32, i8, i8, i8, i8, i16, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.lpfc_cgn_param, %struct.lpfc_cgn_acqe_stat, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.timespec64, %struct.atomic64_t, i32, i32, %struct.hlist_node, %struct.timer_list, %struct.list_head, [64 x i8], %struct.scsi_host_template, %struct.scsi_host_template, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [256 x %struct.dbg_log_ent] }
%struct.lpfc_epd_pool = type { %struct.list_head, i32, %struct.spinlock }
%struct.lpfc_sli4_hba = type { ptr, ptr, ptr, ptr, %union.anon.202, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.lpfc_register, %struct.lpfc_pc_sli4_params, %struct.lpfc_bbscn_params, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lpfc_name, %struct.lpfc_name, i32, i32, i32, i64, [8 x i8], [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_bmbx, %struct.lpfc_max_cfg_param, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, ptr, i16, %struct.list_head, ptr, ptr, %struct.list_head, ptr, ptr, i16, %struct.list_head, %struct.lpfc_sli4_flags, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.lpfc_sli4_link, %struct.lpfc_sli4_lnk_info, i32, %struct.lpfc_iov, %struct.spinlock, %struct.spinlock, i32, ptr, i16, i16, %struct.cpumask, i16, ptr, ptr, ptr, i32, i8, i8 }
%union.anon.202 = type { %struct.anon.204 }
%struct.anon.204 = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.lpfc_vpd = type { i32, i32, %struct.anon.205, %struct.anon.206 }
%struct.anon.205 = type { i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, i32, [16 x i8], i32, [16 x i8], i32, [16 x i8] }
%struct.anon.206 = type { i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.207, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.207 = type { ptr }
%struct.lpfc_iocbq = type { %struct.list_head, %struct.list_head, %struct.list_head, i16, i16, i16, i16, %struct.lpfc_cq_event, %struct.lpfc_wcqe_complete, i64, %union.lpfc_wqe128, %struct._IOCB, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, i32, %union.anon.94, %union.lpfc_vmid_iocb_tag, ptr, ptr, ptr, ptr }
%struct.lpfc_cq_event = type { %struct.list_head, i16, %union.anon }
%union.anon = type { %struct.lpfc_mcqe }
%struct.lpfc_mcqe = type { i32, i32, i32, i32 }
%struct.lpfc_wcqe_complete = type { i32, i32, i32, i32 }
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
%union.anon.94 = type { ptr }
%union.lpfc_vmid_iocb_tag = type { i32 }
%struct.nvmefc_ls_req = type { ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, [4 x i8] }
%struct.lpfc_queue = type { %struct.list_head, %struct.list_head, i16, i16, i8, i8, %struct.list_head, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i16, i16, i8, i8, ptr, i16, i16, ptr, i32, i32, i32, i64, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, i64, ptr, %struct.list_head, ptr, %struct.irq_poll, i32 }
%struct.irq_poll = type { %struct.list_head, i32, i32, ptr }
%struct.lpfc_sli_ring = type { i16, i16, i8, i8, %struct.spinlock, i32, i32, i32, %struct.list_head, i16, i16, %struct.list_head, i16, i16, i32, %struct.list_head, i16, i16, %struct.list_head, i16, i16, %struct.list_head, [5 x %struct.lpfc_sli_ring_mask], i32, ptr, %struct.lpfc_sli_ring_stat, ptr, %union.anon.198 }
%struct.lpfc_sli_ring_mask = type { i8, i8, i8, i8, ptr }
%struct.lpfc_sli_ring_stat = type { i64, i64, i64, i64, i64, i64, i64 }
%union.anon.198 = type { %struct.lpfc_sli3_ring }
%struct.lpfc_sli3_ring = type { i32, i32, i32, i32, i16, i16, i16, i16, ptr, ptr }
%struct.AC_XRI = type { [3 x i32], i32, i32, i16, i16 }
%struct.nvme_fc_port_info = type { i64, i64, i32, i32, i32 }
%struct.lpfc_nvme_lport = type { ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.lpfc_sli4_hdw_queue = type { ptr, ptr, ptr, i16, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, %struct.lpfc_fc4_ctrl_stat, %struct.lpfc_fc4_ctrl_stat, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.lpfc_fc4_ctrl_stat = type { i32, i32, i32, i32 }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.nvme_fc_remote_port = type { i32, i32, i64, i64, ptr, ptr, i32, i32, i32 }
%struct.lpfc_io_buf = type { %struct.list_head, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.lpfc_iocbq, ptr, i16, i16, ptr, i32, i16, i16, i32, i32, i32, %struct.spinlock, i8, %union.anon.199, i64, i64, i64, i64, i64, i64 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.nvmefc_fcp_req = type { ptr, ptr, i32, i32, i16, i16, i32, %struct.sg_table, ptr, i32, i32, i16, ptr, ptr, i32, i16, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.sli4_wcqe_xri_aborted = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.lpfc_nvme_qhandle = type { i32, i32, i32 }
%struct.nvme_fc_cmd_iu = type { i8, i8, i16, [2 x i8], i8, i8, i64, i32, i32, %struct.nvme_command, i8, i8, i16, i32 }
%struct.nvme_command = type { %union.anon.215 }
%union.anon.215 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.214 }
%struct.anon.214 = type { i64, i64 }
%struct.lpfc_vector_map_info = type { i16, i16, i16, i16, i16 }
%struct.sli4_sge = type { i32, i32, i32, i32 }
%struct.sli4_hybrid_sgl = type { %struct.list_head, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.lpfc_hdwq_stat = type { i32, i32, i32, i32 }
%struct.nvme_fc_ersp_iu = type { i8, i8, i16, i32, i32, i32, %struct.nvme_completion }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%union.nvme_result = type { i64 }

@lpfc_nvme_handle_lsreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 285, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%d:6205 NVME Unsol rcv: sz %d rc %d: %08x %08x %08x %08x %08x %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpfc_nvme_handle_lsreq\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/lpfc/lpfc_nvme.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpfc_nvme_handle_lsreq._entry_ptr = internal global ptr @lpfc_nvme_handle_lsreq._entry, section ".printk_index", align 4
@__lpfc_nvme_ls_req_cmp._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 327, ptr @.str.3, ptr @.str.4 }, align 1
@.str.5 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"%d:(%d):6047 NVMEx LS REQ x%px cmpl DID %x Xri: %x status %x reason x%x cmd:x%px lsreg:x%px bmp:x%px ndlp:x%px\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__lpfc_nvme_ls_req_cmp\00", [41 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_req_cmp._entry_ptr = internal global ptr @__lpfc_nvme_ls_req_cmp._entry, section ".printk_index", align 4
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NVMEx LS CMPL: xri x%x stat x%x parm x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_req_cmp._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 345, ptr @.str.8, ptr @.str.4 }, align 1
@.str.10 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%d:(%d):6046 NVMEx cmpl without done call back? Data x%px DID %x Xri: %x status %x\0A\00", [44 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_req_cmp._entry_ptr.11 = internal global ptr @__lpfc_nvme_ls_req_cmp._entry.9, section ".printk_index", align 4
@__lpfc_nvme_ls_req._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 548, ptr @.str.8, ptr @.str.4 }, align 1
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:(%d):6051 NVMEx LS REQ: Bad NDLP x%px, Failing LS Req\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__lpfc_nvme_ls_req\00", [45 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_req._entry_ptr = internal global ptr @__lpfc_nvme_ls_req._entry, section ".printk_index", align 4
@__lpfc_nvme_ls_req._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 559, ptr @.str.8, ptr @.str.4 }, align 1
@.str.15 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%d:(%d):6088 NVMEx LS REQ: Fail DID x%06x not ready for IO. Type x%x, State x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_req._entry_ptr.16 = internal global ptr @__lpfc_nvme_ls_req._entry.14, section ".printk_index", align 4
@__lpfc_nvme_ls_req._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 583, ptr @.str.8, ptr @.str.4 }, align 1
@.str.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%d:(%d):6044 NVMEx LS REQ: Could not alloc LS buf for DID %x\0A\00", [34 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_req._entry_ptr.19 = internal global ptr @__lpfc_nvme_ls_req._entry.17, section ".printk_index", align 4
@__lpfc_nvme_ls_req._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 592, ptr @.str.8, ptr @.str.4 }, align 1
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%d:(%d):6042 NVMEx LS REQ: Could not alloc mbuf for DID %x\0A\00", [36 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_req._entry_ptr.22 = internal global ptr @__lpfc_nvme_ls_req._entry.20, section ".printk_index", align 4
@__lpfc_nvme_ls_req._entry.23 = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 618, ptr @.str.3, ptr @.str.4 }, align 1
@.str.24 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%d:(%d):6149 NVMEx LS REQ: Issue to DID 0x%06x lsreq x%px, rqstlen:%d rsplen:%d %pad %pad\0A\00", [37 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_req._entry_ptr.25 = internal global ptr @__lpfc_nvme_ls_req._entry.23, section ".printk_index", align 4
@__lpfc_nvme_ls_req._entry.26 = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.2, i32 627, ptr @.str.8, ptr @.str.4 }, align 1
@.str.27 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%d:(%d):6052 NVMEx REQ: EXIT. issue ls wqe failed lsreq x%px Status %x DID %x\0A\00", [49 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_req._entry_ptr.28 = internal global ptr @__lpfc_nvme_ls_req._entry.26, section ".printk_index", align 4
@__lpfc_nvme_ls_abort._entry = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 705, ptr @.str.8, ptr @.str.4 }, align 1
@.str.29 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%d:(%d):6049 NVMEx LS REQ Abort: Bad NDLP x%px DID x%06x, Failing LS Req\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__lpfc_nvme_ls_abort\00", [43 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_abort._entry_ptr = internal global ptr @__lpfc_nvme_ls_abort._entry, section ".printk_index", align 4
@__lpfc_nvme_ls_abort._entry.31 = internal constant %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 714, ptr @.str.3, ptr @.str.4 }, align 1
@.str.32 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%d:(%d):6040 NVMEx LS REQ Abort: Issue LS_ABORT for lsreq x%px rqstlen:%d rsplen:%d %pad %pad\0A\00", [33 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_abort._entry_ptr.33 = internal global ptr @__lpfc_nvme_ls_abort._entry.31, section ".printk_index", align 4
@__lpfc_nvme_ls_abort._entry.34 = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 741, ptr @.str.3, ptr @.str.4 }, align 1
@.str.35 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%d:(%d):6213 NVMEx LS REQ Abort: Unable to locate req x%px\0A\00", [36 x i8] zeroinitializer }, align 32
@__lpfc_nvme_ls_abort._entry_ptr.36 = internal global ptr @__lpfc_nvme_ls_abort._entry.34, section ".printk_index", align 4
@lpfc_nvme_abort_fcreq_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1753, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"%d:6145 ABORT_XRI_CN completing on rpi x%x original iotag x%x, abort cmd iotag x%x req_tag x%x, status x%x, hwstatus x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_nvme_abort_fcreq_cmpl\00", [37 x i8] zeroinitializer }, align 32
@lpfc_nvme_abort_fcreq_cmpl._entry_ptr = internal global ptr @lpfc_nvme_abort_fcreq_cmpl._entry, section ".printk_index", align 4
@lpfc_nvme_template = internal global { %struct.nvme_fc_port_template, [56 x i8] } { %struct.nvme_fc_port_template { ptr @lpfc_nvme_localport_delete, ptr @lpfc_nvme_remoteport_delete, ptr @lpfc_nvme_create_queue, ptr @lpfc_nvme_delete_queue, ptr @lpfc_nvme_ls_req, ptr @lpfc_nvme_fcp_io_submit, ptr @lpfc_nvme_ls_abort, ptr @lpfc_nvme_fcp_abort, ptr @lpfc_nvme_xmt_ls_rsp, ptr null, i32 1, i16 65, i16 65, i64 4294967295, i32 64, i32 68, i32 0, i32 4 }, [56 x i8] zeroinitializer }, align 32
@lpfc_nvme_create_localport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 2108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%d:(%d):6005 Successfully registered local NVME port num %d, localP x%px, private x%px, sg_seg %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_nvme_create_localport\00", [37 x i8] zeroinitializer }, align 32
@lpfc_nvme_create_localport._entry_ptr = internal global ptr @lpfc_nvme_create_localport._entry, section ".printk_index", align 4
@lpfc_nvme_destroy_localport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 2232, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):6011 Destroying NVME localport x%px\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpfc_nvme_destroy_localport\00", [36 x i8] zeroinitializer }, align 32
@lpfc_nvme_destroy_localport._entry_ptr = internal global ptr @lpfc_nvme_destroy_localport._entry, section ".printk_index", align 4
@lpfc_nvme_destroy_localport._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 2254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:(%d):6009 Unregistered lport Success\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_nvme_destroy_localport._entry_ptr.45 = internal global ptr @lpfc_nvme_destroy_localport._entry.43, section ".printk_index", align 4
@lpfc_nvme_destroy_localport._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 2260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d:(%d):6010 Unregistered lport Failed, status x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@lpfc_nvme_destroy_localport._entry_ptr.48 = internal global ptr @lpfc_nvme_destroy_localport._entry.46, section ".printk_index", align 4
@lpfc_nvme_update_localport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 2275, ptr @.str.51, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):6710 Update NVME fail. No localport\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_nvme_update_localport\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lpfc_nvme_update_localport._entry_ptr = internal global ptr @lpfc_nvme_update_localport._entry, section ".printk_index", align 4
@lpfc_nvme_update_localport._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.2, i32 2282, ptr @.str.51, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%d:(%d):6171 Update NVME fail. localP x%px, No lport\0A\00", [42 x i8] zeroinitializer }, align 32
@lpfc_nvme_update_localport._entry_ptr.54 = internal global ptr @lpfc_nvme_update_localport._entry.52, section ".printk_index", align 4
@lpfc_nvme_update_localport._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.2, i32 2287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):6012 Update NVME lport x%px did x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@lpfc_nvme_update_localport._entry_ptr.57 = internal global ptr @lpfc_nvme_update_localport._entry.55, section ".printk_index", align 4
@lpfc_nvme_update_localport._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.50, ptr @.str.2, i32 2297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d:(%d):6030 bound lport x%px to DID x%06x\0A\00", [52 x i8] zeroinitializer }, align 32
@lpfc_nvme_update_localport._entry_ptr.60 = internal global ptr @lpfc_nvme_update_localport._entry.58, section ".printk_index", align 4
@lpfc_nvme_register_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 2317, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%d:(%d):6006 Register NVME PORT. DID x%06x nlptype x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_nvme_register_port\00", [40 x i8] zeroinitializer }, align 32
@lpfc_nvme_register_port._entry_ptr = internal global ptr @lpfc_nvme_register_port._entry, section ".printk_index", align 4
@lpfc_nvme_register_port._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 2357, ptr @.str.51, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Warning - No node ref - exit register\0A\00", [57 x i8] zeroinitializer }, align 32
@lpfc_nvme_register_port._entry_ptr.65 = internal global ptr @lpfc_nvme_register_port._entry.63, section ".printk_index", align 4
@lpfc_nvme_register_port._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 2415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"%d:(%d):6022 Bind lport x%px to remoteport x%px rport x%px WWNN 0x%llx, Rport WWPN 0x%llx DID x%06x Role x%x, ndlp %p prev_ndlp x%px\0A\00", [58 x i8] zeroinitializer }, align 32
@lpfc_nvme_register_port._entry_ptr.68 = internal global ptr @lpfc_nvme_register_port._entry.66, section ".printk_index", align 4
@lpfc_nvme_register_port._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.2, i32 2421, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%d:(%d):6031 RemotePort Registration failed err: %d, DID x%06x\0A\00", [32 x i8] zeroinitializer }, align 32
@lpfc_nvme_register_port._entry_ptr.71 = internal global ptr @lpfc_nvme_register_port._entry.69, section ".printk_index", align 4
@lpfc_nvme_rescan_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 2454, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%d:(%d):6170 Rescan NPort DID x%06x type x%x state x%x nrport x%px remoteport x%px\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpfc_nvme_rescan_port\00", [42 x i8] zeroinitializer }, align 32
@lpfc_nvme_rescan_port._entry_ptr = internal global ptr @lpfc_nvme_rescan_port._entry, section ".printk_index", align 4
@lpfc_nvme_rescan_port._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 2467, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%d:(%d):6172 NVME rescanned DID x%06x port_state x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@lpfc_nvme_rescan_port._entry_ptr.76 = internal global ptr @lpfc_nvme_rescan_port._entry.74, section ".printk_index", align 4
@lpfc_nvme_rescan_port._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.2, i32 2473, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%d:(%d):6169 Skip NVME Rport Rescan, NVME remoteport unregistered\0A\00", [61 x i8] zeroinitializer }, align 32
@lpfc_nvme_rescan_port._entry_ptr.79 = internal global ptr @lpfc_nvme_rescan_port._entry.77, section ".printk_index", align 4
@lpfc_nvme_unregister_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 2525, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"%d:(%d):6033 Unreg nvme remoteport x%px, portname x%llx, port_id x%06x, portstate x%x port type x%x refcnt %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lpfc_nvme_unregister_port\00", [38 x i8] zeroinitializer }, align 32
@lpfc_nvme_unregister_port._entry_ptr = internal global ptr @lpfc_nvme_unregister_port._entry, section ".printk_index", align 4
@lpfc_nvme_unregister_port._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 2561, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%d:(%d):6167 NVME unregister failed %d port_state x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@lpfc_nvme_unregister_port._entry_ptr.84 = internal global ptr @lpfc_nvme_unregister_port._entry.82, section ".printk_index", align 4
@lpfc_nvme_unregister_port._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.2, i32 2570, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%d:(%d):6168 State error: lport x%px, rport x%px FCID x%06x\0A\00", [35 x i8] zeroinitializer }, align 32
@lpfc_nvme_unregister_port._entry_ptr.87 = internal global ptr @lpfc_nvme_unregister_port._entry.85, section ".printk_index", align 4
@lpfc_sli4_nvme_pci_offline_aborted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 2592, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%d:6533 %s nvme_cmd %p tag x%x abort complete and xri released\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lpfc_sli4_nvme_pci_offline_aborted\00", [61 x i8] zeroinitializer }, align 32
@lpfc_sli4_nvme_pci_offline_aborted._entry_ptr = internal global ptr @lpfc_sli4_nvme_pci_offline_aborted._entry, section ".printk_index", align 4
@lpfc_sli4_nvme_xri_aborted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 2636, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%d:6311 nvme_cmd %p xri x%x tag x%x abort complete and xri released\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_sli4_nvme_xri_aborted\00", [37 x i8] zeroinitializer }, align 32
@lpfc_sli4_nvme_xri_aborted._entry_ptr = internal global ptr @lpfc_sli4_nvme_xri_aborted._entry, section ".printk_index", align 4
@lpfc_nvme_wait_for_io_drain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 2691, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d:6178 NVME IO not empty, cnt %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpfc_nvme_wait_for_io_drain\00", [36 x i8] zeroinitializer }, align 32
@lpfc_nvme_wait_for_io_drain._entry_ptr = internal global ptr @lpfc_nvme_wait_for_io_drain._entry, section ".printk_index", align 4
@lpfc_nvme_cancel_iocb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 2734, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%d:6194 NVME Cancel xri %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpfc_nvme_cancel_iocb\00", [42 x i8] zeroinitializer }, align 32
@lpfc_nvme_cancel_iocb._entry_ptr = internal global ptr @lpfc_nvme_cancel_iocb._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lpfc_nvme_gen_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 410, ptr @.str.51, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Warning: Failed node ref, not sending LS_REQ\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpfc_nvme_gen_req\00", [46 x i8] zeroinitializer }, align 32
@lpfc_nvme_gen_req._entry_ptr = internal global ptr @lpfc_nvme_gen_req._entry, section ".printk_index", align 4
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NVME LS  XMIT: xri x%x iotag x%x to x%06x\0A\00", [53 x i8] zeroinitializer }, align 32
@lpfc_nvme_gen_req._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.97, ptr @.str.2, i32 501, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%d:(%d):6045 Issue GEN REQ WQE to NPORT x%x Data: x%x x%x  rc x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@lpfc_nvme_gen_req._entry_ptr.101 = internal global ptr @lpfc_nvme_gen_req._entry.99, section ".printk_index", align 4
@lpfc_nvme_gen_req._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.97, ptr @.str.2, i32 513, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"%d:(%d):6050 Issue GEN REQ WQE to NPORT x%x Data: oxid: x%x state: x%x wq:x%px lsreq:x%px bmp:x%px xmit:%d 1st:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@lpfc_nvme_gen_req._entry_ptr.104 = internal global ptr @lpfc_nvme_gen_req._entry.102, section ".printk_index", align 4
@lpfc_nvme_localport_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):6173 localport x%px delete complete\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_nvme_localport_delete\00", [37 x i8] zeroinitializer }, align 32
@lpfc_nvme_localport_delete._entry_ptr = internal global ptr @lpfc_nvme_localport_delete._entry, section ".printk_index", align 4
@lpfc_nvme_remoteport_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013**** %s: NULL ndlp on rport x%px remoteport x%px\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpfc_nvme_remoteport_delete\00", [36 x i8] zeroinitializer }, align 32
@lpfc_nvme_remoteport_delete._entry_ptr = internal global ptr @lpfc_nvme_remoteport_delete._entry, section ".printk_index", align 4
@lpfc_nvme_remoteport_delete._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013**** %s: Null vport on ndlp x%px, ste x%x rport x%px\0A\00", [40 x i8] zeroinitializer }, align 32
@lpfc_nvme_remoteport_delete._entry_ptr.111 = internal global ptr @lpfc_nvme_remoteport_delete._entry.109, section ".printk_index", align 4
@lpfc_nvme_remoteport_delete._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.2, i32 214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%d:(%d):6146 remoteport delete of remoteport x%px, ndlp x%px DID x%x xflags x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@lpfc_nvme_remoteport_delete._entry_ptr.114 = internal global ptr @lpfc_nvme_remoteport_delete._entry.112, section ".printk_index", align 4
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IO \00", [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADM\00", [28 x i8] zeroinitializer }, align 32
@lpfc_nvme_create_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%d:(%d):6073 Binding %s HdwQueue %d  (cpu %d) to hdw_queue %d qhandle x%px\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpfc_nvme_create_queue\00", [41 x i8] zeroinitializer }, align 32
@lpfc_nvme_create_queue._entry_ptr = internal global ptr @lpfc_nvme_create_queue._entry, section ".printk_index", align 4
@lpfc_nvme_delete_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%d:(%d):6001 ENTER.  lpfc_pnvme x%px, qidx x%x qhandle x%px\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpfc_nvme_delete_queue\00", [41 x i8] zeroinitializer }, align 32
@lpfc_nvme_delete_queue._entry_ptr = internal global ptr @lpfc_nvme_delete_queue._entry, section ".printk_index", align 4
@lpfc_nvme_fcp_io_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 1510, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d:(%d):6117 Fail IO, NULL hw_queue_handle\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_nvme_fcp_io_submit\00", [40 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry_ptr = internal global ptr @lpfc_nvme_fcp_io_submit._entry, section ".printk_index", align 4
@lpfc_nvme_fcp_io_submit._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 1520, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d:(%d):6124 Fail IO, Driver unload\0A\00", [59 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry_ptr.125 = internal global ptr @lpfc_nvme_fcp_io_submit._entry.123, section ".printk_index", align 4
@lpfc_nvme_fcp_io_submit._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.2, i32 1529, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:(%d):6158 Fail IO, NULL request data\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry_ptr.128 = internal global ptr @lpfc_nvme_fcp_io_submit._entry.126, section ".printk_index", align 4
@lpfc_nvme_fcp_io_submit._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.122, ptr @.str.2, i32 1551, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%d:(%d):6053 Busy IO, ndlp not ready: rport x%px ndlp x%px, DID x%06x\0A\00", [57 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry_ptr.131 = internal global ptr @lpfc_nvme_fcp_io_submit._entry.129, section ".printk_index", align 4
@lpfc_nvme_fcp_io_submit._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.122, ptr @.str.2, i32 1565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%d:(%d):6036 Fail IO, DID x%06x not ready for IO. State x%x, Type x%x Flg x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry_ptr.134 = internal global ptr @lpfc_nvme_fcp_io_submit._entry.132, section ".printk_index", align 4
@lpfc_nvme_fcp_io_submit._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.122, ptr @.str.2, i32 1607, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%d:(%d):6174 Fail IO, ndlp qdepth exceeded: idx %d DID %x pend %d qdepth %d\0A\00", [51 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry_ptr.137 = internal global ptr @lpfc_nvme_fcp_io_submit._entry.135, section ".printk_index", align 4
@lpfc_nvme_fcp_io_submit._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.122, ptr @.str.2, i32 1628, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%d:(%d):6065 Fail IO, driver buffer pool is empty: idx %d DID %x\0A\00", [62 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry_ptr.140 = internal global ptr @lpfc_nvme_fcp_io_submit._entry.138, section ".printk_index", align 4
@lpfc_nvme_fcp_io_submit._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.122, ptr @.str.2, i32 1670, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d:(%d):6175 Fail IO, Prep DMA: idx %d DID %x\0A\00", [49 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry_ptr.143 = internal global ptr @lpfc_nvme_fcp_io_submit._entry.141, section ".printk_index", align 4
@.str.144 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NVME FCP XMIT: xri x%x idx %d to %06x\0A\00", [57 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.122, ptr @.str.2, i32 1687, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%d:(%d):6113 Fail IO, Could not issue WQE err %x sid: x%x did: x%x oxid: x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry_ptr.147 = internal global ptr @lpfc_nvme_fcp_io_submit._entry.145, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@lpfc_nvme_fcp_io_submit._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.122, ptr @.str.2, i32 1708, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d:(%d):6702 CPU Check cmd: cpu %d wq %d\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_io_submit._entry_ptr.150 = internal global ptr @lpfc_nvme_fcp_io_submit._entry.148, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lpfc_nvme_io_cmd_wqe_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 946, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%d:(%d):6071 Null lpfc_ncmd pointer. No release, skip completion\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lpfc_nvme_io_cmd_wqe_cmpl\00", [38 x i8] zeroinitializer }, align 32
@lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr = internal global ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry, section ".printk_index", align 4
@lpfc_nvme_io_cmd_wqe_cmpl._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.2, i32 958, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%d:(%d):6066 Missing cmpl ptrs: lpfc_ncmd x%px, nvmeCmd x%px\0A\00", [34 x i8] zeroinitializer }, align 32
@lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.155 = internal global ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.153, section ".printk_index", align 4
@.str.156 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NVME FCP CMPL: xri x%x stat x%x parm x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_nvme_io_cmd_wqe_cmpl._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.152, ptr @.str.2, i32 989, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%d:(%d):6062 Ignoring NVME cmpl.  No ndlp\0A\00", [53 x i8] zeroinitializer }, align 32
@lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.159 = internal global ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.157, section ".printk_index", align 4
@lpfc_nvme_io_cmd_wqe_cmpl._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.152, ptr @.str.2, i32 1066, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%d:(%d):6084 NVME Completion ERSP: xri %x placed x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.162 = internal global ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.160, section ".printk_index", align 4
@lpfc_nvme_io_cmd_wqe_cmpl._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.152, ptr @.str.2, i32 1075, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%d:(%d):6081 NVME Completion Protocol Error: xri %x status x%x result x%x placed x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.165 = internal global ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.163, section ".printk_index", align 4
@lpfc_nvme_io_cmd_wqe_cmpl._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.152, ptr @.str.2, i32 1087, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%d:(%d):6032 Delay Aborted cmd x%px nvme cmd x%px, xri x%x, xb %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.168 = internal global ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.166, section ".printk_index", align 4
@lpfc_nvme_io_cmd_wqe_cmpl._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.152, ptr @.str.2, i32 1098, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%d:(%d):6072 NVME Completion Error: xri %x status x%x result x%x [x%x] placed x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.171 = internal global ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.169, section ".printk_index", align 4
@lpfc_nvme_io_cmd_wqe_cmpl._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.152, ptr @.str.2, i32 1131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d:(%d):6701 CPU Check cmpl: cpu %d expect %d\0A\00", [49 x i8] zeroinitializer }, align 32
@lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.174 = internal global ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.172, section ".printk_index", align 4
@lpfc_iwrite_cmd_template = external dso_local local_unnamed_addr global %union.lpfc_wqe128, align 4
@lpfc_iread_cmd_template = external dso_local local_unnamed_addr global %union.lpfc_wqe128, align 4
@lpfc_icmnd_cmd_template = external dso_local local_unnamed_addr global %union.lpfc_wqe128, align 4
@lpfc_nvme_prep_io_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.2, i32 1329, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%d:6058 Too many sg segments from NVME Transport.  Max %d, nvmeIO sg_cnt %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpfc_nvme_prep_io_dma\00", [42 x i8] zeroinitializer }, align 32
@lpfc_nvme_prep_io_dma._entry_ptr = internal global ptr @lpfc_nvme_prep_io_dma._entry, section ".printk_index", align 4
@lpfc_nvme_prep_io_dma._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.2, i32 1349, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d:6059 dptr err %d, nseg %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lpfc_nvme_prep_io_dma._entry_ptr.179 = internal global ptr @lpfc_nvme_prep_io_dma._entry.177, section ".printk_index", align 4
@lpfc_nvme_prep_io_dma._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.176, ptr @.str.2, i32 1454, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%d:6063 NVME DMA Prep Err: sg_cnt %d payload_length x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lpfc_nvme_prep_io_dma._entry_ptr.182 = internal global ptr @lpfc_nvme_prep_io_dma._entry.180, section ".printk_index", align 4
@lpfc_nvme_fcp_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 1799, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d:(%d):6129 Fail Abort, HW Queue Handle NULL.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpfc_nvme_fcp_abort\00", [44 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry_ptr = internal global ptr @lpfc_nvme_fcp_abort._entry, section ".printk_index", align 4
@lpfc_nvme_fcp_abort._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.2, i32 1816, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%d:(%d):6002 Abort Request to rport DID x%06x for nvme_fc_req x%px\0A\00", [60 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry_ptr.187 = internal global ptr @lpfc_nvme_fcp_abort._entry.185, section ".printk_index", align 4
@lpfc_nvme_fcp_abort._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.184, ptr @.str.2, i32 1828, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%d:(%d):6139 Driver in reset cleanup - flushing NVME Req now.  hba_flag x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry_ptr.190 = internal global ptr @lpfc_nvme_fcp_abort._entry.188, section ".printk_index", align 4
@lpfc_nvme_fcp_abort._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.184, ptr @.str.2, i32 1837, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%d:(%d):6140 NVME IO req has no matching lpfc nvme io buffer.  Skipping abort req.\0A\00", [44 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry_ptr.193 = internal global ptr @lpfc_nvme_fcp_abort._entry.191, section ".printk_index", align 4
@lpfc_nvme_fcp_abort._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.184, ptr @.str.2, i32 1843, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%d:(%d):6141 lpfc NVME IO req has no nvme_fcreq io buffer.  Skipping abort req.\0A\00", [47 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry_ptr.196 = internal global ptr @lpfc_nvme_fcp_abort._entry.194, section ".printk_index", align 4
@lpfc_nvme_fcp_abort._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.184, ptr @.str.2, i32 1864, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"%d:(%d):6143 NVME req mismatch: lpfc_nbuf x%px nvmeCmd x%px, pnvme_fcreq x%px.  Skipping Abort xri x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry_ptr.199 = internal global ptr @lpfc_nvme_fcp_abort._entry.197, section ".printk_index", align 4
@lpfc_nvme_fcp_abort._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.184, ptr @.str.2, i32 1873, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%d:(%d):6142 NVME IO req x%px not queued - skipping abort req xri x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry_ptr.202 = internal global ptr @lpfc_nvme_fcp_abort._entry.200, section ".printk_index", align 4
@.str.203 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NVME FCP ABORT: xri x%x idx %d to %06x\0A\00", [56 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.184, ptr @.str.2, i32 1889, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"%d:(%d):6144 Outstanding NVME I/O Abort Request still pending on nvme_fcreq x%px, lpfc_ncmd x%px xri x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry_ptr.206 = internal global ptr @lpfc_nvme_fcp_abort._entry.204, section ".printk_index", align 4
@lpfc_nvme_fcp_abort._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.184, ptr @.str.2, i32 1906, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%d:(%d):6137 Failed abts issue_wqe with status x%x for nvme_fcreq x%px.\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry_ptr.209 = internal global ptr @lpfc_nvme_fcp_abort._entry.207, section ".printk_index", align 4
@lpfc_nvme_fcp_abort._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.184, ptr @.str.2, i32 1913, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%d:(%d):6138 Transport Abort NVME Request Issued for ox_id x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@lpfc_nvme_fcp_abort._entry_ptr.212 = internal global ptr @lpfc_nvme_fcp_abort._entry.210, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@lpfc_nvme_lport_unreg_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.2, i32 2192, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%d:(%d):6176 Lport x%px Localport x%px wait timed out. Pending %d [%d:%d]. Renewing.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_nvme_lport_unreg_wait\00", [37 x i8] zeroinitializer }, align 32
@lpfc_nvme_lport_unreg_wait._entry_ptr = internal global ptr @lpfc_nvme_lport_unreg_wait._entry, section ".printk_index", align 4
@lpfc_nvme_lport_unreg_wait._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.215, ptr @.str.2, i32 2199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%d:(%d):6177 Lport x%px Localport x%px Complete Success\0A\00", [39 x i8] zeroinitializer }, align 32
@lpfc_nvme_lport_unreg_wait._entry_ptr.218 = internal global ptr @lpfc_nvme_lport_unreg_wait._entry.216, section ".printk_index", align 4
@lpfc_release_nvme_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.2, i32 2037, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%d:6310 XB release deferred for ox_id x%x on reqtag x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpfc_release_nvme_buf\00", [42 x i8] zeroinitializer }, align 32
@lpfc_release_nvme_buf._entry_ptr = internal global ptr @lpfc_release_nvme_buf._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.221 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 280, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 320, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 329, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 341, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 545, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 556, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 580, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 589, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 613, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 624, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 702, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 709, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 739, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1744, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [19 x i8] c"lpfc_nvme_template\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1923, i32 37 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2102, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2230, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2252, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2256, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2274, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2280, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2285, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2295, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2315, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2356, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2406, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2417, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2450, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2464, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2471, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2519, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2558, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2568, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2588, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2632, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2689, i32 5 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2732, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 409, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 492, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 497, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 507, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 163, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 193, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 200, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 211, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 108, i32 9 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 112, i32 9 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 116, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 152, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1509, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1519, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1528, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1548, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1560, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1602, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1625, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1667, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1676, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1683, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1703, i32 4 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 944, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 955, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 979, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 988, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1062, i32 5 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1069, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1080, i32 5 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1091, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1127, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1324, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1347, i32 5 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1451, i32 4 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1798, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1812, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1825, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1835, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1841, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1859, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1870, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1878, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1884, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1903, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1910, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.754 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.754, i32 87, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2187, i32 4 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2197, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.777 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.778 = private constant [33 x i8] c"../drivers/scsi/lpfc/lpfc_nvme.c\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 2033, i32 3 }
@llvm.compiler.used = appending global [275 x ptr] [ptr @__lpfc_nvme_ls_abort._entry, ptr @__lpfc_nvme_ls_abort._entry.31, ptr @__lpfc_nvme_ls_abort._entry.34, ptr @__lpfc_nvme_ls_abort._entry_ptr, ptr @__lpfc_nvme_ls_abort._entry_ptr.33, ptr @__lpfc_nvme_ls_abort._entry_ptr.36, ptr @__lpfc_nvme_ls_req._entry, ptr @__lpfc_nvme_ls_req._entry.14, ptr @__lpfc_nvme_ls_req._entry.17, ptr @__lpfc_nvme_ls_req._entry.20, ptr @__lpfc_nvme_ls_req._entry.23, ptr @__lpfc_nvme_ls_req._entry.26, ptr @__lpfc_nvme_ls_req._entry_ptr, ptr @__lpfc_nvme_ls_req._entry_ptr.16, ptr @__lpfc_nvme_ls_req._entry_ptr.19, ptr @__lpfc_nvme_ls_req._entry_ptr.22, ptr @__lpfc_nvme_ls_req._entry_ptr.25, ptr @__lpfc_nvme_ls_req._entry_ptr.28, ptr @__lpfc_nvme_ls_req_cmp._entry, ptr @__lpfc_nvme_ls_req_cmp._entry.9, ptr @__lpfc_nvme_ls_req_cmp._entry_ptr, ptr @__lpfc_nvme_ls_req_cmp._entry_ptr.11, ptr @lpfc_nvme_abort_fcreq_cmpl._entry, ptr @lpfc_nvme_abort_fcreq_cmpl._entry_ptr, ptr @lpfc_nvme_cancel_iocb._entry, ptr @lpfc_nvme_cancel_iocb._entry_ptr, ptr @lpfc_nvme_create_localport._entry, ptr @lpfc_nvme_create_localport._entry_ptr, ptr @lpfc_nvme_create_queue._entry, ptr @lpfc_nvme_create_queue._entry_ptr, ptr @lpfc_nvme_delete_queue._entry, ptr @lpfc_nvme_delete_queue._entry_ptr, ptr @lpfc_nvme_destroy_localport._entry, ptr @lpfc_nvme_destroy_localport._entry.43, ptr @lpfc_nvme_destroy_localport._entry.46, ptr @lpfc_nvme_destroy_localport._entry_ptr, ptr @lpfc_nvme_destroy_localport._entry_ptr.45, ptr @lpfc_nvme_destroy_localport._entry_ptr.48, ptr @lpfc_nvme_fcp_abort._entry, ptr @lpfc_nvme_fcp_abort._entry.185, ptr @lpfc_nvme_fcp_abort._entry.188, ptr @lpfc_nvme_fcp_abort._entry.191, ptr @lpfc_nvme_fcp_abort._entry.194, ptr @lpfc_nvme_fcp_abort._entry.197, ptr @lpfc_nvme_fcp_abort._entry.200, ptr @lpfc_nvme_fcp_abort._entry.204, ptr @lpfc_nvme_fcp_abort._entry.207, ptr @lpfc_nvme_fcp_abort._entry.210, ptr @lpfc_nvme_fcp_abort._entry_ptr, ptr @lpfc_nvme_fcp_abort._entry_ptr.187, ptr @lpfc_nvme_fcp_abort._entry_ptr.190, ptr @lpfc_nvme_fcp_abort._entry_ptr.193, ptr @lpfc_nvme_fcp_abort._entry_ptr.196, ptr @lpfc_nvme_fcp_abort._entry_ptr.199, ptr @lpfc_nvme_fcp_abort._entry_ptr.202, ptr @lpfc_nvme_fcp_abort._entry_ptr.206, ptr @lpfc_nvme_fcp_abort._entry_ptr.209, ptr @lpfc_nvme_fcp_abort._entry_ptr.212, ptr @lpfc_nvme_fcp_io_submit._entry, ptr @lpfc_nvme_fcp_io_submit._entry.123, ptr @lpfc_nvme_fcp_io_submit._entry.126, ptr @lpfc_nvme_fcp_io_submit._entry.129, ptr @lpfc_nvme_fcp_io_submit._entry.132, ptr @lpfc_nvme_fcp_io_submit._entry.135, ptr @lpfc_nvme_fcp_io_submit._entry.138, ptr @lpfc_nvme_fcp_io_submit._entry.141, ptr @lpfc_nvme_fcp_io_submit._entry.145, ptr @lpfc_nvme_fcp_io_submit._entry.148, ptr @lpfc_nvme_fcp_io_submit._entry_ptr, ptr @lpfc_nvme_fcp_io_submit._entry_ptr.125, ptr @lpfc_nvme_fcp_io_submit._entry_ptr.128, ptr @lpfc_nvme_fcp_io_submit._entry_ptr.131, ptr @lpfc_nvme_fcp_io_submit._entry_ptr.134, ptr @lpfc_nvme_fcp_io_submit._entry_ptr.137, ptr @lpfc_nvme_fcp_io_submit._entry_ptr.140, ptr @lpfc_nvme_fcp_io_submit._entry_ptr.143, ptr @lpfc_nvme_fcp_io_submit._entry_ptr.147, ptr @lpfc_nvme_fcp_io_submit._entry_ptr.150, ptr @lpfc_nvme_gen_req._entry, ptr @lpfc_nvme_gen_req._entry.102, ptr @lpfc_nvme_gen_req._entry.99, ptr @lpfc_nvme_gen_req._entry_ptr, ptr @lpfc_nvme_gen_req._entry_ptr.101, ptr @lpfc_nvme_gen_req._entry_ptr.104, ptr @lpfc_nvme_handle_lsreq._entry, ptr @lpfc_nvme_handle_lsreq._entry_ptr, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.153, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.157, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.160, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.163, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.166, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.169, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.172, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.155, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.159, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.162, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.165, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.168, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.171, ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.174, ptr @lpfc_nvme_localport_delete._entry, ptr @lpfc_nvme_localport_delete._entry_ptr, ptr @lpfc_nvme_lport_unreg_wait._entry, ptr @lpfc_nvme_lport_unreg_wait._entry.216, ptr @lpfc_nvme_lport_unreg_wait._entry_ptr, ptr @lpfc_nvme_lport_unreg_wait._entry_ptr.218, ptr @lpfc_nvme_prep_io_dma._entry, ptr @lpfc_nvme_prep_io_dma._entry.177, ptr @lpfc_nvme_prep_io_dma._entry.180, ptr @lpfc_nvme_prep_io_dma._entry_ptr, ptr @lpfc_nvme_prep_io_dma._entry_ptr.179, ptr @lpfc_nvme_prep_io_dma._entry_ptr.182, ptr @lpfc_nvme_register_port._entry, ptr @lpfc_nvme_register_port._entry.63, ptr @lpfc_nvme_register_port._entry.66, ptr @lpfc_nvme_register_port._entry.69, ptr @lpfc_nvme_register_port._entry_ptr, ptr @lpfc_nvme_register_port._entry_ptr.65, ptr @lpfc_nvme_register_port._entry_ptr.68, ptr @lpfc_nvme_register_port._entry_ptr.71, ptr @lpfc_nvme_remoteport_delete._entry, ptr @lpfc_nvme_remoteport_delete._entry.109, ptr @lpfc_nvme_remoteport_delete._entry.112, ptr @lpfc_nvme_remoteport_delete._entry_ptr, ptr @lpfc_nvme_remoteport_delete._entry_ptr.111, ptr @lpfc_nvme_remoteport_delete._entry_ptr.114, ptr @lpfc_nvme_rescan_port._entry, ptr @lpfc_nvme_rescan_port._entry.74, ptr @lpfc_nvme_rescan_port._entry.77, ptr @lpfc_nvme_rescan_port._entry_ptr, ptr @lpfc_nvme_rescan_port._entry_ptr.76, ptr @lpfc_nvme_rescan_port._entry_ptr.79, ptr @lpfc_nvme_unregister_port._entry, ptr @lpfc_nvme_unregister_port._entry.82, ptr @lpfc_nvme_unregister_port._entry.85, ptr @lpfc_nvme_unregister_port._entry_ptr, ptr @lpfc_nvme_unregister_port._entry_ptr.84, ptr @lpfc_nvme_unregister_port._entry_ptr.87, ptr @lpfc_nvme_update_localport._entry, ptr @lpfc_nvme_update_localport._entry.52, ptr @lpfc_nvme_update_localport._entry.55, ptr @lpfc_nvme_update_localport._entry.58, ptr @lpfc_nvme_update_localport._entry_ptr, ptr @lpfc_nvme_update_localport._entry_ptr.54, ptr @lpfc_nvme_update_localport._entry_ptr.57, ptr @lpfc_nvme_update_localport._entry_ptr.60, ptr @lpfc_nvme_wait_for_io_drain._entry, ptr @lpfc_nvme_wait_for_io_drain._entry_ptr, ptr @lpfc_release_nvme_buf._entry, ptr @lpfc_release_nvme_buf._entry_ptr, ptr @lpfc_sli4_nvme_pci_offline_aborted._entry, ptr @lpfc_sli4_nvme_pci_offline_aborted._entry_ptr, ptr @lpfc_sli4_nvme_xri_aborted._entry, ptr @lpfc_sli4_nvme_xri_aborted._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @lpfc_nvme_template, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @init_completion.__key, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.217, ptr @.str.219, ptr @.str.220], section "llvm.metadata"
@0 = internal global [186 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_handle_lsreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_abort_fcreq_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_template to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_create_localport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_destroy_localport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_destroy_localport._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_destroy_localport._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_update_localport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_update_localport._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_update_localport._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_update_localport._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_register_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_register_port._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_register_port._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_register_port._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_rescan_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_rescan_port._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_rescan_port._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_unregister_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_unregister_port._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_unregister_port._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_sli4_nvme_pci_offline_aborted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_sli4_nvme_xri_aborted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_wait_for_io_drain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_cancel_iocb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_gen_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_gen_req._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_gen_req._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_localport_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_remoteport_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_remoteport_delete._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_remoteport_delete._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_create_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_delete_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_io_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_io_submit._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_io_submit._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_io_submit._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_io_submit._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_io_submit._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_io_submit._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_io_submit._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_io_submit._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_io_submit._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_prep_io_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_prep_io_dma._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_prep_io_dma._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_abort._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_abort._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_abort._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_abort._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_abort._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_abort._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_abort._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_abort._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_fcp_abort._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_lport_unreg_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_lport_unreg_wait._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_release_nvme_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_nvme_handle_lsreq(ptr noundef %phba, ptr noundef %axchg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %payload1 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 18
  %0 = ptrtoint ptr %payload1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload1, align 4
  %ndlp = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 3
  %2 = ptrtoint ptr %ndlp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndlp, align 4
  %nrport = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %nrport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nrport, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vport2 = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %vport2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vport2, align 4
  %remoteport4 = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %remoteport4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remoteport4, align 4
  %localport = getelementptr inbounds %struct.lpfc_vport, ptr %7, i32 0, i32 89
  %10 = ptrtoint ptr %localport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %localport, align 8
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 8
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %ls_rsp = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 5
  %size = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 12
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %size, align 2
  %conv = zext i16 %15 to i32
  %call = tail call i32 @nvme_fc_rcv_ls_req(ptr noundef %9, ptr noundef %ls_rsp, ptr noundef %1, i32 noundef %conv) #8
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %16 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pport, align 8
  %tobool13.not = icmp eq ptr %17, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %17, i32 0, i32 51
  %cfg_log_verbose15 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool13.not, ptr %cfg_log_verbose15, ptr %cfg_log_verbose
  %18 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %19 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %21 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %brd_no, align 4
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size, align 2
  %conv20 = zext i16 %24 to i32
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 1
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  %add.ptr21 = getelementptr i32, ptr %1, i32 2
  %29 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr21, align 4
  %add.ptr22 = getelementptr i32, ptr %1, i32 3
  %31 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr22, align 4
  %add.ptr23 = getelementptr i32, ptr %1, i32 4
  %33 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr23, align 4
  %add.ptr24 = getelementptr i32, ptr %1, i32 5
  %35 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr24, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %22, i32 noundef %conv20, i32 noundef %call, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #11
  br label %if.end37

if.else:                                          ; preds = %if.end11
  %37 = ptrtoint ptr %cfg_log_verbose15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cfg_log_verbose15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool26.not = icmp eq i32 %38, 0
  br i1 %tobool26.not, label %if.then27, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %brd_no28 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %39 = ptrtoint ptr %brd_no28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %brd_no28, align 4
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size, align 2
  %conv30 = zext i16 %42 to i32
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %add.ptr31 = getelementptr i32, ptr %1, i32 1
  %45 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr31, align 4
  %add.ptr32 = getelementptr i32, ptr %1, i32 2
  %47 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr32, align 4
  %add.ptr33 = getelementptr i32, ptr %1, i32 3
  %49 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr33, align 4
  %add.ptr34 = getelementptr i32, ptr %1, i32 4
  %51 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr34, align 4
  %add.ptr35 = getelementptr i32, ptr %1, i32 5
  %53 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr35, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str, i32 noundef %40, i32 noundef %conv30, i32 noundef %call, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then27, %if.else.if.end37_crit_edge, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool40.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool40.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %., %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_rcv_ls_req(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dbg_print(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__lpfc_nvme_ls_req_cmp(ptr noundef %phba, ptr nocapture noundef readonly %vport, ptr noundef %cmdwqe, ptr nocapture noundef readonly %wcqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 19
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 18
  %2 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context1, align 8
  %4 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcqe, align 4
  %shr = lshr i32 %5, 8
  %and1 = and i32 %shr, 15
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %6 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg_log_verbose, align 4
  %and2 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
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
  %conv = zext i16 %15 to i32
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlp_DID, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %17, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %sli4_xritag = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 5
  %18 = ptrtoint ptr %sli4_xritag to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sli4_xritag, align 4
  %conv7 = zext i16 %19 to i32
  %parameter = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %20 = ptrtoint ptr %parameter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %parameter, align 4
  %and8 = and i32 %21, 65535
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 20
  %22 = ptrtoint ptr %context3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context3, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %13, i32 noundef %conv, ptr noundef %1, i32 noundef %cond, i32 noundef %conv7, i32 noundef %and1, i32 noundef %and8, ptr noundef %cmdwqe, ptr noundef %1, ptr noundef %23, ptr noundef %3) #11
  br label %do.end30

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.do.end30_crit_edge

if.else.do.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then11:                                        ; preds = %if.else
  %24 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vport, align 8
  %brd_no14 = getelementptr inbounds %struct.lpfc_hba, ptr %25, i32 0, i32 197
  %26 = ptrtoint ptr %brd_no14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brd_no14, align 4
  %vpi15 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %28 = ptrtoint ptr %vpi15 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vpi15, align 4
  %conv16 = zext i16 %29 to i32
  %tobool17.not = icmp eq ptr %3, null
  br i1 %tobool17.not, label %if.then11.cond.end21_crit_edge, label %cond.true18

if.then11.cond.end21_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.true18:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %nlp_DID19 = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %nlp_DID19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nlp_DID19, align 8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true18, %if.then11.cond.end21_crit_edge
  %cond22 = phi i32 [ %31, %cond.true18 ], [ 0, %if.then11.cond.end21_crit_edge ]
  %sli4_xritag23 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 5
  %32 = ptrtoint ptr %sli4_xritag23 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sli4_xritag23, align 4
  %conv24 = zext i16 %33 to i32
  %parameter25 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %34 = ptrtoint ptr %parameter25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %parameter25, align 4
  %and26 = and i32 %35, 65535
  %context327 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 20
  %36 = ptrtoint ptr %context327 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %context327, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %25, ptr noundef nonnull @.str.5, i32 noundef %27, i32 noundef %conv16, ptr noundef %1, i32 noundef %cond22, i32 noundef %conv24, i32 noundef %and1, i32 noundef %and26, ptr noundef %cmdwqe, ptr noundef %1, ptr noundef %37, ptr noundef %3) #8
  br label %do.end30

do.end30:                                         ; preds = %cond.end21, %if.else.do.end30_crit_edge, %cond.end
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 304
  %38 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool31.not = icmp eq i16 %39, 0
  br i1 %tobool31.not, label %do.end30.if.end36_crit_edge, label %if.then32

do.end30.if.end36_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then32:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  %sli4_xritag33 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 5
  %40 = ptrtoint ptr %sli4_xritag33 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sli4_xritag33, align 4
  %conv34 = trunc i32 %and1 to i16
  %parameter35 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %42 = ptrtoint ptr %parameter35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %parameter35, align 4
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %phba, ptr noundef nonnull @.str.7, i16 noundef zeroext %41, i16 noundef zeroext %conv34, i32 noundef %43) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %do.end30.if.end36_crit_edge
  %context337 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 20
  %44 = ptrtoint ptr %context337 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %context337, align 8
  %tobool38.not = icmp eq ptr %45, null
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %47, i32 noundef %49) #8
  tail call void @kfree(ptr noundef nonnull %45) #8
  %50 = ptrtoint ptr %context337 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %context337, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %done = getelementptr inbounds %struct.nvmefc_ls_req, ptr %1, i32 0, i32 8
  %51 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %done, align 8
  %tobool43.not = icmp eq ptr %52, null
  br i1 %tobool43.not, label %do.body47, label %if.then44

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %52(ptr noundef %1, i32 noundef %and1) #8
  br label %if.end94

do.body47:                                        ; preds = %if.end42
  %53 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %54) #8
  %55 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vport, align 8
  %pcidev59 = getelementptr inbounds %struct.lpfc_hba, ptr %56, i32 0, i32 165
  %57 = ptrtoint ptr %pcidev59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcidev59, align 4
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %brd_no62 = getelementptr inbounds %struct.lpfc_hba, ptr %56, i32 0, i32 197
  %59 = ptrtoint ptr %brd_no62 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %brd_no62, align 4
  %vpi63 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %61 = ptrtoint ptr %vpi63 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vpi63, align 4
  %conv64 = zext i16 %62 to i32
  %tobool65.not = icmp eq ptr %3, null
  br i1 %tobool65.not, label %do.body47.cond.end69_crit_edge, label %cond.true66

do.body47.cond.end69_crit_edge:                   ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end69

cond.true66:                                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %nlp_DID67 = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 6
  %63 = ptrtoint ptr %nlp_DID67 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nlp_DID67, align 8
  br label %cond.end69

cond.end69:                                       ; preds = %cond.true66, %do.body47.cond.end69_crit_edge
  %cond70 = phi i32 [ %64, %cond.true66 ], [ 0, %do.body47.cond.end69_crit_edge ]
  %sli4_xritag71 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 5
  %65 = ptrtoint ptr %sli4_xritag71 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %sli4_xritag71, align 4
  %conv72 = zext i16 %66 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev60, ptr noundef nonnull @.str.10, i32 noundef %60, i32 noundef %conv64, ptr noundef %1, i32 noundef %cond70, i32 noundef %conv72, i32 noundef %and1) #11
  br label %if.end94

if.end94:                                         ; preds = %cond.end69, %if.then44
  %tobool95.not = icmp eq ptr %3, null
  br i1 %tobool95.not, label %if.end94.if.end98_crit_edge, label %if.then96

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @lpfc_nlp_put(ptr noundef nonnull %3) #8
  %67 = ptrtoint ptr %context1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %context1, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end94.if.end98_crit_edge
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %cmdwqe) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_debugfs_nvme_trc(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_mbuf_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dmp_dbg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_nlp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_release_iocbq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__lpfc_nvme_ls_req(ptr noundef %vport, ptr noundef %ndlp, ptr noundef %pnvme_lsreq, ptr noundef %gen_req_cmp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ndlp, null
  br i1 %tobool.not, label %do.body, label %if.end19

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #8
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %4 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %6 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %8 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vpi, align 4
  %conv7 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %7, i32 noundef %conv7, ptr noundef null) #11
  br label %cleanup

if.end19:                                         ; preds = %entry
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %10 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nlp_type, align 8
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %12 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nlp_state, align 2
  %conv20 = zext i16 %11 to i32
  %and21 = and i32 %conv20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %13)
  %cmp24.not = icmp eq i16 %13, 7
  %or.cond = select i1 %tobool22.not, i1 true, i1 %cmp24.not
  br i1 %or.cond, label %lor.lhs.false26, label %if.end19.do.body35_crit_edge

if.end19.do.body35_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

lor.lhs.false26:                                  ; preds = %if.end19
  %and28 = and i32 %conv20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %13)
  %cmp32.not = icmp eq i16 %13, 6
  %or.cond398 = select i1 %tobool29.not, i1 true, i1 %cmp32.not
  br i1 %or.cond398, label %if.end73, label %lor.lhs.false26.do.body35_crit_edge

lor.lhs.false26.do.body35_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

do.body35:                                        ; preds = %lor.lhs.false26.do.body35_crit_edge, %if.end19.do.body35_crit_edge
  %14 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %15) #8
  %16 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vport, align 8
  %pcidev49 = getelementptr inbounds %struct.lpfc_hba, ptr %17, i32 0, i32 165
  %18 = ptrtoint ptr %pcidev49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev49, align 4
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %brd_no52 = getelementptr inbounds %struct.lpfc_hba, ptr %17, i32 0, i32 197
  %20 = ptrtoint ptr %brd_no52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brd_no52, align 4
  %vpi53 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %22 = ptrtoint ptr %vpi53 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vpi53, align 4
  %conv54 = zext i16 %23 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %24 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nlp_DID, align 8
  %conv56 = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev50, ptr noundef nonnull @.str.15, i32 noundef %21, i32 noundef %conv54, i32 noundef %25, i32 noundef %conv20, i32 noundef %conv56) #11
  br label %cleanup

if.end73:                                         ; preds = %lor.lhs.false26
  %26 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vport, align 8
  %nvmels_wq = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 25, i32 37
  %28 = ptrtoint ptr %nvmels_wq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nvmels_wq, align 4
  %tobool75.not = icmp eq ptr %29, null
  br i1 %tobool75.not, label %if.end73.cleanup_crit_edge, label %if.end77

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end77:                                         ; preds = %if.end73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 20) #12
  %tobool78.not = icmp eq ptr %call7.i, null
  %31 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vport, align 8
  br i1 %tobool78.not, label %do.body80, label %if.end115

do.body80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpfc_dmp_dbg(ptr noundef %32) #8
  %33 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vport, align 8
  %pcidev94 = getelementptr inbounds %struct.lpfc_hba, ptr %34, i32 0, i32 165
  %35 = ptrtoint ptr %pcidev94 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcidev94, align 4
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %brd_no97 = getelementptr inbounds %struct.lpfc_hba, ptr %34, i32 0, i32 197
  %37 = ptrtoint ptr %brd_no97 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %brd_no97, align 4
  %vpi98 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %39 = ptrtoint ptr %vpi98 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vpi98, align 4
  %conv99 = zext i16 %40 to i32
  %nlp_DID100 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %41 = ptrtoint ptr %nlp_DID100 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nlp_DID100, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev95, ptr noundef nonnull @.str.18, i32 noundef %38, i32 noundef %conv99, i32 noundef %42) #11
  br label %cleanup

if.end115:                                        ; preds = %if.end77
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 2
  %call117 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %32, i32 noundef 256, ptr noundef %phys) #8
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 1
  %43 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call117, ptr %virt, align 8
  %tobool119.not = icmp eq ptr %call117, null
  br i1 %tobool119.not, label %do.body121, label %if.end156

do.body121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %45) #8
  %46 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vport, align 8
  %pcidev135 = getelementptr inbounds %struct.lpfc_hba, ptr %47, i32 0, i32 165
  %48 = ptrtoint ptr %pcidev135 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcidev135, align 4
  %dev136 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %brd_no138 = getelementptr inbounds %struct.lpfc_hba, ptr %47, i32 0, i32 197
  %50 = ptrtoint ptr %brd_no138 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %brd_no138, align 4
  %vpi139 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %52 = ptrtoint ptr %vpi139 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vpi139, align 4
  %conv140 = zext i16 %53 to i32
  %nlp_DID141 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %54 = ptrtoint ptr %nlp_DID141 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nlp_DID141, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev136, ptr noundef nonnull @.str.21, i32 noundef %51, i32 noundef %conv140, i32 noundef %55) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end156:                                        ; preds = %if.end115
  %56 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i, ptr %prev.i, align 4
  %rqstdma = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 1
  %addrHigh = getelementptr inbounds %struct.ulp_bde64, ptr %call117, i32 0, i32 2
  %58 = ptrtoint ptr %addrHigh to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %addrHigh, align 4
  %59 = ptrtoint ptr %rqstdma to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rqstdma, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %addrLow = getelementptr inbounds %struct.ulp_bde64, ptr %call117, i32 0, i32 1
  %62 = ptrtoint ptr %addrLow to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %addrLow, align 4
  %63 = ptrtoint ptr %call117 to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load = load i32, ptr %call117, align 4
  %bf.clear = and i32 %bf.load, 16777215
  store i32 %bf.clear, ptr %call117, align 4
  %rqstlen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 2
  %64 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rqstlen, align 8
  %bf.value = and i32 %65, 16777215
  %66 = tail call i32 @llvm.bswap.i32(i32 %bf.value)
  %67 = ptrtoint ptr %call117 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %call117, align 4
  %incdec.ptr = getelementptr %struct.ulp_bde64, ptr %call117, i32 1
  %rspdma = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 4
  %addrHigh175 = getelementptr %struct.ulp_bde64, ptr %call117, i32 1, i32 2
  %68 = ptrtoint ptr %addrHigh175 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %addrHigh175, align 4
  %69 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rspdma, align 8
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %addrLow180 = getelementptr %struct.ulp_bde64, ptr %call117, i32 1, i32 1
  %72 = ptrtoint ptr %addrLow180 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %addrLow180, align 4
  %73 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load182 = load i32, ptr %incdec.ptr, align 4
  %bf.clear183 = and i32 %bf.load182, 16777215
  %bf.set184 = or i32 %bf.clear183, 134217728
  store i32 %bf.set184, ptr %incdec.ptr, align 4
  %rsplen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 5
  %74 = ptrtoint ptr %rsplen to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rsplen, align 4
  %bf.value187 = and i32 %75, 16777215
  %bf.set189 = or i32 %bf.value187, 134217728
  %76 = tail call i32 @llvm.bswap.i32(i32 %bf.set189)
  %77 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %incdec.ptr, align 4
  %cfg_log_verbose193 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %78 = ptrtoint ptr %cfg_log_verbose193 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cfg_log_verbose193, align 4
  %and194 = and i32 %79, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.else212, label %do.end199

do.end199:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vport, align 8
  %pcidev201 = getelementptr inbounds %struct.lpfc_hba, ptr %81, i32 0, i32 165
  %82 = ptrtoint ptr %pcidev201 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pcidev201, align 4
  %dev202 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %brd_no204 = getelementptr inbounds %struct.lpfc_hba, ptr %81, i32 0, i32 197
  %84 = ptrtoint ptr %brd_no204 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %brd_no204, align 4
  %vpi205 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %86 = ptrtoint ptr %vpi205 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %vpi205, align 4
  %conv206 = zext i16 %87 to i32
  %nlp_DID207 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %88 = ptrtoint ptr %nlp_DID207 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nlp_DID207, align 8
  %90 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rqstlen, align 8
  %92 = ptrtoint ptr %rsplen to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rsplen, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev202, ptr noundef nonnull @.str.24, i32 noundef %85, i32 noundef %conv206, i32 noundef %89, ptr noundef %pnvme_lsreq, i32 noundef %91, i32 noundef %93, ptr noundef %rqstdma, ptr noundef %rspdma) #11
  br label %do.end229

if.else212:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool214.not = icmp eq i32 %79, 0
  br i1 %tobool214.not, label %if.then215, label %if.else212.do.end229_crit_edge

if.else212.do.end229_crit_edge:                   ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end229

if.then215:                                       ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vport, align 8
  %brd_no218 = getelementptr inbounds %struct.lpfc_hba, ptr %95, i32 0, i32 197
  %96 = ptrtoint ptr %brd_no218 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %brd_no218, align 4
  %vpi219 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %98 = ptrtoint ptr %vpi219 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %vpi219, align 4
  %conv220 = zext i16 %99 to i32
  %nlp_DID221 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %100 = ptrtoint ptr %nlp_DID221 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nlp_DID221, align 8
  %102 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rqstlen, align 8
  %104 = ptrtoint ptr %rsplen to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rsplen, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %95, ptr noundef nonnull @.str.24, i32 noundef %97, i32 noundef %conv220, i32 noundef %101, ptr noundef %pnvme_lsreq, i32 noundef %103, i32 noundef %105, ptr noundef %rqstdma, ptr noundef %rspdma) #8
  br label %do.end229

do.end229:                                        ; preds = %if.then215, %if.else212.do.end229_crit_edge, %do.end199
  %timeout = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 6
  %106 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %timeout, align 8
  %108 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %vport, align 8
  %call.i = tail call ptr @lpfc_sli_get_iocbq(ptr noundef %109) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end229.do.body234_crit_edge, label %if.end.i

do.end229.do.body234_crit_edge:                   ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body234

if.end.i:                                         ; preds = %do.end229
  %wqe2.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10
  %110 = call ptr @memset(ptr %wqe2.i, i32 0, i32 64)
  %context3.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 20
  %111 = ptrtoint ptr %context3.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call7.i, ptr %context3.i, align 8
  %iocb_flag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 15
  %112 = ptrtoint ptr %iocb_flag.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %iocb_flag.i, align 4
  %or.i = or i32 %113, 4194304
  store i32 %or.i, ptr %iocb_flag.i, align 4
  %call3.i = tail call ptr @lpfc_nlp_get(ptr noundef nonnull %ndlp) #8
  %context1.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 18
  %114 = ptrtoint ptr %context1.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call3.i, ptr %context1.i, align 8
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %109, i32 0, i32 165
  %115 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.96) #11
  br label %do.body234.sink.split

if.end6.i:                                        ; preds = %if.end.i
  %context2.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 19
  %117 = ptrtoint ptr %context2.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %pnvme_lsreq, ptr %context2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool7.not.i = icmp eq i32 %107, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end6.i.if.end9.i_crit_edge

if.end6.i.if.end9.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %fc_ratov.i = getelementptr inbounds %struct.lpfc_hba, ptr %109, i32 0, i32 58
  %118 = ptrtoint ptr %fc_ratov.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fc_ratov.i, align 8
  %mul.i = mul i32 %119, 3
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end6.i.if.end9.i_crit_edge
  %tmo.addr.0.i = phi i32 [ %107, %if.end6.i.if.end9.i_crit_edge ], [ %mul.i, %if.then8.i ]
  %120 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %virt, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %123)
  %cmp13.not.i = icmp ult i32 %123, 16777216
  br i1 %cmp13.not.i, label %if.end15.i, label %if.end9.i.for.end.i_crit_edge

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1.i = getelementptr %struct.ulp_bde64, ptr %121, i32 1
  %124 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %125)
  %cmp13.not.1.i = icmp ult i32 %125, 16777216
  %add.1.i = select i1 %cmp13.not.1.i, i32 %125, i32 0
  %spec.select.i = add nuw nsw i32 %add.1.i, %123
  br label %for.end.i

for.end.i:                                        ; preds = %if.end15.i, %if.end9.i.for.end.i_crit_edge
  %xmit_len.0.lcssa.i = phi i32 [ 0, %if.end9.i.for.end.i_crit_edge ], [ %spec.select.i, %if.end15.i ]
  %first_len.0.lcssa.i = phi i32 [ 0, %if.end9.i.for.end.i_crit_edge ], [ %123, %if.end15.i ]
  %rsvd2.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 12
  %126 = ptrtoint ptr %rsvd2.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 2, ptr %rsvd2.i, align 8
  %hba_wqidx.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 6
  %127 = ptrtoint ptr %hba_wqidx.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %hba_wqidx.i, align 2
  %128 = ptrtoint ptr %wqe2.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %first_len.0.lcssa.i, ptr %wqe2.i, align 4
  %addrLow.i = getelementptr inbounds %struct.ulp_bde64, ptr %121, i32 0, i32 1
  %129 = ptrtoint ptr %addrLow.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %addrLow.i, align 4
  %addrLow32.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10, i32 0, i32 1
  %131 = ptrtoint ptr %addrLow32.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %addrLow32.i, align 4
  %addrHigh.i = getelementptr inbounds %struct.ulp_bde64, ptr %121, i32 0, i32 2
  %132 = ptrtoint ptr %addrHigh.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %addrHigh.i, align 4
  %addrHigh35.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10, i32 0, i32 2
  %134 = ptrtoint ptr %addrHigh35.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %addrHigh35.i, align 4
  %request_payload_len.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %135 = ptrtoint ptr %request_payload_len.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %first_len.0.lcssa.i, ptr %request_payload_len.i, align 4
  %wge_ctl.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10, i32 0, i32 5
  %136 = ptrtoint ptr %wge_ctl.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %wge_ctl.i, align 4
  %and41.i = and i32 %137, 243
  %or60.i = or i32 %and41.i, 841482252
  store i32 %or60.i, ptr %wge_ctl.i, align 4
  %rpi_ids.i = getelementptr inbounds %struct.lpfc_hba, ptr %109, i32 0, i32 25, i32 88
  %138 = ptrtoint ptr %rpi_ids.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rpi_ids.i, align 4
  %nlp_rpi.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %140 = ptrtoint ptr %nlp_rpi.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %nlp_rpi.i, align 4
  %idxprom.i = zext i16 %141 to i32
  %arrayidx63.i = getelementptr i16, ptr %139, i32 %idxprom.i
  %142 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx63.i, align 2
  %conv64.i = zext i16 %143 to i32
  %shl.i = shl nuw i32 %conv64.i, 16
  %wqe_com.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10, i32 0, i32 6
  %sli4_xritag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 5
  %144 = ptrtoint ptr %sli4_xritag.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %sli4_xritag.i, align 4
  %conv70.i = zext i16 %145 to i32
  %or76.i = or i32 %shl.i, %conv70.i
  %146 = ptrtoint ptr %wqe_com.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or76.i, ptr %wqe_com.i, align 4
  %shl80.i = shl i32 %tmo.addr.0.i, 24
  %word7.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10, i32 0, i32 7
  %147 = ptrtoint ptr %word7.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %word7.i, align 4
  %and82.i = and i32 %148, 16253171
  %or83.i = or i32 %and82.i, %shl80.i
  %or95.i = or i32 %or83.i, 180736
  store i32 %or95.i, ptr %word7.i, align 4
  %iotag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 3
  %149 = ptrtoint ptr %iotag.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %iotag.i, align 8
  %conv104.i = zext i16 %150 to i32
  %abort_tag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10, i32 0, i32 8
  %151 = ptrtoint ptr %abort_tag.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv104.i, ptr %abort_tag.i, align 4
  %word9.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10, i32 0, i32 9
  %152 = ptrtoint ptr %word9.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %word9.i, align 4
  %and111.i = and i32 %153, -65536
  %or112.i = or i32 %and111.i, %conv104.i
  store i32 %or112.i, ptr %word9.i, align 4
  %word10.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10, i32 0, i32 10
  %154 = ptrtoint ptr %word10.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %word10.i, align 4
  %or129.i = and i32 %155, -25488
  %and134.i = or i32 %or129.i, 25088
  store i32 %and134.i, ptr %word10.i, align 4
  %word11.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 10, i32 0, i32 11
  %156 = ptrtoint ptr %word11.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %word11.i, align 4
  %or146.i = and i32 %157, 65520
  %or152.i = or i32 %or146.i, -65528
  store i32 %or152.i, ptr %word11.i, align 4
  %wqe_cmpl.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 27
  %158 = ptrtoint ptr %wqe_cmpl.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %gen_req_cmp, ptr %wqe_cmpl.i, align 4
  %iocb_cmpl.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 26
  %159 = ptrtoint ptr %iocb_cmpl.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %iocb_cmpl.i, align 8
  %add155.i = add i32 %tmo.addr.0.i, 16
  %drvrTimeout.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 16
  %160 = ptrtoint ptr %drvrTimeout.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %add155.i, ptr %drvrTimeout.i, align 8
  %vport156.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 17
  %161 = ptrtoint ptr %vport156.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %vport, ptr %vport156.i, align 4
  %retry157.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 14
  %162 = ptrtoint ptr %retry157.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %retry157.i, align 2
  %nvmeio_trc_on.i = getelementptr inbounds %struct.lpfc_hba, ptr %109, i32 0, i32 304
  %163 = ptrtoint ptr %nvmeio_trc_on.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %nvmeio_trc_on.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool158.not.i = icmp eq i16 %164, 0
  br i1 %tobool158.not.i, label %for.end.i.if.end162.i_crit_edge, label %if.then159.i

for.end.i.if.end162.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162.i

if.then159.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %nlp_DID.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %165 = ptrtoint ptr %nlp_DID.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %nlp_DID.i, align 8
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %109, ptr noundef nonnull @.str.98, i16 noundef zeroext %145, i16 noundef zeroext %150, i32 noundef %166) #8
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.then159.i, %for.end.i.if.end162.i_crit_edge
  %hdwq.i = getelementptr inbounds %struct.lpfc_hba, ptr %109, i32 0, i32 25, i32 27
  %167 = ptrtoint ptr %hdwq.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hdwq.i, align 8
  %call165.i = tail call i32 @lpfc_sli4_issue_wqe(ptr noundef %109, ptr noundef %168, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165.i)
  %tobool166.not.i = icmp eq i32 %call165.i, 0
  br i1 %tobool166.not.i, label %do.body205.i, label %do.body168.i

do.body168.i:                                     ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #10
  %169 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %170) #8
  %171 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %vport, align 8
  %pcidev180.i = getelementptr inbounds %struct.lpfc_hba, ptr %172, i32 0, i32 165
  %173 = ptrtoint ptr %pcidev180.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pcidev180.i, align 4
  %dev181.i = getelementptr inbounds %struct.pci_dev, ptr %174, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %172, i32 0, i32 197
  %175 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %brd_no.i, align 4
  %vpi.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %177 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %vpi.i, align 4
  %conv183.i = zext i16 %178 to i32
  %nlp_DID184.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %179 = ptrtoint ptr %nlp_DID184.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %nlp_DID184.i, align 8
  %181 = ptrtoint ptr %iotag.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %iotag.i, align 8
  %conv186.i = zext i16 %182 to i32
  %port_state.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %183 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %port_state.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev181.i, ptr noundef nonnull @.str.100, i32 noundef %176, i32 noundef %conv183.i, i32 noundef %180, i32 noundef %conv186.i, i32 noundef %184, i32 noundef %call165.i) #11
  %call203.i = tail call i32 @lpfc_nlp_put(ptr noundef nonnull %ndlp) #8
  br label %do.body234.sink.split

do.body205.i:                                     ; preds = %if.end162.i
  %185 = ptrtoint ptr %cfg_log_verbose193 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %cfg_log_verbose193, align 4
  %and207.i = and i32 %186, 2097153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207.i)
  %tobool208.not.i = icmp eq i32 %and207.i, 0
  br i1 %tobool208.not.i, label %if.else224.i, label %do.end212.i

do.end212.i:                                      ; preds = %do.body205.i
  call void @__sanitizer_cov_trace_pc() #10
  %187 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %vport, align 8
  %pcidev214.i = getelementptr inbounds %struct.lpfc_hba, ptr %188, i32 0, i32 165
  %189 = ptrtoint ptr %pcidev214.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pcidev214.i, align 4
  %dev215.i = getelementptr inbounds %struct.pci_dev, ptr %190, i32 0, i32 44
  %brd_no217.i = getelementptr inbounds %struct.lpfc_hba, ptr %188, i32 0, i32 197
  %191 = ptrtoint ptr %brd_no217.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %brd_no217.i, align 4
  %vpi218.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %193 = ptrtoint ptr %vpi218.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %vpi218.i, align 4
  %conv219.i = zext i16 %194 to i32
  %nlp_DID220.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %195 = ptrtoint ptr %nlp_DID220.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %nlp_DID220.i, align 8
  %197 = ptrtoint ptr %sli4_xritag.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %sli4_xritag.i, align 4
  %conv222.i = zext i16 %198 to i32
  %port_state223.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %199 = ptrtoint ptr %port_state223.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %port_state223.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev215.i, ptr noundef nonnull @.str.103, i32 noundef %192, i32 noundef %conv219.i, i32 noundef %196, i32 noundef %conv222.i, i32 noundef %200, ptr noundef nonnull %call.i, ptr noundef %pnvme_lsreq, ptr noundef nonnull %call7.i, i32 noundef %xmit_len.0.lcssa.i, i32 noundef %first_len.0.lcssa.i) #11
  br label %cleanup

if.else224.i:                                     ; preds = %do.body205.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool226.not.i = icmp eq i32 %186, 0
  br i1 %tobool226.not.i, label %if.then227.i, label %if.else224.i.cleanup_crit_edge

if.else224.i.cleanup_crit_edge:                   ; preds = %if.else224.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then227.i:                                     ; preds = %if.else224.i
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %vport, align 8
  %brd_no230.i = getelementptr inbounds %struct.lpfc_hba, ptr %202, i32 0, i32 197
  %203 = ptrtoint ptr %brd_no230.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %brd_no230.i, align 4
  %vpi231.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %205 = ptrtoint ptr %vpi231.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %vpi231.i, align 4
  %conv232.i = zext i16 %206 to i32
  %nlp_DID233.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %207 = ptrtoint ptr %nlp_DID233.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %nlp_DID233.i, align 8
  %209 = ptrtoint ptr %sli4_xritag.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %sli4_xritag.i, align 4
  %conv235.i = zext i16 %210 to i32
  %port_state236.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %211 = ptrtoint ptr %port_state236.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %port_state236.i, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %202, ptr noundef nonnull @.str.103, i32 noundef %204, i32 noundef %conv232.i, i32 noundef %208, i32 noundef %conv235.i, i32 noundef %212, ptr noundef nonnull %call.i, ptr noundef %pnvme_lsreq, ptr noundef nonnull %call7.i, i32 noundef %xmit_len.0.lcssa.i, i32 noundef %first_len.0.lcssa.i) #8
  br label %cleanup

do.body234.sink.split:                            ; preds = %do.body168.i, %do.end.i
  tail call void @lpfc_sli_release_iocbq(ptr noundef %109, ptr noundef nonnull %call.i) #8
  br label %do.body234

do.body234:                                       ; preds = %do.body234.sink.split, %do.end229.do.body234_crit_edge
  %213 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %214) #8
  %215 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %vport, align 8
  %pcidev248 = getelementptr inbounds %struct.lpfc_hba, ptr %216, i32 0, i32 165
  %217 = ptrtoint ptr %pcidev248 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pcidev248, align 4
  %dev249 = getelementptr inbounds %struct.pci_dev, ptr %218, i32 0, i32 44
  %brd_no251 = getelementptr inbounds %struct.lpfc_hba, ptr %216, i32 0, i32 197
  %219 = ptrtoint ptr %brd_no251 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %brd_no251, align 4
  %vpi252 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %221 = ptrtoint ptr %vpi252 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %vpi252, align 4
  %conv253 = zext i16 %222 to i32
  %nlp_DID254 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %223 = ptrtoint ptr %nlp_DID254 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %nlp_DID254, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev249, ptr noundef nonnull @.str.27, i32 noundef %220, i32 noundef %conv253, ptr noundef %pnvme_lsreq, i32 noundef 1, i32 noundef %224) #11
  %225 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %vport, align 8
  %227 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %virt, align 8
  %229 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %226, ptr noundef %228, i32 noundef %230) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body234, %if.then227.i, %if.else224.i.cleanup_crit_edge, %do.end212.i, %do.body121, %do.body80, %if.end73.cleanup_crit_edge, %do.body35, %do.body
  %retval.0 = phi i32 [ -19, %do.body35 ], [ -5, %do.body234 ], [ -12, %do.body121 ], [ -12, %do.body80 ], [ -19, %do.body ], [ -12, %if.end73.cleanup_crit_edge ], [ 0, %if.else224.i.cleanup_crit_edge ], [ 0, %if.then227.i ], [ 0, %do.end212.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_mbuf_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__lpfc_nvme_ls_abort(ptr nocapture noundef readonly %vport, ptr noundef readnone %ndlp, ptr noundef %pnvme_lsreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %tobool.not = icmp eq ptr %ndlp, null
  br i1 %tobool.not, label %do.body, label %do.body29

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #8
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %2 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vpi, align 4
  %conv9 = zext i16 %3 to i32
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vport, align 8
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 197
  %6 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brd_no, align 4
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef %conv9, ptr noundef null, i32 noundef 0) #11
  br label %cleanup

do.body29:                                        ; preds = %entry
  %cfg_log_verbose30 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %10 = ptrtoint ptr %cfg_log_verbose30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg_log_verbose30, align 4
  %and31 = and i32 %11, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else44, label %do.end36

do.end36:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev38 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %12 = ptrtoint ptr %pcidev38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcidev38, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %brd_no41 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %14 = ptrtoint ptr %brd_no41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brd_no41, align 4
  %vpi42 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %16 = ptrtoint ptr %vpi42 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vpi42, align 4
  %conv43 = zext i16 %17 to i32
  %rqstlen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 2
  %18 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rqstlen, align 8
  %rsplen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 5
  %20 = ptrtoint ptr %rsplen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rsplen, align 4
  %rqstdma = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 1
  %rspdma = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev39, ptr noundef nonnull @.str.32, i32 noundef %15, i32 noundef %conv43, ptr noundef %pnvme_lsreq, i32 noundef %19, i32 noundef %21, ptr noundef %rqstdma, ptr noundef %rspdma) #11
  br label %do.end60

if.else44:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool46.not = icmp eq i32 %11, 0
  br i1 %tobool46.not, label %if.then47, label %if.else44.do.end60_crit_edge

if.else44.do.end60_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

if.then47:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  %brd_no50 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %22 = ptrtoint ptr %brd_no50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brd_no50, align 4
  %vpi51 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %24 = ptrtoint ptr %vpi51 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vpi51, align 4
  %conv52 = zext i16 %25 to i32
  %rqstlen53 = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 2
  %26 = ptrtoint ptr %rqstlen53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rqstlen53, align 8
  %rsplen54 = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 5
  %28 = ptrtoint ptr %rsplen54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rsplen54, align 4
  %rqstdma55 = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 1
  %rspdma56 = getelementptr inbounds %struct.nvmefc_ls_req, ptr %pnvme_lsreq, i32 0, i32 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %23, i32 noundef %conv52, ptr noundef %pnvme_lsreq, i32 noundef %27, i32 noundef %29, ptr noundef %rqstdma55, ptr noundef %rspdma56) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then47, %if.else44.do.end60_crit_edge, %do.end36
  %nvmels_wq = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 37
  %30 = ptrtoint ptr %nvmels_wq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nvmels_wq, align 4
  %pring61 = getelementptr inbounds %struct.lpfc_queue, ptr %31, i32 0, i32 25
  %32 = ptrtoint ptr %pring61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pring61, align 8
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 221
  tail call void @_raw_spin_lock_irq(ptr noundef %hbalock) #8
  %ring_lock = getelementptr inbounds %struct.lpfc_sli_ring, ptr %33, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %ring_lock) #8
  %txcmplq = getelementptr inbounds %struct.lpfc_sli_ring, ptr %33, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end60
  %wqe.0.in = phi ptr [ %txcmplq, %do.end60 ], [ %wqe.0, %for.body.for.cond_crit_edge ]
  %34 = ptrtoint ptr %wqe.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %wqe.0 = load ptr, ptr %wqe.0.in, align 4
  %cmp68.not = icmp eq ptr %wqe.0, %txcmplq
  br i1 %cmp68.not, label %if.end82.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %wqe.0, i32 0, i32 19
  %35 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %context2, align 4
  %cmp70 = icmp eq ptr %36, %pnvme_lsreq
  br i1 %cmp70, label %if.then72, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then72:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %iocb_flag = getelementptr inbounds %struct.lpfc_iocbq, ptr %wqe.0, i32 0, i32 15
  %37 = ptrtoint ptr %iocb_flag to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iocb_flag, align 4
  %or = or i32 %38, 8
  store i32 %or, ptr %iocb_flag, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ring_lock) #8
  %call = tail call i32 @lpfc_sli_issue_abort_iotag(ptr noundef %1, ptr noundef %33, ptr noundef %wqe.0, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #8
  br label %cleanup

if.end82.critedge:                                ; preds = %for.cond
  tail call void @_raw_spin_unlock(ptr noundef %ring_lock) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #8
  %39 = ptrtoint ptr %cfg_log_verbose30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cfg_log_verbose30, align 4
  %and89 = and i32 %40, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.else102, label %do.end94

do.end94:                                         ; preds = %if.end82.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vport, align 8
  %pcidev96 = getelementptr inbounds %struct.lpfc_hba, ptr %42, i32 0, i32 165
  %43 = ptrtoint ptr %pcidev96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcidev96, align 4
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %brd_no99 = getelementptr inbounds %struct.lpfc_hba, ptr %42, i32 0, i32 197
  %45 = ptrtoint ptr %brd_no99 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %brd_no99, align 4
  %vpi100 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %47 = ptrtoint ptr %vpi100 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vpi100, align 4
  %conv101 = zext i16 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev97, ptr noundef nonnull @.str.35, i32 noundef %46, i32 noundef %conv101, ptr noundef %pnvme_lsreq) #11
  br label %cleanup

if.else102:                                       ; preds = %if.end82.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool104.not = icmp eq i32 %40, 0
  br i1 %tobool104.not, label %if.then105, label %if.else102.cleanup_crit_edge

if.else102.cleanup_crit_edge:                     ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then105:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vport, align 8
  %brd_no108 = getelementptr inbounds %struct.lpfc_hba, ptr %50, i32 0, i32 197
  %51 = ptrtoint ptr %brd_no108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %brd_no108, align 4
  %vpi109 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %53 = ptrtoint ptr %vpi109 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vpi109, align 4
  %conv110 = zext i16 %54 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %50, ptr noundef nonnull @.str.35, i32 noundef %52, i32 noundef %conv110, ptr noundef %pnvme_lsreq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.else102.cleanup_crit_edge, %do.end94, %if.then72, %do.body
  %retval.0 = phi i32 [ 0, %if.then72 ], [ -22, %do.body ], [ -22, %if.else102.cleanup_crit_edge ], [ -22, %if.then105 ], [ -22, %do.end94 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli_issue_abort_iotag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvme_abort_fcreq_cmpl(ptr noundef %phba, ptr noundef %cmdiocb, ptr nocapture noundef readonly %abts_cmpl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %0 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pport, align 8
  %tobool.not = icmp eq ptr %1, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %cfg_log_verbose2 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool.not, ptr %cfg_log_verbose2, ptr %cfg_log_verbose
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %3 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %5 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %brd_no, align 4
  %iocb = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 11
  %abortContextTag = getelementptr inbounds %struct.AC_XRI, ptr %iocb, i32 0, i32 3
  %7 = ptrtoint ptr %abortContextTag to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %abortContextTag, align 4
  %conv = zext i16 %8 to i32
  %abortIoTag = getelementptr inbounds %struct.AC_XRI, ptr %iocb, i32 0, i32 4
  %9 = ptrtoint ptr %abortIoTag to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %abortIoTag, align 2
  %conv7 = zext i16 %10 to i32
  %iotag = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 3
  %11 = ptrtoint ptr %iotag to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %iotag, align 8
  %conv8 = zext i16 %12 to i32
  %13 = ptrtoint ptr %abts_cmpl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %abts_cmpl, align 4
  %shr = lshr i32 %14, 16
  %shr11 = lshr i32 %14, 8
  %and12 = and i32 %shr11, 255
  %and15 = and i32 %14, 255
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %6, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %shr, i32 noundef %and12, i32 noundef %and15) #11
  br label %if.end39

if.else:                                          ; preds = %entry
  %15 = ptrtoint ptr %cfg_log_verbose2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg_log_verbose2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %brd_no19 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %17 = ptrtoint ptr %brd_no19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brd_no19, align 4
  %iocb20 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 11
  %abortContextTag22 = getelementptr inbounds %struct.AC_XRI, ptr %iocb20, i32 0, i32 3
  %19 = ptrtoint ptr %abortContextTag22 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %abortContextTag22, align 4
  %conv23 = zext i16 %20 to i32
  %abortIoTag26 = getelementptr inbounds %struct.AC_XRI, ptr %iocb20, i32 0, i32 4
  %21 = ptrtoint ptr %abortIoTag26 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %abortIoTag26, align 2
  %conv27 = zext i16 %22 to i32
  %iotag28 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 3
  %23 = ptrtoint ptr %iotag28 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %iotag28, align 8
  %conv29 = zext i16 %24 to i32
  %25 = ptrtoint ptr %abts_cmpl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %abts_cmpl, align 4
  %shr31 = lshr i32 %26, 16
  %shr34 = lshr i32 %26, 8
  %and35 = and i32 %shr34, 255
  %and38 = and i32 %26, 255
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.37, i32 noundef %18, i32 noundef %conv23, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %shr31, i32 noundef %and35, i32 noundef %and38) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then18, %if.else.if.end39_crit_edge, %do.end
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %cmdiocb) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_nvme_create_localport(ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  %nfcp_info = alloca %struct.nvme_fc_port_info, align 8
  %localport = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nfcp_info) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %localport) #8
  %2 = ptrtoint ptr %localport to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %localport, align 4, !annotation !372
  %3 = getelementptr inbounds i8, ptr %nfcp_info, i32 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %port_role = getelementptr inbounds %struct.nvme_fc_port_info, ptr %nfcp_info, i32 0, i32 2
  %5 = ptrtoint ptr %port_role to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %port_role, align 8
  %fc_nodename = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 31
  %6 = ptrtoint ptr %fc_nodename to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %fc_nodename, align 1
  %8 = ptrtoint ptr %nfcp_info to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %nfcp_info, align 8
  %fc_portname = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 32
  %9 = ptrtoint ptr %fc_portname to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %fc_portname, align 1
  %port_name = getelementptr inbounds %struct.nvme_fc_port_info, ptr %nfcp_info, i32 0, i32 1
  %11 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %port_name, align 8
  %cfg_nvme_seg_cnt = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 118
  %12 = ptrtoint ptr %cfg_nvme_seg_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_nvme_seg_cnt, align 4
  %14 = trunc i32 %13 to i16
  %conv = add i16 %14, 1
  store i16 %conv, ptr getelementptr inbounds (%struct.nvme_fc_port_template, ptr @lpfc_nvme_template, i32 0, i32 11), align 4
  %cfg_hdw_queue = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 106
  %15 = ptrtoint ptr %cfg_hdw_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg_hdw_queue, align 4
  store i32 %16, ptr getelementptr inbounds (%struct.nvme_fc_port_template, ptr @lpfc_nvme_template, i32 0, i32 10), align 8
  %17 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %18, i32 0, i32 165
  %19 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call6 = call i32 @nvme_fc_register_localport(ptr noundef nonnull %nfcp_info, ptr noundef nonnull @lpfc_nvme_template, ptr noundef %dev, ptr noundef nonnull %localport) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.body:                                          ; preds = %entry
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %21 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %22, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vport, align 8
  %pcidev11 = getelementptr inbounds %struct.lpfc_hba, ptr %24, i32 0, i32 165
  %25 = ptrtoint ptr %pcidev11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcidev11, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %24, i32 0, i32 197
  %27 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %29 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vpi, align 4
  %conv14 = zext i16 %30 to i32
  %31 = ptrtoint ptr %localport to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %localport, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private, align 8
  %37 = load i16, ptr getelementptr inbounds (%struct.nvme_fc_port_template, ptr @lpfc_nvme_template, i32 0, i32 11), align 4
  %conv15 = zext i16 %37 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev12, ptr noundef nonnull @.str.39, i32 noundef %28, i32 noundef %conv14, i32 noundef %34, ptr noundef %32, ptr noundef %36, i32 noundef %conv15) #11
  br label %do.end29

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.not = icmp eq i32 %22, 0
  br i1 %tobool17.not, label %if.then18, label %if.else.do.end29_crit_edge

if.else.do.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vport, align 8
  %brd_no21 = getelementptr inbounds %struct.lpfc_hba, ptr %39, i32 0, i32 197
  %40 = ptrtoint ptr %brd_no21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %brd_no21, align 4
  %vpi22 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %42 = ptrtoint ptr %vpi22 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vpi22, align 4
  %conv23 = zext i16 %43 to i32
  %44 = ptrtoint ptr %localport to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %localport, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %private25 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %45, i32 0, i32 4
  %48 = ptrtoint ptr %private25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private25, align 8
  %50 = load i16, ptr getelementptr inbounds (%struct.nvme_fc_port_template, ptr @lpfc_nvme_template, i32 0, i32 11), align 4
  %conv26 = zext i16 %50 to i32
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %39, ptr noundef nonnull @.str.39, i32 noundef %41, i32 noundef %conv23, i32 noundef %47, ptr noundef %45, ptr noundef %49, i32 noundef %conv26) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then18, %if.else.do.end29_crit_edge, %do.end
  %51 = ptrtoint ptr %localport to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %localport, align 4
  %private30 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %private30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %private30, align 8
  %localport31 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 89
  %55 = ptrtoint ptr %localport31 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %localport31, align 8
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %vport, ptr %54, align 4
  %nvmei_support = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 90
  %57 = ptrtoint ptr %nvmei_support to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %nvmei_support, align 4
  %xmt_fcp_noxri = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_noxri, i32 noundef 4) #8
  %58 = ptrtoint ptr %xmt_fcp_noxri to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %xmt_fcp_noxri, align 4
  %xmt_fcp_bad_ndlp = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 5
  %call.i.i64 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_bad_ndlp, i32 noundef 4) #8
  %59 = ptrtoint ptr %xmt_fcp_bad_ndlp to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 0, ptr %xmt_fcp_bad_ndlp, align 4
  %xmt_fcp_qdepth = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 6
  %call.i.i65 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_qdepth, i32 noundef 4) #8
  %60 = ptrtoint ptr %xmt_fcp_qdepth to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 0, ptr %xmt_fcp_qdepth, align 4
  %xmt_fcp_err = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 8
  %call.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_err, i32 noundef 4) #8
  %61 = ptrtoint ptr %xmt_fcp_err to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %xmt_fcp_err, align 4
  %xmt_fcp_wqerr = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 7
  %call.i.i67 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_wqerr, i32 noundef 4) #8
  %62 = ptrtoint ptr %xmt_fcp_wqerr to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %xmt_fcp_wqerr, align 4
  %xmt_fcp_abort = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 9
  %call.i.i68 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_abort, i32 noundef 4) #8
  %63 = ptrtoint ptr %xmt_fcp_abort to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 0, ptr %xmt_fcp_abort, align 4
  %xmt_ls_abort = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 10
  %call.i.i69 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_abort, i32 noundef 4) #8
  %64 = ptrtoint ptr %xmt_ls_abort to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 0, ptr %xmt_ls_abort, align 4
  %xmt_ls_err = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 11
  %call.i.i70 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_err, i32 noundef 4) #8
  %65 = ptrtoint ptr %xmt_ls_err to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 0, ptr %xmt_ls_err, align 4
  %cmpl_fcp_xb = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 12
  %call.i.i71 = call zeroext i1 @__kasan_check_write(ptr noundef %cmpl_fcp_xb, i32 noundef 4) #8
  %66 = ptrtoint ptr %cmpl_fcp_xb to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %cmpl_fcp_xb, align 4
  %cmpl_fcp_err = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 13
  %call.i.i72 = call zeroext i1 @__kasan_check_write(ptr noundef %cmpl_fcp_err, i32 noundef 4) #8
  %67 = ptrtoint ptr %cmpl_fcp_err to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %cmpl_fcp_err, align 4
  %cmpl_ls_xb = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 14
  %call.i.i73 = call zeroext i1 @__kasan_check_write(ptr noundef %cmpl_ls_xb, i32 noundef 4) #8
  %68 = ptrtoint ptr %cmpl_ls_xb to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %cmpl_ls_xb, align 4
  %cmpl_ls_err = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 15
  %call.i.i74 = call zeroext i1 @__kasan_check_write(ptr noundef %cmpl_ls_err, i32 noundef 4) #8
  %69 = ptrtoint ptr %cmpl_ls_err to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 0, ptr %cmpl_ls_err, align 4
  %fc4NvmeLsRequests = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 2
  %call.i.i75 = call zeroext i1 @__kasan_check_write(ptr noundef %fc4NvmeLsRequests, i32 noundef 4) #8
  %70 = ptrtoint ptr %fc4NvmeLsRequests to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %fc4NvmeLsRequests, align 4
  %fc4NvmeLsCmpls = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %54, i32 0, i32 3
  %call.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef %fc4NvmeLsCmpls, i32 noundef 4) #8
  %71 = ptrtoint ptr %fc4NvmeLsCmpls to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 0, ptr %fc4NvmeLsCmpls, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.end29, %entry.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %localport) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nfcp_info) #8
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_register_localport(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvme_destroy_localport(ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  %lport_unreg_cmp = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %lport_unreg_cmp) #8
  %0 = getelementptr inbounds i8, ptr %lport_unreg_cmp, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %lport_unreg_cmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %lport_unreg_cmp, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %lport_unreg_cmp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.213, ptr noundef nonnull @init_completion.__key) #8
  %nvmei_support = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 90
  %3 = ptrtoint ptr %nvmei_support to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nvmei_support, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %localport2 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 89
  %5 = ptrtoint ptr %localport2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %localport2, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 8
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %9 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %12, i32 0, i32 165
  %13 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %12, i32 0, i32 197
  %15 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %17 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vpi, align 4
  %conv9 = zext i16 %18 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %16, i32 noundef %conv9, ptr noundef nonnull %6) #11
  br label %do.end21

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else.do.end21_crit_edge

if.else.do.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vport, align 8
  %brd_no15 = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 197
  %21 = ptrtoint ptr %brd_no15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %brd_no15, align 4
  %vpi16 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %23 = ptrtoint ptr %vpi16 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vpi16, align 4
  %conv17 = zext i16 %24 to i32
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %20, ptr noundef nonnull @.str.41, i32 noundef %22, i32 noundef %conv17, ptr noundef nonnull %6) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then12, %if.else.do.end21_crit_edge, %do.end
  %lport_unreg_cmp22 = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %8, i32 0, i32 1
  %25 = ptrtoint ptr %lport_unreg_cmp22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lport_unreg_cmp, ptr %lport_unreg_cmp22, align 4
  %call = call i32 @nvme_fc_unregister_localport(ptr noundef nonnull %6) #8
  %26 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vport, align 8
  %cfg_hdw_queue.i = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 106
  %hdwq.i = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 25, i32 27
  %tobool6.not.i = icmp eq ptr %vport, null
  %vpi.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %call2.i125 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %lport_unreg_cmp, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i125)
  %tobool.not.i126 = icmp eq i32 %call2.i125, 0
  br i1 %tobool.not.i126, label %do.end21.for.cond.preheader.i_crit_edge, label %do.end21.do.body56.i_crit_edge, !prof !373

do.end21.do.body56.i_crit_edge:                   ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56.i

do.end21.for.cond.preheader.i_crit_edge:          ; preds = %do.end21
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.body.i.for.cond.preheader.i_crit_edge, %do.end21.for.cond.preheader.i_crit_edge
  %28 = ptrtoint ptr %cfg_hdw_queue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg_hdw_queue.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp143.not.i = icmp eq i32 %29, 0
  br i1 %cmp143.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %30 = ptrtoint ptr %hdwq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdwq.i, align 8
  br i1 %tobool6.not.i, label %for.body.lr.ph.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, label %for.body.lr.ph.split.i

for.body.lr.ph.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge: ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpfc_nvme_lport_unreg_wait.exit

for.body.lr.ph.split.i:                           ; preds = %for.body.lr.ph.i
  %32 = ptrtoint ptr %localport2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %localport2, align 8
  %.fr.i = freeze ptr %33
  %tobool7.not.i = icmp eq ptr %.fr.i, null
  br i1 %tobool7.not.i, label %for.body.lr.ph.split.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, label %for.body.lr.ph.split.i.for.body.i_crit_edge

for.body.lr.ph.split.i.for.body.i_crit_edge:      ; preds = %for.body.lr.ph.split.i
  br label %for.body.i

for.body.lr.ph.split.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge: ; preds = %for.body.lr.ph.split.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpfc_nvme_lport_unreg_wait.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.split.i.for.body.i_crit_edge
  %abts_nvme.0148.i = phi i32 [ %abts_nvme.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.lr.ph.split.i.for.body.i_crit_edge ]
  %abts_scsi.0147.i = phi i32 [ %abts_scsi.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.lr.ph.split.i.for.body.i_crit_edge ]
  %pending.0146.i = phi i32 [ %pending.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.lr.ph.split.i.for.body.i_crit_edge ]
  %i.0144.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.lr.ph.split.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %31, i32 %i.0144.i
  %tobool9.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool9.not.i, label %for.body.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, label %lor.lhs.false10.i

for.body.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpfc_nvme_lport_unreg_wait.exit

lor.lhs.false10.i:                                ; preds = %for.body.i
  %io_wq.i = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %31, i32 %i.0144.i, i32 2
  %34 = ptrtoint ptr %io_wq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_wq.i, align 4
  %tobool11.not.i = icmp eq ptr %35, null
  br i1 %tobool11.not.i, label %lor.lhs.false10.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, label %if.end.i

lor.lhs.false10.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge: ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpfc_nvme_lport_unreg_wait.exit

if.end.i:                                         ; preds = %lor.lhs.false10.i
  %pring14.i = getelementptr inbounds %struct.lpfc_queue, ptr %35, i32 0, i32 25
  %36 = ptrtoint ptr %pring14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pring14.i, align 8
  %tobool15.not.i = icmp eq ptr %37, null
  br i1 %tobool15.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end17.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %txcmplq_cnt.i = getelementptr inbounds %struct.lpfc_sli_ring, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %txcmplq_cnt.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %txcmplq_cnt.i, align 4
  %conv.i = zext i16 %39 to i32
  %add.i = add i32 %pending.0146.i, %conv.i
  %abts_scsi_io_bufs.i = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %31, i32 %i.0144.i, i32 14
  %40 = ptrtoint ptr %abts_scsi_io_bufs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %abts_scsi_io_bufs.i, align 4
  %add18.i = add i32 %41, %abts_scsi.0147.i
  %abts_nvme_io_bufs.i = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %31, i32 %i.0144.i, i32 15
  %42 = ptrtoint ptr %abts_nvme_io_bufs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %abts_nvme_io_bufs.i, align 4
  %add19.i = add i32 %43, %abts_nvme.0148.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end17.i, %if.end.i.for.inc.i_crit_edge
  %pending.1.i = phi i32 [ %add.i, %if.end17.i ], [ %pending.0146.i, %if.end.i.for.inc.i_crit_edge ]
  %abts_scsi.1.i = phi i32 [ %add18.i, %if.end17.i ], [ %abts_scsi.0147.i, %if.end.i.for.inc.i_crit_edge ]
  %abts_nvme.1.i = phi i32 [ %add19.i, %if.end17.i ], [ %abts_nvme.0148.i, %if.end.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.0144.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %pending.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %pending.1.i, %for.inc.i.for.end.i_crit_edge ]
  %abts_scsi.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %abts_scsi.1.i, %for.inc.i.for.end.i_crit_edge ]
  %abts_nvme.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %abts_nvme.1.i, %for.inc.i.for.end.i_crit_edge ]
  br i1 %tobool6.not.i, label %for.end.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, label %lor.lhs.false21.i

for.end.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpfc_nvme_lport_unreg_wait.exit

lor.lhs.false21.i:                                ; preds = %for.end.i
  %44 = ptrtoint ptr %localport2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %localport2, align 8
  %tobool23.not.i = icmp eq ptr %45, null
  br i1 %tobool23.not.i, label %lor.lhs.false21.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, label %lor.lhs.false24.i

lor.lhs.false21.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge: ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpfc_nvme_lport_unreg_wait.exit

lor.lhs.false24.i:                                ; preds = %lor.lhs.false21.i
  %46 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vport, align 8
  %hba_flag.i = getelementptr inbounds %struct.lpfc_hba, ptr %47, i32 0, i32 38
  %48 = ptrtoint ptr %hba_flag.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hba_flag.i, align 4
  %and.i = and i32 %49, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool26.not.i, label %do.body.i, label %lor.lhs.false24.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge

lor.lhs.false24.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge: ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpfc_nvme_lport_unreg_wait.exit

do.body.i:                                        ; preds = %lor.lhs.false24.i
  call void @lpfc_dmp_dbg(ptr noundef %47) #8
  %50 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vport, align 8
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %51, i32 0, i32 165
  %52 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %51, i32 0, i32 197
  %54 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %brd_no.i, align 4
  %56 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vpi.i, align 4
  %conv40.i = zext i16 %57 to i32
  %58 = ptrtoint ptr %localport2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %localport2, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i, ptr noundef nonnull @.str.214, i32 noundef %55, i32 noundef %conv40.i, ptr noundef %8, ptr noundef %59, i32 noundef %pending.0.lcssa.i, i32 noundef %abts_scsi.0.lcssa.i, i32 noundef %abts_nvme.0.lcssa.i) #11
  %call2.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %lport_unreg_cmp, i32 noundef 1000) #8
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.body.i.for.cond.preheader.i_crit_edge, label %do.body.i.do.body56.i_crit_edge, !prof !373

do.body.i.do.body56.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56.i

do.body.i.for.cond.preheader.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i

do.body56.i:                                      ; preds = %do.body.i.do.body56.i_crit_edge, %do.end21.do.body56.i_crit_edge
  %60 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cfg_log_verbose, align 4
  %and58.i = and i32 %61, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.else72.i, label %do.end63.i

do.end63.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vport, align 8
  %pcidev65.i = getelementptr inbounds %struct.lpfc_hba, ptr %63, i32 0, i32 165
  %64 = ptrtoint ptr %pcidev65.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcidev65.i, align 4
  %dev66.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %brd_no68.i = getelementptr inbounds %struct.lpfc_hba, ptr %63, i32 0, i32 197
  %66 = ptrtoint ptr %brd_no68.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %brd_no68.i, align 4
  %68 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vpi.i, align 4
  %conv70.i = zext i16 %69 to i32
  %70 = ptrtoint ptr %localport2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %localport2, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev66.i, ptr noundef nonnull @.str.217, i32 noundef %67, i32 noundef %conv70.i, ptr noundef %8, ptr noundef %71) #11
  br label %lpfc_nvme_lport_unreg_wait.exit

if.else72.i:                                      ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool74.not.i = icmp eq i32 %61, 0
  br i1 %tobool74.not.i, label %if.then75.i, label %if.else72.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge

if.else72.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge: ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpfc_nvme_lport_unreg_wait.exit

if.then75.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vport, align 8
  %brd_no78.i = getelementptr inbounds %struct.lpfc_hba, ptr %73, i32 0, i32 197
  %74 = ptrtoint ptr %brd_no78.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %brd_no78.i, align 4
  %76 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vpi.i, align 4
  %conv80.i = zext i16 %77 to i32
  %78 = ptrtoint ptr %localport2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %localport2, align 8
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %73, ptr noundef nonnull @.str.217, i32 noundef %75, i32 noundef %conv80.i, ptr noundef %8, ptr noundef %79) #8
  br label %lpfc_nvme_lport_unreg_wait.exit

lpfc_nvme_lport_unreg_wait.exit:                  ; preds = %if.then75.i, %if.else72.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, %do.end63.i, %lor.lhs.false24.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, %lor.lhs.false21.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, %for.end.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, %lor.lhs.false10.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, %for.body.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, %for.body.lr.ph.split.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge, %for.body.lr.ph.i.lpfc_nvme_lport_unreg_wait.exit_crit_edge
  %80 = ptrtoint ptr %localport2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %localport2, align 8
  %81 = ptrtoint ptr %nvmei_support to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %nvmei_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp25 = icmp eq i32 %call, 0
  %82 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cfg_log_verbose, align 4
  %and30 = and i32 %83, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %cmp25, label %do.body28, label %do.body57

do.body28:                                        ; preds = %lpfc_nvme_lport_unreg_wait.exit
  br i1 %tobool31.not, label %if.else43, label %do.end35

do.end35:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vport, align 8
  %pcidev37 = getelementptr inbounds %struct.lpfc_hba, ptr %85, i32 0, i32 165
  %86 = ptrtoint ptr %pcidev37 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pcidev37, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %brd_no40 = getelementptr inbounds %struct.lpfc_hba, ptr %85, i32 0, i32 197
  %88 = ptrtoint ptr %brd_no40 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %brd_no40, align 4
  %90 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vpi.i, align 4
  %conv42 = zext i16 %91 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev38, ptr noundef nonnull @.str.44, i32 noundef %89, i32 noundef %conv42) #11
  br label %cleanup

if.else43:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool45.not = icmp eq i32 %83, 0
  br i1 %tobool45.not, label %if.then46, label %if.else43.cleanup_crit_edge

if.else43.cleanup_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vport, align 8
  %brd_no49 = getelementptr inbounds %struct.lpfc_hba, ptr %93, i32 0, i32 197
  %94 = ptrtoint ptr %brd_no49 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %brd_no49, align 4
  %96 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %vpi.i, align 4
  %conv51 = zext i16 %97 to i32
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %93, ptr noundef nonnull @.str.44, i32 noundef %95, i32 noundef %conv51) #8
  br label %cleanup

do.body57:                                        ; preds = %lpfc_nvme_lport_unreg_wait.exit
  br i1 %tobool31.not, label %if.else72, label %do.end64

do.end64:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vport, align 8
  %pcidev66 = getelementptr inbounds %struct.lpfc_hba, ptr %99, i32 0, i32 165
  %100 = ptrtoint ptr %pcidev66 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pcidev66, align 4
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %brd_no69 = getelementptr inbounds %struct.lpfc_hba, ptr %99, i32 0, i32 197
  %102 = ptrtoint ptr %brd_no69 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %brd_no69, align 4
  %104 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %vpi.i, align 4
  %conv71 = zext i16 %105 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev67, ptr noundef nonnull @.str.47, i32 noundef %103, i32 noundef %conv71, i32 noundef %call) #11
  br label %cleanup

if.else72:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool74.not = icmp eq i32 %83, 0
  br i1 %tobool74.not, label %if.then75, label %if.else72.cleanup_crit_edge

if.else72.cleanup_crit_edge:                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then75:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vport, align 8
  %brd_no78 = getelementptr inbounds %struct.lpfc_hba, ptr %107, i32 0, i32 197
  %108 = ptrtoint ptr %brd_no78 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %brd_no78, align 4
  %110 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %vpi.i, align 4
  %conv80 = zext i16 %111 to i32
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %107, ptr noundef nonnull @.str.47, i32 noundef %109, i32 noundef %conv80, i32 noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.else72.cleanup_crit_edge, %do.end64, %if.then46, %if.else43.cleanup_crit_edge, %do.end35, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %lport_unreg_cmp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_unregister_localport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvme_update_localport(ptr noundef readonly %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %localport1 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 89
  %0 = ptrtoint ptr %localport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %localport1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end17

do.body:                                          ; preds = %entry
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %2 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.51, ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %9, i32 noundef %conv) #11
  br label %cleanup

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.then8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vport, align 8
  %brd_no11 = getelementptr inbounds %struct.lpfc_hba, ptr %13, i32 0, i32 197
  %14 = ptrtoint ptr %brd_no11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brd_no11, align 4
  %vpi12 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %16 = ptrtoint ptr %vpi12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vpi12, align 4
  %conv13 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %13, ptr noundef nonnull @.str.49, i32 noundef %15, i32 noundef %conv13) #8
  br label %cleanup

if.end17:                                         ; preds = %entry
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private, align 8
  %tobool18.not = icmp eq ptr %19, null
  %cfg_log_verbose21 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %20 = ptrtoint ptr %cfg_log_verbose21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg_log_verbose21, align 4
  %and22 = and i32 %21, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool18.not, label %do.body20, label %do.body49

do.body20:                                        ; preds = %if.end17
  br i1 %tobool23.not, label %if.else35, label %do.end27

do.end27:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vport, align 8
  %pcidev29 = getelementptr inbounds %struct.lpfc_hba, ptr %23, i32 0, i32 165
  %24 = ptrtoint ptr %pcidev29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcidev29, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %brd_no32 = getelementptr inbounds %struct.lpfc_hba, ptr %23, i32 0, i32 197
  %26 = ptrtoint ptr %brd_no32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brd_no32, align 4
  %vpi33 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %28 = ptrtoint ptr %vpi33 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vpi33, align 4
  %conv34 = zext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.51, ptr noundef %dev30, ptr noundef nonnull @.str.53, i32 noundef %27, i32 noundef %conv34, ptr noundef nonnull %1) #11
  br label %cleanup

if.else35:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool37.not = icmp eq i32 %21, 0
  br i1 %tobool37.not, label %if.then38, label %if.else35.cleanup_crit_edge

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vport, align 8
  %brd_no41 = getelementptr inbounds %struct.lpfc_hba, ptr %31, i32 0, i32 197
  %32 = ptrtoint ptr %brd_no41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %brd_no41, align 4
  %vpi42 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %34 = ptrtoint ptr %vpi42 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vpi42, align 4
  %conv43 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %31, ptr noundef nonnull @.str.53, i32 noundef %33, i32 noundef %conv43, ptr noundef nonnull %1) #8
  br label %cleanup

do.body49:                                        ; preds = %if.end17
  br i1 %tobool23.not, label %if.else64, label %do.end56

do.end56:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vport, align 8
  %pcidev58 = getelementptr inbounds %struct.lpfc_hba, ptr %37, i32 0, i32 165
  %38 = ptrtoint ptr %pcidev58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcidev58, align 4
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %brd_no61 = getelementptr inbounds %struct.lpfc_hba, ptr %37, i32 0, i32 197
  %40 = ptrtoint ptr %brd_no61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %brd_no61, align 4
  %vpi62 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %42 = ptrtoint ptr %vpi62 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vpi62, align 4
  %conv63 = zext i16 %43 to i32
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %44 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fc_myDID, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev59, ptr noundef nonnull @.str.56, i32 noundef %41, i32 noundef %conv63, ptr noundef nonnull %1, i32 noundef %45) #11
  br label %do.end77

if.else64:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool66.not = icmp eq i32 %21, 0
  br i1 %tobool66.not, label %if.then67, label %if.else64.do.end77_crit_edge

if.else64.do.end77_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77

if.then67:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vport, align 8
  %brd_no70 = getelementptr inbounds %struct.lpfc_hba, ptr %47, i32 0, i32 197
  %48 = ptrtoint ptr %brd_no70 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brd_no70, align 4
  %vpi71 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %50 = ptrtoint ptr %vpi71 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vpi71, align 4
  %conv72 = zext i16 %51 to i32
  %fc_myDID73 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %52 = ptrtoint ptr %fc_myDID73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fc_myDID73, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %47, ptr noundef nonnull @.str.56, i32 noundef %49, i32 noundef %conv72, ptr noundef nonnull %1, i32 noundef %53) #8
  br label %do.end77

do.end77:                                         ; preds = %if.then67, %if.else64.do.end77_crit_edge, %do.end56
  %fc_myDID78 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %54 = ptrtoint ptr %fc_myDID78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fc_myDID78, align 8
  %port_id = getelementptr inbounds %struct.nvme_fc_local_port, ptr %1, i32 0, i32 5
  %56 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %port_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp = icmp eq i32 %55, 0
  %spec.select = select i1 %cmp, i32 64, i32 16
  %57 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select, ptr %57, align 4
  %59 = ptrtoint ptr %cfg_log_verbose21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cfg_log_verbose21, align 4
  %and87 = and i32 %60, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.else101, label %do.end92

do.end92:                                         ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vport, align 8
  %pcidev94 = getelementptr inbounds %struct.lpfc_hba, ptr %62, i32 0, i32 165
  %63 = ptrtoint ptr %pcidev94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pcidev94, align 4
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %brd_no97 = getelementptr inbounds %struct.lpfc_hba, ptr %62, i32 0, i32 197
  %65 = ptrtoint ptr %brd_no97 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %brd_no97, align 4
  %vpi98 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %67 = ptrtoint ptr %vpi98 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vpi98, align 4
  %conv99 = zext i16 %68 to i32
  %69 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port_id, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev95, ptr noundef nonnull @.str.59, i32 noundef %66, i32 noundef %conv99, ptr noundef nonnull %19, i32 noundef %70) #11
  br label %cleanup

if.else101:                                       ; preds = %do.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool103.not = icmp eq i32 %60, 0
  br i1 %tobool103.not, label %if.then104, label %if.else101.cleanup_crit_edge

if.else101.cleanup_crit_edge:                     ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then104:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vport, align 8
  %brd_no107 = getelementptr inbounds %struct.lpfc_hba, ptr %72, i32 0, i32 197
  %73 = ptrtoint ptr %brd_no107 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %brd_no107, align 4
  %vpi108 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %75 = ptrtoint ptr %vpi108 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vpi108, align 4
  %conv109 = zext i16 %76 to i32
  %77 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port_id, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %72, ptr noundef nonnull @.str.59, i32 noundef %74, i32 noundef %conv109, ptr noundef nonnull %19, i32 noundef %78) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %if.else101.cleanup_crit_edge, %do.end92, %if.then38, %if.else35.cleanup_crit_edge, %do.end27, %if.then8, %if.else.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_nvme_register_port(ptr nocapture noundef readonly %vport, ptr noundef %ndlp) local_unnamed_addr #0 align 64 {
entry:
  %remote_port = alloca ptr, align 4
  %rpinfo = alloca %struct.nvme_fc_port_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote_port) #8
  %0 = ptrtoint ptr %remote_port to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %remote_port, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rpinfo) #8
  %rport1 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 23
  %1 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rport1, align 4
  %vport2 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 25
  %3 = ptrtoint ptr %vport2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vport2, align 4
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %4, i32 0, i32 51
  %5 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %8, i32 0, i32 165
  %9 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %8, i32 0, i32 197
  %11 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %4, i32 0, i32 4
  %13 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vpi, align 4
  %conv = zext i16 %14 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %15 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nlp_DID, align 8
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %17 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nlp_type, align 8
  %conv8 = zext i16 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %12, i32 noundef %conv, i32 noundef %16, i32 noundef %conv8) #11
  br label %do.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.then12, label %if.else.do.end26_crit_edge

if.else.do.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 8
  %brd_no17 = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 197
  %21 = ptrtoint ptr %brd_no17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %brd_no17, align 4
  %vpi19 = getelementptr inbounds %struct.lpfc_vport, ptr %4, i32 0, i32 4
  %23 = ptrtoint ptr %vpi19 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vpi19, align 4
  %conv20 = zext i16 %24 to i32
  %nlp_DID21 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %25 = ptrtoint ptr %nlp_DID21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nlp_DID21, align 8
  %nlp_type22 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %27 = ptrtoint ptr %nlp_type22 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nlp_type22, align 8
  %conv23 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %20, ptr noundef nonnull @.str.61, i32 noundef %22, i32 noundef %conv20, i32 noundef %26, i32 noundef %conv23) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then12, %if.else.do.end26_crit_edge, %do.end
  %localport27 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 89
  %29 = ptrtoint ptr %localport27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %localport27, align 8
  %tobool28.not = icmp eq ptr %30, null
  br i1 %tobool28.not, label %do.end26.cleanup_crit_edge, label %if.end30

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %do.end26
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private, align 8
  %33 = call ptr @memset(ptr %rpinfo, i32 0, i32 32)
  %nlp_DID31 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %34 = ptrtoint ptr %nlp_DID31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nlp_DID31, align 8
  %port_id = getelementptr inbounds %struct.nvme_fc_port_info, ptr %rpinfo, i32 0, i32 3
  %36 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %port_id, align 4
  %nlp_type32 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %37 = ptrtoint ptr %nlp_type32 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %nlp_type32, align 8
  %39 = and i16 %38, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool35.not = icmp eq i16 %39, 0
  br i1 %tobool35.not, label %if.end30.if.end37_crit_edge, label %if.then36

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %port_role = getelementptr inbounds %struct.nvme_fc_port_info, ptr %rpinfo, i32 0, i32 2
  %40 = ptrtoint ptr %port_role to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_role, align 8
  %or = or i32 %41, 32
  store i32 %or, ptr %port_role, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end30.if.end37_crit_edge
  %42 = and i16 %38, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool41.not = icmp eq i16 %42, 0
  br i1 %tobool41.not, label %if.end37.if.end45_crit_edge, label %if.then42

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %port_role43 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %rpinfo, i32 0, i32 2
  %43 = ptrtoint ptr %port_role43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port_role43, align 8
  %or44 = or i32 %44, 16
  store i32 %or44, ptr %port_role43, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end37.if.end45_crit_edge
  %45 = and i16 %38, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool49.not = icmp eq i16 %45, 0
  br i1 %tobool49.not, label %if.end45.if.end53_crit_edge, label %if.then50

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %port_role51 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %rpinfo, i32 0, i32 2
  %46 = ptrtoint ptr %port_role51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port_role51, align 8
  %or52 = or i32 %47, 64
  store i32 %or52, ptr %port_role51, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end45.if.end53_crit_edge
  %nlp_portname = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 2
  %48 = ptrtoint ptr %nlp_portname to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %nlp_portname, align 1
  %port_name = getelementptr inbounds %struct.nvme_fc_port_info, ptr %rpinfo, i32 0, i32 1
  %50 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %port_name, align 8
  %nlp_nodename = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 3
  %51 = ptrtoint ptr %nlp_nodename to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %nlp_nodename, align 1
  %53 = ptrtoint ptr %rpinfo to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %rpinfo, align 8
  %tobool57.not = icmp eq ptr %2, null
  %cfg_devloss_tmo = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 45
  %dev_loss_tmo = getelementptr inbounds %struct.fc_rport, ptr %2, i32 0, i32 2
  %.sink.in = select i1 %tobool57.not, ptr %cfg_devloss_tmo, ptr %dev_loss_tmo
  %54 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %54)
  %.sink = load i32, ptr %.sink.in, align 4
  %55 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %rpinfo, i32 0, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink, ptr %55, align 8
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %nrport = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 24
  %57 = ptrtoint ptr %nrport to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nrport, align 8
  %tobool63.not = icmp eq ptr %58, null
  br i1 %tobool63.not, label %if.end53.if.else71_crit_edge, label %lor.lhs.false

if.end53.if.else71_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else71

lor.lhs.false:                                    ; preds = %if.end53
  %fc4_xpt_flags = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 37
  %59 = ptrtoint ptr %fc4_xpt_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fc4_xpt_flags, align 4
  %and64 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then68, label %lor.lhs.false.if.else71_crit_edge

lor.lhs.false.if.else71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else71

if.then68:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %ndlp69 = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %ndlp69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ndlp69, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %if.end83

if.else71:                                        ; preds = %lor.lhs.false.if.else71_crit_edge, %if.end53.if.else71_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %call73 = tail call ptr @lpfc_nlp_get(ptr noundef %ndlp) #8
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %do.end78, label %if.else71.if.end83_crit_edge

if.else71.if.end83_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

do.end78:                                         ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vport, align 8
  %pcidev80 = getelementptr inbounds %struct.lpfc_hba, ptr %64, i32 0, i32 165
  %65 = ptrtoint ptr %pcidev80 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcidev80, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev81, ptr noundef nonnull @.str.64) #11
  br label %cleanup

if.end83:                                         ; preds = %if.else71.if.end83_crit_edge, %if.then68
  %tobool67.not286 = phi i1 [ false, %if.then68 ], [ true, %if.else71.if.end83_crit_edge ]
  %prev_ndlp.0 = phi ptr [ %62, %if.then68 ], [ null, %if.else71.if.end83_crit_edge ]
  %call84 = call i32 @nvme_fc_register_remoteport(ptr noundef nonnull %30, ptr noundef nonnull %rpinfo, ptr noundef nonnull %remote_port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then86, label %do.body155

if.then86:                                        ; preds = %if.end83
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %fc4_xpt_flags88 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 37
  %67 = ptrtoint ptr %fc4_xpt_flags88 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fc4_xpt_flags88, align 4
  %and89 = and i32 %68, -13
  %or91 = or i32 %and89, 4
  store i32 %or91, ptr %fc4_xpt_flags88, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %69 = ptrtoint ptr %remote_port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %remote_port, align 4
  %private93 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %private93 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %private93, align 4
  br i1 %tobool67.not286, label %if.then86.if.end111_crit_edge, label %if.then95

if.then86.if.end111_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then95:                                        ; preds = %if.then86
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %73 = ptrtoint ptr %nrport to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %nrport, align 8
  %74 = ptrtoint ptr %fc4_xpt_flags88 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fc4_xpt_flags88, align 4
  %and99 = and i32 %75, -9
  store i32 %and99, ptr %fc4_xpt_flags88, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %ndlp101 = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %72, i32 0, i32 2
  %76 = ptrtoint ptr %ndlp101 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %ndlp101, align 4
  %remoteport = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %72, i32 0, i32 1
  %77 = ptrtoint ptr %remoteport to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %remoteport, align 4
  %tobool102.not = icmp eq ptr %prev_ndlp.0, null
  %cmp.not = icmp eq ptr %prev_ndlp.0, %ndlp
  %or.cond = or i1 %tobool102.not, %cmp.not
  br i1 %or.cond, label %if.then95.if.end111_crit_edge, label %if.then104

if.then95.if.end111_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then104:                                       ; preds = %if.then95
  %nrport105 = getelementptr inbounds %struct.lpfc_nodelist, ptr %prev_ndlp.0, i32 0, i32 24
  %78 = ptrtoint ptr %nrport105 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %nrport105, align 8
  %tobool106.not = icmp eq ptr %79, null
  br i1 %tobool106.not, label %if.then107, label %if.then104.if.end111_crit_edge

if.then104.if.end111_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then107:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  %call108 = call i32 @lpfc_nlp_put(ptr noundef nonnull %prev_ndlp.0) #8
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.then104.if.end111_crit_edge, %if.then95.if.end111_crit_edge, %if.then86.if.end111_crit_edge
  %80 = ptrtoint ptr %remote_port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %remote_port, align 4
  %remoteport112 = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %72, i32 0, i32 1
  %82 = ptrtoint ptr %remoteport112 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %remoteport112, align 4
  %83 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %32, ptr %72, align 4
  %ndlp114 = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %72, i32 0, i32 2
  %84 = ptrtoint ptr %ndlp114 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %ndlp, ptr %ndlp114, align 4
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %85 = ptrtoint ptr %nrport to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %72, ptr %nrport, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %cfg_log_verbose119 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %86 = ptrtoint ptr %cfg_log_verbose119 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cfg_log_verbose119, align 4
  %and120 = and i32 %87, 2097280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.else137, label %do.end125

do.end125:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vport, align 8
  %pcidev127 = getelementptr inbounds %struct.lpfc_hba, ptr %89, i32 0, i32 165
  %90 = ptrtoint ptr %pcidev127 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pcidev127, align 4
  %dev128 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %brd_no130 = getelementptr inbounds %struct.lpfc_hba, ptr %89, i32 0, i32 197
  %92 = ptrtoint ptr %brd_no130 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %brd_no130, align 4
  %vpi131 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %94 = ptrtoint ptr %vpi131 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %vpi131, align 4
  %conv132 = zext i16 %95 to i32
  %96 = ptrtoint ptr %remote_port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %remote_port, align 4
  %98 = ptrtoint ptr %rpinfo to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %rpinfo, align 8
  %100 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %port_name, align 8
  %102 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port_id, align 4
  %port_role136 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %rpinfo, i32 0, i32 2
  %104 = ptrtoint ptr %port_role136 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port_role136, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev128, ptr noundef nonnull @.str.67, i32 noundef %93, i32 noundef %conv132, ptr noundef %32, ptr noundef %97, ptr noundef %72, i64 noundef %99, i64 noundef %101, i32 noundef %103, i32 noundef %105, ptr noundef %ndlp, ptr noundef %prev_ndlp.0) #11
  br label %cleanup

if.else137:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool139.not = icmp eq i32 %87, 0
  br i1 %tobool139.not, label %if.then140, label %if.else137.cleanup_crit_edge

if.else137.cleanup_crit_edge:                     ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then140:                                       ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vport, align 8
  %brd_no143 = getelementptr inbounds %struct.lpfc_hba, ptr %107, i32 0, i32 197
  %108 = ptrtoint ptr %brd_no143 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %brd_no143, align 4
  %vpi144 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %110 = ptrtoint ptr %vpi144 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %vpi144, align 4
  %conv145 = zext i16 %111 to i32
  %112 = ptrtoint ptr %remote_port to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %remote_port, align 4
  %114 = ptrtoint ptr %rpinfo to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %rpinfo, align 8
  %116 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %port_name, align 8
  %118 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port_id, align 4
  %port_role149 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %rpinfo, i32 0, i32 2
  %120 = ptrtoint ptr %port_role149 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port_role149, align 8
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %107, ptr noundef nonnull @.str.67, i32 noundef %109, i32 noundef %conv145, ptr noundef %32, ptr noundef %113, ptr noundef %72, i64 noundef %115, i64 noundef %117, i32 noundef %119, i32 noundef %121, ptr noundef %ndlp, ptr noundef %prev_ndlp.0) #8
  br label %cleanup

do.body155:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %vport, align 8
  call void @lpfc_dmp_dbg(ptr noundef %123) #8
  %124 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vport, align 8
  %pcidev169 = getelementptr inbounds %struct.lpfc_hba, ptr %125, i32 0, i32 165
  %126 = ptrtoint ptr %pcidev169 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pcidev169, align 4
  %dev170 = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  %brd_no172 = getelementptr inbounds %struct.lpfc_hba, ptr %125, i32 0, i32 197
  %128 = ptrtoint ptr %brd_no172 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %brd_no172, align 4
  %vpi173 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %130 = ptrtoint ptr %vpi173 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %vpi173, align 4
  %conv174 = zext i16 %131 to i32
  %132 = ptrtoint ptr %nlp_DID31 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %nlp_DID31, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev170, ptr noundef nonnull @.str.70, i32 noundef %129, i32 noundef %conv174, i32 noundef %call84, i32 noundef %133) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body155, %if.then140, %if.else137.cleanup_crit_edge, %do.end125, %do.end78, %do.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end78 ], [ 0, %do.end26.cleanup_crit_edge ], [ %call84, %do.body155 ], [ 0, %do.end125 ], [ 0, %if.then140 ], [ 0, %if.else137.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpinfo) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote_port) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_nlp_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_register_remoteport(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvme_rescan_port(ptr nocapture noundef readonly %vport, ptr noundef %ndlp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %nrport1 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 24
  %0 = ptrtoint ptr %nrport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nrport1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %fc4_xpt_flags = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 37
  %2 = ptrtoint ptr %fc4_xpt_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fc4_xpt_flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %remoteport5 = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %remoteport5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remoteport5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool4.not158 = phi i1 [ false, %if.then ], [ true, %entry.if.end_crit_edge ], [ true, %lor.lhs.false.if.end_crit_edge ]
  %cond157 = phi ptr [ %1, %if.then ], [ null, %entry.if.end_crit_edge ], [ null, %lor.lhs.false.if.end_crit_edge ]
  %remoteport.0 = phi ptr [ %5, %if.then ], [ null, %entry.if.end_crit_edge ], [ null, %lor.lhs.false.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %6 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg_log_verbose, align 4
  %and7 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  %conv = zext i16 %15 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %16 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlp_DID, align 8
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %18 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nlp_type, align 8
  %conv12 = zext i16 %19 to i32
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %20 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nlp_state, align 2
  %conv13 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %13, i32 noundef %conv, i32 noundef %17, i32 noundef %conv12, i32 noundef %conv13, ptr noundef %cond157, ptr noundef %remoteport.0) #11
  br label %do.end30

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool15.not = icmp eq i32 %7, 0
  br i1 %tobool15.not, label %if.then16, label %if.else.do.end30_crit_edge

if.else.do.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vport, align 8
  %brd_no19 = getelementptr inbounds %struct.lpfc_hba, ptr %23, i32 0, i32 197
  %24 = ptrtoint ptr %brd_no19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brd_no19, align 4
  %vpi20 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %26 = ptrtoint ptr %vpi20 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vpi20, align 4
  %conv21 = zext i16 %27 to i32
  %nlp_DID22 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %28 = ptrtoint ptr %nlp_DID22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlp_DID22, align 8
  %nlp_type23 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %30 = ptrtoint ptr %nlp_type23 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nlp_type23, align 8
  %conv24 = zext i16 %31 to i32
  %nlp_state25 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %32 = ptrtoint ptr %nlp_state25 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nlp_state25, align 2
  %conv26 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %23, ptr noundef nonnull @.str.72, i32 noundef %25, i32 noundef %conv21, i32 noundef %29, i32 noundef %conv24, i32 noundef %conv26, ptr noundef %cond157, ptr noundef %remoteport.0) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then16, %if.else.do.end30_crit_edge, %do.end
  %tobool33.not = icmp eq ptr %remoteport.0, null
  %or.cond = select i1 %tobool4.not158, i1 true, i1 %tobool33.not
  br i1 %or.cond, label %do.body79, label %if.end35

if.end35:                                         ; preds = %do.end30
  %port_role = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %remoteport.0, i32 0, i32 1
  %34 = ptrtoint ptr %port_role to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port_role, align 4
  %and36 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %land.lhs.true

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end35
  %nlp_state38 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 11
  %36 = ptrtoint ptr %nlp_state38 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nlp_state38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %37)
  %cmp = icmp eq i16 %37, 7
  br i1 %cmp, label %if.then41, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvme_fc_rescan_remoteport(ptr noundef nonnull %remoteport.0) #8
  %38 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %39) #8
  %40 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vport, align 8
  %pcidev56 = getelementptr inbounds %struct.lpfc_hba, ptr %41, i32 0, i32 165
  %42 = ptrtoint ptr %pcidev56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcidev56, align 4
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %brd_no59 = getelementptr inbounds %struct.lpfc_hba, ptr %41, i32 0, i32 197
  %44 = ptrtoint ptr %brd_no59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brd_no59, align 4
  %vpi60 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %46 = ptrtoint ptr %vpi60 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vpi60, align 4
  %conv61 = zext i16 %47 to i32
  %nlp_DID62 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %48 = ptrtoint ptr %nlp_DID62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nlp_DID62, align 8
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %remoteport.0, i32 0, i32 8
  %50 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port_state, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev57, ptr noundef nonnull @.str.75, i32 noundef %45, i32 noundef %conv61, i32 noundef %49, i32 noundef %51) #11
  br label %cleanup

do.body79:                                        ; preds = %do.end30
  %52 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cfg_log_verbose, align 4
  %and81 = and i32 %53, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.else94, label %do.end86

do.end86:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vport, align 8
  %pcidev88 = getelementptr inbounds %struct.lpfc_hba, ptr %55, i32 0, i32 165
  %56 = ptrtoint ptr %pcidev88 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcidev88, align 4
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %brd_no91 = getelementptr inbounds %struct.lpfc_hba, ptr %55, i32 0, i32 197
  %58 = ptrtoint ptr %brd_no91 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %brd_no91, align 4
  %vpi92 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %60 = ptrtoint ptr %vpi92 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vpi92, align 4
  %conv93 = zext i16 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev89, ptr noundef nonnull @.str.78, i32 noundef %59, i32 noundef %conv93) #11
  br label %cleanup

if.else94:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool96.not = icmp eq i32 %53, 0
  br i1 %tobool96.not, label %if.then97, label %if.else94.cleanup_crit_edge

if.else94.cleanup_crit_edge:                      ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then97:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vport, align 8
  %brd_no100 = getelementptr inbounds %struct.lpfc_hba, ptr %63, i32 0, i32 197
  %64 = ptrtoint ptr %brd_no100 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %brd_no100, align 4
  %vpi101 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %66 = ptrtoint ptr %vpi101 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vpi101, align 4
  %conv102 = zext i16 %67 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %63, ptr noundef nonnull @.str.78, i32 noundef %65, i32 noundef %conv102) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %if.else94.cleanup_crit_edge, %do.end86, %if.then41, %land.lhs.true.cleanup_crit_edge, %if.end35.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_fc_rescan_remoteport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvme_unregister_port(ptr nocapture noundef readonly %vport, ptr noundef %ndlp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %localport1 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 89
  %0 = ptrtoint ptr %localport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %localport1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.do.body104_crit_edge, label %if.end4

if.end.do.body104_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body104

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %nrport = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 24
  %4 = ptrtoint ptr %nrport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nrport, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.if.end11.thread_crit_edge, label %lor.lhs.false

if.end4.if.end11.thread_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.thread

lor.lhs.false:                                    ; preds = %if.end4
  %fc4_xpt_flags = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 37
  %6 = ptrtoint ptr %fc4_xpt_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc4_xpt_flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end11, label %lor.lhs.false.if.end11.thread_crit_edge

lor.lhs.false.if.end11.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %lor.lhs.false.if.end11.thread_crit_edge, %if.end4.if.end11.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %do.body104

if.end11:                                         ; preds = %lor.lhs.false
  %remoteport10 = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %remoteport10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remoteport10, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end11.do.body104_crit_edge, label %do.body

if.end11.do.body104_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body104

do.body:                                          ; preds = %if.end11
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %10 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg_log_verbose, align 4
  %and16 = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %13, i32 0, i32 165
  %14 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %13, i32 0, i32 197
  %16 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %18 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vpi, align 4
  %conv = zext i16 %19 to i32
  %port_name = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %9, i32 0, i32 3
  %20 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %port_name, align 8
  %port_id = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %9, i32 0, i32 7
  %22 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_id, align 4
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %9, i32 0, i32 8
  %24 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_state, align 8
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %26 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nlp_type, align 8
  %conv21 = zext i16 %27 to i32
  %kref = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 29
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #8
  %28 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %17, i32 noundef %conv, ptr noundef nonnull %9, i64 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %conv21, i32 noundef %29) #11
  br label %do.end40

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  br i1 %tobool23.not, label %if.then24, label %if.else.do.end40_crit_edge

if.else.do.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vport, align 8
  %brd_no27 = getelementptr inbounds %struct.lpfc_hba, ptr %31, i32 0, i32 197
  %32 = ptrtoint ptr %brd_no27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %brd_no27, align 4
  %vpi28 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %34 = ptrtoint ptr %vpi28 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vpi28, align 4
  %conv29 = zext i16 %35 to i32
  %port_name30 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %9, i32 0, i32 3
  %36 = ptrtoint ptr %port_name30 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %port_name30, align 8
  %port_id31 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %9, i32 0, i32 7
  %38 = ptrtoint ptr %port_id31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_id31, align 4
  %port_state32 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %9, i32 0, i32 8
  %40 = ptrtoint ptr %port_state32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_state32, align 8
  %nlp_type33 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %42 = ptrtoint ptr %nlp_type33 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nlp_type33, align 8
  %conv34 = zext i16 %43 to i32
  %kref35 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 29
  %call.i.i.i.i211 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref35, i32 noundef 4) #8
  %44 = ptrtoint ptr %kref35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %kref35, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %31, ptr noundef nonnull @.str.80, i32 noundef %33, i32 noundef %conv29, ptr noundef nonnull %9, i64 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %conv34, i32 noundef %45) #8
  br label %do.end40

do.end40:                                         ; preds = %if.then24, %if.else.do.end40_crit_edge, %do.end
  %nlp_type41 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 8
  %46 = ptrtoint ptr %nlp_type41 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nlp_type41, align 8
  %48 = and i16 %47, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool44.not = icmp eq i16 %48, 0
  br i1 %tobool44.not, label %do.end40.cleanup_crit_edge, label %if.then45

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %do.end40
  %49 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vport, align 8
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %50, i32 0, i32 221
  tail call void @_raw_spin_lock_irq(ptr noundef %hbalock) #8
  %51 = ptrtoint ptr %fc4_xpt_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fc4_xpt_flags, align 4
  %or = or i32 %52, 8
  store i32 %or, ptr %fc4_xpt_flags, align 4
  %53 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vport, align 8
  %hbalock49 = getelementptr inbounds %struct.lpfc_hba, ptr %54, i32 0, i32 221
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock49) #8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 41
  %55 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %load_flag, align 4
  %57 = and i8 %56, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool52.not = icmp eq i8 %57, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %if.then45.if.then59_crit_edge

if.then45.if.then59_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

lor.lhs.false53:                                  ; preds = %if.then45
  %58 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vport, align 8
  %hba_flag = getelementptr inbounds %struct.lpfc_hba, ptr %59, i32 0, i32 38
  %60 = ptrtoint ptr %hba_flag to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hba_flag, align 4
  %and55 = and i32 %61, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %lor.lhs.false53.if.end61_crit_edge, label %lor.lhs.false53.if.then59_crit_edge, !prof !374

lor.lhs.false53.if.then59_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

lor.lhs.false53.if.end61_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then59:                                        ; preds = %lor.lhs.false53.if.then59_crit_edge, %if.then45.if.then59_crit_edge
  %call60 = tail call i32 @nvme_fc_set_remoteport_devloss(ptr noundef nonnull %9, i32 noundef 0) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %lor.lhs.false53.if.end61_crit_edge
  %call62 = tail call i32 @nvme_fc_unregister_remoteport(ptr noundef nonnull %9) #8
  %62 = ptrtoint ptr %nrport to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %nrport, align 8
  %call64 = tail call i32 @lpfc_nlp_put(ptr noundef %ndlp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp.not = icmp eq i32 %call62, 0
  br i1 %cmp.not, label %if.end61.cleanup_crit_edge, label %do.body67

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %64) #8
  %65 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vport, align 8
  %pcidev81 = getelementptr inbounds %struct.lpfc_hba, ptr %66, i32 0, i32 165
  %67 = ptrtoint ptr %pcidev81 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcidev81, align 4
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %brd_no84 = getelementptr inbounds %struct.lpfc_hba, ptr %66, i32 0, i32 197
  %69 = ptrtoint ptr %brd_no84 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %brd_no84, align 4
  %vpi85 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %71 = ptrtoint ptr %vpi85 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vpi85, align 4
  %conv86 = zext i16 %72 to i32
  %port_state87 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %9, i32 0, i32 8
  %73 = ptrtoint ptr %port_state87 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port_state87, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev82, ptr noundef nonnull @.str.83, i32 noundef %70, i32 noundef %conv86, i32 noundef %call62, i32 noundef %74) #11
  br label %cleanup

do.body104:                                       ; preds = %if.end11.do.body104_crit_edge, %if.end11.thread, %if.end.do.body104_crit_edge
  %75 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %76) #8
  %77 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vport, align 8
  %pcidev118 = getelementptr inbounds %struct.lpfc_hba, ptr %78, i32 0, i32 165
  %79 = ptrtoint ptr %pcidev118 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pcidev118, align 4
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %brd_no121 = getelementptr inbounds %struct.lpfc_hba, ptr %78, i32 0, i32 197
  %81 = ptrtoint ptr %brd_no121 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %brd_no121, align 4
  %vpi122 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %83 = ptrtoint ptr %vpi122 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vpi122, align 4
  %conv123 = zext i16 %84 to i32
  %85 = ptrtoint ptr %localport1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %localport1, align 8
  %rport125 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 23
  %87 = ptrtoint ptr %rport125 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rport125, align 4
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %89 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nlp_DID, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev119, ptr noundef nonnull @.str.86, i32 noundef %82, i32 noundef %conv123, ptr noundef %86, ptr noundef %88, i32 noundef %90) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body104, %do.body67, %if.end61.cleanup_crit_edge, %do.end40.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_set_remoteport_devloss(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_unregister_remoteport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_sli4_nvme_pci_offline_aborted(ptr noundef %phba, ptr noundef %lpfc_ncmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %0 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pport, align 8
  %tobool.not = icmp eq ptr %1, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %cfg_log_verbose2 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool.not, ptr %cfg_log_verbose2, ptr %cfg_log_verbose
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %3 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %5 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %brd_no, align 4
  %7 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 20
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %iotag = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %iotag to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %iotag, align 8
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %6, ptr noundef nonnull @.str.89, ptr noundef %9, i32 noundef %conv) #11
  br label %if.end13

if.else:                                          ; preds = %entry
  %12 = ptrtoint ptr %cfg_log_verbose2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_log_verbose2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %if.then7, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %brd_no8 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %14 = ptrtoint ptr %brd_no8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brd_no8, align 4
  %16 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 20
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %iotag11 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %iotag11 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %iotag11, align 8
  %conv12 = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.88, i32 noundef %15, ptr noundef nonnull @.str.89, ptr noundef %18, i32 noundef %conv12) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.else.if.end13_crit_edge, %do.end
  %21 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 20
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %tobool17.not = icmp eq ptr %23, null
  br i1 %tobool17.not, label %if.end13.if.end21_crit_edge, label %if.then18

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %transferred_length = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %transferred_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %transferred_length, align 4
  %rcv_rsplen = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %23, i32 0, i32 15
  %25 = ptrtoint ptr %rcv_rsplen to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %rcv_rsplen, align 8
  %status = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %23, i32 0, i32 16
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 6, ptr %status, align 4
  %done = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %23, i32 0, i32 12
  %27 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %done, align 4
  tail call void %28(ptr noundef nonnull %23) #8
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %21, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end13.if.end21_crit_edge
  tail call fastcc void @lpfc_release_nvme_buf(ptr noundef %phba, ptr noundef %lpfc_ncmd)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_release_nvme_buf(ptr noundef %phba, ptr noundef %lpfc_ncmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 8
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ndlp = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 11
  %3 = ptrtoint ptr %ndlp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndlp, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_pending = getelementptr inbounds %struct.lpfc_nodelist, ptr %4, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending, ptr %cmd_pending, i32 1, ptr elementtype(i32) %cmd_pending) #8, !srcloc !375
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ndlp3 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 11
  %6 = ptrtoint ptr %ndlp3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ndlp3, align 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 8
  %9 = and i16 %8, -3
  store i16 %9, ptr %flags, align 8
  %hdwq = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 8
  %10 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdwq, align 8
  %12 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool11.not = icmp eq i16 %12, 0
  br i1 %tobool11.not, label %if.else48, label %do.body, !prof !374

do.body:                                          ; preds = %if.end
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %13 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pport, align 8
  %tobool15.not = icmp eq ptr %14, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %14, i32 0, i32 51
  %cfg_log_verbose17 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool15.not, ptr %cfg_log_verbose17, ptr %cfg_log_verbose
  %15 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond = load i32, ptr %cond.in, align 4
  %and18 = and i32 %cond, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %16 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %18 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brd_no, align 4
  %sli4_xritag = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %sli4_xritag to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sli4_xritag, align 4
  %conv22 = zext i16 %21 to i32
  %iotag = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %iotag to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %iotag, align 8
  %conv24 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.219, i32 noundef %19, i32 noundef %conv22, i32 noundef %conv24) #11
  br label %if.end36

if.else:                                          ; preds = %do.body
  %24 = ptrtoint ptr %cfg_log_verbose17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg_log_verbose17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool26.not = icmp eq i32 %25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %brd_no28 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %26 = ptrtoint ptr %brd_no28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brd_no28, align 4
  %sli4_xritag30 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 7, i32 5
  %28 = ptrtoint ptr %sli4_xritag30 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sli4_xritag30, align 4
  %conv31 = zext i16 %29 to i32
  %iotag33 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %iotag33 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %iotag33, align 8
  %conv34 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.219, i32 noundef %27, i32 noundef %conv31, i32 noundef %conv34) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.else.if.end36_crit_edge, %do.end
  %abts_io_buf_list_lock = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, ptr %11, i32 0, i32 8
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %abts_io_buf_list_lock) #8
  %lpfc_abts_io_buf_list = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, ptr %11, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, ptr %11, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i75 = tail call zeroext i1 @__list_add_valid(ptr noundef %lpfc_ncmd, ptr noundef %33, ptr noundef %lpfc_abts_io_buf_list) #8
  br i1 %call.i.i75, label %if.end.i.i, label %if.end36.list_add_tail.exit_crit_edge

if.end36.list_add_tail.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %lpfc_ncmd, ptr %prev.i, align 4
  %35 = ptrtoint ptr %lpfc_ncmd to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %lpfc_abts_io_buf_list, ptr %lpfc_ncmd, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %lpfc_ncmd, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %lpfc_ncmd, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end36.list_add_tail.exit_crit_edge
  %abts_nvme_io_bufs = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, ptr %11, i32 0, i32 15
  %38 = ptrtoint ptr %abts_nvme_io_bufs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %abts_nvme_io_bufs, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %abts_nvme_io_bufs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %abts_io_buf_list_lock, i32 noundef %call42) #8
  br label %if.end49

if.else48:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpfc_release_io_buf(ptr noundef %phba, ptr noundef %lpfc_ncmd, ptr noundef %11) #8
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %list_add_tail.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_sli4_nvme_xri_aborted(ptr noundef %phba, ptr noundef %axri, ptr noundef %lpfc_ncmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %word2 = getelementptr inbounds %struct.sli4_wcqe_xri_aborted, ptr %axri, i32 0, i32 2
  %0 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %word2, align 4
  %ndlp1 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 11
  %2 = ptrtoint ptr %ndlp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndlp1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpfc_sli4_abts_err_handler(ptr noundef %phba, ptr noundef nonnull %3, ptr noundef %axri) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %4 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pport, align 8
  %tobool2.not = icmp eq ptr %5, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 51
  %cfg_log_verbose4 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool2.not, ptr %cfg_log_verbose4, ptr %cfg_log_verbose
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load i32, ptr %cond.in, align 4
  %and5 = and i32 %cond, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %7 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %9 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brd_no, align 4
  %11 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 20
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %conv9 = and i32 %1, 65535
  %iotag = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %iotag to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %iotag, align 8
  %conv10 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.90, i32 noundef %10, ptr noundef %13, i32 noundef %conv9, i32 noundef %conv10) #11
  br label %if.end21

if.else:                                          ; preds = %do.body
  %16 = ptrtoint ptr %cfg_log_verbose4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_log_verbose4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %brd_no14 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %18 = ptrtoint ptr %brd_no14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brd_no14, align 4
  %20 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 20
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %conv16 = and i32 %1, 65535
  %iotag18 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %iotag18 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %iotag18, align 8
  %conv19 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.90, i32 noundef %19, ptr noundef %22, i32 noundef %conv16, i32 noundef %conv19) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.else.if.end21_crit_edge, %do.end
  %25 = getelementptr inbounds %struct.lpfc_io_buf, ptr %lpfc_ncmd, i32 0, i32 20
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %tobool25.not = icmp eq ptr %27, null
  br i1 %tobool25.not, label %if.end21.if.end29_crit_edge, label %if.then26

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %done = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %done, align 4
  tail call void %29(ptr noundef nonnull %27) #8
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %25, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end21.if.end29_crit_edge
  tail call fastcc void @lpfc_release_nvme_buf(ptr noundef %phba, ptr noundef %lpfc_ncmd)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli4_abts_err_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvme_wait_for_io_drain(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %0 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hdwq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 27
  %2 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdwq, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cfg_hdw_queue = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 106
  %4 = ptrtoint ptr %cfg_hdw_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg_hdw_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp163.not = icmp eq i32 %5, 0
  br i1 %cmp163.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %wait_cnt.065 = phi i32 [ 0, %for.body.lr.ph ], [ %wait_cnt.2, %for.inc.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdwq, align 8
  %io_wq = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %7, i32 %i.064, i32 2
  %8 = ptrtoint ptr %io_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_wq, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %pring11 = getelementptr inbounds %struct.lpfc_queue, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %pring11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pring11, align 8
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end6.for.inc_crit_edge, label %while.cond.preheader

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end6
  %txcmplq = getelementptr inbounds %struct.lpfc_sli_ring, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %txcmplq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %txcmplq, align 4
  %cmp.i.not61 = icmp eq ptr %13, %txcmplq
  br i1 %cmp.i.not61, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %wait_cnt.162 = phi i32 [ %inc, %if.end35.while.body_crit_edge ], [ %wait_cnt.065, %while.cond.preheader.while.body_crit_edge ]
  tail call void @msleep(i32 noundef 10) #8
  %inc = add i32 %wait_cnt.162, 1
  %rem = urem i32 %inc, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp16 = icmp eq i32 %rem, 0
  br i1 %cmp16, label %do.body, label %while.body.if.end35_crit_edge

while.body.if.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #8
  %14 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef %17, i32 noundef %inc) #11
  br label %if.end35

if.end35:                                         ; preds = %do.body, %while.body.if.end35_crit_edge
  %18 = ptrtoint ptr %txcmplq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %txcmplq, align 4
  %cmp.i.not = icmp eq ptr %19, %txcmplq
  br i1 %cmp.i.not, label %if.end35.for.inc_crit_edge, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end35.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge, %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %wait_cnt.2 = phi i32 [ %wait_cnt.065, %if.end6.for.inc_crit_edge ], [ %wait_cnt.065, %for.body.for.inc_crit_edge ], [ %wait_cnt.065, %while.cond.preheader.for.inc_crit_edge ], [ %inc, %if.end35.for.inc_crit_edge ]
  %inc36 = add nuw i32 %i.064, 1
  %20 = ptrtoint ptr %cfg_hdw_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg_hdw_queue, align 4
  %cmp1 = icmp ult i32 %inc36, %21
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @lpfc_issue_hb_tmo(ptr noundef %phba) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_issue_hb_tmo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvme_cancel_iocb(ptr noundef %phba, ptr noundef %pwqeIn, i32 noundef %stat, i32 noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %wcqe = alloca %struct.lpfc_wcqe_complete, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wcqe) #8
  %0 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %1 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %pwqeIn, i32 0, i32 18
  %2 = getelementptr inbounds i8, ptr %wcqe, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %pwqeIn) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %word7 = getelementptr inbounds %struct.lpfc_iocbq, ptr %pwqeIn, i32 0, i32 10, i32 0, i32 7
  %6 = ptrtoint ptr %word7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %word7, align 4
  %8 = and i32 %7, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %8)
  %cmp = icmp eq i32 %8, 3840
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %pwqeIn) #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %buf_lock = getelementptr inbounds %struct.lpfc_io_buf, ptr %5, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %buf_lock) #8
  %9 = getelementptr inbounds %struct.lpfc_io_buf, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool3.not = icmp eq ptr %11, null
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #8
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lpfc_release_nvme_buf(ptr noundef %phba, ptr noundef nonnull %5)
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %12 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pport, align 8
  %tobool8.not = icmp eq ptr %13, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %13, i32 0, i32 51
  %cfg_log_verbose10 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool8.not, ptr %cfg_log_verbose10, ptr %cfg_log_verbose
  %14 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond = load i32, ptr %cond.in, align 4
  %and11 = and i32 %cond, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %15 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %17 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brd_no, align 4
  %sli4_xritag = getelementptr inbounds %struct.lpfc_io_buf, ptr %5, i32 0, i32 7, i32 5
  %19 = ptrtoint ptr %sli4_xritag to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sli4_xritag, align 4
  %conv = zext i16 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %18, i32 noundef %conv) #11
  br label %if.end23

if.else:                                          ; preds = %if.end6
  %21 = ptrtoint ptr %cfg_log_verbose10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg_log_verbose10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not = icmp eq i32 %22, 0
  br i1 %tobool16.not, label %if.then17, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %brd_no18 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %23 = ptrtoint ptr %brd_no18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brd_no18, align 4
  %sli4_xritag20 = getelementptr inbounds %struct.lpfc_io_buf, ptr %5, i32 0, i32 7, i32 5
  %25 = ptrtoint ptr %sli4_xritag20 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sli4_xritag20, align 4
  %conv21 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.94, i32 noundef %24, i32 noundef %conv21) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.else.if.end23_crit_edge, %do.end
  %and26 = shl i32 %stat, 8
  %shl = and i32 %and26, 65280
  %27 = ptrtoint ptr %wcqe to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl, ptr %wcqe, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %param, ptr %0, align 4
  %sli_flag = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 1
  %29 = ptrtoint ptr %sli_flag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sli_flag, align 4
  %and30 = shl i32 %30, 19
  %31 = and i32 %and30, 268435456
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %1, align 4
  %wqe_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %pwqeIn, i32 0, i32 27
  %33 = ptrtoint ptr %wqe_cmpl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wqe_cmpl, align 4
  call void %34(ptr noundef %phba, ptr noundef %pwqeIn, ptr noundef nonnull %wcqe) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wcqe) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_sli_get_iocbq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli4_issue_wqe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvme_localport_delete(ptr nocapture noundef readonly %localport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %localport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %4 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vpi, align 4
  %conv = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.105, i32 noundef %11, i32 noundef %conv, ptr noundef %1) #11
  br label %do.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.do.end20_crit_edge

if.else.do.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %brd_no14 = getelementptr inbounds %struct.lpfc_hba, ptr %15, i32 0, i32 197
  %16 = ptrtoint ptr %brd_no14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brd_no14, align 4
  %vpi16 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %vpi16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vpi16, align 4
  %conv17 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %15, ptr noundef nonnull @.str.105, i32 noundef %17, i32 noundef %conv17, ptr noundef %1) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then9, %if.else.do.end20_crit_edge, %do.end
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %localport22 = getelementptr inbounds %struct.lpfc_vport, ptr %21, i32 0, i32 89
  %22 = ptrtoint ptr %localport22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %localport22, align 8
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %do.end20.if.end25_crit_edge, label %if.then24

do.end20.if.end25_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  %lport_unreg_cmp = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %lport_unreg_cmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lport_unreg_cmp, align 4
  tail call void @complete(ptr noundef %25) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %do.end20.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvme_remoteport_delete(ptr noundef %remoteport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %remoteport, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ndlp1 = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ndlp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndlp1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, ptr noundef %1, ptr noundef %remoteport) #11
  br label %rport_err

if.end:                                           ; preds = %entry
  %vport2 = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %vport2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vport2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlp_state, align 2
  %conv = zext i16 %7 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.108, ptr noundef nonnull %3, i32 noundef %conv, ptr noundef %1) #11
  br label %rport_err

if.end10:                                         ; preds = %if.end
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 51
  %8 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %11, i32 0, i32 165
  %12 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %11, i32 0, i32 197
  %14 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vpi, align 4
  %conv18 = zext i16 %17 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlp_DID, align 8
  %fc4_xpt_flags19 = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 37
  %20 = ptrtoint ptr %fc4_xpt_flags19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fc4_xpt_flags19, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.113, i32 noundef %15, i32 noundef %conv18, ptr noundef %remoteport, ptr noundef nonnull %3, i32 noundef %19, i32 noundef %21) #11
  br label %do.end33

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool21.not = icmp eq i32 %9, 0
  br i1 %tobool21.not, label %if.then22, label %if.else.do.end33_crit_edge

if.else.do.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 8
  %brd_no25 = getelementptr inbounds %struct.lpfc_hba, ptr %23, i32 0, i32 197
  %24 = ptrtoint ptr %brd_no25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brd_no25, align 4
  %vpi26 = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %vpi26 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vpi26, align 4
  %conv27 = zext i16 %27 to i32
  %nlp_DID28 = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %nlp_DID28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlp_DID28, align 8
  %fc4_xpt_flags29 = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 37
  %30 = ptrtoint ptr %fc4_xpt_flags29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fc4_xpt_flags29, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %23, ptr noundef nonnull @.str.113, i32 noundef %25, i32 noundef %conv27, ptr noundef %remoteport, ptr noundef nonnull %3, i32 noundef %29, i32 noundef %31) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then22, %if.else.do.end33_crit_edge, %do.end16
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %fc4_xpt_flags34 = getelementptr inbounds %struct.lpfc_nodelist, ptr %3, i32 0, i32 37
  %32 = ptrtoint ptr %fc4_xpt_flags34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fc4_xpt_flags34, align 4
  %and35 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.end33.if.end40_crit_edge, label %if.then37

do.end33.if.end40_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then37:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  %and39 = and i32 %33, -13
  %34 = ptrtoint ptr %fc4_xpt_flags34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and39, ptr %fc4_xpt_flags34, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %do.end33.if.end40_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %35 = ptrtoint ptr %fc4_xpt_flags34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fc4_xpt_flags34, align 4
  %and43 = and i32 %36, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end40.rport_err_crit_edge

if.end40.rport_err_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %rport_err

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 @lpfc_disc_state_machine(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef null, i32 noundef 11) #8
  br label %rport_err

rport_err:                                        ; preds = %if.then45, %if.end40.rport_err_crit_edge, %do.end7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_nvme_create_queue(ptr nocapture noundef readonly %pnvme_lport, i32 noundef %qidx, i16 noundef zeroext %qsize, ptr nocapture noundef writeonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %pnvme_lport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = tail call i32 @llvm.read_register.i32(metadata !362) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %cpu_id = getelementptr inbounds %struct.lpfc_nvme_qhandle, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %cpu_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cpu_id, align 8
  %qidx6 = getelementptr inbounds %struct.lpfc_nvme_qhandle, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %qidx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %qidx, ptr %qidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qidx)
  %tobool7.not = icmp eq i32 %qidx, 0
  br i1 %tobool7.not, label %if.end4.do.body_crit_edge, label %if.then8

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %qidx, -1
  %11 = load i32, ptr getelementptr inbounds (%struct.nvme_fc_port_template, ptr @lpfc_nvme_template, i32 0, i32 10), align 8
  %rem = urem i32 %sub, %11
  br label %do.body

do.body:                                          ; preds = %if.then8, %if.end4.do.body_crit_edge
  %storemerge = phi i32 [ %rem, %if.then8 ], [ 0, %if.end4.do.body_crit_edge ]
  %str.0 = phi ptr [ @.str.115, %if.then8 ], [ @.str.116, %if.end4.do.body_crit_edge ]
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %call7.i.i, align 8
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %13 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else17, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %16, i32 0, i32 165
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %16, i32 0, i32 197
  %19 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vpi, align 4
  %conv = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.117, i32 noundef %20, i32 noundef %conv, ptr noundef nonnull %str.0, i32 noundef %qidx, i32 noundef %8, i32 noundef %storemerge, ptr noundef nonnull %call7.i.i) #11
  br label %do.end31

if.else17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %if.then20, label %if.else17.do.end31_crit_edge

if.else17.do.end31_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %brd_no23 = getelementptr inbounds %struct.lpfc_hba, ptr %24, i32 0, i32 197
  %25 = ptrtoint ptr %brd_no23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %brd_no23, align 4
  %vpi24 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %vpi24 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vpi24, align 4
  %conv25 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %24, ptr noundef nonnull @.str.117, i32 noundef %26, i32 noundef %conv25, ptr noundef nonnull %str.0, i32 noundef %qidx, i32 noundef %8, i32 noundef %storemerge, ptr noundef nonnull %call7.i.i) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then20, %if.else17.do.end31_crit_edge, %do.end
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end31 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvme_delete_queue(ptr nocapture noundef readonly %pnvme_lport, i32 noundef %qidx, ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %pnvme_lport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %4 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vpi, align 4
  %conv = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.119, i32 noundef %11, i32 noundef %conv, ptr noundef nonnull %1, i32 noundef %qidx, ptr noundef %handle) #11
  br label %do.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.do.end18_crit_edge

if.else.do.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %brd_no12 = getelementptr inbounds %struct.lpfc_hba, ptr %15, i32 0, i32 197
  %16 = ptrtoint ptr %brd_no12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brd_no12, align 4
  %vpi13 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %vpi13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vpi13, align 4
  %conv14 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %15, ptr noundef nonnull @.str.119, i32 noundef %17, i32 noundef %conv14, ptr noundef nonnull %1, i32 noundef %qidx, ptr noundef %handle) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then9, %if.else.do.end18_crit_edge, %do.end
  tail call void @kfree(ptr noundef %handle) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_nvme_ls_req(ptr nocapture noundef readonly %pnvme_lport, ptr nocapture noundef readonly %pnvme_rport, ptr noundef %pnvme_lsreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %pnvme_lport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %private1 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %pnvme_rport, i32 0, i32 5
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool5.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end, !prof !376

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %load_flag, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not = icmp eq i8 %8, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %fc4NvmeLsRequests = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fc4NvmeLsRequests, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %fc4NvmeLsRequests, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fc4NvmeLsRequests, ptr %fc4NvmeLsRequests, i32 1, ptr elementtype(i32) %fc4NvmeLsRequests) #8, !srcloc !377
  %ndlp = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %ndlp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndlp, align 4
  %call = tail call i32 @__lpfc_nvme_ls_req(ptr noundef %5, ptr noundef %11, ptr noundef %pnvme_lsreq, ptr noundef nonnull @lpfc_nvme_ls_req_cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %xmt_ls_err = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 11
  %call.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_err, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_err, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_err, ptr %xmt_ls_err, i32 1, ptr elementtype(i32) %xmt_ls_err) #8, !srcloc !377
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call, %if.then19 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_nvme_fcp_io_submit(ptr nocapture noundef readonly %pnvme_lport, ptr nocapture noundef readonly %pnvme_rport, ptr noundef readonly %hw_queue_handle, ptr noundef %pnvme_fcreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %pnvme_lport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !373

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool5.not = icmp eq ptr %hw_queue_handle, null
  br i1 %tobool5.not, label %do.body, label %if.end32, !prof !373

do.body:                                          ; preds = %if.end
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %4 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vpi, align 4
  %conv = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.121, i32 noundef %11, i32 noundef %conv) #11
  br label %do.end31

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool21.not = icmp eq i32 %5, 0
  br i1 %tobool21.not, label %if.then22, label %if.else.do.end31_crit_edge

if.else.do.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %brd_no25 = getelementptr inbounds %struct.lpfc_hba, ptr %15, i32 0, i32 197
  %16 = ptrtoint ptr %brd_no25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brd_no25, align 4
  %vpi26 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %vpi26 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vpi26, align 4
  %conv27 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %15, ptr noundef nonnull @.str.121, i32 noundef %17, i32 noundef %conv27) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then22, %if.else.do.end31_crit_edge, %do.end
  %xmt_fcp_err = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_err, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_err, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_err, ptr %xmt_fcp_err, i32 1, ptr elementtype(i32) %xmt_fcp_err) #8, !srcloc !377
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 41
  %23 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %load_flag, align 4
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool36.not = icmp eq i8 %25, 0
  br i1 %tobool36.not, label %if.end73, label %do.body44, !prof !374

do.body44:                                        ; preds = %if.end32
  %cfg_log_verbose45 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %26 = ptrtoint ptr %cfg_log_verbose45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cfg_log_verbose45, align 4
  %and46 = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else59, label %do.end51

do.end51:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev53 = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 165
  %28 = ptrtoint ptr %pcidev53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcidev53, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %brd_no56 = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 197
  %30 = ptrtoint ptr %brd_no56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brd_no56, align 4
  %vpi57 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %32 = ptrtoint ptr %vpi57 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vpi57, align 4
  %conv58 = zext i16 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev54, ptr noundef nonnull @.str.124, i32 noundef %31, i32 noundef %conv58) #11
  br label %do.end71

if.else59:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool61.not = icmp eq i32 %27, 0
  br i1 %tobool61.not, label %if.then62, label %if.else59.do.end71_crit_edge

if.else59.do.end71_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

if.then62:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #10
  %brd_no65 = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 197
  %34 = ptrtoint ptr %brd_no65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %brd_no65, align 4
  %vpi66 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %36 = ptrtoint ptr %vpi66 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vpi66, align 4
  %conv67 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %22, ptr noundef nonnull @.str.124, i32 noundef %35, i32 noundef %conv67) #8
  br label %do.end71

do.end71:                                         ; preds = %if.then62, %if.else59.do.end71_crit_edge, %do.end51
  %xmt_fcp_err72 = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 8
  %call.i.i771 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_err72, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_err72, i32 1, i32 3, i32 1) #8
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_err72, ptr %xmt_fcp_err72, i32 1, ptr elementtype(i32) %xmt_fcp_err72) #8, !srcloc !377
  br label %cleanup

if.end73:                                         ; preds = %if.end32
  %private74 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 13
  %39 = ptrtoint ptr %private74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private74, align 8
  %tobool75.not = icmp eq ptr %40, null
  br i1 %tobool75.not, label %do.body85, label %if.end114, !prof !373

do.body85:                                        ; preds = %if.end73
  %cfg_log_verbose86 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %41 = ptrtoint ptr %cfg_log_verbose86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cfg_log_verbose86, align 4
  %and87 = and i32 %42, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.else100, label %do.end92

do.end92:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev94 = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 165
  %43 = ptrtoint ptr %pcidev94 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcidev94, align 4
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %brd_no97 = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 197
  %45 = ptrtoint ptr %brd_no97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %brd_no97, align 4
  %vpi98 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %47 = ptrtoint ptr %vpi98 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vpi98, align 4
  %conv99 = zext i16 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev95, ptr noundef nonnull @.str.127, i32 noundef %46, i32 noundef %conv99) #11
  br label %do.end112

if.else100:                                       ; preds = %do.body85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool102.not = icmp eq i32 %42, 0
  br i1 %tobool102.not, label %if.then103, label %if.else100.do.end112_crit_edge

if.else100.do.end112_crit_edge:                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end112

if.then103:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #10
  %brd_no106 = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 197
  %49 = ptrtoint ptr %brd_no106 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %brd_no106, align 4
  %vpi107 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %51 = ptrtoint ptr %vpi107 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vpi107, align 4
  %conv108 = zext i16 %52 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %22, ptr noundef nonnull @.str.127, i32 noundef %50, i32 noundef %conv108) #8
  br label %do.end112

do.end112:                                        ; preds = %if.then103, %if.else100.do.end112_crit_edge, %do.end92
  %xmt_fcp_err113 = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 8
  %call.i.i772 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_err113, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_err113, i32 1, i32 3, i32 1) #8
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_err113, ptr %xmt_fcp_err113, i32 1, ptr elementtype(i32) %xmt_fcp_err113) #8, !srcloc !377
  br label %cleanup

if.end114:                                        ; preds = %if.end73
  %ktime_on = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 349
  %54 = ptrtoint ptr %ktime_on to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ktime_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool115.not = icmp eq i16 %55, 0
  br i1 %tobool115.not, label %if.end114.if.end117_crit_edge, label %if.then116

if.end114.if.end117_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i64 @ktime_get() #8
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end114.if.end117_crit_edge
  %start.0 = phi i64 [ %call.i, %if.then116 ], [ 0, %if.end114.if.end117_crit_edge ]
  %private118 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %pnvme_rport, i32 0, i32 5
  %56 = ptrtoint ptr %private118 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %private118, align 4
  %ndlp119 = getelementptr inbounds %struct.lpfc_nvme_rport, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %ndlp119 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ndlp119, align 4
  %tobool120.not = icmp eq ptr %59, null
  br i1 %tobool120.not, label %do.body122, label %if.end152

do.body122:                                       ; preds = %if.end117
  %cfg_log_verbose123 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %60 = ptrtoint ptr %cfg_log_verbose123 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cfg_log_verbose123, align 4
  %and124 = and i32 %61, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.else137, label %do.end129

do.end129:                                        ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 8
  %pcidev131 = getelementptr inbounds %struct.lpfc_hba, ptr %63, i32 0, i32 165
  %64 = ptrtoint ptr %pcidev131 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcidev131, align 4
  %dev132 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %brd_no134 = getelementptr inbounds %struct.lpfc_hba, ptr %63, i32 0, i32 197
  %66 = ptrtoint ptr %brd_no134 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %brd_no134, align 4
  %vpi135 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %68 = ptrtoint ptr %vpi135 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vpi135, align 4
  %conv136 = zext i16 %69 to i32
  %port_id = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %pnvme_rport, i32 0, i32 7
  %70 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port_id, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev132, ptr noundef nonnull @.str.130, i32 noundef %67, i32 noundef %conv136, ptr noundef %57, ptr noundef null, i32 noundef %71) #11
  br label %do.end150

if.else137:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool139.not = icmp eq i32 %61, 0
  br i1 %tobool139.not, label %if.then140, label %if.else137.do.end150_crit_edge

if.else137.do.end150_crit_edge:                   ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end150

if.then140:                                       ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 8
  %brd_no143 = getelementptr inbounds %struct.lpfc_hba, ptr %73, i32 0, i32 197
  %74 = ptrtoint ptr %brd_no143 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %brd_no143, align 4
  %vpi144 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %76 = ptrtoint ptr %vpi144 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vpi144, align 4
  %conv145 = zext i16 %77 to i32
  %port_id146 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %pnvme_rport, i32 0, i32 7
  %78 = ptrtoint ptr %port_id146 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port_id146, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %73, ptr noundef nonnull @.str.130, i32 noundef %75, i32 noundef %conv145, ptr noundef %57, ptr noundef null, i32 noundef %79) #8
  br label %do.end150

do.end150:                                        ; preds = %if.then140, %if.else137.do.end150_crit_edge, %do.end129
  %xmt_fcp_err151 = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 8
  %call.i.i773 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_err151, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_err151, i32 1, i32 3, i32 1) #8
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_err151, ptr %xmt_fcp_err151, i32 1, ptr elementtype(i32) %xmt_fcp_err151) #8, !srcloc !377
  br label %cleanup

if.end152:                                        ; preds = %if.end117
  %nlp_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 8
  %81 = ptrtoint ptr %nlp_type to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %nlp_type, align 8
  %conv153 = zext i16 %82 to i32
  %and154 = and i32 %conv153, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end152.if.end198_crit_edge, label %land.lhs.true

if.end152.if.end198_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

land.lhs.true:                                    ; preds = %if.end152
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 11
  %83 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %nlp_state, align 2
  %conv156 = zext i16 %84 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %84)
  %cmp.not = icmp eq i16 %84, 7
  br i1 %cmp.not, label %land.lhs.true.if.end198_crit_edge, label %do.body159

land.lhs.true.if.end198_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

do.body159:                                       ; preds = %land.lhs.true
  %cfg_log_verbose160 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %85 = ptrtoint ptr %cfg_log_verbose160 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cfg_log_verbose160, align 4
  %and161 = and i32 %86, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.else179, label %do.end166

do.end166:                                        ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %3, align 8
  %pcidev168 = getelementptr inbounds %struct.lpfc_hba, ptr %88, i32 0, i32 165
  %89 = ptrtoint ptr %pcidev168 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcidev168, align 4
  %dev169 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %brd_no171 = getelementptr inbounds %struct.lpfc_hba, ptr %88, i32 0, i32 197
  %91 = ptrtoint ptr %brd_no171 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %brd_no171, align 4
  %vpi172 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %93 = ptrtoint ptr %vpi172 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %vpi172, align 4
  %conv173 = zext i16 %94 to i32
  %port_id174 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %pnvme_rport, i32 0, i32 7
  %95 = ptrtoint ptr %port_id174 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port_id174, align 4
  %fc4_xpt_flags = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 37
  %97 = ptrtoint ptr %fc4_xpt_flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fc4_xpt_flags, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev169, ptr noundef nonnull @.str.133, i32 noundef %92, i32 noundef %conv173, i32 noundef %96, i32 noundef %conv156, i32 noundef %conv153, i32 noundef %98) #11
  br label %do.end197

if.else179:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool181.not = icmp eq i32 %86, 0
  br i1 %tobool181.not, label %if.then182, label %if.else179.do.end197_crit_edge

if.else179.do.end197_crit_edge:                   ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end197

if.then182:                                       ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %3, align 8
  %brd_no185 = getelementptr inbounds %struct.lpfc_hba, ptr %100, i32 0, i32 197
  %101 = ptrtoint ptr %brd_no185 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %brd_no185, align 4
  %vpi186 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %103 = ptrtoint ptr %vpi186 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %vpi186, align 4
  %conv187 = zext i16 %104 to i32
  %port_id188 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %pnvme_rport, i32 0, i32 7
  %105 = ptrtoint ptr %port_id188 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port_id188, align 4
  %fc4_xpt_flags193 = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 37
  %107 = ptrtoint ptr %fc4_xpt_flags193 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fc4_xpt_flags193, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %100, ptr noundef nonnull @.str.133, i32 noundef %102, i32 noundef %conv187, i32 noundef %106, i32 noundef %conv156, i32 noundef %conv153, i32 noundef %108) #8
  br label %do.end197

do.end197:                                        ; preds = %if.then182, %if.else179.do.end197_crit_edge, %do.end166
  %xmt_fcp_bad_ndlp = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 5
  %call.i.i774 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_bad_ndlp, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_bad_ndlp, i32 1, i32 3, i32 1) #8
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_bad_ndlp, ptr %xmt_fcp_bad_ndlp, i32 1, ptr elementtype(i32) %xmt_fcp_bad_ndlp) #8, !srcloc !377
  br label %cleanup

if.end198:                                        ; preds = %land.lhs.true.if.end198_crit_edge, %if.end152.if.end198_crit_edge
  %qidx = getelementptr inbounds %struct.lpfc_nvme_qhandle, ptr %hw_queue_handle, i32 0, i32 1
  %110 = ptrtoint ptr %qidx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %qidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool199.not = icmp eq i32 %111, 0
  br i1 %tobool199.not, label %land.lhs.true200, label %if.end198.if.end209_crit_edge

if.end198.if.end209_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

land.lhs.true200:                                 ; preds = %if.end198
  %sg_cnt = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 9
  %112 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sg_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool201.not = icmp eq i32 %113, 0
  br i1 %tobool201.not, label %if.then202, label %land.lhs.true200.if.end209_crit_edge

land.lhs.true200.if.end209_crit_edge:             ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.then202:                                       ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %pnvme_fcreq to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pnvme_fcreq, align 8
  %sqe203 = getelementptr inbounds %struct.nvme_fc_cmd_iu, ptr %115, i32 0, i32 9
  %116 = ptrtoint ptr %sqe203 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sqe203, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %117)
  %cmp205 = icmp eq i8 %117, 24
  %not.cmp205 = xor i1 %cmp205, true
  %spec.select770 = zext i1 %cmp205 to i32
  br label %if.end209

if.end209:                                        ; preds = %if.then202, %land.lhs.true200.if.end209_crit_edge, %if.end198.if.end209_crit_edge
  %tobool234.not = phi i1 [ true, %land.lhs.true200.if.end209_crit_edge ], [ true, %if.end198.if.end209_crit_edge ], [ %not.cmp205, %if.then202 ]
  %expedite.0 = phi i32 [ 0, %land.lhs.true200.if.end209_crit_edge ], [ 0, %if.end198.if.end209_crit_edge ], [ %spec.select770, %if.then202 ]
  %cmf_active_mode = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 394
  %118 = ptrtoint ptr %cmf_active_mode to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cmf_active_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp210.not = icmp eq i32 %119, 0
  br i1 %cmp210.not, label %if.end209.if.end224_crit_edge, label %land.lhs.true212

if.end209.if.end224_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

land.lhs.true212:                                 ; preds = %if.end209
  %io_dir = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 10
  %120 = ptrtoint ptr %io_dir to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %io_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp213 = icmp eq i32 %121, 2
  br i1 %cmp213, label %land.lhs.true215, label %land.lhs.true212.if.end224_crit_edge

land.lhs.true212.if.end224_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

land.lhs.true215:                                 ; preds = %land.lhs.true212
  %payload_length = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 6
  %122 = ptrtoint ptr %payload_length to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %payload_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool216.not = icmp eq i32 %123, 0
  br i1 %tobool216.not, label %land.lhs.true215.if.end224_crit_edge, label %if.then217

land.lhs.true215.if.end224_crit_edge:             ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.then217:                                       ; preds = %land.lhs.true215
  %call219 = tail call i32 @lpfc_update_cmf_cmd(ptr noundef %22, i32 noundef %123) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %if.then217.cleanup_crit_edge

if.then217.cleanup_crit_edge:                     ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end222:                                        ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #10
  %call.i782 = tail call i64 @ktime_get() #8
  br label %if.end224

if.end224:                                        ; preds = %if.end222, %land.lhs.true215.if.end224_crit_edge, %land.lhs.true212.if.end224_crit_edge, %if.end209.if.end224_crit_edge
  %start.1 = phi i64 [ %call.i782, %if.end222 ], [ %start.0, %land.lhs.true215.if.end224_crit_edge ], [ %start.0, %land.lhs.true212.if.end224_crit_edge ], [ %start.0, %if.end209.if.end224_crit_edge ]
  %cmd_qdepth = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 31
  %124 = ptrtoint ptr %cmd_qdepth to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cmd_qdepth, align 4
  %max_cfg_param = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 25, i32 60
  %126 = ptrtoint ptr %max_cfg_param to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %max_cfg_param, align 4
  %conv225 = zext i16 %127 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %conv225)
  %cmp226 = icmp ult i32 %125, %conv225
  br i1 %cmp226, label %if.then228, label %if.end224.if.end273_crit_edge

if.end224.if.end273_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

if.then228:                                       ; preds = %if.end224
  %cmd_pending = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 30
  %call.i.i775 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending, i32 noundef 4) #8
  %128 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %cmd_pending, align 4
  %130 = ptrtoint ptr %cmd_qdepth to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cmd_qdepth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %131)
  %cmp231.not = icmp ult i32 %129, %131
  %tobool234.not.not = xor i1 %tobool234.not, true
  %brmerge = select i1 %cmp231.not, i1 true, i1 %tobool234.not.not
  br i1 %brmerge, label %if.then228.if.end273_crit_edge, label %do.body236

if.then228.if.end273_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

do.body236:                                       ; preds = %if.then228
  %cfg_log_verbose237 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %132 = ptrtoint ptr %cfg_log_verbose237 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cfg_log_verbose237, align 4
  %and238 = and i32 %133, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %tobool239.not = icmp eq i32 %and238, 0
  br i1 %tobool239.not, label %if.else254, label %do.end243

do.end243:                                        ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %3, align 8
  %pcidev245 = getelementptr inbounds %struct.lpfc_hba, ptr %135, i32 0, i32 165
  %136 = ptrtoint ptr %pcidev245 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pcidev245, align 4
  %dev246 = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 44
  %brd_no248 = getelementptr inbounds %struct.lpfc_hba, ptr %135, i32 0, i32 197
  %138 = ptrtoint ptr %brd_no248 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %brd_no248, align 4
  %vpi249 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %140 = ptrtoint ptr %vpi249 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %vpi249, align 4
  %conv250 = zext i16 %141 to i32
  %142 = ptrtoint ptr %hw_queue_handle to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %hw_queue_handle, align 4
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 6
  %144 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nlp_DID, align 8
  %call.i.i776 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending, i32 noundef 4) #8
  %146 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %cmd_pending, align 4
  %148 = ptrtoint ptr %cmd_qdepth to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cmd_qdepth, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev246, ptr noundef nonnull @.str.136, i32 noundef %139, i32 noundef %conv250, i32 noundef %143, i32 noundef %145, i32 noundef %147, i32 noundef %149) #11
  br label %do.end271

if.else254:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool256.not = icmp eq i32 %133, 0
  br i1 %tobool256.not, label %if.then257, label %if.else254.do.end271_crit_edge

if.else254.do.end271_crit_edge:                   ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end271

if.then257:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %3, align 8
  %brd_no260 = getelementptr inbounds %struct.lpfc_hba, ptr %151, i32 0, i32 197
  %152 = ptrtoint ptr %brd_no260 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %brd_no260, align 4
  %vpi261 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %154 = ptrtoint ptr %vpi261 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %vpi261, align 4
  %conv262 = zext i16 %155 to i32
  %156 = ptrtoint ptr %hw_queue_handle to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %hw_queue_handle, align 4
  %nlp_DID264 = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 6
  %158 = ptrtoint ptr %nlp_DID264 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %nlp_DID264, align 8
  %call.i.i777 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending, i32 noundef 4) #8
  %160 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %cmd_pending, align 4
  %162 = ptrtoint ptr %cmd_qdepth to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cmd_qdepth, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %151, ptr noundef nonnull @.str.136, i32 noundef %153, i32 noundef %conv262, i32 noundef %157, i32 noundef %159, i32 noundef %161, i32 noundef %163) #8
  br label %do.end271

do.end271:                                        ; preds = %if.then257, %if.else254.do.end271_crit_edge, %do.end243
  %xmt_fcp_qdepth = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 6
  %call.i.i778 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_qdepth, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_qdepth, i32 1, i32 3, i32 1) #8
  %164 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_qdepth, ptr %xmt_fcp_qdepth, i32 1, ptr elementtype(i32) %xmt_fcp_qdepth) #8, !srcloc !377
  br label %out_fail1

if.end273:                                        ; preds = %if.then228.if.end273_crit_edge, %if.end224.if.end273_crit_edge
  %cfg_fcp_io_sched = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 87
  %165 = ptrtoint ptr %cfg_fcp_io_sched to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cfg_fcp_io_sched, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp274 = icmp eq i32 %166, 0
  br i1 %cmp274, label %if.then276, label %if.else278

if.then276:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %hw_queue_handle to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %hw_queue_handle, align 4
  br label %if.end283

if.else278:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  %169 = tail call i32 @llvm.read_register.i32(metadata !362) #8
  %and.i = and i32 %169, -16384
  %170 = inttoptr i32 %and.i to ptr
  %cpu280 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %cpu280 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %cpu280, align 4
  %cpu_map = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 25, i32 113
  %173 = ptrtoint ptr %cpu_map to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %cpu_map, align 4
  %hdwq = getelementptr %struct.lpfc_vector_map_info, ptr %174, i32 %172, i32 3
  %175 = ptrtoint ptr %hdwq to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %hdwq, align 2
  %conv282 = zext i16 %176 to i32
  br label %if.end283

if.end283:                                        ; preds = %if.else278, %if.then276
  %idx.0 = phi i32 [ %168, %if.then276 ], [ %conv282, %if.else278 ]
  %call.i783 = tail call ptr @lpfc_get_io_buf(ptr noundef %22, ptr noundef null, i32 noundef %idx.0, i32 noundef %expedite.0) #8
  %tobool.not.i = icmp eq ptr %call.i783, null
  br i1 %tobool.not.i, label %if.then287, label %if.then.i

if.then.i:                                        ; preds = %if.end283
  %wqe1.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10
  %iocb_flag.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 15
  %177 = ptrtoint ptr %iocb_flag.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 2097152, ptr %iocb_flag.i, align 4
  %wqe_cmpl.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 27
  %178 = ptrtoint ptr %wqe_cmpl.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @lpfc_nvme_io_cmd_wqe_cmpl, ptr %wqe_cmpl.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %179 = load volatile i32, ptr @jiffies, align 128
  %start_time.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 17
  %180 = ptrtoint ptr %start_time.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %start_time.i, align 4
  %flags.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 13
  %181 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i, align 8
  %dma_sgl.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 4
  %182 = ptrtoint ptr %dma_sgl.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dma_sgl.i, align 4
  %word2.i = getelementptr inbounds %struct.sli4_sge, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %word2.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %word2.i, align 4
  %and.i784 = and i32 %185, 134217727
  %or.i = or i32 %and.i784, 1610612736
  %186 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %187 = ptrtoint ptr %word2.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %word2.i, align 4
  %188 = call ptr @memset(ptr %wqe1.i, i32 0, i32 64)
  %189 = ptrtoint ptr %cmd_qdepth to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cmd_qdepth, align 4
  %191 = ptrtoint ptr %max_cfg_param to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %max_cfg_param, align 4
  %conv.i = zext i16 %192 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %conv.i)
  %cmp.i = icmp ult i32 %190, %conv.i
  br i1 %cmp.i, label %if.then10.i, label %if.then.i.if.end320_crit_edge

if.then.i.if.end320_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end320

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_pending.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending.i, i32 1, i32 3, i32 1) #8
  %193 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending.i, ptr %cmd_pending.i, i32 1, ptr elementtype(i32) %cmd_pending.i) #8, !srcloc !377
  %194 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %flags.i, align 8
  %196 = or i16 %195, 2
  store i16 %196, ptr %flags.i, align 8
  br label %if.end320

if.then287:                                       ; preds = %if.end283
  %hdwq.i = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 25, i32 27
  %197 = ptrtoint ptr %hdwq.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hdwq.i, align 8
  %empty_io_bufs.i = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %198, i32 %idx.0, i32 13
  %199 = ptrtoint ptr %empty_io_bufs.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %empty_io_bufs.i, align 4
  %inc.i = add i32 %200, 1
  store i32 %inc.i, ptr %empty_io_bufs.i, align 4
  %xmt_fcp_noxri = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 4
  %call.i.i779 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_noxri, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_noxri, i32 1, i32 3, i32 1) #8
  %201 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_noxri, ptr %xmt_fcp_noxri, i32 1, ptr elementtype(i32) %xmt_fcp_noxri) #8, !srcloc !377
  %cfg_log_verbose289 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %202 = ptrtoint ptr %cfg_log_verbose289 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cfg_log_verbose289, align 4
  %and290 = and i32 %203, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %tobool291.not = icmp eq i32 %and290, 0
  br i1 %tobool291.not, label %if.else305, label %do.end295

do.end295:                                        ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #10
  %204 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %3, align 8
  %pcidev297 = getelementptr inbounds %struct.lpfc_hba, ptr %205, i32 0, i32 165
  %206 = ptrtoint ptr %pcidev297 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %pcidev297, align 4
  %dev298 = getelementptr inbounds %struct.pci_dev, ptr %207, i32 0, i32 44
  %brd_no300 = getelementptr inbounds %struct.lpfc_hba, ptr %205, i32 0, i32 197
  %208 = ptrtoint ptr %brd_no300 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %brd_no300, align 4
  %vpi301 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %210 = ptrtoint ptr %vpi301 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %vpi301, align 4
  %conv302 = zext i16 %211 to i32
  %212 = ptrtoint ptr %hw_queue_handle to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %hw_queue_handle, align 4
  %nlp_DID304 = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 6
  %214 = ptrtoint ptr %nlp_DID304 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %nlp_DID304, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev298, ptr noundef nonnull @.str.139, i32 noundef %209, i32 noundef %conv302, i32 noundef %213, i32 noundef %215) #11
  br label %out_fail1

if.else305:                                       ; preds = %if.then287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool307.not = icmp eq i32 %203, 0
  br i1 %tobool307.not, label %if.then308, label %if.else305.out_fail1_crit_edge

if.else305.out_fail1_crit_edge:                   ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_fail1

if.then308:                                       ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #10
  %216 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %3, align 8
  %brd_no311 = getelementptr inbounds %struct.lpfc_hba, ptr %217, i32 0, i32 197
  %218 = ptrtoint ptr %brd_no311 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %brd_no311, align 4
  %vpi312 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %220 = ptrtoint ptr %vpi312 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %vpi312, align 4
  %conv313 = zext i16 %221 to i32
  %222 = ptrtoint ptr %hw_queue_handle to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %hw_queue_handle, align 4
  %nlp_DID315 = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 6
  %224 = ptrtoint ptr %nlp_DID315 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %nlp_DID315, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %217, ptr noundef nonnull @.str.139, i32 noundef %219, i32 noundef %conv313, i32 noundef %223, i32 noundef %225) #8
  br label %out_fail1

if.end320:                                        ; preds = %if.then10.i, %if.then.i.if.end320_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start.1)
  %tobool321.not = icmp eq i64 %start.1, 0
  %ts_cmd_start324 = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 21
  br i1 %tobool321.not, label %if.else323, label %if.then322

if.then322:                                       ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #10
  %226 = ptrtoint ptr %ts_cmd_start324 to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 %start.1, ptr %ts_cmd_start324, align 8
  %ktime_last_cmd = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 352
  %227 = ptrtoint ptr %ktime_last_cmd to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %ktime_last_cmd, align 8
  %ts_last_cmd = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 22
  %229 = ptrtoint ptr %ts_last_cmd to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 %228, ptr %ts_last_cmd, align 8
  br label %if.end325

if.else323:                                       ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #10
  %230 = ptrtoint ptr %ts_cmd_start324 to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 0, ptr %ts_cmd_start324, align 8
  br label %if.end325

if.end325:                                        ; preds = %if.else323, %if.then322
  %rx_cmd_start = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 26
  %231 = ptrtoint ptr %rx_cmd_start to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 %start.1, ptr %rx_cmd_start, align 8
  %232 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call.i783, ptr %40, align 4
  %233 = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 20
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %pnvme_fcreq, ptr %233, align 8
  %ndlp326 = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 11
  %235 = ptrtoint ptr %ndlp326 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %59, ptr %ndlp326, align 8
  %236 = ptrtoint ptr %qidx to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %qidx, align 4
  %conv328 = trunc i32 %237 to i16
  %qidx329 = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 20, i32 0, i32 1
  %238 = ptrtoint ptr %qidx329 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %conv328, ptr %qidx329, align 4
  %conv330 = trunc i32 %idx.0 to i16
  %cur_iocbq = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7
  %hba_wqidx = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 6
  %239 = ptrtoint ptr %hba_wqidx to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %conv330, ptr %hba_wqidx, align 2
  %hdwq332 = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 25, i32 27
  %240 = ptrtoint ptr %hdwq332 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %hdwq332, align 8
  %nvme_cstat = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %241, i32 %idx.0, i32 17
  %242 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %3, align 8
  %sg_cnt.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 9
  %244 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %sg_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.not.i785 = icmp eq i32 %245, 0
  br i1 %tobool.not.i785, label %if.else28.i, label %if.then.i787

if.then.i787:                                     ; preds = %if.end325
  %io_dir.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 10
  %246 = ptrtoint ptr %io_dir.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %io_dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %247)
  %cmp.i786 = icmp eq i32 %247, 1
  %arrayidx.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 7
  br i1 %cmp.i786, label %if.then3.i, label %if.else16.i

if.then3.i:                                       ; preds = %if.then.i787
  %248 = call ptr @memcpy(ptr %arrayidx.i, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_iwrite_cmd_template, i32 0, i32 0, i32 7), i32 20)
  %payload_length.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 6
  %249 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %payload_length.i, align 4
  %total_xfer_len.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 4
  %251 = ptrtoint ptr %total_xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %total_xfer_len.i, align 4
  %cfg_nvme_enable_fb.i = getelementptr inbounds %struct.lpfc_hba, ptr %243, i32 0, i32 114
  %252 = ptrtoint ptr %cfg_nvme_enable_fb.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %cfg_nvme_enable_fb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool4.not.i = icmp eq i32 %253, 0
  br i1 %tobool4.not.i, label %if.then3.i.if.else13.i_crit_edge, label %land.lhs.true.i

if.then3.i.if.else13.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %nlp_flag.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 5
  %254 = ptrtoint ptr %nlp_flag.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %nlp_flag.i, align 4
  %and.i788 = and i32 %255, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i788)
  %tobool5.not.i = icmp eq i32 %and.i788, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else13.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.else13.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %256 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %payload_length.i, align 4
  %nvme_fb_size.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 38
  %258 = ptrtoint ptr %nvme_fb_size.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %nvme_fb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %259)
  %cmp9.i = icmp ult i32 %257, %259
  %initial_xfer_len.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 5
  br i1 %cmp9.i, label %if.then10.i789, label %if.else.i790

if.then10.i789:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %260 = ptrtoint ptr %initial_xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %257, ptr %initial_xfer_len.i, align 4
  br label %if.end15.i

if.else.i790:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %261 = ptrtoint ptr %initial_xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %259, ptr %initial_xfer_len.i, align 4
  br label %if.end15.i

if.else13.i:                                      ; preds = %land.lhs.true.i.if.else13.i_crit_edge, %if.then3.i.if.else13.i_crit_edge
  %initial_xfer_len14.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 5
  %262 = ptrtoint ptr %initial_xfer_len14.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %initial_xfer_len14.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else13.i, %if.else.i790, %if.then10.i789
  %output_requests.i = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %241, i32 %idx.0, i32 17, i32 1
  br label %if.end31.i

if.else16.i:                                      ; preds = %if.then.i787
  %263 = call ptr @memcpy(ptr %arrayidx.i, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_iread_cmd_template, i32 0, i32 0, i32 7), i32 20)
  %payload_length18.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 6
  %264 = ptrtoint ptr %payload_length18.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %payload_length18.i, align 4
  %total_xfer_len19.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 4
  %266 = ptrtoint ptr %total_xfer_len19.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %total_xfer_len19.i, align 4
  %rsrvd5.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 5
  %267 = ptrtoint ptr %rsrvd5.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %rsrvd5.i, align 4
  %cmf_active_mode.i = getelementptr inbounds %struct.lpfc_hba, ptr %243, i32 0, i32 394
  %268 = ptrtoint ptr %cmf_active_mode.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %cmf_active_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %269)
  %cmp20.i = icmp eq i32 %269, 1
  br i1 %cmp20.i, label %if.then21.i, label %if.else16.i.if.end31.i_crit_edge

if.else16.i.if.end31.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then21.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  %word10.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 10
  %270 = ptrtoint ptr %word10.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %word10.i, align 4
  %and22.i = and i32 %271, -8193
  store i32 %and22.i, ptr %word10.i, align 4
  br label %if.end31.i

if.else28.i:                                      ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx29.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 4
  %272 = call ptr @memcpy(ptr %arrayidx29.i, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_icmnd_cmd_template, i32 0, i32 0, i32 4), i32 32)
  %control_requests.i = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %241, i32 %idx.0, i32 17, i32 2
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else28.i, %if.then21.i, %if.else16.i.if.end31.i_crit_edge, %if.end15.i
  %output_requests.sink1.i = phi ptr [ %output_requests.i, %if.end15.i ], [ %control_requests.i, %if.else28.i ], [ %nvme_cstat, %if.then21.i ], [ %nvme_cstat, %if.else16.i.if.end31.i_crit_edge ]
  %273 = ptrtoint ptr %output_requests.sink1.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %output_requests.sink1.i, align 4
  %inc.i791 = add i32 %274, 1
  store i32 %inc.i791, ptr %output_requests.sink1.i, align 4
  %nlp_nvme_info.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 19
  %275 = ptrtoint ptr %nlp_nvme_info.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %nlp_nvme_info.i, align 1
  %277 = and i8 %276, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool33.not.i = icmp eq i8 %277, 0
  br i1 %tobool33.not.i, label %if.end31.i.lpfc_nvme_prep_io_cmd.exit_crit_edge, label %if.then34.i

if.end31.i.lpfc_nvme_prep_io_cmd.exit_crit_edge:  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpfc_nvme_prep_io_cmd.exit

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %word7.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 7
  %278 = ptrtoint ptr %word7.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %word7.i, align 4
  %or37.i = or i32 %279, 4194304
  store i32 %or37.i, ptr %word7.i, align 4
  br label %lpfc_nvme_prep_io_cmd.exit

lpfc_nvme_prep_io_cmd.exit:                       ; preds = %if.then34.i, %if.end31.i.lpfc_nvme_prep_io_cmd.exit_crit_edge
  %rsplen.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 5
  %280 = ptrtoint ptr %rsplen.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %rsplen.i, align 2
  %conv41.i = zext i16 %281 to i32
  %cmdlen.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 4
  %282 = ptrtoint ptr %cmdlen.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %cmdlen.i, align 8
  %conv42.i = zext i16 %283 to i32
  %add.i = add nuw nsw i32 %conv42.i, %conv41.i
  %and43.i = and i32 %add.i, 65535
  %word3.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 3
  %284 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %word3.i, align 4
  %and44.i = and i32 %285, -65536
  %or45.i = or i32 %and43.i, %and44.i
  store i32 %or45.i, ptr %word3.i, align 4
  %rpi_ids.i = getelementptr inbounds %struct.lpfc_hba, ptr %243, i32 0, i32 25, i32 88
  %286 = ptrtoint ptr %rpi_ids.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %rpi_ids.i, align 4
  %nlp_rpi.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 10
  %288 = ptrtoint ptr %nlp_rpi.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %nlp_rpi.i, align 4
  %idxprom.i = zext i16 %289 to i32
  %arrayidx47.i = getelementptr i16, ptr %287, i32 %idxprom.i
  %290 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %arrayidx47.i, align 2
  %conv48.i = zext i16 %291 to i32
  %shl50.i = shl nuw i32 %conv48.i, 16
  %wqe_com51.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 6
  %sli4_xritag.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 5
  %292 = ptrtoint ptr %sli4_xritag.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %sli4_xritag.i, align 4
  %conv56.i = zext i16 %293 to i32
  %or62.i = or i32 %shl50.i, %conv56.i
  %294 = ptrtoint ptr %wqe_com51.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %or62.i, ptr %wqe_com51.i, align 4
  %iotag.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 3
  %295 = ptrtoint ptr %iotag.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %iotag.i, align 8
  %conv65.i = zext i16 %296 to i32
  %abort_tag.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 8
  %297 = ptrtoint ptr %abort_tag.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %conv65.i, ptr %abort_tag.i, align 4
  %word9.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 9
  %298 = ptrtoint ptr %word9.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %word9.i, align 4
  %and72.i = and i32 %299, -65536
  %or73.i = or i32 %and72.i, %conv65.i
  store i32 %or73.i, ptr %word9.i, align 4
  %word1077.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 10
  %300 = ptrtoint ptr %word1077.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %word1077.i, align 4
  %or79.i = or i32 %301, 16
  store i32 %or79.i, ptr %word1077.i, align 4
  %vport82.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 17
  %302 = ptrtoint ptr %vport82.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %3, ptr %vport82.i, align 4
  %303 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %3, align 8
  %305 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %233, align 8
  %307 = ptrtoint ptr %dma_sgl.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dma_sgl.i, align 4
  %cmdlen.i.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %306, i32 0, i32 4
  %309 = ptrtoint ptr %cmdlen.i.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %cmdlen.i.i, align 8
  %conv.i.i = zext i16 %310 to i32
  %311 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #8
  %sge_len.i.i = getelementptr inbounds %struct.sli4_sge, ptr %308, i32 0, i32 3
  %312 = ptrtoint ptr %sge_len.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %311, ptr %sge_len.i.i, align 4
  %cfg_nvme_embed_cmd.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 110
  %313 = ptrtoint ptr %cfg_nvme_embed_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %cfg_nvme_embed_cmd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i.i = icmp eq i32 %314, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpfc_nvme_prep_io_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %315 = ptrtoint ptr %308 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 0, ptr %308, align 4
  %addr_lo.i.i = getelementptr inbounds %struct.sli4_sge, ptr %308, i32 0, i32 1
  %316 = ptrtoint ptr %addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 0, ptr %addr_lo.i.i, align 4
  %317 = ptrtoint ptr %wqe1.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 16777272, ptr %wqe1.i, align 4
  %addrHigh.i.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 2
  %318 = ptrtoint ptr %addrHigh.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 0, ptr %addrHigh.i.i, align 4
  %addrLow.i.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 1
  %319 = ptrtoint ptr %addrLow.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 64, ptr %addrLow.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 16
  %320 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %306, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %321, i32 1
  %incdec.ptr10.i.i = getelementptr i32, ptr %321, i32 2
  %322 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr11.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 17
  %324 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %arrayidx.i.i, align 4
  %incdec.ptr12.i.i = getelementptr i32, ptr %321, i32 3
  %325 = ptrtoint ptr %incdec.ptr10.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %incdec.ptr10.i.i, align 4
  %incdec.ptr13.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 18
  %327 = ptrtoint ptr %incdec.ptr11.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %incdec.ptr11.i.i, align 4
  %incdec.ptr14.i.i = getelementptr i32, ptr %321, i32 4
  %328 = ptrtoint ptr %incdec.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %incdec.ptr12.i.i, align 4
  %incdec.ptr15.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 19
  %330 = ptrtoint ptr %incdec.ptr13.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %incdec.ptr13.i.i, align 4
  %331 = ptrtoint ptr %incdec.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %incdec.ptr14.i.i, align 4
  %incdec.ptr17.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 20
  %333 = ptrtoint ptr %incdec.ptr15.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %332, ptr %incdec.ptr15.i.i, align 4
  %incdec.ptr18.i.i = getelementptr i32, ptr %321, i32 6
  %incdec.ptr19.i.i = getelementptr i32, ptr %321, i32 7
  %334 = ptrtoint ptr %incdec.ptr18.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %incdec.ptr18.i.i, align 4
  %incdec.ptr20.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 21
  %336 = ptrtoint ptr %incdec.ptr17.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %335, ptr %incdec.ptr17.i.i, align 4
  %337 = ptrtoint ptr %incdec.ptr19.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %incdec.ptr19.i.i, align 4
  %incdec.ptr22.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 22
  %339 = ptrtoint ptr %incdec.ptr20.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %338, ptr %incdec.ptr20.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %321, i32 16
  %incdec.ptr23.i.i = getelementptr i32, ptr %321, i32 17
  %340 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %add.ptr.i.i, align 4
  %incdec.ptr24.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 23
  %342 = ptrtoint ptr %incdec.ptr22.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %341, ptr %incdec.ptr22.i.i, align 4
  %incdec.ptr25.i.i = getelementptr i32, ptr %321, i32 18
  %343 = ptrtoint ptr %incdec.ptr23.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %incdec.ptr23.i.i, align 4
  %incdec.ptr26.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 24
  %345 = ptrtoint ptr %incdec.ptr24.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %344, ptr %incdec.ptr24.i.i, align 4
  %incdec.ptr27.i.i = getelementptr i32, ptr %321, i32 19
  %346 = ptrtoint ptr %incdec.ptr25.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %incdec.ptr25.i.i, align 4
  %incdec.ptr28.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 25
  %348 = ptrtoint ptr %incdec.ptr26.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %347, ptr %incdec.ptr26.i.i, align 4
  %incdec.ptr29.i.i = getelementptr i32, ptr %321, i32 20
  %349 = ptrtoint ptr %incdec.ptr27.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %incdec.ptr27.i.i, align 4
  %incdec.ptr30.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 26
  %351 = ptrtoint ptr %incdec.ptr28.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %350, ptr %incdec.ptr28.i.i, align 4
  %incdec.ptr31.i.i = getelementptr i32, ptr %321, i32 21
  %352 = ptrtoint ptr %incdec.ptr29.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %incdec.ptr29.i.i, align 4
  %incdec.ptr32.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 27
  %354 = ptrtoint ptr %incdec.ptr30.i.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %353, ptr %incdec.ptr30.i.i, align 4
  %incdec.ptr33.i.i = getelementptr i32, ptr %321, i32 22
  %355 = ptrtoint ptr %incdec.ptr31.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %incdec.ptr31.i.i, align 4
  %incdec.ptr34.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 28
  %357 = ptrtoint ptr %incdec.ptr32.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %356, ptr %incdec.ptr32.i.i, align 4
  %incdec.ptr35.i.i = getelementptr i32, ptr %321, i32 23
  %358 = ptrtoint ptr %incdec.ptr33.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %incdec.ptr33.i.i, align 4
  %incdec.ptr36.i.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 29
  %360 = ptrtoint ptr %incdec.ptr34.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %359, ptr %incdec.ptr34.i.i, align 4
  %361 = ptrtoint ptr %incdec.ptr35.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %incdec.ptr35.i.i, align 4
  %363 = ptrtoint ptr %incdec.ptr36.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %362, ptr %incdec.ptr36.i.i, align 4
  br label %lpfc_nvme_adj_fcp_sgls.exit.i

if.else.i.i:                                      ; preds = %lpfc_nvme_prep_io_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cmddma.i.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %306, i32 0, i32 2
  %364 = ptrtoint ptr %308 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 0, ptr %308, align 4
  %365 = ptrtoint ptr %cmddma.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %cmddma.i.i, align 8
  %367 = tail call i32 @llvm.bswap.i32(i32 %366) #8
  %addr_lo44.i.i = getelementptr inbounds %struct.sli4_sge, ptr %308, i32 0, i32 1
  %368 = ptrtoint ptr %addr_lo44.i.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %367, ptr %addr_lo44.i.i, align 4
  %369 = ptrtoint ptr %wqe1.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %bf.load47.i.i = load i32, ptr %wqe1.i, align 4
  %bf.clear48.i.i = and i32 %bf.load47.i.i, 16777215
  store i32 %bf.clear48.i.i, ptr %wqe1.i, align 4
  %370 = ptrtoint ptr %cmdlen.i.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %cmdlen.i.i, align 8
  %conv51.i.i = zext i16 %371 to i32
  store i32 %conv51.i.i, ptr %wqe1.i, align 4
  %372 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %308, align 4
  %addrHigh59.i.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 2
  %374 = ptrtoint ptr %addrHigh59.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %373, ptr %addrHigh59.i.i, align 4
  %375 = load i32, ptr %addr_lo44.i.i, align 4
  %addrLow62.i.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 1
  %376 = ptrtoint ptr %addrLow62.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %375, ptr %addrLow62.i.i, align 4
  %377 = ptrtoint ptr %word1077.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %word1077.i, align 4
  %or.i.i = and i32 %378, -49153
  %and68.i.i = or i32 %or.i.i, 16384
  store i32 %and68.i.i, ptr %word1077.i, align 4
  br label %lpfc_nvme_adj_fcp_sgls.exit.i

lpfc_nvme_adj_fcp_sgls.exit.i:                    ; preds = %if.else.i.i, %if.then.i.i
  %incdec.ptr72.i.i = getelementptr %struct.sli4_sge, ptr %308, i32 1
  %rspdma.i.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %306, i32 0, i32 3
  %379 = ptrtoint ptr %incdec.ptr72.i.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 0, ptr %incdec.ptr72.i.i, align 4
  %380 = ptrtoint ptr %rspdma.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %rspdma.i.i, align 4
  %382 = tail call i32 @llvm.bswap.i32(i32 %381) #8
  %addr_lo82.i.i = getelementptr %struct.sli4_sge, ptr %308, i32 1, i32 1
  %383 = ptrtoint ptr %addr_lo82.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %382, ptr %addr_lo82.i.i, align 4
  %word2.i.i = getelementptr %struct.sli4_sge, ptr %308, i32 1, i32 2
  %384 = ptrtoint ptr %word2.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %word2.i.i, align 4
  %386 = tail call i32 @llvm.bswap.i32(i32 %385) #8
  %387 = ptrtoint ptr %word2.i.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %386, ptr %word2.i.i, align 4
  %sg_cnt.i.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %306, i32 0, i32 9
  %388 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %sg_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %389)
  %tobool84.not.i.i = icmp eq i32 %389, 0
  %and87.i.i = and i32 %386, 2147483647
  %masksel.i.i = select i1 %tobool84.not.i.i, i32 -2147483648, i32 0
  %storemerge.i.i = or i32 %masksel.i.i, %and87.i.i
  %390 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i.i) #8
  %391 = ptrtoint ptr %word2.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %word2.i.i, align 4
  %rsplen.i.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %306, i32 0, i32 5
  %392 = ptrtoint ptr %rsplen.i.i to i32
  call void @__asan_load2_noabort(i32 %392)
  %393 = load i16, ptr %rsplen.i.i, align 2
  %conv98.i.i = zext i16 %393 to i32
  %394 = tail call i32 @llvm.bswap.i32(i32 %conv98.i.i) #8
  %sge_len99.i.i = getelementptr %struct.sli4_sge, ptr %308, i32 1, i32 3
  %395 = ptrtoint ptr %sge_len99.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %394, ptr %sge_len99.i.i, align 4
  %396 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %sg_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %397)
  %tobool.not.i793 = icmp eq i32 %397, 0
  br i1 %tobool.not.i793, label %if.else179.i, label %if.then.i796

if.then.i796:                                     ; preds = %lpfc_nvme_adj_fcp_sgls.exit.i
  %add.ptr.i = getelementptr %struct.sli4_sge, ptr %308, i32 2
  %seg_cnt.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 16
  %398 = ptrtoint ptr %seg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %397, ptr %seg_cnt.i, align 8
  %399 = load i16, ptr getelementptr inbounds (%struct.nvme_fc_port_template, ptr @lpfc_nvme_template, i32 0, i32 11), align 4
  %conv.i794 = zext i16 %399 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %397, i32 %conv.i794)
  %cmp.i795 = icmp ugt i32 %397, %conv.i794
  br i1 %cmp.i795, label %do.body.i, label %if.end28.i

do.body.i:                                        ; preds = %if.then.i796
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpfc_dmp_dbg(ptr noundef %304) #8
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 165
  %400 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %401, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 197
  %402 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %brd_no.i, align 4
  %cfg_nvme_seg_cnt.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 118
  %404 = ptrtoint ptr %cfg_nvme_seg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %cfg_nvme_seg_cnt.i, align 4
  %add.i797 = add i32 %405, 1
  %406 = ptrtoint ptr %seg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %seg_cnt.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i, ptr noundef nonnull @.str.175, i32 noundef %403, i32 noundef %add.i797, i32 noundef %407) #11
  %408 = ptrtoint ptr %seg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 0, ptr %seg_cnt.i, align 8
  br label %do.body338

if.end28.i:                                       ; preds = %if.then.i796
  %409 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %sg_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %410)
  %cmp30357.i = icmp sgt i32 %410, 0
  br i1 %cmp30357.i, label %for.body.lr.ph.i, label %if.end28.i.if.else176.i_crit_edge

if.end28.i.if.else176.i_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else176.i

for.body.lr.ph.i:                                 ; preds = %if.end28.i
  %first_sgl.i = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %306, i32 0, i32 8
  %411 = ptrtoint ptr %first_sgl.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %first_sgl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %410)
  %cmp70.i = icmp eq i32 %410, 1
  %border_sge_num.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 174
  %sub.i = add nsw i32 %410, -1
  %cfg_sg_dma_buf_size.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 120
  br label %for.body.i

for.body.i:                                       ; preds = %if.end156.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lsp_just_set.0.off0370.i = phi i1 [ false, %for.body.lr.ph.i ], [ %tobool121.i, %if.end156.i.for.body.i_crit_edge ]
  %j.0367.i = phi i32 [ 2, %for.body.lr.ph.i ], [ %inc.i801, %if.end156.i.for.body.i_crit_edge ]
  %i.0364.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc157.i, %if.end156.i.for.body.i_crit_edge ]
  %dma_offset.0363.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %dma_offset.1.i, %if.end156.i.for.body.i_crit_edge ]
  %data_sg.0362.i = phi ptr [ %412, %for.body.lr.ph.i ], [ %data_sg.1.i, %if.end156.i.for.body.i_crit_edge ]
  %sgl_xtra.0361.i = phi ptr [ null, %for.body.lr.ph.i ], [ %sgl_xtra.1.i, %if.end156.i.for.body.i_crit_edge ]
  %sgl.0358.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %sgl.1.i, %if.end156.i.for.body.i_crit_edge ]
  %cmp32.i = icmp eq ptr %data_sg.0362.i, null
  br i1 %cmp32.i, label %do.body35.i, label %if.end69.i

do.body35.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpfc_dmp_dbg(ptr noundef %304) #8
  %pcidev56.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 165
  %413 = ptrtoint ptr %pcidev56.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %pcidev56.i, align 4
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %414, i32 0, i32 44
  %brd_no58.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 197
  %415 = ptrtoint ptr %brd_no58.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %brd_no58.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev57.i, ptr noundef nonnull @.str.178, i32 noundef %416, i32 noundef %i.0364.i, i32 noundef %410) #11
  %417 = ptrtoint ptr %seg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 0, ptr %seg_cnt.i, align 8
  br label %do.body338

if.end69.i:                                       ; preds = %for.body.i
  %word2.i798 = getelementptr inbounds %struct.sli4_sge, ptr %sgl.0358.i, i32 0, i32 2
  br i1 %cmp70.i, label %if.then72.i, label %if.else80.i

if.then72.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  %418 = ptrtoint ptr %word2.i798 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 -2147483648, ptr %word2.i798, align 4
  br label %if.end116.i

if.else80.i:                                      ; preds = %if.end69.i
  %419 = ptrtoint ptr %word2.i798 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 0, ptr %word2.i798, align 4
  br i1 %lsp_just_set.0.off0370.i, label %if.else80.i.if.end116.i_crit_edge, label %land.lhs.true.i799

if.else80.i.if.end116.i_crit_edge:                ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.i

land.lhs.true.i799:                               ; preds = %if.else80.i
  %add86.i = add i32 %j.0367.i, 1
  %420 = ptrtoint ptr %border_sge_num.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %border_sge_num.i, align 8
  %rem.i = urem i32 %add86.i, %421
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool87.not.i = icmp ne i32 %rem.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %i.0364.i)
  %cmp89.not.i = icmp eq i32 %sub.i, %i.0364.i
  %or.cond.i = select i1 %tobool87.not.i, i1 true, i1 %cmp89.not.i
  br i1 %or.cond.i, label %land.lhs.true.i799.if.end116.i_crit_edge, label %if.then91.i

land.lhs.true.i799.if.end116.i_crit_edge:         ; preds = %land.lhs.true.i799
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.i

if.then91.i:                                      ; preds = %land.lhs.true.i799
  %422 = ptrtoint ptr %word2.i798 to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 671088640, ptr %word2.i798, align 4
  %call.i800 = tail call ptr @lpfc_get_sgl_per_hdwq(ptr noundef %304, ptr noundef %call.i783) #8
  %tobool96.not.i = icmp eq ptr %call.i800, null
  br i1 %tobool96.not.i, label %if.then100.i, label %if.end102.i, !prof !373

if.then100.i:                                     ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #10
  %423 = ptrtoint ptr %seg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 0, ptr %seg_cnt.i, align 8
  br label %do.body338

if.end102.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma_phys_sgl.i = getelementptr inbounds %struct.sli4_hybrid_sgl, ptr %call.i800, i32 0, i32 2
  %424 = ptrtoint ptr %dma_phys_sgl.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %dma_phys_sgl.i, align 4
  %426 = tail call i32 @llvm.bswap.i32(i32 %425) #8
  %addr_lo.i = getelementptr inbounds %struct.sli4_sge, ptr %sgl.0358.i, i32 0, i32 1
  %427 = ptrtoint ptr %addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %426, ptr %addr_lo.i, align 4
  %428 = ptrtoint ptr %sgl.0358.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 0, ptr %sgl.0358.i, align 4
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.end102.i, %land.lhs.true.i799.if.end116.i_crit_edge, %if.else80.i.if.end116.i_crit_edge, %if.then72.i
  %sgl_xtra.1.i = phi ptr [ %sgl_xtra.0361.i, %if.then72.i ], [ %call.i800, %if.end102.i ], [ %sgl_xtra.0361.i, %land.lhs.true.i799.if.end116.i_crit_edge ], [ %sgl_xtra.0361.i, %if.else80.i.if.end116.i_crit_edge ]
  %429 = ptrtoint ptr %word2.i798 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %word2.i798, align 4
  %431 = and i32 %430, 671088640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %tobool121.i = icmp ne i32 %431, 0
  br i1 %tobool121.i, label %if.else150.i, label %if.then122.i

if.then122.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %i.0364.i)
  %cmp124.i = icmp eq i32 %sub.i, %i.0364.i
  br i1 %cmp124.i, label %if.then126.i, label %if.then122.i.if.end131.i_crit_edge

if.then122.i.if.end131.i_crit_edge:               ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131.i

if.then126.i:                                     ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  %or129.i = or i32 %430, -2147483648
  %432 = ptrtoint ptr %word2.i798 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %or129.i, ptr %word2.i798, align 4
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then126.i, %if.then122.i.if.end131.i_crit_edge
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %data_sg.0362.i, i32 0, i32 3
  %433 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %dma_address.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %data_sg.0362.i, i32 0, i32 2
  %435 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %length.i, align 4
  %437 = tail call i32 @llvm.bswap.i32(i32 %434) #8
  %addr_lo135.i = getelementptr inbounds %struct.sli4_sge, ptr %sgl.0358.i, i32 0, i32 1
  %438 = ptrtoint ptr %addr_lo135.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %437, ptr %addr_lo135.i, align 4
  %439 = ptrtoint ptr %sgl.0358.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 0, ptr %sgl.0358.i, align 4
  %and141.i = and i32 %dma_offset.0363.i, 134217727
  %440 = ptrtoint ptr %word2.i798 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %word2.i798, align 4
  %and143.i = and i32 %441, -134217728
  %or144.i = or i32 %and143.i, %and141.i
  %442 = tail call i32 @llvm.bswap.i32(i32 %or144.i) #8
  %443 = ptrtoint ptr %word2.i798 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %442, ptr %word2.i798, align 4
  %444 = tail call i32 @llvm.bswap.i32(i32 %436) #8
  %sge_len.i = getelementptr inbounds %struct.sli4_sge, ptr %sgl.0358.i, i32 0, i32 3
  %445 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %444, ptr %sge_len.i, align 4
  %add148.i = add i32 %436, %dma_offset.0363.i
  %call149.i = tail call ptr @sg_next(ptr noundef nonnull %data_sg.0362.i) #8
  %incdec.ptr.i = getelementptr %struct.sli4_sge, ptr %sgl.0358.i, i32 1
  br label %if.end156.i

if.else150.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  %446 = tail call i32 @llvm.bswap.i32(i32 %430) #8
  %447 = ptrtoint ptr %word2.i798 to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %446, ptr %word2.i798, align 4
  %448 = ptrtoint ptr %cfg_sg_dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %cfg_sg_dma_buf_size.i, align 4
  %450 = tail call i32 @llvm.bswap.i32(i32 %449) #8
  %sge_len153.i = getelementptr inbounds %struct.sli4_sge, ptr %sgl.0358.i, i32 0, i32 3
  %451 = ptrtoint ptr %sge_len153.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %450, ptr %sge_len153.i, align 4
  %dma_sgl154.i = getelementptr inbounds %struct.sli4_hybrid_sgl, ptr %sgl_xtra.1.i, i32 0, i32 1
  %452 = ptrtoint ptr %dma_sgl154.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %dma_sgl154.i, align 4
  %sub155.i = add i32 %i.0364.i, -1
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.else150.i, %if.end131.i
  %sgl.1.i = phi ptr [ %453, %if.else150.i ], [ %incdec.ptr.i, %if.end131.i ]
  %data_sg.1.i = phi ptr [ %data_sg.0362.i, %if.else150.i ], [ %call149.i, %if.end131.i ]
  %dma_offset.1.i = phi i32 [ %dma_offset.0363.i, %if.else150.i ], [ %add148.i, %if.end131.i ]
  %i.1.i = phi i32 [ %sub155.i, %if.else150.i ], [ %i.0364.i, %if.end131.i ]
  %inc.i801 = add i32 %j.0367.i, 1
  %inc157.i = add i32 %i.1.i, 1
  %cmp30.i = icmp slt i32 %inc157.i, %410
  br i1 %cmp30.i, label %if.end156.i.for.body.i_crit_edge, label %for.end.i

if.end156.i.for.body.i_crit_edge:                 ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end156.i
  br i1 %cmp70.i, label %land.lhs.true160.i, label %for.end.i.if.else176.i_crit_edge

for.end.i.if.else176.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else176.i

land.lhs.true160.i:                               ; preds = %for.end.i
  %cfg_enable_pbde.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 157
  %454 = ptrtoint ptr %cfg_enable_pbde.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %cfg_enable_pbde.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %455)
  %tobool161.not.i = icmp eq i32 %455, 0
  br i1 %tobool161.not.i, label %land.lhs.true160.i.if.else176.i_crit_edge, label %if.then162.i

land.lhs.true160.i.if.else176.i_crit_edge:        ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else176.i

if.then162.i:                                     ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i802 = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 13
  %addr_lo163.i = getelementptr %struct.sli4_sge, ptr %308, i32 2, i32 1
  %456 = ptrtoint ptr %addr_lo163.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %addr_lo163.i, align 4
  %addrLow.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 14
  %458 = ptrtoint ptr %addrLow.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %457, ptr %addrLow.i, align 4
  %459 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %add.ptr.i, align 4
  %addrHigh.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 15
  %461 = ptrtoint ptr %addrHigh.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %460, ptr %addrHigh.i, align 4
  %sge_len165.i = getelementptr %struct.sli4_sge, ptr %308, i32 2, i32 3
  %462 = ptrtoint ptr %sge_len165.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %sge_len165.i, align 4
  %464 = and i32 %463, -256
  %465 = ptrtoint ptr %arrayidx.i802 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %464, ptr %arrayidx.i802, align 4
  %word11.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 11
  %466 = ptrtoint ptr %word11.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %word11.i, align 4
  %or173.i = or i32 %467, 32
  store i32 %or173.i, ptr %word11.i, align 4
  br label %if.end371

if.else176.i:                                     ; preds = %land.lhs.true160.i.if.else176.i_crit_edge, %for.end.i.if.else176.i_crit_edge, %if.end28.i.if.else176.i_crit_edge
  %arrayidx177.i = getelementptr %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 7, i32 10, i32 0, i32 13
  %468 = call ptr @memset(ptr %arrayidx177.i, i32 0, i32 12)
  br label %if.end371

if.else179.i:                                     ; preds = %lpfc_nvme_adj_fcp_sgls.exit.i
  %seg_cnt180.i = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 16
  %469 = ptrtoint ptr %seg_cnt180.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 0, ptr %seg_cnt180.i, align 8
  %payload_length.i803 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %306, i32 0, i32 6
  %470 = ptrtoint ptr %payload_length.i803 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %payload_length.i803, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %471)
  %cmp181.not.i = icmp eq i32 %471, 0
  br i1 %cmp181.not.i, label %if.else179.i.if.end371_crit_edge, label %do.body184.i

if.else179.i.if.end371_crit_edge:                 ; preds = %if.else179.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end371

do.body184.i:                                     ; preds = %if.else179.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpfc_dmp_dbg(ptr noundef %304) #8
  %pcidev205.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 165
  %472 = ptrtoint ptr %pcidev205.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %pcidev205.i, align 4
  %dev206.i = getelementptr inbounds %struct.pci_dev, ptr %473, i32 0, i32 44
  %brd_no207.i = getelementptr inbounds %struct.lpfc_hba, ptr %304, i32 0, i32 197
  %474 = ptrtoint ptr %brd_no207.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %brd_no207.i, align 4
  %476 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %sg_cnt.i.i, align 8
  %478 = ptrtoint ptr %payload_length.i803 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %payload_length.i803, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev206.i, ptr noundef nonnull @.str.181, i32 noundef %475, i32 noundef %477, i32 noundef %479) #11
  br label %do.body338

do.body338:                                       ; preds = %do.body184.i, %if.then100.i, %do.body35.i, %do.body.i
  %cfg_log_verbose339 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %480 = ptrtoint ptr %cfg_log_verbose339 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %cfg_log_verbose339, align 4
  %and340 = and i32 %481, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  br i1 %tobool341.not, label %if.else355, label %do.end345

do.end345:                                        ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #10
  %482 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %3, align 8
  %pcidev347 = getelementptr inbounds %struct.lpfc_hba, ptr %483, i32 0, i32 165
  %484 = ptrtoint ptr %pcidev347 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %pcidev347, align 4
  %dev348 = getelementptr inbounds %struct.pci_dev, ptr %485, i32 0, i32 44
  %brd_no350 = getelementptr inbounds %struct.lpfc_hba, ptr %483, i32 0, i32 197
  %486 = ptrtoint ptr %brd_no350 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %brd_no350, align 4
  %vpi351 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %488 = ptrtoint ptr %vpi351 to i32
  call void @__asan_load2_noabort(i32 %488)
  %489 = load i16, ptr %vpi351, align 4
  %conv352 = zext i16 %489 to i32
  %490 = ptrtoint ptr %hw_queue_handle to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %hw_queue_handle, align 4
  %nlp_DID354 = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 6
  %492 = ptrtoint ptr %nlp_DID354 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %nlp_DID354, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev348, ptr noundef nonnull @.str.142, i32 noundef %487, i32 noundef %conv352, i32 noundef %491, i32 noundef %493) #11
  br label %do.end369

if.else355:                                       ; preds = %do.body338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %481)
  %tobool357.not = icmp eq i32 %481, 0
  br i1 %tobool357.not, label %if.then358, label %if.else355.do.end369_crit_edge

if.else355.do.end369_crit_edge:                   ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end369

if.then358:                                       ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #10
  %494 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %3, align 8
  %brd_no361 = getelementptr inbounds %struct.lpfc_hba, ptr %495, i32 0, i32 197
  %496 = ptrtoint ptr %brd_no361 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %brd_no361, align 4
  %vpi362 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %498 = ptrtoint ptr %vpi362 to i32
  call void @__asan_load2_noabort(i32 %498)
  %499 = load i16, ptr %vpi362, align 4
  %conv363 = zext i16 %499 to i32
  %500 = ptrtoint ptr %hw_queue_handle to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %hw_queue_handle, align 4
  %nlp_DID365 = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 6
  %502 = ptrtoint ptr %nlp_DID365 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %nlp_DID365, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %495, ptr noundef nonnull @.str.142, i32 noundef %497, i32 noundef %conv363, i32 noundef %501, i32 noundef %503) #8
  br label %do.end369

do.end369:                                        ; preds = %if.then358, %if.else355.do.end369_crit_edge, %do.end345
  %xmt_fcp_err370 = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 8
  %call.i.i780 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_err370, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_err370, i32 1, i32 3, i32 1) #8
  %504 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_err370, ptr %xmt_fcp_err370, i32 1, ptr elementtype(i32) %xmt_fcp_err370) #8, !srcloc !377
  br label %out_free_nvme_buf

if.end371:                                        ; preds = %if.else179.i.if.end371_crit_edge, %if.else176.i, %if.then162.i
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 304
  %505 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %505)
  %506 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %506)
  %tobool372.not = icmp eq i16 %506, 0
  br i1 %tobool372.not, label %if.end371.if.end378_crit_edge, label %if.then373

if.end371.if.end378_crit_edge:                    ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end378

if.then373:                                       ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #10
  %507 = ptrtoint ptr %sli4_xritag.i to i32
  call void @__asan_load2_noabort(i32 %507)
  %508 = load i16, ptr %sli4_xritag.i, align 4
  %509 = ptrtoint ptr %hw_queue_handle to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %hw_queue_handle, align 4
  %conv376 = trunc i32 %510 to i16
  %nlp_DID377 = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 6
  %511 = ptrtoint ptr %nlp_DID377 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %nlp_DID377, align 8
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %22, ptr noundef nonnull @.str.144, i16 noundef zeroext %508, i16 noundef zeroext %conv376, i32 noundef %512) #8
  br label %if.end378

if.end378:                                        ; preds = %if.then373, %if.end371.if.end378_crit_edge
  %hdwq379 = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 8
  %513 = ptrtoint ptr %hdwq379 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %hdwq379, align 8
  %call381 = tail call i32 @lpfc_sli4_issue_wqe(ptr noundef %22, ptr noundef %514, ptr noundef %cur_iocbq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call381)
  %tobool382.not = icmp eq i32 %call381, 0
  br i1 %tobool382.not, label %if.end421, label %if.then383

if.then383:                                       ; preds = %if.end378
  %xmt_fcp_wqerr = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 7
  %call.i.i781 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_wqerr, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_wqerr, i32 1, i32 3, i32 1) #8
  %515 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_wqerr, ptr %xmt_fcp_wqerr, i32 1, ptr elementtype(i32) %xmt_fcp_wqerr) #8, !srcloc !377
  %cfg_log_verbose385 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %516 = ptrtoint ptr %cfg_log_verbose385 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %cfg_log_verbose385, align 4
  %and386 = and i32 %517, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and386)
  %tobool387.not = icmp eq i32 %and386, 0
  br i1 %tobool387.not, label %if.else403, label %do.end391

do.end391:                                        ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #10
  %518 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %3, align 8
  %pcidev393 = getelementptr inbounds %struct.lpfc_hba, ptr %519, i32 0, i32 165
  %520 = ptrtoint ptr %pcidev393 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %pcidev393, align 4
  %dev394 = getelementptr inbounds %struct.pci_dev, ptr %521, i32 0, i32 44
  %brd_no396 = getelementptr inbounds %struct.lpfc_hba, ptr %519, i32 0, i32 197
  %522 = ptrtoint ptr %brd_no396 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %brd_no396, align 4
  %vpi397 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %524 = ptrtoint ptr %vpi397 to i32
  call void @__asan_load2_noabort(i32 %524)
  %525 = load i16, ptr %vpi397, align 4
  %conv398 = zext i16 %525 to i32
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 19
  %526 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %fc_myDID, align 8
  %nlp_DID399 = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 6
  %528 = ptrtoint ptr %nlp_DID399 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %nlp_DID399, align 8
  %530 = ptrtoint ptr %sli4_xritag.i to i32
  call void @__asan_load2_noabort(i32 %530)
  %531 = load i16, ptr %sli4_xritag.i, align 4
  %conv402 = zext i16 %531 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev394, ptr noundef nonnull @.str.146, i32 noundef %523, i32 noundef %conv398, i32 noundef %call381, i32 noundef %527, i32 noundef %529, i32 noundef %conv402) #11
  br label %out_free_nvme_buf

if.else403:                                       ; preds = %if.then383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %517)
  %tobool405.not = icmp eq i32 %517, 0
  br i1 %tobool405.not, label %if.then406, label %if.else403.out_free_nvme_buf_crit_edge

if.else403.out_free_nvme_buf_crit_edge:           ; preds = %if.else403
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_nvme_buf

if.then406:                                       ; preds = %if.else403
  call void @__sanitizer_cov_trace_pc() #10
  %532 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %3, align 8
  %brd_no409 = getelementptr inbounds %struct.lpfc_hba, ptr %533, i32 0, i32 197
  %534 = ptrtoint ptr %brd_no409 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %brd_no409, align 4
  %vpi410 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %536 = ptrtoint ptr %vpi410 to i32
  call void @__asan_load2_noabort(i32 %536)
  %537 = load i16, ptr %vpi410, align 4
  %conv411 = zext i16 %537 to i32
  %fc_myDID412 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 19
  %538 = ptrtoint ptr %fc_myDID412 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %fc_myDID412, align 8
  %nlp_DID413 = getelementptr inbounds %struct.lpfc_nodelist, ptr %59, i32 0, i32 6
  %540 = ptrtoint ptr %nlp_DID413 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %nlp_DID413, align 8
  %542 = ptrtoint ptr %sli4_xritag.i to i32
  call void @__asan_load2_noabort(i32 %542)
  %543 = load i16, ptr %sli4_xritag.i, align 4
  %conv416 = zext i16 %543 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %533, ptr noundef nonnull @.str.146, i32 noundef %535, i32 noundef %conv411, i32 noundef %call381, i32 noundef %539, i32 noundef %541, i32 noundef %conv416) #8
  br label %out_free_nvme_buf

if.end421:                                        ; preds = %if.end378
  %cfg_xri_rebalancing = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 80
  %544 = ptrtoint ptr %cfg_xri_rebalancing to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %cfg_xri_rebalancing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %545)
  %tobool422.not = icmp eq i32 %545, 0
  br i1 %tobool422.not, label %if.end421.if.end425_crit_edge, label %if.then423

if.end421.if.end425_crit_edge:                    ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end425

if.then423:                                       ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #10
  %hdwq_no = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 9
  %546 = ptrtoint ptr %hdwq_no to i32
  call void @__asan_load2_noabort(i32 %546)
  %547 = load i16, ptr %hdwq_no, align 4
  %conv424 = zext i16 %547 to i32
  tail call void @lpfc_keep_pvt_pool_above_lowwm(ptr noundef %22, i32 noundef %conv424) #8
  br label %if.end425

if.end425:                                        ; preds = %if.then423, %if.end421.if.end425_crit_edge
  %ts_cmd_start426 = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 21
  %548 = ptrtoint ptr %ts_cmd_start426 to i32
  call void @__asan_load8_noabort(i32 %548)
  %549 = load i64, ptr %ts_cmd_start426, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %549)
  %tobool427.not = icmp eq i64 %549, 0
  br i1 %tobool427.not, label %if.end425.if.end430_crit_edge, label %if.then428

if.end425.if.end430_crit_edge:                    ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end430

if.then428:                                       ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #10
  %call.i804 = tail call i64 @ktime_get() #8
  %ts_cmd_wqput = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 23
  %550 = ptrtoint ptr %ts_cmd_wqput to i32
  call void @__asan_store8_noabort(i32 %550)
  store i64 %call.i804, ptr %ts_cmd_wqput, align 8
  br label %if.end430

if.end430:                                        ; preds = %if.then428, %if.end425.if.end430_crit_edge
  %hdwqstat_on = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 348
  %551 = ptrtoint ptr %hdwqstat_on to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %hdwqstat_on, align 8
  %553 = and i16 %552, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %553)
  %tobool433.not = icmp eq i16 %553, 0
  br i1 %tobool433.not, label %if.end430.cleanup_crit_edge, label %if.then434

if.end430.cleanup_crit_edge:                      ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then434:                                       ; preds = %if.end430
  %554 = tail call i32 @llvm.read_register.i32(metadata !362) #8
  %and.i805 = and i32 %554, -16384
  %555 = inttoptr i32 %and.i805 to ptr
  %cpu436 = getelementptr inbounds %struct.thread_info, ptr %555, i32 0, i32 3
  %556 = ptrtoint ptr %cpu436 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %cpu436, align 4
  %558 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !378
  %c_stat = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 25, i32 119
  %559 = ptrtoint ptr %c_stat to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %c_stat, align 8
  %xmt_io = getelementptr inbounds %struct.lpfc_hdwq_stat, ptr %560, i32 0, i32 2
  %561 = ptrtoint ptr %xmt_io to i32
  %562 = ptrtoint ptr %cpu436 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %cpu436, align 4
  %arrayidx458 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %563
  %564 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %arrayidx458, align 4
  %add = add i32 %565, %561
  %566 = inttoptr i32 %add to ptr
  %567 = ptrtoint ptr %566 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %566, align 4
  %add459 = add i32 %568, 1
  store i32 %add459, ptr %566, align 4
  %569 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !379
  %and.i.i = and i32 %569, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool470.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool470.not, label %if.then479, label %if.then434.do.end482_crit_edge, !prof !373

if.then434.do.end482_crit_edge:                   ; preds = %if.then434
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end482

if.then479:                                       ; preds = %if.then434
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end482

do.end482:                                        ; preds = %if.then479, %if.then434.do.end482_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %558) #8, !srcloc !380
  %conv489 = trunc i32 %557 to i16
  %cpu490 = getelementptr inbounds %struct.lpfc_io_buf, ptr %call.i783, i32 0, i32 10
  %570 = ptrtoint ptr %cpu490 to i32
  call void @__asan_store2_noabort(i32 %570)
  store i16 %conv489, ptr %cpu490, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0, i32 %557)
  %cmp491.not = icmp eq i32 %idx.0, %557
  br i1 %cmp491.not, label %do.end482.cleanup_crit_edge, label %do.body494

do.end482.cleanup_crit_edge:                      ; preds = %do.end482
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body494:                                       ; preds = %do.end482
  %cfg_log_verbose495 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %571 = ptrtoint ptr %cfg_log_verbose495 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %cfg_log_verbose495, align 4
  %and496 = and i32 %572, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and496)
  %tobool497.not = icmp eq i32 %and496, 0
  br i1 %tobool497.not, label %if.else512, label %do.end501

do.end501:                                        ; preds = %do.body494
  call void @__sanitizer_cov_trace_pc() #10
  %573 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %3, align 8
  %pcidev503 = getelementptr inbounds %struct.lpfc_hba, ptr %574, i32 0, i32 165
  %575 = ptrtoint ptr %pcidev503 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %pcidev503, align 4
  %dev504 = getelementptr inbounds %struct.pci_dev, ptr %576, i32 0, i32 44
  %brd_no506 = getelementptr inbounds %struct.lpfc_hba, ptr %574, i32 0, i32 197
  %577 = ptrtoint ptr %brd_no506 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %brd_no506, align 4
  %vpi507 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %579 = ptrtoint ptr %vpi507 to i32
  call void @__asan_load2_noabort(i32 %579)
  %580 = load i16, ptr %vpi507, align 4
  %conv508 = zext i16 %580 to i32
  %conv510 = and i32 %557, 65535
  %581 = ptrtoint ptr %hw_queue_handle to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %hw_queue_handle, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev504, ptr noundef nonnull @.str.149, i32 noundef %578, i32 noundef %conv508, i32 noundef %conv510, i32 noundef %582) #11
  br label %cleanup

if.else512:                                       ; preds = %do.body494
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %572)
  %tobool514.not = icmp eq i32 %572, 0
  br i1 %tobool514.not, label %if.then515, label %if.else512.cleanup_crit_edge

if.else512.cleanup_crit_edge:                     ; preds = %if.else512
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then515:                                       ; preds = %if.else512
  call void @__sanitizer_cov_trace_pc() #10
  %583 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %3, align 8
  %brd_no518 = getelementptr inbounds %struct.lpfc_hba, ptr %584, i32 0, i32 197
  %585 = ptrtoint ptr %brd_no518 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %brd_no518, align 4
  %vpi519 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %587 = ptrtoint ptr %vpi519 to i32
  call void @__asan_load2_noabort(i32 %587)
  %588 = load i16, ptr %vpi519, align 4
  %conv520 = zext i16 %588 to i32
  %conv522 = and i32 %557, 65535
  %589 = ptrtoint ptr %hw_queue_handle to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %hw_queue_handle, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %584, ptr noundef nonnull @.str.149, i32 noundef %586, i32 noundef %conv520, i32 noundef %conv522, i32 noundef %590) #8
  br label %cleanup

out_free_nvme_buf:                                ; preds = %if.then406, %if.else403.out_free_nvme_buf_crit_edge, %do.end391, %do.end369
  %ret.0 = phi i32 [ -12, %do.end369 ], [ %call381, %do.end391 ], [ %call381, %if.else403.out_free_nvme_buf_crit_edge ], [ %call381, %if.then406 ]
  %591 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %233, align 8
  %sg_cnt531 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %592, i32 0, i32 9
  %593 = ptrtoint ptr %sg_cnt531 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %sg_cnt531, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %594)
  %tobool532.not = icmp eq i32 %594, 0
  br i1 %tobool532.not, label %if.else542, label %if.then533

if.then533:                                       ; preds = %out_free_nvme_buf
  call void @__sanitizer_cov_trace_pc() #10
  %io_dir535 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %592, i32 0, i32 10
  %595 = ptrtoint ptr %io_dir535 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %io_dir535, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %596)
  %cmp536 = icmp eq i32 %596, 1
  %output_requests = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %241, i32 %idx.0, i32 17, i32 1
  %spec.select = select i1 %cmp536, ptr %output_requests, ptr %nvme_cstat
  br label %if.end544

if.else542:                                       ; preds = %out_free_nvme_buf
  call void @__sanitizer_cov_trace_pc() #10
  %control_requests = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %241, i32 %idx.0, i32 17, i32 2
  br label %if.end544

if.end544:                                        ; preds = %if.else542, %if.then533
  %output_requests.sink814 = phi ptr [ %control_requests, %if.else542 ], [ %spec.select, %if.then533 ]
  %597 = ptrtoint ptr %output_requests.sink814 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %output_requests.sink814, align 4
  %dec = add i32 %598, -1
  store i32 %dec, ptr %output_requests.sink814, align 4
  tail call fastcc void @lpfc_release_nvme_buf(ptr noundef %22, ptr noundef nonnull %call.i783)
  br label %out_fail1

out_fail1:                                        ; preds = %if.end544, %if.then308, %if.else305.out_fail1_crit_edge, %do.end295, %do.end271
  %ret.1 = phi i32 [ %ret.0, %if.end544 ], [ -16, %do.end271 ], [ -16, %if.else305.out_fail1_crit_edge ], [ -16, %if.then308 ], [ -16, %do.end295 ]
  %payload_length545 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 6
  %599 = ptrtoint ptr %payload_length545 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %payload_length545, align 4
  %call546 = tail call i32 @lpfc_update_cmf_cmpl(ptr noundef %22, i64 noundef -1, i32 noundef %600, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %out_fail1, %if.then515, %if.else512.cleanup_crit_edge, %do.end501, %do.end482.cleanup_crit_edge, %if.end430.cleanup_crit_edge, %if.then217.cleanup_crit_edge, %do.end197, %do.end150, %do.end112, %do.end71, %do.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end482.cleanup_crit_edge ], [ 0, %if.else512.cleanup_crit_edge ], [ 0, %if.then515 ], [ 0, %do.end501 ], [ 0, %if.end430.cleanup_crit_edge ], [ -16, %do.end31 ], [ -19, %do.end71 ], [ -22, %do.end112 ], [ -16, %do.end197 ], [ %ret.1, %out_fail1 ], [ -16, %do.end150 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.then217.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvme_ls_abort(ptr nocapture noundef readonly %pnvme_lport, ptr nocapture noundef readonly %pnvme_rport, ptr noundef %pnvme_lsreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %pnvme_lport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !373

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %load_flag, align 4
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %port_id = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %pnvme_rport, i32 0, i32 7
  %7 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_id, align 4
  %call = tail call ptr @lpfc_findnode_did(ptr noundef %3, i32 noundef %8) #8
  %call8 = tail call i32 @__lpfc_nvme_ls_abort(ptr noundef %3, ptr noundef %call, ptr noundef %pnvme_lsreq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %xmt_ls_abort = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_abort, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_abort, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_abort, ptr %xmt_ls_abort, i32 1, ptr elementtype(i32) %xmt_ls_abort) #8, !srcloc !377
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvme_fcp_abort(ptr nocapture noundef readonly %pnvme_lport, ptr nocapture noundef readonly %pnvme_rport, ptr noundef readnone %hw_queue_handle, ptr noundef %pnvme_fcreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %pnvme_lport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !373

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool5.not = icmp eq ptr %hw_queue_handle, null
  br i1 %tobool5.not, label %do.body, label %if.end32, !prof !373

do.body:                                          ; preds = %if.end
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %4 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vpi, align 4
  %conv = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.183, i32 noundef %11, i32 noundef %conv) #11
  br label %cleanup

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool21.not = icmp eq i32 %5, 0
  br i1 %tobool21.not, label %if.then22, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %brd_no25 = getelementptr inbounds %struct.lpfc_hba, ptr %15, i32 0, i32 197
  %16 = ptrtoint ptr %brd_no25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brd_no25, align 4
  %vpi26 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %vpi26 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vpi26, align 4
  %conv27 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %15, ptr noundef nonnull @.str.183, i32 noundef %17, i32 noundef %conv27) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %private34 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %pnvme_fcreq, i32 0, i32 13
  %22 = ptrtoint ptr %private34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private34, align 8
  %tobool35.not = icmp eq ptr %23, null
  br i1 %tobool35.not, label %if.end32.cleanup_crit_edge, label %if.end45, !prof !373

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %if.end32
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 41
  %24 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %load_flag, align 4
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool48.not = icmp eq i8 %26, 0
  br i1 %tobool48.not, label %do.body51, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body51:                                        ; preds = %if.end45
  %cfg_log_verbose52 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %27 = ptrtoint ptr %cfg_log_verbose52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cfg_log_verbose52, align 4
  %and53 = and i32 %28, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else66, label %do.end58

do.end58:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %pcidev60 = getelementptr inbounds %struct.lpfc_hba, ptr %21, i32 0, i32 165
  %29 = ptrtoint ptr %pcidev60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcidev60, align 4
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %brd_no63 = getelementptr inbounds %struct.lpfc_hba, ptr %21, i32 0, i32 197
  %31 = ptrtoint ptr %brd_no63 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %brd_no63, align 4
  %vpi64 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %vpi64 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vpi64, align 4
  %conv65 = zext i16 %34 to i32
  %port_id = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %pnvme_rport, i32 0, i32 7
  %35 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_id, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev61, ptr noundef nonnull @.str.186, i32 noundef %32, i32 noundef %conv65, i32 noundef %36, ptr noundef %pnvme_fcreq) #11
  br label %do.body81

if.else66:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool68.not = icmp eq i32 %28, 0
  br i1 %tobool68.not, label %if.then69, label %if.else66.do.body81_crit_edge

if.else66.do.body81_crit_edge:                    ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81

if.then69:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #10
  %brd_no72 = getelementptr inbounds %struct.lpfc_hba, ptr %21, i32 0, i32 197
  %37 = ptrtoint ptr %brd_no72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %brd_no72, align 4
  %vpi73 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %vpi73 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vpi73, align 4
  %conv74 = zext i16 %40 to i32
  %port_id75 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %pnvme_rport, i32 0, i32 7
  %41 = ptrtoint ptr %port_id75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_id75, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %21, ptr noundef nonnull @.str.186, i32 noundef %38, i32 noundef %conv74, i32 noundef %42, ptr noundef %pnvme_fcreq) #8
  br label %do.body81

do.body81:                                        ; preds = %if.then69, %if.else66.do.body81_crit_edge, %do.end58
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %21, i32 0, i32 221
  %call83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock) #8
  %hba_flag = getelementptr inbounds %struct.lpfc_hba, ptr %21, i32 0, i32 38
  %43 = ptrtoint ptr %hba_flag to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hba_flag, align 4
  %and88 = and i32 %44, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end126, label %if.then90

if.then90:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call83) #8
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %46) #8
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 8
  %pcidev105 = getelementptr inbounds %struct.lpfc_hba, ptr %48, i32 0, i32 165
  %49 = ptrtoint ptr %pcidev105 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcidev105, align 4
  %dev106 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %brd_no108 = getelementptr inbounds %struct.lpfc_hba, ptr %48, i32 0, i32 197
  %51 = ptrtoint ptr %brd_no108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %brd_no108, align 4
  %vpi109 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %53 = ptrtoint ptr %vpi109 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vpi109, align 4
  %conv110 = zext i16 %54 to i32
  %55 = ptrtoint ptr %hba_flag to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hba_flag, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev106, ptr noundef nonnull @.str.189, i32 noundef %52, i32 noundef %conv110, i32 noundef %56) #11
  br label %cleanup

if.end126:                                        ; preds = %do.body81
  %57 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %23, align 4
  %tobool127.not = icmp eq ptr %58, null
  br i1 %tobool127.not, label %if.then128, label %if.else163

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call83) #8
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %60) #8
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 8
  %pcidev144 = getelementptr inbounds %struct.lpfc_hba, ptr %62, i32 0, i32 165
  %63 = ptrtoint ptr %pcidev144 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pcidev144, align 4
  %dev145 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %brd_no147 = getelementptr inbounds %struct.lpfc_hba, ptr %62, i32 0, i32 197
  %65 = ptrtoint ptr %brd_no147 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %brd_no147, align 4
  %vpi148 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %67 = ptrtoint ptr %vpi148 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vpi148, align 4
  %conv149 = zext i16 %68 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev145, ptr noundef nonnull @.str.192, i32 noundef %66, i32 noundef %conv149) #11
  br label %cleanup

if.else163:                                       ; preds = %if.end126
  %69 = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 20
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %tobool164.not = icmp eq ptr %71, null
  br i1 %tobool164.not, label %if.then165, label %if.end201

if.then165:                                       ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call83) #8
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %73) #8
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %3, align 8
  %pcidev181 = getelementptr inbounds %struct.lpfc_hba, ptr %75, i32 0, i32 165
  %76 = ptrtoint ptr %pcidev181 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcidev181, align 4
  %dev182 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %brd_no184 = getelementptr inbounds %struct.lpfc_hba, ptr %75, i32 0, i32 197
  %78 = ptrtoint ptr %brd_no184 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %brd_no184, align 4
  %vpi185 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %80 = ptrtoint ptr %vpi185 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vpi185, align 4
  %conv186 = zext i16 %81 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev182, ptr noundef nonnull @.str.195, i32 noundef %79, i32 noundef %conv186) #11
  br label %cleanup

if.end201:                                        ; preds = %if.else163
  %cur_iocbq = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 7
  %buf_lock = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %buf_lock) #8
  %82 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %69, align 8
  %cmp203.not = icmp eq ptr %83, %pnvme_fcreq
  br i1 %cmp203.not, label %if.end244, label %do.body206

do.body206:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %85) #8
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 8
  %pcidev220 = getelementptr inbounds %struct.lpfc_hba, ptr %87, i32 0, i32 165
  %88 = ptrtoint ptr %pcidev220 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pcidev220, align 4
  %dev221 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %brd_no223 = getelementptr inbounds %struct.lpfc_hba, ptr %87, i32 0, i32 197
  %90 = ptrtoint ptr %brd_no223 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %brd_no223, align 4
  %vpi224 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %92 = ptrtoint ptr %vpi224 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vpi224, align 4
  %conv225 = zext i16 %93 to i32
  %94 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %69, align 8
  %sli4_xritag = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 7, i32 5
  %96 = ptrtoint ptr %sli4_xritag to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %sli4_xritag, align 4
  %conv227 = zext i16 %97 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev221, ptr noundef nonnull @.str.198, i32 noundef %91, i32 noundef %conv225, ptr noundef nonnull %58, ptr noundef %95, ptr noundef %pnvme_fcreq, i32 noundef %conv227) #11
  br label %out_unlock

if.end244:                                        ; preds = %if.end201
  %iocb_flag = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 7, i32 15
  %98 = ptrtoint ptr %iocb_flag to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %iocb_flag, align 4
  %and245 = and i32 %99, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %do.body248, label %if.end285

do.body248:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %101) #8
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %3, align 8
  %pcidev262 = getelementptr inbounds %struct.lpfc_hba, ptr %103, i32 0, i32 165
  %104 = ptrtoint ptr %pcidev262 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pcidev262, align 4
  %dev263 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %brd_no265 = getelementptr inbounds %struct.lpfc_hba, ptr %103, i32 0, i32 197
  %106 = ptrtoint ptr %brd_no265 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %brd_no265, align 4
  %vpi266 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %108 = ptrtoint ptr %vpi266 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %vpi266, align 4
  %conv267 = zext i16 %109 to i32
  %sli4_xritag268 = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 7, i32 5
  %110 = ptrtoint ptr %sli4_xritag268 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %sli4_xritag268, align 4
  %conv269 = zext i16 %111 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev263, ptr noundef nonnull @.str.201, i32 noundef %107, i32 noundef %conv267, ptr noundef %pnvme_fcreq, i32 noundef %conv269) #11
  br label %out_unlock

if.end285:                                        ; preds = %if.end244
  %xmt_fcp_abort = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_abort, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_abort, i32 1, i32 3, i32 1) #8
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_abort, ptr %xmt_fcp_abort, i32 1, ptr elementtype(i32) %xmt_fcp_abort) #8, !srcloc !377
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %21, i32 0, i32 304
  %113 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool286.not = icmp eq i16 %114, 0
  br i1 %tobool286.not, label %if.end285.if.end290_crit_edge, label %if.then287

if.end285.if.end290_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end290

if.then287:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  %sli4_xritag288 = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 7, i32 5
  %115 = ptrtoint ptr %sli4_xritag288 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %sli4_xritag288, align 4
  %hba_wqidx = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 7, i32 6
  %117 = ptrtoint ptr %hba_wqidx to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %hba_wqidx, align 2
  %port_id289 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %pnvme_rport, i32 0, i32 7
  %119 = ptrtoint ptr %port_id289 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port_id289, align 4
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %21, ptr noundef nonnull @.str.203, i16 noundef zeroext %116, i16 noundef zeroext %118, i32 noundef %120) #8
  br label %if.end290

if.end290:                                        ; preds = %if.then287, %if.end285.if.end290_crit_edge
  %121 = ptrtoint ptr %iocb_flag to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %iocb_flag, align 4
  %and292 = and i32 %122, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292)
  %tobool293.not = icmp eq i32 %and292, 0
  br i1 %tobool293.not, label %if.end332, label %do.body295

do.body295:                                       ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %124) #8
  %125 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %3, align 8
  %pcidev309 = getelementptr inbounds %struct.lpfc_hba, ptr %126, i32 0, i32 165
  %127 = ptrtoint ptr %pcidev309 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pcidev309, align 4
  %dev310 = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  %brd_no312 = getelementptr inbounds %struct.lpfc_hba, ptr %126, i32 0, i32 197
  %129 = ptrtoint ptr %brd_no312 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %brd_no312, align 4
  %vpi313 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %131 = ptrtoint ptr %vpi313 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %vpi313, align 4
  %conv314 = zext i16 %132 to i32
  %sli4_xritag315 = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 7, i32 5
  %133 = ptrtoint ptr %sli4_xritag315 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %sli4_xritag315, align 4
  %conv316 = zext i16 %134 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev310, ptr noundef nonnull @.str.205, i32 noundef %130, i32 noundef %conv314, ptr noundef %pnvme_fcreq, ptr noundef nonnull %58, i32 noundef %conv316) #11
  br label %out_unlock

if.end332:                                        ; preds = %if.end290
  %call333 = tail call i32 @lpfc_sli4_issue_abort_iotag(ptr noundef %21, ptr noundef %cur_iocbq, ptr noundef nonnull @lpfc_nvme_abort_fcreq_cmpl) #8
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call83) #8
  tail call void @lpfc_issue_hb_tmo(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333)
  %cmp336.not = icmp eq i32 %call333, 0
  br i1 %cmp336.not, label %do.body373, label %do.body339

do.body339:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %136) #8
  %137 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %3, align 8
  %pcidev353 = getelementptr inbounds %struct.lpfc_hba, ptr %138, i32 0, i32 165
  %139 = ptrtoint ptr %pcidev353 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pcidev353, align 4
  %dev354 = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44
  %brd_no356 = getelementptr inbounds %struct.lpfc_hba, ptr %138, i32 0, i32 197
  %141 = ptrtoint ptr %brd_no356 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %brd_no356, align 4
  %vpi357 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %143 = ptrtoint ptr %vpi357 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %vpi357, align 4
  %conv358 = zext i16 %144 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev354, ptr noundef nonnull @.str.208, i32 noundef %142, i32 noundef %conv358, i32 noundef %call333, ptr noundef %pnvme_fcreq) #11
  br label %cleanup

do.body373:                                       ; preds = %if.end332
  %145 = ptrtoint ptr %cfg_log_verbose52 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cfg_log_verbose52, align 4
  %and375 = and i32 %146, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and375)
  %tobool376.not = icmp eq i32 %and375, 0
  br i1 %tobool376.not, label %if.else390, label %do.end380

do.end380:                                        ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %3, align 8
  %pcidev382 = getelementptr inbounds %struct.lpfc_hba, ptr %148, i32 0, i32 165
  %149 = ptrtoint ptr %pcidev382 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pcidev382, align 4
  %dev383 = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 44
  %brd_no385 = getelementptr inbounds %struct.lpfc_hba, ptr %148, i32 0, i32 197
  %151 = ptrtoint ptr %brd_no385 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %brd_no385, align 4
  %vpi386 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %153 = ptrtoint ptr %vpi386 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %vpi386, align 4
  %conv387 = zext i16 %154 to i32
  %sli4_xritag388 = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 7, i32 5
  %155 = ptrtoint ptr %sli4_xritag388 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %sli4_xritag388, align 4
  %conv389 = zext i16 %156 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev383, ptr noundef nonnull @.str.211, i32 noundef %152, i32 noundef %conv387, i32 noundef %conv389) #11
  br label %cleanup

if.else390:                                       ; preds = %do.body373
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool392.not = icmp eq i32 %146, 0
  br i1 %tobool392.not, label %if.then393, label %if.else390.cleanup_crit_edge

if.else390.cleanup_crit_edge:                     ; preds = %if.else390
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then393:                                       ; preds = %if.else390
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %3, align 8
  %brd_no396 = getelementptr inbounds %struct.lpfc_hba, ptr %158, i32 0, i32 197
  %159 = ptrtoint ptr %brd_no396 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %brd_no396, align 4
  %vpi397 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %161 = ptrtoint ptr %vpi397 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %vpi397, align 4
  %conv398 = zext i16 %162 to i32
  %sli4_xritag399 = getelementptr inbounds %struct.lpfc_io_buf, ptr %58, i32 0, i32 7, i32 5
  %163 = ptrtoint ptr %sli4_xritag399 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %sli4_xritag399, align 4
  %conv400 = zext i16 %164 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %158, ptr noundef nonnull @.str.211, i32 noundef %160, i32 noundef %conv398, i32 noundef %conv400) #8
  br label %cleanup

out_unlock:                                       ; preds = %do.body295, %do.body248, %do.body206
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call83) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then393, %if.else390.cleanup_crit_edge, %do.end380, %do.body339, %if.then165, %if.then128, %if.then90, %if.end45.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then22, %if.else.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_nvme_xmt_ls_rsp(ptr nocapture noundef readonly %localport, ptr nocapture noundef readnone %remoteport, ptr noundef %ls_rsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phba = getelementptr i8, ptr %ls_rsp, i32 -12
  %0 = ptrtoint ptr %phba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phba, align 8
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ls_rsp, i32 -76
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %localport, i32 0, i32 4
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 8
  %call = tail call i32 @__lpfc_nvme_xmt_ls_rsp(ptr noundef %add.ptr, ptr noundef %ls_rsp, ptr noundef nonnull @__lpfc_nvme_xmt_ls_rsp_cmp) #8
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then4 [
    i32 0, label %if.end6
    i32 -114, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %xmt_ls_abort = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %8, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_abort, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_abort, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_abort, ptr %xmt_ls_abort, i32 1, ptr elementtype(i32) %xmt_ls_abort) #8, !srcloc !377
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_disc_state_machine(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvme_ls_req_cmp(ptr noundef %phba, ptr noundef %cmdwqe, ptr nocapture noundef readonly %wcqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %2 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcqe, align 4
  %localport = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 89
  %4 = ptrtoint ptr %localport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %localport, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then.if.end14_crit_edge, label %if.then5

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then5:                                         ; preds = %if.then
  %fc4NvmeLsCmpls = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %7, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fc4NvmeLsCmpls, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %fc4NvmeLsCmpls, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fc4NvmeLsCmpls, ptr %fc4NvmeLsCmpls, i32 1, ptr elementtype(i32) %fc4NvmeLsCmpls) #8, !srcloc !377
  %9 = and i32 %3, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.then5.if.end14_crit_edge, label %if.then7

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7:                                         ; preds = %if.then5
  %word3 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %10 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %word3, align 4
  %12 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %if.then7.if.end_crit_edge, label %if.then11

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %cmpl_ls_xb = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %7, i32 0, i32 14
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmpl_ls_xb, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmpl_ls_xb, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmpl_ls_xb, ptr %cmpl_ls_xb, i32 1, ptr elementtype(i32) %cmpl_ls_xb) #8, !srcloc !377
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then7.if.end_crit_edge
  %cmpl_ls_err = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %7, i32 0, i32 15
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmpl_ls_err, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmpl_ls_err, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmpl_ls_err, ptr %cmpl_ls_err, i32 1, ptr elementtype(i32) %cmpl_ls_err) #8, !srcloc !377
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then5.if.end14_crit_edge, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  tail call void @__lpfc_nvme_ls_req_cmp(ptr noundef %phba, ptr noundef %1, ptr noundef %cmdwqe, ptr noundef %wcqe)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_update_cmf_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_keep_pvt_pool_above_lowwm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_update_cmf_cmpl(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_get_io_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvme_io_cmd_wqe_cmpl(ptr noundef %phba, ptr nocapture noundef readonly %pwqeIn, ptr nocapture noundef readonly %wcqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %pwqeIn, i32 0, i32 18
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 8
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %pwqeIn, i32 0, i32 17
  %2 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end21

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %5) #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vpi, align 4
  %conv9 = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.151, i32 noundef %11, i32 noundef %conv9) #11
  br label %cleanup

if.end21:                                         ; preds = %entry
  %buf_lock = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %buf_lock) #8
  %14 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %if.then23, label %if.end60

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %18) #8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %pcidev39 = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 165
  %21 = ptrtoint ptr %pcidev39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcidev39, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %brd_no42 = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 197
  %23 = ptrtoint ptr %brd_no42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brd_no42, align 4
  %vpi43 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %vpi43 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vpi43, align 4
  %conv44 = zext i16 %26 to i32
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev40, ptr noundef nonnull @.str.154, i32 noundef %24, i32 noundef %conv44, ptr noundef nonnull %1, ptr noundef %28) #11
  tail call fastcc void @lpfc_release_nvme_buf(ptr noundef %phba, ptr noundef nonnull %1)
  br label %cleanup

if.end60:                                         ; preds = %if.end21
  %29 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wcqe, align 4
  %shr = lshr i32 %30, 8
  %and62 = and i32 %shr, 255
  %hba_wqidx = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 7, i32 6
  %31 = ptrtoint ptr %hba_wqidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hba_wqidx, align 2
  %conv63 = zext i16 %32 to i32
  %hdwq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 27
  %33 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdwq, align 8
  %io_cmpls = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %34, i32 %conv63, i32 17, i32 3
  %35 = ptrtoint ptr %io_cmpls to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_cmpls, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %io_cmpls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool64.not = icmp eq i32 %and62, 0
  br i1 %tobool64.not, label %if.end60.if.end78_crit_edge, label %land.rhs

if.end60.if.end78_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

land.rhs:                                         ; preds = %if.end60
  %localport = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 89
  %37 = ptrtoint ptr %localport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %localport, align 8
  %tobool65.not = icmp eq ptr %38, null
  br i1 %tobool65.not, label %land.rhs.if.end78_crit_edge, label %if.then68, !prof !374

land.rhs.if.end78_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then68:                                        ; preds = %land.rhs
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private, align 8
  %tobool70.not = icmp eq ptr %40, null
  br i1 %tobool70.not, label %if.then68.if.end78_crit_edge, label %if.then71

if.then68.if.end78_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then71:                                        ; preds = %if.then68
  %word3 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %41 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %word3, align 4
  %43 = and i32 %42, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool74.not = icmp eq i32 %43, 0
  br i1 %tobool74.not, label %if.then71.if.end76_crit_edge, label %if.then75

if.then71.if.end76_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then75:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %cmpl_fcp_xb = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %40, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmpl_fcp_xb, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmpl_fcp_xb, i32 1, i32 3, i32 1) #8
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmpl_fcp_xb, ptr %cmpl_fcp_xb, i32 1, ptr elementtype(i32) %cmpl_fcp_xb) #8, !srcloc !377
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.then71.if.end76_crit_edge
  %cmpl_fcp_err = getelementptr inbounds %struct.lpfc_nvme_lport, ptr %40, i32 0, i32 13
  %call.i.i719 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmpl_fcp_err, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmpl_fcp_err, i32 1, i32 3, i32 1) #8
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmpl_fcp_err, ptr %cmpl_fcp_err, i32 1, ptr elementtype(i32) %cmpl_fcp_err) #8, !srcloc !377
  br label %if.end78

if.end78:                                         ; preds = %if.end76, %if.then68.if.end78_crit_edge, %land.rhs.if.end78_crit_edge, %if.end60.if.end78_crit_edge
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 304
  %46 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool79.not = icmp eq i16 %47, 0
  br i1 %tobool79.not, label %if.end78.if.end83_crit_edge, label %if.then80

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %sli4_xritag = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 7, i32 5
  %48 = ptrtoint ptr %sli4_xritag to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sli4_xritag, align 4
  %conv82 = trunc i32 %and62 to i16
  %parameter = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %50 = ptrtoint ptr %parameter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %parameter, align 4
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %phba, ptr noundef nonnull @.str.156, i16 noundef zeroext %49, i16 noundef zeroext %conv82, i32 noundef %51) #8
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end78.if.end83_crit_edge
  %ndlp84 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %ndlp84 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndlp84, align 8
  %tobool85.not = icmp eq ptr %53, null
  br i1 %tobool85.not, label %do.body87, label %if.end120

do.body87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %55) #8
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 8
  %pcidev101 = getelementptr inbounds %struct.lpfc_hba, ptr %57, i32 0, i32 165
  %58 = ptrtoint ptr %pcidev101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcidev101, align 4
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %brd_no104 = getelementptr inbounds %struct.lpfc_hba, ptr %57, i32 0, i32 197
  %60 = ptrtoint ptr %brd_no104 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %brd_no104, align 4
  %vpi105 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %62 = ptrtoint ptr %vpi105 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vpi105, align 4
  %conv106 = zext i16 %63 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev102, ptr noundef nonnull @.str.158, i32 noundef %61, i32 noundef %conv106) #11
  br label %do.body303

if.end120:                                        ; preds = %if.end83
  %word3121 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %64 = ptrtoint ptr %word3121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %word3121, align 4
  %66 = and i32 %65, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 851968, i32 %66)
  %cmp124 = icmp eq i32 %66, 851968
  br i1 %cmp124, label %if.then126, label %if.else146

if.then126:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %rspaddr = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 1
  %67 = ptrtoint ptr %rspaddr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rspaddr, align 4
  %69 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %16, align 8
  %command_id = getelementptr inbounds %struct.nvme_fc_cmd_iu, ptr %70, i32 0, i32 9, i32 0, i32 0, i32 2
  %71 = ptrtoint ptr %command_id to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %command_id, align 2
  %conv130 = trunc i32 %65 to i16
  %iu_len = getelementptr inbounds %struct.nvme_fc_ersp_iu, ptr %68, i32 0, i32 2
  %73 = ptrtoint ptr %iu_len to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 8, ptr %iu_len, align 2
  %parameter131 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %74 = ptrtoint ptr %parameter131 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %parameter131, align 4
  %rsn = getelementptr inbounds %struct.nvme_fc_ersp_iu, ptr %68, i32 0, i32 3
  %76 = ptrtoint ptr %rsn to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %rsn, align 4
  %payload_length = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 6
  %77 = ptrtoint ptr %payload_length to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %payload_length, align 4
  %xfrd_len = getelementptr inbounds %struct.nvme_fc_ersp_iu, ptr %68, i32 0, i32 4
  %79 = ptrtoint ptr %xfrd_len to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %xfrd_len, align 8
  %rsvd12 = getelementptr inbounds %struct.nvme_fc_ersp_iu, ptr %68, i32 0, i32 5
  %80 = ptrtoint ptr %rsvd12 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %rsvd12, align 4
  %cqe = getelementptr inbounds %struct.nvme_fc_ersp_iu, ptr %68, i32 0, i32 6
  %total_data_placed = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %81 = ptrtoint ptr %total_data_placed to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %total_data_placed, align 4
  %incdec.ptr = getelementptr i32, ptr %cqe, i32 1
  %83 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %cqe, align 4
  %84 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wcqe, align 4
  %conv136 = and i32 %85, 65535
  %86 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv136, ptr %incdec.ptr, align 4
  %sq_head = getelementptr inbounds %struct.nvme_fc_ersp_iu, ptr %68, i32 0, i32 6, i32 1
  %87 = ptrtoint ptr %sq_head to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv130, ptr %sq_head, align 8
  %sqid = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 11
  %88 = ptrtoint ptr %sqid to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %sqid, align 8
  %sq_id = getelementptr inbounds %struct.nvme_fc_ersp_iu, ptr %68, i32 0, i32 6, i32 2
  %90 = ptrtoint ptr %sq_id to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %sq_id, align 2
  %command_id140 = getelementptr inbounds %struct.nvme_fc_ersp_iu, ptr %68, i32 0, i32 6, i32 3
  %91 = ptrtoint ptr %command_id140 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %72, ptr %command_id140, align 4
  %status142 = getelementptr inbounds %struct.nvme_fc_ersp_iu, ptr %68, i32 0, i32 6, i32 4
  %92 = ptrtoint ptr %status142 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %status142, align 2
  %status143 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 14
  %93 = ptrtoint ptr %status143 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %status143, align 2
  %result144 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 15
  %94 = ptrtoint ptr %result144 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %result144, align 4
  %rcv_rsplen = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 15
  %95 = ptrtoint ptr %rcv_rsplen to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 32, ptr %rcv_rsplen, align 8
  %96 = load i32, ptr %payload_length, align 4
  %transferred_length = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 14
  %97 = ptrtoint ptr %transferred_length to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %transferred_length, align 4
  br label %if.end352

if.else146:                                       ; preds = %if.end120
  %98 = trunc i32 %shr to i16
  %conv148 = and i16 %98, 15
  %status149 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 14
  %99 = ptrtoint ptr %status149 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv148, ptr %status149, align 2
  %parameter150 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %100 = ptrtoint ptr %parameter150 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %parameter150, align 4
  %and151 = and i32 %101, 511
  %result152 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 15
  %102 = ptrtoint ptr %result152 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and151, ptr %result152, align 4
  %conv154 = zext i16 %conv148 to i32
  %103 = zext i32 %conv154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %conv154, label %if.else146.do.body303_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb159
    i32 3, label %sw.bb257
  ]

if.else146.do.body303_crit_edge:                  ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body303

sw.bb:                                            ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #10
  %total_data_placed155 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %104 = ptrtoint ptr %total_data_placed155 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %total_data_placed155, align 4
  %transferred_length156 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 14
  %106 = ptrtoint ptr %transferred_length156 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %transferred_length156, align 4
  %rcv_rsplen157 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 15
  %107 = ptrtoint ptr %rcv_rsplen157 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %rcv_rsplen157, align 8
  %status158 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 16
  %108 = ptrtoint ptr %status158 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %status158, align 4
  br label %if.end352

sw.bb159:                                         ; preds = %if.else146
  %total_data_placed160 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %109 = ptrtoint ptr %total_data_placed160 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %total_data_placed160, align 4
  %transferred_length161 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 14
  %111 = ptrtoint ptr %transferred_length161 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %transferred_length161, align 4
  %112 = ptrtoint ptr %parameter150 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %parameter150, align 4
  %conv163 = trunc i32 %113 to i16
  %rcv_rsplen164 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 15
  %114 = ptrtoint ptr %rcv_rsplen164 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv163, ptr %rcv_rsplen164, align 8
  %status165 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 16
  %115 = ptrtoint ptr %status165 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %status165, align 4
  %conv167 = and i32 %113, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv167)
  %cmp168 = icmp eq i32 %conv167, 32
  br i1 %cmp168, label %if.then170, label %do.body210

if.then170:                                       ; preds = %sw.bb159
  %116 = ptrtoint ptr %status149 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %status149, align 2
  %117 = ptrtoint ptr %result152 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %result152, align 4
  %cfg_log_verbose174 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %118 = ptrtoint ptr %cfg_log_verbose174 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cfg_log_verbose174, align 4
  %and175 = and i32 %119, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.else192, label %do.end180

do.end180:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %3, align 8
  %pcidev182 = getelementptr inbounds %struct.lpfc_hba, ptr %121, i32 0, i32 165
  %122 = ptrtoint ptr %pcidev182 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pcidev182, align 4
  %dev183 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %brd_no185 = getelementptr inbounds %struct.lpfc_hba, ptr %121, i32 0, i32 197
  %124 = ptrtoint ptr %brd_no185 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %brd_no185, align 4
  %vpi186 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %126 = ptrtoint ptr %vpi186 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %vpi186, align 4
  %conv187 = zext i16 %127 to i32
  %sli4_xritag189 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 7, i32 5
  %128 = ptrtoint ptr %sli4_xritag189 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %sli4_xritag189, align 4
  %conv190 = zext i16 %129 to i32
  %130 = ptrtoint ptr %total_data_placed160 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %total_data_placed160, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev183, ptr noundef nonnull @.str.161, i32 noundef %125, i32 noundef %conv187, i32 noundef %conv190, i32 noundef %131) #11
  br label %if.end352

if.else192:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool194.not = icmp eq i32 %119, 0
  br i1 %tobool194.not, label %if.then195, label %if.else192.if.end352_crit_edge

if.else192.if.end352_crit_edge:                   ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end352

if.then195:                                       ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %3, align 8
  %brd_no198 = getelementptr inbounds %struct.lpfc_hba, ptr %133, i32 0, i32 197
  %134 = ptrtoint ptr %brd_no198 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %brd_no198, align 4
  %vpi199 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %136 = ptrtoint ptr %vpi199 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %vpi199, align 4
  %conv200 = zext i16 %137 to i32
  %sli4_xritag202 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 7, i32 5
  %138 = ptrtoint ptr %sli4_xritag202 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %sli4_xritag202, align 4
  %conv203 = zext i16 %139 to i32
  %140 = ptrtoint ptr %total_data_placed160 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %total_data_placed160, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %133, ptr noundef nonnull @.str.161, i32 noundef %135, i32 noundef %conv200, i32 noundef %conv203, i32 noundef %141) #8
  br label %if.end352

do.body210:                                       ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %143) #8
  %144 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %3, align 8
  %pcidev224 = getelementptr inbounds %struct.lpfc_hba, ptr %145, i32 0, i32 165
  %146 = ptrtoint ptr %pcidev224 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pcidev224, align 4
  %dev225 = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  %brd_no227 = getelementptr inbounds %struct.lpfc_hba, ptr %145, i32 0, i32 197
  %148 = ptrtoint ptr %brd_no227 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %brd_no227, align 4
  %vpi228 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %150 = ptrtoint ptr %vpi228 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %vpi228, align 4
  %conv229 = zext i16 %151 to i32
  %sli4_xritag231 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 7, i32 5
  %152 = ptrtoint ptr %sli4_xritag231 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %sli4_xritag231, align 4
  %conv232 = zext i16 %153 to i32
  %154 = ptrtoint ptr %status149 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %status149, align 2
  %conv234 = zext i16 %155 to i32
  %156 = ptrtoint ptr %result152 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %result152, align 4
  %158 = ptrtoint ptr %total_data_placed160 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %total_data_placed160, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev225, ptr noundef nonnull @.str.164, i32 noundef %149, i32 noundef %conv229, i32 noundef %conv232, i32 noundef %conv234, i32 noundef %157, i32 noundef %159) #11
  br label %if.end352

sw.bb257:                                         ; preds = %if.else146
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %and151)
  %cmp259 = icmp eq i32 %and151, 22
  br i1 %cmp259, label %do.body262, label %sw.bb257.do.body303_crit_edge

sw.bb257.do.body303_crit_edge:                    ; preds = %sw.bb257
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body303

do.body262:                                       ; preds = %sw.bb257
  %cfg_log_verbose263 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %160 = ptrtoint ptr %cfg_log_verbose263 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cfg_log_verbose263, align 4
  %and264 = and i32 %161, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %if.else283, label %do.end269

do.end269:                                        ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %3, align 8
  %pcidev271 = getelementptr inbounds %struct.lpfc_hba, ptr %163, i32 0, i32 165
  %164 = ptrtoint ptr %pcidev271 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pcidev271, align 4
  %dev272 = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 44
  %brd_no274 = getelementptr inbounds %struct.lpfc_hba, ptr %163, i32 0, i32 197
  %166 = ptrtoint ptr %brd_no274 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %brd_no274, align 4
  %vpi275 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %168 = ptrtoint ptr %vpi275 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %vpi275, align 4
  %conv276 = zext i16 %169 to i32
  %sli4_xritag278 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 7, i32 5
  %170 = ptrtoint ptr %sli4_xritag278 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %sli4_xritag278, align 4
  %conv279 = zext i16 %171 to i32
  %172 = ptrtoint ptr %word3121 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %word3121, align 4
  %shr281 = lshr i32 %173, 28
  %and282 = and i32 %shr281, 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev272, ptr noundef nonnull @.str.167, i32 noundef %167, i32 noundef %conv276, ptr noundef nonnull %1, ptr noundef nonnull %16, i32 noundef %conv279, i32 noundef %and282) #11
  br label %do.body303

if.else283:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool285.not = icmp eq i32 %161, 0
  br i1 %tobool285.not, label %if.then286, label %if.else283.do.body303_crit_edge

if.else283.do.body303_crit_edge:                  ; preds = %if.else283
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body303

if.then286:                                       ; preds = %if.else283
  call void @__sanitizer_cov_trace_pc() #10
  %174 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %3, align 8
  %brd_no289 = getelementptr inbounds %struct.lpfc_hba, ptr %175, i32 0, i32 197
  %176 = ptrtoint ptr %brd_no289 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %brd_no289, align 4
  %vpi290 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %178 = ptrtoint ptr %vpi290 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %vpi290, align 4
  %conv291 = zext i16 %179 to i32
  %sli4_xritag293 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 7, i32 5
  %180 = ptrtoint ptr %sli4_xritag293 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %sli4_xritag293, align 4
  %conv294 = zext i16 %181 to i32
  %182 = ptrtoint ptr %word3121 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %word3121, align 4
  %shr296 = lshr i32 %183, 28
  %and297 = and i32 %shr296, 1
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %175, ptr noundef nonnull @.str.167, i32 noundef %177, i32 noundef %conv291, ptr noundef nonnull %1, ptr noundef nonnull %16, i32 noundef %conv294, i32 noundef %and297) #8
  br label %do.body303

do.body303:                                       ; preds = %if.then286, %if.else283.do.body303_crit_edge, %do.end269, %sw.bb257.do.body303_crit_edge, %if.else146.do.body303_crit_edge, %do.body87
  %cfg_log_verbose304 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %184 = ptrtoint ptr %cfg_log_verbose304 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cfg_log_verbose304, align 4
  %and305 = and i32 %185, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %if.else326, label %do.end310

do.end310:                                        ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %3, align 8
  %pcidev312 = getelementptr inbounds %struct.lpfc_hba, ptr %187, i32 0, i32 165
  %188 = ptrtoint ptr %pcidev312 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pcidev312, align 4
  %dev313 = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 44
  %brd_no315 = getelementptr inbounds %struct.lpfc_hba, ptr %187, i32 0, i32 197
  %190 = ptrtoint ptr %brd_no315 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %brd_no315, align 4
  %vpi316 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %192 = ptrtoint ptr %vpi316 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %vpi316, align 4
  %conv317 = zext i16 %193 to i32
  %sli4_xritag319 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 7, i32 5
  %194 = ptrtoint ptr %sli4_xritag319 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %sli4_xritag319, align 4
  %conv320 = zext i16 %195 to i32
  %status321 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 14
  %196 = ptrtoint ptr %status321 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %status321, align 2
  %conv322 = zext i16 %197 to i32
  %result323 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 15
  %198 = ptrtoint ptr %result323 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %result323, align 4
  %parameter324 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %200 = ptrtoint ptr %parameter324 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %parameter324, align 4
  %total_data_placed325 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %202 = ptrtoint ptr %total_data_placed325 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %total_data_placed325, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev313, ptr noundef nonnull @.str.170, i32 noundef %191, i32 noundef %conv317, i32 noundef %conv320, i32 noundef %conv322, i32 noundef %199, i32 noundef %201, i32 noundef %203) #11
  br label %do.end346

if.else326:                                       ; preds = %do.body303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool328.not = icmp eq i32 %185, 0
  br i1 %tobool328.not, label %if.then329, label %if.else326.do.end346_crit_edge

if.else326.do.end346_crit_edge:                   ; preds = %if.else326
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end346

if.then329:                                       ; preds = %if.else326
  call void @__sanitizer_cov_trace_pc() #10
  %204 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %3, align 8
  %brd_no332 = getelementptr inbounds %struct.lpfc_hba, ptr %205, i32 0, i32 197
  %206 = ptrtoint ptr %brd_no332 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %brd_no332, align 4
  %vpi333 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %208 = ptrtoint ptr %vpi333 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %vpi333, align 4
  %conv334 = zext i16 %209 to i32
  %sli4_xritag336 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 7, i32 5
  %210 = ptrtoint ptr %sli4_xritag336 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %sli4_xritag336, align 4
  %conv337 = zext i16 %211 to i32
  %status338 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 14
  %212 = ptrtoint ptr %status338 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %status338, align 2
  %conv339 = zext i16 %213 to i32
  %result340 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 15
  %214 = ptrtoint ptr %result340 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %result340, align 4
  %parameter341 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %216 = ptrtoint ptr %parameter341 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %parameter341, align 4
  %total_data_placed342 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %218 = ptrtoint ptr %total_data_placed342 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %total_data_placed342, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %205, ptr noundef nonnull @.str.170, i32 noundef %207, i32 noundef %conv334, i32 noundef %conv337, i32 noundef %conv339, i32 noundef %215, i32 noundef %217, i32 noundef %219) #8
  br label %do.end346

do.end346:                                        ; preds = %if.then329, %if.else326.do.end346_crit_edge, %do.end310
  %transferred_length347 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 14
  %220 = ptrtoint ptr %transferred_length347 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %transferred_length347, align 4
  %rcv_rsplen348 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 15
  %221 = ptrtoint ptr %rcv_rsplen348 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %rcv_rsplen348, align 8
  %status349 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 16
  %222 = ptrtoint ptr %status349 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 6, ptr %status349, align 4
  %223 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %3, align 8
  %pcidev351 = getelementptr inbounds %struct.lpfc_hba, ptr %224, i32 0, i32 165
  %225 = ptrtoint ptr %pcidev351 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pcidev351, align 4
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %226, i32 0, i32 43
  %227 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %228)
  %cmp.i.not = icmp eq i32 %228, 1
  br label %if.end352

if.end352:                                        ; preds = %do.end346, %do.body210, %if.then195, %if.else192.if.end352_crit_edge, %do.end180, %sw.bb, %if.then126
  %offline.0 = phi i1 [ true, %if.then126 ], [ %cmp.i.not, %do.end346 ], [ true, %do.end180 ], [ true, %if.else192.if.end352_crit_edge ], [ true, %if.then195 ], [ true, %do.body210 ], [ true, %sw.bb ]
  %word3353 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %229 = ptrtoint ptr %word3353 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %word3353, align 4
  %231 = and i32 %230, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool356.not = icmp ne i32 %231, 0
  %or.cond = select i1 %tobool356.not, i1 %offline.0, i1 false
  %flags = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 13
  %232 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %flags, align 8
  %234 = and i16 %233, -2
  %masksel = zext i1 %or.cond to i16
  %.sink = or i16 %234, %masksel
  store i16 %.sink, ptr %flags, align 8
  %ts_cmd_start = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 21
  %235 = ptrtoint ptr %ts_cmd_start to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %ts_cmd_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %236)
  %tobool367.not = icmp eq i64 %236, 0
  br i1 %tobool367.not, label %if.end352.if.end371_crit_edge, label %if.then368

if.end352.if.end371_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end371

if.then368:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #10
  %isr_timestamp = getelementptr inbounds %struct.lpfc_iocbq, ptr %pwqeIn, i32 0, i32 9
  %237 = ptrtoint ptr %isr_timestamp to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %isr_timestamp, align 8
  %ts_isr_cmpl = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 24
  %239 = ptrtoint ptr %ts_isr_cmpl to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %238, ptr %ts_isr_cmpl, align 8
  %call.i = tail call i64 @ktime_get() #8
  %ts_data_io = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 25
  %240 = ptrtoint ptr %ts_data_io to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 %call.i, ptr %ts_data_io, align 8
  %ktime_last_cmd = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 352
  %241 = ptrtoint ptr %ktime_last_cmd to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %call.i, ptr %ktime_last_cmd, align 8
  tail call void @lpfc_io_ktime(ptr noundef %phba, ptr noundef nonnull %1) #8
  br label %if.end371

if.end371:                                        ; preds = %if.then368, %if.end352.if.end371_crit_edge
  %hdwqstat_on = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 348
  %242 = ptrtoint ptr %hdwqstat_on to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %hdwqstat_on, align 8
  %244 = and i16 %243, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %244)
  %tobool374.not = icmp eq i16 %244, 0
  br i1 %tobool374.not, label %if.end371.if.end474_crit_edge, label %if.then381, !prof !374

if.end371.if.end474_crit_edge:                    ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end474

if.then381:                                       ; preds = %if.end371
  %245 = tail call i32 @llvm.read_register.i32(metadata !362) #8
  %and.i = and i32 %245, -16384
  %246 = inttoptr i32 %and.i to ptr
  %cpu383 = getelementptr inbounds %struct.thread_info, ptr %246, i32 0, i32 3
  %247 = ptrtoint ptr %cpu383 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %cpu383, align 4
  %249 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !378
  %c_stat = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 119
  %250 = ptrtoint ptr %c_stat to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %c_stat, align 8
  %cmpl_io = getelementptr inbounds %struct.lpfc_hdwq_stat, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %cmpl_io to i32
  %253 = ptrtoint ptr %cpu383 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %cpu383, align 4
  %arrayidx405 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %254
  %255 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx405, align 4
  %add = add i32 %256, %252
  %257 = inttoptr i32 %add to ptr
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %257, align 4
  %add406 = add i32 %259, 1
  store i32 %add406, ptr %257, align 4
  %260 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !379
  %and.i.i = and i32 %260, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool417.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool417.not, label %if.then426, label %if.then381.do.end429_crit_edge, !prof !373

if.then381.do.end429_crit_edge:                   ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end429

if.then426:                                       ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end429

do.end429:                                        ; preds = %if.then426, %if.then381.do.end429_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %249) #8, !srcloc !380
  %cpu436 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 10
  %261 = ptrtoint ptr %cpu436 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %cpu436, align 2
  %conv437 = zext i16 %262 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %248, i32 %conv437)
  %cmp438.not = icmp eq i32 %248, %conv437
  br i1 %cmp438.not, label %do.end429.if.end474_crit_edge, label %do.body441

do.end429.if.end474_crit_edge:                    ; preds = %do.end429
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end474

do.body441:                                       ; preds = %do.end429
  %cfg_log_verbose442 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %263 = ptrtoint ptr %cfg_log_verbose442 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %cfg_log_verbose442, align 4
  %and443 = and i32 %264, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and443)
  %tobool444.not = icmp eq i32 %and443, 0
  br i1 %tobool444.not, label %if.else458, label %do.end448

do.end448:                                        ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #10
  %265 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %3, align 8
  %pcidev450 = getelementptr inbounds %struct.lpfc_hba, ptr %266, i32 0, i32 165
  %267 = ptrtoint ptr %pcidev450 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %pcidev450, align 4
  %dev451 = getelementptr inbounds %struct.pci_dev, ptr %268, i32 0, i32 44
  %brd_no453 = getelementptr inbounds %struct.lpfc_hba, ptr %266, i32 0, i32 197
  %269 = ptrtoint ptr %brd_no453 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %brd_no453, align 4
  %vpi454 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %271 = ptrtoint ptr %vpi454 to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %vpi454, align 4
  %conv455 = zext i16 %272 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev451, ptr noundef nonnull @.str.173, i32 noundef %270, i32 noundef %conv455, i32 noundef %248, i32 noundef %conv437) #11
  br label %if.end474

if.else458:                                       ; preds = %do.body441
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool460.not = icmp eq i32 %264, 0
  br i1 %tobool460.not, label %if.then461, label %if.else458.if.end474_crit_edge

if.else458.if.end474_crit_edge:                   ; preds = %if.else458
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end474

if.then461:                                       ; preds = %if.else458
  call void @__sanitizer_cov_trace_pc() #10
  %273 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %3, align 8
  %brd_no464 = getelementptr inbounds %struct.lpfc_hba, ptr %274, i32 0, i32 197
  %275 = ptrtoint ptr %brd_no464 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %brd_no464, align 4
  %vpi465 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %277 = ptrtoint ptr %vpi465 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %vpi465, align 4
  %conv466 = zext i16 %278 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %274, ptr noundef nonnull @.str.173, i32 noundef %276, i32 noundef %conv466, i32 noundef %248, i32 noundef %conv437) #8
  br label %if.end474

if.end474:                                        ; preds = %if.then461, %if.else458.if.end474_crit_edge, %do.end448, %do.end429.if.end474_crit_edge, %if.end371.if.end474_crit_edge
  %flags475 = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 13
  %279 = ptrtoint ptr %flags475 to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %flags475, align 8
  %281 = and i16 %280, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %281)
  %tobool478.not = icmp eq i16 %281, 0
  br i1 %tobool478.not, label %if.then479, label %if.end474.if.end482_crit_edge

if.end474.if.end482_crit_edge:                    ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end482

if.then479:                                       ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #10
  %private480 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 13
  %282 = ptrtoint ptr %private480 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %private480, align 8
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %283, align 4
  %285 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %14, align 8
  br label %if.end482

if.end482:                                        ; preds = %if.then479, %if.end474.if.end482_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #8
  %cmf_active_mode = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 394
  %286 = ptrtoint ptr %cmf_active_mode to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %cmf_active_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %cmp484.not = icmp eq i32 %287, 0
  br i1 %cmp484.not, label %if.end482.if.end498_crit_edge, label %land.lhs.true486

if.end482.if.end498_crit_edge:                    ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end498

land.lhs.true486:                                 ; preds = %if.end482
  %io_dir = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 10
  %288 = ptrtoint ptr %io_dir to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %io_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %289)
  %cmp487 = icmp eq i32 %289, 2
  br i1 %cmp487, label %land.lhs.true489, label %land.lhs.true486.if.end498_crit_edge

land.lhs.true486.if.end498_crit_edge:             ; preds = %land.lhs.true486
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end498

land.lhs.true489:                                 ; preds = %land.lhs.true486
  %payload_length490 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 6
  %290 = ptrtoint ptr %payload_length490 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %payload_length490, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool491.not = icmp eq i32 %291, 0
  br i1 %tobool491.not, label %land.lhs.true489.if.end498_crit_edge, label %if.then492

land.lhs.true489.if.end498_crit_edge:             ; preds = %land.lhs.true489
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end498

if.then492:                                       ; preds = %land.lhs.true489
  call void @__sanitizer_cov_trace_pc() #10
  %call.i720 = tail call i64 @ktime_get() #8
  %rx_cmd_start = getelementptr inbounds %struct.lpfc_io_buf, ptr %1, i32 0, i32 26
  %292 = ptrtoint ptr %rx_cmd_start to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %rx_cmd_start, align 8
  %sub = sub i64 %call.i720, %293
  %conv495 = and i64 %sub, 4294967295
  %294 = ptrtoint ptr %payload_length490 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %payload_length490, align 4
  %call497 = tail call i32 @lpfc_update_cmf_cmpl(ptr noundef %phba, i64 noundef %conv495, i32 noundef %295, ptr noundef null) #8
  br label %if.end498

if.end498:                                        ; preds = %if.then492, %land.lhs.true489.if.end498_crit_edge, %land.lhs.true486.if.end498_crit_edge, %if.end482.if.end498_crit_edge
  br i1 %tobool478.not, label %if.then500, label %if.end498.if.end501_crit_edge

if.end498.if.end501_crit_edge:                    ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end501

if.then500:                                       ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #10
  %done = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %16, i32 0, i32 12
  %296 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %done, align 4
  tail call void %297(ptr noundef nonnull %16) #8
  br label %if.end501

if.end501:                                        ; preds = %if.then500, %if.end498.if.end501_crit_edge
  tail call fastcc void @lpfc_release_nvme_buf(ptr noundef %phba, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end501, %if.then23, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_io_ktime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_get_sgl_per_hdwq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_findnode_did(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli4_issue_abort_iotag(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__lpfc_nvme_xmt_ls_rsp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lpfc_nvme_xmt_ls_rsp_cmp(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_release_io_buf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !171, !172, !173, !175, !176, !177, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !259, !261, !262, !263, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !350, !351, !352, !353, !355, !356, !357, !359, !360, !361}
!llvm.named.register.sp = !{!362}
!llvm.module.flags = !{!363, !364, !365, !366, !367, !368, !369, !370}
!llvm.ident = !{!371}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 280, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lpfc_nvme_handle_lsreq._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lpfc_nvme_handle_lsreq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 320, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__lpfc_nvme_ls_req_cmp._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @__lpfc_nvme_ls_req_cmp._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 329, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 341, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__lpfc_nvme_ls_req_cmp._entry.9, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @__lpfc_nvme_ls_req_cmp._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 545, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__lpfc_nvme_ls_req._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @__lpfc_nvme_ls_req._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 556, i32 3}
!27 = !{ptr @__lpfc_nvme_ls_req._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @__lpfc_nvme_ls_req._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 580, i32 3}
!31 = !{ptr @__lpfc_nvme_ls_req._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__lpfc_nvme_ls_req._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 589, i32 3}
!35 = !{ptr @__lpfc_nvme_ls_req._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @__lpfc_nvme_ls_req._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 613, i32 2}
!39 = !{ptr @__lpfc_nvme_ls_req._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @__lpfc_nvme_ls_req._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 624, i32 3}
!43 = !{ptr @__lpfc_nvme_ls_req._entry.26, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @__lpfc_nvme_ls_req._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 702, i32 3}
!47 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__lpfc_nvme_ls_abort._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @__lpfc_nvme_ls_abort._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 709, i32 2}
!52 = !{ptr @__lpfc_nvme_ls_abort._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @__lpfc_nvme_ls_abort._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 739, i32 2}
!56 = !{ptr @__lpfc_nvme_ls_abort._entry.34, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @__lpfc_nvme_ls_abort._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1744, i32 2}
!60 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @lpfc_nvme_abort_fcreq_cmpl._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @lpfc_nvme_abort_fcreq_cmpl._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2102, i32 3}
!65 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @lpfc_nvme_create_localport._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @lpfc_nvme_create_localport._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2230, i32 2}
!70 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @lpfc_nvme_destroy_localport._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @lpfc_nvme_destroy_localport._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2252, i32 3}
!75 = !{ptr @lpfc_nvme_destroy_localport._entry.43, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @lpfc_nvme_destroy_localport._entry_ptr.45, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2256, i32 3}
!79 = !{ptr @lpfc_nvme_destroy_localport._entry.46, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @lpfc_nvme_destroy_localport._entry_ptr.48, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2274, i32 3}
!83 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @lpfc_nvme_update_localport._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @lpfc_nvme_update_localport._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2280, i32 3}
!89 = !{ptr @lpfc_nvme_update_localport._entry.52, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @lpfc_nvme_update_localport._entry_ptr.54, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.56, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2285, i32 2}
!93 = !{ptr @lpfc_nvme_update_localport._entry.55, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @lpfc_nvme_update_localport._entry_ptr.57, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2295, i32 2}
!97 = !{ptr @lpfc_nvme_update_localport._entry.58, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @lpfc_nvme_update_localport._entry_ptr.60, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.61, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2315, i32 2}
!101 = !{ptr @.str.62, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @lpfc_nvme_register_port._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @lpfc_nvme_register_port._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2356, i32 4}
!106 = !{ptr @lpfc_nvme_register_port._entry.63, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @lpfc_nvme_register_port._entry_ptr.65, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2406, i32 3}
!110 = !{ptr @lpfc_nvme_register_port._entry.66, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @lpfc_nvme_register_port._entry_ptr.68, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.70, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2417, i32 3}
!114 = !{ptr @lpfc_nvme_register_port._entry.69, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @lpfc_nvme_register_port._entry_ptr.71, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.72, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2450, i32 2}
!118 = !{ptr @.str.73, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @lpfc_nvme_rescan_port._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @lpfc_nvme_rescan_port._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2464, i32 3}
!123 = !{ptr @lpfc_nvme_rescan_port._entry.74, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @lpfc_nvme_rescan_port._entry_ptr.76, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.78, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2471, i32 2}
!127 = !{ptr @lpfc_nvme_rescan_port._entry.77, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @lpfc_nvme_rescan_port._entry_ptr.79, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.80, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2519, i32 2}
!131 = !{ptr @.str.81, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @lpfc_nvme_unregister_port._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @lpfc_nvme_unregister_port._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.83, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2558, i32 4}
!136 = !{ptr @lpfc_nvme_unregister_port._entry.82, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @lpfc_nvme_unregister_port._entry_ptr.84, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.86, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2568, i32 2}
!140 = !{ptr @lpfc_nvme_unregister_port._entry.85, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @lpfc_nvme_unregister_port._entry_ptr.87, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.88, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2588, i32 2}
!144 = !{ptr @.str.89, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @lpfc_sli4_nvme_pci_offline_aborted._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @lpfc_sli4_nvme_pci_offline_aborted._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.90, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2632, i32 2}
!149 = !{ptr @.str.91, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @lpfc_sli4_nvme_xri_aborted._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @lpfc_sli4_nvme_xri_aborted._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.92, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2689, i32 5}
!154 = !{ptr @.str.93, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @lpfc_nvme_wait_for_io_drain._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @lpfc_nvme_wait_for_io_drain._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.94, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2732, i32 2}
!159 = !{ptr @.str.95, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @lpfc_nvme_cancel_iocb._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @lpfc_nvme_cancel_iocb._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.96, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 409, i32 3}
!164 = !{ptr @.str.97, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @lpfc_nvme_gen_req._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @lpfc_nvme_gen_req._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.98, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 492, i32 2}
!169 = !{ptr @.str.100, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 497, i32 3}
!171 = !{ptr @lpfc_nvme_gen_req._entry.99, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @lpfc_nvme_gen_req._entry_ptr.101, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.103, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 507, i32 2}
!175 = !{ptr @lpfc_nvme_gen_req._entry.102, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @lpfc_nvme_gen_req._entry_ptr.104, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @lpfc_nvme_template, !178, !"lpfc_nvme_template", i1 false, i1 false}
!178 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1923, i32 37}
!179 = !{ptr @.str.105, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 163, i32 2}
!181 = !{ptr @.str.106, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @lpfc_nvme_localport_delete._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @lpfc_nvme_localport_delete._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 193, i32 3}
!186 = !{ptr @.str.108, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @lpfc_nvme_remoteport_delete._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @lpfc_nvme_remoteport_delete._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.110, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 200, i32 3}
!191 = !{ptr @lpfc_nvme_remoteport_delete._entry.109, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @lpfc_nvme_remoteport_delete._entry_ptr.111, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.113, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 211, i32 2}
!195 = !{ptr @lpfc_nvme_remoteport_delete._entry.112, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @lpfc_nvme_remoteport_delete._entry_ptr.114, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.115, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 108, i32 9}
!199 = !{ptr @.str.116, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 112, i32 9}
!201 = !{ptr @.str.117, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 116, i32 2}
!203 = !{ptr @.str.118, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @lpfc_nvme_create_queue._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @lpfc_nvme_create_queue._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.119, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 152, i32 2}
!208 = !{ptr @.str.120, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @lpfc_nvme_delete_queue._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @lpfc_nvme_delete_queue._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.121, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1509, i32 3}
!213 = !{ptr @.str.122, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @lpfc_nvme_fcp_io_submit._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @lpfc_nvme_fcp_io_submit._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.124, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1519, i32 3}
!218 = !{ptr @lpfc_nvme_fcp_io_submit._entry.123, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @lpfc_nvme_fcp_io_submit._entry_ptr.125, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.127, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1528, i32 3}
!222 = !{ptr @lpfc_nvme_fcp_io_submit._entry.126, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @lpfc_nvme_fcp_io_submit._entry_ptr.128, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.130, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1548, i32 3}
!226 = !{ptr @lpfc_nvme_fcp_io_submit._entry.129, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @lpfc_nvme_fcp_io_submit._entry_ptr.131, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.133, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1560, i32 3}
!230 = !{ptr @lpfc_nvme_fcp_io_submit._entry.132, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @lpfc_nvme_fcp_io_submit._entry_ptr.134, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.136, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1602, i32 4}
!234 = !{ptr @lpfc_nvme_fcp_io_submit._entry.135, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @lpfc_nvme_fcp_io_submit._entry_ptr.137, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.139, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1625, i32 3}
!238 = !{ptr @lpfc_nvme_fcp_io_submit._entry.138, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @lpfc_nvme_fcp_io_submit._entry_ptr.140, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.142, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1667, i32 3}
!242 = !{ptr @lpfc_nvme_fcp_io_submit._entry.141, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @lpfc_nvme_fcp_io_submit._entry_ptr.143, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.144, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1676, i32 2}
!246 = !{ptr @.str.146, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1683, i32 3}
!248 = !{ptr @lpfc_nvme_fcp_io_submit._entry.145, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @lpfc_nvme_fcp_io_submit._entry_ptr.147, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.149, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1703, i32 4}
!252 = !{ptr @lpfc_nvme_fcp_io_submit._entry.148, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @lpfc_nvme_fcp_io_submit._entry_ptr.150, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.151, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 944, i32 3}
!256 = !{ptr @.str.152, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.154, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 955, i32 3}
!261 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.153, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.155, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.156, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 979, i32 2}
!265 = !{ptr @.str.158, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 988, i32 3}
!267 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.157, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.159, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.161, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1062, i32 5}
!271 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.160, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.162, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.164, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1069, i32 4}
!275 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.163, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.165, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.167, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1080, i32 5}
!279 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.166, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.168, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.170, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1091, i32 4}
!283 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.169, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.171, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.173, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1127, i32 4}
!287 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry.172, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @lpfc_nvme_io_cmd_wqe_cmpl._entry_ptr.174, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.175, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1324, i32 4}
!291 = !{ptr @.str.176, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @lpfc_nvme_prep_io_dma._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @lpfc_nvme_prep_io_dma._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.178, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1347, i32 5}
!296 = !{ptr @lpfc_nvme_prep_io_dma._entry.177, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @lpfc_nvme_prep_io_dma._entry_ptr.179, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.181, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1451, i32 4}
!300 = !{ptr @lpfc_nvme_prep_io_dma._entry.180, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @lpfc_nvme_prep_io_dma._entry_ptr.182, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.183, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1798, i32 3}
!304 = !{ptr @.str.184, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @lpfc_nvme_fcp_abort._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @lpfc_nvme_fcp_abort._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.186, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1812, i32 2}
!309 = !{ptr @lpfc_nvme_fcp_abort._entry.185, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @lpfc_nvme_fcp_abort._entry_ptr.187, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.189, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1825, i32 3}
!313 = !{ptr @lpfc_nvme_fcp_abort._entry.188, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @lpfc_nvme_fcp_abort._entry_ptr.190, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.192, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1835, i32 3}
!317 = !{ptr @lpfc_nvme_fcp_abort._entry.191, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @lpfc_nvme_fcp_abort._entry_ptr.193, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.195, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1841, i32 3}
!321 = !{ptr @lpfc_nvme_fcp_abort._entry.194, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @lpfc_nvme_fcp_abort._entry_ptr.196, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.198, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1859, i32 3}
!325 = !{ptr @lpfc_nvme_fcp_abort._entry.197, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @lpfc_nvme_fcp_abort._entry_ptr.199, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.201, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1870, i32 3}
!329 = !{ptr @lpfc_nvme_fcp_abort._entry.200, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @lpfc_nvme_fcp_abort._entry_ptr.202, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.203, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1878, i32 2}
!333 = !{ptr @.str.205, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1884, i32 3}
!335 = !{ptr @lpfc_nvme_fcp_abort._entry.204, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @lpfc_nvme_fcp_abort._entry_ptr.206, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.208, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1903, i32 3}
!339 = !{ptr @lpfc_nvme_fcp_abort._entry.207, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @lpfc_nvme_fcp_abort._entry_ptr.209, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.211, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 1910, i32 2}
!343 = !{ptr @lpfc_nvme_fcp_abort._entry.210, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @lpfc_nvme_fcp_abort._entry_ptr.212, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @init_completion.__key, !346, !"__key", i1 false, i1 false}
!346 = !{!"../include/linux/completion.h", i32 87, i32 2}
!347 = !{ptr @.str.213, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.214, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2187, i32 4}
!350 = !{ptr @.str.215, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @lpfc_nvme_lport_unreg_wait._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @lpfc_nvme_lport_unreg_wait._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.217, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2197, i32 2}
!355 = !{ptr @lpfc_nvme_lport_unreg_wait._entry.216, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @lpfc_nvme_lport_unreg_wait._entry_ptr.218, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.219, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/lpfc/lpfc_nvme.c", i32 2033, i32 3}
!359 = !{ptr @.str.220, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @lpfc_release_nvme_buf._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @lpfc_release_nvme_buf._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{!"sp"}
!363 = !{i32 1, !"wchar_size", i32 2}
!364 = !{i32 1, !"min_enum_size", i32 4}
!365 = !{i32 8, !"branch-target-enforcement", i32 0}
!366 = !{i32 8, !"sign-return-address", i32 0}
!367 = !{i32 8, !"sign-return-address-all", i32 0}
!368 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!369 = !{i32 7, !"uwtable", i32 1}
!370 = !{i32 7, !"frame-pointer", i32 2}
!371 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!372 = !{!"auto-init"}
!373 = !{!"branch_weights", i32 1, i32 2000}
!374 = !{!"branch_weights", i32 2000, i32 1}
!375 = !{i64 2148743728, i64 2148743754, i64 2148743783, i64 2148743817, i64 2148743848, i64 2148743871}
!376 = !{!"branch_weights", i32 4001, i32 4000000}
!377 = !{i64 2148741263, i64 2148741289, i64 2148741318, i64 2148741352, i64 2148741383, i64 2148741406}
!378 = !{i64 1145943, i64 1146004}
!379 = !{i64 1148675}
!380 = !{i64 1148960}
