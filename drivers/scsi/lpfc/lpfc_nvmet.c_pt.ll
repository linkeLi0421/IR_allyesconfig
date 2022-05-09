; ModuleID = '/llk/IR_all_yes/drivers/scsi/lpfc/lpfc_nvmet.c_pt.bc'
source_filename = "../drivers/scsi/lpfc/lpfc_nvmet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.lpfc_wqe128 = type { [32 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.12 }
%union.anon.12 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvmet_fc_target_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i64, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lpfc_iocbq = type { %struct.list_head, %struct.list_head, %struct.list_head, i16, i16, i16, i16, %struct.lpfc_cq_event, %struct.lpfc_wcqe_complete, i64, %union.lpfc_wqe128, %struct._IOCB, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, i32, %union.anon.94, %union.lpfc_vmid_iocb_tag, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.lpfc_async_xchg_ctx = type { %union.anon.212, %struct.list_head, ptr, ptr, ptr, %struct.nvmefc_ls_rsp, ptr, ptr, %struct.spinlock, i32, i32, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.212 = type { %struct.nvmefc_tgt_fcp_req }
%struct.nvmefc_tgt_fcp_req = type { i8, i16, i32, i32, i32, %struct.fc_ba_rjt, ptr, i32, ptr, i32, i16, ptr, ptr, i32, i32 }
%struct.fc_ba_rjt = type { i8, i8, i8, i8 }
%struct.nvmefc_ls_rsp = type { ptr, i32, i16, ptr, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.lpfc_sli = type { i32, i32, ptr, %struct.lpfc_sli_stat, %struct.list_head, i16, i16, ptr, %struct.list_head, %struct.timer_list, ptr, i32, i16, i64, %struct.lpfc_lnk_stat }
%struct.lpfc_sli_stat = type { i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.lpfc_lnk_stat = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_trunk_link = type { %struct.lpfc_trunk_link_state, %struct.lpfc_trunk_link_state, %struct.lpfc_trunk_link_state, %struct.lpfc_trunk_link_state }
%struct.lpfc_trunk_link_state = type { i32, i8 }
%struct.lpfc_mbox_ext_buf_ctx = type { i32, i32, i32, i32, i32, i32, ptr, %struct.list_head }
%struct.lpfc_dmabuf = type { %struct.list_head, ptr, i32, i32 }
%struct.serv_parm = type { %struct.csp, %struct.lpfc_name, %struct.lpfc_name, %struct.class_parms, %struct.class_parms, %struct.class_parms, %struct.class_parms, %union.anon.10 }
%struct.csp = type { i8, i8, i8, i8, i16, i8, i8, %union.anon.6, i32 }
%union.anon.6 = type { i32 }
%struct.class_parms = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.10 = type { %struct.anon.11, [8 x i8] }
%struct.anon.11 = type { i32, i32 }
%struct.lpfc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_nodelist = type { %struct.list_head, %struct.serv_parm, %struct.lpfc_name, %struct.lpfc_name, %struct.spinlock, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, %struct.timer_list, ptr, ptr, ptr, ptr, %struct.lpfc_work_evt, %struct.lpfc_work_evt, %struct.lpfc_work_evt, %struct.kref, %struct.atomic_t, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.lpfc_work_evt = type { %struct.list_head, ptr, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.lpfc_vpd = type { i32, i32, %struct.anon.205, %struct.anon.206 }
%struct.anon.205 = type { i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, i32, [16 x i8], i32, [16 x i8], i32, [16 x i8] }
%struct.anon.206 = type { i32 }
%struct.hbq_s = type { i16, i16, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lpfc_dma_pool = type { ptr, i32, i32 }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.lpfc_name = type { %union.anon.8 }
%union.anon.8 = type { i64 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.207 = type { ptr }
%struct.lpfc_vport = type { ptr, %struct.list_head, i8, i32, i16, i16, i8, i32, i32, %struct.list_head, i16, i16, i16, i16, i16, i16, i16, i16, %struct.serv_parm, i32, i32, %struct.lpfc_name, %struct.lpfc_name, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], %struct.lpfc_name, %struct.lpfc_name, %struct.lpfc_work_evt, %struct.timer_list, i8, i32, %struct.spinlock, i32, %struct.timer_list, %struct.timer_list, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, [256 x %struct.hlist_head], %struct.rwlock_t, %struct.lpfc_vmid_priority_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i8, i8, %struct.list_head, i32, i32, i16, i32, i32, ptr, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lpfc_vmid_priority_info = type { i32, ptr }
%struct.lpfc_nvmet_ctxbuf = type { %struct.list_head, ptr, ptr, ptr, %struct.work_struct }
%struct.rqb_dmabuf = type { %struct.lpfc_dmabuf, %struct.lpfc_dmabuf, i16, i16, i16, ptr, ptr }
%struct.lpfc_queue = type { %struct.list_head, %struct.list_head, i16, i16, i8, i8, %struct.list_head, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i16, i16, i8, i8, ptr, i16, i16, ptr, i32, i32, i32, i64, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, i64, ptr, %struct.list_head, ptr, %struct.irq_poll, i32 }
%struct.irq_poll = type { %struct.list_head, i32, i32, ptr }
%struct.lpfc_rqb = type { i16, i16, %struct.list_head, ptr, ptr }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.nvmet_fc_target_port = type { i32, i64, i64, ptr, i32, i32 }
%struct.lpfc_nvmet_tgtport = type { ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.lpfc_nvmet_ctx_info = type { %struct.list_head, %struct.spinlock, ptr, ptr, i16, [16 x i8] }
%struct.lpfc_sli4_hdw_queue = type { ptr, ptr, ptr, i16, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, %struct.lpfc_fc4_ctrl_stat, %struct.lpfc_fc4_ctrl_stat, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.lpfc_fc4_ctrl_stat = type { i32, i32, i32, i32 }
%struct.hbq_dmabuf = type { %struct.lpfc_dmabuf, %struct.lpfc_dmabuf, i16, i16, i32, %struct.lpfc_cq_event, i32, ptr }
%struct.nvmet_fc_port_info = type { i64, i64, i32 }
%struct.lpfc_sglq = type { %struct.list_head, %struct.list_head, i32, i32, ptr, i16, i16, i16, ptr, ptr, i32 }
%struct.sli4_wcqe_xri_aborted = type { i32, i32, i32, i32 }
%struct.lpfc_sli_ring = type { i16, i16, i8, i8, %struct.spinlock, i32, i32, i32, %struct.list_head, i16, i16, %struct.list_head, i16, i16, i32, %struct.list_head, i16, i16, %struct.list_head, i16, i16, %struct.list_head, [5 x %struct.lpfc_sli_ring_mask], i32, ptr, %struct.lpfc_sli_ring_stat, ptr, %union.anon.198 }
%struct.lpfc_sli_ring_mask = type { i8, i8, i8, i8, ptr }
%struct.lpfc_sli_ring_stat = type { i64, i64, i64, i64, i64, i64, i64 }
%union.anon.198 = type { %struct.lpfc_sli3_ring }
%struct.lpfc_sli3_ring = type { i32, i32, i32, i32, i16, i16, i16, i16, ptr, ptr }
%struct.lpfc_hdwq_stat = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sli4_sge = type { i32, i32, i32, i32 }

@lpfc_tsend_cmd_template = internal global { %union.lpfc_wqe128, [32 x i8] } zeroinitializer, align 32
@lpfc_treceive_cmd_template = internal global { %union.lpfc_wqe128, [32 x i8] } zeroinitializer, align 32
@lpfc_trsp_cmd_template = internal global { %union.lpfc_wqe128, [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@__lpfc_nvme_xmt_ls_rsp_cmp._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 309, ptr @.str, ptr @.str.4 }, align 1
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d:6410 NVMEx LS cmpl state mismatch IO x%x: %d %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__lpfc_nvme_xmt_ls_rsp_cmp\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/lpfc/lpfc_nvmet.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__lpfc_nvme_xmt_ls_rsp_cmp._entry_ptr = internal global ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry, section ".printk_index", align 4
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NVMEx LS  CMPL: xri x%x stat x%x result x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@__lpfc_nvme_xmt_ls_rsp_cmp._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 317, ptr @.str.8, ptr @.str.4 }, align 1
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%d:6038 NVMEx LS rsp cmpl: %d %d oxid x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@__lpfc_nvme_xmt_ls_rsp_cmp._entry_ptr.9 = internal global ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry.6, section ".printk_index", align 4
@__lpfc_nvme_xmt_ls_rsp_cmp._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 326, ptr @.str.8, ptr @.str.4 }, align 1
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%d:6200 NVMEx LS rsp cmpl done status %d oxid x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@__lpfc_nvme_xmt_ls_rsp_cmp._entry_ptr.12 = internal global ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry.10, section ".printk_index", align 4
@lpfc_nvmet_ctxbuf_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 399, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d:6411 NVMET free, already free IO x%x: %d %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpfc_nvmet_ctxbuf_post\00", [41 x i8] zeroinitializer }, align 32
@lpfc_nvmet_ctxbuf_post._entry_ptr = internal global ptr @lpfc_nvmet_ctxbuf_post._entry, section ".printk_index", align 4
@lpfc_nvmet_ctxbuf_post.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctxp->ctxlock\00", [17 x i8] zeroinitializer }, align 32
@lpfc_nvmet_ctxbuf_post._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 483, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%d:6181 Unable to queue deferred work for oxid x%x. FCP Drop IO [x%x x%x x%x]\0A\00", [49 x i8] zeroinitializer }, align 32
@lpfc_nvmet_ctxbuf_post._entry_ptr.18 = internal global ptr @lpfc_nvmet_ctxbuf_post._entry.16, section ".printk_index", align 4
@__lpfc_nvme_xmt_ls_rsp._entry = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 878, ptr @.str.8, ptr @.str.4 }, align 1
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d:6023 NVMEx LS rsp oxid x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__lpfc_nvme_xmt_ls_rsp\00", [41 x i8] zeroinitializer }, align 32
@__lpfc_nvme_xmt_ls_rsp._entry_ptr = internal global ptr @__lpfc_nvme_xmt_ls_rsp._entry, section ".printk_index", align 4
@__lpfc_nvme_xmt_ls_rsp._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 884, ptr @.str, ptr @.str.4 }, align 1
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%d:6412 NVMEx LS rsp state mismatch oxid x%x: %d %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__lpfc_nvme_xmt_ls_rsp._entry_ptr.23 = internal global ptr @__lpfc_nvme_xmt_ls_rsp._entry.21, section ".printk_index", align 4
@__lpfc_nvme_xmt_ls_rsp._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 895, ptr @.str, ptr @.str.4 }, align 1
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d:6150 NVMEx LS Drop Rsp x%x: Prep\0A\00", [59 x i8] zeroinitializer }, align 32
@__lpfc_nvme_xmt_ls_rsp._entry_ptr.26 = internal global ptr @__lpfc_nvme_xmt_ls_rsp._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVMEx LS RSP: xri x%x wqidx x%x len x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@__lpfc_nvme_xmt_ls_rsp._entry.28 = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.3, i32 939, ptr @.str, ptr @.str.4 }, align 1
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%d:6151 NVMEx LS RSP x%x: failed to transmit %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__lpfc_nvme_xmt_ls_rsp._entry_ptr.30 = internal global ptr @__lpfc_nvme_xmt_ls_rsp._entry.28, section ".printk_index", align 4
@lpfc_tgttemplate = internal global { %struct.nvmet_fc_target_template, [56 x i8] } { %struct.nvmet_fc_target_template { ptr @lpfc_nvmet_targetport_delete, ptr @lpfc_nvmet_xmt_ls_rsp, ptr @lpfc_nvmet_xmt_fcp_op, ptr @lpfc_nvmet_xmt_fcp_abort, ptr @lpfc_nvmet_xmt_fcp_release, ptr @lpfc_nvmet_defer_rcv, ptr @lpfc_nvmet_discovery_event, ptr @lpfc_nvmet_ls_req, ptr @lpfc_nvmet_ls_abort, ptr @lpfc_nvmet_host_release, i32 1, i16 65, i16 65, i64 4294967295, i32 0, i32 156, i32 0 }, [56 x i8] zeroinitializer }, align 32
@lpfc_nvmet_create_targetport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 1684, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%d:6025 Cannot register NVME targetport x%x: portnm %llx nodenm %llx segs %d qs %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lpfc_nvmet_create_targetport\00", [35 x i8] zeroinitializer }, align 32
@lpfc_nvmet_create_targetport._entry_ptr = internal global ptr @lpfc_nvmet_create_targetport._entry, section ".printk_index", align 4
@lpfc_nvmet_create_targetport._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 1702, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%d:6026 Registered NVME targetport: x%px, private x%px portnm %llx nodenm %llx segs %d qs %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lpfc_nvmet_create_targetport._entry_ptr.35 = internal global ptr @lpfc_nvmet_create_targetport._entry.33, section ".printk_index", align 4
@lpfc_nvmet_update_targetport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1753, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):6007 Update NVMET port x%px did x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lpfc_nvmet_update_targetport\00", [35 x i8] zeroinitializer }, align 32
@lpfc_nvmet_update_targetport._entry_ptr = internal global ptr @lpfc_nvmet_update_targetport._entry, section ".printk_index", align 4
@lpfc_sli4_nvmet_xri_aborted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 1783, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d:6317 XB aborted xri x%x rxid x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpfc_sli4_nvmet_xri_aborted\00", [36 x i8] zeroinitializer }, align 32
@lpfc_sli4_nvmet_xri_aborted._entry_ptr = internal global ptr @lpfc_sli4_nvmet_xri_aborted._entry, section ".printk_index", align 4
@lpfc_sli4_nvmet_xri_aborted._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 1830, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d:6318 XB aborted oxid x%x flg x%x (%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_sli4_nvmet_xri_aborted._entry_ptr.42 = internal global ptr @lpfc_sli4_nvmet_xri_aborted._entry.40, section ".printk_index", align 4
@lpfc_sli4_nvmet_xri_aborted._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.3, i32 1849, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%d:6323 NVMET Rcv ABTS xri x%x ctxp state x%x flag x%x oxid x%x rxid x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_sli4_nvmet_xri_aborted._entry_ptr.45 = internal global ptr @lpfc_sli4_nvmet_xri_aborted._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVMET ABTS RCV: xri x%x CPU %02x rjt %d\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_nvmet_rcv_unsol_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1902, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d:6319 NVMET Rcv ABTS:acc xri x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_nvmet_rcv_unsol_abort\00", [37 x i8] zeroinitializer }, align 32
@lpfc_nvmet_rcv_unsol_abort._entry_ptr = internal global ptr @lpfc_nvmet_rcv_unsol_abort._entry, section ".printk_index", align 4
@lpfc_nvmet_rcv_unsol_abort._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 1936, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%d:6321 NVMET Rcv ABTS oxid x%x from x%x is waiting for a ctxp\0A\00", [32 x i8] zeroinitializer }, align 32
@lpfc_nvmet_rcv_unsol_abort._entry_ptr.51 = internal global ptr @lpfc_nvmet_rcv_unsol_abort._entry.49, section ".printk_index", align 4
@lpfc_nvmet_rcv_unsol_abort._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.3, i32 1971, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%d:6322 NVMET Rcv ABTS:acc oxid x%x xri x%x flag x%x state x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@lpfc_nvmet_rcv_unsol_abort._entry_ptr.54 = internal global ptr @lpfc_nvmet_rcv_unsol_abort._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NVMET ABTS RCV: oxid x%x CPU %02x rjt %d\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_nvmet_rcv_unsol_abort._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.48, ptr @.str.3, i32 1994, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d:6320 NVMET Rcv ABTS:rjt oxid x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@lpfc_nvmet_rcv_unsol_abort._entry_ptr.58 = internal global ptr @lpfc_nvmet_rcv_unsol_abort._entry.56, section ".printk_index", align 4
@lpfc_nvmet_destroy_targetport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 2120, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d:6179 Unreg targetport x%px timeout reached.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lpfc_nvmet_destroy_targetport\00", [34 x i8] zeroinitializer }, align 32
@lpfc_nvmet_destroy_targetport._entry_ptr = internal global ptr @lpfc_nvmet_destroy_targetport._entry, section ".printk_index", align 4
@lpfc_nvmet_handle_lsreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 2166, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%d:6037 NVMET Unsol rcv: sz %d rc %d: %08x %08x %08x %08x %08x %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_nvmet_handle_lsreq\00", [40 x i8] zeroinitializer }, align 32
@lpfc_nvmet_handle_lsreq._entry_ptr = internal global ptr @lpfc_nvmet_handle_lsreq._entry, section ".printk_index", align 4
@lpfc_nvmet_unsol_fcp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 2540, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d:3167 NVMET FCP Drop IO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_nvmet_unsol_fcp_event\00", [37 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_event._entry_ptr = internal global ptr @lpfc_nvmet_unsol_fcp_event._entry, section ".printk_index", align 4
@lpfc_nvme_unsol_ls_issue_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 3588, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%d:6418 NVMET LS abort state mismatch IO x%x: %d %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lpfc_nvme_unsol_ls_issue_abort\00", [33 x i8] zeroinitializer }, align 32
@lpfc_nvme_unsol_ls_issue_abort._entry_ptr = internal global ptr @lpfc_nvme_unsol_ls_issue_abort._entry, section ".printk_index", align 4
@lpfc_nvme_unsol_ls_issue_abort._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 3601, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d:6068 Abort failed: No wqeqs: xri: x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_nvme_unsol_ls_issue_abort._entry_ptr.69 = internal global ptr @lpfc_nvme_unsol_ls_issue_abort._entry.67, section ".printk_index", align 4
@lpfc_nvme_unsol_ls_issue_abort._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.3, i32 3632, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d:6056 Failed to Issue ABTS. Status x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_nvme_unsol_ls_issue_abort._entry_ptr.72 = internal global ptr @lpfc_nvme_unsol_ls_issue_abort._entry.70, section ".printk_index", align 4
@lpfc_nvmet_invalidate_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 3654, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d:6203 Invalidating hosthandle x%px\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_nvmet_invalidate_host\00", [37 x i8] zeroinitializer }, align 32
@lpfc_nvmet_invalidate_host._entry_ptr = internal global ptr @lpfc_nvmet_invalidate_host._entry, section ".printk_index", align 4
@lpfc_nvmet_invalidate_host._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 3671, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%d:6204 Skip invalidate on node x%px DID x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@lpfc_nvmet_invalidate_host._entry_ptr.77 = internal global ptr @lpfc_nvmet_invalidate_host._entry.75, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lpfc_nvmet_defer_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 269, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d:6313 NVMET Defer ctx release oxid x%x flg x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lpfc_nvmet_defer_release\00", [39 x i8] zeroinitializer }, align 32
@lpfc_nvmet_defer_release._entry_ptr = internal global ptr @lpfc_nvmet_defer_release._entry, section ".printk_index", align 4
@lpfc_nvmet_setup_io_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 1495, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%d:6403 Allocate NVMET resources for %d XRIs\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpfc_nvmet_setup_io_context\00", [36 x i8] zeroinitializer }, align 32
@lpfc_nvmet_setup_io_context._entry_ptr = internal global ptr @lpfc_nvmet_setup_io_context._entry, section ".printk_index", align 4
@lpfc_nvmet_setup_io_context._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 1503, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%d:6419 Failed allocate memory for nvmet context lists\0A\00", [40 x i8] zeroinitializer }, align 32
@lpfc_nvmet_setup_io_context._entry_ptr.84 = internal global ptr @lpfc_nvmet_setup_io_context._entry.82, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@lpfc_nvmet_setup_io_context.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&infop->nvmet_ctx_list_lock\00", [36 x i8] zeroinitializer }, align 32
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@lpfc_nvmet_setup_io_context._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.81, ptr @.str.3, i32 1560, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d:6404 Ran out of memory for NVMET\0A\00", [59 x i8] zeroinitializer }, align 32
@lpfc_nvmet_setup_io_context._entry_ptr.88 = internal global ptr @lpfc_nvmet_setup_io_context._entry.86, section ".printk_index", align 4
@lpfc_nvmet_setup_io_context._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.81, ptr @.str.3, i32 1570, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:6405 Ran out of NVMET context memory\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_nvmet_setup_io_context._entry_ptr.91 = internal global ptr @lpfc_nvmet_setup_io_context._entry.89, section ".printk_index", align 4
@lpfc_nvmet_setup_io_context._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.81, ptr @.str.3, i32 1581, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d:6406 Ran out of NVMET iocb/WQEs\0A\00", [60 x i8] zeroinitializer }, align 32
@lpfc_nvmet_setup_io_context._entry_ptr.94 = internal global ptr @lpfc_nvmet_setup_io_context._entry.92, section ".printk_index", align 4
@lpfc_nvmet_setup_io_context._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.81, ptr @.str.3, i32 1600, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d:6407 Ran out of NVMET XRIs\0A\00", [33 x i8] zeroinitializer }, align 32
@lpfc_nvmet_setup_io_context._entry_ptr.97 = internal global ptr @lpfc_nvmet_setup_io_context._entry.95, section ".printk_index", align 4
@lpfc_nvmet_setup_io_context.__key.98 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&ctx_buf->defer_work)\00", [56 x i8] zeroinitializer }, align 32
@lpfc_nvmet_setup_io_context._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.81, ptr @.str.3, i32 1636, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%d:6408 TOTAL NVMET ctx for CPU %d MRQ %d: cnt %d nextcpu x%px\0A\00", [32 x i8] zeroinitializer }, align 32
@lpfc_nvmet_setup_io_context._entry_ptr.102 = internal global ptr @lpfc_nvmet_setup_io_context._entry.100, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lpfc_nvmet_process_rcv_fcp_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 2194, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%d:6159 process_rcv_fcp_req, nvmebuf is NULL, oxid: x%x flg: x%x state: x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lpfc_nvmet_process_rcv_fcp_req\00", [33 x i8] zeroinitializer }, align 32
@lpfc_nvmet_process_rcv_fcp_req._entry_ptr = internal global ptr @lpfc_nvmet_process_rcv_fcp_req._entry, section ".printk_index", align 4
@lpfc_nvmet_process_rcv_fcp_req._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 2206, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%d:6324 IO oxid x%x aborted\0A\00", [35 x i8] zeroinitializer }, align 32
@lpfc_nvmet_process_rcv_fcp_req._entry_ptr.107 = internal global ptr @lpfc_nvmet_process_rcv_fcp_req._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVMET RCV BUSY: xri x%x sz %d from %06x\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_nvmet_process_rcv_fcp_req._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.104, ptr @.str.3, i32 2273, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d:2582 FCP Drop IO x%x: err x%x: x%x x%x x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@lpfc_nvmet_process_rcv_fcp_req._entry_ptr.111 = internal global ptr @lpfc_nvmet_process_rcv_fcp_req._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVMET FCP DROP: xri x%x sz %d from %06x\0A\00", [55 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@lpfc_nvmet_xmt_fcp_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 1049, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%d:6705 CPU Check OP: cpu %d expect %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpfc_nvmet_xmt_fcp_op\00", [42 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_op._entry_ptr = internal global ptr @lpfc_nvmet_xmt_fcp_op._entry, section ".printk_index", align 4
@lpfc_nvmet_xmt_fcp_op._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.3, i32 1060, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%d:6102 IO oxid x%x aborted\0A\00", [35 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_op._entry_ptr.117 = internal global ptr @lpfc_nvmet_xmt_fcp_op._entry.115, section ".printk_index", align 4
@lpfc_nvmet_xmt_fcp_op._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.3, i32 1070, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d:6152 FCP Drop IO x%x: Prep\0A\00", [33 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_op._entry_ptr.120 = internal global ptr @lpfc_nvmet_xmt_fcp_op._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NVMET FCP CMND: xri x%x op x%x len x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_op._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.114, ptr @.str.3, i32 1118, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d:6153 FCP Drop IO x%x: Issue: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_op._entry_ptr.124 = internal global ptr @lpfc_nvmet_xmt_fcp_op._entry.122, section ".printk_index", align 4
@lpfc_nvmet_prep_fcp_wqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 2718, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%d:6107 NVMET prep FCP wqe: link err:NPORT x%x oxid x%x ste %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_nvmet_prep_fcp_wqe\00", [40 x i8] zeroinitializer }, align 32
@lpfc_nvmet_prep_fcp_wqe._entry_ptr = internal global ptr @lpfc_nvmet_prep_fcp_wqe._entry, section ".printk_index", align 4
@lpfc_nvmet_prep_fcp_wqe._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.3, i32 2729, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%d:6108 NVMET prep FCP wqe: no ndlp: NPORT x%x oxid x%x ste %d\0A\00", [32 x i8] zeroinitializer }, align 32
@lpfc_nvmet_prep_fcp_wqe._entry_ptr.129 = internal global ptr @lpfc_nvmet_prep_fcp_wqe._entry.127, section ".printk_index", align 4
@lpfc_nvmet_prep_fcp_wqe._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.3, i32 2738, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%d:6109 NVMET prep FCP wqe: seg cnt err: NPORT x%x oxid x%x ste %d cnt %d\0A\00", [53 x i8] zeroinitializer }, align 32
@lpfc_nvmet_prep_fcp_wqe._entry_ptr.132 = internal global ptr @lpfc_nvmet_prep_fcp_wqe._entry.130, section ".printk_index", align 4
@lpfc_nvmet_prep_fcp_wqe._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.3, i32 2752, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%d:6110 NVMET prep FCP wqe: No WQE: NPORT x%x oxid x%x ste %d\0A\00", [33 x i8] zeroinitializer }, align 32
@lpfc_nvmet_prep_fcp_wqe._entry_ptr.135 = internal global ptr @lpfc_nvmet_prep_fcp_wqe._entry.133, section ".printk_index", align 4
@lpfc_nvmet_prep_fcp_wqe._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.126, ptr @.str.3, i32 2769, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%d:6111 Wrong state NVMET FCP: %d  cnt %d\0A\00", [53 x i8] zeroinitializer }, align 32
@lpfc_nvmet_prep_fcp_wqe._entry_ptr.138 = internal global ptr @lpfc_nvmet_prep_fcp_wqe._entry.136, section ".printk_index", align 4
@lpfc_nvmet_prep_fcp_wqe._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.126, ptr @.str.3, i32 2986, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d:6064 Unknown Rsp Op %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lpfc_nvmet_prep_fcp_wqe._entry_ptr.141 = internal global ptr @lpfc_nvmet_prep_fcp_wqe._entry.139, section ".printk_index", align 4
@.str.142 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NVMET FCP CMPL: xri x%x op x%x status x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_op_cmp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.3, i32 771, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:6315 IO Error Cmpl oxid: x%x xri: x%x %x/%x XBUSY:x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lpfc_nvmet_xmt_fcp_op_cmp\00", [38 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_op_cmp._entry_ptr = internal global ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry, section ".printk_index", align 4
@lpfc_nvmet_xmt_fcp_op_cmp._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.3, i32 839, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:6704 CPU Check cmdcmpl: cpu %d expect %d\0A\00", [51 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_op_cmp._entry_ptr.147 = internal global ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry.145, section ".printk_index", align 4
@lpfc_nvmet_xmt_fcp_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.3, i32 1157, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%d:6103 NVMET Abort op: oxid x%x flg x%x ste %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lpfc_nvmet_xmt_fcp_abort\00", [39 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_abort._entry_ptr = internal global ptr @lpfc_nvmet_xmt_fcp_abort._entry, section ".printk_index", align 4
@.str.150 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVMET FCP ABRT: xri x%x flg x%x ste x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.3, i32 1213, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d:6027 NVMET release with XBUSY flag x%x oxid x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_nvmet_xmt_fcp_release\00", [37 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_release._entry_ptr = internal global ptr @lpfc_nvmet_xmt_fcp_release._entry, section ".printk_index", align 4
@lpfc_nvmet_xmt_fcp_release._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.3, i32 1218, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d:6413 NVMET release bad state %d %d oxid x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_fcp_release._entry_ptr.155 = internal global ptr @lpfc_nvmet_xmt_fcp_release._entry.153, section ".printk_index", align 4
@.str.156 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NVMET FCP FREE: xri x%x ste %d abt %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NVMET DEFERRCV: xri x%x sz %d CPU %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@lpfc_nvmet_defer_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.3, i32 1259, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%d:6425 Defer rcv: no buffer oxid x%x: flg %x ste %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lpfc_nvmet_defer_rcv\00", [43 x i8] zeroinitializer }, align 32
@lpfc_nvmet_defer_rcv._entry_ptr = internal global ptr @lpfc_nvmet_defer_rcv._entry, section ".printk_index", align 4
@lpfc_nvmet_discovery_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.3, i32 1402, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%d:6420 NVMET subsystem change: Notification %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_nvmet_discovery_event\00", [37 x i8] zeroinitializer }, align 32
@lpfc_nvmet_discovery_event._entry_ptr = internal global ptr @lpfc_nvmet_discovery_event._entry, section ".printk_index", align 4
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sent\00", [27 x i8] zeroinitializer }, align 32
@lpfc_nvmet_host_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.3, i32 1380, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%d:6202 NVMET XPT releasing hosthandle x%px DID x%x xflags x%x refcnt %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_nvmet_host_release\00", [40 x i8] zeroinitializer }, align 32
@lpfc_nvmet_host_release._entry_ptr = internal global ptr @lpfc_nvmet_host_release._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.3, i32 2388, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d:6157 NVMET FCP Drop IO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpfc_nvmet_unsol_fcp_buffer\00", [36 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_buffer._entry_ptr = internal global ptr @lpfc_nvmet_unsol_fcp_buffer._entry, section ".printk_index", align 4
@lpfc_nvmet_unsol_fcp_buffer._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.3, i32 2424, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:6703 CPU Check rcv: cpu %d expect %d\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_buffer._entry_ptr.171 = internal global ptr @lpfc_nvmet_unsol_fcp_buffer._entry.169, section ".printk_index", align 4
@.str.172 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NVMET FCP  RCV: xri x%x sz %d CPU %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_buffer._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.168, ptr @.str.3, i32 2462, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%d:6414 NVMET Context corrupt %d %d oxid x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_buffer._entry_ptr.175 = internal global ptr @lpfc_nvmet_unsol_fcp_buffer._entry.173, section ".printk_index", align 4
@lpfc_nvmet_unsol_fcp_buffer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lpfc_nvmet_unsol_fcp_buffer._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.168, ptr @.str.3, i32 2508, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%d:6325 Unable to queue work for oxid x%x. FCP Drop IO [x%x x%x x%x]\0A\00", [58 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_buffer._entry_ptr.178 = internal global ptr @lpfc_nvmet_unsol_fcp_buffer._entry.176, section ".printk_index", align 4
@lpfc_nvmet_prep_ls_wqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.3, i32 2588, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%d:6104 NVMET prep LS wqe: link err: NPORT x%x oxid:x%x ste %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpfc_nvmet_prep_ls_wqe\00", [41 x i8] zeroinitializer }, align 32
@lpfc_nvmet_prep_ls_wqe._entry_ptr = internal global ptr @lpfc_nvmet_prep_ls_wqe._entry, section ".printk_index", align 4
@lpfc_nvmet_prep_ls_wqe._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.3, i32 2598, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%d:6105 NVMET prep LS wqe: No WQE: NPORT x%x oxid x%x ste %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lpfc_nvmet_prep_ls_wqe._entry_ptr.183 = internal global ptr @lpfc_nvmet_prep_ls_wqe._entry.181, section ".printk_index", align 4
@lpfc_nvmet_prep_ls_wqe._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.180, ptr @.str.3, i32 2609, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%d:6106 NVMET prep LS wqe: No ndlp: NPORT x%x oxid x%x ste %d\0A\00", [33 x i8] zeroinitializer }, align 32
@lpfc_nvmet_prep_ls_wqe._entry_ptr.186 = internal global ptr @lpfc_nvmet_prep_ls_wqe._entry.184, section ".printk_index", align 4
@lpfc_nvmet_prep_ls_wqe._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.180, ptr @.str.3, i32 2686, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%d:6039 Xmit NVMET LS response to remote NPORT x%x iotag:x%x oxid:x%x size:x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@lpfc_nvmet_prep_ls_wqe._entry_ptr.189 = internal global ptr @lpfc_nvmet_prep_ls_wqe._entry.187, section ".printk_index", align 4
@lpfc_nvmet_sol_fcp_issue_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.3, i32 3396, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d:6160 Drop ABORT - wrong NDLP state x%x.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lpfc_nvmet_sol_fcp_issue_abort\00", [33 x i8] zeroinitializer }, align 32
@lpfc_nvmet_sol_fcp_issue_abort._entry_ptr = internal global ptr @lpfc_nvmet_sol_fcp_issue_abort._entry, section ".printk_index", align 4
@lpfc_nvmet_sol_fcp_issue_abort._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.191, ptr @.str.3, i32 3412, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d:6161 ABORT failed: No wqeqs: xri: x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.194 = internal global ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.192, section ".printk_index", align 4
@lpfc_nvmet_sol_fcp_issue_abort._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.191, ptr @.str.3, i32 3427, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:6162 ABORT Request to rport DID x%06x for xri x%x x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.197 = internal global ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.195, section ".printk_index", align 4
@lpfc_nvmet_sol_fcp_issue_abort._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.191, ptr @.str.3, i32 3440, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%d:6163 Driver in reset cleanup - flushing NVME Req now. hba_flag x%x oxid x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.200 = internal global ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.198, section ".printk_index", align 4
@lpfc_nvmet_sol_fcp_issue_abort._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.191, ptr @.str.3, i32 3455, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%d:6164 Outstanding NVME I/O Abort Request still pending on oxid x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.203 = internal global ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.201, section ".printk_index", align 4
@lpfc_nvmet_sol_fcp_issue_abort._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.191, ptr @.str.3, i32 3493, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%d:6166 Failed ABORT issue_wqe with status x%x for oxid x%x.\0A\00", [34 x i8] zeroinitializer }, align 32
@lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.206 = internal global ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.204, section ".printk_index", align 4
@lpfc_nvmet_sol_fcp_abort_cmp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.3, i32 3079, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%d:6165 ABORT cmpl: oxid x%x flg x%x (%d) WCQE: %08x %08x %08x %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lpfc_nvmet_sol_fcp_abort_cmp\00", [35 x i8] zeroinitializer }, align 32
@lpfc_nvmet_sol_fcp_abort_cmp._entry_ptr = internal global ptr @lpfc_nvmet_sol_fcp_abort_cmp._entry, section ".printk_index", align 4
@lpfc_nvmet_unsol_fcp_issue_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.3, i32 3517, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%d:6417 NVMET ABORT ctx freed %d %d oxid x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lpfc_nvmet_unsol_fcp_issue_abort\00", [63 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_issue_abort._entry_ptr = internal global ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry, section ".printk_index", align 4
@lpfc_nvmet_unsol_fcp_issue_abort._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.210, ptr @.str.3, i32 3556, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%d:6135 Failed to Issue ABTS for oxid x%x. Status x%x (%x)\0A\00", [36 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_issue_abort._entry_ptr.213 = internal global ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry.211, section ".printk_index", align 4
@lpfc_nvmet_unsol_fcp_abort_cmp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.3, i32 3127, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%d:6070 ABTS cmpl: WCQE: %08x %08x %08x %08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lpfc_nvmet_unsol_fcp_abort_cmp\00", [33 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_abort_cmp._entry_ptr = internal global ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry, section ".printk_index", align 4
@lpfc_nvmet_unsol_fcp_abort_cmp._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.215, ptr @.str.3, i32 3140, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d:6112 ABTS Wrong state:%d oxid x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_abort_cmp._entry_ptr.218 = internal global ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry.216, section ".printk_index", align 4
@lpfc_nvmet_unsol_fcp_abort_cmp._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.215, ptr @.str.3, i32 3163, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%d:6316 ABTS cmpl oxid x%x flg x%x (%x) WCQE: %08x %08x %08x %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_fcp_abort_cmp._entry_ptr.221 = internal global ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry.219, section ".printk_index", align 4
@lpfc_nvmet_unsol_issue_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.3, i32 3247, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d:6067 ABTS: sid %x xri x%x/x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lpfc_nvmet_unsol_issue_abort\00", [35 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_issue_abort._entry_ptr = internal global ptr @lpfc_nvmet_unsol_issue_abort._entry, section ".printk_index", align 4
@lpfc_nvmet_unsol_issue_abort._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.223, ptr @.str.3, i32 3260, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%d:6134 Drop ABTS - wrong NDLP state x%x.\0A\00", [53 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_issue_abort._entry_ptr.226 = internal global ptr @lpfc_nvmet_unsol_issue_abort._entry.224, section ".printk_index", align 4
@lpfc_nvmet_unsol_issue_abort._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.223, ptr @.str.3, i32 3327, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d:6069 Issue ABTS to xri x%x reqtag x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@lpfc_nvmet_unsol_issue_abort._entry_ptr.229 = internal global ptr @lpfc_nvmet_unsol_issue_abort._entry.227, section ".printk_index", align 4
@lpfc_nvmet_xmt_ls_abort_cmp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.3, i32 3209, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%d:6083 Abort cmpl: ctx x%px WCQE:%08x %08x %08x %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpfc_nvmet_xmt_ls_abort_cmp\00", [36 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_ls_abort_cmp._entry_ptr = internal global ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry, section ".printk_index", align 4
@lpfc_nvmet_xmt_ls_abort_cmp._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.231, ptr @.str.3, i32 3216, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:6415 NVMET LS Abort No ctx: WCQE: %08x %08x %08x %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_ls_abort_cmp._entry_ptr.234 = internal global ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry.232, section ".printk_index", align 4
@lpfc_nvmet_xmt_ls_abort_cmp._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.231, ptr @.str.3, i32 3226, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%d:6416 NVMET LS abort cmpl state mismatch: oxid x%x: %d %d\0A\00", [35 x i8] zeroinitializer }, align 32
@lpfc_nvmet_xmt_ls_abort_cmp._entry_ptr.237 = internal global ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry.235, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 32]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 3]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967221]
@__sancov_gen_cov_switch_values.241 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 32]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 16, i64 4, i64 5]
@__sancov_gen_cov_switch_values.243 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.245 = private unnamed_addr constant [24 x i8] c"lpfc_tsend_cmd_template\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 72, i32 26 }
@___asan_gen_.248 = private unnamed_addr constant [27 x i8] c"lpfc_treceive_cmd_template\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 73, i32 26 }
@___asan_gen_.251 = private unnamed_addr constant [23 x i8] c"lpfc_trsp_cmd_template\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 74, i32 26 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 306, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 312, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 315, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 324, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 397, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 451, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 476, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 877, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 881, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 893, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 920, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 937, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"lpfc_tgttemplate\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1405, i32 40 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1678, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1695, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1751, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1782, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1828, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1845, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1856, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1901, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1933, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1968, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1990, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1993, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2118, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2162, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2539, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3585, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3599, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3631, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3651, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3668, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 267, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1493, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1501, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1530, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1559, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1568, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1580, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1599, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1603, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1632, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2191, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2204, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2245, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2268, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2274, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1046, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1058, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1068, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1081, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1116, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2715, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2726, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2734, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2749, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2767, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2984, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 742, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 767, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 836, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1155, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1159, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1210, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1216, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1228, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1252, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1256, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1400, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1376, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 87, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2387, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2421, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2428, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2460, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2477, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2502, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2585, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2595, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2606, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2682, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3394, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3410, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3424, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3437, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3452, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3490, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3074, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3515, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3553, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3124, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3138, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3158, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3245, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3258, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3325, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3206, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3212, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.900 = private constant [34 x i8] c"../drivers/scsi/lpfc/lpfc_nvmet.c\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 3223, i32 3 }
@llvm.compiler.used = appending global [308 x ptr] [ptr @__lpfc_nvme_xmt_ls_rsp._entry, ptr @__lpfc_nvme_xmt_ls_rsp._entry.21, ptr @__lpfc_nvme_xmt_ls_rsp._entry.24, ptr @__lpfc_nvme_xmt_ls_rsp._entry.28, ptr @__lpfc_nvme_xmt_ls_rsp._entry_ptr, ptr @__lpfc_nvme_xmt_ls_rsp._entry_ptr.23, ptr @__lpfc_nvme_xmt_ls_rsp._entry_ptr.26, ptr @__lpfc_nvme_xmt_ls_rsp._entry_ptr.30, ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry, ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry.10, ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry.6, ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry_ptr, ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry_ptr.12, ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry_ptr.9, ptr @lpfc_nvme_unsol_ls_issue_abort._entry, ptr @lpfc_nvme_unsol_ls_issue_abort._entry.67, ptr @lpfc_nvme_unsol_ls_issue_abort._entry.70, ptr @lpfc_nvme_unsol_ls_issue_abort._entry_ptr, ptr @lpfc_nvme_unsol_ls_issue_abort._entry_ptr.69, ptr @lpfc_nvme_unsol_ls_issue_abort._entry_ptr.72, ptr @lpfc_nvmet_create_targetport._entry, ptr @lpfc_nvmet_create_targetport._entry.33, ptr @lpfc_nvmet_create_targetport._entry_ptr, ptr @lpfc_nvmet_create_targetport._entry_ptr.35, ptr @lpfc_nvmet_ctxbuf_post._entry, ptr @lpfc_nvmet_ctxbuf_post._entry.16, ptr @lpfc_nvmet_ctxbuf_post._entry_ptr, ptr @lpfc_nvmet_ctxbuf_post._entry_ptr.18, ptr @lpfc_nvmet_defer_rcv._entry, ptr @lpfc_nvmet_defer_rcv._entry_ptr, ptr @lpfc_nvmet_defer_release._entry, ptr @lpfc_nvmet_defer_release._entry_ptr, ptr @lpfc_nvmet_destroy_targetport._entry, ptr @lpfc_nvmet_destroy_targetport._entry_ptr, ptr @lpfc_nvmet_discovery_event._entry, ptr @lpfc_nvmet_discovery_event._entry_ptr, ptr @lpfc_nvmet_handle_lsreq._entry, ptr @lpfc_nvmet_handle_lsreq._entry_ptr, ptr @lpfc_nvmet_host_release._entry, ptr @lpfc_nvmet_host_release._entry_ptr, ptr @lpfc_nvmet_invalidate_host._entry, ptr @lpfc_nvmet_invalidate_host._entry.75, ptr @lpfc_nvmet_invalidate_host._entry_ptr, ptr @lpfc_nvmet_invalidate_host._entry_ptr.77, ptr @lpfc_nvmet_prep_fcp_wqe._entry, ptr @lpfc_nvmet_prep_fcp_wqe._entry.127, ptr @lpfc_nvmet_prep_fcp_wqe._entry.130, ptr @lpfc_nvmet_prep_fcp_wqe._entry.133, ptr @lpfc_nvmet_prep_fcp_wqe._entry.136, ptr @lpfc_nvmet_prep_fcp_wqe._entry.139, ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr, ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr.129, ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr.132, ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr.135, ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr.138, ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr.141, ptr @lpfc_nvmet_prep_ls_wqe._entry, ptr @lpfc_nvmet_prep_ls_wqe._entry.181, ptr @lpfc_nvmet_prep_ls_wqe._entry.184, ptr @lpfc_nvmet_prep_ls_wqe._entry.187, ptr @lpfc_nvmet_prep_ls_wqe._entry_ptr, ptr @lpfc_nvmet_prep_ls_wqe._entry_ptr.183, ptr @lpfc_nvmet_prep_ls_wqe._entry_ptr.186, ptr @lpfc_nvmet_prep_ls_wqe._entry_ptr.189, ptr @lpfc_nvmet_process_rcv_fcp_req._entry, ptr @lpfc_nvmet_process_rcv_fcp_req._entry.105, ptr @lpfc_nvmet_process_rcv_fcp_req._entry.109, ptr @lpfc_nvmet_process_rcv_fcp_req._entry_ptr, ptr @lpfc_nvmet_process_rcv_fcp_req._entry_ptr.107, ptr @lpfc_nvmet_process_rcv_fcp_req._entry_ptr.111, ptr @lpfc_nvmet_rcv_unsol_abort._entry, ptr @lpfc_nvmet_rcv_unsol_abort._entry.49, ptr @lpfc_nvmet_rcv_unsol_abort._entry.52, ptr @lpfc_nvmet_rcv_unsol_abort._entry.56, ptr @lpfc_nvmet_rcv_unsol_abort._entry_ptr, ptr @lpfc_nvmet_rcv_unsol_abort._entry_ptr.51, ptr @lpfc_nvmet_rcv_unsol_abort._entry_ptr.54, ptr @lpfc_nvmet_rcv_unsol_abort._entry_ptr.58, ptr @lpfc_nvmet_setup_io_context._entry, ptr @lpfc_nvmet_setup_io_context._entry.100, ptr @lpfc_nvmet_setup_io_context._entry.82, ptr @lpfc_nvmet_setup_io_context._entry.86, ptr @lpfc_nvmet_setup_io_context._entry.89, ptr @lpfc_nvmet_setup_io_context._entry.92, ptr @lpfc_nvmet_setup_io_context._entry.95, ptr @lpfc_nvmet_setup_io_context._entry_ptr, ptr @lpfc_nvmet_setup_io_context._entry_ptr.102, ptr @lpfc_nvmet_setup_io_context._entry_ptr.84, ptr @lpfc_nvmet_setup_io_context._entry_ptr.88, ptr @lpfc_nvmet_setup_io_context._entry_ptr.91, ptr @lpfc_nvmet_setup_io_context._entry_ptr.94, ptr @lpfc_nvmet_setup_io_context._entry_ptr.97, ptr @lpfc_nvmet_sol_fcp_abort_cmp._entry, ptr @lpfc_nvmet_sol_fcp_abort_cmp._entry_ptr, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.192, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.195, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.198, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.201, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.204, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.194, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.197, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.200, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.203, ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.206, ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry, ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry.216, ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry.219, ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry_ptr, ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry_ptr.218, ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry_ptr.221, ptr @lpfc_nvmet_unsol_fcp_buffer._entry, ptr @lpfc_nvmet_unsol_fcp_buffer._entry.169, ptr @lpfc_nvmet_unsol_fcp_buffer._entry.173, ptr @lpfc_nvmet_unsol_fcp_buffer._entry.176, ptr @lpfc_nvmet_unsol_fcp_buffer._entry_ptr, ptr @lpfc_nvmet_unsol_fcp_buffer._entry_ptr.171, ptr @lpfc_nvmet_unsol_fcp_buffer._entry_ptr.175, ptr @lpfc_nvmet_unsol_fcp_buffer._entry_ptr.178, ptr @lpfc_nvmet_unsol_fcp_event._entry, ptr @lpfc_nvmet_unsol_fcp_event._entry_ptr, ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry, ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry.211, ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry_ptr, ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry_ptr.213, ptr @lpfc_nvmet_unsol_issue_abort._entry, ptr @lpfc_nvmet_unsol_issue_abort._entry.224, ptr @lpfc_nvmet_unsol_issue_abort._entry.227, ptr @lpfc_nvmet_unsol_issue_abort._entry_ptr, ptr @lpfc_nvmet_unsol_issue_abort._entry_ptr.226, ptr @lpfc_nvmet_unsol_issue_abort._entry_ptr.229, ptr @lpfc_nvmet_update_targetport._entry, ptr @lpfc_nvmet_update_targetport._entry_ptr, ptr @lpfc_nvmet_xmt_fcp_abort._entry, ptr @lpfc_nvmet_xmt_fcp_abort._entry_ptr, ptr @lpfc_nvmet_xmt_fcp_op._entry, ptr @lpfc_nvmet_xmt_fcp_op._entry.115, ptr @lpfc_nvmet_xmt_fcp_op._entry.118, ptr @lpfc_nvmet_xmt_fcp_op._entry.122, ptr @lpfc_nvmet_xmt_fcp_op._entry_ptr, ptr @lpfc_nvmet_xmt_fcp_op._entry_ptr.117, ptr @lpfc_nvmet_xmt_fcp_op._entry_ptr.120, ptr @lpfc_nvmet_xmt_fcp_op._entry_ptr.124, ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry, ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry.145, ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry_ptr, ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry_ptr.147, ptr @lpfc_nvmet_xmt_fcp_release._entry, ptr @lpfc_nvmet_xmt_fcp_release._entry.153, ptr @lpfc_nvmet_xmt_fcp_release._entry_ptr, ptr @lpfc_nvmet_xmt_fcp_release._entry_ptr.155, ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry, ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry.232, ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry.235, ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry_ptr, ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry_ptr.234, ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry_ptr.237, ptr @lpfc_sli4_nvmet_xri_aborted._entry, ptr @lpfc_sli4_nvmet_xri_aborted._entry.40, ptr @lpfc_sli4_nvmet_xri_aborted._entry.43, ptr @lpfc_sli4_nvmet_xri_aborted._entry_ptr, ptr @lpfc_sli4_nvmet_xri_aborted._entry_ptr.42, ptr @lpfc_sli4_nvmet_xri_aborted._entry_ptr.45, ptr @lpfc_tsend_cmd_template, ptr @lpfc_treceive_cmd_template, ptr @lpfc_trsp_cmd_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @lpfc_nvmet_ctxbuf_post.__key, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @lpfc_tgttemplate, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @lpfc_nvmet_setup_io_context.__key, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @lpfc_nvmet_setup_io_context.__key.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @init_completion.__key, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @lpfc_nvmet_unsol_fcp_buffer.__key, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.214, ptr @.str.215, ptr @.str.217, ptr @.str.220, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.228, ptr @.str.230, ptr @.str.231, ptr @.str.233, ptr @.str.236], section "llvm.metadata"
@0 = internal global [219 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_tsend_cmd_template to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_treceive_cmd_template to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_trsp_cmd_template to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_ctxbuf_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_ctxbuf_post.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_ctxbuf_post._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_tgttemplate to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_create_targetport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_create_targetport._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_update_targetport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_sli4_nvmet_xri_aborted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_sli4_nvmet_xri_aborted._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_sli4_nvmet_xri_aborted._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_rcv_unsol_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_rcv_unsol_abort._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_rcv_unsol_abort._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_rcv_unsol_abort._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_destroy_targetport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_handle_lsreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_unsol_ls_issue_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_unsol_ls_issue_abort._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvme_unsol_ls_issue_abort._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_invalidate_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_invalidate_host._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_defer_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_setup_io_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_setup_io_context._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_setup_io_context.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_setup_io_context._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_setup_io_context._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_setup_io_context._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_setup_io_context._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_setup_io_context.__key.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_setup_io_context._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_process_rcv_fcp_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_process_rcv_fcp_req._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_process_rcv_fcp_req._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_fcp_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_fcp_op._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_fcp_op._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_fcp_op._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_prep_fcp_wqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_prep_fcp_wqe._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_prep_fcp_wqe._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_prep_fcp_wqe._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_prep_fcp_wqe._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_prep_fcp_wqe._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_fcp_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_fcp_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_fcp_release._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_defer_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_discovery_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_host_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_buffer._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_buffer._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_buffer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_buffer._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_prep_ls_wqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_prep_ls_wqe._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_prep_ls_wqe._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_prep_ls_wqe._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_sol_fcp_issue_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_sol_fcp_abort_cmp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_issue_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_issue_abort._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_unsol_issue_abort._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_nvmet_cmd_template() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @lpfc_tsend_cmd_template, i32 0, i32 128)
  store i32 1744640, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_tsend_cmd_template, i32 0, i32 0, i32 7), align 4
  store i32 2113808, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_tsend_cmd_template, i32 0, i32 0, i32 10), align 4
  store i32 -65529, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_tsend_cmd_template, i32 0, i32 0, i32 11), align 4
  %1 = call ptr @memset(ptr @lpfc_treceive_cmd_template, i32 0, i32 128)
  store i32 12, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_treceive_cmd_template, i32 0, i32 0, i32 3), align 4
  store i32 1220864, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_treceive_cmd_template, i32 0, i32 0, i32 7), align 4
  store i32 2122000, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_treceive_cmd_template, i32 0, i32 0, i32 10), align 4
  store i32 -65502, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_treceive_cmd_template, i32 0, i32 0, i32 11), align 4
  %2 = call ptr @memset(ptr @lpfc_trsp_cmd_template, i32 0, i32 128)
  store i32 697088, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_trsp_cmd_template, i32 0, i32 0, i32 7), align 4
  store i32 16528, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_trsp_cmd_template, i32 0, i32 0, i32 10), align 4
  store i32 -65533, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_trsp_cmd_template, i32 0, i32 0, i32 11), align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__lpfc_nvme_xmt_ls_rsp_cmp(ptr noundef %phba, ptr noundef %cmdwqe, ptr nocapture noundef readonly %wcqe) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 19
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %ls_rsp1 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcqe, align 4
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 15
  %parameter = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %4 = ptrtoint ptr %parameter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parameter, align 4
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp.not = icmp eq i16 %7, 3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %entry_cnt = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %entry_cnt to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %entry_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp5.not = icmp eq i16 %9, 2
  br i1 %cmp5.not, label %lor.lhs.false.if.end35_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %12 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brd_no, align 4
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %oxid, align 4
  %conv17 = zext i16 %15 to i32
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %state, align 2
  %conv19 = zext i16 %17 to i32
  %entry_cnt20 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %entry_cnt20 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %entry_cnt20, align 8
  %conv21 = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv21) #14
  br label %if.end35

if.end35:                                         ; preds = %do.body, %lor.lhs.false.if.end35_crit_edge
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 304
  %20 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool36.not = icmp eq i16 %21, 0
  br i1 %tobool36.not, label %if.end35.do.body41_crit_edge, label %if.then37

if.end35.do.body41_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %oxid38 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %oxid38 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %oxid38, align 4
  %conv39 = trunc i32 %and2 to i16
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %phba, ptr noundef nonnull @.str.5, i16 noundef zeroext %23, i16 noundef zeroext %conv39, i32 noundef %5) #11
  br label %do.body41

do.body41:                                        ; preds = %if.then37, %if.end35.do.body41_crit_edge
  %pport43 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %24 = ptrtoint ptr %pport43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pport43, align 8
  %tobool44.not = icmp eq ptr %25, null
  %cfg_log_verbose47 = getelementptr inbounds %struct.lpfc_vport, ptr %25, i32 0, i32 51
  %cfg_log_verbose49 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond51.in = select i1 %tobool44.not, ptr %cfg_log_verbose49, ptr %cfg_log_verbose47
  %26 = ptrtoint ptr %cond51.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %cond51 = load i32, ptr %cond51.in, align 4
  %and52 = and i32 %cond51, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else63, label %do.end57

do.end57:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev58 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %27 = ptrtoint ptr %pcidev58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcidev58, align 4
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %brd_no60 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %29 = ptrtoint ptr %brd_no60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brd_no60, align 4
  %oxid61 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %oxid61 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %oxid61, align 4
  %conv62 = zext i16 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev59, ptr noundef nonnull @.str.7, i32 noundef %30, i32 noundef %and2, i32 noundef %5, i32 noundef %conv62) #14
  br label %if.end71

if.else63:                                        ; preds = %do.body41
  %33 = ptrtoint ptr %cfg_log_verbose49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cfg_log_verbose49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool65.not = icmp eq i32 %34, 0
  br i1 %tobool65.not, label %if.then66, label %if.else63.if.end71_crit_edge

if.else63.if.end71_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then66:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no67 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %35 = ptrtoint ptr %brd_no67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %brd_no67, align 4
  %oxid68 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %37 = ptrtoint ptr %oxid68 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %oxid68, align 4
  %conv69 = zext i16 %38 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.7, i32 noundef %36, i32 noundef %and2, i32 noundef %5, i32 noundef %conv69) #11
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.else63.if.end71_crit_edge, %do.end57
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 18
  %39 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %context1, align 8
  %call = tail call i32 @lpfc_nlp_put(ptr noundef %40) #11
  %41 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %context2, align 4
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 20
  %42 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %context3, align 8
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %cmdwqe) #11
  %done = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 5, i32 3
  %43 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %done, align 4
  tail call void %44(ptr noundef %ls_rsp1) #11
  %45 = ptrtoint ptr %pport43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pport43, align 8
  %tobool78.not = icmp eq ptr %46, null
  %cfg_log_verbose81 = getelementptr inbounds %struct.lpfc_vport, ptr %46, i32 0, i32 51
  %cond85.in = select i1 %tobool78.not, ptr %cfg_log_verbose49, ptr %cfg_log_verbose81
  %47 = ptrtoint ptr %cond85.in to i32
  call void @__asan_load4_noabort(i32 %47)
  %cond85 = load i32, ptr %cond85.in, align 4
  %and86 = and i32 %cond85, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else97, label %do.end91

do.end91:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev92 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %48 = ptrtoint ptr %pcidev92 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcidev92, align 4
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %brd_no94 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %50 = ptrtoint ptr %brd_no94 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %brd_no94, align 4
  %oxid95 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %oxid95 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %oxid95, align 4
  %conv96 = zext i16 %53 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev93, ptr noundef nonnull @.str.11, i32 noundef %51, i32 noundef %and2, i32 noundef %conv96) #14
  br label %if.end105

if.else97:                                        ; preds = %if.end71
  %54 = ptrtoint ptr %cfg_log_verbose49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cfg_log_verbose49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool99.not = icmp eq i32 %55, 0
  br i1 %tobool99.not, label %if.then100, label %if.else97.if.end105_crit_edge

if.else97.if.end105_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then100:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no101 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %56 = ptrtoint ptr %brd_no101 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %brd_no101, align 4
  %oxid102 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %58 = ptrtoint ptr %oxid102 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %oxid102, align 4
  %conv103 = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.11, i32 noundef %57, i32 noundef %and2, i32 noundef %conv103) #11
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.else97.if.end105_crit_edge, %do.end91
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dmp_dbg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dbg_print(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_debugfs_nvme_trc(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_nlp_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_release_iocbq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvmet_ctxbuf_post(ptr noundef %phba, ptr noundef %ctx_buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %ctx_buf, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %3)
  %cmp = icmp eq i16 %3, 255
  br i1 %cmp, label %do.body, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %4 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %6 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brd_no, align 4
  %oxid10 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %oxid10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %oxid10, align 4
  %conv11 = zext i16 %9 to i32
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %state, align 2
  %conv13 = zext i16 %11 to i32
  %entry_cnt = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %entry_cnt to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %entry_cnt, align 8
  %conv14 = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %7, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %conv14) #14
  br label %if.end28

if.end28:                                         ; preds = %do.body, %entry.if.end28_crit_edge
  %rqb_buffer = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %rqb_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rqb_buffer, align 8
  %tobool29.not = icmp eq ptr %15, null
  br i1 %tobool29.not, label %if.end28.if.end59_crit_edge, label %do.body32

if.end28.if.end59_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

do.body32:                                        ; preds = %if.end28
  %ctxlock = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 8
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  %16 = ptrtoint ptr %rqb_buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rqb_buffer, align 8
  %tobool41.not = icmp eq ptr %17, null
  br i1 %tobool41.not, label %if.else56, label %if.then42

if.then42:                                        ; preds = %do.body32
  %18 = ptrtoint ptr %rqb_buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rqb_buffer, align 8
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flag, align 8
  %21 = and i16 %20, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool46.not = icmp eq i16 %21, 0
  br i1 %tobool46.not, label %if.else53, label %if.then47

if.then47:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %and50 = and i16 %20, -33
  %22 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %and50, ptr %flag, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call35) #11
  %hrq = getelementptr inbounds %struct.rqb_dmabuf, ptr %17, i32 0, i32 5
  %23 = ptrtoint ptr %hrq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hrq, align 4
  %rqbp = getelementptr inbounds %struct.lpfc_queue, ptr %24, i32 0, i32 26
  %25 = ptrtoint ptr %rqbp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rqbp, align 4
  %rqb_free_buffer = getelementptr inbounds %struct.lpfc_rqb, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %rqb_free_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rqb_free_buffer, align 4
  tail call void %28(ptr noundef %phba, ptr noundef nonnull %17) #11
  br label %if.end59

if.else53:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call35) #11
  tail call void @lpfc_rq_buf_free(ptr noundef %phba, ptr noundef nonnull %17) #11
  br label %if.end59

if.else56:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call35) #11
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.else53, %if.then47, %if.end28.if.end59_crit_edge
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 255, ptr %state, align 2
  %nvmet_io_wait_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 111
  %call69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %nvmet_io_wait_lock) #11
  %nvmet_io_wait_cnt = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 70
  %30 = ptrtoint ptr %nvmet_io_wait_cnt to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nvmet_io_wait_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool75.not = icmp eq i16 %31, 0
  br i1 %tobool75.not, label %if.end210, label %do.body77

do.body77:                                        ; preds = %if.end59
  %lpfc_nvmet_io_wait_list = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 83
  %32 = ptrtoint ptr %lpfc_nvmet_io_wait_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %lpfc_nvmet_io_wait_list, align 4
  %cmp.i.not = icmp eq ptr %33, %lpfc_nvmet_io_wait_list
  br i1 %cmp.i.not, label %do.body77.do.end88_crit_edge, label %if.then81

do.body77.do.end88_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end88

if.then81:                                        ; preds = %do.body77
  %call.i.i383 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %33) #11
  br i1 %call.i.i383, label %if.end.i.i, label %if.then81.list_del_init.exit_crit_edge

if.then81.list_del_init.exit_crit_edge:           ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then81.list_del_init.exit_crit_edge
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %33, ptr %33, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %33, ptr %prev.i3.i, align 4
  br label %do.end88

do.end88:                                         ; preds = %list_del_init.exit, %do.body77.do.end88_crit_edge
  %nvmebuf.0 = phi ptr [ null, %do.body77.do.end88_crit_edge ], [ %33, %list_del_init.exit ]
  %42 = ptrtoint ptr %nvmet_io_wait_cnt to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nvmet_io_wait_cnt, align 2
  %dec = add i16 %43, -1
  store i16 %dec, ptr %nvmet_io_wait_cnt, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %nvmet_io_wait_lock, i32 noundef %call69) #11
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %nvmebuf.0, i32 0, i32 1
  %44 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %virt, align 4
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %fh_ox_id, align 4
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %48 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private, align 8
  %bytes_recv = getelementptr inbounds %struct.rqb_dmabuf, ptr %nvmebuf.0, i32 0, i32 3
  %52 = ptrtoint ptr %bytes_recv to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bytes_recv, align 2
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %45, i32 0, i32 3
  %54 = ptrtoint ptr %fh_s_id to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fh_s_id, align 1
  %conv96 = zext i8 %55 to i32
  %shl = shl nuw nsw i32 %conv96, 16
  %arrayidx98 = getelementptr %struct.fc_frame_header, ptr %45, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %57 to i32
  %shl100 = shl nuw nsw i32 %conv99, 8
  %or = or i32 %shl100, %shl
  %arrayidx102 = getelementptr %struct.fc_frame_header, ptr %45, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %59 to i32
  %or104 = or i32 %or, %conv103
  %60 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %context, align 4
  %wqeq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %wqeq to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %wqeq, align 8
  %offset = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 10
  %63 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %offset, align 8
  %phba106 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 2
  %64 = ptrtoint ptr %phba106 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %phba, ptr %phba106, align 8
  %size108 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 12
  %65 = ptrtoint ptr %size108 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %53, ptr %size108, align 2
  %oxid110 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 11
  %66 = ptrtoint ptr %oxid110 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %47, ptr %oxid110, align 4
  %sid111 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 9
  %67 = ptrtoint ptr %sid111 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or104, ptr %sid111, align 4
  %state112 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 16
  %68 = ptrtoint ptr %state112 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 4, ptr %state112, align 2
  %entry_cnt113 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 13
  %69 = ptrtoint ptr %entry_cnt113 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %entry_cnt113, align 8
  %flag114 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 17
  %70 = ptrtoint ptr %flag114 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flag114, align 8
  %ctxbuf = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 20
  %71 = ptrtoint ptr %ctxbuf to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %ctx_buf, ptr %ctxbuf, align 4
  %rqb_buffer115 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 19
  %72 = ptrtoint ptr %rqb_buffer115 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %nvmebuf.0, ptr %rqb_buffer115, align 8
  %ctxlock117 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %ctxlock117, ptr noundef nonnull @.str.15, ptr noundef nonnull @lpfc_nvmet_ctxbuf_post.__key, i16 noundef signext 3) #11
  %ts_isr_cmd = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 22
  %73 = ptrtoint ptr %ts_isr_cmd to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %ts_isr_cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %tobool121.not = icmp eq i64 %74, 0
  br i1 %tobool121.not, label %do.end88.if.end123_crit_edge, label %if.then122

do.end88.if.end123_crit_edge:                     ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then122:                                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #13
  %ts_cmd_nvme = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %61, i32 0, i32 23
  %75 = call ptr @memset(ptr %ts_cmd_nvme, i32 0, i32 72)
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %do.end88.if.end123_crit_edge
  %rcv_fcp_cmd_in = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %51, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_in, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_fcp_cmd_in, i32 1, i32 3, i32 1) #11
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_fcp_cmd_in, ptr %rcv_fcp_cmd_in, i32 1, ptr elementtype(i32) %rcv_fcp_cmd_in) #11, !srcloc !421
  %call133 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock117) #11
  %77 = ptrtoint ptr %flag114 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %flag114, align 8
  %79 = or i16 %78, 32
  store i16 %79, ptr %flag114, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock117, i32 noundef %call133) #11
  %wq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 26
  %80 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wq, align 8
  %defer_work = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %ctx_buf, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %defer_work) #11
  br i1 %call.i, label %if.end123.cleanup_crit_edge, label %if.then144

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then144:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  %rcv_fcp_cmd_drop = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %51, i32 0, i32 16
  %call.i.i379 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_drop, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_fcp_cmd_drop, i32 1, i32 3, i32 1) #11
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_fcp_cmd_drop, ptr %rcv_fcp_cmd_drop, i32 1, ptr elementtype(i32) %rcv_fcp_cmd_drop) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev166 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %83 = ptrtoint ptr %pcidev166 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcidev166, align 4
  %dev167 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %brd_no168 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %85 = ptrtoint ptr %brd_no168 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %brd_no168, align 4
  %87 = ptrtoint ptr %oxid110 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %oxid110, align 4
  %conv170 = zext i16 %88 to i32
  %call.i.i380 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rcv_fcp_cmd_in, i32 noundef 4) #11
  %89 = ptrtoint ptr %rcv_fcp_cmd_in to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %rcv_fcp_cmd_in, align 4
  %rcv_fcp_cmd_out = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %51, i32 0, i32 15
  %call.i.i381 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rcv_fcp_cmd_out, i32 noundef 4) #11
  %91 = ptrtoint ptr %rcv_fcp_cmd_out to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %rcv_fcp_cmd_out, align 4
  %xmt_fcp_release = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %51, i32 0, i32 18
  %call.i.i382 = tail call zeroext i1 @__kasan_check_read(ptr noundef %xmt_fcp_release, i32 noundef 4) #11
  %93 = ptrtoint ptr %xmt_fcp_release to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %xmt_fcp_release, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev167, ptr noundef nonnull @.str.17, i32 noundef %86, i32 noundef %conv170, i32 noundef %90, i32 noundef %92, i32 noundef %94) #14
  %call201 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock117) #11
  tail call fastcc void @lpfc_nvmet_defer_release(ptr noundef %phba, ptr noundef %61)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock117, i32 noundef %call201) #11
  tail call fastcc void @lpfc_nvmet_unsol_fcp_issue_abort(ptr noundef %phba, ptr noundef %61, i32 noundef %or104, i16 noundef zeroext %47)
  br label %cleanup

if.end210:                                        ; preds = %if.end59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %nvmet_io_wait_lock, i32 noundef %call69) #11
  %t_active_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 81
  %call222 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %t_active_list_lock) #11
  %list227 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 1
  %call.i.i384 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list227) #11
  br i1 %call.i.i384, label %if.end.i.i387, label %if.end210.list_del_init.exit389_crit_edge

if.end210.list_del_init.exit389_crit_edge:        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit389

if.end.i.i387:                                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i385 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %prev.i.i385 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i385, align 4
  %97 = ptrtoint ptr %list227 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %list227, align 4
  %prev1.i.i.i386 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i386 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev1.i.i.i386, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %96, align 4
  br label %list_del_init.exit389

list_del_init.exit389:                            ; preds = %if.end.i.i387, %if.end210.list_del_init.exit389_crit_edge
  %101 = ptrtoint ptr %list227 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %list227, ptr %list227, align 4
  %prev.i3.i388 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 1, i32 1
  %102 = ptrtoint ptr %prev.i3.i388 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %list227, ptr %prev.i3.i388, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %t_active_list_lock, i32 noundef %call222) #11
  %103 = tail call i32 @llvm.read_register.i32(metadata !411) #11
  %and.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i to ptr
  %cpu231 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %cpu231 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cpu231, align 4
  %nvmet_ctx_info = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 84
  %107 = ptrtoint ptr %nvmet_ctx_info to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %nvmet_ctx_info, align 8
  %cfg_nvmet_mrq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 112
  %109 = ptrtoint ptr %cfg_nvmet_mrq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cfg_nvmet_mrq, align 4
  %mul = mul i32 %110, %106
  %idx = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 15
  %111 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %idx, align 4
  %conv233 = zext i16 %112 to i32
  %add = add i32 %mul, %conv233
  %add.ptr234 = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %108, i32 %add
  %nvmet_ctx_list_lock = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %108, i32 %add, i32 1
  %call243 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %nvmet_ctx_list_lock) #11
  %prev.i = getelementptr inbounds %struct.list_head, ptr %add.ptr234, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %prev.i, align 4
  %call.i.i390 = tail call zeroext i1 @__list_add_valid(ptr noundef %ctx_buf, ptr noundef %114, ptr noundef %add.ptr234) #11
  br i1 %call.i.i390, label %if.end.i.i391, label %list_del_init.exit389.list_add_tail.exit_crit_edge

list_del_init.exit389.list_add_tail.exit_crit_edge: ; preds = %list_del_init.exit389
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i391:                                    ; preds = %list_del_init.exit389
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %ctx_buf, ptr %prev.i, align 4
  %116 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %add.ptr234, ptr %ctx_buf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ctx_buf, i32 0, i32 1
  %117 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev3.i.i, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %ctx_buf, ptr %114, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i391, %list_del_init.exit389.list_add_tail.exit_crit_edge
  %nvmet_ctx_list_cnt = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %108, i32 %add, i32 4
  %119 = ptrtoint ptr %nvmet_ctx_list_cnt to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %nvmet_ctx_list_cnt, align 4
  %inc = add i16 %120, 1
  store i16 %inc, ptr %nvmet_ctx_list_cnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %nvmet_ctx_list_lock, i32 noundef %call243) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then144, %if.end123.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_rq_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_nvmet_defer_release(ptr noundef %phba, ptr noundef %ctxp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !422

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 265, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %1 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pport, align 8
  %tobool25.not = icmp eq ptr %2, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %2, i32 0, i32 51
  %cfg_log_verbose27 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool25.not, ptr %cfg_log_verbose27, ptr %cfg_log_verbose
  %3 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.else, label %do.end32

do.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %4 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %6 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brd_no, align 4
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %8 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %oxid, align 4
  %conv = zext i16 %9 to i32
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 17
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flag, align 8
  %conv33 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %7, i32 noundef %conv, i32 noundef %conv33) #14
  br label %if.end43

if.else:                                          ; preds = %if.end
  %12 = ptrtoint ptr %cfg_log_verbose27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_log_verbose27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool35.not = icmp eq i32 %13, 0
  br i1 %tobool35.not, label %if.then36, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no37 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %14 = ptrtoint ptr %brd_no37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brd_no37, align 4
  %oxid38 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %16 = ptrtoint ptr %oxid38 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %oxid38, align 4
  %conv39 = zext i16 %17 to i32
  %flag40 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 17
  %18 = ptrtoint ptr %flag40 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flag40, align 8
  %conv41 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.78, i32 noundef %15, i32 noundef %conv39, i32 noundef %conv41) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %if.else.if.end43_crit_edge, %do.end32
  %flag46 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 17
  %20 = ptrtoint ptr %flag46 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flag46, align 8
  %22 = and i16 %21, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool49.not = icmp eq i16 %22, 0
  br i1 %tobool49.not, label %if.end51, label %if.end43.return_crit_edge

if.end43.return_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end51:                                         ; preds = %if.end43
  %or = or i16 %21, 8
  %23 = ptrtoint ptr %flag46 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %or, ptr %flag46, align 8
  %t_active_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 81
  tail call void @_raw_spin_lock(ptr noundef %t_active_list_lock) #11
  %list = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end51.list_del.exit_crit_edge

if.end51.list_del.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end51.list_del.exit_crit_edge
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %t_active_list_lock) #11
  %abts_nvmet_buf_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 79
  tail call void @_raw_spin_lock(ptr noundef %abts_nvmet_buf_list_lock) #11
  %lpfc_abts_nvmet_ctx_list = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 80
  %prev.i83 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 80, i32 1
  %32 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i83, align 4
  %call.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %33, ptr noundef %lpfc_abts_nvmet_ctx_list) #11
  br i1 %call.i.i84, label %if.end.i.i85, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i85:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list, ptr %prev.i83, align 4
  %35 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %lpfc_abts_nvmet_ctx_list, ptr %list, align 4
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i85, %list_del.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %abts_nvmet_buf_list_lock) #11
  br label %return

return:                                           ; preds = %list_add_tail.exit, %if.end43.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_nvmet_unsol_fcp_issue_abort(ptr noundef %phba, ptr noundef %ctxp, i32 noundef %sid, i16 noundef zeroext %xri) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %0 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %wqeq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 6
  %4 = ptrtoint ptr %wqeq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wqeq, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ctxbuf = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 20
  %6 = ptrtoint ptr %ctxbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctxbuf, align 4
  %iocbq = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %iocbq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iocbq, align 4
  %10 = ptrtoint ptr %wqeq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %wqeq, align 8
  %hba_wqidx = getelementptr inbounds %struct.lpfc_iocbq, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %hba_wqidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %hba_wqidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 16
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %13)
  %cmp = icmp eq i16 %13, 255
  br i1 %cmp, label %do.body, label %if.end32

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %14 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %16 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brd_no, align 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %state, align 2
  %conv15 = zext i16 %19 to i32
  %entry_cnt = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 13
  %20 = ptrtoint ptr %entry_cnt to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %entry_cnt, align 8
  %conv16 = zext i16 %21 to i32
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %22 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %oxid, align 4
  %conv17 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.209, i32 noundef %17, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17) #14
  br label %do.body64

if.end32:                                         ; preds = %if.end
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 6, ptr %state, align 2
  %entry_cnt34 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 13
  %25 = ptrtoint ptr %entry_cnt34 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %entry_cnt34, align 8
  %inc = add i16 %26, 1
  store i16 %inc, ptr %entry_cnt34, align 8
  %call = tail call fastcc i32 @lpfc_nvmet_unsol_issue_abort(ptr noundef %phba, ptr noundef %ctxp, i32 noundef %sid, i16 noundef zeroext %xri)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp35 = icmp eq i32 %call, 0
  br i1 %cmp35, label %if.end32.do.body64_crit_edge, label %do.body40

if.end32.do.body64_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64

do.body40:                                        ; preds = %if.end32
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock) #11
  %27 = ptrtoint ptr %wqeq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wqeq, align 8
  %wqe_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %wqe_cmpl to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @lpfc_nvmet_unsol_fcp_abort_cmp, ptr %wqe_cmpl, align 4
  %iocb_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %28, i32 0, i32 26
  %30 = ptrtoint ptr %iocb_cmpl to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %iocb_cmpl, align 8
  %iocb_flag = getelementptr inbounds %struct.lpfc_iocbq, ptr %28, i32 0, i32 15
  %31 = ptrtoint ptr %iocb_flag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iocb_flag, align 4
  %or = or i32 %32, 8388608
  store i32 %or, ptr %iocb_flag, align 4
  %hdwq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 21
  %33 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdwq, align 8
  %tobool50.not = icmp eq ptr %34, null
  br i1 %tobool50.not, label %if.then51, label %do.body40.if.end55_crit_edge

do.body40.if.end55_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then51:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %hdwq52 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 27
  %35 = ptrtoint ptr %hdwq52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hdwq52, align 8
  %hba_wqidx53 = getelementptr inbounds %struct.lpfc_iocbq, ptr %28, i32 0, i32 6
  %37 = ptrtoint ptr %hba_wqidx53 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hba_wqidx53, align 2
  %idxprom = zext i16 %38 to i32
  %arrayidx = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %36, i32 %idxprom
  %39 = ptrtoint ptr %hdwq to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx, ptr %hdwq, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %do.body40.if.end55_crit_edge
  %40 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdwq, align 8
  %call57 = tail call i32 @lpfc_sli4_issue_wqe(ptr noundef %phba, ptr noundef %41, ptr noundef %28) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp59 = icmp eq i32 %call57, 0
  br i1 %cmp59, label %if.end55.cleanup_crit_edge, label %if.end55.do.body64_crit_edge

if.end55.do.body64_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body64:                                        ; preds = %if.end55.do.body64_crit_edge, %if.end32.do.body64_crit_edge, %do.body
  %rc.0 = phi i32 [ 1, %do.body ], [ 0, %if.end32.do.body64_crit_edge ], [ %call57, %if.end55.do.body64_crit_edge ]
  %ctxlock = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 8
  %call71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 17
  %42 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flag, align 8
  %44 = and i16 %43, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool78.not = icmp eq i16 %44, 0
  br i1 %tobool78.not, label %do.body64.if.end83_crit_edge, label %if.then79

do.body64.if.end83_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then79:                                        ; preds = %do.body64
  %abts_nvmet_buf_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 79
  tail call void @_raw_spin_lock(ptr noundef %abts_nvmet_buf_list_lock) #11
  %list = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 1
  %call.i.i1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i1, label %if.end.i.i, label %if.then79.list_del_init.exit_crit_edge

if.then79.list_del_init.exit_crit_edge:           ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then79.list_del_init.exit_crit_edge
  %51 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %abts_nvmet_buf_list_lock) #11
  br label %if.end83

if.end83:                                         ; preds = %list_del_init.exit, %do.body64.if.end83_crit_edge
  %53 = xor i1 %tobool78.not, true
  %54 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flag, align 8
  %56 = and i16 %55, -11
  store i16 %56, ptr %flag, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call71) #11
  %xmt_abort_rsp_error = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %3, i32 0, i32 35
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp_error, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_rsp_error, i32 1, i32 3, i32 1) #11
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_rsp_error, ptr %xmt_abort_rsp_error, i32 1, ptr elementtype(i32) %xmt_abort_rsp_error) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev110 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %58 = ptrtoint ptr %pcidev110 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcidev110, align 4
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %brd_no112 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %60 = ptrtoint ptr %brd_no112 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %brd_no112, align 4
  %oxid113 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %62 = ptrtoint ptr %oxid113 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %oxid113, align 4
  %conv114 = zext i16 %63 to i32
  %conv116 = zext i1 %53 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev111, ptr noundef nonnull @.str.212, i32 noundef %61, i32 noundef %conv114, i32 noundef %rc.0, i32 noundef %conv116) #14
  br i1 %tobool78.not, label %if.end83.cleanup_crit_edge, label %if.then131

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then131:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %ctxbuf132 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 20
  %64 = ptrtoint ptr %ctxbuf132 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctxbuf132, align 4
  tail call void @lpfc_nvmet_ctxbuf_post(ptr noundef %phba, ptr noundef %65)
  br label %cleanup

cleanup:                                          ; preds = %if.then131, %if.end83.cleanup_crit_edge, %if.end55.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__lpfc_nvme_xmt_ls_rsp(ptr noundef %axchg, ptr nocapture noundef readonly %ls_rsp, ptr noundef %xmt_ls_rsp_cmp) local_unnamed_addr #2 align 64 {
entry:
  %dmabuf = alloca %struct.lpfc_dmabuf, align 4
  %bpl = alloca %struct.ulp_bde64, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phba1 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 2
  %0 = ptrtoint ptr %phba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phba1, align 8
  %rqb_buffer = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 19
  %2 = ptrtoint ptr %rqb_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rqb_buffer, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dmabuf) #11
  %4 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %dmabuf, i32 0, i32 1
  %5 = call ptr @memset(ptr %dmabuf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bpl) #11
  %6 = ptrtoint ptr %bpl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %bpl, align 4, !annotation !423
  %7 = getelementptr inbounds %struct.ulp_bde64, ptr %bpl, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !423
  %9 = getelementptr inbounds %struct.ulp_bde64, ptr %bpl, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !423
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %11 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pport, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %12, i32 0, i32 41
  %13 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %load_flag, align 4
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %12, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %12, i32 0, i32 51
  %cfg_log_verbose5 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 139
  %cond.in = select i1 %tobool3.not, ptr %cfg_log_verbose5, ptr %cfg_log_verbose
  %16 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond = load i32, ptr %cond.in, align 4
  %and6 = and i32 %cond, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %19 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brd_no, align 4
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 11
  %21 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %oxid, align 4
  %conv10 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %20, i32 noundef %conv10) #14
  br label %if.end18

if.else:                                          ; preds = %do.body
  %23 = ptrtoint ptr %cfg_log_verbose5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cfg_log_verbose5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not = icmp eq i32 %24, 0
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no14 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %25 = ptrtoint ptr %brd_no14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %brd_no14, align 4
  %oxid15 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 11
  %27 = ptrtoint ptr %oxid15 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %oxid15, align 4
  %conv16 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %26, i32 noundef %conv16) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.else.if.end18_crit_edge, %do.end
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 16
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %30)
  %cmp.not = icmp eq i16 %30, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end18.do.body27_crit_edge

if.end18.do.body27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

lor.lhs.false:                                    ; preds = %if.end18
  %entry_cnt = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 13
  %31 = ptrtoint ptr %entry_cnt to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %entry_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %32)
  %cmp24.not = icmp eq i16 %32, 1
  br i1 %cmp24.not, label %if.end72, label %lor.lhs.false.do.body27_crit_edge

lor.lhs.false.do.body27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

do.body27:                                        ; preds = %lor.lhs.false.do.body27_crit_edge, %if.end18.do.body27_crit_edge
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #11
  %pcidev48 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %33 = ptrtoint ptr %pcidev48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcidev48, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %brd_no50 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %35 = ptrtoint ptr %brd_no50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %brd_no50, align 4
  %oxid51 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 11
  %37 = ptrtoint ptr %oxid51 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %oxid51, align 4
  %conv52 = zext i16 %38 to i32
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %state, align 2
  %conv54 = zext i16 %40 to i32
  %entry_cnt55 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 13
  %41 = ptrtoint ptr %entry_cnt55 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %entry_cnt55, align 8
  %conv56 = zext i16 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev49, ptr noundef nonnull @.str.22, i32 noundef %36, i32 noundef %conv52, i32 noundef %conv54, i32 noundef %conv56) #14
  br label %cleanup

if.end72:                                         ; preds = %lor.lhs.false
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 3, ptr %state, align 2
  %44 = ptrtoint ptr %entry_cnt to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2, ptr %entry_cnt, align 8
  %rspdma = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %ls_rsp, i32 0, i32 1
  %45 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rspdma, align 4
  %rsplen = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %ls_rsp, i32 0, i32 2
  %47 = ptrtoint ptr %rsplen to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rsplen, align 4
  %link_state.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 36
  %49 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %link_state.i.i, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %50, label %do.body.i [
    i32 32, label %if.end72.if.end22.i_crit_edge
    i32 6, label %if.end72.if.end22.i_crit_edge277
    i32 5, label %if.end72.if.end22.i_crit_edge278
  ]

if.end72.if.end22.i_crit_edge278:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.end72.if.end22.i_crit_edge277:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.end72.if.end22.i_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

do.body.i:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #11
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %52 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %54 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %brd_no.i, align 4
  %sid.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 9
  %56 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sid.i, align 4
  %oxid.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 11
  %58 = ptrtoint ptr %oxid.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %oxid.i, align 4
  %conv8.i = zext i16 %59 to i32
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %state, align 2
  %conv9.i = zext i16 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev.i, ptr noundef nonnull @.str.179, i32 noundef %55, i32 noundef %57, i32 noundef %conv8.i, i32 noundef %conv9.i) #14
  br label %do.body78

if.end22.i:                                       ; preds = %if.end72.if.end22.i_crit_edge, %if.end72.if.end22.i_crit_edge277, %if.end72.if.end22.i_crit_edge278
  %call23.i = tail call ptr @lpfc_sli_get_iocbq(ptr noundef %1) #11
  %cmp24.i = icmp eq ptr %call23.i, null
  br i1 %cmp24.i, label %do.body27.i, label %if.end70.i

do.body27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #11
  %pcidev48.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %62 = ptrtoint ptr %pcidev48.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcidev48.i, align 4
  %dev49.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %brd_no50.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %64 = ptrtoint ptr %brd_no50.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %brd_no50.i, align 4
  %sid51.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 9
  %66 = ptrtoint ptr %sid51.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sid51.i, align 4
  %oxid52.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 11
  %68 = ptrtoint ptr %oxid52.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %oxid52.i, align 4
  %conv53.i = zext i16 %69 to i32
  %70 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %state, align 2
  %conv55.i = zext i16 %71 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev49.i, ptr noundef nonnull @.str.182, i32 noundef %65, i32 noundef %67, i32 noundef %conv53.i, i32 noundef %conv55.i) #14
  br label %do.body78

if.end70.i:                                       ; preds = %if.end22.i
  %72 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pport, align 8
  %sid72.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 9
  %74 = ptrtoint ptr %sid72.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sid72.i, align 4
  %call73.i = tail call ptr @lpfc_findnode_did(ptr noundef %73, i32 noundef %75) #11
  %tobool74.not.i = icmp eq ptr %call73.i, null
  br i1 %tobool74.not.i, label %if.end70.i.do.body84.i_crit_edge, label %lor.lhs.false75.i

if.end70.i.do.body84.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body84.i

lor.lhs.false75.i:                                ; preds = %if.end70.i
  %nlp_state.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call73.i, i32 0, i32 11
  %76 = ptrtoint ptr %nlp_state.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %nlp_state.i, align 2
  %78 = and i16 %77, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %78)
  %switch.i = icmp eq i16 %78, 6
  br i1 %switch.i, label %if.end127.i, label %lor.lhs.false75.i.do.body84.i_crit_edge

lor.lhs.false75.i.do.body84.i_crit_edge:          ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body84.i

do.body84.i:                                      ; preds = %lor.lhs.false75.i.do.body84.i_crit_edge, %if.end70.i.do.body84.i_crit_edge
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #11
  %pcidev105.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %79 = ptrtoint ptr %pcidev105.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pcidev105.i, align 4
  %dev106.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %brd_no107.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %81 = ptrtoint ptr %brd_no107.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %brd_no107.i, align 4
  %83 = ptrtoint ptr %sid72.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sid72.i, align 4
  %oxid109.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 11
  %85 = ptrtoint ptr %oxid109.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %oxid109.i, align 4
  %conv110.i = zext i16 %86 to i32
  %87 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %state, align 2
  %conv112.i = zext i16 %88 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev106.i, ptr noundef nonnull @.str.185, i32 noundef %82, i32 noundef %84, i32 noundef %conv110.i, i32 noundef %conv112.i) #14
  br label %nvme_wqe_free_wqeq_exit.i

if.end127.i:                                      ; preds = %lor.lhs.false75.i
  %wqeq.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 6
  %89 = ptrtoint ptr %wqeq.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call23.i, ptr %wqeq.i, align 8
  %call128.i = tail call ptr @lpfc_nlp_get(ptr noundef nonnull %call73.i) #11
  %context1.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 18
  %90 = ptrtoint ptr %context1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call128.i, ptr %context1.i, align 8
  %cmp130.i = icmp eq ptr %call128.i, null
  br i1 %cmp130.i, label %if.end127.i.nvme_wqe_free_wqeq_exit.i_crit_edge, label %if.end133.i

if.end127.i.nvme_wqe_free_wqeq_exit.i_crit_edge:  ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_wqe_free_wqeq_exit.i

if.end133.i:                                      ; preds = %if.end127.i
  %context2.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 19
  %91 = ptrtoint ptr %context2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %axchg, ptr %context2.i, align 4
  %wqe134.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10
  %92 = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 3
  %93 = call ptr @memset(ptr %92, i32 0, i32 52)
  %conv135.i = zext i16 %48 to i32
  %94 = ptrtoint ptr %wqe134.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv135.i, ptr %wqe134.i, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  %addrLow.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 1
  %96 = ptrtoint ptr %addrLow.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %addrLow.i, align 4
  %addrHigh.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 2
  %97 = ptrtoint ptr %addrHigh.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %addrHigh.i, align 4
  %wge_ctl.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 5
  %98 = ptrtoint ptr %wge_ctl.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 858259584, ptr %wge_ctl.i, align 4
  %rpi_ids.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 88
  %99 = ptrtoint ptr %rpi_ids.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rpi_ids.i, align 4
  %nlp_rpi.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call73.i, i32 0, i32 10
  %101 = ptrtoint ptr %nlp_rpi.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %nlp_rpi.i, align 4
  %idxprom.i = zext i16 %102 to i32
  %arrayidx.i = getelementptr i16, ptr %100, i32 %idxprom.i
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i, align 2
  %conv176.i = zext i16 %104 to i32
  %shl.i = shl nuw i32 %conv176.i, 16
  %wqe_com.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 6
  %sli4_xritag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 5
  %105 = ptrtoint ptr %sli4_xritag.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %sli4_xritag.i, align 4
  %conv182.i = zext i16 %106 to i32
  %or188.i = or i32 %shl.i, %conv182.i
  %107 = ptrtoint ptr %wqe_com.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or188.i, ptr %wqe_com.i, align 4
  %word7.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 7
  %108 = ptrtoint ptr %word7.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 164352, ptr %word7.i, align 4
  %iotag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 3
  %109 = ptrtoint ptr %iotag.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %iotag.i, align 8
  %conv214.i = zext i16 %110 to i32
  %abort_tag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 8
  %111 = ptrtoint ptr %abort_tag.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv214.i, ptr %abort_tag.i, align 4
  %word9.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 9
  %112 = ptrtoint ptr %word9.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv214.i, ptr %word9.i, align 4
  %oxid225.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 11
  %113 = ptrtoint ptr %oxid225.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %oxid225.i, align 4
  %conv226.i = zext i16 %114 to i32
  %shl228.i = shl nuw i32 %conv226.i, 16
  %or232.i = or i32 %shl228.i, %conv214.i
  store i32 %or232.i, ptr %word9.i, align 4
  %word10.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 10
  %115 = ptrtoint ptr %word10.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 16640, ptr %word10.i, align 4
  %word11.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 11
  %116 = ptrtoint ptr %word11.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -65528, ptr %word11.i, align 4
  %xmit_len.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 10, i32 0, i32 12
  %117 = ptrtoint ptr %xmit_len.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv135.i, ptr %xmit_len.i, align 4
  %retry.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 14
  %118 = ptrtoint ptr %retry.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %retry.i, align 2
  %119 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pport, align 8
  %vport.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 17
  %121 = ptrtoint ptr %vport.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %vport.i, align 4
  %fc_ratov.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 58
  %122 = ptrtoint ptr %fc_ratov.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %fc_ratov.i, align 8
  %mul.i = mul i32 %123, 3
  %add.i = add i32 %mul.i, 16
  %drvrTimeout.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 16
  %124 = ptrtoint ptr %drvrTimeout.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add.i, ptr %drvrTimeout.i, align 8
  %iocb_flag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 15
  %125 = ptrtoint ptr %iocb_flag.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %iocb_flag.i, align 4
  %or271.i = or i32 %126, 4194304
  store i32 %or271.i, ptr %iocb_flag.i, align 4
  %127 = load ptr, ptr %pport, align 8
  %tobool275.not.i = icmp eq ptr %127, null
  %cfg_log_verbose278.i = getelementptr inbounds %struct.lpfc_vport, ptr %127, i32 0, i32 51
  %cond282.in.i = select i1 %tobool275.not.i, ptr %cfg_log_verbose5, ptr %cfg_log_verbose278.i
  %128 = ptrtoint ptr %cond282.in.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %cond282.i = load i32, ptr %cond282.in.i, align 4
  %and283.i = and i32 %cond282.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283.i)
  %tobool284.not.i = icmp eq i32 %and283.i, 0
  br i1 %tobool284.not.i, label %if.else297.i, label %do.end288.i

do.end288.i:                                      ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev289.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %129 = ptrtoint ptr %pcidev289.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pcidev289.i, align 4
  %dev290.i = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  %brd_no291.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %131 = ptrtoint ptr %brd_no291.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %brd_no291.i, align 4
  %nlp_DID.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call73.i, i32 0, i32 6
  %133 = ptrtoint ptr %nlp_DID.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %nlp_DID.i, align 8
  %135 = ptrtoint ptr %oxid225.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %oxid225.i, align 4
  %conv295.i = zext i16 %136 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev290.i, ptr noundef nonnull @.str.188, i32 noundef %132, i32 noundef %134, i32 noundef %conv214.i, i32 noundef %conv295.i, i32 noundef %conv135.i) #14
  br label %if.end115

if.else297.i:                                     ; preds = %if.end133.i
  %137 = ptrtoint ptr %cfg_log_verbose5 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cfg_log_verbose5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool299.not.i = icmp eq i32 %138, 0
  br i1 %tobool299.not.i, label %if.then300.i, label %if.else297.i.if.end115_crit_edge

if.else297.i.if.end115_crit_edge:                 ; preds = %if.else297.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then300.i:                                     ; preds = %if.else297.i
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no301.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %139 = ptrtoint ptr %brd_no301.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %brd_no301.i, align 4
  %nlp_DID302.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call73.i, i32 0, i32 6
  %141 = ptrtoint ptr %nlp_DID302.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %nlp_DID302.i, align 8
  %143 = ptrtoint ptr %oxid225.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %oxid225.i, align 4
  %conv306.i = zext i16 %144 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %1, ptr noundef nonnull @.str.188, i32 noundef %140, i32 noundef %142, i32 noundef %conv214.i, i32 noundef %conv306.i, i32 noundef %conv135.i) #11
  br label %if.end115

nvme_wqe_free_wqeq_exit.i:                        ; preds = %if.end127.i.nvme_wqe_free_wqeq_exit.i_crit_edge, %do.body84.i
  %context2312.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 19
  %145 = ptrtoint ptr %context2312.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %context2312.i, align 4
  %context3.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 20
  %146 = ptrtoint ptr %context3.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %context3.i, align 8
  tail call void @lpfc_sli_release_iocbq(ptr noundef %1, ptr noundef nonnull %call23.i) #11
  br label %do.body78

do.body78:                                        ; preds = %nvme_wqe_free_wqeq_exit.i, %do.body27.i, %do.body.i
  tail call void @lpfc_dmp_dbg(ptr noundef %1) #11
  %pcidev99 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %147 = ptrtoint ptr %pcidev99 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pcidev99, align 4
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44
  %brd_no101 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %149 = ptrtoint ptr %brd_no101 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %brd_no101, align 4
  %oxid102 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 11
  %151 = ptrtoint ptr %oxid102 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %oxid102, align 4
  %conv103 = zext i16 %152 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev100, ptr noundef nonnull @.str.25, i32 noundef %150, i32 noundef %conv103) #14
  br label %out_free_buf

if.end115:                                        ; preds = %if.then300.i, %if.else297.i.if.end115_crit_edge, %do.end288.i
  %rsvd2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 12
  %153 = ptrtoint ptr %rsvd2 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %rsvd2, align 8
  %hba_wqidx = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 6
  %154 = ptrtoint ptr %hba_wqidx to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %hba_wqidx, align 2
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 20
  %155 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %dmabuf, ptr %context3, align 8
  %156 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %bpl, ptr %4, align 4
  %157 = ptrtoint ptr %addrLow.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %addrLow.i, align 4
  %159 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %7, align 4
  %160 = ptrtoint ptr %addrHigh.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %addrHigh.i, align 8
  %162 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %9, align 4
  %163 = ptrtoint ptr %rsplen to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %rsplen, align 4
  %conv121 = zext i16 %164 to i32
  %165 = call i32 @llvm.bswap.i32(i32 %conv121)
  %166 = ptrtoint ptr %bpl to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %bpl, align 4
  %wqe_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 27
  %167 = ptrtoint ptr %wqe_cmpl to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %xmt_ls_rsp_cmp, ptr %wqe_cmpl, align 4
  %iocb_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %call23.i, i32 0, i32 26
  %168 = ptrtoint ptr %iocb_cmpl to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %iocb_cmpl, align 8
  %169 = ptrtoint ptr %context2.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %axchg, ptr %context2.i, align 4
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 304
  %170 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %tobool128.not = icmp eq i16 %171, 0
  br i1 %tobool128.not, label %if.end115.if.end134_crit_edge, label %if.then129

if.end115.if.end134_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then129:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %oxid225.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %oxid225.i, align 4
  %174 = ptrtoint ptr %rsplen to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %rsplen, align 4
  %conv133 = zext i16 %175 to i32
  call void @lpfc_debugfs_nvme_trc(ptr noundef %1, ptr noundef nonnull @.str.27, i16 noundef zeroext %173, i16 noundef zeroext 0, i32 noundef %conv133) #11
  br label %if.end134

if.end134:                                        ; preds = %if.then129, %if.end115.if.end134_crit_edge
  %hdwq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 21
  %176 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hdwq, align 8
  %call135 = call i32 @lpfc_sli4_issue_wqe(ptr noundef %1, ptr noundef %177, ptr noundef nonnull %call23.i) #11
  %178 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %context3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp137 = icmp eq i32 %call135, 0
  br i1 %cmp137, label %if.then139, label %do.body141

if.then139:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  %dbuf = getelementptr inbounds %struct.hbq_dmabuf, ptr %3, i32 0, i32 1
  call void @lpfc_in_buf_free(ptr noundef %1, ptr noundef %dbuf) #11
  br label %cleanup

do.body141:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  call void @lpfc_dmp_dbg(ptr noundef %1) #11
  %pcidev162 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %179 = ptrtoint ptr %pcidev162 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pcidev162, align 4
  %dev163 = getelementptr inbounds %struct.pci_dev, ptr %180, i32 0, i32 44
  %brd_no164 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %181 = ptrtoint ptr %brd_no164 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %brd_no164, align 4
  %183 = ptrtoint ptr %oxid225.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %oxid225.i, align 4
  %conv166 = zext i16 %184 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev163, ptr noundef nonnull @.str.29, i32 noundef %182, i32 noundef %conv166, i32 noundef %call135) #14
  %185 = ptrtoint ptr %context1.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %context1.i, align 8
  %call178 = call i32 @lpfc_nlp_put(ptr noundef %186) #11
  br label %out_free_buf

out_free_buf:                                     ; preds = %do.body141, %do.body78
  %rc.0 = phi i32 [ -12, %do.body78 ], [ -6, %do.body141 ]
  %dbuf179 = getelementptr inbounds %struct.hbq_dmabuf, ptr %3, i32 0, i32 1
  call void @lpfc_in_buf_free(ptr noundef %1, ptr noundef %dbuf179) #11
  %sid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 9
  %187 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %sid, align 4
  %oxid180 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 11
  %189 = ptrtoint ptr %oxid180 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %oxid180, align 4
  %call181 = call i32 @lpfc_nvme_unsol_ls_issue_abort(ptr noundef %1, ptr noundef %axchg, i32 noundef %188, i16 noundef zeroext %190)
  br label %cleanup

cleanup:                                          ; preds = %out_free_buf, %if.then139, %do.body27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -114, %do.body27 ], [ %rc.0, %out_free_buf ], [ 0, %if.then139 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bpl) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dmabuf) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli4_issue_wqe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_in_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_nvme_unsol_ls_issue_abort(ptr noundef %phba, ptr noundef %ctxp, i32 noundef %sid, i16 noundef zeroext %xri) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 16
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.238)
  switch i16 %1, label %entry.do.body_crit_edge [
    i16 1, label %land.lhs.true
    i16 3, label %land.lhs.true9
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %entry_cnt = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 13
  %3 = ptrtoint ptr %entry_cnt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %entry_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp3 = icmp eq i16 %4, 1
  br i1 %cmp3, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true9:                                   ; preds = %entry
  %entry_cnt10 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 13
  %5 = ptrtoint ptr %entry_cnt10 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %entry_cnt10, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp12 = icmp eq i16 %6, 2
  br i1 %cmp12, label %land.lhs.true9.if.then_crit_edge, label %land.lhs.true9.do.body_crit_edge

land.lhs.true9.do.body_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true9.if.then_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %land.lhs.true9.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %state, align 2
  %entry_cnt15 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 13
  %8 = ptrtoint ptr %entry_cnt15 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %entry_cnt15, align 8
  %inc = add i16 %9, 1
  store i16 %inc, ptr %entry_cnt15, align 8
  br label %if.end45

do.body:                                          ; preds = %land.lhs.true9.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %12 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brd_no, align 4
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %14 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %oxid, align 4
  %conv25 = zext i16 %15 to i32
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %state, align 2
  %conv27 = zext i16 %17 to i32
  %entry_cnt28 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 13
  %18 = ptrtoint ptr %entry_cnt28 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %entry_cnt28, align 8
  %conv29 = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %13, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29) #14
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %state, align 2
  br label %if.end45

if.end45:                                         ; preds = %do.body, %if.then
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 74
  %21 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool47.not = icmp eq i8 %22, 0
  br i1 %tobool47.not, label %if.end45.if.end52_crit_edge, label %land.lhs.true48

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true48:                                  ; preds = %if.end45
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %23 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %targetport, align 8
  %tobool49.not = icmp eq ptr %24, null
  br i1 %tobool49.not, label %land.lhs.true48.if.end52_crit_edge, label %if.then50

land.lhs.true48.if.end52_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %land.lhs.true48.if.end52_crit_edge, %if.end45.if.end52_crit_edge
  %tgtp.0 = phi ptr [ %26, %if.then50 ], [ null, %land.lhs.true48.if.end52_crit_edge ], [ null, %if.end45.if.end52_crit_edge ]
  %wqeq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 6
  %27 = ptrtoint ptr %wqeq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wqeq, align 8
  %tobool53.not = icmp eq ptr %28, null
  br i1 %tobool53.not, label %if.then54, label %if.end52.if.end95_crit_edge

if.end52.if.end95_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then54:                                        ; preds = %if.end52
  %call = tail call ptr @lpfc_sli_get_iocbq(ptr noundef %phba) #11
  %29 = ptrtoint ptr %wqeq to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call, ptr %wqeq, align 8
  %tobool57.not = icmp eq ptr %call, null
  br i1 %tobool57.not, label %do.body59, label %if.then54.if.end95_crit_edge

if.then54.if.end95_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

do.body59:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev80 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %30 = ptrtoint ptr %pcidev80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcidev80, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %brd_no82 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %32 = ptrtoint ptr %brd_no82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %brd_no82, align 4
  %conv83 = zext i16 %xri to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev81, ptr noundef nonnull @.str.68, i32 noundef %33, i32 noundef %conv83) #14
  tail call void @kfree(ptr noundef %ctxp) #11
  br label %cleanup

if.end95:                                         ; preds = %if.then54.if.end95_crit_edge, %if.end52.if.end95_crit_edge
  %34 = ptrtoint ptr %wqeq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wqeq, align 8
  %call97 = tail call fastcc i32 @lpfc_nvmet_unsol_issue_abort(ptr noundef %phba, ptr noundef %ctxp, i32 noundef %sid, i16 noundef zeroext %xri)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp eq i32 %call97, 0
  br i1 %cmp98, label %if.end95.out_crit_edge, label %do.body103

if.end95.out_crit_edge:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body103:                                       ; preds = %if.end95
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %call107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock) #11
  %wqe_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %wqe_cmpl to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @lpfc_nvmet_xmt_ls_abort_cmp, ptr %wqe_cmpl, align 4
  %iocb_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %35, i32 0, i32 26
  %37 = ptrtoint ptr %iocb_cmpl to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %iocb_cmpl, align 8
  %iocb_flag = getelementptr inbounds %struct.lpfc_iocbq, ptr %35, i32 0, i32 15
  %38 = ptrtoint ptr %iocb_flag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iocb_flag, align 4
  %or = or i32 %39, 4194304
  store i32 %or, ptr %iocb_flag, align 4
  %hdwq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 21
  %40 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdwq, align 8
  %call112 = tail call i32 @lpfc_sli4_issue_wqe(ptr noundef %phba, ptr noundef %41, ptr noundef %35) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call107) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp114 = icmp eq i32 %call112, 0
  br i1 %cmp114, label %if.then116, label %do.body103.out_crit_edge

do.body103.out_crit_edge:                         ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then116:                                       ; preds = %do.body103
  %tobool117.not = icmp eq ptr %tgtp.0, null
  br i1 %tobool117.not, label %if.then116.cleanup_crit_edge, label %if.then118

if.then116.cleanup_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then118:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_abort_unsol = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %tgtp.0, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_unsol, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_unsol, i32 1, i32 3, i32 1) #11
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_unsol, ptr %xmt_abort_unsol, i32 1, ptr elementtype(i32) %xmt_abort_unsol) #11, !srcloc !421
  br label %cleanup

out:                                              ; preds = %do.body103.out_crit_edge, %if.end95.out_crit_edge
  %rc.0 = phi i32 [ %call112, %do.body103.out_crit_edge ], [ 1, %if.end95.out_crit_edge ]
  %tobool121.not = icmp eq ptr %tgtp.0, null
  br i1 %tobool121.not, label %out.if.end123_crit_edge, label %if.then122

out.if.end123_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then122:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_abort_rsp_error = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %tgtp.0, i32 0, i32 35
  %call.i.i230 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp_error, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_rsp_error, i32 1, i32 3, i32 1) #11
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_rsp_error, ptr %xmt_abort_rsp_error, i32 1, ptr elementtype(i32) %xmt_abort_rsp_error) #11, !srcloc !421
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %out.if.end123_crit_edge
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %35, i32 0, i32 19
  %44 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %context2, align 4
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %35, i32 0, i32 20
  %45 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %context3, align 8
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %35) #11
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev145 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %46 = ptrtoint ptr %pcidev145 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcidev145, align 4
  %dev146 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %brd_no147 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %48 = ptrtoint ptr %brd_no147 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brd_no147, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev146, ptr noundef nonnull @.str.71, i32 noundef %49, i32 noundef %rc.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then118, %if.then116.cleanup_crit_edge, %do.body59
  %retval.0 = phi i32 [ 1, %if.end123 ], [ 0, %do.body59 ], [ 0, %if.then118 ], [ 0, %if.then116.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_nvmet_create_targetport(ptr noundef %phba) local_unnamed_addr #2 align 64 {
entry:
  %pinfo = alloca %struct.nvmet_fc_port_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %0 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pport, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pinfo) #11
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %2 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %targetport, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  %cfg_log_verbose.i = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %cfg_log_verbose2.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in.i = select i1 %tobool.not.i, ptr %cfg_log_verbose2.i, ptr %cfg_log_verbose.i
  %4 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %and.i = and i32 %cond.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %5 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %7 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %brd_no.i, align 4
  %nvmet_xri_cnt.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 69
  %9 = ptrtoint ptr %nvmet_xri_cnt.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nvmet_xri_cnt.i, align 8
  %conv.i = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i, ptr noundef nonnull @.str.80, i32 noundef %8, i32 noundef %conv.i) #14
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end
  %11 = ptrtoint ptr %cfg_log_verbose2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg_log_verbose2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not.i = icmp eq i32 %12, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no8.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %13 = ptrtoint ptr %brd_no8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %brd_no8.i, align 4
  %nvmet_xri_cnt10.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 69
  %15 = ptrtoint ptr %nvmet_xri_cnt10.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nvmet_xri_cnt10.i, align 8
  %conv11.i = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.80, i32 noundef %14, i32 noundef %conv11.i) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %if.else.i.if.end12.i_crit_edge, %do.end.i
  %num_possible_cpu.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 114
  %17 = ptrtoint ptr %num_possible_cpu.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_possible_cpu.i, align 8
  %conv16.i = zext i16 %18 to i32
  %cfg_nvmet_mrq.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 112
  %19 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  %mul.i = mul i32 %20, %conv16.i
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i, i32 80) #11
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !422

kcalloc.exit.thread.i:                            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %nvmet_ctx_info542.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 84
  %23 = ptrtoint ptr %nvmet_ctx_info542.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %nvmet_ctx_info542.i, align 8
  br label %lpfc_nvmet_setup_io_context.exit

if.end7.i.i.i:                                    ; preds = %if.end12.i
  %24 = extractvalue { i32, i1 } %21, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #15
  %nvmet_ctx_info.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 84
  %25 = ptrtoint ptr %nvmet_ctx_info.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i.i, ptr %nvmet_ctx_info.i, align 8
  %tobool20.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool20.not.i, label %if.end7.i.i.i.lpfc_nvmet_setup_io_context.exit_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.lpfc_nvmet_setup_io_context.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lpfc_nvmet_setup_io_context.exit

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %call54552.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call54552.i, i32 %26)
  %cmp55553.i = icmp ult i32 %call54552.i, %26
  br i1 %cmp55553.i, label %for.cond.preheader.i.for.cond57.preheader.i_crit_edge, label %for.cond.preheader.i.for.cond71.preheader.i_crit_edge

for.cond.preheader.i.for.cond71.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond71.preheader.i

for.cond.preheader.i.for.cond57.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  br label %for.cond57.preheader.i

for.cond.loopexit.i:                              ; preds = %for.body61.i.for.cond.loopexit.i_crit_edge, %for.cond57.preheader.i.for.cond.loopexit.i_crit_edge
  %call54.i = tail call i32 @cpumask_next(i32 noundef %call54554.i, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp55.i = icmp ult i32 %call54.i, %27
  br i1 %cmp55.i, label %for.cond.loopexit.i.for.cond57.preheader.i_crit_edge, label %for.cond.loopexit.i.for.cond71.preheader.i_crit_edge

for.cond.loopexit.i.for.cond71.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond71.preheader.i

for.cond.loopexit.i.for.cond57.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond57.preheader.i

for.cond57.preheader.i:                           ; preds = %for.cond.loopexit.i.for.cond57.preheader.i_crit_edge, %for.cond.preheader.i.for.cond57.preheader.i_crit_edge
  %call54554.i = phi i32 [ %call54.i, %for.cond.loopexit.i.for.cond57.preheader.i_crit_edge ], [ %call54552.i, %for.cond.preheader.i.for.cond57.preheader.i_crit_edge ]
  %28 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp59550.not.i = icmp eq i32 %29, 0
  br i1 %cmp59550.not.i, label %for.cond57.preheader.i.for.cond.loopexit.i_crit_edge, label %for.cond57.preheader.i.for.body61.i_crit_edge

for.cond57.preheader.i.for.body61.i_crit_edge:    ; preds = %for.cond57.preheader.i
  br label %for.body61.i

for.cond57.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond57.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i

for.cond71.preheader.i:                           ; preds = %for.cond.loopexit.i.for.cond71.preheader.i_crit_edge, %for.cond.preheader.i.for.cond71.preheader.i_crit_edge
  %30 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp73559.not.i = icmp eq i32 %31, 0
  br i1 %cmp73559.not.i, label %for.cond71.preheader.i.for.end100.i_crit_edge, label %for.cond71.preheader.i.for.body75.i_crit_edge

for.cond71.preheader.i.for.body75.i_crit_edge:    ; preds = %for.cond71.preheader.i
  br label %for.body75.i

for.cond71.preheader.i.for.end100.i_crit_edge:    ; preds = %for.cond71.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end100.i

for.body61.i:                                     ; preds = %for.body61.i.for.body61.i_crit_edge, %for.cond57.preheader.i.for.body61.i_crit_edge
  %32 = phi i32 [ %39, %for.body61.i.for.body61.i_crit_edge ], [ %29, %for.cond57.preheader.i.for.body61.i_crit_edge ]
  %j.0551.i = phi i32 [ %inc.i, %for.body61.i.for.body61.i_crit_edge ], [ 0, %for.cond57.preheader.i.for.body61.i_crit_edge ]
  %33 = ptrtoint ptr %nvmet_ctx_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nvmet_ctx_info.i, align 8
  %mul65.i = mul i32 %32, %call54554.i
  %add.i = add i32 %mul65.i, %j.0551.i
  %add.ptr.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %34, i32 %add.i
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %add.ptr.i, ptr %add.ptr.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %add.ptr.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i, ptr %prev.i.i, align 4
  %nvmet_ctx_list_lock.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %34, i32 %add.i, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %nvmet_ctx_list_lock.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @lpfc_nvmet_setup_io_context.__key, i16 noundef signext 3) #11
  %nvmet_ctx_list_cnt.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %34, i32 %add.i, i32 4
  %37 = ptrtoint ptr %nvmet_ctx_list_cnt.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %nvmet_ctx_list_cnt.i, align 4
  %inc.i = add nuw i32 %j.0551.i, 1
  %38 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  %cmp59.i = icmp ult i32 %inc.i, %39
  br i1 %cmp59.i, label %for.body61.i.for.body61.i_crit_edge, label %for.body61.i.for.cond.loopexit.i_crit_edge

for.body61.i.for.cond.loopexit.i_crit_edge:       ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i

for.body61.i.for.body61.i_crit_edge:              ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body61.i

for.body75.i:                                     ; preds = %for.inc98.i.for.body75.i_crit_edge, %for.cond71.preheader.i.for.body75.i_crit_edge
  %j.1560.i = phi i32 [ %inc99.i, %for.inc98.i.for.body75.i_crit_edge ], [ 0, %for.cond71.preheader.i.for.body75.i_crit_edge ]
  %40 = ptrtoint ptr %nvmet_ctx_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nvmet_ctx_info.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i191 = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_present_mask, i32 noundef %42) #11
  %43 = ptrtoint ptr %num_possible_cpu.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_possible_cpu.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp87556.not.i = icmp eq i16 %44, 0
  br i1 %cmp87556.not.i, label %for.body75.i.for.inc98.i_crit_edge, label %for.body89.preheader.i

for.body75.i.for.inc98.i_crit_edge:               ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc98.i

for.body89.preheader.i:                           ; preds = %for.body75.i
  %conv85.i = zext i16 %44 to i32
  %45 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  %mul80.i = mul i32 %46, %call.i.i191
  %add81.i = add i32 %mul80.i, %j.1560.i
  %add.ptr82.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %41, i32 %add81.i
  br label %for.body89.i

for.body89.i:                                     ; preds = %for.body89.i.for.body89.i_crit_edge, %for.body89.preheader.i
  %i.1558.in.i = phi i32 [ %i.1558.i, %for.body89.i.for.body89.i_crit_edge ], [ %conv85.i, %for.body89.preheader.i ]
  %last_infop.0557.i = phi ptr [ %add.ptr95.i, %for.body89.i.for.body89.i_crit_edge ], [ %add.ptr82.i, %for.body89.preheader.i ]
  %i.1558.i = add nsw i32 %i.1558.in.i, -1
  %47 = ptrtoint ptr %nvmet_ctx_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nvmet_ctx_info.i, align 8
  %49 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  %mul93.i = mul i32 %50, %i.1558.i
  %add94.i = add i32 %mul93.i, %j.1560.i
  %add.ptr95.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %48, i32 %add94.i
  %nvmet_ctx_next_cpu.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %48, i32 %add94.i, i32 2
  %51 = ptrtoint ptr %nvmet_ctx_next_cpu.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %last_infop.0557.i, ptr %nvmet_ctx_next_cpu.i, align 4
  %cmp87.i = icmp ugt i32 %i.1558.in.i, 1
  br i1 %cmp87.i, label %for.body89.i.for.body89.i_crit_edge, label %for.body89.i.for.inc98.i_crit_edge

for.body89.i.for.inc98.i_crit_edge:               ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc98.i

for.body89.i.for.body89.i_crit_edge:              ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body89.i

for.inc98.i:                                      ; preds = %for.body89.i.for.inc98.i_crit_edge, %for.body75.i.for.inc98.i_crit_edge
  %inc99.i = add nuw i32 %j.1560.i, 1
  %52 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  %cmp73.i = icmp ult i32 %inc99.i, %53
  br i1 %cmp73.i, label %for.inc98.i.for.body75.i_crit_edge, label %for.inc98.i.for.end100.i_crit_edge

for.inc98.i.for.end100.i_crit_edge:               ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end100.i

for.inc98.i.for.body75.i_crit_edge:               ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body75.i

for.end100.i:                                     ; preds = %for.inc98.i.for.end100.i_crit_edge, %for.cond71.preheader.i.for.end100.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %call.i530.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_present_mask, i32 noundef %54) #11
  %nvmet_xri_cnt104.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 69
  %55 = ptrtoint ptr %nvmet_xri_cnt104.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %nvmet_xri_cnt104.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp106565.not.i = icmp eq i16 %56, 0
  br i1 %cmp106565.not.i, label %for.end100.i.for.cond308.preheader.i_crit_edge, label %for.body108.lr.ph.i

for.end100.i.for.cond308.preheader.i_crit_edge:   ; preds = %for.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond308.preheader.i

for.body108.lr.ph.i:                              ; preds = %for.end100.i
  %sgl_list_lock.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 110
  br label %for.body108.i

for.cond308.preheader.i:                          ; preds = %for.inc305.i.for.cond308.preheader.i_crit_edge, %for.end100.i.for.cond308.preheader.i_crit_edge
  %call309572.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %57 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call309572.i, i32 %57)
  %cmp310573.i = icmp ult i32 %call309572.i, %57
  br i1 %cmp310573.i, label %for.cond313.preheader.lr.ph.i, label %for.cond308.preheader.i.if.end3_crit_edge

for.cond308.preheader.i.if.end3_crit_edge:        ; preds = %for.cond308.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

for.cond313.preheader.lr.ph.i:                    ; preds = %for.cond308.preheader.i
  %pcidev341.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %brd_no343.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  br label %for.cond313.preheader.i

for.body108.i:                                    ; preds = %for.inc305.i.for.body108.i_crit_edge, %for.body108.lr.ph.i
  %cpu.0568.i = phi i32 [ %call.i530.i, %for.body108.lr.ph.i ], [ %cpu.1.i, %for.inc305.i.for.body108.i_crit_edge ]
  %idx.0567.i = phi i32 [ 0, %for.body108.lr.ph.i ], [ %idx.1.i, %for.inc305.i.for.body108.i_crit_edge ]
  %i.2566.i = phi i32 [ 0, %for.body108.lr.ph.i ], [ %inc306.i, %for.inc305.i.for.body108.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 64) #17
  %tobool110.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool110.not.i, label %for.body108.i.lpfc_nvmet_setup_io_context.exit_crit_edge, label %if.end145.i

for.body108.i.lpfc_nvmet_setup_io_context.exit_crit_edge: ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lpfc_nvmet_setup_io_context.exit

if.end145.i:                                      ; preds = %for.body108.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i535.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 272) #17
  %context.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %call7.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i535.i, ptr %context.i, align 8
  %tobool148.not.i = icmp eq ptr %call7.i.i535.i, null
  br i1 %tobool148.not.i, label %if.then149.i, label %if.end183.i

if.then149.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %lpfc_nvmet_setup_io_context.exit

if.end183.i:                                      ; preds = %if.end145.i
  %ctxbuf.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %call7.i.i535.i, i32 0, i32 20
  %61 = ptrtoint ptr %ctxbuf.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i, ptr %ctxbuf.i, align 4
  %state.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %call7.i.i535.i, i32 0, i32 16
  %62 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 255, ptr %state.i, align 2
  %call186.i = tail call ptr @lpfc_sli_get_iocbq(ptr noundef %phba) #11
  %iocbq.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %call7.i.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %iocbq.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call186.i, ptr %iocbq.i, align 4
  %tobool188.not.i = icmp eq ptr %call186.i, null
  br i1 %tobool188.not.i, label %if.then189.i, label %if.end224.i

if.then189.i:                                     ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #13
  %context.i.le220 = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %call7.i.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %context.i.le220 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %context.i.le220, align 8
  tail call void @kfree(ptr noundef %65) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %lpfc_nvmet_setup_io_context.exit

if.end224.i:                                      ; preds = %if.end183.i
  %iocb_flag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call186.i, i32 0, i32 15
  %66 = ptrtoint ptr %iocb_flag.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8388608, ptr %iocb_flag.i, align 4
  %67 = ptrtoint ptr %iocbq.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iocbq.i, align 4
  %wqe227.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %68, i32 0, i32 10
  %69 = call ptr @memset(ptr %wqe227.i, i32 0, i32 64)
  %70 = load ptr, ptr %iocbq.i, align 4
  %context1.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %70, i32 0, i32 18
  %71 = ptrtoint ptr %context1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %context1.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %sgl_list_lock.i) #11
  %72 = ptrtoint ptr %iocbq.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iocbq.i, align 4
  %call231.i = tail call ptr @__lpfc_sli_get_nvmet_sglq(ptr noundef %phba, ptr noundef %73) #11
  %sglq.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %call7.i.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %sglq.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call231.i, ptr %sglq.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %sgl_list_lock.i) #11
  %75 = ptrtoint ptr %sglq.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sglq.i, align 8
  %tobool235.not.i = icmp eq ptr %76, null
  br i1 %tobool235.not.i, label %if.then236.i, label %do.body273.i

if.then236.i:                                     ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #13
  %context.i.le = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %call7.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %iocbq.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %iocbq.i, align 4
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %78) #11
  %79 = ptrtoint ptr %context.i.le to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %context.i.le, align 8
  tail call void @kfree(ptr noundef %80) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %lpfc_nvmet_setup_io_context.exit

do.body273.i:                                     ; preds = %if.end224.i
  %defer_work.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %defer_work.i, i32 noundef 0) #11
  %81 = ptrtoint ptr %defer_work.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -64, ptr %defer_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @lpfc_nvmet_setup_io_context.__key.98, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry277.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %82 = ptrtoint ptr %entry277.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %entry277.i, ptr %entry277.i, align 8
  %prev.i536.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 1
  %83 = ptrtoint ptr %prev.i536.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %entry277.i, ptr %prev.i536.i, align 4
  %func.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %84 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @lpfc_nvmet_fcp_rqst_defer_work, ptr %func.i, align 8
  %85 = ptrtoint ptr %nvmet_ctx_info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %nvmet_ctx_info.i, align 8
  %87 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  %mul284.i = mul i32 %88, %cpu.0568.i
  %add285.i = add i32 %mul284.i, %idx.0567.i
  %add.ptr286.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %86, i32 %add285.i
  %nvmet_ctx_list_lock287.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %86, i32 %add285.i, i32 1
  tail call void @_raw_spin_lock(ptr noundef %nvmet_ctx_list_lock287.i) #11
  %prev.i537.i = getelementptr inbounds %struct.list_head, ptr %add.ptr286.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i537.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i537.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %90, ptr noundef %add.ptr286.i) #11
  br i1 %call.i.i.i, label %if.end.i.i538.i, label %do.body273.i.list_add_tail.exit.i_crit_edge

do.body273.i.list_add_tail.exit.i_crit_edge:      ; preds = %do.body273.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i538.i:                                  ; preds = %do.body273.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %prev.i537.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i.i, ptr %prev.i537.i, align 4
  %92 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr286.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev3.i.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %call7.i.i.i, ptr %90, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i538.i, %do.body273.i.list_add_tail.exit.i_crit_edge
  %nvmet_ctx_list_cnt289.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %86, i32 %add285.i, i32 4
  %95 = ptrtoint ptr %nvmet_ctx_list_cnt289.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %nvmet_ctx_list_cnt289.i, align 4
  %inc290.i = add i16 %96, 1
  store i16 %inc290.i, ptr %nvmet_ctx_list_cnt289.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %nvmet_ctx_list_lock287.i) #11
  %inc292.i = add i32 %idx.0567.i, 1
  %97 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc292.i, i32 %98)
  %cmp294.not.i = icmp ult i32 %inc292.i, %98
  br i1 %cmp294.not.i, label %if.end298.i, label %if.then296.i

if.then296.i:                                     ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %99 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.inc305.sink.split.i

if.end298.i:                                      ; preds = %list_add_tail.exit.i
  %call299.i = tail call i32 @cpumask_next(i32 noundef %cpu.0568.i, ptr noundef nonnull @__cpu_present_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %100 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call299.i, i32 %100)
  %cmp300.i = icmp eq i32 %call299.i, %100
  br i1 %cmp300.i, label %if.end298.i.for.inc305.sink.split.i_crit_edge, label %if.end298.i.for.inc305.i_crit_edge

if.end298.i.for.inc305.i_crit_edge:               ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc305.i

if.end298.i.for.inc305.sink.split.i_crit_edge:    ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc305.sink.split.i

for.inc305.sink.split.i:                          ; preds = %if.end298.i.for.inc305.sink.split.i_crit_edge, %if.then296.i
  %call299.sink.i = phi i32 [ %99, %if.then296.i ], [ %call299.i, %if.end298.i.for.inc305.sink.split.i_crit_edge ]
  %idx.1.ph.i = phi i32 [ 0, %if.then296.i ], [ %inc292.i, %if.end298.i.for.inc305.sink.split.i_crit_edge ]
  %call.i540.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_present_mask, i32 noundef %call299.sink.i) #11
  br label %for.inc305.i

for.inc305.i:                                     ; preds = %for.inc305.sink.split.i, %if.end298.i.for.inc305.i_crit_edge
  %idx.1.i = phi i32 [ %inc292.i, %if.end298.i.for.inc305.i_crit_edge ], [ %idx.1.ph.i, %for.inc305.sink.split.i ]
  %cpu.1.i = phi i32 [ %call299.i, %if.end298.i.for.inc305.i_crit_edge ], [ %call.i540.i, %for.inc305.sink.split.i ]
  %inc306.i = add nuw nsw i32 %i.2566.i, 1
  %101 = ptrtoint ptr %nvmet_xri_cnt104.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %nvmet_xri_cnt104.i, align 8
  %conv105.i = zext i16 %102 to i32
  %cmp106.i = icmp ult i32 %inc306.i, %conv105.i
  br i1 %cmp106.i, label %for.inc305.i.for.body108.i_crit_edge, label %for.inc305.i.for.cond308.preheader.i_crit_edge

for.inc305.i.for.cond308.preheader.i_crit_edge:   ; preds = %for.inc305.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond308.preheader.i

for.inc305.i.for.body108.i_crit_edge:             ; preds = %for.inc305.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body108.i

for.cond308.loopexit.i:                           ; preds = %if.end356.i.for.cond308.loopexit.i_crit_edge, %for.cond313.preheader.i.for.cond308.loopexit.i_crit_edge
  %call309.i = tail call i32 @cpumask_next(i32 noundef %call309574.i, ptr noundef nonnull @__cpu_present_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %103 = load i32, ptr @nr_cpu_ids, align 4
  %cmp310.i = icmp ult i32 %call309.i, %103
  br i1 %cmp310.i, label %for.cond308.loopexit.i.for.cond313.preheader.i_crit_edge, label %for.cond308.loopexit.i.if.end3_crit_edge

for.cond308.loopexit.i.if.end3_crit_edge:         ; preds = %for.cond308.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

for.cond308.loopexit.i.for.cond313.preheader.i_crit_edge: ; preds = %for.cond308.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond313.preheader.i

for.cond313.preheader.i:                          ; preds = %for.cond308.loopexit.i.for.cond313.preheader.i_crit_edge, %for.cond313.preheader.lr.ph.i
  %call309574.i = phi i32 [ %call309572.i, %for.cond313.preheader.lr.ph.i ], [ %call309.i, %for.cond308.loopexit.i.for.cond313.preheader.i_crit_edge ]
  %104 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp315569.not.i = icmp eq i32 %105, 0
  br i1 %cmp315569.not.i, label %for.cond313.preheader.i.for.cond308.loopexit.i_crit_edge, label %for.cond313.preheader.i.for.body317.i_crit_edge

for.cond313.preheader.i.for.body317.i_crit_edge:  ; preds = %for.cond313.preheader.i
  br label %for.body317.i

for.cond313.preheader.i.for.cond308.loopexit.i_crit_edge: ; preds = %for.cond313.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond308.loopexit.i

for.body317.i:                                    ; preds = %if.end356.i.for.body317.i_crit_edge, %for.cond313.preheader.i.for.body317.i_crit_edge
  %106 = phi i32 [ %129, %if.end356.i.for.body317.i_crit_edge ], [ %105, %for.cond313.preheader.i.for.body317.i_crit_edge ]
  %j.2570.i = phi i32 [ %inc360.i, %if.end356.i.for.body317.i_crit_edge ], [ 0, %for.cond313.preheader.i.for.body317.i_crit_edge ]
  %107 = ptrtoint ptr %nvmet_ctx_info.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %nvmet_ctx_info.i, align 8
  %mul321.i = mul i32 %106, %call309574.i
  %add322.i = add i32 %mul321.i, %j.2570.i
  %109 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pport, align 8
  %tobool327.not.i = icmp eq ptr %110, null
  %cfg_log_verbose330.i = getelementptr inbounds %struct.lpfc_vport, ptr %110, i32 0, i32 51
  %cond334.in.i = select i1 %tobool327.not.i, ptr %cfg_log_verbose2.i, ptr %cfg_log_verbose330.i
  %111 = ptrtoint ptr %cond334.in.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %cond334.i = load i32, ptr %cond334.in.i, align 4
  %and335.i = and i32 %cond334.i, 1048584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335.i)
  %tobool336.not.i = icmp eq i32 %and335.i, 0
  br i1 %tobool336.not.i, label %if.else347.i, label %do.end340.i

do.end340.i:                                      ; preds = %for.body317.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %pcidev341.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pcidev341.i, align 4
  %dev342.i = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %114 = ptrtoint ptr %brd_no343.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %brd_no343.i, align 4
  %nvmet_ctx_list_cnt344.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %108, i32 %add322.i, i32 4
  %116 = ptrtoint ptr %nvmet_ctx_list_cnt344.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %nvmet_ctx_list_cnt344.i, align 4
  %conv345.i = zext i16 %117 to i32
  %nvmet_ctx_next_cpu346.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %108, i32 %add322.i, i32 2
  %118 = ptrtoint ptr %nvmet_ctx_next_cpu346.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %nvmet_ctx_next_cpu346.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev342.i, ptr noundef nonnull @.str.101, i32 noundef %115, i32 noundef %call309574.i, i32 noundef %j.2570.i, i32 noundef %conv345.i, ptr noundef %119) #14
  br label %if.end356.i

if.else347.i:                                     ; preds = %for.body317.i
  %120 = ptrtoint ptr %cfg_log_verbose2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cfg_log_verbose2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool349.not.i = icmp eq i32 %121, 0
  br i1 %tobool349.not.i, label %if.then350.i, label %if.else347.i.if.end356.i_crit_edge

if.else347.i.if.end356.i_crit_edge:               ; preds = %if.else347.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end356.i

if.then350.i:                                     ; preds = %if.else347.i
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %brd_no343.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %brd_no343.i, align 4
  %nvmet_ctx_list_cnt352.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %108, i32 %add322.i, i32 4
  %124 = ptrtoint ptr %nvmet_ctx_list_cnt352.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %nvmet_ctx_list_cnt352.i, align 4
  %conv353.i = zext i16 %125 to i32
  %nvmet_ctx_next_cpu354.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %108, i32 %add322.i, i32 2
  %126 = ptrtoint ptr %nvmet_ctx_next_cpu354.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %nvmet_ctx_next_cpu354.i, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.101, i32 noundef %123, i32 noundef %call309574.i, i32 noundef %j.2570.i, i32 noundef %conv353.i, ptr noundef %127) #11
  br label %if.end356.i

if.end356.i:                                      ; preds = %if.then350.i, %if.else347.i.if.end356.i_crit_edge, %do.end340.i
  %inc360.i = add nuw i32 %j.2570.i, 1
  %128 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  %cmp315.i = icmp ult i32 %inc360.i, %129
  br i1 %cmp315.i, label %if.end356.i.for.body317.i_crit_edge, label %if.end356.i.for.cond308.loopexit.i_crit_edge

if.end356.i.for.cond308.loopexit.i_crit_edge:     ; preds = %if.end356.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond308.loopexit.i

if.end356.i.for.body317.i_crit_edge:              ; preds = %if.end356.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body317.i

lpfc_nvmet_setup_io_context.exit:                 ; preds = %if.then236.i, %if.then189.i, %if.then149.i, %for.body108.i.lpfc_nvmet_setup_io_context.exit_crit_edge, %if.end7.i.i.i.lpfc_nvmet_setup_io_context.exit_crit_edge, %kcalloc.exit.thread.i
  %.str.96.sink.i = phi ptr [ @.str.96, %if.then236.i ], [ @.str.93, %if.then189.i ], [ @.str.90, %if.then149.i ], [ @.str.83, %kcalloc.exit.thread.i ], [ @.str.83, %if.end7.i.i.i.lpfc_nvmet_setup_io_context.exit_crit_edge ], [ @.str.87, %for.body108.i.lpfc_nvmet_setup_io_context.exit_crit_edge ]
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev260.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %130 = ptrtoint ptr %pcidev260.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pcidev260.i, align 4
  %dev261.i = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  %brd_no262.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %132 = ptrtoint ptr %brd_no262.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %brd_no262.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev261.i, ptr noundef nonnull %.str.96.sink.i, i32 noundef %133) #14
  br label %cleanup

if.end3:                                          ; preds = %for.cond308.loopexit.i.if.end3_crit_edge, %for.cond308.preheader.i.if.end3_crit_edge
  %134 = getelementptr inbounds i8, ptr %pinfo, i32 16
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 0, ptr %134, align 8
  %fc_nodename = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 31
  %136 = ptrtoint ptr %fc_nodename to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %fc_nodename, align 1
  %138 = ptrtoint ptr %pinfo to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %pinfo, align 8
  %fc_portname = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 32
  %139 = ptrtoint ptr %fc_portname to i32
  call void @__asan_loadN_noabort(i32 %139, i32 8)
  %140 = load i64, ptr %fc_portname, align 1
  %port_name = getelementptr inbounds %struct.nvmet_fc_port_info, ptr %pinfo, i32 0, i32 1
  %141 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %port_name, align 8
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 19
  %142 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %fc_myDID, align 8
  %port_id = getelementptr inbounds %struct.nvmet_fc_port_info, ptr %pinfo, i32 0, i32 2
  %144 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %port_id, align 8
  %cfg_nvme_seg_cnt = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 118
  %145 = ptrtoint ptr %cfg_nvme_seg_cnt to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cfg_nvme_seg_cnt, align 4
  %147 = trunc i32 %146 to i16
  %conv = add i16 %147, 1
  store i16 %conv, ptr getelementptr inbounds (%struct.nvmet_fc_target_template, ptr @lpfc_tgttemplate, i32 0, i32 11), align 4
  %cfg_hdw_queue = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 106
  %148 = ptrtoint ptr %cfg_hdw_queue to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cfg_hdw_queue, align 4
  store i32 %149, ptr getelementptr inbounds (%struct.nvmet_fc_target_template, ptr @lpfc_tgttemplate, i32 0, i32 10), align 8
  store i32 1, ptr getelementptr inbounds (%struct.nvmet_fc_target_template, ptr @lpfc_tgttemplate, i32 0, i32 14), align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %150 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %151, i32 0, i32 44
  %call9 = call i32 @nvmet_fc_register_targetport(ptr noundef nonnull %pinfo, ptr noundef nonnull @lpfc_tgttemplate, ptr noundef %dev, ptr noundef %targetport) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else38, label %do.body

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %152 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pcidev, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %154 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %brd_no, align 4
  %156 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %port_name, align 8
  %158 = ptrtoint ptr %pinfo to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %pinfo, align 8
  %160 = load i16, ptr getelementptr inbounds (%struct.nvmet_fc_target_template, ptr @lpfc_tgttemplate, i32 0, i32 11), align 4
  %conv25 = zext i16 %160 to i32
  %161 = load i32, ptr getelementptr inbounds (%struct.nvmet_fc_target_template, ptr @lpfc_tgttemplate, i32 0, i32 10), align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev22, ptr noundef nonnull @.str.31, i32 noundef %155, i32 noundef %call9, i64 noundef %157, i64 noundef %159, i32 noundef %conv25, i32 noundef %161) #14
  %162 = ptrtoint ptr %targetport to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %targetport, align 8
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 74
  %163 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %nvmet_support, align 1
  call fastcc void @lpfc_nvmet_cleanup_io_context(ptr noundef %phba)
  br label %cleanup

if.else38:                                        ; preds = %if.end3
  %164 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %private, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %phba, ptr %167, align 4
  %169 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pport, align 8
  %tobool44.not = icmp eq ptr %170, null
  %cfg_log_verbose47 = getelementptr inbounds %struct.lpfc_vport, ptr %170, i32 0, i32 51
  %cond51.in = select i1 %tobool44.not, ptr %cfg_log_verbose2.i, ptr %cfg_log_verbose47
  %171 = ptrtoint ptr %cond51.in to i32
  call void @__asan_load4_noabort(i32 %171)
  %cond51 = load i32, ptr %cond51.in, align 4
  %and52 = and i32 %cond51, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else65, label %do.end57

do.end57:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pcidev, align 4
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  %brd_no60 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %174 = ptrtoint ptr %brd_no60 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %brd_no60, align 4
  %176 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %targetport, align 8
  %178 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %port_name, align 8
  %180 = ptrtoint ptr %pinfo to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %pinfo, align 8
  %182 = load i16, ptr getelementptr inbounds (%struct.nvmet_fc_target_template, ptr @lpfc_tgttemplate, i32 0, i32 11), align 4
  %conv64 = zext i16 %182 to i32
  %183 = load i32, ptr getelementptr inbounds (%struct.nvmet_fc_target_template, ptr @lpfc_tgttemplate, i32 0, i32 10), align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev59, ptr noundef nonnull @.str.34, i32 noundef %175, ptr noundef %177, ptr noundef %167, i64 noundef %179, i64 noundef %181, i32 noundef %conv64, i32 noundef %183) #14
  br label %if.end75

if.else65:                                        ; preds = %if.else38
  %184 = ptrtoint ptr %cfg_log_verbose2.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cfg_log_verbose2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool67.not = icmp eq i32 %185, 0
  br i1 %tobool67.not, label %if.then68, label %if.else65.if.end75_crit_edge

if.else65.if.end75_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then68:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no69 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %186 = ptrtoint ptr %brd_no69 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %brd_no69, align 4
  %188 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %targetport, align 8
  %190 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %port_name, align 8
  %192 = ptrtoint ptr %pinfo to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %pinfo, align 8
  %194 = load i16, ptr getelementptr inbounds (%struct.nvmet_fc_target_template, ptr @lpfc_tgttemplate, i32 0, i32 11), align 4
  %conv73 = zext i16 %194 to i32
  %195 = load i32, ptr getelementptr inbounds (%struct.nvmet_fc_target_template, ptr @lpfc_tgttemplate, i32 0, i32 10), align 8
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.34, i32 noundef %187, ptr noundef %189, ptr noundef %167, i64 noundef %191, i64 noundef %193, i32 noundef %conv73, i32 noundef %195) #11
  br label %if.end75

if.end75:                                         ; preds = %if.then68, %if.else65.if.end75_crit_edge, %do.end57
  %rcv_ls_req_in = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %rcv_ls_req_in, i32 noundef 4) #11
  %196 = ptrtoint ptr %rcv_ls_req_in to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile i32 0, ptr %rcv_ls_req_in, align 4
  %rcv_ls_req_out = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 4
  %call.i.i157 = call zeroext i1 @__kasan_check_write(ptr noundef %rcv_ls_req_out, i32 noundef 4) #11
  %197 = ptrtoint ptr %rcv_ls_req_out to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile i32 0, ptr %rcv_ls_req_out, align 4
  %rcv_ls_req_drop = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 5
  %call.i.i158 = call zeroext i1 @__kasan_check_write(ptr noundef %rcv_ls_req_drop, i32 noundef 4) #11
  %198 = ptrtoint ptr %rcv_ls_req_drop to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile i32 0, ptr %rcv_ls_req_drop, align 4
  %xmt_ls_abort = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 6
  %call.i.i159 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_abort, i32 noundef 4) #11
  %199 = ptrtoint ptr %xmt_ls_abort to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile i32 0, ptr %xmt_ls_abort, align 4
  %xmt_ls_abort_cmpl = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 7
  %call.i.i160 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_abort_cmpl, i32 noundef 4) #11
  %200 = ptrtoint ptr %xmt_ls_abort_cmpl to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile i32 0, ptr %xmt_ls_abort_cmpl, align 4
  %xmt_ls_rsp = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 8
  %call.i.i161 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_rsp, i32 noundef 4) #11
  %201 = ptrtoint ptr %xmt_ls_rsp to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile i32 0, ptr %xmt_ls_rsp, align 4
  %xmt_ls_drop = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 9
  %call.i.i162 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_drop, i32 noundef 4) #11
  %202 = ptrtoint ptr %xmt_ls_drop to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile i32 0, ptr %xmt_ls_drop, align 4
  %xmt_ls_rsp_error = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 10
  %call.i.i163 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_rsp_error, i32 noundef 4) #11
  %203 = ptrtoint ptr %xmt_ls_rsp_error to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile i32 0, ptr %xmt_ls_rsp_error, align 4
  %xmt_ls_rsp_xb_set = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 12
  %call.i.i164 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_rsp_xb_set, i32 noundef 4) #11
  %204 = ptrtoint ptr %xmt_ls_rsp_xb_set to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile i32 0, ptr %xmt_ls_rsp_xb_set, align 4
  %xmt_ls_rsp_aborted = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 11
  %call.i.i165 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_rsp_aborted, i32 noundef 4) #11
  %205 = ptrtoint ptr %xmt_ls_rsp_aborted to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile i32 0, ptr %xmt_ls_rsp_aborted, align 4
  %xmt_ls_rsp_cmpl = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 13
  %call.i.i166 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_rsp_cmpl, i32 noundef 4) #11
  %206 = ptrtoint ptr %xmt_ls_rsp_cmpl to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile i32 0, ptr %xmt_ls_rsp_cmpl, align 4
  %rcv_fcp_cmd_in = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 14
  %call.i.i167 = call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_in, i32 noundef 4) #11
  %207 = ptrtoint ptr %rcv_fcp_cmd_in to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile i32 0, ptr %rcv_fcp_cmd_in, align 4
  %rcv_fcp_cmd_out = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 15
  %call.i.i168 = call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_out, i32 noundef 4) #11
  %208 = ptrtoint ptr %rcv_fcp_cmd_out to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile i32 0, ptr %rcv_fcp_cmd_out, align 4
  %rcv_fcp_cmd_drop = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 16
  %call.i.i169 = call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_drop, i32 noundef 4) #11
  %209 = ptrtoint ptr %rcv_fcp_cmd_drop to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile i32 0, ptr %rcv_fcp_cmd_drop, align 4
  %xmt_fcp_drop = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 19
  %call.i.i170 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_drop, i32 noundef 4) #11
  %210 = ptrtoint ptr %xmt_fcp_drop to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile i32 0, ptr %xmt_fcp_drop, align 4
  %xmt_fcp_read_rsp = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 20
  %call.i.i171 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_read_rsp, i32 noundef 4) #11
  %211 = ptrtoint ptr %xmt_fcp_read_rsp to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile i32 0, ptr %xmt_fcp_read_rsp, align 4
  %xmt_fcp_read = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 21
  %call.i.i172 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_read, i32 noundef 4) #11
  %212 = ptrtoint ptr %xmt_fcp_read to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile i32 0, ptr %xmt_fcp_read, align 4
  %xmt_fcp_write = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 22
  %call.i.i173 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_write, i32 noundef 4) #11
  %213 = ptrtoint ptr %xmt_fcp_write to i32
  call void @__asan_store4_noabort(i32 %213)
  store volatile i32 0, ptr %xmt_fcp_write, align 4
  %xmt_fcp_rsp = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 23
  %call.i.i174 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp, i32 noundef 4) #11
  %214 = ptrtoint ptr %xmt_fcp_rsp to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile i32 0, ptr %xmt_fcp_rsp, align 4
  %xmt_fcp_release = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 18
  %call.i.i175 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_release, i32 noundef 4) #11
  %215 = ptrtoint ptr %xmt_fcp_release to i32
  call void @__asan_store4_noabort(i32 %215)
  store volatile i32 0, ptr %xmt_fcp_release, align 4
  %xmt_fcp_rsp_cmpl = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 25
  %call.i.i176 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp_cmpl, i32 noundef 4) #11
  %216 = ptrtoint ptr %xmt_fcp_rsp_cmpl to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile i32 0, ptr %xmt_fcp_rsp_cmpl, align 4
  %xmt_fcp_rsp_error = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 26
  %call.i.i177 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp_error, i32 noundef 4) #11
  %217 = ptrtoint ptr %xmt_fcp_rsp_error to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile i32 0, ptr %xmt_fcp_rsp_error, align 4
  %xmt_fcp_rsp_xb_set = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 24
  %call.i.i178 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp_xb_set, i32 noundef 4) #11
  %218 = ptrtoint ptr %xmt_fcp_rsp_xb_set to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile i32 0, ptr %xmt_fcp_rsp_xb_set, align 4
  %xmt_fcp_rsp_aborted = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 27
  %call.i.i179 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp_aborted, i32 noundef 4) #11
  %219 = ptrtoint ptr %xmt_fcp_rsp_aborted to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile i32 0, ptr %xmt_fcp_rsp_aborted, align 4
  %xmt_fcp_rsp_drop = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 28
  %call.i.i180 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp_drop, i32 noundef 4) #11
  %220 = ptrtoint ptr %xmt_fcp_rsp_drop to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile i32 0, ptr %xmt_fcp_rsp_drop, align 4
  %xmt_fcp_xri_abort_cqe = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 29
  %call.i.i181 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_xri_abort_cqe, i32 noundef 4) #11
  %221 = ptrtoint ptr %xmt_fcp_xri_abort_cqe to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile i32 0, ptr %xmt_fcp_xri_abort_cqe, align 4
  %xmt_fcp_abort = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 30
  %call.i.i182 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_abort, i32 noundef 4) #11
  %222 = ptrtoint ptr %xmt_fcp_abort to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile i32 0, ptr %xmt_fcp_abort, align 4
  %xmt_fcp_abort_cmpl = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 31
  %call.i.i183 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_abort_cmpl, i32 noundef 4) #11
  %223 = ptrtoint ptr %xmt_fcp_abort_cmpl to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile i32 0, ptr %xmt_fcp_abort_cmpl, align 4
  %xmt_abort_unsol = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 33
  %call.i.i184 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_unsol, i32 noundef 4) #11
  %224 = ptrtoint ptr %xmt_abort_unsol to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile i32 0, ptr %xmt_abort_unsol, align 4
  %xmt_abort_sol = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 32
  %call.i.i185 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_sol, i32 noundef 4) #11
  %225 = ptrtoint ptr %xmt_abort_sol to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile i32 0, ptr %xmt_abort_sol, align 4
  %xmt_abort_rsp = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 34
  %call.i.i186 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp, i32 noundef 4) #11
  %226 = ptrtoint ptr %xmt_abort_rsp to i32
  call void @__asan_store4_noabort(i32 %226)
  store volatile i32 0, ptr %xmt_abort_rsp, align 4
  %xmt_abort_rsp_error = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 35
  %call.i.i187 = call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp_error, i32 noundef 4) #11
  %227 = ptrtoint ptr %xmt_abort_rsp_error to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile i32 0, ptr %xmt_abort_rsp_error, align 4
  %defer_ctx = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 36
  %call.i.i188 = call zeroext i1 @__kasan_check_write(ptr noundef %defer_ctx, i32 noundef 4) #11
  %228 = ptrtoint ptr %defer_ctx to i32
  call void @__asan_store4_noabort(i32 %228)
  store volatile i32 0, ptr %defer_ctx, align 4
  %defer_fod = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 37
  %call.i.i189 = call zeroext i1 @__kasan_check_write(ptr noundef %defer_fod, i32 noundef 4) #11
  %229 = ptrtoint ptr %defer_fod to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile i32 0, ptr %defer_fod, align 4
  %defer_wqfull = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %167, i32 0, i32 38
  %call.i.i190 = call zeroext i1 @__kasan_check_write(ptr noundef %defer_wqfull, i32 noundef 4) #11
  %230 = ptrtoint ptr %defer_wqfull to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile i32 0, ptr %defer_wqfull, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %do.body, %lpfc_nvmet_setup_io_context.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %lpfc_nvmet_setup_io_context.exit ], [ 0, %if.end75 ], [ %call9, %do.body ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pinfo) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_fc_register_targetport(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_nvmet_cleanup_io_context(ptr noundef %phba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nvmet_ctx_info = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 84
  %0 = ptrtoint ptr %nvmet_ctx_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvmet_ctx_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cfg_nvmet_mrq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 112
  %2 = ptrtoint ptr %cfg_nvmet_mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg_nvmet_mrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %for.cond.preheader.for.end7_crit_edge, label %for.cond1.preheader.lr.ph

for.cond.preheader.for.end7_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end7

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %abts_nvmet_buf_list_lock.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 79
  %hbalock.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %sgl_list_lock.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 110
  %lpfc_nvmet_sgl_list.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 78
  %prev.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 78, i32 1
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.029 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc, %for.inc.for.cond1.preheader_crit_edge ]
  %call25 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call25, i32 %4)
  %cmp226 = icmp ult i32 %call25, %4
  br i1 %cmp226, label %for.cond1.preheader.for.body3_crit_edge, label %for.cond1.preheader.for.inc_crit_edge

for.cond1.preheader.for.inc_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.body3:                                        ; preds = %__lpfc_nvmet_clean_io_for_cpu.exit.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %call27 = phi i32 [ %call, %__lpfc_nvmet_clean_io_for_cpu.exit.for.body3_crit_edge ], [ %call25, %for.cond1.preheader.for.body3_crit_edge ]
  %5 = ptrtoint ptr %nvmet_ctx_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nvmet_ctx_info, align 8
  %7 = ptrtoint ptr %cfg_nvmet_mrq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfg_nvmet_mrq, align 4
  %mul = mul i32 %8, %call27
  %add = add i32 %mul, %i.029
  %add.ptr = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %6, i32 %add
  %nvmet_ctx_list_lock.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %6, i32 %add, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %nvmet_ctx_list_lock.i) #11
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %cmp12.not55.i = icmp eq ptr %10, %add.ptr
  br i1 %cmp12.not55.i, label %for.body3.__lpfc_nvmet_clean_io_for_cpu.exit_crit_edge, label %for.body3.for.body.i_crit_edge

for.body3.for.body.i_crit_edge:                   ; preds = %for.body3
  br label %for.body.i

for.body3.__lpfc_nvmet_clean_io_for_cpu.exit_crit_edge: ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpfc_nvmet_clean_io_for_cpu.exit

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body3.for.body.i_crit_edge
  %ctx_buf.056.i = phi ptr [ %next_ctx_buf.0.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ %10, %for.body3.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %ctx_buf.056.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %next_ctx_buf.0.i = load ptr, ptr %ctx_buf.056.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %abts_nvmet_buf_list_lock.i) #11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ctx_buf.056.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ctx_buf.056.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %ctx_buf.056.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx_buf.056.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %18 = ptrtoint ptr %ctx_buf.056.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %ctx_buf.056.i, ptr %ctx_buf.056.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %ctx_buf.056.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ctx_buf.056.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %abts_nvmet_buf_list_lock.i) #11
  tail call void @_raw_spin_lock(ptr noundef %hbalock.i) #11
  %sglq.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %ctx_buf.056.i, i32 0, i32 3
  %20 = ptrtoint ptr %sglq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sglq.i, align 4
  %sli4_lxritag.i = getelementptr inbounds %struct.lpfc_sglq, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %sli4_lxritag.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sli4_lxritag.i, align 2
  %call17.i = tail call ptr @__lpfc_clear_active_sglq(ptr noundef %phba, i16 noundef zeroext %23) #11
  tail call void @_raw_spin_unlock(ptr noundef %hbalock.i) #11
  %24 = ptrtoint ptr %sglq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sglq.i, align 4
  %state.i = getelementptr inbounds %struct.lpfc_sglq, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %state.i, align 4
  %27 = load ptr, ptr %sglq.i, align 4
  %ndlp.i = getelementptr inbounds %struct.lpfc_sglq, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ndlp.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ndlp.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %sgl_list_lock.i) #11
  %29 = ptrtoint ptr %sglq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sglq.i, align 4
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %call.i.i53.i = tail call zeroext i1 @__list_add_valid(ptr noundef %30, ptr noundef %32, ptr noundef %lpfc_nvmet_sgl_list.i) #11
  br i1 %call.i.i53.i, label %if.end.i.i54.i, label %list_del_init.exit.i.list_add_tail.exit.i_crit_edge

list_del_init.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i54.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %lpfc_nvmet_sgl_list.i, ptr %30, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %30, ptr %32, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i54.i, %list_del_init.exit.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sgl_list_lock.i) #11
  %iocbq.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %ctx_buf.056.i, i32 0, i32 2
  %37 = ptrtoint ptr %iocbq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iocbq.i, align 4
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %38) #11
  %context.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %ctx_buf.056.i, i32 0, i32 1
  %39 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %context.i, align 4
  tail call void @kfree(ptr noundef %40) #11
  %cmp12.not.i = icmp eq ptr %next_ctx_buf.0.i, %add.ptr
  br i1 %cmp12.not.i, label %list_add_tail.exit.i.__lpfc_nvmet_clean_io_for_cpu.exit_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_add_tail.exit.i.__lpfc_nvmet_clean_io_for_cpu.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpfc_nvmet_clean_io_for_cpu.exit

__lpfc_nvmet_clean_io_for_cpu.exit:               ; preds = %list_add_tail.exit.i.__lpfc_nvmet_clean_io_for_cpu.exit_crit_edge, %for.body3.__lpfc_nvmet_clean_io_for_cpu.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %nvmet_ctx_list_lock.i, i32 noundef %call2.i) #11
  %call = tail call i32 @cpumask_next(i32 noundef %call27, ptr noundef nonnull @__cpu_present_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call, %41
  br i1 %cmp2, label %__lpfc_nvmet_clean_io_for_cpu.exit.for.body3_crit_edge, label %__lpfc_nvmet_clean_io_for_cpu.exit.for.inc_crit_edge

__lpfc_nvmet_clean_io_for_cpu.exit.for.inc_crit_edge: ; preds = %__lpfc_nvmet_clean_io_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

__lpfc_nvmet_clean_io_for_cpu.exit.for.body3_crit_edge: ; preds = %__lpfc_nvmet_clean_io_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3

for.inc:                                          ; preds = %__lpfc_nvmet_clean_io_for_cpu.exit.for.inc_crit_edge, %for.cond1.preheader.for.inc_crit_edge
  %inc = add nuw i32 %i.029, 1
  %42 = ptrtoint ptr %cfg_nvmet_mrq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cfg_nvmet_mrq, align 4
  %cmp = icmp ult i32 %inc, %43
  br i1 %cmp, label %for.inc.for.cond1.preheader_crit_edge, label %for.inc.for.end7_crit_edge

for.inc.for.end7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end7

for.inc.for.cond1.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

for.end7:                                         ; preds = %for.inc.for.end7_crit_edge, %for.cond.preheader.for.end7_crit_edge
  %44 = ptrtoint ptr %nvmet_ctx_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nvmet_ctx_info, align 8
  tail call void @kfree(ptr noundef %45) #11
  %46 = ptrtoint ptr %nvmet_ctx_info to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %nvmet_ctx_info, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_nvmet_update_targetport(ptr nocapture noundef readonly %phba) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %0 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pport, align 8
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %2 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %targetport, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %7, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vpi, align 4
  %conv = zext i16 %13 to i32
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fc_myDID, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %11, i32 noundef %conv, ptr noundef nonnull %3, i32 noundef %15) #14
  br label %do.end20

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.do.end20_crit_edge

if.else.do.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %brd_no12 = getelementptr inbounds %struct.lpfc_hba, ptr %17, i32 0, i32 197
  %18 = ptrtoint ptr %brd_no12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brd_no12, align 4
  %vpi13 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %vpi13 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vpi13, align 4
  %conv14 = zext i16 %21 to i32
  %fc_myDID16 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %fc_myDID16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fc_myDID16, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %17, ptr noundef nonnull @.str.36, i32 noundef %19, i32 noundef %conv14, ptr noundef nonnull %3, i32 noundef %23) #11
  br label %do.end20

do.end20:                                         ; preds = %if.then9, %if.else.do.end20_crit_edge, %do.end
  %fc_myDID21 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %fc_myDID21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fc_myDID21, align 8
  %26 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %targetport, align 8
  %port_id = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %port_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_sli4_nvmet_xri_aborted(ptr noundef %phba, ptr noundef %axri) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %word2 = getelementptr inbounds %struct.sli4_wcqe_xri_aborted, ptr %axri, i32 0, i32 2
  %0 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %word2, align 4
  %conv = trunc i32 %1 to i16
  %shr2 = lshr i32 %1, 16
  %conv4 = trunc i32 %shr2 to i16
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %2 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pport, align 8
  %tobool.not = icmp eq ptr %3, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 51
  %cfg_log_verbose6 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool.not, ptr %cfg_log_verbose6, ptr %cfg_log_verbose
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load i32, ptr %cond.in, align 4
  %and7 = and i32 %cond, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %5 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %7 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %brd_no, align 4
  %conv10 = and i32 %1, 65535
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %8, i32 noundef %conv10, i32 noundef %shr2) #14
  br label %if.end18

if.else:                                          ; preds = %entry
  %9 = ptrtoint ptr %cfg_log_verbose6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cfg_log_verbose6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %if.then14, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no15 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %11 = ptrtoint ptr %brd_no15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brd_no15, align 4
  %conv16 = and i32 %1, 65535
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.38, i32 noundef %12, i32 noundef %conv16, i32 noundef %shr2) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.else.if.end18_crit_edge, %do.end
  %cfg_enable_fc4_type = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 140
  %13 = ptrtoint ptr %cfg_enable_fc4_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfg_enable_fc4_type, align 4
  %and21 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end18.cleanup_crit_edge, label %if.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %15 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %targetport, align 8
  %tobool25.not = icmp eq ptr %16, null
  br i1 %tobool25.not, label %if.end24.do.body30_crit_edge, label %if.then26

if.end24.do.body30_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 8
  %xmt_fcp_xri_abort_cqe = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %18, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_xri_abort_cqe, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_xri_abort_cqe, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_xri_abort_cqe, ptr %xmt_fcp_xri_abort_cqe, i32 1, ptr elementtype(i32) %xmt_fcp_xri_abort_cqe) #11, !srcloc !421
  br label %do.body30

do.body30:                                        ; preds = %if.then26, %if.end24.do.body30_crit_edge
  %abts_nvmet_buf_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 79
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %abts_nvmet_buf_list_lock) #11
  %lpfc_abts_nvmet_ctx_list = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 80
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body30
  %.pn.in.in = phi ptr [ %lpfc_abts_nvmet_ctx_list, %do.body30 ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp46.not = icmp eq ptr %.pn.in, %lpfc_abts_nvmet_ctx_list
  br i1 %cmp46.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ctxbuf = getelementptr i8, ptr %.pn.in, i32 124
  %21 = ptrtoint ptr %ctxbuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctxbuf, align 4
  %sglq = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %sglq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sglq, align 4
  %sli4_xritag = getelementptr inbounds %struct.lpfc_sglq, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %sli4_xritag to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sli4_xritag, align 4
  %cmp50.not = icmp eq i16 %26, %conv
  br i1 %cmp50.not, label %if.end53, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end53:                                         ; preds = %for.body
  %ctxbuf.le = getelementptr i8, ptr %.pn.in, i32 124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %abts_nvmet_buf_list_lock, i32 noundef %call32) #11
  %ctxlock = getelementptr i8, ptr %.pn.in, i32 48
  %call64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  %flag = getelementptr i8, ptr %.pn.in, i32 112
  %27 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flag, align 8
  %29 = and i16 %28, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %29)
  %30 = icmp eq i16 %29, 8
  br i1 %30, label %if.then76, label %if.end53.if.end82_crit_edge

if.end53.if.end82_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then76:                                        ; preds = %if.end53
  tail call void @_raw_spin_lock(ptr noundef %abts_nvmet_buf_list_lock) #11
  %call.i.i341 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #11
  br i1 %call.i.i341, label %if.end.i.i, label %if.then76.list_del_init.exit_crit_edge

if.then76.list_del_init.exit_crit_edge:           ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then76.list_del_init.exit_crit_edge
  %37 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %.pn.in, ptr %.pn.in, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %.pn.in, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %abts_nvmet_buf_list_lock) #11
  br label %if.end82

if.end82:                                         ; preds = %list_del_init.exit, %if.end53.if.end82_crit_edge
  %39 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flag, align 8
  %41 = and i16 %40, -5
  store i16 %41, ptr %flag, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call64) #11
  %active_rrq_list = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 220
  %42 = ptrtoint ptr %active_rrq_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %active_rrq_list, align 4
  %cmp.i.not = icmp eq ptr %43, %active_rrq_list
  %44 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pport, align 8
  %sid = getelementptr i8, ptr %.pn.in, i32 92
  %46 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sid, align 4
  %call90 = tail call ptr @lpfc_findnode_did(ptr noundef %45, i32 noundef %47) #11
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.end82.do.body105_crit_edge, label %land.lhs.true92

if.end82.do.body105_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body105

land.lhs.true92:                                  ; preds = %if.end82
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %call90, i32 0, i32 11
  %48 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nlp_state, align 2
  %50 = and i16 %49, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %50)
  %switch = icmp eq i16 %50, 6
  br i1 %switch, label %if.then100, label %land.lhs.true92.do.body105_crit_edge

land.lhs.true92.do.body105_crit_edge:             ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body105

if.then100:                                       ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %ctxbuf.le to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctxbuf.le, align 4
  %sglq102 = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %sglq102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sglq102, align 4
  %sli4_lxritag = getelementptr inbounds %struct.lpfc_sglq, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %sli4_lxritag to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sli4_lxritag, align 2
  %call103 = tail call i32 @lpfc_set_rrq_active(ptr noundef %phba, ptr noundef nonnull %call90, i16 noundef zeroext %56, i16 noundef zeroext %conv4, i16 noundef zeroext 1) #11
  tail call void @lpfc_sli4_abts_err_handler(ptr noundef %phba, ptr noundef nonnull %call90, ptr noundef %axri) #11
  br label %do.body105

do.body105:                                       ; preds = %if.then100, %land.lhs.true92.do.body105_crit_edge, %if.end82.do.body105_crit_edge
  %57 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pport, align 8
  %tobool108.not = icmp eq ptr %58, null
  %cfg_log_verbose111 = getelementptr inbounds %struct.lpfc_vport, ptr %58, i32 0, i32 51
  %cond115.in = select i1 %tobool108.not, ptr %cfg_log_verbose6, ptr %cfg_log_verbose111
  %59 = ptrtoint ptr %cond115.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %cond115 = load i32, ptr %cond115.in, align 4
  %and116 = and i32 %cond115, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else130, label %do.end121

do.end121:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev122 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %60 = ptrtoint ptr %pcidev122 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcidev122, align 4
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %brd_no124 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %62 = ptrtoint ptr %brd_no124 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %brd_no124, align 4
  %oxid = getelementptr i8, ptr %.pn.in, i32 100
  %64 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %oxid, align 4
  %conv125 = zext i16 %65 to i32
  %66 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %flag, align 8
  %conv127 = zext i16 %67 to i32
  %conv129 = zext i1 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev123, ptr noundef nonnull @.str.41, i32 noundef %63, i32 noundef %conv125, i32 noundef %conv127, i32 noundef %conv129) #14
  br label %if.end142

if.else130:                                       ; preds = %do.body105
  %68 = ptrtoint ptr %cfg_log_verbose6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cfg_log_verbose6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool132.not = icmp eq i32 %69, 0
  br i1 %tobool132.not, label %if.then133, label %if.else130.if.end142_crit_edge

if.else130.if.end142_crit_edge:                   ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

if.then133:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no134 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %70 = ptrtoint ptr %brd_no134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %brd_no134, align 4
  %oxid135 = getelementptr i8, ptr %.pn.in, i32 100
  %72 = ptrtoint ptr %oxid135 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %oxid135, align 4
  %conv136 = zext i16 %73 to i32
  %74 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %flag, align 8
  %conv138 = zext i16 %75 to i32
  %conv140 = zext i1 %30 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.41, i32 noundef %71, i32 noundef %conv136, i32 noundef %conv138, i32 noundef %conv140) #11
  br label %if.end142

if.end142:                                        ; preds = %if.then133, %if.else130.if.end142_crit_edge, %do.end121
  br i1 %30, label %if.then146, label %if.end142.if.end148_crit_edge

if.end142.if.end148_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %ctxbuf.le to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctxbuf.le, align 4
  tail call void @lpfc_nvmet_ctxbuf_post(ptr noundef %phba, ptr noundef %77)
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end142.if.end148_crit_edge
  br i1 %cmp.i.not, label %if.then150, label %if.end148.cleanup_crit_edge

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then150:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  %data_flags.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 173
  tail call void @_set_bit(i32 noundef 0, ptr noundef %data_flags.i) #11
  %work_waitq.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 171
  tail call void @__wake_up(ptr noundef %work_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %abts_nvmet_buf_list_lock, i32 noundef %call32) #11
  %t_active_list_lock.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 81
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %t_active_list_lock.i) #11
  %t_active_ctx_list.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 82
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.end
  %.pn.in.i = phi ptr [ %t_active_ctx_list.i, %for.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %78 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp9.not.i = icmp eq ptr %.pn.i, %t_active_ctx_list.i
  br i1 %cmp9.not.i, label %lpfc_nvmet_get_ctx_for_xri.exit.thread, label %for.body.i

lpfc_nvmet_get_ctx_for_xri.exit.thread:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %t_active_list_lock.i, i32 noundef %call2.i) #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ctxbuf.i = getelementptr i8, ptr %.pn.i, i32 124
  %79 = ptrtoint ptr %ctxbuf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctxbuf.i, align 4
  %sglq.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %sglq.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sglq.i, align 4
  %sli4_xritag.i = getelementptr inbounds %struct.lpfc_sglq, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %sli4_xritag.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %sli4_xritag.i, align 4
  %cmp13.not.i = icmp eq i16 %84, %conv
  br i1 %cmp13.not.i, label %lpfc_nvmet_get_ctx_for_xri.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

lpfc_nvmet_get_ctx_for_xri.exit:                  ; preds = %for.body.i
  %ctxp.0.i = getelementptr i8, ptr %.pn.i, i32 -56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %t_active_list_lock.i, i32 noundef %call2.i) #11
  %tobool160.not342 = icmp eq ptr %ctxp.0.i, null
  br i1 %tobool160.not342, label %lpfc_nvmet_get_ctx_for_xri.exit.cleanup_crit_edge, label %do.body162

lpfc_nvmet_get_ctx_for_xri.exit.cleanup_crit_edge: ; preds = %lpfc_nvmet_get_ctx_for_xri.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body162:                                       ; preds = %lpfc_nvmet_get_ctx_for_xri.exit
  %85 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pport, align 8
  %tobool165.not = icmp eq ptr %86, null
  %cfg_log_verbose168 = getelementptr inbounds %struct.lpfc_vport, ptr %86, i32 0, i32 51
  %cond172.in = select i1 %tobool165.not, ptr %cfg_log_verbose6, ptr %cfg_log_verbose168
  %87 = ptrtoint ptr %cond172.in to i32
  call void @__asan_load4_noabort(i32 %87)
  %cond172 = load i32, ptr %cond172.in, align 4
  %and173 = and i32 %cond172, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.else189, label %do.end178

do.end178:                                        ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev179 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %88 = ptrtoint ptr %pcidev179 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pcidev179, align 4
  %dev180 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %brd_no181 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %90 = ptrtoint ptr %brd_no181 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %brd_no181, align 4
  %conv182 = and i32 %1, 65535
  %state = getelementptr i8, ptr %.pn.i, i32 110
  %92 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %state, align 2
  %conv183 = zext i16 %93 to i32
  %flag184 = getelementptr i8, ptr %.pn.i, i32 112
  %94 = ptrtoint ptr %flag184 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %flag184, align 8
  %conv185 = zext i16 %95 to i32
  %oxid186 = getelementptr i8, ptr %.pn.i, i32 100
  %96 = ptrtoint ptr %oxid186 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %oxid186, align 4
  %conv187 = zext i16 %97 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev180, ptr noundef nonnull @.str.44, i32 noundef %91, i32 noundef %conv182, i32 noundef %conv183, i32 noundef %conv185, i32 noundef %conv187, i32 noundef %shr2) #14
  br label %if.end203

if.else189:                                       ; preds = %do.body162
  %98 = ptrtoint ptr %cfg_log_verbose6 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cfg_log_verbose6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool191.not = icmp eq i32 %99, 0
  br i1 %tobool191.not, label %if.then192, label %if.else189.if.end203_crit_edge

if.else189.if.end203_crit_edge:                   ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203

if.then192:                                       ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no193 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %100 = ptrtoint ptr %brd_no193 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %brd_no193, align 4
  %conv194 = and i32 %1, 65535
  %state195 = getelementptr i8, ptr %.pn.i, i32 110
  %102 = ptrtoint ptr %state195 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %state195, align 2
  %conv196 = zext i16 %103 to i32
  %flag197 = getelementptr i8, ptr %.pn.i, i32 112
  %104 = ptrtoint ptr %flag197 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %flag197, align 8
  %conv198 = zext i16 %105 to i32
  %oxid199 = getelementptr i8, ptr %.pn.i, i32 100
  %106 = ptrtoint ptr %oxid199 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %oxid199, align 4
  %conv200 = zext i16 %107 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.44, i32 noundef %101, i32 noundef %conv194, i32 noundef %conv196, i32 noundef %conv198, i32 noundef %conv200, i32 noundef %shr2) #11
  br label %if.end203

if.end203:                                        ; preds = %if.then192, %if.else189.if.end203_crit_edge, %do.end178
  %ctxlock213 = getelementptr i8, ptr %.pn.i, i32 48
  %call215 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock213) #11
  %flag220 = getelementptr i8, ptr %.pn.i, i32 112
  %108 = ptrtoint ptr %flag220 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %flag220, align 8
  %110 = or i16 %109, 16
  store i16 %110, ptr %flag220, align 8
  %state223 = getelementptr i8, ptr %.pn.i, i32 110
  %111 = ptrtoint ptr %state223 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 6, ptr %state223, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock213, i32 noundef %call215) #11
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 304
  %112 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool225.not = icmp eq i16 %113, 0
  br i1 %tobool225.not, label %if.end203.if.then231_crit_edge, label %if.then226

if.end203.if.then231_crit_edge:                   ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then231

if.then226:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  %114 = tail call i32 @llvm.read_register.i32(metadata !411) #11
  %and.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cpu, align 4
  %conv228 = trunc i32 %117 to i16
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %phba, ptr noundef nonnull @.str.46, i16 noundef zeroext %conv, i16 noundef zeroext %conv228, i32 noundef 0) #11
  br label %if.then231

if.then231:                                       ; preds = %if.then226, %if.end203.if.then231_crit_edge
  %118 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %targetport, align 8
  tail call void @nvmet_fc_rcv_fcp_abort(ptr noundef %119, ptr noundef nonnull %ctxp.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then231, %lpfc_nvmet_get_ctx_for_xri.exit.cleanup_crit_edge, %lpfc_nvmet_get_ctx_for_xri.exit.thread, %if.then150, %if.end148.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_findnode_did(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_set_rrq_active(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli4_abts_err_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_fc_rcv_fcp_abort(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_nvmet_rcv_unsol_abort(ptr noundef %vport, ptr noundef %fc_hdr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %fc_hdr, i32 0, i32 3
  %2 = ptrtoint ptr %fh_s_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fh_s_id, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx3 = getelementptr %struct.fc_frame_header, ptr %fc_hdr, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %shl
  %arrayidx7 = getelementptr %struct.fc_frame_header, ptr %fc_hdr, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %or9 = or i32 %or, %conv8
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %fc_hdr, i32 0, i32 9
  %8 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fh_ox_id, align 4
  %abts_nvmet_buf_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 79
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %abts_nvmet_buf_list_lock) #11
  %lpfc_abts_nvmet_ctx_list = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 80
  %10 = ptrtoint ptr %lpfc_abts_nvmet_ctx_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lpfc_abts_nvmet_ctx_list, align 4
  %cmp24.not498 = icmp eq ptr %11, %lpfc_abts_nvmet_ctx_list
  br i1 %cmp24.not498, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in499 = phi ptr [ %.pn500, %for.inc.for.body_crit_edge ], [ %11, %entry.for.body_crit_edge ]
  %12 = ptrtoint ptr %.pn.in499 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn500 = load ptr, ptr %.pn.in499, align 8
  %oxid26 = getelementptr i8, ptr %.pn.in499, i32 100
  %13 = ptrtoint ptr %oxid26 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %oxid26, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %9)
  %cmp29.not = icmp eq i16 %14, %9
  br i1 %cmp29.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %sid31 = getelementptr i8, ptr %.pn.in499, i32 92
  %15 = ptrtoint ptr %sid31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sid31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %or9)
  %cmp32.not = icmp eq i32 %16, %or9
  br i1 %cmp32.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %ctxp.0.le = getelementptr i8, ptr %.pn.in499, i32 -56
  %ctxbuf = getelementptr i8, ptr %.pn.in499, i32 124
  %17 = ptrtoint ptr %ctxbuf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctxbuf, align 4
  %sglq = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %sglq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sglq, align 4
  %sli4_xritag = getelementptr inbounds %struct.lpfc_sglq, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %sli4_xritag to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sli4_xritag, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %abts_nvmet_buf_list_lock, i32 noundef %call12) #11
  %ctxlock = getelementptr i8, ptr %.pn.in499, i32 48
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  %flag = getelementptr i8, ptr %.pn.in499, i32 112
  %23 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flag, align 8
  %25 = or i16 %24, 16
  store i16 %25, ptr %flag, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call44) #11
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 304
  %26 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not = icmp eq i16 %27, 0
  br i1 %tobool.not, label %if.end.do.body57_crit_edge, label %if.then53

if.end.do.body57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body57

if.then53:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %28 = tail call i32 @llvm.read_register.i32(metadata !411) #11
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu, align 4
  %conv55 = trunc i32 %31 to i16
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %1, ptr noundef nonnull @.str.46, i16 noundef zeroext %22, i16 noundef zeroext %conv55, i32 noundef 0) #11
  br label %do.body57

do.body57:                                        ; preds = %if.then53, %if.end.do.body57_crit_edge
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %32 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pport, align 8
  %tobool58.not = icmp eq ptr %33, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %33, i32 0, i32 51
  %cfg_log_verbose60 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 139
  %cond.in = select i1 %tobool58.not, ptr %cfg_log_verbose60, ptr %cfg_log_verbose
  %34 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %if.else, label %do.end65

do.end65:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %35 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %37 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %brd_no, align 4
  %conv66 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %38, i32 noundef %conv66) #14
  br label %if.end73

if.else:                                          ; preds = %do.body57
  %39 = ptrtoint ptr %cfg_log_verbose60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cfg_log_verbose60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool68.not = icmp eq i32 %40, 0
  br i1 %tobool68.not, label %if.then69, label %if.else.if.end73_crit_edge

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then69:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no70 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %41 = ptrtoint ptr %brd_no70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %brd_no70, align 4
  %conv71 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %42, i32 noundef %conv71) #11
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.else.if.end73_crit_edge, %do.end65
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 159
  %43 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %targetport, align 8
  tail call void @nvmet_fc_rcv_fcp_abort(ptr noundef %44, ptr noundef %ctxp.0.le) #11
  br label %cleanup332

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp24.not = icmp eq ptr %.pn500, %lpfc_abts_nvmet_ctx_list
  br i1 %cmp24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %abts_nvmet_buf_list_lock, i32 noundef %call12) #11
  %nvmet_io_wait_cnt = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 70
  %45 = ptrtoint ptr %nvmet_io_wait_cnt to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %nvmet_io_wait_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool84.not = icmp eq i16 %46, 0
  br i1 %tobool84.not, label %for.end.if.end189_crit_edge, label %if.then85

for.end.if.end189_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

if.then85:                                        ; preds = %for.end
  %nvmet_io_wait_lock = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 111
  %call95 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %nvmet_io_wait_lock) #11
  %lpfc_nvmet_io_wait_list = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 83
  %47 = ptrtoint ptr %lpfc_nvmet_io_wait_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %nvmebuf.0501 = load ptr, ptr %lpfc_nvmet_io_wait_list, align 4
  %cmp109.not502 = icmp eq ptr %nvmebuf.0501, %lpfc_nvmet_io_wait_list
  br i1 %cmp109.not502, label %if.then85.if.end184.critedge_crit_edge, label %if.then85.for.body112_crit_edge

if.then85.for.body112_crit_edge:                  ; preds = %if.then85
  br label %for.body112

if.then85.if.end184.critedge_crit_edge:           ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end184.critedge

for.body112:                                      ; preds = %for.inc172.for.body112_crit_edge, %if.then85.for.body112_crit_edge
  %nvmebuf.0503 = phi ptr [ %nvmebuf.0, %for.inc172.for.body112_crit_edge ], [ %nvmebuf.0501, %if.then85.for.body112_crit_edge ]
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %nvmebuf.0503, i32 0, i32 1
  %48 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %virt, align 4
  %fh_ox_id114 = getelementptr inbounds %struct.fc_frame_header, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %fh_ox_id114 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %fh_ox_id114, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %9)
  %cmp130.not = icmp eq i16 %51, %9
  br i1 %cmp130.not, label %lor.lhs.false132, label %for.body112.for.inc172_crit_edge

for.body112.for.inc172_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc172

lor.lhs.false132:                                 ; preds = %for.body112
  %fh_s_id115 = getelementptr inbounds %struct.fc_frame_header, ptr %49, i32 0, i32 3
  %52 = ptrtoint ptr %fh_s_id115 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fh_s_id115, align 1
  %conv117 = zext i8 %53 to i32
  %shl118 = shl nuw nsw i32 %conv117, 16
  %arrayidx120 = getelementptr %struct.fc_frame_header, ptr %49, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %55 to i32
  %shl122 = shl nuw nsw i32 %conv121, 8
  %or123 = or i32 %shl122, %shl118
  %arrayidx125 = getelementptr %struct.fc_frame_header, ptr %49, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %57 to i32
  %or127 = or i32 %or123, %conv126
  call void @__sanitizer_cov_trace_cmp4(i32 %or127, i32 %or9)
  %cmp133.not = icmp eq i32 %or127, %or9
  br i1 %cmp133.not, label %do.body137, label %lor.lhs.false132.for.inc172_crit_edge

lor.lhs.false132.for.inc172_crit_edge:            ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc172

do.body137:                                       ; preds = %lor.lhs.false132
  %conv129.le = zext i16 %9 to i32
  %pport139 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %58 = ptrtoint ptr %pport139 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pport139, align 8
  %tobool140.not = icmp eq ptr %59, null
  %cfg_log_verbose143 = getelementptr inbounds %struct.lpfc_vport, ptr %59, i32 0, i32 51
  %cfg_log_verbose145 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 139
  %cond147.in = select i1 %tobool140.not, ptr %cfg_log_verbose145, ptr %cfg_log_verbose143
  %60 = ptrtoint ptr %cond147.in to i32
  call void @__asan_load4_noabort(i32 %60)
  %cond147 = load i32, ptr %cond147.in, align 4
  %and148 = and i32 %cond147, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.else158, label %do.end153

do.end153:                                        ; preds = %do.body137
  %pcidev154 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %61 = ptrtoint ptr %pcidev154 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pcidev154, align 4
  %dev155 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %brd_no156 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %63 = ptrtoint ptr %brd_no156 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %brd_no156, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev155, ptr noundef nonnull @.str.50, i32 noundef %64, i32 noundef %conv129.le, i32 noundef %or9) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nvmebuf.0503) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end153.if.then183_crit_edge

do.end153.if.then183_crit_edge:                   ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then183

if.end.i.i:                                       ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nvmebuf.0503, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i, align 4
  %67 = ptrtoint ptr %nvmebuf.0503 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nvmebuf.0503, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %if.then183

if.else158:                                       ; preds = %do.body137
  %71 = ptrtoint ptr %cfg_log_verbose145 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cfg_log_verbose145, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool160.not = icmp eq i32 %72, 0
  br i1 %tobool160.not, label %if.then161, label %if.then183.critedge

if.then161:                                       ; preds = %if.else158
  %brd_no162 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %73 = ptrtoint ptr %brd_no162 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %brd_no162, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %74, i32 noundef %conv129.le, i32 noundef %or9) #11
  %call.i.i473 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nvmebuf.0503) #11
  br i1 %call.i.i473, label %if.end.i.i476, label %if.then161.if.then183_crit_edge

if.then161.if.then183_crit_edge:                  ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then183

if.end.i.i476:                                    ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i474 = getelementptr inbounds %struct.list_head, ptr %nvmebuf.0503, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i474 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i474, align 4
  %77 = ptrtoint ptr %nvmebuf.0503 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %nvmebuf.0503, align 4
  %prev1.i.i.i475 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i475 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i475, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %if.then183

for.inc172:                                       ; preds = %lor.lhs.false132.for.inc172_crit_edge, %for.body112.for.inc172_crit_edge
  %81 = ptrtoint ptr %nvmebuf.0503 to i32
  call void @__asan_load4_noabort(i32 %81)
  %nvmebuf.0 = load ptr, ptr %nvmebuf.0503, align 4
  %cmp109.not = icmp eq ptr %nvmebuf.0, %lpfc_nvmet_io_wait_list
  br i1 %cmp109.not, label %for.inc172.if.end184.critedge_crit_edge, label %for.inc172.for.body112_crit_edge

for.inc172.for.body112_crit_edge:                 ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body112

for.inc172.if.end184.critedge_crit_edge:          ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end184.critedge

if.then183.critedge:                              ; preds = %if.else158
  %call.i.i479 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nvmebuf.0503) #11
  br i1 %call.i.i479, label %if.end.i.i482, label %if.then183.critedge.if.then183_crit_edge

if.then183.critedge.if.then183_crit_edge:         ; preds = %if.then183.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then183

if.end.i.i482:                                    ; preds = %if.then183.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i480 = getelementptr inbounds %struct.list_head, ptr %nvmebuf.0503, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i480 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i480, align 4
  %84 = ptrtoint ptr %nvmebuf.0503 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %nvmebuf.0503, align 4
  %prev1.i.i.i481 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i481 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev1.i.i.i481, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %85, ptr %83, align 4
  br label %if.then183

if.then183:                                       ; preds = %if.end.i.i482, %if.then183.critedge.if.then183_crit_edge, %if.end.i.i476, %if.then161.if.then183_crit_edge, %if.end.i.i, %do.end153.if.then183_crit_edge
  %88 = ptrtoint ptr %nvmebuf.0503 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %nvmebuf.0503, ptr %nvmebuf.0503, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %nvmebuf.0503, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %nvmebuf.0503, ptr %prev.i3.i, align 4
  %90 = ptrtoint ptr %nvmet_io_wait_cnt to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %nvmet_io_wait_cnt, align 2
  %dec.c472 = add i16 %91, -1
  store i16 %dec.c472, ptr %nvmet_io_wait_cnt, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %nvmet_io_wait_lock, i32 noundef %call95) #11
  %hrq = getelementptr inbounds %struct.rqb_dmabuf, ptr %nvmebuf.0503, i32 0, i32 5
  %92 = ptrtoint ptr %hrq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hrq, align 4
  %rqbp = getelementptr inbounds %struct.lpfc_queue, ptr %93, i32 0, i32 26
  %94 = ptrtoint ptr %rqbp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rqbp, align 4
  %rqb_free_buffer = getelementptr inbounds %struct.lpfc_rqb, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %rqb_free_buffer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rqb_free_buffer, align 4
  tail call void %97(ptr noundef %1, ptr noundef %nvmebuf.0503) #11
  br label %cleanup332

if.end184.critedge:                               ; preds = %for.inc172.if.end184.critedge_crit_edge, %if.then85.if.end184.critedge_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %nvmet_io_wait_lock, i32 noundef %call95) #11
  br label %if.end189

if.end189:                                        ; preds = %if.end184.critedge, %for.end.if.end189_crit_edge
  %t_active_list_lock.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 81
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %t_active_list_lock.i) #11
  %t_active_ctx_list.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 82
  %98 = ptrtoint ptr %t_active_ctx_list.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn37.i = load ptr, ptr %t_active_ctx_list.i, align 8
  %cmp9.not38.i = icmp eq ptr %.pn37.i, %t_active_ctx_list.i
  br i1 %cmp9.not38.i, label %if.end189.lpfc_nvmet_get_ctx_for_oxid.exit.thread_crit_edge, label %if.end189.for.body.i_crit_edge

if.end189.for.body.i_crit_edge:                   ; preds = %if.end189
  br label %for.body.i

if.end189.lpfc_nvmet_get_ctx_for_oxid.exit.thread_crit_edge: ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %lpfc_nvmet_get_ctx_for_oxid.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end189.for.body.i_crit_edge
  %.pn39.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn37.i, %if.end189.for.body.i_crit_edge ]
  %oxid11.i = getelementptr i8, ptr %.pn39.i, i32 100
  %99 = ptrtoint ptr %oxid11.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %oxid11.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %9)
  %cmp14.not.i = icmp eq i16 %100, %9
  br i1 %cmp14.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %sid16.i = getelementptr i8, ptr %.pn39.i, i32 92
  %101 = ptrtoint ptr %sid16.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sid16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %or9)
  %cmp17.not.i = icmp eq i32 %102, %or9
  br i1 %cmp17.not.i, label %lpfc_nvmet_get_ctx_for_oxid.exit, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %103 = ptrtoint ptr %.pn39.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn.i = load ptr, ptr %.pn39.i, align 8
  %cmp9.not.i = icmp eq ptr %.pn.i, %t_active_ctx_list.i
  br i1 %cmp9.not.i, label %for.inc.i.lpfc_nvmet_get_ctx_for_oxid.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.lpfc_nvmet_get_ctx_for_oxid.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lpfc_nvmet_get_ctx_for_oxid.exit.thread

lpfc_nvmet_get_ctx_for_oxid.exit.thread:          ; preds = %for.inc.i.lpfc_nvmet_get_ctx_for_oxid.exit.thread_crit_edge, %if.end189.lpfc_nvmet_get_ctx_for_oxid.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %t_active_list_lock.i, i32 noundef %call2.i) #11
  br label %if.end293

lpfc_nvmet_get_ctx_for_oxid.exit:                 ; preds = %lor.lhs.false.i
  %oxid11.i.le = getelementptr i8, ptr %.pn39.i, i32 100
  %sid16.i.le = getelementptr i8, ptr %.pn39.i, i32 92
  %ctxp.0.i = getelementptr i8, ptr %.pn39.i, i32 -56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %t_active_list_lock.i, i32 noundef %call2.i) #11
  %tobool191.not = icmp eq ptr %ctxp.0.i, null
  br i1 %tobool191.not, label %lpfc_nvmet_get_ctx_for_oxid.exit.if.end293_crit_edge, label %if.then192

lpfc_nvmet_get_ctx_for_oxid.exit.if.end293_crit_edge: ; preds = %lpfc_nvmet_get_ctx_for_oxid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end293

if.then192:                                       ; preds = %lpfc_nvmet_get_ctx_for_oxid.exit
  %ctxbuf193 = getelementptr i8, ptr %.pn39.i, i32 124
  %104 = ptrtoint ptr %ctxbuf193 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ctxbuf193, align 4
  %sglq194 = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %sglq194 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sglq194, align 4
  %sli4_xritag195 = getelementptr inbounds %struct.lpfc_sglq, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %sli4_xritag195 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %sli4_xritag195, align 4
  %ctxlock203 = getelementptr i8, ptr %.pn39.i, i32 48
  %call205 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock203) #11
  %flag210 = getelementptr i8, ptr %.pn39.i, i32 112
  %110 = ptrtoint ptr %flag210 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %flag210, align 8
  %112 = or i16 %111, 18
  store i16 %112, ptr %flag210, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock203, i32 noundef %call205) #11
  %nvmeio_trc_on215 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 304
  %113 = ptrtoint ptr %nvmeio_trc_on215 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %nvmeio_trc_on215, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool216.not = icmp eq i16 %114, 0
  br i1 %tobool216.not, label %if.then192.do.body222_crit_edge, label %if.then217

if.then192.do.body222_crit_edge:                  ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body222

if.then217:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #13
  %115 = tail call i32 @llvm.read_register.i32(metadata !411) #11
  %and.i485 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i485 to ptr
  %cpu219 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %cpu219 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cpu219, align 4
  %conv220 = trunc i32 %118 to i16
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %1, ptr noundef nonnull @.str.46, i16 noundef zeroext %109, i16 noundef zeroext %conv220, i32 noundef 0) #11
  br label %do.body222

do.body222:                                       ; preds = %if.then217, %if.then192.do.body222_crit_edge
  %pport224 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %119 = ptrtoint ptr %pport224 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pport224, align 8
  %tobool225.not = icmp eq ptr %120, null
  %cfg_log_verbose228 = getelementptr inbounds %struct.lpfc_vport, ptr %120, i32 0, i32 51
  %cfg_log_verbose230 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 139
  %cond232.in = select i1 %tobool225.not, ptr %cfg_log_verbose230, ptr %cfg_log_verbose228
  %121 = ptrtoint ptr %cond232.in to i32
  call void @__asan_load4_noabort(i32 %121)
  %cond232 = load i32, ptr %cond232.in, align 4
  %and233 = and i32 %cond232, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.else248, label %do.end238

do.end238:                                        ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev239 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %122 = ptrtoint ptr %pcidev239 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pcidev239, align 4
  %dev240 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %brd_no241 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %124 = ptrtoint ptr %brd_no241 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %brd_no241, align 4
  %126 = ptrtoint ptr %oxid11.i.le to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %oxid11.i.le, align 4
  %conv243 = zext i16 %127 to i32
  %conv244 = zext i16 %109 to i32
  %128 = ptrtoint ptr %flag210 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %flag210, align 8
  %conv246 = zext i16 %129 to i32
  %state = getelementptr i8, ptr %.pn39.i, i32 110
  %130 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %state, align 2
  %conv247 = zext i16 %131 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev240, ptr noundef nonnull @.str.53, i32 noundef %125, i32 noundef %conv243, i32 noundef %conv244, i32 noundef %conv246, i32 noundef %conv247) #14
  br label %if.end261

if.else248:                                       ; preds = %do.body222
  %132 = ptrtoint ptr %cfg_log_verbose230 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cfg_log_verbose230, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool250.not = icmp eq i32 %133, 0
  br i1 %tobool250.not, label %if.then251, label %if.else248.if.end261_crit_edge

if.else248.if.end261_crit_edge:                   ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end261

if.then251:                                       ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no252 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %134 = ptrtoint ptr %brd_no252 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %brd_no252, align 4
  %136 = ptrtoint ptr %oxid11.i.le to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %oxid11.i.le, align 4
  %conv254 = zext i16 %137 to i32
  %conv255 = zext i16 %109 to i32
  %138 = ptrtoint ptr %flag210 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %flag210, align 8
  %conv257 = zext i16 %139 to i32
  %state258 = getelementptr i8, ptr %.pn39.i, i32 110
  %140 = ptrtoint ptr %state258 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %state258, align 2
  %conv259 = zext i16 %141 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %135, i32 noundef %conv254, i32 noundef %conv255, i32 noundef %conv257, i32 noundef %conv259) #11
  br label %if.end261

if.end261:                                        ; preds = %if.then251, %if.else248.if.end261_crit_edge, %do.end238
  %142 = ptrtoint ptr %flag210 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %flag210, align 8
  %144 = and i16 %143, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool267.not = icmp eq i16 %144, 0
  br i1 %tobool267.not, label %if.else271, label %if.then268

if.then268:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  %targetport269 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 159
  %145 = ptrtoint ptr %targetport269 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %targetport269, align 8
  tail call void @nvmet_fc_rcv_fcp_abort(ptr noundef %146, ptr noundef nonnull %ctxp.0.i) #11
  br label %if.end289

if.else271:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %ctxbuf193 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ctxbuf193, align 4
  %defer_work = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %148, i32 0, i32 4
  %call273 = tail call zeroext i1 @cancel_work_sync(ptr noundef %defer_work) #11
  %call283 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock203) #11
  tail call fastcc void @lpfc_nvmet_defer_release(ptr noundef %1, ptr noundef nonnull %ctxp.0.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock203, i32 noundef %call283) #11
  br label %if.end289

if.end289:                                        ; preds = %if.else271, %if.then268
  %149 = ptrtoint ptr %sid16.i.le to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sid16.i.le, align 4
  tail call fastcc void @lpfc_nvmet_sol_fcp_issue_abort(ptr noundef %1, ptr noundef nonnull %ctxp.0.i, i32 noundef %150)
  br label %cleanup332

if.end293:                                        ; preds = %lpfc_nvmet_get_ctx_for_oxid.exit.if.end293_crit_edge, %lpfc_nvmet_get_ctx_for_oxid.exit.thread
  %nvmeio_trc_on294 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 304
  %151 = ptrtoint ptr %nvmeio_trc_on294 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %nvmeio_trc_on294, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool295.not = icmp eq i16 %152, 0
  br i1 %tobool295.not, label %if.end293.do.body301_crit_edge, label %if.then296

if.end293.do.body301_crit_edge:                   ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body301

if.then296:                                       ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #13
  %153 = tail call i32 @llvm.read_register.i32(metadata !411) #11
  %and.i486 = and i32 %153, -16384
  %154 = inttoptr i32 %and.i486 to ptr
  %cpu298 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %cpu298 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cpu298, align 4
  %conv299 = trunc i32 %156 to i16
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %1, ptr noundef nonnull @.str.55, i16 noundef zeroext %9, i16 noundef zeroext %conv299, i32 noundef 1) #11
  br label %do.body301

do.body301:                                       ; preds = %if.then296, %if.end293.do.body301_crit_edge
  %pport303 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %157 = ptrtoint ptr %pport303 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pport303, align 8
  %tobool304.not = icmp eq ptr %158, null
  %cfg_log_verbose307 = getelementptr inbounds %struct.lpfc_vport, ptr %158, i32 0, i32 51
  %cfg_log_verbose309 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 139
  %cond311.in = select i1 %tobool304.not, ptr %cfg_log_verbose309, ptr %cfg_log_verbose307
  %159 = ptrtoint ptr %cond311.in to i32
  call void @__asan_load4_noabort(i32 %159)
  %cond311 = load i32, ptr %cond311.in, align 4
  %and312 = and i32 %cond311, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312)
  %tobool313.not = icmp eq i32 %and312, 0
  br i1 %tobool313.not, label %if.else322, label %do.end317

do.end317:                                        ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev318 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %160 = ptrtoint ptr %pcidev318 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pcidev318, align 4
  %dev319 = getelementptr inbounds %struct.pci_dev, ptr %161, i32 0, i32 44
  %brd_no320 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %162 = ptrtoint ptr %brd_no320 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %brd_no320, align 4
  %conv321 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev319, ptr noundef nonnull @.str.57, i32 noundef %163, i32 noundef %conv321) #14
  br label %cleanup332

if.else322:                                       ; preds = %do.body301
  %164 = ptrtoint ptr %cfg_log_verbose309 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cfg_log_verbose309, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool324.not = icmp eq i32 %165, 0
  br i1 %tobool324.not, label %if.then325, label %if.else322.cleanup332_crit_edge

if.else322.cleanup332_crit_edge:                  ; preds = %if.else322
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup332

if.then325:                                       ; preds = %if.else322
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no326 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %166 = ptrtoint ptr %brd_no326 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %brd_no326, align 4
  %conv327 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %167, i32 noundef %conv327) #11
  br label %cleanup332

cleanup332:                                       ; preds = %if.then325, %if.else322.cleanup332_crit_edge, %do.end317, %if.end289, %if.then183, %if.end73
  %.sink = phi i1 [ true, %if.then183 ], [ true, %if.end289 ], [ true, %if.end73 ], [ false, %if.else322.cleanup332_crit_edge ], [ false, %if.then325 ], [ false, %do.end317 ]
  tail call void @lpfc_sli4_seq_abort_rsp(ptr noundef %vport, ptr noundef %fc_hdr, i1 noundef zeroext %.sink) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli4_seq_abort_rsp(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_nvmet_sol_fcp_issue_abort(ptr noundef %phba, ptr noundef %ctxp, i32 noundef %sid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %0 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %wqeq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 6
  %4 = ptrtoint ptr %wqeq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wqeq, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ctxbuf = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 20
  %6 = ptrtoint ptr %ctxbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctxbuf, align 4
  %iocbq = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %iocbq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iocbq, align 4
  %10 = ptrtoint ptr %wqeq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %wqeq, align 8
  %hba_wqidx = getelementptr inbounds %struct.lpfc_iocbq, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %hba_wqidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %hba_wqidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %12 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pport, align 8
  %call = tail call ptr @lpfc_findnode_did(ptr noundef %13, i32 noundef %sid) #11
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 11
  %14 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nlp_state, align 2
  %16 = and i16 %15, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %16)
  %switch = icmp eq i16 %16, 6
  br i1 %switch, label %if.end57, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %xmt_abort_rsp_error = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %3, i32 0, i32 35
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp_error, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_rsp_error, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_rsp_error, ptr %xmt_abort_rsp_error, i32 1, ptr elementtype(i32) %xmt_abort_rsp_error) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %18 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %20 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brd_no, align 4
  br i1 %tobool3.not, label %if.then9.cond.end26_crit_edge, label %cond.true22

if.then9.cond.end26_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end26

cond.true22:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %nlp_state23 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 11
  %22 = ptrtoint ptr %nlp_state23 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nlp_state23, align 2
  %conv24 = zext i16 %23 to i32
  br label %cond.end26

cond.end26:                                       ; preds = %cond.true22, %if.then9.cond.end26_crit_edge
  %cond27 = phi i32 [ %conv24, %cond.true22 ], [ 9, %if.then9.cond.end26_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.190, i32 noundef %21, i32 noundef %cond27) #14
  %ctxlock = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 8
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 17
  %24 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flag, align 8
  %26 = and i16 %25, -3
  store i16 %26, ptr %flag, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call48) #11
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false
  %call58 = tail call ptr @lpfc_sli_get_iocbq(ptr noundef %phba) #11
  %abort_wqeq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 7
  %27 = ptrtoint ptr %abort_wqeq to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call58, ptr %abort_wqeq, align 4
  %ctxlock66 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 8
  %call68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock66) #11
  %28 = ptrtoint ptr %abort_wqeq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %abort_wqeq, align 4
  %tobool74.not = icmp eq ptr %29, null
  br i1 %tobool74.not, label %if.then75, label %if.end118

if.then75:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_abort_rsp_error76 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %3, i32 0, i32 35
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp_error76, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_rsp_error76, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_rsp_error76, ptr %xmt_abort_rsp_error76, i32 1, ptr elementtype(i32) %xmt_abort_rsp_error76) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev98 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %31 = ptrtoint ptr %pcidev98 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcidev98, align 4
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %brd_no100 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %33 = ptrtoint ptr %brd_no100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %brd_no100, align 4
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %35 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %oxid, align 4
  %conv101 = zext i16 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev99, ptr noundef nonnull @.str.193, i32 noundef %34, i32 noundef %conv101) #14
  %flag113 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 17
  %37 = ptrtoint ptr %flag113 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flag113, align 8
  %39 = and i16 %38, -3
  store i16 %39, ptr %flag113, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock66, i32 noundef %call68) #11
  br label %cleanup

if.end118:                                        ; preds = %if.end57
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 16
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 6, ptr %state, align 2
  %flag120 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 17
  %41 = ptrtoint ptr %flag120 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flag120, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock66, i32 noundef %call68) #11
  %43 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pport, align 8
  %tobool130.not = icmp eq ptr %44, null
  %cfg_log_verbose133 = getelementptr inbounds %struct.lpfc_vport, ptr %44, i32 0, i32 51
  %cfg_log_verbose135 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond137.in = select i1 %tobool130.not, ptr %cfg_log_verbose135, ptr %cfg_log_verbose133
  %45 = ptrtoint ptr %cond137.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %cond137 = load i32, ptr %cond137.in, align 4
  %and138 = and i32 %cond137, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.else152, label %do.end143

do.end143:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev144 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %46 = ptrtoint ptr %pcidev144 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcidev144, align 4
  %dev145 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %brd_no146 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %48 = ptrtoint ptr %brd_no146 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brd_no146, align 4
  %sid147 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 9
  %50 = ptrtoint ptr %sid147 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sid147, align 4
  %oxid148 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %52 = ptrtoint ptr %oxid148 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %oxid148, align 4
  %conv149 = zext i16 %53 to i32
  %54 = ptrtoint ptr %wqeq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wqeq, align 8
  %sli4_xritag = getelementptr inbounds %struct.lpfc_iocbq, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %sli4_xritag to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %sli4_xritag, align 4
  %conv151 = zext i16 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev145, ptr noundef nonnull @.str.196, i32 noundef %49, i32 noundef %51, i32 noundef %conv149, i32 noundef %conv151) #14
  br label %if.end164

if.else152:                                       ; preds = %if.end118
  %58 = ptrtoint ptr %cfg_log_verbose135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cfg_log_verbose135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool154.not = icmp eq i32 %59, 0
  br i1 %tobool154.not, label %if.then155, label %if.else152.if.end164_crit_edge

if.else152.if.end164_crit_edge:                   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then155:                                       ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no156 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %60 = ptrtoint ptr %brd_no156 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %brd_no156, align 4
  %sid157 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 9
  %62 = ptrtoint ptr %sid157 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sid157, align 4
  %oxid158 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %64 = ptrtoint ptr %oxid158 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %oxid158, align 4
  %conv159 = zext i16 %65 to i32
  %66 = ptrtoint ptr %wqeq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wqeq, align 8
  %sli4_xritag161 = getelementptr inbounds %struct.lpfc_iocbq, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %sli4_xritag161 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sli4_xritag161, align 4
  %conv162 = zext i16 %69 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.196, i32 noundef %61, i32 noundef %63, i32 noundef %conv159, i32 noundef %conv162) #11
  br label %if.end164

if.end164:                                        ; preds = %if.then155, %if.else152.if.end164_crit_edge, %do.end143
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %call175 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock) #11
  %hba_flag = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 38
  %70 = ptrtoint ptr %hba_flag to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hba_flag, align 4
  %and180 = and i32 %71, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.end243, label %if.then182

if.then182:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call175) #11
  %xmt_abort_rsp_error184 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %3, i32 0, i32 35
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp_error184, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_rsp_error184, i32 1, i32 3, i32 1) #11
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_rsp_error184, ptr %xmt_abort_rsp_error184, i32 1, ptr elementtype(i32) %xmt_abort_rsp_error184) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev206 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %73 = ptrtoint ptr %pcidev206 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pcidev206, align 4
  %dev207 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %brd_no208 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %75 = ptrtoint ptr %brd_no208 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %brd_no208, align 4
  %77 = ptrtoint ptr %hba_flag to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hba_flag, align 4
  %oxid210 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %79 = ptrtoint ptr %oxid210 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %oxid210, align 4
  %conv211 = zext i16 %80 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev207, ptr noundef nonnull @.str.199, i32 noundef %76, i32 noundef %78, i32 noundef %conv211) #14
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef nonnull %29) #11
  %call233 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock66) #11
  %81 = ptrtoint ptr %flag120 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %flag120, align 8
  %83 = and i16 %82, -3
  store i16 %83, ptr %flag120, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock66, i32 noundef %call233) #11
  br label %cleanup

if.end243:                                        ; preds = %if.end164
  %iocb_flag = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 15
  %84 = ptrtoint ptr %iocb_flag to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %iocb_flag, align 4
  %and244 = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %if.end305, label %if.then246

if.then246:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call175) #11
  %xmt_abort_rsp_error248 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %3, i32 0, i32 35
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp_error248, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_rsp_error248, i32 1, i32 3, i32 1) #11
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_rsp_error248, ptr %xmt_abort_rsp_error248, i32 1, ptr elementtype(i32) %xmt_abort_rsp_error248) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev270 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %87 = ptrtoint ptr %pcidev270 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pcidev270, align 4
  %dev271 = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  %brd_no272 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %89 = ptrtoint ptr %brd_no272 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %brd_no272, align 4
  %oxid273 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %91 = ptrtoint ptr %oxid273 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %oxid273, align 4
  %conv274 = zext i16 %92 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev271, ptr noundef nonnull @.str.202, i32 noundef %90, i32 noundef %conv274) #14
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef nonnull %29) #11
  %call295 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock66) #11
  %93 = ptrtoint ptr %flag120 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %flag120, align 8
  %95 = and i16 %94, -3
  store i16 %95, ptr %flag120, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock66, i32 noundef %call295) #11
  br label %cleanup

if.end305:                                        ; preds = %if.end243
  %or = or i32 %85, 8
  %96 = ptrtoint ptr %iocb_flag to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or, ptr %iocb_flag, align 4
  %97 = ptrtoint ptr %wqeq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wqeq, align 8
  %sli4_xritag308 = getelementptr inbounds %struct.lpfc_iocbq, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %sli4_xritag308 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %sli4_xritag308, align 4
  %wqe1.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 10
  %101 = call ptr @memset(ptr %wqe1.i, i32 0, i32 128)
  %102 = and i16 %42, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool.not.i = icmp eq i16 %102, 0
  br i1 %tobool.not.i, label %if.end305.lpfc_nvmet_prep_abort_wqe.exit_crit_edge, label %if.then.i

if.end305.lpfc_nvmet_prep_abort_wqe.exit_crit_edge: ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #13
  br label %lpfc_nvmet_prep_abort_wqe.exit

if.then.i:                                        ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #13
  %word3.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 10, i32 0, i32 3
  %103 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %word3.i, align 4
  %or.i = or i32 %104, 1
  store i32 %or.i, ptr %word3.i, align 4
  br label %lpfc_nvmet_prep_abort_wqe.exit

lpfc_nvmet_prep_abort_wqe.exit:                   ; preds = %if.then.i, %if.end305.lpfc_nvmet_prep_abort_wqe.exit_crit_edge
  %word34.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 10, i32 0, i32 3
  %105 = ptrtoint ptr %word34.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %word34.i, align 4
  %and5.i = and i32 %106, -65281
  %or6.i = or i32 %and5.i, 256
  store i32 %or6.i, ptr %word34.i, align 4
  %word7.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 10, i32 0, i32 7
  %107 = ptrtoint ptr %word7.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %word7.i, align 4
  %and8.i = and i32 %108, -65281
  %or9.i = or i32 %and8.i, 3840
  store i32 %or9.i, ptr %word7.i, align 4
  %conv12.i = zext i16 %100 to i32
  %abort_tag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 10, i32 0, i32 8
  %109 = ptrtoint ptr %abort_tag.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv12.i, ptr %abort_tag.i, align 4
  %iotag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 3
  %110 = ptrtoint ptr %iotag.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %iotag.i, align 8
  %conv14.i = zext i16 %111 to i32
  %word9.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 10, i32 0, i32 9
  %112 = ptrtoint ptr %word9.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %word9.i, align 4
  %and17.i = and i32 %113, -65536
  %or18.i = or i32 %and17.i, %conv14.i
  store i32 %or18.i, ptr %word9.i, align 4
  %word10.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 10, i32 0, i32 10
  %114 = ptrtoint ptr %word10.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %word10.i, align 4
  %or23.i = and i32 %115, -897
  %and28.i = or i32 %or23.i, 512
  store i32 %and28.i, ptr %word10.i, align 4
  %word11.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 10, i32 0, i32 11
  %116 = ptrtoint ptr %word11.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %word11.i, align 4
  %and33.i = and i32 %117, 65392
  %or46.i = or i32 %and33.i, -65400
  store i32 %or46.i, ptr %word11.i, align 4
  %118 = ptrtoint ptr %wqeq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wqeq, align 8
  %hba_wqidx310 = getelementptr inbounds %struct.lpfc_iocbq, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %hba_wqidx310 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %hba_wqidx310, align 2
  %hba_wqidx311 = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 6
  %122 = ptrtoint ptr %hba_wqidx311 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %hba_wqidx311, align 2
  %wqe_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 27
  %123 = ptrtoint ptr %wqe_cmpl to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @lpfc_nvmet_sol_fcp_abort_cmp, ptr %wqe_cmpl, align 4
  %iocb_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 26
  %124 = ptrtoint ptr %iocb_cmpl to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %iocb_cmpl, align 8
  %125 = ptrtoint ptr %iocb_flag to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %iocb_flag, align 4
  %or313 = or i32 %126, 2097152
  store i32 %or313, ptr %iocb_flag, align 4
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 19
  %127 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %ctxp, ptr %context2, align 4
  %128 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pport, align 8
  %vport = getelementptr inbounds %struct.lpfc_iocbq, ptr %29, i32 0, i32 17
  %130 = ptrtoint ptr %vport to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %vport, align 4
  %hdwq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 21
  %131 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hdwq, align 8
  %tobool315.not = icmp eq ptr %132, null
  br i1 %tobool315.not, label %if.then316, label %lpfc_nvmet_prep_abort_wqe.exit.if.end320_crit_edge

lpfc_nvmet_prep_abort_wqe.exit.if.end320_crit_edge: ; preds = %lpfc_nvmet_prep_abort_wqe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end320

if.then316:                                       ; preds = %lpfc_nvmet_prep_abort_wqe.exit
  call void @__sanitizer_cov_trace_pc() #13
  %hdwq317 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 27
  %133 = ptrtoint ptr %hdwq317 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hdwq317, align 8
  %idxprom = zext i16 %121 to i32
  %arrayidx = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %134, i32 %idxprom
  %135 = ptrtoint ptr %hdwq to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %arrayidx, ptr %hdwq, align 8
  br label %if.end320

if.end320:                                        ; preds = %if.then316, %lpfc_nvmet_prep_abort_wqe.exit.if.end320_crit_edge
  %136 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hdwq, align 8
  %call322 = tail call i32 @lpfc_sli4_issue_wqe(ptr noundef %phba, ptr noundef %137, ptr noundef nonnull %29) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call175) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call322)
  %cmp324 = icmp eq i32 %call322, 0
  br i1 %cmp324, label %if.then326, label %if.end327

if.then326:                                       ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_abort_sol = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %3, i32 0, i32 32
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_sol, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_sol, i32 1, i32 3, i32 1) #11
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_sol, ptr %xmt_abort_sol, i32 1, ptr elementtype(i32) %xmt_abort_sol) #11, !srcloc !421
  br label %cleanup

if.end327:                                        ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_abort_rsp_error328 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %3, i32 0, i32 35
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp_error328, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_rsp_error328, i32 1, i32 3, i32 1) #11
  %139 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_rsp_error328, ptr %xmt_abort_rsp_error328, i32 1, ptr elementtype(i32) %xmt_abort_rsp_error328) #11, !srcloc !421
  %call338 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock66) #11
  %140 = ptrtoint ptr %flag120 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %flag120, align 8
  %142 = and i16 %141, -3
  store i16 %142, ptr %flag120, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock66, i32 noundef %call338) #11
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef nonnull %29) #11
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev369 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %143 = ptrtoint ptr %pcidev369 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pcidev369, align 4
  %dev370 = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  %brd_no371 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %145 = ptrtoint ptr %brd_no371 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %brd_no371, align 4
  %oxid372 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 11
  %147 = ptrtoint ptr %oxid372 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %oxid372, align 4
  %conv373 = zext i16 %148 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev370, ptr noundef nonnull @.str.205, i32 noundef %146, i32 noundef %call322, i32 noundef %conv373) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end327, %if.then326, %if.then246, %if.then182, %if.then75, %cond.end26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvmet_wqfull_process(ptr noundef %phba, ptr noundef %wq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pring1 = getelementptr inbounds %struct.lpfc_queue, ptr %wq, i32 0, i32 25
  %0 = ptrtoint ptr %pring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pring1, align 8
  %ring_lock = getelementptr inbounds %struct.lpfc_sli_ring, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring_lock) #11
  %wqfull_list = getelementptr inbounds %struct.lpfc_queue, ptr %wq, i32 0, i32 6
  %2 = ptrtoint ptr %wqfull_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %wqfull_list, align 4
  %cmp.i.not115 = icmp eq ptr %3, %wqfull_list
  br i1 %cmp.i.not115, label %entry.while.end_crit_edge, label %entry.do.body7_crit_edge

entry.do.body7_crit_edge:                         ; preds = %entry
  br label %do.body7

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body7:                                         ; preds = %if.end79.do.body7_crit_edge, %entry.do.body7_crit_edge
  %iflags.0116 = phi i32 [ %call26, %if.end79.do.body7_crit_edge ], [ %call3, %entry.do.body7_crit_edge ]
  %4 = ptrtoint ptr %wqfull_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %wqfull_list, align 4
  %cmp.i108.not = icmp eq ptr %5, %wqfull_list
  br i1 %cmp.i108.not, label %do.body7.do.end14_crit_edge, label %if.then

do.body7.do.end14_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

if.then:                                          ; preds = %do.body7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i, align 4
  br label %do.end14

do.end14:                                         ; preds = %list_del_init.exit, %do.body7.do.end14_crit_edge
  %nvmewqeq.0 = phi ptr [ null, %do.body7.do.end14_crit_edge ], [ %5, %list_del_init.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %iflags.0116) #11
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqeq.0, i32 0, i32 19
  %14 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %context2, align 4
  %hdwq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdwq, align 8
  %call16 = tail call i32 @lpfc_sli4_issue_wqe(ptr noundef %phba, ptr noundef %17, ptr noundef %nvmewqeq.0) #11
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring_lock) #11
  %18 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %call16, label %do.end65 [
    i32 -16, label %if.then33
    i32 0, label %if.then40
  ]

if.then33:                                        ; preds = %do.end14
  %19 = ptrtoint ptr %wqfull_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wqfull_list, align 4
  %call.i.i110 = tail call zeroext i1 @__list_add_valid(ptr noundef %nvmewqeq.0, ptr noundef %wqfull_list, ptr noundef %20) #11
  br i1 %call.i.i110, label %if.end.i.i111, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i111:                                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %nvmewqeq.0, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %nvmewqeq.0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %nvmewqeq.0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %nvmewqeq.0, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %wqfull_list, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %wqfull_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %nvmewqeq.0, ptr %wqfull_list, align 4
  br label %cleanup

if.then40:                                        ; preds = %do.end14
  %ts_cmd_nvme = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %15, i32 0, i32 23
  %25 = ptrtoint ptr %ts_cmd_nvme to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ts_cmd_nvme, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool41.not = icmp eq i64 %26, 0
  br i1 %tobool41.not, label %if.then40.if.end79_crit_edge, label %if.then42

if.then40.if.end79_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then42:                                        ; preds = %if.then40
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp44 = icmp eq i8 %28, 4
  %call.i = tail call i64 @ktime_get() #11
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %ts_status_wqput = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %15, i32 0, i32 29
  %29 = ptrtoint ptr %ts_status_wqput to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call.i, ptr %ts_status_wqput, align 8
  br label %if.end79

if.else:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %ts_data_wqput = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %15, i32 0, i32 25
  %30 = ptrtoint ptr %ts_data_wqput to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call.i, ptr %ts_data_wqput, align 8
  br label %if.end79

do.end65:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2088, i32 noundef 9, ptr noundef null) #11
  br label %if.end79

if.end79:                                         ; preds = %do.end65, %if.else, %if.then46, %if.then40.if.end79_crit_edge
  %31 = ptrtoint ptr %wqfull_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %wqfull_list, align 4
  %cmp.i.not = icmp eq ptr %32, %wqfull_list
  br i1 %cmp.i.not, label %if.end79.while.end_crit_edge, label %if.end79.do.body7_crit_edge

if.end79.do.body7_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body7

if.end79.while.end_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end79.while.end_crit_edge, %entry.while.end_crit_edge
  %iflags.0.lcssa = phi i32 [ %call3, %entry.while.end_crit_edge ], [ %call26, %if.end79.while.end_crit_edge ]
  %q_flag = getelementptr inbounds %struct.lpfc_queue, ptr %wq, i32 0, i32 31
  %33 = ptrtoint ptr %q_flag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %q_flag, align 1
  %35 = and i8 %34, -2
  store i8 %35, ptr %q_flag, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.i.i111, %if.then33.cleanup_crit_edge
  %iflags.0.lcssa.sink = phi i32 [ %iflags.0.lcssa, %while.end ], [ %call26, %if.then33.cleanup_crit_edge ], [ %call26, %if.end.i.i111 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %iflags.0.lcssa.sink) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvmet_destroy_targetport(ptr noundef %phba) local_unnamed_addr #2 align 64 {
entry:
  %tport_unreg_cmp = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tport_unreg_cmp) #11
  %0 = getelementptr inbounds i8, ptr %tport_unreg_cmp, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %tport_unreg_cmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tport_unreg_cmp, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %tport_unreg_cmp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.166, ptr noundef nonnull @init_completion.__key) #11
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 74
  %3 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %5 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %targetport, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end32_crit_edge, label %if.then2

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then2:                                         ; preds = %if.end
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 8
  %cfg_hdw_queue = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 106
  %9 = ptrtoint ptr %cfg_hdw_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cfg_hdw_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp459.not = icmp eq i32 %10, 0
  br i1 %cmp459.not, label %if.then2.for.end_crit_edge, label %for.body.lr.ph

if.then2.for.end_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then2
  %hdwq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 27
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %qidx.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdwq, align 8
  %io_wq = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %12, i32 %qidx.060, i32 2
  %13 = ptrtoint ptr %io_wq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_wq, align 4
  call fastcc void @lpfc_nvmet_wqfull_flush(ptr noundef %phba, ptr noundef %14, ptr noundef null)
  %inc = add nuw i32 %qidx.060, 1
  %15 = ptrtoint ptr %cfg_hdw_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg_hdw_queue, align 4
  %cmp4 = icmp ult i32 %inc, %16
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then2.for.end_crit_edge
  %tport_unreg_cmp6 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %tport_unreg_cmp6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tport_unreg_cmp, ptr %tport_unreg_cmp6, align 4
  %18 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %targetport, align 8
  %call = call i32 @nvmet_fc_unregister_targetport(ptr noundef %19) #11
  %call9 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %tport_unreg_cmp, i32 noundef 500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body, label %for.end.if.end31_crit_edge

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %20 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %22 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brd_no, align 4
  %24 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %targetport, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %23, ptr noundef %25) #14
  br label %if.end31

if.end31:                                         ; preds = %do.body, %for.end.if.end31_crit_edge
  call fastcc void @lpfc_nvmet_cleanup_io_context(ptr noundef %phba)
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end.if.end32_crit_edge
  %26 = ptrtoint ptr %targetport to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %targetport, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tport_unreg_cmp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_nvmet_wqfull_flush(ptr noundef %phba, ptr noundef %wq, ptr noundef readnone %ctxp) unnamed_addr #2 align 64 {
entry:
  %wcqe = alloca %struct.lpfc_wcqe_complete, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wcqe) #11
  %0 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %pring1 = getelementptr inbounds %struct.lpfc_queue, ptr %wq, i32 0, i32 25
  %1 = ptrtoint ptr %pring1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pring1, align 8
  %3 = getelementptr inbounds i8, ptr %wcqe, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 12)
  %5 = ptrtoint ptr %wcqe to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 768, ptr %wcqe, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 22, ptr %0, align 4
  %ring_lock = getelementptr inbounds %struct.lpfc_sli_ring, ptr %2, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring_lock) #11
  %wqfull_list = getelementptr inbounds %struct.lpfc_queue, ptr %wq, i32 0, i32 6
  %7 = ptrtoint ptr %wqfull_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wqfull_list, align 8
  %cmp14.not89 = icmp eq ptr %8, %wqfull_list
  br i1 %cmp14.not89, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %ctxp, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nvmewqeq.091 = phi ptr [ %8, %for.body.lr.ph ], [ %next_nvmewqeq.093, %for.inc.for.body_crit_edge ]
  %iflags.090 = phi i32 [ %call4, %for.body.lr.ph ], [ %iflags.1, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %nvmewqeq.091 to i32
  call void @__asan_load4_noabort(i32 %9)
  %next_nvmewqeq.093 = load ptr, ptr %nvmewqeq.091, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqeq.091, i32 0, i32 19
  %10 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context2, align 4
  %cmp16 = icmp eq ptr %11, %ctxp
  br i1 %cmp16, label %if.then18, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then18:                                        ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nvmewqeq.091) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then18.list_del.exit_crit_edge

if.then18.list_del.exit_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nvmewqeq.091, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %nvmewqeq.091 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nvmewqeq.091, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then18.list_del.exit_crit_edge
  %18 = ptrtoint ptr %nvmewqeq.091 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %nvmewqeq.091, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nvmewqeq.091, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %iflags.090) #11
  call void @lpfc_nvmet_xmt_fcp_op_cmp(ptr noundef %phba, ptr noundef %nvmewqeq.091, ptr noundef nonnull %wcqe)
  br label %cleanup

if.else:                                          ; preds = %for.body
  %call.i.i79 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nvmewqeq.091) #11
  br i1 %call.i.i79, label %if.end.i.i82, label %if.else.list_del.exit84_crit_edge

if.else.list_del.exit84_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit84

if.end.i.i82:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i80 = getelementptr inbounds %struct.list_head, ptr %nvmewqeq.091, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i80, align 4
  %22 = ptrtoint ptr %nvmewqeq.091 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nvmewqeq.091, align 4
  %prev1.i.i.i81 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i81, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit84

list_del.exit84:                                  ; preds = %if.end.i.i82, %if.else.list_del.exit84_crit_edge
  %26 = ptrtoint ptr %nvmewqeq.091 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %nvmewqeq.091, align 4
  %prev.i83 = getelementptr inbounds %struct.list_head, ptr %nvmewqeq.091, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i83, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %iflags.090) #11
  call void @lpfc_nvmet_xmt_fcp_op_cmp(ptr noundef %phba, ptr noundef %nvmewqeq.091, ptr noundef nonnull %wcqe)
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring_lock) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit84, %if.then.for.inc_crit_edge
  %iflags.1 = phi i32 [ %iflags.090, %if.then.for.inc_crit_edge ], [ %call32, %list_del.exit84 ]
  %cmp14.not = icmp eq ptr %next_nvmewqeq.093, %wqfull_list
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %iflags.0.lcssa = phi i32 [ %call4, %entry.for.end_crit_edge ], [ %iflags.1, %for.inc.for.end_crit_edge ]
  %tobool43.not = icmp eq ptr %ctxp, null
  br i1 %tobool43.not, label %if.then44, label %for.end.if.end48_crit_edge

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %q_flag = getelementptr inbounds %struct.lpfc_queue, ptr %wq, i32 0, i32 31
  %28 = ptrtoint ptr %q_flag to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %q_flag, align 1
  %30 = and i8 %29, -2
  store i8 %30, ptr %q_flag, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %for.end.if.end48_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %iflags.0.lcssa) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %list_del.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wcqe) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_fc_unregister_targetport(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_nvmet_handle_lsreq(ptr noundef %phba, ptr noundef %axchg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %0 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %payload1 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 18
  %4 = ptrtoint ptr %payload1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %payload1, align 4
  %rcv_ls_req_in = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_ls_req_in, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_ls_req_in, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_ls_req_in, ptr %rcv_ls_req_in, i32 1, ptr elementtype(i32) %rcv_ls_req_in) #11, !srcloc !421
  %7 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %targetport, align 8
  %ndlp = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 3
  %9 = ptrtoint ptr %ndlp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndlp, align 4
  %ls_rsp = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 5
  %11 = ptrtoint ptr %payload1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %payload1, align 4
  %size = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %axchg, i32 0, i32 12
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %size, align 2
  %conv = zext i16 %14 to i32
  %call = tail call i32 @nvmet_fc_rcv_ls_req(ptr noundef %8, ptr noundef %10, ptr noundef %ls_rsp, ptr noundef %12, i32 noundef %conv) #11
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %15 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pport, align 8
  %tobool.not = icmp eq ptr %16, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %16, i32 0, i32 51
  %cfg_log_verbose5 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool.not, ptr %cfg_log_verbose5, ptr %cfg_log_verbose
  %17 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %18 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %20 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brd_no, align 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %size, align 2
  %conv9 = zext i16 %23 to i32
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %5, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 1
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %add.ptr10 = getelementptr i32, ptr %5, i32 2
  %28 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr10, align 4
  %add.ptr11 = getelementptr i32, ptr %5, i32 3
  %30 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr11, align 4
  %add.ptr12 = getelementptr i32, ptr %5, i32 4
  %32 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr12, align 4
  %add.ptr13 = getelementptr i32, ptr %5, i32 5
  %34 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr13, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %21, i32 noundef %conv9, i32 noundef %call, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #14
  br label %if.end25

if.else:                                          ; preds = %entry
  %36 = ptrtoint ptr %cfg_log_verbose5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg_log_verbose5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool15.not = icmp eq i32 %37, 0
  br i1 %tobool15.not, label %if.then16, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no17 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %38 = ptrtoint ptr %brd_no17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %brd_no17, align 4
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %size, align 2
  %conv19 = zext i16 %41 to i32
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %5, align 4
  %add.ptr20 = getelementptr i32, ptr %5, i32 1
  %44 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr20, align 4
  %add.ptr21 = getelementptr i32, ptr %5, i32 2
  %46 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr21, align 4
  %add.ptr22 = getelementptr i32, ptr %5, i32 3
  %48 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr22, align 4
  %add.ptr23 = getelementptr i32, ptr %5, i32 4
  %50 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr23, align 4
  %add.ptr24 = getelementptr i32, ptr %5, i32 5
  %52 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr24, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.61, i32 noundef %39, i32 noundef %conv19, i32 noundef %call, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %if.else.if.end25_crit_edge, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %rcv_ls_req_out = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %3, i32 0, i32 4
  %call.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_ls_req_out, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_ls_req_out, i32 1, i32 3, i32 1) #11
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_ls_req_out, ptr %rcv_ls_req_out, i32 1, ptr elementtype(i32) %rcv_ls_req_out) #11, !srcloc !421
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %rcv_ls_req_drop = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %3, i32 0, i32 5
  %call.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_ls_req_drop, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_ls_req_drop, i32 1, i32 3, i32 1) #11
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_ls_req_drop, ptr %rcv_ls_req_drop, i32 1, ptr elementtype(i32) %rcv_ls_req_drop) #11, !srcloc !421
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then29
  %retval.0 = phi i32 [ 1, %if.end30 ], [ 0, %if.then29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_fc_rcv_ls_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvmet_unsol_fcp_event(ptr noundef %phba, i32 noundef %idx, ptr noundef %nvmebuf, i64 noundef %isr_timestamp, i8 noundef zeroext %cqflag) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nvmebuf, null
  br i1 %tobool.not, label %do.body, label %if.end15

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %2 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %3) #14
  br label %return

if.end15:                                         ; preds = %entry
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 74
  %4 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp17 = icmp eq i8 %5, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false.i

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_rq_buf_free(ptr noundef %phba, ptr noundef nonnull %nvmebuf) #11
  br label %return

lor.lhs.false.i:                                  ; preds = %if.end15
  %targetport.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %6 = ptrtoint ptr %targetport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %targetport.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.then18.critedge.i, label %if.end20.i

if.then18.critedge.i:                             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev.c506.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev.c506.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev.c506.i, align 4
  %dev.c507.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no.c508.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no.c508.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no.c508.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev.c507.i, ptr noundef nonnull @.str.167, i32 noundef %11) #14
  tail call void @lpfc_rq_buf_free(ptr noundef %phba, ptr noundef nonnull %nvmebuf) #11
  br label %return

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !411) #11
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %nvmet_ctx_info.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 84
  %16 = ptrtoint ptr %nvmet_ctx_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nvmet_ctx_info.i, align 8
  %cfg_nvmet_mrq.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 112
  %18 = ptrtoint ptr %cfg_nvmet_mrq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg_nvmet_mrq.i, align 4
  %mul.i = mul i32 %19, %15
  %add.i = add i32 %mul.i, %idx
  %add.ptr.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %17, i32 %add.i
  %nvmet_ctx_list_lock.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %17, i32 %add.i, i32 1
  %call26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %nvmet_ctx_list_lock.i) #11
  %nvmet_ctx_list_cnt.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %17, i32 %add.i, i32 4
  %20 = ptrtoint ptr %nvmet_ctx_list_cnt.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nvmet_ctx_list_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool31.not.i = icmp eq i16 %21, 0
  br i1 %tobool31.not.i, label %if.else44.i, label %do.body33.i

do.body33.i:                                      ; preds = %if.end20.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %add.ptr.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %add.ptr.i
  br i1 %cmp.i.not.i, label %do.body33.i.do.end42.i_crit_edge, label %if.then36.i

do.body33.i.do.end42.i_crit_edge:                 ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42.i

if.then36.i:                                      ; preds = %do.body33.i
  %call.i.i514.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #11
  br i1 %call.i.i514.i, label %if.end.i.i.i, label %if.then36.i.list_del_init.exit.i_crit_edge

if.then36.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then36.i.list_del_init.exit.i_crit_edge
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %23, ptr %23, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %23, ptr %prev.i3.i.i, align 4
  br label %do.end42.i

do.end42.i:                                       ; preds = %list_del_init.exit.i, %do.body33.i.do.end42.i_crit_edge
  %ctx_buf.0.i = phi ptr [ null, %do.body33.i.do.end42.i_crit_edge ], [ %23, %list_del_init.exit.i ]
  %32 = ptrtoint ptr %nvmet_ctx_list_cnt.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nvmet_ctx_list_cnt.i, align 4
  %dec.i = add i16 %33, -1
  store i16 %dec.i, ptr %nvmet_ctx_list_cnt.i, align 4
  br label %if.end46.i

if.else44.i:                                      ; preds = %if.end20.i
  %nvmet_ctx_start_cpu.i.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %17, i32 %add.i, i32 3
  %34 = ptrtoint ptr %nvmet_ctx_start_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nvmet_ctx_start_cpu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.else44.i.if.end.i.i_crit_edge

if.else44.i.if.end.i.i_crit_edge:                 ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #13
  %nvmet_ctx_next_cpu.i.i = getelementptr %struct.lpfc_nvmet_ctx_info, ptr %17, i32 %add.i, i32 2
  %36 = ptrtoint ptr %nvmet_ctx_next_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nvmet_ctx_next_cpu.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.else44.i.if.end.i.i_crit_edge
  %get_infop.0.i.i = phi ptr [ %37, %if.else.i.i ], [ %35, %if.else44.i.if.end.i.i_crit_edge ]
  %num_possible_cpu.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 114
  %38 = ptrtoint ptr %num_possible_cpu.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_possible_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp51.not.i.i = icmp eq i16 %39, 0
  br i1 %cmp51.not.i.i, label %if.end.i.i.if.end46.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.if.end46.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.054.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %get_infop.152.i.i = phi ptr [ %get_infop.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %get_infop.0.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %cmp3.i.i = icmp eq ptr %get_infop.152.i.i, %add.ptr.i
  br i1 %cmp3.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end7.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end7.i.i:                                      ; preds = %for.body.i.i
  %nvmet_ctx_list_lock.i.i = getelementptr inbounds %struct.lpfc_nvmet_ctx_info, ptr %get_infop.152.i.i, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %nvmet_ctx_list_lock.i.i) #11
  %nvmet_ctx_list_cnt.i.i = getelementptr inbounds %struct.lpfc_nvmet_ctx_info, ptr %get_infop.152.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %nvmet_ctx_list_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nvmet_ctx_list_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool8.not.i.i = icmp eq i16 %41, 0
  br i1 %tobool8.not.i.i, label %if.end23.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  %nvmet_ctx_list_cnt.i.i.le = getelementptr inbounds %struct.lpfc_nvmet_ctx_info, ptr %get_infop.152.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %get_infop.152.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %get_infop.152.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %43, %get_infop.152.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then9.i.i.list_splice_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.then9.i.i.list_splice_init.exit.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %get_infop.152.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i, ptr %prev3.i.i.i.i, align 4
  store ptr %43, ptr %add.ptr.i, align 4
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %45, ptr %47, align 4
  %prev6.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev6.i.i.i.i, align 4
  %51 = ptrtoint ptr %get_infop.152.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %get_infop.152.i.i, ptr %get_infop.152.i.i, align 4
  store ptr %get_infop.152.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_init.exit.i.i

list_splice_init.exit.i.i:                        ; preds = %if.then.i.i.i, %if.then9.i.i.list_splice_init.exit.i.i_crit_edge
  %52 = ptrtoint ptr %nvmet_ctx_list_cnt.i.i.le to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %nvmet_ctx_list_cnt.i.i.le, align 4
  %sub.i.i = add i16 %53, -1
  %54 = ptrtoint ptr %nvmet_ctx_list_cnt.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %sub.i.i, ptr %nvmet_ctx_list_cnt.i, align 4
  store i16 0, ptr %nvmet_ctx_list_cnt.i.i.le, align 4
  tail call void @_raw_spin_unlock(ptr noundef %nvmet_ctx_list_lock.i.i) #11
  %55 = ptrtoint ptr %nvmet_ctx_start_cpu.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %get_infop.152.i.i, ptr %nvmet_ctx_start_cpu.i.i, align 4
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %add.ptr.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %57, %add.ptr.i
  br i1 %cmp.i.not.i.i, label %list_splice_init.exit.i.i.if.end46.i_crit_edge, label %if.then20.i.i

list_splice_init.exit.i.i.if.end46.i_crit_edge:   ; preds = %list_splice_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then20.i.i:                                    ; preds = %list_splice_init.exit.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %57) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then20.i.i.list_del_init.exit.i.i_crit_edge

if.then20.i.i.list_del_init.exit.i.i_crit_edge:   ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i.i, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then20.i.i.list_del_init.exit.i.i_crit_edge
  %64 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %57, ptr %57, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %57, ptr %prev.i3.i.i.i, align 4
  br label %if.end46.i

if.end23.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %nvmet_ctx_list_lock.i.i) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end23.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %get_infop.2.in.i.i = getelementptr inbounds %struct.lpfc_nvmet_ctx_info, ptr %get_infop.152.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %get_infop.2.in.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %get_infop.2.i.i = load ptr, ptr %get_infop.2.in.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.054.i.i, 1
  %67 = ptrtoint ptr %num_possible_cpu.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %num_possible_cpu.i.i, align 8
  %conv.i515.i = zext i16 %68 to i32
  %cmp.i516.i = icmp ult i32 %inc.i.i, %conv.i515.i
  br i1 %cmp.i516.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end46.i_crit_edge

for.inc.i.i.if.end46.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end46.i:                                       ; preds = %for.inc.i.i.if.end46.i_crit_edge, %list_del_init.exit.i.i, %list_splice_init.exit.i.i.if.end46.i_crit_edge, %if.end.i.i.if.end46.i_crit_edge, %do.end42.i
  %ctx_buf.1.i = phi ptr [ %ctx_buf.0.i, %do.end42.i ], [ null, %list_splice_init.exit.i.i.if.end46.i_crit_edge ], [ %57, %list_del_init.exit.i.i ], [ null, %if.end.i.i.if.end46.i_crit_edge ], [ null, %for.inc.i.i.if.end46.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %nvmet_ctx_list_lock.i, i32 noundef %call26.i) #11
  %virt.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %nvmebuf, i32 0, i32 1
  %69 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %virt.i, align 4
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %fh_ox_id.i, align 4
  %bytes_recv.i = getelementptr inbounds %struct.rqb_dmabuf, ptr %nvmebuf, i32 0, i32 3
  %73 = ptrtoint ptr %bytes_recv.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %bytes_recv.i, align 2
  %hdwqstat_on.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 348
  %75 = ptrtoint ptr %hdwqstat_on.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hdwqstat_on.i, align 8
  %77 = and i16 %76, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool53.not.i = icmp eq i16 %77, 0
  br i1 %tobool53.not.i, label %if.end46.i.if.end138.i_crit_edge, label %do.body56.i

if.end46.i.if.end138.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138.i

do.body56.i:                                      ; preds = %if.end46.i
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !424
  %c_stat.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 119
  %79 = ptrtoint ptr %c_stat.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %c_stat.i, align 8
  %rcv_io.i = getelementptr inbounds %struct.lpfc_hdwq_stat, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %rcv_io.i to i32
  %82 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i, align 4
  %add79.i = add i32 %85, %81
  %86 = inttoptr i32 %add79.i to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %add80.i = add i32 %88, 1
  store i32 %add80.i, ptr %86, align 4
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !425
  %and.i.i.i = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool91.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool91.not.i, label %if.then95.i, label %do.body56.i.do.end98.i_crit_edge, !prof !422

do.body56.i.do.end98.i_crit_edge:                 ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end98.i

if.then95.i:                                      ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end98.i

do.end98.i:                                       ; preds = %if.then95.i, %do.body56.i.do.end98.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %78) #11, !srcloc !426
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %idx)
  %cmp105.not.i = icmp eq i32 %15, %idx
  br i1 %cmp105.not.i, label %do.end98.i.if.end138.i_crit_edge, label %do.body108.i

do.end98.i.if.end138.i_crit_edge:                 ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138.i

do.body108.i:                                     ; preds = %do.end98.i
  %pport110.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %90 = ptrtoint ptr %pport110.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pport110.i, align 8
  %tobool111.not.i = icmp eq ptr %91, null
  %cfg_log_verbose114.i = getelementptr inbounds %struct.lpfc_vport, ptr %91, i32 0, i32 51
  %cfg_log_verbose116.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond118.in.i = select i1 %tobool111.not.i, ptr %cfg_log_verbose116.i, ptr %cfg_log_verbose114.i
  %92 = ptrtoint ptr %cond118.in.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %cond118.i = load i32, ptr %cond118.in.i, align 4
  %and119.i = and i32 %cond118.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i)
  %tobool120.not.i = icmp eq i32 %and119.i, 0
  br i1 %tobool120.not.i, label %if.else128.i, label %do.end124.i

do.end124.i:                                      ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev125.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %93 = ptrtoint ptr %pcidev125.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pcidev125.i, align 4
  %dev126.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %brd_no127.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %95 = ptrtoint ptr %brd_no127.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %brd_no127.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev126.i, ptr noundef nonnull @.str.170, i32 noundef %96, i32 noundef %15, i32 noundef %idx) #14
  br label %if.end138.i

if.else128.i:                                     ; preds = %do.body108.i
  %97 = ptrtoint ptr %cfg_log_verbose116.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cfg_log_verbose116.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool130.not.i = icmp eq i32 %98, 0
  br i1 %tobool130.not.i, label %if.then131.i, label %if.else128.i.if.end138.i_crit_edge

if.else128.i.if.end138.i_crit_edge:               ; preds = %if.else128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138.i

if.then131.i:                                     ; preds = %if.else128.i
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no132.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %99 = ptrtoint ptr %brd_no132.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %brd_no132.i, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.170, i32 noundef %100, i32 noundef %15, i32 noundef %idx) #11
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.then131.i, %if.else128.i.if.end138.i_crit_edge, %do.end124.i, %do.end98.i.if.end138.i_crit_edge, %if.end46.i.if.end138.i_crit_edge
  %nvmeio_trc_on.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 304
  %101 = ptrtoint ptr %nvmeio_trc_on.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %nvmeio_trc_on.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool139.not.i = icmp eq i16 %102, 0
  br i1 %tobool139.not.i, label %if.end138.i.if.end145.i_crit_edge, label %if.then140.i

if.end138.i.if.end145.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145.i

if.then140.i:                                     ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cpu.i, align 4
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %phba, ptr noundef nonnull @.str.172, i16 noundef zeroext %72, i16 noundef zeroext %74, i32 noundef %104) #11
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then140.i, %if.end138.i.if.end145.i_crit_edge
  %105 = ptrtoint ptr %targetport.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %targetport.i, align 8
  %private.i = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %private.i, align 8
  %tobool147.not.i = icmp eq ptr %ctx_buf.1.i, null
  br i1 %tobool147.not.i, label %do.body150.i, label %if.end178.i

do.body150.i:                                     ; preds = %if.end145.i
  %nvmet_io_wait_lock.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 111
  %call158.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %nvmet_io_wait_lock.i) #11
  %lpfc_nvmet_io_wait_list.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 83
  %prev.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 83, i32 1
  %109 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %prev.i.i, align 4
  %call.i.i517.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %nvmebuf, ptr noundef %110, ptr noundef %lpfc_nvmet_io_wait_list.i) #11
  br i1 %call.i.i517.i, label %if.end.i.i518.i, label %do.body150.i.list_add_tail.exit.i_crit_edge

do.body150.i.list_add_tail.exit.i_crit_edge:      ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i518.i:                                  ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %nvmebuf, ptr %prev.i.i, align 4
  %112 = ptrtoint ptr %nvmebuf to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %lpfc_nvmet_io_wait_list.i, ptr %nvmebuf, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %nvmebuf, i32 0, i32 1
  %113 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %110, ptr %prev3.i.i.i, align 4
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %nvmebuf, ptr %110, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i518.i, %do.body150.i.list_add_tail.exit.i_crit_edge
  %nvmet_io_wait_cnt.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 70
  %115 = ptrtoint ptr %nvmet_io_wait_cnt.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %nvmet_io_wait_cnt.i, align 2
  %inc.i = add i16 %116, 1
  store i16 %inc.i, ptr %nvmet_io_wait_cnt.i, align 2
  %nvmet_io_wait_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 71
  %117 = ptrtoint ptr %nvmet_io_wait_total.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %nvmet_io_wait_total.i, align 4
  %inc168.i = add i16 %118, 1
  store i16 %inc168.i, ptr %nvmet_io_wait_total.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %nvmet_io_wait_lock.i, i32 noundef %call158.i) #11
  %idx171.i = getelementptr inbounds %struct.rqb_dmabuf, ptr %nvmebuf, i32 0, i32 4
  %119 = ptrtoint ptr %idx171.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %idx171.i, align 4
  %conv172.i = zext i16 %120 to i32
  %nvmet_mrq_hdr.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 30
  %121 = ptrtoint ptr %nvmet_mrq_hdr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %nvmet_mrq_hdr.i, align 8
  %arrayidx174.i = getelementptr ptr, ptr %122, i32 %conv172.i
  %123 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx174.i, align 4
  %nvmet_mrq_data.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 31
  %125 = ptrtoint ptr %nvmet_mrq_data.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %nvmet_mrq_data.i, align 4
  %arrayidx176.i = getelementptr ptr, ptr %126, i32 %conv172.i
  %127 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx176.i, align 4
  %call177.i = tail call i32 @lpfc_post_rq_buffer(ptr noundef %phba, ptr noundef %124, ptr noundef %128, i32 noundef 1, i32 noundef %conv172.i) #11
  %defer_ctx.i = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %108, i32 0, i32 36
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %defer_ctx.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %defer_ctx.i, i32 1, i32 3, i32 1) #11
  %129 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %defer_ctx.i, ptr %defer_ctx.i, i32 1, ptr elementtype(i32) %defer_ctx.i) #11, !srcloc !421
  br label %return

if.end178.i:                                      ; preds = %if.end145.i
  %fh_s_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %70, i32 0, i32 3
  %130 = ptrtoint ptr %fh_s_id.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %fh_s_id.i, align 1
  %conv180.i = zext i8 %131 to i32
  %shl.i = shl nuw nsw i32 %conv180.i, 16
  %arrayidx182.i = getelementptr %struct.fc_frame_header, ptr %70, i32 0, i32 3, i32 1
  %132 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx182.i, align 1
  %conv183.i = zext i8 %133 to i32
  %shl184.i = shl nuw nsw i32 %conv183.i, 8
  %or.i = or i32 %shl184.i, %shl.i
  %arrayidx186.i = getelementptr %struct.fc_frame_header, ptr %70, i32 0, i32 3, i32 2
  %134 = ptrtoint ptr %arrayidx186.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx186.i, align 1
  %conv187.i = zext i8 %135 to i32
  %or188.i = or i32 %or.i, %conv187.i
  %context.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %ctx_buf.1.i, i32 0, i32 1
  %136 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %context.i, align 4
  %t_active_list_lock.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 81
  %call198.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %t_active_list_lock.i) #11
  %list203.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 1
  %t_active_ctx_list.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 82
  %prev.i519.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 82, i32 1
  %138 = ptrtoint ptr %prev.i519.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %prev.i519.i, align 4
  %call.i.i520.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list203.i, ptr noundef %139, ptr noundef %t_active_ctx_list.i) #11
  br i1 %call.i.i520.i, label %if.end.i.i522.i, label %if.end178.i.list_add_tail.exit523.i_crit_edge

if.end178.i.list_add_tail.exit523.i_crit_edge:    ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit523.i

if.end.i.i522.i:                                  ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %prev.i519.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %list203.i, ptr %prev.i519.i, align 4
  %141 = ptrtoint ptr %list203.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %t_active_ctx_list.i, ptr %list203.i, align 4
  %prev3.i.i521.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 1, i32 1
  %142 = ptrtoint ptr %prev3.i.i521.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %139, ptr %prev3.i.i521.i, align 4
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %list203.i, ptr %139, align 4
  br label %list_add_tail.exit523.i

list_add_tail.exit523.i:                          ; preds = %if.end.i.i522.i, %if.end178.i.list_add_tail.exit523.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %t_active_list_lock.i, i32 noundef %call198.i) #11
  %state.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 16
  %144 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %145)
  %cmp208.not.i = icmp eq i16 %145, 255
  br i1 %cmp208.not.i, label %list_add_tail.exit523.i.if.end255.i_crit_edge, label %do.body211.i

list_add_tail.exit523.i.if.end255.i_crit_edge:    ; preds = %list_add_tail.exit523.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255.i

do.body211.i:                                     ; preds = %list_add_tail.exit523.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev232.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %146 = ptrtoint ptr %pcidev232.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pcidev232.i, align 4
  %dev233.i = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  %brd_no234.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %148 = ptrtoint ptr %brd_no234.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %brd_no234.i, align 4
  %150 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %state.i, align 2
  %conv236.i = zext i16 %151 to i32
  %entry_cnt.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 13
  %152 = ptrtoint ptr %entry_cnt.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %entry_cnt.i, align 8
  %conv237.i = zext i16 %153 to i32
  %oxid238.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 11
  %154 = ptrtoint ptr %oxid238.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %oxid238.i, align 4
  %conv239.i = zext i16 %155 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev233.i, ptr noundef nonnull @.str.174, i32 noundef %149, i32 noundef %conv236.i, i32 noundef %conv237.i, i32 noundef %conv239.i) #14
  br label %if.end255.i

if.end255.i:                                      ; preds = %do.body211.i, %list_add_tail.exit523.i.if.end255.i_crit_edge
  %wqeq.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 6
  %156 = ptrtoint ptr %wqeq.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %wqeq.i, align 8
  %offset.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 10
  %157 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %offset.i, align 8
  %phba256.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 2
  %158 = ptrtoint ptr %phba256.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %phba, ptr %phba256.i, align 8
  %size258.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 12
  %159 = ptrtoint ptr %size258.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %74, ptr %size258.i, align 2
  %oxid260.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 11
  %160 = ptrtoint ptr %oxid260.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %72, ptr %oxid260.i, align 4
  %sid261.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 9
  %161 = ptrtoint ptr %sid261.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %or188.i, ptr %sid261.i, align 4
  %conv262.i = trunc i32 %idx to i16
  %idx263.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 15
  %162 = ptrtoint ptr %idx263.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv262.i, ptr %idx263.i, align 4
  %163 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 4, ptr %state.i, align 2
  %entry_cnt265.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 13
  %164 = ptrtoint ptr %entry_cnt265.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 1, ptr %entry_cnt265.i, align 8
  %flag.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 17
  %165 = ptrtoint ptr %flag.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %flag.i, align 8
  %ctxbuf.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 20
  %166 = ptrtoint ptr %ctxbuf.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %ctx_buf.1.i, ptr %ctxbuf.i, align 4
  %rqb_buffer.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 19
  %167 = ptrtoint ptr %rqb_buffer.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %nvmebuf, ptr %rqb_buffer.i, align 8
  %hdwq.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 21
  %168 = ptrtoint ptr %hdwq.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %hdwq.i, align 8
  %ctxlock.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %ctxlock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @lpfc_nvmet_unsol_fcp_buffer.__key, i16 noundef signext 3) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %isr_timestamp)
  %tobool270.not.i = icmp eq i64 %isr_timestamp, 0
  br i1 %tobool270.not.i, label %if.end255.i.if.end272.i_crit_edge, label %if.then271.i

if.end255.i.if.end272.i_crit_edge:                ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end272.i

if.then271.i:                                     ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #13
  %ts_isr_cmd.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 22
  %169 = ptrtoint ptr %ts_isr_cmd.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %isr_timestamp, ptr %ts_isr_cmd.i, align 8
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then271.i, %if.end255.i.if.end272.i_crit_edge
  %ts_cmd_nvme.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %137, i32 0, i32 23
  %rcv_fcp_cmd_in.i = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %108, i32 0, i32 14
  %170 = call ptr @memset(ptr %ts_cmd_nvme.i, i32 0, i32 72)
  %call.i.i509.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_in.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_fcp_cmd_in.i, i32 1, i32 3, i32 1) #11
  %171 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_fcp_cmd_in.i, ptr %rcv_fcp_cmd_in.i, i32 1, ptr elementtype(i32) %rcv_fcp_cmd_in.i) #11, !srcloc !421
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cqflag)
  %tobool273.not.i = icmp eq i8 %cqflag, 0
  br i1 %tobool273.not.i, label %if.then274.i, label %if.end275.i

if.then274.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @lpfc_nvmet_process_rcv_fcp_req(ptr noundef nonnull %ctx_buf.1.i) #11
  br label %return

if.end275.i:                                      ; preds = %if.end272.i
  %wq.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 26
  %172 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %wq.i, align 8
  %defer_work.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %ctx_buf.1.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %173, ptr noundef %defer_work.i) #11
  br i1 %call.i.i, label %if.end275.i.return_crit_edge, label %if.then277.i

if.end275.i.return_crit_edge:                     ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then277.i:                                     ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #13
  %rcv_fcp_cmd_drop.i = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %108, i32 0, i32 16
  %call.i.i510.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_drop.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_fcp_cmd_drop.i, i32 1, i32 3, i32 1) #11
  %174 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_fcp_cmd_drop.i, ptr %rcv_fcp_cmd_drop.i, i32 1, ptr elementtype(i32) %rcv_fcp_cmd_drop.i) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev299.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %175 = ptrtoint ptr %pcidev299.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pcidev299.i, align 4
  %dev300.i = getelementptr inbounds %struct.pci_dev, ptr %176, i32 0, i32 44
  %brd_no301.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %177 = ptrtoint ptr %brd_no301.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %brd_no301.i, align 4
  %179 = ptrtoint ptr %oxid260.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %oxid260.i, align 4
  %conv303.i = zext i16 %180 to i32
  %call.i.i511.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rcv_fcp_cmd_in.i, i32 noundef 4) #11
  %181 = ptrtoint ptr %rcv_fcp_cmd_in.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %rcv_fcp_cmd_in.i, align 4
  %rcv_fcp_cmd_out.i = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %108, i32 0, i32 15
  %call.i.i512.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rcv_fcp_cmd_out.i, i32 noundef 4) #11
  %183 = ptrtoint ptr %rcv_fcp_cmd_out.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %rcv_fcp_cmd_out.i, align 4
  %xmt_fcp_release.i = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %108, i32 0, i32 18
  %call.i.i513.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %xmt_fcp_release.i, i32 noundef 4) #11
  %185 = ptrtoint ptr %xmt_fcp_release.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %xmt_fcp_release.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev300.i, ptr noundef nonnull @.str.177, i32 noundef %178, i32 noundef %conv303.i, i32 noundef %182, i32 noundef %184, i32 noundef %186) #14
  %call334.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock.i) #11
  tail call fastcc void @lpfc_nvmet_defer_release(ptr noundef %phba, ptr noundef %137) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock.i, i32 noundef %call334.i) #11
  tail call fastcc void @lpfc_nvmet_unsol_fcp_issue_abort(ptr noundef %phba, ptr noundef %137, i32 noundef %or188.i, i16 noundef zeroext %72) #11
  br label %return

return:                                           ; preds = %if.then277.i, %if.end275.i.return_crit_edge, %if.then274.i, %list_add_tail.exit.i, %if.then18.critedge.i, %if.then19, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_sli_get_iocbq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpfc_nvmet_unsol_issue_abort(ptr noundef %phba, ptr noundef %ctxp, i32 noundef %sid, i16 noundef zeroext %xri) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %3 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %5 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %brd_no, align 4
  %conv = zext i16 %xri to i32
  %wqeq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 6
  %7 = ptrtoint ptr %wqeq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wqeq, align 8
  %sli4_xritag = getelementptr inbounds %struct.lpfc_iocbq, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %sli4_xritag to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sli4_xritag, align 4
  %conv5 = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.222, i32 noundef %6, i32 noundef %sid, i32 noundef %conv, i32 noundef %conv5) #14
  br label %if.end14

if.else:                                          ; preds = %entry
  %11 = ptrtoint ptr %cfg_log_verbose2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg_log_verbose2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %if.then8, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no9 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %13 = ptrtoint ptr %brd_no9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %brd_no9, align 4
  %conv10 = zext i16 %xri to i32
  %wqeq11 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 6
  %15 = ptrtoint ptr %wqeq11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wqeq11, align 8
  %sli4_xritag12 = getelementptr inbounds %struct.lpfc_iocbq, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %sli4_xritag12 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sli4_xritag12, align 4
  %conv13 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.222, i32 noundef %14, i32 noundef %sid, i32 noundef %conv10, i32 noundef %conv13) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.else.if.end14_crit_edge, %do.end
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 74
  %19 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not = icmp eq i8 %20, 0
  br i1 %tobool18.not, label %if.end14.if.end22_crit_edge, label %land.lhs.true

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end14
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %21 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %targetport, align 8
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %land.lhs.true.if.end22_crit_edge, label %if.then20

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %tgtp.0 = phi ptr [ %24, %if.then20 ], [ null, %land.lhs.true.if.end22_crit_edge ], [ null, %if.end14.if.end22_crit_edge ]
  %25 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pport, align 8
  %call = tail call ptr @lpfc_findnode_did(ptr noundef %26, i32 noundef %sid) #11
  %tobool24.not = icmp eq ptr %call, null
  br i1 %tobool24.not, label %if.end22.if.then32_crit_edge, label %lor.lhs.false

if.end22.if.then32_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end22
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 11
  %27 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nlp_state, align 2
  %29 = and i16 %28, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %29)
  %switch = icmp eq i16 %29, 6
  br i1 %switch, label %if.end83, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end22.if.then32_crit_edge
  %tobool33.not = icmp eq ptr %tgtp.0, null
  br i1 %tobool33.not, label %if.then32.do.body36_crit_edge, label %if.then34

if.then32.do.body36_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_abort_rsp_error = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %tgtp.0, i32 0, i32 35
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp_error, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_rsp_error, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_rsp_error, ptr %xmt_abort_rsp_error, i32 1, ptr elementtype(i32) %xmt_abort_rsp_error) #11, !srcloc !421
  br label %do.body36

do.body36:                                        ; preds = %if.then34, %if.then32.do.body36_crit_edge
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev57 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %31 = ptrtoint ptr %pcidev57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcidev57, align 4
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %brd_no59 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %33 = ptrtoint ptr %brd_no59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %brd_no59, align 4
  br i1 %tobool24.not, label %do.body36.cond.end65_crit_edge, label %cond.true61

do.body36.cond.end65_crit_edge:                   ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end65

cond.true61:                                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %nlp_state62 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 11
  %35 = ptrtoint ptr %nlp_state62 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %nlp_state62, align 2
  %conv63 = zext i16 %36 to i32
  br label %cond.end65

cond.end65:                                       ; preds = %cond.true61, %do.body36.cond.end65_crit_edge
  %cond66 = phi i32 [ %conv63, %cond.true61 ], [ 9, %do.body36.cond.end65_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev58, ptr noundef nonnull @.str.225, i32 noundef %34, i32 noundef %cond66) #14
  br label %cleanup

if.end83:                                         ; preds = %lor.lhs.false
  %wqeq84 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %ctxp, i32 0, i32 6
  %37 = ptrtoint ptr %wqeq84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wqeq84, align 8
  %wqe = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 10
  %39 = call ptr @memset(ptr %wqe, i32 0, i32 64)
  %wge_ctl = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 10, i32 0, i32 5
  %40 = ptrtoint ptr %wge_ctl to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -2130706304, ptr %wge_ctl, align 4
  %rpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 88
  %41 = ptrtoint ptr %rpi_ids to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rpi_ids, align 4
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 10
  %43 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %nlp_rpi, align 4
  %idxprom = zext i16 %44 to i32
  %arrayidx = getelementptr i16, ptr %42, i32 %idxprom
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx, align 2
  %conv112 = zext i16 %46 to i32
  %shl = shl nuw i32 %conv112, 16
  %wqe_com = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 10, i32 0, i32 6
  %sli4_xritag118 = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 5
  %47 = ptrtoint ptr %sli4_xritag118 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %sli4_xritag118, align 4
  %conv119 = zext i16 %48 to i32
  %or125 = or i32 %shl, %conv119
  %49 = ptrtoint ptr %wqe_com to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or125, ptr %wqe_com, align 4
  %word7 = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 10, i32 0, i32 7
  %50 = ptrtoint ptr %word7 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 164352, ptr %word7, align 4
  %iotag = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 3
  %51 = ptrtoint ptr %iotag to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %iotag, align 8
  %conv151 = zext i16 %52 to i32
  %abort_tag = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 10, i32 0, i32 8
  %53 = ptrtoint ptr %abort_tag to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv151, ptr %abort_tag, align 4
  %word9 = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 10, i32 0, i32 9
  %conv162 = zext i16 %xri to i32
  %shl164 = shl nuw i32 %conv162, 16
  %or168 = or i32 %shl164, %conv151
  %54 = ptrtoint ptr %word9 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or168, ptr %word9, align 4
  %word10 = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 10, i32 0, i32 10
  %55 = ptrtoint ptr %word10 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 256, ptr %word10, align 4
  %word11 = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 10, i32 0, i32 11
  %56 = ptrtoint ptr %word11 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -65528, ptr %word11, align 4
  %57 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pport, align 8
  %vport = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 17
  %59 = ptrtoint ptr %vport to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %vport, align 4
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 18
  %60 = ptrtoint ptr %context1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call, ptr %context1, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 19
  %61 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ctxp, ptr %context2, align 4
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 20
  %62 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %context3, align 8
  %rsvd2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 12
  %63 = ptrtoint ptr %rsvd2 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %rsvd2, align 8
  %ulpCommand = getelementptr inbounds %struct.lpfc_iocbq, ptr %38, i32 0, i32 11, i32 2
  %64 = ptrtoint ptr %ulpCommand to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load = load i32, ptr %ulpCommand, align 4
  %bf.clear = and i32 %bf.load, -65283
  %bf.set209 = or i32 %bf.clear, 33282
  store i32 %bf.set209, ptr %ulpCommand, align 4
  %65 = load ptr, ptr %pport, align 8
  %tobool213.not = icmp eq ptr %65, null
  %cfg_log_verbose216 = getelementptr inbounds %struct.lpfc_vport, ptr %65, i32 0, i32 51
  %cond220.in = select i1 %tobool213.not, ptr %cfg_log_verbose2, ptr %cfg_log_verbose216
  %66 = ptrtoint ptr %cond220.in to i32
  call void @__asan_load4_noabort(i32 %66)
  %cond220 = load i32, ptr %cond220.in, align 4
  %and221 = and i32 %cond220, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.else233, label %do.end226

do.end226:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev227 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %67 = ptrtoint ptr %pcidev227 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcidev227, align 4
  %dev228 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %brd_no229 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %69 = ptrtoint ptr %brd_no229 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %brd_no229, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev228, ptr noundef nonnull @.str.228, i32 noundef %70, i32 noundef %conv162, i32 noundef %conv151) #14
  br label %cleanup

if.else233:                                       ; preds = %if.end83
  %71 = ptrtoint ptr %cfg_log_verbose2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cfg_log_verbose2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool235.not = icmp eq i32 %72, 0
  br i1 %tobool235.not, label %if.then236, label %if.else233.cleanup_crit_edge

if.else233.cleanup_crit_edge:                     ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then236:                                       ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no237 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %73 = ptrtoint ptr %brd_no237 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %brd_no237, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.228, i32 noundef %74, i32 noundef %conv162, i32 noundef %conv151) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then236, %if.else233.cleanup_crit_edge, %do.end226, %cond.end65
  %retval.0 = phi i32 [ 0, %cond.end65 ], [ 1, %if.else233.cleanup_crit_edge ], [ 1, %if.then236 ], [ 1, %do.end226 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_xmt_ls_abort_cmp(ptr noundef %phba, ptr noundef %cmdwqe, ptr nocapture noundef readonly %wcqe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 19
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %parameter = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %2 = ptrtoint ptr %parameter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parameter, align 4
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 74
  %4 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %6 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private, align 8
  %xmt_ls_abort_cmpl = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %9, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_abort_cmpl, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_abort_cmpl, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_abort_cmpl, ptr %xmt_ls_abort_cmpl, i32 1, ptr elementtype(i32) %xmt_ls_abort_cmpl) #11, !srcloc !421
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %11 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pport, align 8
  %tobool1.not = icmp eq ptr %12, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %12, i32 0, i32 51
  %cfg_log_verbose3 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool1.not, ptr %cfg_log_verbose3, ptr %cfg_log_verbose
  %13 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %14 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %16 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brd_no, align 4
  %18 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wcqe, align 4
  %total_data_placed = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %20 = ptrtoint ptr %total_data_placed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_data_placed, align 4
  %word3 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %22 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %word3, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.230, i32 noundef %17, ptr noundef %1, i32 noundef %19, i32 noundef %21, i32 noundef %3, i32 noundef %23) #14
  br label %if.end15

if.else:                                          ; preds = %do.body
  %24 = ptrtoint ptr %cfg_log_verbose3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg_log_verbose3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not = icmp eq i32 %25, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no10 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %26 = ptrtoint ptr %brd_no10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brd_no10, align 4
  %28 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wcqe, align 4
  %total_data_placed12 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %30 = ptrtoint ptr %total_data_placed12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total_data_placed12, align 4
  %word313 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %32 = ptrtoint ptr %word313 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %word313, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.230, i32 noundef %27, ptr noundef %1, i32 noundef %29, i32 noundef %31, i32 noundef %3, i32 noundef %33) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.else.if.end15_crit_edge, %do.end
  %tobool18.not = icmp eq ptr %1, null
  br i1 %tobool18.not, label %do.body20, label %if.end56

do.body20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev38 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %34 = ptrtoint ptr %pcidev38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcidev38, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %brd_no40 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %36 = ptrtoint ptr %brd_no40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %brd_no40, align 4
  %38 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wcqe, align 4
  %total_data_placed42 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %40 = ptrtoint ptr %total_data_placed42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %total_data_placed42, align 4
  %word343 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %42 = ptrtoint ptr %word343 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %word343, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev39, ptr noundef nonnull @.str.233, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %3, i32 noundef %43) #14
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %cmdwqe) #11
  br label %cleanup

if.end56:                                         ; preds = %if.end15
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 16
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %45)
  %cmp58.not = icmp eq i16 %45, 2
  br i1 %cmp58.not, label %if.end56.if.end104_crit_edge, label %do.body61

if.end56.if.end104_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

do.body61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev82 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %46 = ptrtoint ptr %pcidev82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcidev82, align 4
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %brd_no84 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %48 = ptrtoint ptr %brd_no84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brd_no84, align 4
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %oxid, align 4
  %conv85 = zext i16 %51 to i32
  %52 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %state, align 2
  %conv87 = zext i16 %53 to i32
  %entry_cnt = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %entry_cnt to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %entry_cnt, align 8
  %conv88 = zext i16 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev83, ptr noundef nonnull @.str.236, i32 noundef %49, i32 noundef %conv85, i32 noundef %conv87, i32 noundef %conv88) #14
  br label %if.end104

if.end104:                                        ; preds = %do.body61, %if.end56.if.end104_crit_edge
  %56 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %context2, align 4
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 20
  %57 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %context3, align 8
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %cmdwqe) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %do.body20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvmet_invalidate_host(ptr noundef %phba, ptr noundef %ndlp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %and = and i32 %cond, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %3 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %5 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %6, ptr noundef %ndlp) #14
  br label %if.end9

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %cfg_log_verbose2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfg_log_verbose2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.then7, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no8 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %9 = ptrtoint ptr %brd_no8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brd_no8, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.73, i32 noundef %10, ptr noundef %ndlp) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else.if.end9_crit_edge, %do.end
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %11 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 8
  %state = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %14, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #11
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %state, align 4
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %fc4_xpt_flags = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 37
  %16 = ptrtoint ptr %fc4_xpt_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fc4_xpt_flags, align 4
  %and12 = and i32 %17, 16
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool14.not = icmp eq i32 %and12, 0
  br i1 %tobool14.not, label %do.body16, label %if.end46

do.body16:                                        ; preds = %if.end9
  %18 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pport, align 8
  %tobool19.not = icmp eq ptr %19, null
  %cfg_log_verbose22 = getelementptr inbounds %struct.lpfc_vport, ptr %19, i32 0, i32 51
  %cond26.in = select i1 %tobool19.not, ptr %cfg_log_verbose2, ptr %cfg_log_verbose22
  %20 = ptrtoint ptr %cond26.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond26 = load i32, ptr %cond26.in, align 4
  %and27 = and i32 %cond26, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else36, label %do.end32

do.end32:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev33 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %21 = ptrtoint ptr %pcidev33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcidev33, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %brd_no35 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %23 = ptrtoint ptr %brd_no35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brd_no35, align 4
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %25 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nlp_DID, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev34, ptr noundef nonnull @.str.76, i32 noundef %24, ptr noundef %ndlp, i32 noundef %26) #14
  br label %cleanup

if.else36:                                        ; preds = %do.body16
  %27 = ptrtoint ptr %cfg_log_verbose2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cfg_log_verbose2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool38.not = icmp eq i32 %28, 0
  br i1 %tobool38.not, label %if.then39, label %if.else36.cleanup_crit_edge

if.else36.cleanup_crit_edge:                      ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no40 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %29 = ptrtoint ptr %brd_no40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brd_no40, align 4
  %nlp_DID41 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %31 = ptrtoint ptr %nlp_DID41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nlp_DID41, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.76, i32 noundef %30, ptr noundef %ndlp, i32 noundef %32) #11
  br label %cleanup

if.end46:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %targetport, align 8
  tail call void @nvmet_fc_invalidate_host(ptr noundef %34, ptr noundef %ndlp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then39, %if.else36.cleanup_crit_edge, %do.end32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_fc_invalidate_host(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lpfc_sli_get_nvmet_sglq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_fcp_rqst_defer_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  tail call fastcc void @lpfc_nvmet_process_rcv_fcp_req(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_nvmet_process_rcv_fcp_req(ptr nocapture noundef readonly %ctx_buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %ctx_buf, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %phba1 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phba1, align 8
  %rqb_buffer = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %rqb_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rqb_buffer, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %if.end37

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %8 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brd_no, align 4
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %oxid, align 4
  %conv9 = zext i16 %11 to i32
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flag, align 8
  %conv10 = zext i16 %13 to i32
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %state, align 2
  %conv11 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.103, i32 noundef %9, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11) #14
  %ctxlock = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 8
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  tail call fastcc void @lpfc_nvmet_defer_release(ptr noundef %3, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call29) #11
  %sid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sid, align 4
  %18 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %oxid, align 4
  tail call fastcc void @lpfc_nvmet_unsol_fcp_issue_abort(ptr noundef %3, ptr noundef %1, i32 noundef %17, i16 noundef zeroext %19)
  br label %cleanup

if.end37:                                         ; preds = %entry
  %flag38 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %flag38 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flag38, align 8
  %22 = and i16 %21, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool41.not = icmp eq i16 %22, 0
  br i1 %tobool41.not, label %if.end80, label %do.body43

do.body43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev64 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %23 = ptrtoint ptr %pcidev64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev64, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %brd_no66 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %25 = ptrtoint ptr %brd_no66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %brd_no66, align 4
  %oxid67 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %oxid67 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %oxid67, align 4
  %conv68 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev65, ptr noundef nonnull @.str.106, i32 noundef %26, i32 noundef %conv68) #14
  br label %cleanup

if.end80:                                         ; preds = %if.end37
  %virt = getelementptr inbounds %struct.rqb_dmabuf, ptr %5, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt, align 4
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 159
  %31 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private, align 8
  %or = or i16 %21, 128
  %35 = ptrtoint ptr %flag38 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %or, ptr %flag38, align 8
  %ts_isr_cmd = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 22
  %36 = ptrtoint ptr %ts_isr_cmd to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ts_isr_cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool84.not = icmp eq i64 %37, 0
  br i1 %tobool84.not, label %if.end80.if.end87_crit_edge, label %if.then85

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i64 @ktime_get() #11
  %ts_cmd_nvme = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 23
  %38 = ptrtoint ptr %ts_cmd_nvme to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %call.i, ptr %ts_cmd_nvme, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end80.if.end87_crit_edge
  %39 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %targetport, align 8
  %size = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size, align 2
  %conv89 = zext i16 %42 to i32
  %call90 = tail call i32 @nvmet_fc_rcv_fcp_req(ptr noundef %40, ptr noundef %1, ptr noundef %30, i32 noundef %conv89) #11
  %43 = zext i32 %call90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %call90, label %if.end158 [
    i32 0, label %if.then93
    i32 -75, label %if.then124
  ]

if.then93:                                        ; preds = %if.end87
  %rcv_fcp_cmd_out = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %34, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_out, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_fcp_cmd_out, i32 1, i32 3, i32 1) #11
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_fcp_cmd_out, ptr %rcv_fcp_cmd_out, i32 1, ptr elementtype(i32) %rcv_fcp_cmd_out) #11, !srcloc !421
  %ctxlock101 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 8
  %call103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock101) #11
  %45 = ptrtoint ptr %flag38 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flag38, align 8
  %47 = and i16 %46, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool111.not = icmp eq i16 %47, 0
  br i1 %tobool111.not, label %lor.lhs.false112, label %if.then93.if.then116_crit_edge

if.then93.if.then116_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116

lor.lhs.false112:                                 ; preds = %if.then93
  %48 = ptrtoint ptr %rqb_buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rqb_buffer, align 8
  %cmp114.not = icmp eq ptr %5, %49
  br i1 %cmp114.not, label %if.end118, label %lor.lhs.false112.if.then116_crit_edge

lor.lhs.false112.if.then116_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116

if.then116:                                       ; preds = %lor.lhs.false112.if.then116_crit_edge, %if.then93.if.then116_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock101, i32 noundef %call103) #11
  br label %cleanup

if.end118:                                        ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %rqb_buffer to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rqb_buffer, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock101, i32 noundef %call103) #11
  tail call void @lpfc_rq_buf_free(ptr noundef %3, ptr noundef nonnull %5) #11
  br label %cleanup

if.then124:                                       ; preds = %if.end87
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 304
  %51 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool125.not = icmp eq i16 %52, 0
  br i1 %tobool125.not, label %if.then124.if.end130_crit_edge, label %if.then126

if.then124.if.end130_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then126:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  %oxid127 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %oxid127 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %oxid127, align 4
  %55 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %size, align 2
  %sid129 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 9
  %57 = ptrtoint ptr %sid129 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sid129, align 4
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %3, ptr noundef nonnull @.str.108, i16 noundef zeroext %54, i16 noundef zeroext %56, i32 noundef %58) #11
  br label %if.end130

if.end130:                                        ; preds = %if.then126, %if.then124.if.end130_crit_edge
  %rcv_fcp_cmd_out131 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %34, i32 0, i32 15
  %call.i.i354 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_out131, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_fcp_cmd_out131, i32 1, i32 3, i32 1) #11
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_fcp_cmd_out131, ptr %rcv_fcp_cmd_out131, i32 1, ptr elementtype(i32) %rcv_fcp_cmd_out131) #11, !srcloc !421
  %defer_fod = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %34, i32 0, i32 37
  %call.i.i355 = tail call zeroext i1 @__kasan_check_write(ptr noundef %defer_fod, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %defer_fod, i32 1, i32 3, i32 1) #11
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %defer_fod, ptr %defer_fod, i32 1, ptr elementtype(i32) %defer_fod) #11, !srcloc !421
  %ctxlock139 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 8
  %call141 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock139) #11
  %61 = ptrtoint ptr %flag38 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %flag38, align 8
  %63 = and i16 %62, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool149.not = icmp eq i16 %63, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock139, i32 noundef %call141) #11
  br i1 %tobool149.not, label %if.end152, label %if.end130.cleanup_crit_edge

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end152:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr inbounds %struct.rqb_dmabuf, ptr %5, i32 0, i32 4
  %64 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %idx, align 4
  %conv154 = zext i16 %65 to i32
  %nvmet_mrq_hdr = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 30
  %66 = ptrtoint ptr %nvmet_mrq_hdr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nvmet_mrq_hdr, align 8
  %arrayidx = getelementptr ptr, ptr %67, i32 %conv154
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx, align 4
  %nvmet_mrq_data = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 31
  %70 = ptrtoint ptr %nvmet_mrq_data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %nvmet_mrq_data, align 4
  %arrayidx156 = getelementptr ptr, ptr %71, i32 %conv154
  %72 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx156, align 4
  %call157 = tail call i32 @lpfc_post_rq_buffer(ptr noundef %3, ptr noundef %69, ptr noundef %73, i32 noundef 1, i32 noundef %conv154) #11
  br label %cleanup

if.end158:                                        ; preds = %if.end87
  %74 = ptrtoint ptr %flag38 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %flag38, align 8
  %76 = and i16 %75, -129
  store i16 %76, ptr %flag38, align 8
  %rcv_fcp_cmd_drop = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %34, i32 0, i32 16
  %call.i.i356 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_drop, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_fcp_cmd_drop, i32 1, i32 3, i32 1) #11
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_fcp_cmd_drop, ptr %rcv_fcp_cmd_drop, i32 1, ptr elementtype(i32) %rcv_fcp_cmd_drop) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev184 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %78 = ptrtoint ptr %pcidev184 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pcidev184, align 4
  %dev185 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %brd_no186 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %80 = ptrtoint ptr %brd_no186 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %brd_no186, align 4
  %oxid187 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %82 = ptrtoint ptr %oxid187 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %oxid187, align 4
  %conv188 = zext i16 %83 to i32
  %rcv_fcp_cmd_in = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %34, i32 0, i32 14
  %call.i.i357 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rcv_fcp_cmd_in, i32 noundef 4) #11
  %84 = ptrtoint ptr %rcv_fcp_cmd_in to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %rcv_fcp_cmd_in, align 4
  %rcv_fcp_cmd_out190 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %34, i32 0, i32 15
  %call.i.i358 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rcv_fcp_cmd_out190, i32 noundef 4) #11
  %86 = ptrtoint ptr %rcv_fcp_cmd_out190 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %rcv_fcp_cmd_out190, align 4
  %xmt_fcp_release = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %34, i32 0, i32 18
  %call.i.i359 = tail call zeroext i1 @__kasan_check_read(ptr noundef %xmt_fcp_release, i32 noundef 4) #11
  %88 = ptrtoint ptr %xmt_fcp_release to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %xmt_fcp_release, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev185, ptr noundef nonnull @.str.110, i32 noundef %81, i32 noundef %conv188, i32 noundef %call90, i32 noundef %85, i32 noundef %87, i32 noundef %89) #14
  %nvmeio_trc_on210 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 304
  %90 = ptrtoint ptr %nvmeio_trc_on210 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %nvmeio_trc_on210, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool211.not = icmp eq i16 %91, 0
  br i1 %tobool211.not, label %if.end158.do.body218_crit_edge, label %if.then212

if.end158.do.body218_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body218

if.then212:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %oxid187 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %oxid187, align 4
  %94 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %size, align 2
  %sid215 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 9
  %96 = ptrtoint ptr %sid215 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sid215, align 4
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %3, ptr noundef nonnull @.str.112, i16 noundef zeroext %93, i16 noundef zeroext %95, i32 noundef %97) #11
  br label %do.body218

do.body218:                                       ; preds = %if.then212, %if.end158.do.body218_crit_edge
  %ctxlock224 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 8
  %call226 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock224) #11
  tail call fastcc void @lpfc_nvmet_defer_release(ptr noundef %3, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock224, i32 noundef %call226) #11
  %sid232 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 9
  %98 = ptrtoint ptr %sid232 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sid232, align 4
  %100 = ptrtoint ptr %oxid187 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %oxid187, align 4
  tail call fastcc void @lpfc_nvmet_unsol_fcp_issue_abort(ptr noundef %3, ptr noundef %1, i32 noundef %99, i16 noundef zeroext %101)
  br label %cleanup

cleanup:                                          ; preds = %do.body218, %if.end152, %if.end130.cleanup_crit_edge, %if.end118, %if.then116, %do.body43, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_fc_rcv_fcp_req(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_post_rq_buffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_targetport_delete(ptr nocapture noundef readonly %targetport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %targetport, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %targetport1 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 159
  %4 = ptrtoint ptr %targetport1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %targetport1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tport_unreg_cmp = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %tport_unreg_cmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tport_unreg_cmp, align 4
  tail call void @complete(ptr noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_nvmet_xmt_ls_rsp(ptr nocapture noundef readonly %tgtport, ptr noundef %ls_rsp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %tgtport, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %phba = getelementptr i8, ptr %ls_rsp, i32 -12
  %2 = ptrtoint ptr %phba to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phba, align 8
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 241
  %4 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pport, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %load_flag, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ls_rsp, i32 -76
  %call = tail call i32 @__lpfc_nvme_xmt_ls_rsp(ptr noundef %add.ptr, ptr noundef %ls_rsp, ptr noundef nonnull @lpfc_nvmet_xmt_ls_rsp_cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %xmt_ls_drop = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_drop, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_drop, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_drop, ptr %xmt_ls_drop, i32 1, ptr elementtype(i32) %xmt_ls_drop) #11, !srcloc !421
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %call)
  %cmp.not = icmp eq i32 %call, -114
  br i1 %cmp.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_ls_abort = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 6
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_abort, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_abort, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_abort, ptr %xmt_ls_abort, i32 1, ptr elementtype(i32) %xmt_ls_abort) #11, !srcloc !421
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_ls_rsp = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 8
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_rsp, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_rsp, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_rsp, ptr %xmt_ls_rsp, i32 1, ptr elementtype(i32) %xmt_ls_rsp) #11, !srcloc !421
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.then4 ], [ -114, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_nvmet_xmt_fcp_op(ptr nocapture noundef readonly %tgtport, ptr noundef %rsp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %tgtport, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %phba1 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 2
  %2 = ptrtoint ptr %phba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phba1, align 8
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 241
  %4 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pport, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %load_flag, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ts_cmd_nvme = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 23
  %9 = ptrtoint ptr %ts_cmd_nvme to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ts_cmd_nvme, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool2.not = icmp eq i64 %10, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rsp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp = icmp eq i8 %12, 4
  %call.i = tail call i64 @ktime_get() #11
  %ts_nvme_status = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 28
  %ts_nvme_data = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 24
  %ts_nvme_status.sink = select i1 %cmp, ptr %ts_nvme_status, ptr %ts_nvme_data
  %13 = ptrtoint ptr %ts_nvme_status.sink to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i, ptr %ts_nvme_status.sink, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge
  %hdwq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 21
  %14 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdwq, align 8
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %hdwq12 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 27
  %16 = ptrtoint ptr %hdwq12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdwq12, align 8
  %hwqid = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 1
  %18 = ptrtoint ptr %hwqid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hwqid, align 2
  %idxprom = zext i16 %19 to i32
  %arrayidx = getelementptr %struct.lpfc_sli4_hdw_queue, ptr %17, i32 %idxprom
  %20 = ptrtoint ptr %hdwq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx, ptr %hdwq, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %hdwqstat_on = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 348
  %21 = ptrtoint ptr %hdwqstat_on to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hdwqstat_on, align 8
  %23 = and i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool17.not = icmp eq i16 %23, 0
  br i1 %tobool17.not, label %if.end14.if.end97_crit_edge, label %if.then18

if.end14.if.end97_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then18:                                        ; preds = %if.end14
  %24 = tail call i32 @llvm.read_register.i32(metadata !411) #11
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !424
  %c_stat = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 119
  %29 = ptrtoint ptr %c_stat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %c_stat, align 8
  %xmt_io = getelementptr inbounds %struct.lpfc_hdwq_stat, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %xmt_io to i32
  %32 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu, align 4
  %arrayidx39 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx39, align 4
  %add = add i32 %35, %31
  %36 = inttoptr i32 %add to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add40 = add i32 %38, 1
  store i32 %add40, ptr %36, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !425
  %and.i.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool51.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool51.not, label %if.then55, label %if.then18.do.end58_crit_edge, !prof !422

if.then18.do.end58_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

if.then55:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %if.then18.do.end58_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #11, !srcloc !426
  %hwqid65 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 1
  %40 = ptrtoint ptr %hwqid65 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hwqid65, align 2
  %conv66 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv66)
  %cmp67.not = icmp eq i32 %27, %conv66
  br i1 %cmp67.not, label %do.end58.if.end94_crit_edge, label %do.body70

do.end58.if.end94_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

do.body70:                                        ; preds = %do.end58
  %42 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pport, align 8
  %tobool72.not = icmp eq ptr %43, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %43, i32 0, i32 51
  %cfg_log_verbose74 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 139
  %cond.in = select i1 %tobool72.not, ptr %cfg_log_verbose74, ptr %cfg_log_verbose
  %44 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %cond = load i32, ptr %cond.in, align 4
  %and75 = and i32 %cond, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.else83, label %do.end80

do.end80:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %45 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %47 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.113, i32 noundef %48, i32 noundef %27, i32 noundef %conv66) #14
  br label %if.end94

if.else83:                                        ; preds = %do.body70
  %49 = ptrtoint ptr %cfg_log_verbose74 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cfg_log_verbose74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool85.not = icmp eq i32 %50, 0
  br i1 %tobool85.not, label %if.then86, label %if.else83.if.end94_crit_edge

if.else83.if.end94_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then86:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no87 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %51 = ptrtoint ptr %brd_no87 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %brd_no87, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %3, ptr noundef nonnull @.str.113, i32 noundef %52, i32 noundef %27, i32 noundef %conv66) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then86, %if.else83.if.end94_crit_edge, %do.end80, %do.end58.if.end94_crit_edge
  %conv95 = trunc i32 %27 to i16
  %cpu96 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 14
  %53 = ptrtoint ptr %cpu96 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv95, ptr %cpu96, align 2
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %if.end14.if.end97_crit_edge
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 17
  %54 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flag, align 8
  %56 = and i16 %55, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool100.not = icmp eq i16 %56, 0
  br i1 %tobool100.not, label %lor.lhs.false, label %if.end97.if.then104_crit_edge

if.end97.if.then104_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

lor.lhs.false:                                    ; preds = %if.end97
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 16
  %57 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %58)
  %cmp102 = icmp eq i16 %58, 6
  br i1 %cmp102, label %lor.lhs.false.if.then104_crit_edge, label %if.end141

lor.lhs.false.if.then104_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

if.then104:                                       ; preds = %lor.lhs.false.if.then104_crit_edge, %if.end97.if.then104_crit_edge
  %xmt_fcp_drop = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_drop, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_drop, i32 1, i32 3, i32 1) #11
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_drop, ptr %xmt_fcp_drop, i32 1, ptr elementtype(i32) %xmt_fcp_drop) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev126 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %60 = ptrtoint ptr %pcidev126 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcidev126, align 4
  %dev127 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %brd_no128 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %62 = ptrtoint ptr %brd_no128 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %brd_no128, align 4
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %64 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %oxid, align 4
  %conv129 = zext i16 %65 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev127, ptr noundef nonnull @.str.116, i32 noundef %63, i32 noundef %conv129) #14
  br label %cleanup

if.end141:                                        ; preds = %lor.lhs.false
  %link_state.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 36
  %66 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %link_state.i.i, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %67, label %do.body.i [
    i32 32, label %if.end141.if.end22.i_crit_edge
    i32 6, label %if.end141.if.end22.i_crit_edge403
    i32 5, label %if.end141.if.end22.i_crit_edge404
  ]

if.end141.if.end22.i_crit_edge404:                ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.end141.if.end22.i_crit_edge403:                ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.end141.if.end22.i_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

do.body.i:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %69 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %71 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %brd_no.i, align 4
  %sid.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 9
  %73 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sid.i, align 4
  %oxid.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %75 = ptrtoint ptr %oxid.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %oxid.i, align 4
  %conv8.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %state, align 2
  %conv9.i = zext i16 %78 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev.i, ptr noundef nonnull @.str.125, i32 noundef %72, i32 noundef %74, i32 noundef %conv8.i, i32 noundef %conv9.i) #14
  br label %if.then145

if.end22.i:                                       ; preds = %if.end141.if.end22.i_crit_edge, %if.end141.if.end22.i_crit_edge403, %if.end141.if.end22.i_crit_edge404
  %79 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pport, align 8
  %sid24.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 9
  %81 = ptrtoint ptr %sid24.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sid24.i, align 4
  %call25.i = tail call ptr @lpfc_findnode_did(ptr noundef %80, i32 noundef %82) #11
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.end22.i.do.body36.i_crit_edge, label %lor.lhs.false27.i

if.end22.i.do.body36.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36.i

lor.lhs.false27.i:                                ; preds = %if.end22.i
  %nlp_state.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call25.i, i32 0, i32 11
  %83 = ptrtoint ptr %nlp_state.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %nlp_state.i, align 2
  %85 = and i16 %84, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %85)
  %switch.i = icmp eq i16 %85, 6
  br i1 %switch.i, label %if.end79.i, label %lor.lhs.false27.i.do.body36.i_crit_edge

lor.lhs.false27.i.do.body36.i_crit_edge:          ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36.i

do.body36.i:                                      ; preds = %lor.lhs.false27.i.do.body36.i_crit_edge, %if.end22.i.do.body36.i_crit_edge
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev57.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %86 = ptrtoint ptr %pcidev57.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pcidev57.i, align 4
  %dev58.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %brd_no59.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %88 = ptrtoint ptr %brd_no59.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %brd_no59.i, align 4
  %90 = ptrtoint ptr %sid24.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sid24.i, align 4
  %oxid61.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %92 = ptrtoint ptr %oxid61.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %oxid61.i, align 4
  %conv62.i = zext i16 %93 to i32
  %94 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %state, align 2
  %conv64.i = zext i16 %95 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev58.i, ptr noundef nonnull @.str.128, i32 noundef %89, i32 noundef %91, i32 noundef %conv62.i, i32 noundef %conv64.i) #14
  br label %if.then145

if.end79.i:                                       ; preds = %lor.lhs.false27.i
  %sg_cnt.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 7
  %96 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sg_cnt.i, align 4
  %98 = load i16, ptr getelementptr inbounds (%struct.nvmet_fc_target_template, ptr @lpfc_tgttemplate, i32 0, i32 11), align 4
  %conv80.i = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %conv80.i)
  %cmp81.i = icmp sgt i32 %97, %conv80.i
  br i1 %cmp81.i, label %do.body84.i, label %if.end128.i

do.body84.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev105.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %99 = ptrtoint ptr %pcidev105.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pcidev105.i, align 4
  %dev106.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %brd_no107.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %101 = ptrtoint ptr %brd_no107.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %brd_no107.i, align 4
  %103 = ptrtoint ptr %sid24.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sid24.i, align 4
  %oxid109.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %105 = ptrtoint ptr %oxid109.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %oxid109.i, align 4
  %conv110.i = zext i16 %106 to i32
  %107 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %state, align 2
  %conv112.i = zext i16 %108 to i32
  %cfg_nvme_seg_cnt.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 118
  %109 = ptrtoint ptr %cfg_nvme_seg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cfg_nvme_seg_cnt.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev106.i, ptr noundef nonnull @.str.131, i32 noundef %102, i32 noundef %104, i32 noundef %conv110.i, i32 noundef %conv112.i, i32 noundef %110) #14
  br label %if.then145

if.end128.i:                                      ; preds = %if.end79.i
  %targetport.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 159
  %111 = ptrtoint ptr %targetport.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %targetport.i, align 8
  %private.i = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %private.i, align 8
  %wqeq.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 6
  %115 = ptrtoint ptr %wqeq.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %wqeq.i, align 8
  %cmp130.i = icmp eq ptr %116, null
  br i1 %cmp130.i, label %if.then132.i, label %if.end128.i.if.end181.i_crit_edge

if.end128.i.if.end181.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181.i

if.then132.i:                                     ; preds = %if.end128.i
  %ctxbuf.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 20
  %117 = ptrtoint ptr %ctxbuf.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ctxbuf.i, align 4
  %iocbq.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %iocbq.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %iocbq.i, align 4
  %cmp133.i = icmp eq ptr %120, null
  br i1 %cmp133.i, label %do.body136.i, label %if.end179.i

do.body136.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev157.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %121 = ptrtoint ptr %pcidev157.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pcidev157.i, align 4
  %dev158.i = getelementptr inbounds %struct.pci_dev, ptr %122, i32 0, i32 44
  %brd_no159.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %123 = ptrtoint ptr %brd_no159.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %brd_no159.i, align 4
  %125 = ptrtoint ptr %sid24.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sid24.i, align 4
  %oxid161.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %127 = ptrtoint ptr %oxid161.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %oxid161.i, align 4
  %conv162.i = zext i16 %128 to i32
  %129 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %state, align 2
  %conv164.i = zext i16 %130 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev158.i, ptr noundef nonnull @.str.134, i32 noundef %124, i32 noundef %126, i32 noundef %conv162.i, i32 noundef %conv164.i) #14
  br label %if.then145

if.end179.i:                                      ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %wqeq.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %120, ptr %wqeq.i, align 8
  %sli4_lxritag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %120, i32 0, i32 4
  %132 = ptrtoint ptr %sli4_lxritag.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 -1, ptr %sli4_lxritag.i, align 2
  %sli4_xritag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %120, i32 0, i32 5
  %133 = ptrtoint ptr %sli4_xritag.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 -1, ptr %sli4_xritag.i, align 4
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.end179.i, %if.end128.i.if.end181.i_crit_edge
  %nvmewqe.0.i = phi ptr [ %120, %if.end179.i ], [ %116, %if.end128.i.if.end181.i_crit_edge ]
  %134 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %state, align 2
  %136 = zext i16 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.242)
  switch i16 %135, label %if.end181.i.do.body198.i_crit_edge [
    i16 4, label %land.lhs.true186.i
    i16 5, label %if.end181.i.if.then195.i_crit_edge
  ]

if.end181.i.if.then195.i_crit_edge:               ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then195.i

if.end181.i.do.body198.i_crit_edge:               ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body198.i

land.lhs.true186.i:                               ; preds = %if.end181.i
  %entry_cnt.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 13
  %137 = ptrtoint ptr %entry_cnt.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %entry_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %138)
  %cmp188.i = icmp eq i16 %138, 1
  br i1 %cmp188.i, label %land.lhs.true186.i.if.then195.i_crit_edge, label %land.lhs.true186.i.do.body198.i_crit_edge

land.lhs.true186.i.do.body198.i_crit_edge:        ; preds = %land.lhs.true186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body198.i

land.lhs.true186.i.if.then195.i_crit_edge:        ; preds = %land.lhs.true186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then195.i

if.then195.i:                                     ; preds = %land.lhs.true186.i.if.then195.i_crit_edge, %if.end181.i.if.then195.i_crit_edge
  %wqe196.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10
  %ctxbuf240.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 20
  %139 = ptrtoint ptr %ctxbuf240.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ctxbuf240.i, align 4
  %sglq.i = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %sglq.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sglq.i, align 4
  %sgl241.i = getelementptr inbounds %struct.lpfc_sglq, ptr %142, i32 0, i32 8
  %143 = ptrtoint ptr %sgl241.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sgl241.i, align 4
  %145 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %rsp, align 4
  %147 = zext i8 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.243)
  switch i8 %146, label %do.body606.i [
    i8 1, label %if.then195.i.sw.bb.i_crit_edge
    i8 3, label %if.then195.i.sw.bb.i_crit_edge405
    i8 2, label %sw.bb373.i
    i8 4, label %sw.bb485.i
  ]

if.then195.i.sw.bb.i_crit_edge405:                ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then195.i.sw.bb.i_crit_edge:                   ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

do.body198.i:                                     ; preds = %land.lhs.true186.i.do.body198.i_crit_edge, %if.end181.i.do.body198.i_crit_edge
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev219.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %148 = ptrtoint ptr %pcidev219.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pcidev219.i, align 4
  %dev220.i = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 44
  %brd_no221.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %150 = ptrtoint ptr %brd_no221.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %brd_no221.i, align 4
  %152 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %state, align 2
  %conv223.i = zext i16 %153 to i32
  %entry_cnt224.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 13
  %154 = ptrtoint ptr %entry_cnt224.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %entry_cnt224.i, align 8
  %conv225.i = zext i16 %155 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev220.i, ptr noundef nonnull @.str.137, i32 noundef %151, i32 noundef %conv223.i, i32 noundef %conv225.i) #14
  br label %if.then145

sw.bb.i:                                          ; preds = %if.then195.i.sw.bb.i_crit_edge, %if.then195.i.sw.bb.i_crit_edge405
  %arrayidx.i = getelementptr %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 7
  %156 = call ptr @memcpy(ptr %arrayidx.i, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_tsend_cmd_template, i32 0, i32 0, i32 7), i32 20)
  %sg.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 6
  %157 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %sg.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dma_address.i, align 4
  %161 = ptrtoint ptr %wqe196.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %bf.load.i = load i32, ptr %wqe196.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 16777215
  store i32 %bf.clear.i, ptr %wqe196.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %158, i32 0, i32 4
  %162 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dma_length.i, align 4
  %bf.value.i = and i32 %163, 16777215
  store i32 %bf.value.i, ptr %wqe196.i, align 4
  %164 = tail call i32 @llvm.bswap.i32(i32 %160) #11
  %addrLow.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 1
  %165 = ptrtoint ptr %addrLow.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %addrLow.i, align 4
  %addrHigh.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 2
  %166 = ptrtoint ptr %addrHigh.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %addrHigh.i, align 4
  %payload_offset_len.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 3
  %167 = ptrtoint ptr %payload_offset_len.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %payload_offset_len.i, align 4
  %offset.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 10
  %168 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %offset.i, align 8
  %relative_offset.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 4
  %170 = ptrtoint ptr %relative_offset.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %relative_offset.i, align 4
  %reserved.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 5
  %171 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %reserved.i, align 4
  %rpi_ids.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 88
  %172 = ptrtoint ptr %rpi_ids.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rpi_ids.i, align 4
  %nlp_rpi.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call25.i, i32 0, i32 10
  %174 = ptrtoint ptr %nlp_rpi.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %nlp_rpi.i, align 4
  %idxprom.i = zext i16 %175 to i32
  %arrayidx258.i = getelementptr i16, ptr %173, i32 %idxprom.i
  %176 = ptrtoint ptr %arrayidx258.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %arrayidx258.i, align 2
  %conv259.i = zext i16 %177 to i32
  %shl.i = shl nuw i32 %conv259.i, 16
  %wqe_com.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 6
  %sli4_xritag264.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 5
  %178 = ptrtoint ptr %sli4_xritag264.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %sli4_xritag264.i, align 4
  %conv265.i = zext i16 %179 to i32
  %or271.i = or i32 %shl.i, %conv265.i
  %180 = ptrtoint ptr %wqe_com.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %or271.i, ptr %wqe_com.i, align 4
  %iotag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 3
  %181 = ptrtoint ptr %iotag.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %iotag.i, align 8
  %conv274.i = zext i16 %182 to i32
  %abort_tag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 8
  %183 = ptrtoint ptr %abort_tag.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %conv274.i, ptr %abort_tag.i, align 4
  %word9.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 9
  %184 = ptrtoint ptr %word9.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %word9.i, align 4
  %and281.i = and i32 %185, -65536
  %or282.i = or i32 %and281.i, %conv274.i
  store i32 %or282.i, ptr %word9.i, align 4
  %oxid285.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %186 = ptrtoint ptr %oxid285.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %oxid285.i, align 4
  %conv286.i = zext i16 %187 to i32
  %shl288.i = shl nuw i32 %conv286.i, 16
  %or292.i = or i32 %shl288.i, %conv274.i
  store i32 %or292.i, ptr %word9.i, align 4
  br i1 %cmp130.i, label %if.then296.i, label %sw.bb.i.if.end302.i_crit_edge

sw.bb.i.if.end302.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end302.i

if.then296.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %word10.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 10
  %188 = ptrtoint ptr %word10.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %word10.i, align 4
  %and298.i = and i32 %189, -2097153
  store i32 %and298.i, ptr %word10.i, align 4
  br label %if.end302.i

if.end302.i:                                      ; preds = %if.then296.i, %sw.bb.i.if.end302.i_crit_edge
  %transfer_length.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 4
  %190 = ptrtoint ptr %transfer_length.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %transfer_length.i, align 4
  %fcp_data_len.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 12
  %192 = ptrtoint ptr %fcp_data_len.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %fcp_data_len.i, align 4
  %193 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %144, align 4
  %addr_lo.i = getelementptr inbounds %struct.sli4_sge, ptr %144, i32 0, i32 1
  %194 = ptrtoint ptr %addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %addr_lo.i, align 4
  %word2.i = getelementptr inbounds %struct.sli4_sge, ptr %144, i32 0, i32 2
  %195 = ptrtoint ptr %word2.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 96, ptr %word2.i, align 4
  %sge_len.i = getelementptr inbounds %struct.sli4_sge, ptr %144, i32 0, i32 3
  %196 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %sge_len.i, align 4
  %incdec.ptr.i = getelementptr %struct.sli4_sge, ptr %144, i32 1
  %197 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %incdec.ptr.i, align 4
  %addr_lo310.i = getelementptr %struct.sli4_sge, ptr %144, i32 1, i32 1
  %198 = ptrtoint ptr %addr_lo310.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %addr_lo310.i, align 4
  %word2311.i = getelementptr %struct.sli4_sge, ptr %144, i32 1, i32 2
  %199 = ptrtoint ptr %word2311.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 96, ptr %word2311.i, align 4
  %sge_len318.i = getelementptr %struct.sli4_sge, ptr %144, i32 1, i32 3
  %200 = ptrtoint ptr %sge_len318.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %sge_len318.i, align 4
  %incdec.ptr319.i = getelementptr %struct.sli4_sge, ptr %144, i32 2
  %201 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %rsp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %202)
  %cmp322.i = icmp eq i8 %202, 3
  br i1 %cmp322.i, label %if.then324.i, label %if.else366.i

if.then324.i:                                     ; preds = %if.end302.i
  %xmt_fcp_read_rsp.i = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %114, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_read_rsp.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_read_rsp.i, i32 1, i32 3, i32 1) #11
  %203 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_read_rsp.i, ptr %xmt_fcp_read_rsp.i, i32 1, ptr elementtype(i32) %xmt_fcp_read_rsp.i) #11, !srcloc !421
  %rsplen.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 10
  %204 = ptrtoint ptr %rsplen.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %rsplen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %205)
  %cmp326.i = icmp eq i16 %205, 12
  br i1 %cmp326.i, label %if.then328.i, label %if.else338.i

if.then328.i:                                     ; preds = %if.then324.i
  %nlp_flag.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call25.i, i32 0, i32 5
  %206 = ptrtoint ptr %nlp_flag.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %nlp_flag.i, align 4
  %and329.i = and i32 %207, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329.i)
  %tobool330.not.i = icmp eq i32 %and329.i, 0
  br i1 %tobool330.not.i, label %if.then328.i.sw.epilog.i_crit_edge, label %if.then331.i

if.then328.i.sw.epilog.i_crit_edge:               ; preds = %if.then328.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then331.i:                                     ; preds = %if.then328.i
  call void @__sanitizer_cov_trace_pc() #13
  %word11.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 11
  %208 = ptrtoint ptr %word11.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %word11.i, align 4
  %or334.i = or i32 %209, 64
  store i32 %or334.i, ptr %word11.i, align 4
  br label %sw.epilog.i

if.else338.i:                                     ; preds = %if.then324.i
  call void @__sanitizer_cov_trace_pc() #13
  %word10340.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 10
  %210 = ptrtoint ptr %word10340.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %word10340.i, align 4
  %or342.i = or i32 %211, 32768
  store i32 %or342.i, ptr %word10340.i, align 4
  %word11346.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 11
  %212 = ptrtoint ptr %word11346.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %word11346.i, align 4
  %or348.i = or i32 %213, 16
  store i32 %or348.i, ptr %word11346.i, align 4
  %214 = ptrtoint ptr %rsplen.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %rsplen.i, align 4
  %216 = shl i16 %215, 6
  %217 = add i16 %216, 3840
  %218 = and i16 %217, 3840
  %shl355.i = zext i16 %218 to i32
  %and358.i = and i32 %or348.i, -3841
  %or359.i = or i32 %and358.i, %shl355.i
  store i32 %or359.i, ptr %word11346.i, align 4
  %arrayidx362.i = getelementptr %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 16
  %rspaddr.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 8
  %219 = ptrtoint ptr %rspaddr.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rspaddr.i, align 4
  %221 = load i16, ptr %rsplen.i, align 4
  %conv364.i = zext i16 %221 to i32
  %222 = call ptr @memcpy(ptr %arrayidx362.i, ptr %220, i32 %conv364.i)
  br label %sw.epilog.i

if.else366.i:                                     ; preds = %if.end302.i
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_fcp_read.i = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %114, i32 0, i32 21
  %call.i.i1037.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_read.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_read.i, i32 1, i32 3, i32 1) #11
  %223 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_read.i, ptr %xmt_fcp_read.i, i32 1, ptr elementtype(i32) %xmt_fcp_read.i) #11, !srcloc !421
  %224 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx.i, align 4
  %and368.i = and i32 %225, -524289
  store i32 %and368.i, ptr %arrayidx.i, align 4
  br label %sw.epilog.i

sw.bb373.i:                                       ; preds = %if.then195.i
  %arrayidx374.i = getelementptr %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 3
  %226 = call ptr @memcpy(ptr %arrayidx374.i, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_treceive_cmd_template, i32 0, i32 0, i32 3), i32 36)
  %227 = ptrtoint ptr %wqe196.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 201326592, ptr %wqe196.i, align 4
  %addrLow386.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 1
  %228 = ptrtoint ptr %addrLow386.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %addrLow386.i, align 4
  %addrHigh388.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 2
  %229 = ptrtoint ptr %addrHigh388.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %addrHigh388.i, align 4
  %offset389.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 10
  %230 = ptrtoint ptr %offset389.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %offset389.i, align 8
  %relative_offset390.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 4
  %232 = ptrtoint ptr %relative_offset390.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %relative_offset390.i, align 4
  %rpi_ids392.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 88
  %233 = ptrtoint ptr %rpi_ids392.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %rpi_ids392.i, align 4
  %nlp_rpi393.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call25.i, i32 0, i32 10
  %235 = ptrtoint ptr %nlp_rpi393.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %nlp_rpi393.i, align 4
  %idxprom394.i = zext i16 %236 to i32
  %arrayidx395.i = getelementptr i16, ptr %234, i32 %idxprom394.i
  %237 = ptrtoint ptr %arrayidx395.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %arrayidx395.i, align 2
  %conv396.i = zext i16 %238 to i32
  %shl398.i = shl nuw i32 %conv396.i, 16
  %wqe_com399.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 6
  %sli4_xritag405.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 5
  %239 = ptrtoint ptr %sli4_xritag405.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %sli4_xritag405.i, align 4
  %conv406.i = zext i16 %240 to i32
  %or412.i = or i32 %shl398.i, %conv406.i
  %241 = ptrtoint ptr %wqe_com399.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %or412.i, ptr %wqe_com399.i, align 4
  %iotag415.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 3
  %242 = ptrtoint ptr %iotag415.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %iotag415.i, align 8
  %conv416.i = zext i16 %243 to i32
  %abort_tag418.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 8
  %244 = ptrtoint ptr %abort_tag418.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %conv416.i, ptr %abort_tag418.i, align 4
  %word9424.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 9
  %245 = ptrtoint ptr %word9424.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %word9424.i, align 4
  %and425.i = and i32 %246, -65536
  %or426.i = or i32 %and425.i, %conv416.i
  store i32 %or426.i, ptr %word9424.i, align 4
  %oxid429.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %247 = ptrtoint ptr %oxid429.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %oxid429.i, align 4
  %conv430.i = zext i16 %248 to i32
  %shl432.i = shl nuw i32 %conv430.i, 16
  %or436.i = or i32 %shl432.i, %conv416.i
  store i32 %or436.i, ptr %word9424.i, align 4
  br i1 %cmp130.i, label %if.then440.i, label %sw.bb373.i.if.end447.i_crit_edge

sw.bb373.i.if.end447.i_crit_edge:                 ; preds = %sw.bb373.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end447.i

if.then440.i:                                     ; preds = %sw.bb373.i
  call void @__sanitizer_cov_trace_pc() #13
  %word10442.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 10
  %249 = ptrtoint ptr %word10442.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %word10442.i, align 4
  %and443.i = and i32 %250, -2097153
  store i32 %and443.i, ptr %word10442.i, align 4
  br label %if.end447.i

if.end447.i:                                      ; preds = %if.then440.i, %sw.bb373.i.if.end447.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp448.i = icmp eq i32 %97, 1
  br i1 %cmp448.i, label %land.lhs.true450.i, label %if.end447.i.if.else453.i_crit_edge

if.end447.i.if.else453.i_crit_edge:               ; preds = %if.end447.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else453.i

land.lhs.true450.i:                               ; preds = %if.end447.i
  %cfg_enable_pbde.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 157
  %251 = ptrtoint ptr %cfg_enable_pbde.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %cfg_enable_pbde.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool451.not.i = icmp eq i32 %252, 0
  br i1 %tobool451.not.i, label %land.lhs.true450.i.if.else453.i_crit_edge, label %land.lhs.true450.i.if.end460.i_crit_edge

land.lhs.true450.i.if.end460.i_crit_edge:         ; preds = %land.lhs.true450.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end460.i

land.lhs.true450.i.if.else453.i_crit_edge:        ; preds = %land.lhs.true450.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else453.i

if.else453.i:                                     ; preds = %land.lhs.true450.i.if.else453.i_crit_edge, %if.end447.i.if.else453.i_crit_edge
  %word11455.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 11
  %253 = ptrtoint ptr %word11455.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %word11455.i, align 4
  %and456.i = and i32 %254, -33
  store i32 %and456.i, ptr %word11455.i, align 4
  br label %if.end460.i

if.end460.i:                                      ; preds = %if.else453.i, %land.lhs.true450.i.if.end460.i_crit_edge
  %use_pbde.0.i = phi i1 [ false, %if.else453.i ], [ true, %land.lhs.true450.i.if.end460.i_crit_edge ]
  %transfer_length461.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 4
  %255 = ptrtoint ptr %transfer_length461.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %transfer_length461.i, align 4
  %fcp_data_len462.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 12
  %257 = ptrtoint ptr %fcp_data_len462.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %fcp_data_len462.i, align 4
  %258 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 0, ptr %144, align 4
  %addr_lo464.i = getelementptr inbounds %struct.sli4_sge, ptr %144, i32 0, i32 1
  %259 = ptrtoint ptr %addr_lo464.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %addr_lo464.i, align 4
  %word2465.i = getelementptr inbounds %struct.sli4_sge, ptr %144, i32 0, i32 2
  %260 = ptrtoint ptr %word2465.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 96, ptr %word2465.i, align 4
  %sge_len472.i = getelementptr inbounds %struct.sli4_sge, ptr %144, i32 0, i32 3
  %261 = ptrtoint ptr %sge_len472.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %sge_len472.i, align 4
  %incdec.ptr473.i = getelementptr %struct.sli4_sge, ptr %144, i32 1
  %262 = ptrtoint ptr %incdec.ptr473.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %incdec.ptr473.i, align 4
  %addr_lo475.i = getelementptr %struct.sli4_sge, ptr %144, i32 1, i32 1
  %263 = ptrtoint ptr %addr_lo475.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %addr_lo475.i, align 4
  %word2476.i = getelementptr %struct.sli4_sge, ptr %144, i32 1, i32 2
  %264 = ptrtoint ptr %word2476.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 96, ptr %word2476.i, align 4
  %sge_len483.i = getelementptr %struct.sli4_sge, ptr %144, i32 1, i32 3
  %265 = ptrtoint ptr %sge_len483.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 0, ptr %sge_len483.i, align 4
  %incdec.ptr484.i = getelementptr %struct.sli4_sge, ptr %144, i32 2
  %xmt_fcp_write.i = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %114, i32 0, i32 22
  %call.i.i1038.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_write.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_write.i, i32 1, i32 3, i32 1) #11
  %266 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_write.i, ptr %xmt_fcp_write.i, i32 1, ptr elementtype(i32) %xmt_fcp_write.i) #11, !srcloc !421
  br label %sw.epilog.i

sw.bb485.i:                                       ; preds = %if.then195.i
  %arrayidx486.i = getelementptr %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 4
  %267 = call ptr @memcpy(ptr %arrayidx486.i, ptr getelementptr inbounds (%union.lpfc_wqe128, ptr @lpfc_trsp_cmd_template, i32 0, i32 0, i32 4), i32 32)
  %rspdma.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 9
  %268 = ptrtoint ptr %rspdma.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %rspdma.i, align 4
  %270 = ptrtoint ptr %wqe196.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %bf.load489.i = load i32, ptr %wqe196.i, align 4
  %bf.clear490.i = and i32 %bf.load489.i, 16777215
  store i32 %bf.clear490.i, ptr %wqe196.i, align 4
  %rsplen492.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 10
  %271 = ptrtoint ptr %rsplen492.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %rsplen492.i, align 4
  %conv493.i = zext i16 %272 to i32
  store i32 %conv493.i, ptr %wqe196.i, align 4
  %273 = tail call i32 @llvm.bswap.i32(i32 %269) #11
  %addrLow504.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 1
  %274 = ptrtoint ptr %addrLow504.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %addrLow504.i, align 4
  %addrHigh510.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 2
  %275 = ptrtoint ptr %addrHigh510.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 0, ptr %addrHigh510.i, align 4
  %276 = ptrtoint ptr %rsplen492.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %rsplen492.i, align 4
  %conv512.i = zext i16 %277 to i32
  %response_len.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 3
  %278 = ptrtoint ptr %response_len.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %conv512.i, ptr %response_len.i, align 4
  %rpi_ids514.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 88
  %279 = ptrtoint ptr %rpi_ids514.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %rpi_ids514.i, align 4
  %nlp_rpi515.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call25.i, i32 0, i32 10
  %281 = ptrtoint ptr %nlp_rpi515.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %nlp_rpi515.i, align 4
  %idxprom516.i = zext i16 %282 to i32
  %arrayidx517.i = getelementptr i16, ptr %280, i32 %idxprom516.i
  %283 = ptrtoint ptr %arrayidx517.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %arrayidx517.i, align 2
  %conv518.i = zext i16 %284 to i32
  %shl520.i = shl nuw i32 %conv518.i, 16
  %wqe_com521.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 6
  %sli4_xritag527.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 5
  %285 = ptrtoint ptr %sli4_xritag527.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %sli4_xritag527.i, align 4
  %conv528.i = zext i16 %286 to i32
  %or534.i = or i32 %shl520.i, %conv528.i
  %287 = ptrtoint ptr %wqe_com521.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %or534.i, ptr %wqe_com521.i, align 4
  %iotag537.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 3
  %288 = ptrtoint ptr %iotag537.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %iotag537.i, align 8
  %conv538.i = zext i16 %289 to i32
  %abort_tag540.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 8
  %290 = ptrtoint ptr %abort_tag540.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %conv538.i, ptr %abort_tag540.i, align 4
  %word9546.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 9
  %291 = ptrtoint ptr %word9546.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %word9546.i, align 4
  %and547.i = and i32 %292, -65536
  %or548.i = or i32 %and547.i, %conv538.i
  store i32 %or548.i, ptr %word9546.i, align 4
  %oxid551.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %293 = ptrtoint ptr %oxid551.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %oxid551.i, align 4
  %conv552.i = zext i16 %294 to i32
  %shl554.i = shl nuw i32 %conv552.i, 16
  %or558.i = or i32 %shl554.i, %conv538.i
  store i32 %or558.i, ptr %word9546.i, align 4
  br i1 %cmp130.i, label %sw.bb485.i.if.end569.i_crit_edge, label %if.then562.i

sw.bb485.i.if.end569.i_crit_edge:                 ; preds = %sw.bb485.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end569.i

if.then562.i:                                     ; preds = %sw.bb485.i
  call void @__sanitizer_cov_trace_pc() #13
  %word10564.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 10
  %295 = ptrtoint ptr %word10564.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %word10564.i, align 4
  %or566.i = or i32 %296, 2097152
  store i32 %or566.i, ptr %word10564.i, align 4
  br label %if.end569.i

if.end569.i:                                      ; preds = %if.then562.i, %sw.bb485.i.if.end569.i_crit_edge
  %297 = ptrtoint ptr %rsplen492.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %rsplen492.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %298)
  %cmp572.not.i = icmp eq i16 %298, 12
  br i1 %cmp572.not.i, label %if.end569.i.if.end603.i_crit_edge, label %if.then574.i

if.end569.i.if.end603.i_crit_edge:                ; preds = %if.end569.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end603.i

if.then574.i:                                     ; preds = %if.end569.i
  call void @__sanitizer_cov_trace_pc() #13
  %word10576.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 10
  %299 = ptrtoint ptr %word10576.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %word10576.i, align 4
  %or578.i = or i32 %300, 32768
  store i32 %or578.i, ptr %word10576.i, align 4
  %word11582.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 11
  %301 = ptrtoint ptr %word11582.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %word11582.i, align 4
  %or584.i = or i32 %302, 16
  store i32 %or584.i, ptr %word11582.i, align 4
  %303 = ptrtoint ptr %rsplen492.i to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %rsplen492.i, align 4
  %305 = shl i16 %304, 6
  %306 = add i16 %305, 3840
  %307 = and i16 %306, 3840
  %shl592.i = zext i16 %307 to i32
  %and595.i = and i32 %or584.i, -3841
  %or596.i = or i32 %and595.i, %shl592.i
  store i32 %or596.i, ptr %word11582.i, align 4
  %arrayidx599.i = getelementptr %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 16
  %rspaddr600.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 8
  %308 = ptrtoint ptr %rspaddr600.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %rspaddr600.i, align 4
  %310 = load i16, ptr %rsplen492.i, align 4
  %conv602.i = zext i16 %310 to i32
  %311 = call ptr @memcpy(ptr %arrayidx599.i, ptr %309, i32 %conv602.i)
  br label %if.end603.i

if.end603.i:                                      ; preds = %if.then574.i, %if.end569.i.if.end603.i_crit_edge
  %rsvd_12_15.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 12
  %312 = ptrtoint ptr %rsvd_12_15.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %rsvd_12_15.i, align 4
  %word2605.i = getelementptr inbounds %struct.sli4_sge, ptr %144, i32 0, i32 2
  %313 = ptrtoint ptr %word2605.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 0, ptr %word2605.i, align 4
  %xmt_fcp_rsp.i = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %114, i32 0, i32 23
  %call.i.i1039.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_rsp.i, i32 1, i32 3, i32 1) #11
  %314 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_rsp.i, ptr %xmt_fcp_rsp.i, i32 1, ptr elementtype(i32) %xmt_fcp_rsp.i) #11, !srcloc !421
  br label %sw.epilog.i

do.body606.i:                                     ; preds = %if.then195.i
  %315 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %pport, align 8
  %tobool609.not.i = icmp eq ptr %316, null
  %cfg_log_verbose612.i = getelementptr inbounds %struct.lpfc_vport, ptr %316, i32 0, i32 51
  %cfg_log_verbose614.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 139
  %cond616.in.i = select i1 %tobool609.not.i, ptr %cfg_log_verbose614.i, ptr %cfg_log_verbose612.i
  %317 = ptrtoint ptr %cond616.in.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %cond616.i = load i32, ptr %cond616.in.i, align 4
  %and617.i = and i32 %cond616.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and617.i)
  %tobool618.not.i = icmp eq i32 %and617.i, 0
  br i1 %tobool618.not.i, label %if.else628.i, label %do.end622.i

do.end622.i:                                      ; preds = %do.body606.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev623.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %318 = ptrtoint ptr %pcidev623.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %pcidev623.i, align 4
  %dev624.i = getelementptr inbounds %struct.pci_dev, ptr %319, i32 0, i32 44
  %brd_no625.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %320 = ptrtoint ptr %brd_no625.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %brd_no625.i, align 4
  %conv627.i = zext i8 %146 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev624.i, ptr noundef nonnull @.str.140, i32 noundef %321, i32 noundef %conv627.i) #14
  br label %if.then145

if.else628.i:                                     ; preds = %do.body606.i
  %322 = ptrtoint ptr %cfg_log_verbose614.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %cfg_log_verbose614.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool630.not.i = icmp eq i32 %323, 0
  br i1 %tobool630.not.i, label %if.then631.i, label %if.else628.i.if.then145_crit_edge

if.else628.i.if.then145_crit_edge:                ; preds = %if.else628.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then145

if.then631.i:                                     ; preds = %if.else628.i
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no632.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %324 = ptrtoint ptr %brd_no632.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %brd_no632.i, align 4
  %conv634.i = zext i8 %146 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %3, ptr noundef nonnull @.str.140, i32 noundef %325, i32 noundef %conv634.i) #11
  br label %if.then145

sw.epilog.i:                                      ; preds = %if.end603.i, %if.end460.i, %if.else366.i, %if.else338.i, %if.then331.i, %if.then328.i.sw.epilog.i_crit_edge
  %sgl.0.i = phi ptr [ %144, %if.end603.i ], [ %incdec.ptr484.i, %if.end460.i ], [ %incdec.ptr319.i, %if.then331.i ], [ %incdec.ptr319.i, %if.then328.i.sw.epilog.i_crit_edge ], [ %incdec.ptr319.i, %if.else338.i ], [ %incdec.ptr319.i, %if.else366.i ]
  %nsegs.0.i = phi i32 [ 0, %if.end603.i ], [ %97, %if.end460.i ], [ %97, %if.then331.i ], [ %97, %if.then328.i.sw.epilog.i_crit_edge ], [ %97, %if.else338.i ], [ %97, %if.else366.i ]
  %use_pbde.1.off0.i = phi i1 [ false, %if.end603.i ], [ %use_pbde.0.i, %if.end460.i ], [ false, %if.then331.i ], [ false, %if.then328.i.sw.epilog.i_crit_edge ], [ false, %if.else338.i ], [ false, %if.else366.i ]
  %retry.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 14
  %326 = ptrtoint ptr %retry.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 1, ptr %retry.i, align 2
  %327 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %pport, align 8
  %vport.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 17
  %329 = ptrtoint ptr %vport.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %328, ptr %vport.i, align 4
  %fc_ratov.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 58
  %330 = ptrtoint ptr %fc_ratov.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %fc_ratov.i, align 8
  %mul.i = mul i32 %331, 3
  %add.i = add i32 %mul.i, 16
  %drvrTimeout.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 16
  %332 = ptrtoint ptr %drvrTimeout.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %add.i, ptr %drvrTimeout.i, align 8
  %context1.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 18
  %333 = ptrtoint ptr %context1.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %call25.i, ptr %context1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsegs.0.i)
  %cmp6411041.i = icmp sgt i32 %nsegs.0.i, 0
  br i1 %cmp6411041.i, label %for.body.lr.ph.i, label %sw.epilog.i.for.end.i_crit_edge

sw.epilog.i.for.end.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.epilog.i
  %sg640.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 6
  %334 = ptrtoint ptr %sg640.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %sg640.i, align 4
  %offset659.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end675.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.01044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add666.i, %if.end675.i.for.body.i_crit_edge ]
  %sgel.01043.i = phi ptr [ %335, %for.body.lr.ph.i ], [ %call682.i, %if.end675.i.for.body.i_crit_edge ]
  %sgl.11042.i = phi ptr [ %sgl.0.i, %for.body.lr.ph.i ], [ %incdec.ptr679.i, %if.end675.i.for.body.i_crit_edge ]
  %dma_address643.i = getelementptr inbounds %struct.scatterlist, ptr %sgel.01043.i, i32 0, i32 3
  %336 = ptrtoint ptr %dma_address643.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %dma_address643.i, align 4
  %dma_length644.i = getelementptr inbounds %struct.scatterlist, ptr %sgel.01043.i, i32 0, i32 4
  %338 = ptrtoint ptr %dma_length644.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %dma_length644.i, align 4
  %340 = ptrtoint ptr %sgl.11042.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 0, ptr %sgl.11042.i, align 4
  %addr_lo653.i = getelementptr inbounds %struct.sli4_sge, ptr %sgl.11042.i, i32 0, i32 1
  %341 = ptrtoint ptr %addr_lo653.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %337, ptr %addr_lo653.i, align 4
  %word2654.i = getelementptr inbounds %struct.sli4_sge, ptr %sgl.11042.i, i32 0, i32 2
  %342 = ptrtoint ptr %word2654.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 0, ptr %word2654.i, align 4
  %343 = ptrtoint ptr %offset659.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %offset659.i, align 8
  %and660.i = and i32 %344, 134217727
  store i32 %and660.i, ptr %word2654.i, align 4
  %add666.i = add nuw nsw i32 %i.01044.i, 1
  %345 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %sg_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add666.i, i32 %346)
  %cmp668.i = icmp eq i32 %add666.i, %346
  br i1 %cmp668.i, label %if.then670.i, label %for.body.i.if.end675.i_crit_edge

for.body.i.if.end675.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end675.i

if.then670.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %or673.i = or i32 %and660.i, -2147483648
  %347 = ptrtoint ptr %word2654.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %or673.i, ptr %word2654.i, align 4
  br label %if.end675.i

if.end675.i:                                      ; preds = %if.then670.i, %for.body.i.if.end675.i_crit_edge
  %348 = ptrtoint ptr %word2654.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %word2654.i, align 4
  %350 = tail call i32 @llvm.bswap.i32(i32 %349) #11
  %351 = ptrtoint ptr %word2654.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %350, ptr %word2654.i, align 4
  %352 = tail call i32 @llvm.bswap.i32(i32 %339) #11
  %sge_len678.i = getelementptr inbounds %struct.sli4_sge, ptr %sgl.11042.i, i32 0, i32 3
  %353 = ptrtoint ptr %sge_len678.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %352, ptr %sge_len678.i, align 4
  %incdec.ptr679.i = getelementptr %struct.sli4_sge, ptr %sgl.11042.i, i32 1
  %354 = ptrtoint ptr %offset659.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %offset659.i, align 8
  %add681.i = add i32 %355, %339
  store i32 %add681.i, ptr %offset659.i, align 8
  %call682.i = tail call ptr @sg_next(ptr noundef %sgel.01043.i) #11
  %exitcond.not.i = icmp eq i32 %add666.i, %nsegs.0.i
  br i1 %exitcond.not.i, label %if.end675.i.for.end.i_crit_edge, label %if.end675.i.for.body.i_crit_edge

if.end675.i.for.body.i_crit_edge:                 ; preds = %if.end675.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end675.i.for.end.i_crit_edge:                  ; preds = %if.end675.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %if.end675.i.for.end.i_crit_edge, %sw.epilog.i.for.end.i_crit_edge
  %sgl.1.lcssa.i = phi ptr [ %sgl.0.i, %sw.epilog.i.for.end.i_crit_edge ], [ %incdec.ptr679.i, %if.end675.i.for.end.i_crit_edge ]
  %arrayidx683.i = getelementptr %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 13
  br i1 %use_pbde.1.off0.i, label %if.then685.i, label %if.else703.i

if.then685.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr686.i = getelementptr %struct.sli4_sge, ptr %sgl.1.lcssa.i, i32 -1
  %addr_lo687.i = getelementptr %struct.sli4_sge, ptr %sgl.1.lcssa.i, i32 -1, i32 1
  %356 = ptrtoint ptr %addr_lo687.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %addr_lo687.i, align 4
  %addrLow688.i = getelementptr %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 14
  %358 = ptrtoint ptr %addrLow688.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %357, ptr %addrLow688.i, align 4
  %359 = ptrtoint ptr %incdec.ptr686.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %incdec.ptr686.i, align 4
  %addrHigh690.i = getelementptr %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 10, i32 0, i32 15
  %361 = ptrtoint ptr %addrHigh690.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %360, ptr %addrHigh690.i, align 4
  %sge_len691.i = getelementptr %struct.sli4_sge, ptr %sgl.1.lcssa.i, i32 -1, i32 3
  %362 = ptrtoint ptr %sge_len691.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %sge_len691.i, align 4
  %364 = and i32 %363, -256
  %365 = ptrtoint ptr %arrayidx683.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %364, ptr %arrayidx683.i, align 4
  br label %lpfc_nvmet_prep_fcp_wqe.exit

if.else703.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %366 = call ptr @memset(ptr %arrayidx683.i, i32 0, i32 12)
  br label %lpfc_nvmet_prep_fcp_wqe.exit

lpfc_nvmet_prep_fcp_wqe.exit:                     ; preds = %if.else703.i, %if.then685.i
  %367 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 5, ptr %state, align 2
  %entry_cnt706.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 13
  %368 = ptrtoint ptr %entry_cnt706.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %entry_cnt706.i, align 8
  %inc707.i = add i16 %369, 1
  store i16 %inc707.i, ptr %entry_cnt706.i, align 8
  %cmp143 = icmp eq ptr %nvmewqe.0.i, null
  br i1 %cmp143, label %lpfc_nvmet_prep_fcp_wqe.exit.if.then145_crit_edge, label %if.end184

lpfc_nvmet_prep_fcp_wqe.exit.if.then145_crit_edge: ; preds = %lpfc_nvmet_prep_fcp_wqe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then145

if.then145:                                       ; preds = %lpfc_nvmet_prep_fcp_wqe.exit.if.then145_crit_edge, %if.then631.i, %if.else628.i.if.then145_crit_edge, %do.end622.i, %do.body198.i, %do.body136.i, %do.body84.i, %do.body36.i, %do.body.i
  %xmt_fcp_drop146 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 19
  %call.i.i394 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_drop146, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_drop146, i32 1, i32 3, i32 1) #11
  %370 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_drop146, ptr %xmt_fcp_drop146, i32 1, ptr elementtype(i32) %xmt_fcp_drop146) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev168 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %371 = ptrtoint ptr %pcidev168 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %pcidev168, align 4
  %dev169 = getelementptr inbounds %struct.pci_dev, ptr %372, i32 0, i32 44
  %brd_no170 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %373 = ptrtoint ptr %brd_no170 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %brd_no170, align 4
  %oxid171 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %375 = ptrtoint ptr %oxid171 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %oxid171, align 4
  %conv172 = zext i16 %376 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev169, ptr noundef nonnull @.str.119, i32 noundef %374, i32 noundef %conv172) #14
  br label %cleanup

if.end184:                                        ; preds = %lpfc_nvmet_prep_fcp_wqe.exit
  %wqe_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 27
  %377 = ptrtoint ptr %wqe_cmpl to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr @lpfc_nvmet_xmt_fcp_op_cmp, ptr %wqe_cmpl, align 4
  %iocb_cmpl = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 26
  %378 = ptrtoint ptr %iocb_cmpl to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr null, ptr %iocb_cmpl, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 19
  %379 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %rsp, ptr %context2, align 4
  %iocb_flag = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 15
  %380 = ptrtoint ptr %iocb_flag to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %iocb_flag, align 4
  %or = or i32 %381, 8388608
  store i32 %or, ptr %iocb_flag, align 4
  %hwqid185 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 1
  %382 = ptrtoint ptr %hwqid185 to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %hwqid185, align 2
  %384 = ptrtoint ptr %wqeq.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %wqeq.i, align 8
  %hba_wqidx = getelementptr inbounds %struct.lpfc_iocbq, ptr %385, i32 0, i32 6
  %386 = ptrtoint ptr %hba_wqidx to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 %383, ptr %hba_wqidx, align 2
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 304
  %387 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %388)
  %tobool186.not = icmp eq i16 %388, 0
  br i1 %tobool186.not, label %if.end184.if.end192_crit_edge, label %if.then187

if.end184.if.end192_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192

if.then187:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %oxid188 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %389 = ptrtoint ptr %oxid188 to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %oxid188, align 4
  %391 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %rsp, align 4
  %conv190 = zext i8 %392 to i16
  %rsplen = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %rsp, i32 0, i32 10
  %393 = ptrtoint ptr %rsplen to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %rsplen, align 4
  %conv191 = zext i16 %394 to i32
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %3, ptr noundef nonnull @.str.121, i16 noundef zeroext %390, i16 noundef zeroext %conv190, i32 noundef %conv191) #11
  br label %if.end192

if.end192:                                        ; preds = %if.then187, %if.end184.if.end192_crit_edge
  %395 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %flag, align 8
  %397 = or i16 %396, 1
  store i16 %397, ptr %flag, align 8
  %398 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %hdwq, align 8
  %call198 = tail call i32 @lpfc_sli4_issue_wqe(ptr noundef %3, ptr noundef %399, ptr noundef nonnull %nvmewqe.0.i) #11
  %400 = zext i32 %call198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %400, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %call198, label %if.end242 [
    i32 0, label %if.then201
    i32 -16, label %if.then218
  ]

if.then201:                                       ; preds = %if.end192
  %401 = ptrtoint ptr %ts_cmd_nvme to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %ts_cmd_nvme, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %402)
  %tobool203.not = icmp eq i64 %402, 0
  br i1 %tobool203.not, label %if.then201.cleanup_crit_edge, label %if.end205

if.then201.cleanup_crit_edge:                     ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end205:                                        ; preds = %if.then201
  %403 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %rsp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %404)
  %cmp208 = icmp eq i8 %404, 4
  %call.i398 = tail call i64 @ktime_get() #11
  br i1 %cmp208, label %if.then210, label %if.else212

if.then210:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  %ts_status_wqput = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 29
  %405 = ptrtoint ptr %ts_status_wqput to i32
  call void @__asan_store8_noabort(i32 %405)
  store i64 %call.i398, ptr %ts_status_wqput, align 8
  br label %cleanup

if.else212:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  %ts_data_wqput = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 25
  %406 = ptrtoint ptr %ts_data_wqput to i32
  call void @__asan_store8_noabort(i32 %406)
  store i64 %call.i398, ptr %ts_data_wqput, align 8
  br label %cleanup

if.then218:                                       ; preds = %if.end192
  %407 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %407)
  %408 = load i16, ptr %flag, align 8
  %409 = or i16 %408, 64
  store i16 %409, ptr %flag, align 8
  %410 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %hdwq, align 8
  %io_wq = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, ptr %411, i32 0, i32 2
  %412 = ptrtoint ptr %io_wq to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %io_wq, align 4
  %pring224 = getelementptr inbounds %struct.lpfc_queue, ptr %413, i32 0, i32 25
  %414 = ptrtoint ptr %pring224 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %pring224, align 8
  %ring_lock = getelementptr inbounds %struct.lpfc_sli_ring, ptr %415, i32 0, i32 4
  %call233 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring_lock) #11
  %wqfull_list = getelementptr inbounds %struct.lpfc_queue, ptr %413, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.lpfc_queue, ptr %413, i32 0, i32 6, i32 1
  %416 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %prev.i, align 4
  %call.i.i400 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %nvmewqe.0.i, ptr noundef %417, ptr noundef %wqfull_list) #11
  br i1 %call.i.i400, label %if.end.i.i, label %if.then218.list_add_tail.exit_crit_edge

if.then218.list_add_tail.exit_crit_edge:          ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #13
  %418 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %nvmewqe.0.i, ptr %prev.i, align 4
  %419 = ptrtoint ptr %nvmewqe.0.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr %wqfull_list, ptr %nvmewqe.0.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %nvmewqe.0.i, i32 0, i32 1
  %420 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr %417, ptr %prev3.i.i, align 4
  %421 = ptrtoint ptr %417 to i32
  call void @__asan_store4_noabort(i32 %421)
  store volatile ptr %nvmewqe.0.i, ptr %417, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then218.list_add_tail.exit_crit_edge
  %q_flag = getelementptr inbounds %struct.lpfc_queue, ptr %413, i32 0, i32 31
  %422 = ptrtoint ptr %q_flag to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %q_flag, align 1
  %424 = or i8 %423, 1
  store i8 %424, ptr %q_flag, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call233) #11
  %defer_wqfull = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 38
  %call.i.i395 = tail call zeroext i1 @__kasan_check_write(ptr noundef %defer_wqfull, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %defer_wqfull, i32 1, i32 3, i32 1) #11
  %425 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %defer_wqfull, ptr %defer_wqfull, i32 1, ptr elementtype(i32) %defer_wqfull) #11, !srcloc !421
  br label %cleanup

if.end242:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_fcp_drop243 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 19
  %call.i.i396 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_drop243, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_drop243, i32 1, i32 3, i32 1) #11
  %426 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_drop243, ptr %xmt_fcp_drop243, i32 1, ptr elementtype(i32) %xmt_fcp_drop243) #11, !srcloc !421
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev265 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %427 = ptrtoint ptr %pcidev265 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %pcidev265, align 4
  %dev266 = getelementptr inbounds %struct.pci_dev, ptr %428, i32 0, i32 44
  %brd_no267 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %429 = ptrtoint ptr %brd_no267 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %brd_no267, align 4
  %oxid268 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %431 = ptrtoint ptr %oxid268 to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %oxid268, align 4
  %conv269 = zext i16 %432 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev266, ptr noundef nonnull @.str.123, i32 noundef %430, i32 noundef %conv269, i32 noundef %call198) #14
  %433 = ptrtoint ptr %wqeq.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %wqeq.i, align 8
  %hba_wqidx282 = getelementptr inbounds %struct.lpfc_iocbq, ptr %434, i32 0, i32 6
  %435 = ptrtoint ptr %hba_wqidx282 to i32
  call void @__asan_store2_noabort(i32 %435)
  store i16 0, ptr %hba_wqidx282, align 2
  %436 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr null, ptr %context2, align 4
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %nvmewqe.0.i, i32 0, i32 20
  %437 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr null, ptr %context3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end242, %list_add_tail.exit, %if.else212, %if.then210, %if.then201.cleanup_crit_edge, %if.then145, %if.then104, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ 0, %if.then201.cleanup_crit_edge ], [ 0, %if.else212 ], [ 0, %if.then210 ], [ -6, %if.then104 ], [ -6, %if.then145 ], [ -16, %if.end242 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_xmt_fcp_abort(ptr nocapture noundef readonly %tgtport, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %tgtport, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %phba1 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %phba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phba1, align 8
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 241
  %4 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pport, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %load_flag, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdwq = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 21
  %9 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdwq, align 8
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.then3, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %hdwq4 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 27
  %11 = ptrtoint ptr %hdwq4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdwq4, align 8
  %13 = ptrtoint ptr %hdwq to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %hdwq, align 8
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.end.do.body_crit_edge
  %14 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pport, align 8
  %tobool8.not = icmp eq ptr %15, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %15, i32 0, i32 51
  %cfg_log_verbose10 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 139
  %cond.in = select i1 %tobool8.not, ptr %cfg_log_verbose10, ptr %cfg_log_verbose
  %16 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond = load i32, ptr %cond.in, align 4
  %and11 = and i32 %cond, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %19 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brd_no, align 4
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 11
  %21 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %oxid, align 4
  %conv15 = zext i16 %22 to i32
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 17
  %23 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flag, align 8
  %conv16 = zext i16 %24 to i32
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 16
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %state, align 2
  %conv17 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.148, i32 noundef %20, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17) #14
  br label %if.end29

if.else:                                          ; preds = %do.body
  %27 = ptrtoint ptr %cfg_log_verbose10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cfg_log_verbose10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool19.not = icmp eq i32 %28, 0
  br i1 %tobool19.not, label %if.then20, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no21 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %29 = ptrtoint ptr %brd_no21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brd_no21, align 4
  %oxid22 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 11
  %31 = ptrtoint ptr %oxid22 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %oxid22, align 4
  %conv23 = zext i16 %32 to i32
  %flag24 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 17
  %33 = ptrtoint ptr %flag24 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flag24, align 8
  %conv25 = zext i16 %34 to i32
  %state26 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 16
  %35 = ptrtoint ptr %state26 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %state26, align 2
  %conv27 = zext i16 %36 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %3, ptr noundef nonnull @.str.148, i32 noundef %30, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %conv27) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %if.else.if.end29_crit_edge, %do.end
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 304
  %37 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool32.not = icmp eq i16 %38, 0
  br i1 %tobool32.not, label %if.end29.if.end38_crit_edge, label %if.then33

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %oxid34 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 11
  %39 = ptrtoint ptr %oxid34 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %oxid34, align 4
  %flag35 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 17
  %41 = ptrtoint ptr %flag35 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flag35, align 8
  %state36 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 16
  %43 = ptrtoint ptr %state36 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %state36, align 2
  %conv37 = zext i16 %44 to i32
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %3, ptr noundef nonnull @.str.150, i16 noundef zeroext %40, i16 noundef zeroext %42, i32 noundef %conv37) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end29.if.end38_crit_edge
  %xmt_fcp_abort = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_abort, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_abort, i32 1, i32 3, i32 1) #11
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_abort, ptr %xmt_fcp_abort, i32 1, ptr elementtype(i32) %xmt_fcp_abort) #11, !srcloc !421
  %ctxlock = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 8
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  %flag48 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 17
  %46 = ptrtoint ptr %flag48 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flag48, align 8
  %48 = and i16 %47, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool51.not = icmp eq i16 %48, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call43) #11
  br label %cleanup

if.end54:                                         ; preds = %if.end38
  %or = or i16 %47, 2
  %49 = ptrtoint ptr %flag48 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %or, ptr %flag48, align 8
  %50 = and i16 %47, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool61.not = icmp eq i16 %50, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call43) #11
  br i1 %tobool61.not, label %if.end67, label %if.then62

if.then62:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %sid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 9
  %51 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sid, align 4
  %oxid64 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 11
  %53 = ptrtoint ptr %oxid64 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %oxid64, align 4
  tail call fastcc void @lpfc_nvmet_unsol_fcp_issue_abort(ptr noundef %3, ptr noundef %req, i32 noundef %52, i16 noundef zeroext %54)
  %55 = ptrtoint ptr %hdwq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hdwq, align 8
  %io_wq = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %io_wq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_wq, align 4
  tail call fastcc void @lpfc_nvmet_wqfull_flush(ptr noundef %3, ptr noundef %58, ptr noundef %req)
  br label %cleanup

if.end67:                                         ; preds = %if.end54
  %state69 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 16
  %59 = ptrtoint ptr %state69 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %state69, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %60)
  %cmp71 = icmp eq i16 %60, 4
  %sid74 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 9
  %61 = ptrtoint ptr %sid74 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sid74, align 4
  br i1 %cmp71, label %if.then73, label %if.else77

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %oxid75 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %req, i32 0, i32 11
  %63 = ptrtoint ptr %oxid75 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %oxid75, align 4
  tail call fastcc void @lpfc_nvmet_unsol_fcp_issue_abort(ptr noundef %3, ptr noundef %req, i32 noundef %62, i16 noundef zeroext %64)
  br label %cleanup

if.else77:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @lpfc_nvmet_sol_fcp_issue_abort(ptr noundef %3, ptr noundef %req, i32 noundef %62)
  br label %cleanup

cleanup:                                          ; preds = %if.else77, %if.then73, %if.then62, %if.then52, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_xmt_fcp_release(ptr nocapture noundef readonly %tgtport, ptr noundef %rsp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %tgtport, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %phba1 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 2
  %2 = ptrtoint ptr %phba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phba1, align 8
  %ctxlock = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 17
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flag, align 8
  %6 = and i16 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.else32, label %do.body8

do.body8:                                         ; preds = %entry
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 241
  %7 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pport, align 8
  %tobool9.not = icmp eq ptr %8, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %8, i32 0, i32 51
  %cfg_log_verbose11 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 139
  %cond.in = select i1 %tobool9.not, ptr %cfg_log_verbose11, ptr %cfg_log_verbose
  %9 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond = load i32, ptr %cond.in, align 4
  %and12 = and i32 %cond, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %do.end17

do.end17:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %12 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brd_no, align 4
  %conv19 = zext i16 %5 to i32
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %14 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %oxid, align 4
  %conv20 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.151, i32 noundef %13, i32 noundef %conv19, i32 noundef %conv20) #14
  br label %if.end85

if.else:                                          ; preds = %do.body8
  %16 = ptrtoint ptr %cfg_log_verbose11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_log_verbose11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %if.then23, label %if.else.if.end85_crit_edge

if.else.if.end85_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no24 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %18 = ptrtoint ptr %brd_no24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brd_no24, align 4
  %conv26 = zext i16 %5 to i32
  %oxid27 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %20 = ptrtoint ptr %oxid27 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %oxid27, align 4
  %conv28 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %3, ptr noundef nonnull @.str.151, i32 noundef %19, i32 noundef %conv26, i32 noundef %conv28) #11
  br label %if.end85

if.else32:                                        ; preds = %entry
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 16
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %state, align 2
  %24 = and i16 %23, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %24)
  %switch = icmp eq i16 %24, 6
  br i1 %switch, label %if.else32.if.end85_crit_edge, label %do.body41

if.else32.if.end85_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

do.body41:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev61 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %25 = ptrtoint ptr %pcidev61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcidev61, align 4
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %brd_no63 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %27 = ptrtoint ptr %brd_no63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %brd_no63, align 4
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %state, align 2
  %conv65 = zext i16 %30 to i32
  %entry_cnt = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 13
  %31 = ptrtoint ptr %entry_cnt to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %entry_cnt, align 8
  %conv66 = zext i16 %32 to i32
  %oxid67 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %33 = ptrtoint ptr %oxid67 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %oxid67, align 4
  %conv68 = zext i16 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev62, ptr noundef nonnull @.str.154, i32 noundef %28, i32 noundef %conv65, i32 noundef %conv66, i32 noundef %conv68) #14
  br label %if.end85

if.end85:                                         ; preds = %do.body41, %if.else32.if.end85_crit_edge, %if.then23, %if.else.if.end85_crit_edge, %do.end17
  %35 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flag, align 8
  %37 = and i16 %36, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %if.end85.if.end96_crit_edge, label %if.then95

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then95:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @lpfc_nvmet_defer_release(ptr noundef %3, ptr noundef %rsp)
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end85.if.end96_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call4) #11
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 304
  %39 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool98.not = icmp eq i16 %40, 0
  br i1 %tobool98.not, label %if.end96.if.end104_crit_edge, label %if.then99

if.end96.if.end104_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %41 = xor i1 %38, true
  %oxid100 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %42 = ptrtoint ptr %oxid100 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %oxid100, align 4
  %state101 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 16
  %44 = ptrtoint ptr %state101 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %state101, align 2
  %conv103 = zext i1 %41 to i32
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %3, ptr noundef nonnull @.str.156, i16 noundef zeroext %43, i16 noundef zeroext %45, i32 noundef %conv103) #11
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %if.end96.if.end104_crit_edge
  %xmt_fcp_release = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_release, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_release, i32 1, i32 3, i32 1) #11
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_release, ptr %xmt_fcp_release, i32 1, ptr elementtype(i32) %xmt_fcp_release) #11, !srcloc !421
  %47 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flag, align 8
  %49 = and i16 %48, -129
  store i16 %49, ptr %flag, align 8
  br i1 %38, label %if.end111, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  %ctxbuf = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 20
  %50 = ptrtoint ptr %ctxbuf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctxbuf, align 4
  tail call void @lpfc_nvmet_ctxbuf_post(ptr noundef %3, ptr noundef %51)
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %if.end104.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_defer_rcv(ptr nocapture noundef readnone %tgtport, ptr noundef %rsp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rqb_buffer = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 19
  %0 = ptrtoint ptr %rqb_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqb_buffer, align 8
  %phba1 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 2
  %2 = ptrtoint ptr %phba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phba1, align 8
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 304
  %4 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %6 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %oxid, align 4
  %size = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 12
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size, align 2
  %10 = tail call i32 @llvm.read_register.i32(metadata !411) #11
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %3, ptr noundef nonnull @.str.157, i16 noundef zeroext %7, i16 noundef zeroext %9, i32 noundef %13) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.body, label %if.end27

do.body:                                          ; preds = %if.end
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 241
  %14 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pport, align 8
  %tobool4.not = icmp eq ptr %15, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %15, i32 0, i32 51
  %cfg_log_verbose6 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 139
  %cond.in = select i1 %tobool4.not, ptr %cfg_log_verbose6, ptr %cfg_log_verbose
  %16 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %19 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brd_no, align 4
  %oxid10 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %21 = ptrtoint ptr %oxid10 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %oxid10, align 4
  %conv = zext i16 %22 to i32
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 17
  %23 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flag, align 8
  %conv11 = zext i16 %24 to i32
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 16
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %state, align 2
  %conv12 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.158, i32 noundef %20, i32 noundef %conv, i32 noundef %conv11, i32 noundef %conv12) #14
  br label %cleanup

if.else:                                          ; preds = %do.body
  %27 = ptrtoint ptr %cfg_log_verbose6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cfg_log_verbose6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool14.not = icmp eq i32 %28, 0
  br i1 %tobool14.not, label %if.then15, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no16 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %29 = ptrtoint ptr %brd_no16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brd_no16, align 4
  %oxid17 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 11
  %31 = ptrtoint ptr %oxid17 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %oxid17, align 4
  %conv18 = zext i16 %32 to i32
  %flag19 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 17
  %33 = ptrtoint ptr %flag19 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flag19, align 8
  %conv20 = zext i16 %34 to i32
  %state21 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 16
  %35 = ptrtoint ptr %state21 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %state21, align 2
  %conv22 = zext i16 %36 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %3, ptr noundef nonnull @.str.158, i32 noundef %30, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 159
  %37 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private, align 8
  %tobool28.not = icmp eq ptr %40, null
  br i1 %tobool28.not, label %if.end27.if.end30_crit_edge, label %if.then29

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %rcv_fcp_cmd_defer = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %40, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rcv_fcp_cmd_defer, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rcv_fcp_cmd_defer, i32 1, i32 3, i32 1) #11
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rcv_fcp_cmd_defer, ptr %rcv_fcp_cmd_defer, i32 1, ptr elementtype(i32) %rcv_fcp_cmd_defer) #11, !srcloc !421
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27.if.end30_crit_edge
  %hrq = getelementptr inbounds %struct.rqb_dmabuf, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %hrq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hrq, align 4
  %rqbp = getelementptr inbounds %struct.lpfc_queue, ptr %43, i32 0, i32 26
  %44 = ptrtoint ptr %rqbp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rqbp, align 4
  %rqb_free_buffer = getelementptr inbounds %struct.lpfc_rqb, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %rqb_free_buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rqb_free_buffer, align 4
  tail call void %47(ptr noundef %3, ptr noundef nonnull %1) #11
  %ctxlock = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %rsp, i32 0, i32 8
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  %48 = ptrtoint ptr %rqb_buffer to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rqb_buffer, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call36) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then15, %if.else.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_discovery_event(ptr nocapture noundef readonly %tgtport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %tgtport, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 241
  %4 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pport, align 8
  %call = tail call i32 @lpfc_issue_els_rscn(ptr noundef %5, i8 noundef zeroext 0) #11
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #11
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %8 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brd_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.163, ptr @.str.162
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.160, i32 noundef %9, ptr noundef nonnull %cond9) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_nvmet_ls_req(ptr nocapture noundef readonly %targetport, ptr noundef %hosthandle, ptr noundef %pnvme_lsreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %targetport, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 241
  %4 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pport, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %load_flag, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #11
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pport, align 8
  %call9 = tail call i32 @__lpfc_nvme_ls_req(ptr noundef %12, ptr noundef %hosthandle, ptr noundef %pnvme_lsreq, ptr noundef nonnull @lpfc_nvmet_ls_req_cmp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -13, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_ls_abort(ptr nocapture noundef readonly %targetport, ptr noundef %hosthandle, ptr noundef %pnvme_lsreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %targetport, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 241
  %4 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pport, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %load_flag, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @__lpfc_nvme_ls_abort(ptr noundef %5, ptr noundef %hosthandle, ptr noundef %pnvme_lsreq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_ls_abort = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_abort, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_abort, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_abort, ptr %xmt_ls_abort, i32 1, ptr elementtype(i32) %xmt_ls_abort) #11, !srcloc !421
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_host_release(ptr noundef %hosthandle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phba1 = getelementptr inbounds %struct.lpfc_nodelist, ptr %hosthandle, i32 0, i32 22
  %0 = ptrtoint ptr %phba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phba1, align 8
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 159
  %2 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %targetport, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 165
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %8 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brd_no, align 4
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %hosthandle, i32 0, i32 6
  %10 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlp_DID, align 8
  %fc4_xpt_flags = getelementptr inbounds %struct.lpfc_nodelist, ptr %hosthandle, i32 0, i32 37
  %12 = ptrtoint ptr %fc4_xpt_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fc4_xpt_flags, align 4
  %kref = getelementptr inbounds %struct.lpfc_nodelist, ptr %hosthandle, i32 0, i32 29
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #11
  %14 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.164, i32 noundef %9, ptr noundef %hosthandle, i32 noundef %11, i32 noundef %13, i32 noundef %15) #14
  %16 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %targetport, align 8
  %private25 = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %private25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private25, align 8
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %hosthandle, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %20 = ptrtoint ptr %fc4_xpt_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fc4_xpt_flags, align 4
  %and27 = and i32 %21, -17
  store i32 %and27, ptr %fc4_xpt_flags, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %call29 = tail call i32 @lpfc_nlp_put(ptr noundef %hosthandle) #11
  %state = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %19, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #11
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_xmt_ls_rsp_cmp(ptr noundef %phba, ptr noundef %cmdwqe, ptr nocapture noundef readonly %wcqe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %0 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targetport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.finish_crit_edge, label %if.end

entry.finish_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %finish

if.end:                                           ; preds = %entry
  %parameter = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %2 = ptrtoint ptr %parameter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parameter, align 4
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.finish_crit_edge, label %if.then4

if.end.finish_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %finish

if.then4:                                         ; preds = %if.end
  %6 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wcqe, align 4
  %8 = and i32 %7, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  %xmt_ls_rsp_error = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %5, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_rsp_error, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_rsp_error, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_rsp_error, ptr %xmt_ls_rsp_error, i32 1, ptr elementtype(i32) %xmt_ls_rsp_error) #11, !srcloc !421
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %3)
  %cmp = icmp eq i32 %3, 22
  br i1 %cmp, label %if.then7, label %if.then6.if.end8_crit_edge

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_ls_rsp_aborted = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %5, i32 0, i32 11
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_rsp_aborted, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_rsp_aborted, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_rsp_aborted, ptr %xmt_ls_rsp_aborted, i32 1, ptr elementtype(i32) %xmt_ls_rsp_aborted) #11, !srcloc !421
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then6.if.end8_crit_edge
  %word3 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %11 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word3, align 4
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.end8.finish_crit_edge, label %if.then12

if.end8.finish_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %finish

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_ls_rsp_xb_set = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %5, i32 0, i32 12
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_rsp_xb_set, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_rsp_xb_set, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_rsp_xb_set, ptr %xmt_ls_rsp_xb_set, i32 1, ptr elementtype(i32) %xmt_ls_rsp_xb_set) #11, !srcloc !421
  br label %finish

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_ls_rsp_cmpl = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %5, i32 0, i32 13
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_ls_rsp_cmpl, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_ls_rsp_cmpl, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_ls_rsp_cmpl, ptr %xmt_ls_rsp_cmpl, i32 1, ptr elementtype(i32) %xmt_ls_rsp_cmpl) #11, !srcloc !421
  br label %finish

finish:                                           ; preds = %if.else, %if.then12, %if.end8.finish_crit_edge, %if.end.finish_crit_edge, %entry.finish_crit_edge
  tail call void @__lpfc_nvme_xmt_ls_rsp_cmp(ptr noundef %phba, ptr noundef %cmdwqe, ptr noundef %wcqe)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_xmt_fcp_op_cmp(ptr noundef %phba, ptr nocapture noundef %cmdwqe, ptr nocapture noundef readonly %wcqe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 19
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flag, align 8
  %4 = and i16 %3, -2
  store i16 %4, ptr %flag, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4
  %7 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wcqe, align 4
  %shr = lshr i32 %8, 8
  %and4 = and i32 %shr, 255
  %parameter = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %9 = ptrtoint ptr %parameter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parameter, align 4
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %11 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %targetport, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tgtp.0 = phi ptr [ %14, %if.then ], [ null, %entry.if.end_crit_edge ]
  %nvmeio_trc_on = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 304
  %15 = ptrtoint ptr %nvmeio_trc_on to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nvmeio_trc_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool6.not = icmp eq i16 %16, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %oxid, align 4
  %conv8 = zext i8 %6 to i16
  tail call void @lpfc_debugfs_nvme_trc(ptr noundef %phba, ptr noundef nonnull @.str.142, i16 noundef zeroext %18, i16 noundef zeroext %conv8, i32 noundef %and4) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool10.not = icmp eq i32 %and4, 0
  %fcp_error69 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 14
  br i1 %tobool10.not, label %if.else68, label %if.then11

if.then11:                                        ; preds = %if.end9
  %19 = ptrtoint ptr %fcp_error69 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %fcp_error69, align 4
  %transferred_length = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %transferred_length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %transferred_length, align 4
  %tobool12.not = icmp eq ptr %tgtp.0, null
  br i1 %tobool12.not, label %if.end17.thread, label %if.then13

if.then13:                                        ; preds = %if.then11
  %xmt_fcp_rsp_error = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %tgtp.0, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp_error, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_rsp_error, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_rsp_error, ptr %xmt_fcp_rsp_error, i32 1, ptr elementtype(i32) %xmt_fcp_rsp_error) #11, !srcloc !421
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %10)
  %cmp = icmp eq i32 %10, 22
  br i1 %cmp, label %if.then15, label %if.then13.if.end17_crit_edge

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_fcp_rsp_aborted = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %tgtp.0, i32 0, i32 27
  %call.i.i309 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp_aborted, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_rsp_aborted, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_rsp_aborted, ptr %xmt_fcp_rsp_aborted, i32 1, ptr elementtype(i32) %xmt_fcp_rsp_aborted) #11, !srcloc !421
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then13.if.end17_crit_edge
  %word3 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %23 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %word3, align 4
  %25 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20.not = icmp eq i32 %25, 0
  br i1 %tobool20.not, label %if.end17.if.else29_crit_edge, label %if.then27.critedge

if.end17.if.else29_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else29

if.end17.thread:                                  ; preds = %if.then11
  %word3314 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %26 = ptrtoint ptr %word3314 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %word3314, align 4
  %28 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not315 = icmp eq i32 %28, 0
  br i1 %tobool20.not315, label %if.end17.thread.if.else29_crit_edge, label %if.then21.thread

if.end17.thread.if.else29_crit_edge:              ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else29

if.then21.thread:                                 ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flag, align 8
  %31 = or i16 %30, 4
  store i16 %31, ptr %flag, align 8
  br label %do.body

if.then27.critedge:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flag, align 8
  %34 = or i16 %33, 4
  store i16 %34, ptr %flag, align 8
  %xmt_fcp_rsp_xb_set = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %tgtp.0, i32 0, i32 24
  %call.i.i310 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp_xb_set, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_rsp_xb_set, i32 1, i32 3, i32 1) #11
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_rsp_xb_set, ptr %xmt_fcp_rsp_xb_set, i32 1, ptr elementtype(i32) %xmt_fcp_rsp_xb_set) #11, !srcloc !421
  br label %do.body

if.else29:                                        ; preds = %if.end17.thread.if.else29_crit_edge, %if.end17.if.else29_crit_edge
  %36 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flag, align 8
  %38 = and i16 %37, -5
  store i16 %38, ptr %flag, align 8
  br label %do.body

do.body:                                          ; preds = %if.else29, %if.then27.critedge, %if.then21.thread
  %logerr.0 = phi i32 [ 12582912, %if.then27.critedge ], [ 8388608, %if.else29 ], [ 12582912, %if.then21.thread ]
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %39 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pport, align 8
  %tobool35.not = icmp eq ptr %40, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %40, i32 0, i32 51
  %cfg_log_verbose37 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool35.not, ptr %cfg_log_verbose37, ptr %cfg_log_verbose
  %41 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %41)
  %cond = load i32, ptr %cond.in, align 4
  %and38 = and i32 %cond, %logerr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else51, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %42 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %44 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brd_no, align 4
  %oxid46 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %46 = ptrtoint ptr %oxid46 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %oxid46, align 4
  %conv47 = zext i16 %47 to i32
  %ctxbuf = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 20
  %48 = ptrtoint ptr %ctxbuf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctxbuf, align 4
  %sglq = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %sglq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sglq, align 4
  %sli4_xritag = getelementptr inbounds %struct.lpfc_sglq, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %sli4_xritag to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sli4_xritag, align 4
  %conv48 = zext i16 %53 to i32
  %54 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flag, align 8
  %conv50 = zext i16 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.143, i32 noundef %45, i32 noundef %conv47, i32 noundef %conv48, i32 noundef %and4, i32 noundef %10, i32 noundef %conv50) #14
  br label %if.end81

if.else51:                                        ; preds = %do.body
  %56 = ptrtoint ptr %cfg_log_verbose37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cfg_log_verbose37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool53.not = icmp eq i32 %57, 0
  br i1 %tobool53.not, label %if.then54, label %if.else51.if.end81_crit_edge

if.else51.if.end81_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then54:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no55 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %58 = ptrtoint ptr %brd_no55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %brd_no55, align 4
  %oxid56 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %60 = ptrtoint ptr %oxid56 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %oxid56, align 4
  %conv57 = zext i16 %61 to i32
  %ctxbuf58 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 20
  %62 = ptrtoint ptr %ctxbuf58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctxbuf58, align 4
  %sglq59 = getelementptr inbounds %struct.lpfc_nvmet_ctxbuf, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %sglq59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sglq59, align 4
  %sli4_xritag60 = getelementptr inbounds %struct.lpfc_sglq, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %sli4_xritag60 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %sli4_xritag60, align 4
  %conv61 = zext i16 %67 to i32
  %68 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %flag, align 8
  %conv63 = zext i16 %69 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.143, i32 noundef %59, i32 noundef %conv57, i32 noundef %conv61, i32 noundef %and4, i32 noundef %10, i32 noundef %conv63) #11
  br label %if.end81

if.else68:                                        ; preds = %if.end9
  %70 = ptrtoint ptr %fcp_error69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %fcp_error69, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp70 = icmp eq i8 %6, 4
  br i1 %cmp70, label %if.then72, label %if.else75

if.then72:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  %rsplen = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 10
  %71 = ptrtoint ptr %rsplen to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %rsplen, align 4
  %conv73 = zext i16 %72 to i32
  br label %if.end77

if.else75:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  %transfer_length = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %transfer_length to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %transfer_length, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then72
  %.sink = phi i32 [ %conv73, %if.then72 ], [ %74, %if.else75 ]
  %75 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 13
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %.sink, ptr %75, align 4
  %tobool78.not = icmp eq ptr %tgtp.0, null
  br i1 %tobool78.not, label %if.end77.if.end81_crit_edge, label %if.then79

if.end77.if.end81_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_fcp_rsp_cmpl = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %tgtp.0, i32 0, i32 25
  %call.i.i311 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_rsp_cmpl, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_rsp_cmpl, i32 1, i32 3, i32 1) #11
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_rsp_cmpl, ptr %xmt_fcp_rsp_cmpl, i32 1, ptr elementtype(i32) %xmt_fcp_rsp_cmpl) #11, !srcloc !421
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end77.if.end81_crit_edge, %if.then54, %if.else51.if.end81_crit_edge, %do.end
  %.off = add i8 %6, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then86, label %if.else109

if.then86:                                        ; preds = %if.end81
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 16
  %78 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 7, ptr %state, align 2
  %entry_cnt = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 13
  %79 = ptrtoint ptr %entry_cnt to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %entry_cnt, align 8
  %inc = add i16 %80, 1
  store i16 %inc, ptr %entry_cnt, align 8
  %ts_cmd_nvme = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 23
  %81 = ptrtoint ptr %ts_cmd_nvme to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %ts_cmd_nvme, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %tobool87.not = icmp eq i64 %82, 0
  br i1 %tobool87.not, label %if.then86.if.end104_crit_edge, label %if.then88

if.then86.if.end104_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then88:                                        ; preds = %if.then86
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %84)
  %cmp91 = icmp eq i8 %84, 3
  %isr_timestamp = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 9
  %85 = ptrtoint ptr %isr_timestamp to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %isr_timestamp, align 8
  br i1 %cmp91, label %if.then93, label %if.else98

if.then93:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  %ts_isr_data = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 26
  %87 = ptrtoint ptr %ts_isr_data to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %ts_isr_data, align 8
  %call.i = tail call i64 @ktime_get() #11
  %ts_data_nvme = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 27
  %88 = ptrtoint ptr %ts_data_nvme to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %call.i, ptr %ts_data_nvme, align 8
  %ts_nvme_status = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 28
  %89 = ptrtoint ptr %ts_nvme_status to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %call.i, ptr %ts_nvme_status, align 8
  %ts_status_wqput = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 29
  %90 = ptrtoint ptr %ts_status_wqput to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %call.i, ptr %ts_status_wqput, align 8
  %ts_isr_status = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 30
  %91 = ptrtoint ptr %ts_isr_status to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %call.i, ptr %ts_isr_status, align 8
  br label %if.end104.sink.split

if.else98:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  %ts_isr_status100 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 30
  %92 = ptrtoint ptr %ts_isr_status100 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %86, ptr %ts_isr_status100, align 8
  %call.i312 = tail call i64 @ktime_get() #11
  br label %if.end104.sink.split

if.end104.sink.split:                             ; preds = %if.else98, %if.then93
  %call.i.sink = phi i64 [ %call.i, %if.then93 ], [ %call.i312, %if.else98 ]
  %ts_status_nvme = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 31
  %93 = ptrtoint ptr %ts_status_nvme to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %call.i.sink, ptr %ts_status_nvme, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.end104.sink.split, %if.then86.if.end104_crit_edge
  %done = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 11
  %94 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %done, align 4
  tail call void %95(ptr noundef %1) #11
  %96 = ptrtoint ptr %ts_cmd_nvme to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %ts_cmd_nvme, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %tobool106.not = icmp eq i64 %97, 0
  br i1 %tobool106.not, label %if.end104.if.end121_crit_edge, label %if.then107

if.end104.if.end121_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then107:                                       ; preds = %if.end104
  %ts_isr_cmd.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 22
  %98 = ptrtoint ptr %ts_isr_cmd.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %ts_isr_cmd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %99)
  %tobool.not.i = icmp eq i64 %99, 0
  br i1 %tobool.not.i, label %if.then107.if.end121_crit_edge, label %lor.lhs.false2.i

if.then107.if.end121_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

lor.lhs.false2.i:                                 ; preds = %if.then107
  %ts_nvme_data.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 24
  %100 = ptrtoint ptr %ts_nvme_data.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %ts_nvme_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %101)
  %tobool3.not.i = icmp eq i64 %101, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.if.end121_crit_edge, label %lor.lhs.false4.i

lor.lhs.false2.i.if.end121_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false2.i
  %ts_data_wqput.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 25
  %102 = ptrtoint ptr %ts_data_wqput.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %ts_data_wqput.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %103)
  %tobool5.not.i = icmp eq i64 %103, 0
  br i1 %tobool5.not.i, label %lor.lhs.false4.i.if.end121_crit_edge, label %lor.lhs.false6.i

lor.lhs.false4.i.if.end121_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %ts_isr_data.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 26
  %104 = ptrtoint ptr %ts_isr_data.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %ts_isr_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %105)
  %tobool7.not.i = icmp eq i64 %105, 0
  br i1 %tobool7.not.i, label %lor.lhs.false6.i.if.end121_crit_edge, label %lor.lhs.false8.i

lor.lhs.false6.i.if.end121_crit_edge:             ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false6.i
  %ts_data_nvme.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 27
  %106 = ptrtoint ptr %ts_data_nvme.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %ts_data_nvme.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %107)
  %tobool9.not.i = icmp eq i64 %107, 0
  br i1 %tobool9.not.i, label %lor.lhs.false8.i.if.end121_crit_edge, label %lor.lhs.false10.i

lor.lhs.false8.i.if.end121_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

lor.lhs.false10.i:                                ; preds = %lor.lhs.false8.i
  %ts_nvme_status.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 28
  %108 = ptrtoint ptr %ts_nvme_status.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %ts_nvme_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %109)
  %tobool11.not.i = icmp eq i64 %109, 0
  br i1 %tobool11.not.i, label %lor.lhs.false10.i.if.end121_crit_edge, label %lor.lhs.false12.i

lor.lhs.false10.i.if.end121_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

lor.lhs.false12.i:                                ; preds = %lor.lhs.false10.i
  %ts_status_wqput.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 29
  %110 = ptrtoint ptr %ts_status_wqput.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %ts_status_wqput.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %111)
  %tobool13.not.i = icmp eq i64 %111, 0
  br i1 %tobool13.not.i, label %lor.lhs.false12.i.if.end121_crit_edge, label %lor.lhs.false14.i

lor.lhs.false12.i.if.end121_crit_edge:            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

lor.lhs.false14.i:                                ; preds = %lor.lhs.false12.i
  %ts_isr_status.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 30
  %112 = ptrtoint ptr %ts_isr_status.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %ts_isr_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %tobool15.not.i = icmp eq i64 %113, 0
  br i1 %tobool15.not.i, label %lor.lhs.false14.i.if.end121_crit_edge, label %lor.lhs.false16.i

lor.lhs.false14.i.if.end121_crit_edge:            ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

lor.lhs.false16.i:                                ; preds = %lor.lhs.false14.i
  %ts_status_nvme.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 31
  %114 = ptrtoint ptr %ts_status_nvme.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ts_status_nvme.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %115)
  %tobool17.not.i = icmp eq i64 %115, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %115, i64 %99)
  %cmp.i = icmp ult i64 %115, %99
  %or.cond.i = select i1 %tobool17.not.i, i1 true, i1 %cmp.i
  call void @__sanitizer_cov_trace_cmp8(i64 %97, i64 %99)
  %cmp24.i = icmp ult i64 %97, %99
  %or.cond473.i = select i1 %or.cond.i, i1 true, i1 %cmp24.i
  call void @__sanitizer_cov_trace_cmp8(i64 %97, i64 %101)
  %cmp29.i = icmp ugt i64 %97, %101
  %or.cond474.i = select i1 %or.cond473.i, i1 true, i1 %cmp29.i
  call void @__sanitizer_cov_trace_cmp8(i64 %101, i64 %103)
  %cmp34.i = icmp ugt i64 %101, %103
  %or.cond475.i = select i1 %or.cond474.i, i1 true, i1 %cmp34.i
  call void @__sanitizer_cov_trace_cmp8(i64 %103, i64 %105)
  %cmp39.i = icmp ugt i64 %103, %105
  %or.cond476.i = select i1 %or.cond475.i, i1 true, i1 %cmp39.i
  call void @__sanitizer_cov_trace_cmp8(i64 %105, i64 %107)
  %cmp44.i = icmp ugt i64 %105, %107
  %or.cond477.i = select i1 %or.cond476.i, i1 true, i1 %cmp44.i
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %109)
  %cmp49.i = icmp ugt i64 %107, %109
  %or.cond478.i = select i1 %or.cond477.i, i1 true, i1 %cmp49.i
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %111)
  %cmp54.i = icmp ugt i64 %109, %111
  %or.cond479.i = select i1 %or.cond478.i, i1 true, i1 %cmp54.i
  call void @__sanitizer_cov_trace_cmp8(i64 %111, i64 %113)
  %cmp59.i = icmp ugt i64 %111, %113
  %or.cond480.i = select i1 %or.cond479.i, i1 true, i1 %cmp59.i
  call void @__sanitizer_cov_trace_cmp8(i64 %113, i64 %115)
  %cmp64.i = icmp ugt i64 %113, %115
  %or.cond481.i = select i1 %or.cond480.i, i1 true, i1 %cmp64.i
  br i1 %or.cond481.i, label %lor.lhs.false16.i.if.end121_crit_edge, label %if.end66.i

lor.lhs.false16.i.if.end121_crit_edge:            ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end66.i:                                       ; preds = %lor.lhs.false16.i
  %sub.i = sub i64 %97, %99
  %sub71.i = sub i64 %101, %99
  call void @__sanitizer_cov_trace_cmp8(i64 %sub71.i, i64 %sub.i)
  %cmp72.i = icmp ult i64 %sub71.i, %sub.i
  br i1 %cmp72.i, label %if.end66.i.if.end121_crit_edge, label %if.end74.i

if.end66.i.if.end121_crit_edge:                   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end74.i:                                       ; preds = %if.end66.i
  %sub75.i = sub i64 %sub71.i, %sub.i
  %sub78.i = sub i64 %103, %99
  call void @__sanitizer_cov_trace_cmp8(i64 %sub78.i, i64 %sub71.i)
  %cmp79.i = icmp ult i64 %sub78.i, %sub71.i
  br i1 %cmp79.i, label %if.end74.i.if.end121_crit_edge, label %if.end81.i

if.end74.i.if.end121_crit_edge:                   ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end81.i:                                       ; preds = %if.end74.i
  %sub82.i = sub i64 %sub78.i, %sub71.i
  %sub86.i = sub i64 %105, %99
  call void @__sanitizer_cov_trace_cmp8(i64 %sub86.i, i64 %sub78.i)
  %cmp87.i = icmp ult i64 %sub86.i, %sub78.i
  br i1 %cmp87.i, label %if.end81.i.if.end121_crit_edge, label %if.end89.i

if.end81.i.if.end121_crit_edge:                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end89.i:                                       ; preds = %if.end81.i
  %sub90.i = sub i64 %sub86.i, %sub78.i
  %sub94.i = sub i64 %107, %99
  call void @__sanitizer_cov_trace_cmp8(i64 %sub94.i, i64 %sub86.i)
  %cmp95.i = icmp ult i64 %sub94.i, %sub86.i
  br i1 %cmp95.i, label %if.end89.i.if.end121_crit_edge, label %if.end97.i

if.end89.i.if.end121_crit_edge:                   ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end97.i:                                       ; preds = %if.end89.i
  %sub98.i = sub i64 %sub94.i, %sub86.i
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %107)
  %cmp102.i = icmp ugt i64 %109, %107
  br i1 %cmp102.i, label %if.then103.i, label %if.else.i

if.then103.i:                                     ; preds = %if.end97.i
  %sub106.i = sub i64 %109, %99
  call void @__sanitizer_cov_trace_cmp8(i64 %sub106.i, i64 %sub94.i)
  %cmp107.i = icmp ult i64 %sub106.i, %sub94.i
  br i1 %cmp107.i, label %if.then103.i.if.end121_crit_edge, label %if.end109.i

if.then103.i.if.end121_crit_edge:                 ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end109.i:                                      ; preds = %if.then103.i
  %sub110.i = sub i64 %sub106.i, %sub94.i
  %sub114.i = sub i64 %111, %99
  call void @__sanitizer_cov_trace_cmp8(i64 %sub114.i, i64 %sub106.i)
  %cmp115.i = icmp ult i64 %sub114.i, %sub106.i
  br i1 %cmp115.i, label %if.end109.i.if.end121_crit_edge, label %if.end117.i

if.end109.i.if.end121_crit_edge:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end117.i:                                      ; preds = %if.end109.i
  %sub118.i = sub i64 %sub114.i, %sub106.i
  %sub122.i = sub i64 %113, %99
  call void @__sanitizer_cov_trace_cmp8(i64 %sub122.i, i64 %sub114.i)
  %cmp123.i = icmp ult i64 %sub122.i, %sub114.i
  br i1 %cmp123.i, label %if.end117.i.if.end121_crit_edge, label %if.end125.i

if.end117.i.if.end121_crit_edge:                  ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end125.i:                                      ; preds = %if.end117.i
  %sub130.i = sub i64 %115, %99
  call void @__sanitizer_cov_trace_cmp8(i64 %sub130.i, i64 %sub122.i)
  %cmp131.i = icmp ult i64 %sub130.i, %sub122.i
  call void @__sanitizer_cov_trace_cmp8(i64 %113, i64 %99)
  %cmp138.i = icmp ult i64 %113, %99
  %or.cond482.i = or i1 %cmp138.i, %cmp131.i
  br i1 %or.cond482.i, label %if.end125.i.if.end121_crit_edge, label %if.end140.i

if.end125.i.if.end121_crit_edge:                  ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end140.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub126.i = sub i64 %sub122.i, %sub114.i
  %sub134.i = sub i64 %sub130.i, %sub122.i
  br label %if.end152.i

if.else.i:                                        ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_cmp8(i64 %105, i64 %99)
  %cmp146.i = icmp ult i64 %105, %99
  br i1 %cmp146.i, label %if.else.i.if.end121_crit_edge, label %if.else.i.if.end152.i_crit_edge

if.else.i.if.end152.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i

if.else.i.if.end121_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end152.i:                                      ; preds = %if.else.i.if.end152.i_crit_edge, %if.end140.i
  %seg6.0.i = phi i64 [ %sub110.i, %if.end140.i ], [ 0, %if.else.i.if.end152.i_crit_edge ]
  %seg7.0.i = phi i64 [ %sub118.i, %if.end140.i ], [ 0, %if.else.i.if.end152.i_crit_edge ]
  %seg8.0.i = phi i64 [ %sub126.i, %if.end140.i ], [ 0, %if.else.i.if.end152.i_crit_edge ]
  %seg9.0.i = phi i64 [ %sub134.i, %if.end140.i ], [ 0, %if.else.i.if.end152.i_crit_edge ]
  %seg10.0.i = phi i64 [ %sub122.i, %if.end140.i ], [ %sub86.i, %if.else.i.if.end152.i_crit_edge ]
  %ktime_seg1_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 353
  %116 = ptrtoint ptr %ktime_seg1_total.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %ktime_seg1_total.i, align 8
  %add153.i = add i64 %117, %sub.i
  store i64 %add153.i, ptr %ktime_seg1_total.i, align 8
  %ktime_seg1_min.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 354
  %118 = ptrtoint ptr %ktime_seg1_min.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ktime_seg1_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %119)
  %cmp154.i = icmp ult i64 %sub.i, %119
  br i1 %cmp154.i, label %if.end152.i.if.end162.sink.split.i_crit_edge, label %if.else157.i

if.end152.i.if.end162.sink.split.i_crit_edge:     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162.sink.split.i

if.else157.i:                                     ; preds = %if.end152.i
  %ktime_seg1_max.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 355
  %120 = ptrtoint ptr %ktime_seg1_max.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %ktime_seg1_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %121)
  %cmp158.i = icmp ugt i64 %sub.i, %121
  br i1 %cmp158.i, label %if.else157.i.if.end162.sink.split.i_crit_edge, label %if.else157.i.if.end162.i_crit_edge

if.else157.i.if.end162.i_crit_edge:               ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162.i

if.else157.i.if.end162.sink.split.i_crit_edge:    ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162.sink.split.i

if.end162.sink.split.i:                           ; preds = %if.else157.i.if.end162.sink.split.i_crit_edge, %if.end152.i.if.end162.sink.split.i_crit_edge
  %ktime_seg1_max.sink.i = phi ptr [ %ktime_seg1_min.i, %if.end152.i.if.end162.sink.split.i_crit_edge ], [ %ktime_seg1_max.i, %if.else157.i.if.end162.sink.split.i_crit_edge ]
  %122 = ptrtoint ptr %ktime_seg1_max.sink.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %sub.i, ptr %ktime_seg1_max.sink.i, align 8
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.end162.sink.split.i, %if.else157.i.if.end162.i_crit_edge
  %ktime_seg2_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 356
  %123 = ptrtoint ptr %ktime_seg2_total.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %ktime_seg2_total.i, align 8
  %add163.i = add i64 %124, %sub75.i
  store i64 %add163.i, ptr %ktime_seg2_total.i, align 8
  %ktime_seg2_min.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 357
  %125 = ptrtoint ptr %ktime_seg2_min.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %ktime_seg2_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub75.i, i64 %126)
  %cmp164.i = icmp ult i64 %sub75.i, %126
  br i1 %cmp164.i, label %if.end162.i.if.end172.sink.split.i_crit_edge, label %if.else167.i

if.end162.i.if.end172.sink.split.i_crit_edge:     ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172.sink.split.i

if.else167.i:                                     ; preds = %if.end162.i
  %ktime_seg2_max.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 358
  %127 = ptrtoint ptr %ktime_seg2_max.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %ktime_seg2_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub75.i, i64 %128)
  %cmp168.i = icmp ugt i64 %sub75.i, %128
  br i1 %cmp168.i, label %if.else167.i.if.end172.sink.split.i_crit_edge, label %if.else167.i.if.end172.i_crit_edge

if.else167.i.if.end172.i_crit_edge:               ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172.i

if.else167.i.if.end172.sink.split.i_crit_edge:    ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172.sink.split.i

if.end172.sink.split.i:                           ; preds = %if.else167.i.if.end172.sink.split.i_crit_edge, %if.end162.i.if.end172.sink.split.i_crit_edge
  %ktime_seg2_max.sink.i = phi ptr [ %ktime_seg2_min.i, %if.end162.i.if.end172.sink.split.i_crit_edge ], [ %ktime_seg2_max.i, %if.else167.i.if.end172.sink.split.i_crit_edge ]
  %129 = ptrtoint ptr %ktime_seg2_max.sink.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %sub75.i, ptr %ktime_seg2_max.sink.i, align 8
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.end172.sink.split.i, %if.else167.i.if.end172.i_crit_edge
  %ktime_seg3_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 359
  %130 = ptrtoint ptr %ktime_seg3_total.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %ktime_seg3_total.i, align 8
  %add173.i = add i64 %131, %sub82.i
  store i64 %add173.i, ptr %ktime_seg3_total.i, align 8
  %ktime_seg3_min.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 360
  %132 = ptrtoint ptr %ktime_seg3_min.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %ktime_seg3_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub82.i, i64 %133)
  %cmp174.i = icmp ult i64 %sub82.i, %133
  br i1 %cmp174.i, label %if.end172.i.if.end182.sink.split.i_crit_edge, label %if.else177.i

if.end172.i.if.end182.sink.split.i_crit_edge:     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182.sink.split.i

if.else177.i:                                     ; preds = %if.end172.i
  %ktime_seg3_max.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 361
  %134 = ptrtoint ptr %ktime_seg3_max.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %ktime_seg3_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub82.i, i64 %135)
  %cmp178.i = icmp ugt i64 %sub82.i, %135
  br i1 %cmp178.i, label %if.else177.i.if.end182.sink.split.i_crit_edge, label %if.else177.i.if.end182.i_crit_edge

if.else177.i.if.end182.i_crit_edge:               ; preds = %if.else177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182.i

if.else177.i.if.end182.sink.split.i_crit_edge:    ; preds = %if.else177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182.sink.split.i

if.end182.sink.split.i:                           ; preds = %if.else177.i.if.end182.sink.split.i_crit_edge, %if.end172.i.if.end182.sink.split.i_crit_edge
  %ktime_seg3_max.sink.i = phi ptr [ %ktime_seg3_min.i, %if.end172.i.if.end182.sink.split.i_crit_edge ], [ %ktime_seg3_max.i, %if.else177.i.if.end182.sink.split.i_crit_edge ]
  %136 = ptrtoint ptr %ktime_seg3_max.sink.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %sub82.i, ptr %ktime_seg3_max.sink.i, align 8
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.end182.sink.split.i, %if.else177.i.if.end182.i_crit_edge
  %ktime_seg4_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 362
  %137 = ptrtoint ptr %ktime_seg4_total.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %ktime_seg4_total.i, align 8
  %add183.i = add i64 %138, %sub90.i
  store i64 %add183.i, ptr %ktime_seg4_total.i, align 8
  %ktime_seg4_min.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 363
  %139 = ptrtoint ptr %ktime_seg4_min.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %ktime_seg4_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub90.i, i64 %140)
  %cmp184.i = icmp ult i64 %sub90.i, %140
  br i1 %cmp184.i, label %if.end182.i.if.end192.sink.split.i_crit_edge, label %if.else187.i

if.end182.i.if.end192.sink.split.i_crit_edge:     ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192.sink.split.i

if.else187.i:                                     ; preds = %if.end182.i
  %ktime_seg4_max.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 364
  %141 = ptrtoint ptr %ktime_seg4_max.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %ktime_seg4_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub90.i, i64 %142)
  %cmp188.i = icmp ugt i64 %sub90.i, %142
  br i1 %cmp188.i, label %if.else187.i.if.end192.sink.split.i_crit_edge, label %if.else187.i.if.end192.i_crit_edge

if.else187.i.if.end192.i_crit_edge:               ; preds = %if.else187.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192.i

if.else187.i.if.end192.sink.split.i_crit_edge:    ; preds = %if.else187.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192.sink.split.i

if.end192.sink.split.i:                           ; preds = %if.else187.i.if.end192.sink.split.i_crit_edge, %if.end182.i.if.end192.sink.split.i_crit_edge
  %ktime_seg4_max.sink.i = phi ptr [ %ktime_seg4_min.i, %if.end182.i.if.end192.sink.split.i_crit_edge ], [ %ktime_seg4_max.i, %if.else187.i.if.end192.sink.split.i_crit_edge ]
  %143 = ptrtoint ptr %ktime_seg4_max.sink.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %sub90.i, ptr %ktime_seg4_max.sink.i, align 8
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.end192.sink.split.i, %if.else187.i.if.end192.i_crit_edge
  %ktime_seg5_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 365
  %144 = ptrtoint ptr %ktime_seg5_total.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %ktime_seg5_total.i, align 8
  %add193.i = add i64 %145, %sub98.i
  store i64 %add193.i, ptr %ktime_seg5_total.i, align 8
  %ktime_seg5_min.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 366
  %146 = ptrtoint ptr %ktime_seg5_min.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %ktime_seg5_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub98.i, i64 %147)
  %cmp194.i = icmp ult i64 %sub98.i, %147
  br i1 %cmp194.i, label %if.end192.i.if.end202.sink.split.i_crit_edge, label %if.else197.i

if.end192.i.if.end202.sink.split.i_crit_edge:     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202.sink.split.i

if.else197.i:                                     ; preds = %if.end192.i
  %ktime_seg5_max.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 367
  %148 = ptrtoint ptr %ktime_seg5_max.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %ktime_seg5_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub98.i, i64 %149)
  %cmp198.i = icmp ugt i64 %sub98.i, %149
  br i1 %cmp198.i, label %if.else197.i.if.end202.sink.split.i_crit_edge, label %if.else197.i.if.end202.i_crit_edge

if.else197.i.if.end202.i_crit_edge:               ; preds = %if.else197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202.i

if.else197.i.if.end202.sink.split.i_crit_edge:    ; preds = %if.else197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202.sink.split.i

if.end202.sink.split.i:                           ; preds = %if.else197.i.if.end202.sink.split.i_crit_edge, %if.end192.i.if.end202.sink.split.i_crit_edge
  %ktime_seg5_max.sink.i = phi ptr [ %ktime_seg5_min.i, %if.end192.i.if.end202.sink.split.i_crit_edge ], [ %ktime_seg5_max.i, %if.else197.i.if.end202.sink.split.i_crit_edge ]
  %150 = ptrtoint ptr %ktime_seg5_max.sink.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %sub98.i, ptr %ktime_seg5_max.sink.i, align 8
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.end202.sink.split.i, %if.else197.i.if.end202.i_crit_edge
  %ktime_data_samples.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 350
  %151 = ptrtoint ptr %ktime_data_samples.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %ktime_data_samples.i, align 8
  %inc.i = add i64 %152, 1
  store i64 %inc.i, ptr %ktime_data_samples.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %seg6.0.i)
  %tobool203.not.i = icmp eq i64 %seg6.0.i, 0
  br i1 %tobool203.not.i, label %if.end202.i.out.i_crit_edge, label %if.end205.i

if.end202.i.out.i_crit_edge:                      ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end205.i:                                      ; preds = %if.end202.i
  %ktime_seg6_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 368
  %153 = ptrtoint ptr %ktime_seg6_total.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %ktime_seg6_total.i, align 8
  %add206.i = add i64 %154, %seg6.0.i
  store i64 %add206.i, ptr %ktime_seg6_total.i, align 8
  %ktime_seg6_min.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 369
  %155 = ptrtoint ptr %ktime_seg6_min.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %ktime_seg6_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seg6.0.i, i64 %156)
  %cmp207.i = icmp ult i64 %seg6.0.i, %156
  br i1 %cmp207.i, label %if.end205.i.if.end215.sink.split.i_crit_edge, label %if.else210.i

if.end205.i.if.end215.sink.split.i_crit_edge:     ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215.sink.split.i

if.else210.i:                                     ; preds = %if.end205.i
  %ktime_seg6_max.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 370
  %157 = ptrtoint ptr %ktime_seg6_max.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %ktime_seg6_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seg6.0.i, i64 %158)
  %cmp211.i = icmp ugt i64 %seg6.0.i, %158
  br i1 %cmp211.i, label %if.else210.i.if.end215.sink.split.i_crit_edge, label %if.else210.i.if.end215.i_crit_edge

if.else210.i.if.end215.i_crit_edge:               ; preds = %if.else210.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215.i

if.else210.i.if.end215.sink.split.i_crit_edge:    ; preds = %if.else210.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215.sink.split.i

if.end215.sink.split.i:                           ; preds = %if.else210.i.if.end215.sink.split.i_crit_edge, %if.end205.i.if.end215.sink.split.i_crit_edge
  %ktime_seg6_max.sink.i = phi ptr [ %ktime_seg6_min.i, %if.end205.i.if.end215.sink.split.i_crit_edge ], [ %ktime_seg6_max.i, %if.else210.i.if.end215.sink.split.i_crit_edge ]
  %159 = ptrtoint ptr %ktime_seg6_max.sink.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %seg6.0.i, ptr %ktime_seg6_max.sink.i, align 8
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.end215.sink.split.i, %if.else210.i.if.end215.i_crit_edge
  %ktime_seg7_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 371
  %160 = ptrtoint ptr %ktime_seg7_total.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %ktime_seg7_total.i, align 8
  %add216.i = add i64 %161, %seg7.0.i
  store i64 %add216.i, ptr %ktime_seg7_total.i, align 8
  %ktime_seg7_min.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 372
  %162 = ptrtoint ptr %ktime_seg7_min.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %ktime_seg7_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seg7.0.i, i64 %163)
  %cmp217.i = icmp ult i64 %seg7.0.i, %163
  br i1 %cmp217.i, label %if.end215.i.if.end225.sink.split.i_crit_edge, label %if.else220.i

if.end215.i.if.end225.sink.split.i_crit_edge:     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225.sink.split.i

if.else220.i:                                     ; preds = %if.end215.i
  %ktime_seg7_max.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 373
  %164 = ptrtoint ptr %ktime_seg7_max.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %ktime_seg7_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seg7.0.i, i64 %165)
  %cmp221.i = icmp ugt i64 %seg7.0.i, %165
  br i1 %cmp221.i, label %if.else220.i.if.end225.sink.split.i_crit_edge, label %if.else220.i.if.end225.i_crit_edge

if.else220.i.if.end225.i_crit_edge:               ; preds = %if.else220.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225.i

if.else220.i.if.end225.sink.split.i_crit_edge:    ; preds = %if.else220.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225.sink.split.i

if.end225.sink.split.i:                           ; preds = %if.else220.i.if.end225.sink.split.i_crit_edge, %if.end215.i.if.end225.sink.split.i_crit_edge
  %ktime_seg7_max.sink.i = phi ptr [ %ktime_seg7_min.i, %if.end215.i.if.end225.sink.split.i_crit_edge ], [ %ktime_seg7_max.i, %if.else220.i.if.end225.sink.split.i_crit_edge ]
  %166 = ptrtoint ptr %ktime_seg7_max.sink.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %seg7.0.i, ptr %ktime_seg7_max.sink.i, align 8
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.end225.sink.split.i, %if.else220.i.if.end225.i_crit_edge
  %ktime_seg8_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 374
  %167 = ptrtoint ptr %ktime_seg8_total.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %ktime_seg8_total.i, align 8
  %add226.i = add i64 %168, %seg8.0.i
  store i64 %add226.i, ptr %ktime_seg8_total.i, align 8
  %ktime_seg8_min.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 375
  %169 = ptrtoint ptr %ktime_seg8_min.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %ktime_seg8_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seg8.0.i, i64 %170)
  %cmp227.i = icmp ult i64 %seg8.0.i, %170
  br i1 %cmp227.i, label %if.end225.i.if.end235.sink.split.i_crit_edge, label %if.else230.i

if.end225.i.if.end235.sink.split.i_crit_edge:     ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end235.sink.split.i

if.else230.i:                                     ; preds = %if.end225.i
  %ktime_seg8_max.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 376
  %171 = ptrtoint ptr %ktime_seg8_max.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %ktime_seg8_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seg8.0.i, i64 %172)
  %cmp231.i = icmp ugt i64 %seg8.0.i, %172
  br i1 %cmp231.i, label %if.else230.i.if.end235.sink.split.i_crit_edge, label %if.else230.i.if.end235.i_crit_edge

if.else230.i.if.end235.i_crit_edge:               ; preds = %if.else230.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end235.i

if.else230.i.if.end235.sink.split.i_crit_edge:    ; preds = %if.else230.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end235.sink.split.i

if.end235.sink.split.i:                           ; preds = %if.else230.i.if.end235.sink.split.i_crit_edge, %if.end225.i.if.end235.sink.split.i_crit_edge
  %ktime_seg8_max.sink.i = phi ptr [ %ktime_seg8_min.i, %if.end225.i.if.end235.sink.split.i_crit_edge ], [ %ktime_seg8_max.i, %if.else230.i.if.end235.sink.split.i_crit_edge ]
  %173 = ptrtoint ptr %ktime_seg8_max.sink.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %seg8.0.i, ptr %ktime_seg8_max.sink.i, align 8
  br label %if.end235.i

if.end235.i:                                      ; preds = %if.end235.sink.split.i, %if.else230.i.if.end235.i_crit_edge
  %ktime_seg9_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 377
  %174 = ptrtoint ptr %ktime_seg9_total.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %ktime_seg9_total.i, align 8
  %add236.i = add i64 %175, %seg9.0.i
  store i64 %add236.i, ptr %ktime_seg9_total.i, align 8
  %ktime_seg9_min.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 378
  %176 = ptrtoint ptr %ktime_seg9_min.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %ktime_seg9_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seg9.0.i, i64 %177)
  %cmp237.i = icmp ult i64 %seg9.0.i, %177
  br i1 %cmp237.i, label %if.end235.i.out.sink.split.i_crit_edge, label %if.else240.i

if.end235.i.out.sink.split.i_crit_edge:           ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split.i

if.else240.i:                                     ; preds = %if.end235.i
  %ktime_seg9_max.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 379
  %178 = ptrtoint ptr %ktime_seg9_max.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %ktime_seg9_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seg9.0.i, i64 %179)
  %cmp241.i = icmp ugt i64 %seg9.0.i, %179
  br i1 %cmp241.i, label %if.else240.i.out.sink.split.i_crit_edge, label %if.else240.i.out.i_crit_edge

if.else240.i.out.i_crit_edge:                     ; preds = %if.else240.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.else240.i.out.sink.split.i_crit_edge:          ; preds = %if.else240.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.else240.i.out.sink.split.i_crit_edge, %if.end235.i.out.sink.split.i_crit_edge
  %ktime_seg9_min.sink.i = phi ptr [ %ktime_seg9_min.i, %if.end235.i.out.sink.split.i_crit_edge ], [ %ktime_seg9_max.i, %if.else240.i.out.sink.split.i_crit_edge ]
  %180 = ptrtoint ptr %ktime_seg9_min.sink.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %seg9.0.i, ptr %ktime_seg9_min.sink.i, align 8
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.else240.i.out.i_crit_edge, %if.end202.i.out.i_crit_edge
  %ktime_seg10_total.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 380
  %181 = ptrtoint ptr %ktime_seg10_total.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %ktime_seg10_total.i, align 8
  %add246.i = add i64 %182, %seg10.0.i
  store i64 %add246.i, ptr %ktime_seg10_total.i, align 8
  %ktime_seg10_min.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 381
  %183 = ptrtoint ptr %ktime_seg10_min.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %ktime_seg10_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seg10.0.i, i64 %184)
  %cmp247.i = icmp ult i64 %seg10.0.i, %184
  br i1 %cmp247.i, label %out.i.if.end255.sink.split.i_crit_edge, label %if.else250.i

out.i.if.end255.sink.split.i_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255.sink.split.i

if.else250.i:                                     ; preds = %out.i
  %ktime_seg10_max.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 382
  %185 = ptrtoint ptr %ktime_seg10_max.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %ktime_seg10_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seg10.0.i, i64 %186)
  %cmp251.i = icmp ugt i64 %seg10.0.i, %186
  br i1 %cmp251.i, label %if.else250.i.if.end255.sink.split.i_crit_edge, label %if.else250.i.if.end255.i_crit_edge

if.else250.i.if.end255.i_crit_edge:               ; preds = %if.else250.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255.i

if.else250.i.if.end255.sink.split.i_crit_edge:    ; preds = %if.else250.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255.sink.split.i

if.end255.sink.split.i:                           ; preds = %if.else250.i.if.end255.sink.split.i_crit_edge, %out.i.if.end255.sink.split.i_crit_edge
  %ktime_seg10_max.sink.i = phi ptr [ %ktime_seg10_min.i, %out.i.if.end255.sink.split.i_crit_edge ], [ %ktime_seg10_max.i, %if.else250.i.if.end255.sink.split.i_crit_edge ]
  %187 = ptrtoint ptr %ktime_seg10_max.sink.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %seg10.0.i, ptr %ktime_seg10_max.sink.i, align 8
  br label %if.end255.i

if.end255.i:                                      ; preds = %if.end255.sink.split.i, %if.else250.i.if.end255.i_crit_edge
  %ktime_status_samples.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 351
  %188 = ptrtoint ptr %ktime_status_samples.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %ktime_status_samples.i, align 8
  %inc256.i = add i64 %189, 1
  store i64 %inc256.i, ptr %ktime_status_samples.i, align 8
  br label %if.end121

if.else109:                                       ; preds = %if.end81
  %entry_cnt110 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 13
  %190 = ptrtoint ptr %entry_cnt110 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %entry_cnt110, align 8
  %inc111 = add i16 %191, 1
  store i16 %inc111, ptr %entry_cnt110, align 8
  %add.ptr = getelementptr i8, ptr %cmdwqe, i32 348
  %192 = call ptr @memset(ptr %add.ptr, i32 0, i32 52)
  %ts_cmd_nvme112 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 23
  %193 = ptrtoint ptr %ts_cmd_nvme112 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %ts_cmd_nvme112, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %194)
  %tobool113.not = icmp eq i64 %194, 0
  br i1 %tobool113.not, label %if.else109.if.end119_crit_edge, label %if.then114

if.else109.if.end119_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then114:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #13
  %isr_timestamp115 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 9
  %195 = ptrtoint ptr %isr_timestamp115 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %isr_timestamp115, align 8
  %ts_isr_data116 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 26
  %197 = ptrtoint ptr %ts_isr_data116 to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %ts_isr_data116, align 8
  %call.i313 = tail call i64 @ktime_get() #11
  %ts_data_nvme118 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 27
  %198 = ptrtoint ptr %ts_data_nvme118 to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %call.i313, ptr %ts_data_nvme118, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.else109.if.end119_crit_edge
  %done120 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 11
  %199 = ptrtoint ptr %done120 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %done120, align 4
  tail call void %200(ptr noundef %1) #11
  br label %if.end121

if.end121:                                        ; preds = %if.end119, %if.end255.i, %if.else.i.if.end121_crit_edge, %if.end125.i.if.end121_crit_edge, %if.end117.i.if.end121_crit_edge, %if.end109.i.if.end121_crit_edge, %if.then103.i.if.end121_crit_edge, %if.end89.i.if.end121_crit_edge, %if.end81.i.if.end121_crit_edge, %if.end74.i.if.end121_crit_edge, %if.end66.i.if.end121_crit_edge, %lor.lhs.false16.i.if.end121_crit_edge, %lor.lhs.false14.i.if.end121_crit_edge, %lor.lhs.false12.i.if.end121_crit_edge, %lor.lhs.false10.i.if.end121_crit_edge, %lor.lhs.false8.i.if.end121_crit_edge, %lor.lhs.false6.i.if.end121_crit_edge, %lor.lhs.false4.i.if.end121_crit_edge, %lor.lhs.false2.i.if.end121_crit_edge, %if.then107.if.end121_crit_edge, %if.end104.if.end121_crit_edge
  %hdwqstat_on = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 348
  %201 = ptrtoint ptr %hdwqstat_on to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %hdwqstat_on, align 8
  %203 = and i16 %202, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %tobool124.not = icmp eq i16 %203, 0
  br i1 %tobool124.not, label %if.end121.if.end211_crit_edge, label %if.then125

if.end121.if.end211_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

if.then125:                                       ; preds = %if.end121
  %204 = tail call i32 @llvm.read_register.i32(metadata !411) #11
  %and.i = and i32 %204, -16384
  %205 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 3
  %206 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %cpu, align 4
  %208 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !424
  %c_stat = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 119
  %209 = ptrtoint ptr %c_stat to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %c_stat, align 8
  %cmpl_io = getelementptr inbounds %struct.lpfc_hdwq_stat, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %cmpl_io to i32
  %212 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %213
  %214 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx, align 4
  %add = add i32 %215, %211
  %216 = inttoptr i32 %add to ptr
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %216, align 4
  %add147 = add i32 %218, 1
  store i32 %add147, ptr %216, align 4
  %219 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !425
  %and.i.i = and i32 %219, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool158.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool158.not, label %if.then162, label %if.then125.do.end165_crit_edge, !prof !422

if.then125.do.end165_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end165

if.then162:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end165

do.end165:                                        ; preds = %if.then162, %if.then125.do.end165_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %208) #11, !srcloc !426
  %cpu172 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 14
  %220 = ptrtoint ptr %cpu172 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %cpu172, align 2
  %conv173 = zext i16 %221 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %conv173)
  %cmp174.not = icmp eq i32 %207, %conv173
  br i1 %cmp174.not, label %do.end165.if.end211_crit_edge, label %do.body177

do.end165.if.end211_crit_edge:                    ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

do.body177:                                       ; preds = %do.end165
  %pport179 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %222 = ptrtoint ptr %pport179 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %pport179, align 8
  %tobool180.not = icmp eq ptr %223, null
  %cfg_log_verbose183 = getelementptr inbounds %struct.lpfc_vport, ptr %223, i32 0, i32 51
  %cfg_log_verbose185 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond187.in = select i1 %tobool180.not, ptr %cfg_log_verbose185, ptr %cfg_log_verbose183
  %224 = ptrtoint ptr %cond187.in to i32
  call void @__asan_load4_noabort(i32 %224)
  %cond187 = load i32, ptr %cond187.in, align 4
  %and188 = and i32 %cond187, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.else199, label %do.end193

do.end193:                                        ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev194 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %225 = ptrtoint ptr %pcidev194 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pcidev194, align 4
  %dev195 = getelementptr inbounds %struct.pci_dev, ptr %226, i32 0, i32 44
  %brd_no196 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %227 = ptrtoint ptr %brd_no196 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %brd_no196, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev195, ptr noundef nonnull @.str.146, i32 noundef %228, i32 noundef %207, i32 noundef %conv173) #14
  br label %if.end211

if.else199:                                       ; preds = %do.body177
  %229 = ptrtoint ptr %cfg_log_verbose185 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %cfg_log_verbose185, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool201.not = icmp eq i32 %230, 0
  br i1 %tobool201.not, label %if.then202, label %if.else199.if.end211_crit_edge

if.else199.if.end211_crit_edge:                   ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

if.then202:                                       ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no203 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %231 = ptrtoint ptr %brd_no203 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %brd_no203, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.146, i32 noundef %232, i32 noundef %207, i32 noundef %conv173) #11
  br label %if.end211

if.end211:                                        ; preds = %if.then202, %if.else199.if.end211_crit_edge, %do.end193, %do.end165.if.end211_crit_edge, %if.end121.if.end211_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_issue_els_rscn(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__lpfc_nvme_ls_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_ls_req_cmp(ptr noundef %phba, ptr noundef %cmdwqe, ptr noundef %wcqe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vport = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 17
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 4
  tail call void @__lpfc_nvme_ls_req_cmp(ptr noundef %phba, ptr noundef %1, ptr noundef %cmdwqe, ptr noundef %wcqe) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lpfc_nvme_ls_req_cmp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__lpfc_nvme_ls_abort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lpfc_clear_active_sglq(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_nlp_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_sol_fcp_abort_cmp(ptr noundef %phba, ptr noundef %cmdwqe, ptr nocapture noundef readonly %wcqe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 19
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %parameter = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %2 = ptrtoint ptr %parameter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parameter, align 4
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %4 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 8
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flag, align 8
  %10 = and i16 %9, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %if.then

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_fcp_abort_cmpl = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %7, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_abort_cmpl, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_abort_cmpl, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_abort_cmpl, ptr %xmt_fcp_abort_cmpl, i32 1, ptr elementtype(i32) %xmt_fcp_abort_cmpl) #11, !srcloc !421
  br label %do.body1

do.body1:                                         ; preds = %if.then, %entry.do.body1_crit_edge
  %ctxlock = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 7, ptr %state, align 2
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flag, align 8
  %15 = and i16 %14, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %15)
  %16 = icmp eq i16 %15, 8
  br i1 %16, label %if.then14, label %do.body1.if.end17_crit_edge

do.body1.if.end17_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %do.body1
  %abts_nvmet_buf_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 79
  tail call void @_raw_spin_lock(ptr noundef %abts_nvmet_buf_list_lock) #11
  %list = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 1
  %call.i.i97 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i97, label %if.end.i.i, label %if.then14.list_del_init.exit_crit_edge

if.then14.list_del_init.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then14.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %abts_nvmet_buf_list_lock) #11
  br label %if.end17

if.end17:                                         ; preds = %list_del_init.exit, %do.body1.if.end17_crit_edge
  %25 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flag, align 8
  %27 = and i16 %26, -3
  store i16 %27, ptr %flag, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call3) #11
  %xmt_abort_rsp = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %7, i32 0, i32 34
  %call.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_rsp, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_rsp, ptr %xmt_abort_rsp, i32 1, ptr elementtype(i32) %xmt_abort_rsp) #11, !srcloc !421
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %29 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pport, align 8
  %tobool24.not = icmp eq ptr %30, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %30, i32 0, i32 51
  %cfg_log_verbose26 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool24.not, ptr %cfg_log_verbose26, ptr %cfg_log_verbose
  %31 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %cond = load i32, ptr %cond.in, align 4
  %and27 = and i32 %cond, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else, label %do.end32

do.end32:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %32 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %34 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %brd_no, align 4
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %oxid, align 4
  %conv33 = zext i16 %37 to i32
  %38 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flag, align 8
  %conv35 = zext i16 %39 to i32
  %conv37 = zext i1 %16 to i32
  %40 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wcqe, align 4
  %total_data_placed = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %42 = ptrtoint ptr %total_data_placed to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %total_data_placed, align 4
  %word3 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %44 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %word3, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.207, i32 noundef %35, i32 noundef %conv33, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %41, i32 noundef %43, i32 noundef %3, i32 noundef %45) #14
  br label %if.end52

if.else:                                          ; preds = %if.end17
  %46 = ptrtoint ptr %cfg_log_verbose26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cfg_log_verbose26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool39.not = icmp eq i32 %47, 0
  br i1 %tobool39.not, label %if.then40, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no41 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %48 = ptrtoint ptr %brd_no41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brd_no41, align 4
  %oxid42 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %oxid42 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %oxid42, align 4
  %conv43 = zext i16 %51 to i32
  %52 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flag, align 8
  %conv45 = zext i16 %53 to i32
  %conv47 = zext i1 %16 to i32
  %54 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wcqe, align 4
  %total_data_placed49 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %56 = ptrtoint ptr %total_data_placed49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %total_data_placed49, align 4
  %word350 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %58 = ptrtoint ptr %word350 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %word350, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.207, i32 noundef %49, i32 noundef %conv43, i32 noundef %conv45, i32 noundef %conv47, i32 noundef %55, i32 noundef %57, i32 noundef %3, i32 noundef %59) #11
  br label %if.end52

if.end52:                                         ; preds = %if.then40, %if.else.if.end52_crit_edge, %do.end32
  %60 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %context2, align 4
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 20
  %61 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %context3, align 8
  br i1 %16, label %if.then57, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %ctxbuf = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 20
  %62 = ptrtoint ptr %ctxbuf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctxbuf, align 4
  tail call void @lpfc_nvmet_ctxbuf_post(ptr noundef %phba, ptr noundef %63)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end52.if.end58_crit_edge
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %cmdwqe) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_nvmet_unsol_fcp_abort_cmp(ptr noundef %phba, ptr nocapture noundef %cmdwqe, ptr nocapture noundef readonly %wcqe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 19
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %parameter = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 2
  %2 = ptrtoint ptr %parameter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parameter, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end17

do.body:                                          ; preds = %entry
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %4 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pport, align 8
  %tobool1.not = icmp eq ptr %5, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 51
  %cfg_log_verbose3 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool1.not, ptr %cfg_log_verbose3, ptr %cfg_log_verbose
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %7 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %9 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brd_no, align 4
  %11 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcqe, align 4
  %total_data_placed = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %13 = ptrtoint ptr %total_data_placed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_data_placed, align 4
  %word3 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %15 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %word3, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.214, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %3, i32 noundef %16) #14
  br label %cleanup

if.else:                                          ; preds = %do.body
  %17 = ptrtoint ptr %cfg_log_verbose3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cfg_log_verbose3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no10 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %19 = ptrtoint ptr %brd_no10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brd_no10, align 4
  %21 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wcqe, align 4
  %total_data_placed12 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %23 = ptrtoint ptr %total_data_placed12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_data_placed12, align 4
  %word313 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %25 = ptrtoint ptr %word313 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %word313, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.214, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %3, i32 noundef %26) #11
  br label %cleanup

if.end17:                                         ; preds = %entry
  %targetport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 159
  %27 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %targetport, align 8
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private, align 8
  %ctxlock = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 8
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctxlock) #11
  %flag = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flag, align 8
  %33 = and i16 %32, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool27.not = icmp eq i16 %33, 0
  br i1 %tobool27.not, label %if.end17.if.end29_crit_edge, label %if.then28

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %xmt_fcp_abort_cmpl = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %30, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_fcp_abort_cmpl, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_fcp_abort_cmpl, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_fcp_abort_cmpl, ptr %xmt_fcp_abort_cmpl, i32 1, ptr elementtype(i32) %xmt_fcp_abort_cmpl) #11, !srcloc !421
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end17.if.end29_crit_edge
  %state = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 16
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %36)
  %cmp31.not = icmp eq i16 %36, 6
  br i1 %cmp31.not, label %if.end29.if.end73_crit_edge, label %do.body34

if.end29.if.end73_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

do.body34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lpfc_dmp_dbg(ptr noundef %phba) #11
  %pcidev54 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %37 = ptrtoint ptr %pcidev54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcidev54, align 4
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %brd_no56 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %39 = ptrtoint ptr %brd_no56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %brd_no56, align 4
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %state, align 2
  %conv58 = zext i16 %42 to i32
  %oxid = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %43 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %oxid, align 4
  %conv59 = zext i16 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev55, ptr noundef nonnull @.str.217, i32 noundef %40, i32 noundef %conv58, i32 noundef %conv59) #14
  br label %if.end73

if.end73:                                         ; preds = %do.body34, %if.end29.if.end73_crit_edge
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 7, ptr %state, align 2
  %46 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flag, align 8
  %48 = and i16 %47, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %48)
  %49 = icmp eq i16 %48, 8
  br i1 %49, label %if.then83, label %if.end73.if.end86_crit_edge

if.end73.if.end86_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then83:                                        ; preds = %if.end73
  %abts_nvmet_buf_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 79
  tail call void @_raw_spin_lock(ptr noundef %abts_nvmet_buf_list_lock) #11
  %list = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 1
  %call.i.i217 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i217, label %if.end.i.i, label %if.then83.list_del_init.exit_crit_edge

if.then83.list_del_init.exit_crit_edge:           ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then83.list_del_init.exit_crit_edge
  %56 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %abts_nvmet_buf_list_lock) #11
  br label %if.end86

if.end86:                                         ; preds = %list_del_init.exit, %if.end73.if.end86_crit_edge
  %58 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %flag, align 8
  %60 = and i16 %59, -3
  store i16 %60, ptr %flag, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctxlock, i32 noundef %call20) #11
  %xmt_abort_rsp = getelementptr inbounds %struct.lpfc_nvmet_tgtport, ptr %30, i32 0, i32 34
  %call.i.i216 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xmt_abort_rsp, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %xmt_abort_rsp, i32 1, i32 3, i32 1) #11
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xmt_abort_rsp, ptr %xmt_abort_rsp, i32 1, ptr elementtype(i32) %xmt_abort_rsp) #11, !srcloc !421
  %pport94 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %62 = ptrtoint ptr %pport94 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pport94, align 8
  %tobool95.not = icmp eq ptr %63, null
  %cfg_log_verbose98 = getelementptr inbounds %struct.lpfc_vport, ptr %63, i32 0, i32 51
  %cfg_log_verbose100 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond102.in = select i1 %tobool95.not, ptr %cfg_log_verbose100, ptr %cfg_log_verbose98
  %64 = ptrtoint ptr %cond102.in to i32
  call void @__asan_load4_noabort(i32 %64)
  %cond102 = load i32, ptr %cond102.in, align 4
  %and103 = and i32 %cond102, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.else121, label %do.end108

do.end108:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev109 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %65 = ptrtoint ptr %pcidev109 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcidev109, align 4
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %brd_no111 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %67 = ptrtoint ptr %brd_no111 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %brd_no111, align 4
  %oxid112 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %69 = ptrtoint ptr %oxid112 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %oxid112, align 4
  %conv113 = zext i16 %70 to i32
  %71 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %flag, align 8
  %conv115 = zext i16 %72 to i32
  %conv117 = zext i1 %49 to i32
  %73 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %wcqe, align 4
  %total_data_placed119 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %75 = ptrtoint ptr %total_data_placed119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %total_data_placed119, align 4
  %word3120 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %77 = ptrtoint ptr %word3120 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %word3120, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev110, ptr noundef nonnull @.str.220, i32 noundef %68, i32 noundef %conv113, i32 noundef %conv115, i32 noundef %conv117, i32 noundef %74, i32 noundef %76, i32 noundef %3, i32 noundef %78) #14
  br label %if.end136

if.else121:                                       ; preds = %if.end86
  %79 = ptrtoint ptr %cfg_log_verbose100 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cfg_log_verbose100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool123.not = icmp eq i32 %80, 0
  br i1 %tobool123.not, label %if.then124, label %if.else121.if.end136_crit_edge

if.else121.if.end136_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then124:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #13
  %brd_no125 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %81 = ptrtoint ptr %brd_no125 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %brd_no125, align 4
  %oxid126 = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 11
  %83 = ptrtoint ptr %oxid126 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %oxid126, align 4
  %conv127 = zext i16 %84 to i32
  %85 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %flag, align 8
  %conv129 = zext i16 %86 to i32
  %conv131 = zext i1 %49 to i32
  %87 = ptrtoint ptr %wcqe to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wcqe, align 4
  %total_data_placed133 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 1
  %89 = ptrtoint ptr %total_data_placed133 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %total_data_placed133, align 4
  %word3134 = getelementptr inbounds %struct.lpfc_wcqe_complete, ptr %wcqe, i32 0, i32 3
  %91 = ptrtoint ptr %word3134 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %word3134, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.220, i32 noundef %82, i32 noundef %conv127, i32 noundef %conv129, i32 noundef %conv131, i32 noundef %88, i32 noundef %90, i32 noundef %3, i32 noundef %92) #11
  br label %if.end136

if.end136:                                        ; preds = %if.then124, %if.else121.if.end136_crit_edge, %do.end108
  %93 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %context2, align 4
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdwqe, i32 0, i32 20
  %94 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %context3, align 8
  br i1 %49, label %if.then141, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  %ctxbuf = getelementptr inbounds %struct.lpfc_async_xchg_ctx, ptr %1, i32 0, i32 20
  %95 = ptrtoint ptr %ctxbuf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ctxbuf, align 4
  tail call void @lpfc_nvmet_ctxbuf_post(ptr noundef %phba, ptr noundef %96)
  br label %cleanup

cleanup:                                          ; preds = %if.then141, %if.end136.cleanup_crit_edge, %if.then9, %if.else.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !194, !195, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !248, !249, !250, !251, !253, !254, !255, !257, !258, !259, !260, !262, !264, !265, !266, !267, !269, !270, !271, !273, !275, !277, !278, !279, !280, !282, !283, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !297, !298, !299, !300, !302, !303, !304, !306, !308, !309, !310, !312, !314, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !363, !365, !366, !367, !368, !370, !371, !372, !374, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !403, !405, !406, !407, !409, !410}
!llvm.named.register.sp = !{!411}
!llvm.module.flags = !{!412, !413, !414, !415, !416, !417, !418, !419}
!llvm.ident = !{!420}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 306, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 312, i32 2}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 315, i32 2}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 324, i32 2}
!17 = !{ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry.10, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @__lpfc_nvme_xmt_ls_rsp_cmp._entry_ptr.12, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 397, i32 3}
!21 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lpfc_nvmet_ctxbuf_post._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @lpfc_nvmet_ctxbuf_post._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lpfc_nvmet_ctxbuf_post.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 451, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 476, i32 4}
!29 = !{ptr @lpfc_nvmet_ctxbuf_post._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lpfc_nvmet_ctxbuf_post._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 877, i32 2}
!33 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__lpfc_nvme_xmt_ls_rsp._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @__lpfc_nvme_xmt_ls_rsp._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 881, i32 3}
!38 = !{ptr @__lpfc_nvme_xmt_ls_rsp._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @__lpfc_nvme_xmt_ls_rsp._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 893, i32 3}
!42 = !{ptr @__lpfc_nvme_xmt_ls_rsp._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @__lpfc_nvme_xmt_ls_rsp._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 920, i32 2}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 937, i32 2}
!48 = !{ptr @__lpfc_nvme_xmt_ls_rsp._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @__lpfc_nvme_xmt_ls_rsp._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1678, i32 3}
!52 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @lpfc_nvmet_create_targetport._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @lpfc_nvmet_create_targetport._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1695, i32 3}
!57 = !{ptr @lpfc_nvmet_create_targetport._entry.33, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @lpfc_nvmet_create_targetport._entry_ptr.35, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1751, i32 2}
!61 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @lpfc_nvmet_update_targetport._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @lpfc_nvmet_update_targetport._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1782, i32 2}
!66 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @lpfc_sli4_nvmet_xri_aborted._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @lpfc_sli4_nvmet_xri_aborted._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1828, i32 3}
!71 = !{ptr @lpfc_sli4_nvmet_xri_aborted._entry.40, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @lpfc_sli4_nvmet_xri_aborted._entry_ptr.42, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1845, i32 3}
!75 = !{ptr @lpfc_sli4_nvmet_xri_aborted._entry.43, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @lpfc_sli4_nvmet_xri_aborted._entry_ptr.45, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1856, i32 3}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1901, i32 3}
!81 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @lpfc_nvmet_rcv_unsol_abort._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @lpfc_nvmet_rcv_unsol_abort._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1933, i32 4}
!86 = !{ptr @lpfc_nvmet_rcv_unsol_abort._entry.49, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @lpfc_nvmet_rcv_unsol_abort._entry_ptr.51, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1968, i32 3}
!90 = !{ptr @lpfc_nvmet_rcv_unsol_abort._entry.52, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @lpfc_nvmet_rcv_unsol_abort._entry_ptr.54, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1990, i32 2}
!94 = !{ptr @.str.57, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1993, i32 2}
!96 = !{ptr @lpfc_nvmet_rcv_unsol_abort._entry.56, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @lpfc_nvmet_rcv_unsol_abort._entry_ptr.58, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.59, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2118, i32 4}
!100 = !{ptr @.str.60, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @lpfc_nvmet_destroy_targetport._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @lpfc_nvmet_destroy_targetport._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2162, i32 2}
!105 = !{ptr @.str.62, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @lpfc_nvmet_handle_lsreq._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @lpfc_nvmet_handle_lsreq._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.63, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2539, i32 3}
!110 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @lpfc_nvmet_unsol_fcp_event._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @lpfc_nvmet_unsol_fcp_event._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3585, i32 3}
!115 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @lpfc_nvme_unsol_ls_issue_abort._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @lpfc_nvme_unsol_ls_issue_abort._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3599, i32 4}
!120 = !{ptr @lpfc_nvme_unsol_ls_issue_abort._entry.67, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @lpfc_nvme_unsol_ls_issue_abort._entry_ptr.69, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3631, i32 2}
!124 = !{ptr @lpfc_nvme_unsol_ls_issue_abort._entry.70, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @lpfc_nvme_unsol_ls_issue_abort._entry_ptr.72, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3651, i32 2}
!128 = !{ptr @.str.74, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @lpfc_nvmet_invalidate_host._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @lpfc_nvmet_invalidate_host._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3668, i32 3}
!133 = !{ptr @lpfc_nvmet_invalidate_host._entry.75, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @lpfc_nvmet_invalidate_host._entry_ptr.77, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @lpfc_tsend_cmd_template, !136, !"lpfc_tsend_cmd_template", i1 false, i1 false}
!136 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 72, i32 26}
!137 = !{ptr @lpfc_treceive_cmd_template, !138, !"lpfc_treceive_cmd_template", i1 false, i1 false}
!138 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 73, i32 26}
!139 = !{ptr @lpfc_trsp_cmd_template, !140, !"lpfc_trsp_cmd_template", i1 false, i1 false}
!140 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 74, i32 26}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 267, i32 2}
!143 = !{ptr @.str.79, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @lpfc_nvmet_defer_release._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @lpfc_nvmet_defer_release._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1493, i32 2}
!148 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @lpfc_nvmet_setup_io_context._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @lpfc_nvmet_setup_io_context._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1501, i32 3}
!153 = !{ptr @lpfc_nvmet_setup_io_context._entry.82, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @lpfc_nvmet_setup_io_context._entry_ptr.84, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @lpfc_nvmet_setup_io_context.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1530, i32 4}
!157 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.87, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1559, i32 4}
!160 = !{ptr @lpfc_nvmet_setup_io_context._entry.86, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @lpfc_nvmet_setup_io_context._entry_ptr.88, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.90, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1568, i32 4}
!164 = !{ptr @lpfc_nvmet_setup_io_context._entry.89, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @lpfc_nvmet_setup_io_context._entry_ptr.91, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.93, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1580, i32 4}
!168 = !{ptr @lpfc_nvmet_setup_io_context._entry.92, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @lpfc_nvmet_setup_io_context._entry_ptr.94, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.96, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1599, i32 4}
!172 = !{ptr @lpfc_nvmet_setup_io_context._entry.95, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @lpfc_nvmet_setup_io_context._entry_ptr.97, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @lpfc_nvmet_setup_io_context.__key.98, !175, !"__key", i1 false, i1 false}
!175 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1603, i32 3}
!176 = !{ptr @.str.99, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.101, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1632, i32 4}
!179 = !{ptr @lpfc_nvmet_setup_io_context._entry.100, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @lpfc_nvmet_setup_io_context._entry_ptr.102, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.103, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2191, i32 3}
!183 = !{ptr @.str.104, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @lpfc_nvmet_process_rcv_fcp_req._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @lpfc_nvmet_process_rcv_fcp_req._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.106, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2204, i32 3}
!188 = !{ptr @lpfc_nvmet_process_rcv_fcp_req._entry.105, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @lpfc_nvmet_process_rcv_fcp_req._entry_ptr.107, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.108, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2245, i32 3}
!192 = !{ptr @.str.110, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2268, i32 2}
!194 = !{ptr @lpfc_nvmet_process_rcv_fcp_req._entry.109, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @lpfc_nvmet_process_rcv_fcp_req._entry_ptr.111, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.112, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2274, i32 2}
!198 = !{ptr @lpfc_tgttemplate, !199, !"lpfc_tgttemplate", i1 false, i1 false}
!199 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1405, i32 40}
!200 = !{ptr @.str.113, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1046, i32 4}
!202 = !{ptr @.str.114, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @lpfc_nvmet_xmt_fcp_op._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @lpfc_nvmet_xmt_fcp_op._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.116, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1058, i32 3}
!207 = !{ptr @lpfc_nvmet_xmt_fcp_op._entry.115, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @lpfc_nvmet_xmt_fcp_op._entry_ptr.117, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.119, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1068, i32 3}
!211 = !{ptr @lpfc_nvmet_xmt_fcp_op._entry.118, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @lpfc_nvmet_xmt_fcp_op._entry_ptr.120, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.121, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1081, i32 2}
!215 = !{ptr @.str.123, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1116, i32 2}
!217 = !{ptr @lpfc_nvmet_xmt_fcp_op._entry.122, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @lpfc_nvmet_xmt_fcp_op._entry_ptr.124, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.125, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2715, i32 3}
!221 = !{ptr @.str.126, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.128, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2726, i32 3}
!226 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry.127, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr.129, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.131, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2734, i32 3}
!230 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry.130, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr.132, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.134, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2749, i32 4}
!234 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry.133, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr.135, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.137, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2767, i32 3}
!238 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry.136, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr.138, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.140, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2984, i32 3}
!242 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry.139, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @lpfc_nvmet_prep_fcp_wqe._entry_ptr.141, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.142, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 742, i32 2}
!246 = !{ptr @.str.143, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 767, i32 3}
!248 = !{ptr @.str.144, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.146, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 836, i32 4}
!253 = !{ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry.145, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @lpfc_nvmet_xmt_fcp_op_cmp._entry_ptr.147, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.148, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1155, i32 2}
!257 = !{ptr @.str.149, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @lpfc_nvmet_xmt_fcp_abort._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @lpfc_nvmet_xmt_fcp_abort._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.150, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1159, i32 2}
!262 = !{ptr @.str.151, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1210, i32 3}
!264 = !{ptr @.str.152, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @lpfc_nvmet_xmt_fcp_release._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @lpfc_nvmet_xmt_fcp_release._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.154, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1216, i32 3}
!269 = !{ptr @lpfc_nvmet_xmt_fcp_release._entry.153, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @lpfc_nvmet_xmt_fcp_release._entry_ptr.155, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.156, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1228, i32 2}
!273 = !{ptr @.str.157, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1252, i32 2}
!275 = !{ptr @.str.158, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1256, i32 3}
!277 = !{ptr @.str.159, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @lpfc_nvmet_defer_rcv._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @lpfc_nvmet_defer_rcv._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.160, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1400, i32 2}
!282 = !{ptr @.str.161, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @lpfc_nvmet_discovery_event._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @lpfc_nvmet_discovery_event._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.162, !281, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.163, !281, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.164, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 1376, i32 2}
!289 = !{ptr @.str.165, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @lpfc_nvmet_host_release._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @lpfc_nvmet_host_release._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @init_completion.__key, !293, !"__key", i1 false, i1 false}
!293 = !{!"../include/linux/completion.h", i32 87, i32 2}
!294 = !{ptr @.str.166, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.167, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2387, i32 3}
!297 = !{ptr @.str.168, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @lpfc_nvmet_unsol_fcp_buffer._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @lpfc_nvmet_unsol_fcp_buffer._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.170, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2421, i32 4}
!302 = !{ptr @lpfc_nvmet_unsol_fcp_buffer._entry.169, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @lpfc_nvmet_unsol_fcp_buffer._entry_ptr.171, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.172, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2428, i32 2}
!306 = !{ptr @.str.174, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2460, i32 3}
!308 = !{ptr @lpfc_nvmet_unsol_fcp_buffer._entry.173, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @lpfc_nvmet_unsol_fcp_buffer._entry_ptr.175, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @lpfc_nvmet_unsol_fcp_buffer.__key, !311, !"__key", i1 false, i1 false}
!311 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2477, i32 2}
!312 = !{ptr @.str.177, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2502, i32 3}
!314 = !{ptr @lpfc_nvmet_unsol_fcp_buffer._entry.176, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @lpfc_nvmet_unsol_fcp_buffer._entry_ptr.178, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.179, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2585, i32 3}
!318 = !{ptr @.str.180, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @lpfc_nvmet_prep_ls_wqe._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @lpfc_nvmet_prep_ls_wqe._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.182, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2595, i32 3}
!323 = !{ptr @lpfc_nvmet_prep_ls_wqe._entry.181, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @lpfc_nvmet_prep_ls_wqe._entry_ptr.183, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.185, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2606, i32 3}
!327 = !{ptr @lpfc_nvmet_prep_ls_wqe._entry.184, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @lpfc_nvmet_prep_ls_wqe._entry_ptr.186, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.188, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 2682, i32 2}
!331 = !{ptr @lpfc_nvmet_prep_ls_wqe._entry.187, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @lpfc_nvmet_prep_ls_wqe._entry_ptr.189, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.190, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3394, i32 3}
!335 = !{ptr @.str.191, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.193, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3410, i32 3}
!340 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.192, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.194, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.196, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3424, i32 2}
!344 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.195, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.197, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.199, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3437, i32 3}
!348 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.198, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.200, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.202, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3452, i32 3}
!352 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.201, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.203, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.205, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3490, i32 2}
!356 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry.204, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @lpfc_nvmet_sol_fcp_issue_abort._entry_ptr.206, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.207, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3074, i32 2}
!360 = !{ptr @.str.208, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @lpfc_nvmet_sol_fcp_abort_cmp._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @lpfc_nvmet_sol_fcp_abort_cmp._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.209, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3515, i32 3}
!365 = !{ptr @.str.210, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.212, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3553, i32 2}
!370 = !{ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry.211, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @lpfc_nvmet_unsol_fcp_issue_abort._entry_ptr.213, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.214, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3124, i32 3}
!374 = !{ptr @.str.215, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.217, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3138, i32 3}
!379 = !{ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry.216, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry_ptr.218, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.220, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3158, i32 2}
!383 = !{ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry.219, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @lpfc_nvmet_unsol_fcp_abort_cmp._entry_ptr.221, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.222, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3245, i32 2}
!387 = !{ptr @.str.223, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @lpfc_nvmet_unsol_issue_abort._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @lpfc_nvmet_unsol_issue_abort._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.225, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3258, i32 3}
!392 = !{ptr @lpfc_nvmet_unsol_issue_abort._entry.224, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @lpfc_nvmet_unsol_issue_abort._entry_ptr.226, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.228, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3325, i32 2}
!396 = !{ptr @lpfc_nvmet_unsol_issue_abort._entry.227, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @lpfc_nvmet_unsol_issue_abort._entry_ptr.229, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.230, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3206, i32 2}
!400 = !{ptr @.str.231, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.233, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3212, i32 3}
!405 = !{ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry.232, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry_ptr.234, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.236, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/lpfc/lpfc_nvmet.c", i32 3223, i32 3}
!409 = !{ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry.235, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @lpfc_nvmet_xmt_ls_abort_cmp._entry_ptr.237, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{!"sp"}
!412 = !{i32 1, !"wchar_size", i32 2}
!413 = !{i32 1, !"min_enum_size", i32 4}
!414 = !{i32 8, !"branch-target-enforcement", i32 0}
!415 = !{i32 8, !"sign-return-address", i32 0}
!416 = !{i32 8, !"sign-return-address-all", i32 0}
!417 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!418 = !{i32 7, !"uwtable", i32 1}
!419 = !{i32 7, !"frame-pointer", i32 2}
!420 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!421 = !{i64 2148771040, i64 2148771066, i64 2148771095, i64 2148771129, i64 2148771160, i64 2148771183}
!422 = !{!"branch_weights", i32 1, i32 2000}
!423 = !{!"auto-init"}
!424 = !{i64 1175720, i64 1175781}
!425 = !{i64 1178452}
!426 = !{i64 1178737}
