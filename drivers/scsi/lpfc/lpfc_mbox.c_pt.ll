; ModuleID = '/llk/IR_all_yes/drivers/scsi/lpfc/lpfc_mbox.c_pt.bc'
source_filename = "../drivers/scsi/lpfc/lpfc_mbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lpfcMboxq = type { %struct.list_head, %union.anon.95, ptr, ptr, ptr, ptr, ptr, i8, i16, i16, i8, %struct.lpfc_mcqe, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.95 = type { %struct.MAILBOX_t }
%struct.MAILBOX_t = type { %union.anon.96, %union.MAILVARIANTS, %union.sli_var }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { %union.anon.98 }
%union.anon.98 = type { i32 }
%union.MAILVARIANTS = type <{ %struct.READ_XRI_VAR, [92 x i8] }>
%struct.READ_XRI_VAR = type { i16, i16, i16, i16, i64, i32, i8, i8, i16, i16, i16, i32 }
%union.sli_var = type { %struct.sli2_desc }
%struct.sli2_desc = type { [16 x i32], [4 x %struct.lpfc_hgp], [4 x %struct.lpfc_pgp] }
%struct.lpfc_hgp = type { i32, i32 }
%struct.lpfc_pgp = type { i32, i32 }
%struct.lpfc_mcqe = type { i32, i32, i32, i32 }
%struct.anon.99 = type { i16, i8, i8 }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.lpfc_cgn_param = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lpfc_cgn_acqe_stat = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.timespec64 = type { i64, i32 }
%struct.atomic64_t = type { i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.dbg_log_ent = type { [256 x i8], i64 }
%struct.DUMP_VAR = type <{ i64, i32, i32, i32 }>
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
%struct.lpfc_mbx_read_top = type { i32, i32, i32, %struct.ulp_bde64, i32, i32 }
%struct.ulp_bde64 = type { %union.ULP_BDE_TUS, i32, i32 }
%union.ULP_BDE_TUS = type { i32 }
%struct.lpfc_vport = type { ptr, %struct.list_head, i8, i32, i16, i16, i8, i32, i32, %struct.list_head, i16, i16, i16, i16, i16, i16, i16, i16, %struct.serv_parm, i32, i32, %struct.lpfc_name, %struct.lpfc_name, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], %struct.lpfc_name, %struct.lpfc_name, %struct.lpfc_work_evt, %struct.timer_list, i8, i32, %struct.spinlock, i32, %struct.timer_list, %struct.timer_list, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, [256 x %struct.hlist_head], %struct.rwlock_t, %struct.lpfc_vmid_priority_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i8, i8, %struct.list_head, i32, i32, i16, i32, i32, ptr, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lpfc_vmid_priority_info = type { i32, ptr }
%struct.CONFIG_LINK = type <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }>
%struct.lpfc_hbq_init = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, [6 x %struct.hbq_mask], i32, i32, i32 }
%struct.hbq_mask = type { i8, i8, i8, i8 }
%struct.config_hbq_var = type { [12 x i8], i32, i32, i32, i32, i32, i32, [6 x %struct.hbq_mask], %union.anon.111 }
%union.anon.111 = type <{ %struct.anon.112, [4 x i8] }>
%struct.anon.112 = type { i64, [10 x i32] }
%struct.lpfc_sli_ring = type { i16, i16, i8, i8, %struct.spinlock, i32, i32, i32, %struct.list_head, i16, i16, %struct.list_head, i16, i16, i32, %struct.list_head, i16, i16, %struct.list_head, i16, i16, %struct.list_head, [5 x %struct.lpfc_sli_ring_mask], i32, ptr, %struct.lpfc_sli_ring_stat, ptr, %union.anon.198 }
%struct.lpfc_sli_ring_mask = type { i8, i8, i8, i8, ptr }
%struct.lpfc_sli_ring_stat = type { i64, i64, i64, i64, i64, i64, i64 }
%union.anon.198 = type { %struct.lpfc_sli3_ring }
%struct.lpfc_sli3_ring = type { i32, i32, i32, i32, i16, i16, i16, i16, ptr, ptr }
%struct.RR_REG = type { i8, i8, i8, i8 }
%struct._PCB = type { i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct._SLI2_RDSC] }
%struct._SLI2_RDSC = type { i32, i32, i32, i32, i32, i32 }
%struct._IOCB = type { %union.anon.0, %union.anon.2, i32, %union.anon.5 }
%union.anon.0 = type { %struct.ELS_REQUEST64 }
%struct.ELS_REQUEST64 = type { %struct.ULP_BDL, i64 }
%struct.ULP_BDL = type { i32, i32, i32, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i16 }
%union.anon.5 = type { %struct.que_xri64cx_ext_fields }
%struct.que_xri64cx_ext_fields = type { i32, i32, i32, i32, [5 x %struct.lpfc_hbq_entry] }
%struct.lpfc_hbq_entry = type { %struct.ulp_bde64, i32 }
%struct.CONFIG_PORT_VAR = type { i32, i32, i32, [5 x i32], [20 x i8], i32, i32 }
%struct.lpfc_mbx_sge = type { i32, i32, i32 }
%struct.anon.116 = type { i32, i32, i32, i32 }
%struct.lpfc_mbx_nembed_rsrc_extent = type { %union.lpfc_sli4_cfg_shdr, i32, %struct.lpfc_id_range }
%union.lpfc_sli4_cfg_shdr = type { %struct.anon.116 }
%struct.lpfc_id_range = type { i32 }
%struct.lpfc_mbx_read_fcf_tbl = type { %union.lpfc_sli4_cfg_shdr, %union.anon.118, i32 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { i32 }
%struct.lpfc_rdp_context = type { ptr, i16, i16, %struct.READ_LNK_VAR, [256 x i8], [256 x i8], ptr }
%struct.READ_LNK_VAR = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_mbx_memory_dump_type3 = type { i32, i32, i32, i32, i32, i32 }
%struct.lpfc_queue = type { %struct.list_head, %struct.list_head, i16, i16, i8, i8, %struct.list_head, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i16, i16, i8, i8, ptr, i16, i16, ptr, i32, i32, i32, i64, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, i64, ptr, %struct.list_head, ptr, %struct.irq_poll, i32 }
%struct.irq_poll = type { %struct.list_head, i32, i32, ptr }
%struct.lpfc_mbx_reg_fcfi = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_mbx_reg_fcfi_mrq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lpfc_dump_static_vport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 91, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:2605 lpfc_dump_static_vport: memory allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpfc_dump_static_vport\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/lpfc/lpfc_mbox.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpfc_dump_static_vport._entry_ptr = internal global ptr @lpfc_dump_static_vport._entry, section ".printk_index", align 4
@lpfc_config_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 417, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%d:0475 Not configured for supporting MSI-X cfg_use_msi: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lpfc_config_msi\00", [16 x i8] zeroinitializer }, align 32
@lpfc_config_msi._entry_ptr = internal global ptr @lpfc_config_msi._entry, section ".printk_index", align 4
@lpfc_config_msi._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 424, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%d:0476 HBA not supporting SLI-3 or later SLI Revision: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@lpfc_config_msi._entry_ptr.9 = internal global ptr @lpfc_config_msi._entry.7, section ".printk_index", align 4
@lpfc_read_sparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 625, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%d:0301 READ_SPARAM: no buffers\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpfc_read_sparam\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lpfc_read_sparam._entry_ptr = internal global ptr @lpfc_read_sparam._entry, section ".printk_index", align 4
@lpfc_reg_rpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 779, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%d:0302 REG_LOGIN: no buffers, VPI:%d DID:x%x, rpi x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpfc_reg_rpi\00", [19 x i8] zeroinitializer }, align 32
@lpfc_reg_rpi._entry_ptr = internal global ptr @lpfc_reg_rpi._entry, section ".printk_index", align 4
@lpfc_mbox_cmd_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 1581, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d:1814 Mbox x%x failed, no vport\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpfc_mbox_cmd_check\00", [44 x i8] zeroinitializer }, align 32
@lpfc_mbox_cmd_check._entry_ptr = internal global ptr @lpfc_mbox_cmd_check._entry, section ".printk_index", align 4
@lpfc_sli4_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1823, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d:2527 Failed to allocate non-embedded SGE array.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpfc_sli4_config\00", [47 x i8] zeroinitializer }, align 32
@lpfc_sli4_config._entry_ptr = internal global ptr @lpfc_sli4_config._entry, section ".printk_index", align 4
@lpfc_sli4_mbox_rsrc_extent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 1941, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%d:2929 Resource Extent Opcode x%x is unsupported\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_sli4_mbox_rsrc_extent\00", [37 x i8] zeroinitializer }, align 32
@lpfc_sli4_mbox_rsrc_extent._entry_ptr = internal global ptr @lpfc_sli4_mbox_rsrc_extent._entry, section ".printk_index", align 4
@lpfc_sli4_mbx_read_fcf_rec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 2052, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"%d:0291 Allocated DMA memory size (x%x) is less than the requested DMA memory size (x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpfc_sli4_mbx_read_fcf_rec\00", [37 x i8] zeroinitializer }, align 32
@lpfc_sli4_mbx_read_fcf_rec._entry_ptr = internal global ptr @lpfc_sli4_mbx_read_fcf_rec._entry, section ".printk_index", align 4
@lpfc_reg_vfi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 2221, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"%d:(%d):3134 Register VFI, mydid:x%x, fcfi:%d,  vfi:%d, vpi:%d, fc_pname:%x%x fc_flag:x%x port_state:x%x topology chg:%d bbscn_fabric :%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpfc_reg_vfi\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lpfc_reg_vfi._entry_ptr = internal global ptr @lpfc_reg_vfi._entry, section ".printk_index", align 4
@lpfc_sli4_dump_cfg_rg23._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 2293, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%d:2569 lpfc dump config region 23: memory allocation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_sli4_dump_cfg_rg23\00", [40 x i8] zeroinitializer }, align 32
@lpfc_sli4_dump_cfg_rg23._entry_ptr = internal global ptr @lpfc_sli4_dump_cfg_rg23._entry, section ".printk_index", align 4
@lpfc_sli4_dump_page_a0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 2440, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%d:3569 dump type 3 page 0xA0 allocation failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpfc_sli4_dump_page_a0\00", [41 x i8] zeroinitializer }, align 32
@lpfc_sli4_dump_page_a0._entry_ptr = internal global ptr @lpfc_sli4_dump_page_a0._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.lpfc_init_link = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 1028, i16 1, i16 2, i16 1028, i16 4, i16 1028, i16 1026], [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 10, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [12 x i64] [i64 10, i64 16, i64 61457, i64 61461, i64 61589, i64 61592, i64 61601, i64 61605, i64 61649, i64 61653, i64 61665, i64 61669]
@__sancov_gen_cov_switch_values.32 = internal global [13 x i64] [i64 11, i64 8, i64 3, i64 23, i64 27, i64 28, i64 29, i64 50, i64 129, i64 152, i64 155, i64 156, i64 165]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 12]
@__sancov_gen_cov_switch_values.34 = internal global [17 x i64] [i64 15, i64 8, i64 62, i64 67, i64 91, i64 115, i64 116, i64 161, i64 164, i64 165, i64 166, i64 168, i64 169, i64 171, i64 172, i64 173, i64 174]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 8, i64 154, i64 155, i64 156, i64 157]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 89, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 415, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 422, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 624, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 777, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1579, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1821, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1939, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2049, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2211, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2291, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [33 x i8] c"../drivers/scsi/lpfc/lpfc_mbox.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2439, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"switch.table.lpfc_init_link\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @lpfc_config_msi._entry, ptr @lpfc_config_msi._entry.7, ptr @lpfc_config_msi._entry_ptr, ptr @lpfc_config_msi._entry_ptr.9, ptr @lpfc_dump_static_vport._entry, ptr @lpfc_dump_static_vport._entry_ptr, ptr @lpfc_mbox_cmd_check._entry, ptr @lpfc_mbox_cmd_check._entry_ptr, ptr @lpfc_read_sparam._entry, ptr @lpfc_read_sparam._entry_ptr, ptr @lpfc_reg_rpi._entry, ptr @lpfc_reg_rpi._entry_ptr, ptr @lpfc_reg_vfi._entry, ptr @lpfc_reg_vfi._entry_ptr, ptr @lpfc_sli4_config._entry, ptr @lpfc_sli4_config._entry_ptr, ptr @lpfc_sli4_dump_cfg_rg23._entry, ptr @lpfc_sli4_dump_cfg_rg23._entry_ptr, ptr @lpfc_sli4_dump_page_a0._entry, ptr @lpfc_sli4_dump_page_a0._entry_ptr, ptr @lpfc_sli4_mbox_rsrc_extent._entry, ptr @lpfc_sli4_mbox_rsrc_extent._entry_ptr, ptr @lpfc_sli4_mbx_read_fcf_rec._entry, ptr @lpfc_sli4_mbx_read_fcf_rec._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @switch.table.lpfc_init_link], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_dump_static_vport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_config_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_config_msi._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_read_sparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_reg_rpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_mbox_cmd_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_sli4_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_sli4_mbox_rsrc_extent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_sli4_mbx_read_fcf_rec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_reg_vfi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_sli4_dump_cfg_rg23._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_sli4_dump_page_a0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lpfc_init_link to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_dump_static_vport(ptr noundef %phba, ptr nocapture noundef %pmb, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 23, ptr %mbxCommand, align 2
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %2 = zext i16 %offset to i64
  %bf.shl = shl nuw nsw i64 %2, 16
  %bf.set8 = or i64 %bf.shl, 8589934614
  %3 = ptrtoint ptr %un to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %bf.set8, ptr %un, align 4
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %4 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.not = icmp eq i32 %5, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set16 = or i64 %bf.shl, 77309411350
  %6 = ptrtoint ptr %un to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %bf.set16, ptr %un, align 4
  %word_cnt = getelementptr inbounds %struct.DUMP_VAR, ptr %un, i32 0, i32 2
  %7 = ptrtoint ptr %word_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 27, ptr %word_cnt, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 20) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.if.then24_crit_edge, label %if.then18

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.then18:                                        ; preds = %if.end
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 2
  %call19 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %phba, i32 noundef 0, ptr noundef %phys) #14
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %virt, align 8
  %tobool23.not = icmp eq ptr %call19, null
  br i1 %tobool23.not, label %if.then18.if.then24_crit_edge, label %if.end43

if.then18.if.then24_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.then24:                                        ; preds = %if.then18.if.then24_crit_edge, %if.end.if.then24_crit_edge
  tail call void @kfree(ptr noundef %call7.i) #14
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %12 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %13) #18
  br label %cleanup

if.end43:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %14 = call ptr @memset(ptr %call19, i32 0, i32 1024)
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %prev.i, align 4
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 4
  %17 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %ctx_buf, align 4
  %18 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phys, align 4
  %arrayidx = getelementptr [31 x i32], ptr %un, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx, align 4
  %arrayidx55 = getelementptr %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx55, align 4
  %sli4_length = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %sli4_length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 528, ptr %sli4_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then24, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end43 ], [ 1, %if.then24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_mbuf_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dbg_print(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_down_link(ptr nocapture noundef readnone %phba, ptr nocapture noundef %pmb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 6, ptr %mbxCommand, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_dump_mem(ptr nocapture noundef readnone %phba, ptr nocapture noundef %pmb, i16 noundef zeroext %offset, i16 noundef zeroext %region_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 4
  %0 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_buf, align 4
  %2 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 23, ptr %mbxCommand, align 2
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %4 = zext i16 %offset to i64
  %bf.shl = shl nuw nsw i64 %4, 16
  %5 = zext i16 %region_id to i64
  %bf.set8 = or i64 %bf.shl, %5
  %bf.set14 = or i64 %bf.set8, 77309411328
  %word_cnt = getelementptr inbounds %struct.DUMP_VAR, ptr %un, i32 0, i32 2
  %6 = ptrtoint ptr %word_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 27, ptr %word_cnt, align 4
  %7 = ptrtoint ptr %un to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %bf.set14, ptr %un, align 4
  store ptr %1, ptr %ctx_buf, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_dump_wakeup_param(ptr nocapture noundef readonly %phba, ptr nocapture noundef %pmb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 4
  %0 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_buf, align 4
  %2 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 23, ptr %mbxCommand, align 2
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %un to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 77309411328, ptr %un, align 4
  %word_cnt = getelementptr inbounds %struct.DUMP_VAR, ptr %un, i32 0, i32 2
  %5 = ptrtoint ptr %word_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %word_cnt, align 4
  store i64 77309411332, ptr %un, align 4
  %resp_offset = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %resp_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %resp_offset, align 4
  store ptr %1, ptr %ctx_buf, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_read_nv(ptr nocapture noundef readnone %phba, ptr nocapture noundef %pmb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %mbxCommand, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_config_async(ptr nocapture noundef readnone %phba, ptr nocapture noundef %pmb, i32 noundef %ring) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 51, ptr %mbxCommand, align 2
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %bf.value = and i32 %ring, 3
  %2 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bf.value, ptr %un, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_heart_beat(ptr nocapture noundef readnone %phba, ptr nocapture noundef %pmb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 49, ptr %mbxCommand, align 2
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_read_topology(ptr nocapture noundef readnone %phba, ptr nocapture noundef %pmb, ptr noundef %mp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %1 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %mp, ptr %mp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mp, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mp, ptr %prev.i, align 4
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -107, ptr %mbxCommand, align 2
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %lilpBde64 = getelementptr inbounds %struct.lpfc_mbx_read_top, ptr %un, i32 0, i32 3
  %4 = ptrtoint ptr %lilpBde64 to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %lilpBde64, align 4
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set = or i32 %bf.clear, 128
  store i32 %bf.set, ptr %lilpBde64, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %mp, i32 0, i32 2
  %addrHigh = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %5 = ptrtoint ptr %addrHigh to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %addrHigh, align 4
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phys, align 4
  %addrLow = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %8 = ptrtoint ptr %addrLow to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addrLow, align 4
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 4
  %9 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mp, ptr %ctx_buf, align 4
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %10 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load10 = load i8, ptr %mbxOwner, align 1
  %bf.clear11 = and i8 %bf.load10, -2
  store i8 %bf.clear11, ptr %mbxOwner, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_clear_la(ptr nocapture noundef readonly %phba, ptr nocapture noundef %pmb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %fc_eventTag = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 51
  %1 = ptrtoint ptr %fc_eventTag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fc_eventTag, align 4
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %un, align 4
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %4 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 22, ptr %mbxCommand, align 2
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %5 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %mbxOwner, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_config_link(ptr nocapture noundef readonly %phba, ptr nocapture noundef %pmb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %0 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pport, align 8
  %2 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %cfg_cr_delay = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 90
  %3 = ptrtoint ptr %cfg_cr_delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cfg_cr_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %5 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp ult i32 %6, 4
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %un, align 4
  %bf.set4 = or i32 %bf.load, -1073741824
  store i32 %bf.set4, ptr %un, align 4
  %8 = ptrtoint ptr %cfg_cr_delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg_cr_delay, align 4
  %bf.value = shl i32 %9, 24
  %bf.clear8 = and i32 %bf.set4, -1056964609
  %bf.set9 = or i32 %bf.value, %bf.clear8
  store i32 %bf.set9, ptr %un, align 4
  %cfg_cr_count = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 91
  %10 = ptrtoint ptr %cfg_cr_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg_cr_count, align 8
  %bf.value12 = shl i32 %11, 16
  %bf.shl13 = and i32 %bf.value12, 16711680
  %bf.clear14 = and i32 %bf.set9, -16711681
  %bf.set15 = or i32 %bf.clear14, %bf.shl13
  store i32 %bf.set15, ptr %un, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fc_myDID, align 8
  %un16 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %myId = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %myId to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %myId, align 4
  %fc_edtov = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 56
  %15 = ptrtoint ptr %fc_edtov to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fc_edtov, align 8
  %edtov = getelementptr inbounds %struct.CONFIG_LINK, ptr %un16, i32 0, i32 3
  %17 = ptrtoint ptr %edtov to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %edtov, align 4
  %fc_arbtov = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 57
  %18 = ptrtoint ptr %fc_arbtov to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fc_arbtov, align 4
  %arbtov = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %arbtov to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arbtov, align 4
  %fc_ratov = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 58
  %21 = ptrtoint ptr %fc_ratov to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fc_ratov, align 8
  %ratov = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %23 = ptrtoint ptr %ratov to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ratov, align 4
  %fc_rttov = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 59
  %24 = ptrtoint ptr %fc_rttov to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fc_rttov, align 4
  %rttov = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 9
  %26 = ptrtoint ptr %rttov to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rttov, align 4
  %fc_altov = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 60
  %27 = ptrtoint ptr %fc_altov to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fc_altov, align 8
  %altov = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 11
  %29 = ptrtoint ptr %altov to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %altov, align 4
  %fc_crtov = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 61
  %30 = ptrtoint ptr %fc_crtov to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fc_crtov, align 4
  %crtov = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %crtov to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %crtov, align 4
  %cscn = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 4
  %33 = ptrtoint ptr %cscn to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %bf.load24 = load i64, ptr %cscn, align 4
  %bf.clear25 = and i64 %bf.load24, -17592186044417
  store i64 %bf.clear25, ptr %cscn, align 4
  %bbcredit_support = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 76
  %34 = ptrtoint ptr %bbcredit_support to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bbcredit_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool27.not = icmp eq i8 %35, 0
  br i1 %tobool27.not, label %if.end.if.end42_crit_edge, label %land.lhs.true28

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true28:                                  ; preds = %if.end
  %cfg_enable_bbcr = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 155
  %36 = ptrtoint ptr %cfg_enable_bbcr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg_enable_bbcr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool29.not = icmp eq i32 %37, 0
  br i1 %tobool29.not, label %land.lhs.true28.if.end42_crit_edge, label %if.then30

land.lhs.true28.if.end42_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set35 = or i64 %bf.load24, 17592186044416
  %38 = ptrtoint ptr %cscn to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %bf.set35, ptr %cscn, align 4
  %bbscn_params = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 22
  %39 = ptrtoint ptr %bbscn_params to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bbscn_params, align 4
  %shr = lshr i32 %40, 8
  %41 = and i32 %shr, 15
  %bf.value38 = zext i32 %41 to i64
  %bf.shl39 = shl nuw nsw i64 %bf.value38, 40
  %bf.clear40 = and i64 %bf.set35, -16492674416641
  %bf.set41 = or i64 %bf.shl39, %bf.clear40
  store i64 %bf.set41, ptr %cscn, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then30, %land.lhs.true28.if.end42_crit_edge, %if.end.if.end42_crit_edge
  %cfg_ack0 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 79
  %42 = ptrtoint ptr %cfg_ack0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cfg_ack0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool43.not = icmp eq i32 %43, 0
  br i1 %tobool43.not, label %if.end42.if.end53_crit_edge, label %land.lhs.true44

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

land.lhs.true44:                                  ; preds = %if.end42
  %sli_rev45 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %44 = ptrtoint ptr %sli_rev45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sli_rev45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp46 = icmp ult i32 %45, 4
  br i1 %cmp46, label %if.then48, label %land.lhs.true44.if.end53_crit_edge

land.lhs.true44.if.end53_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then48:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %cscn to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %bf.load50 = load i64, ptr %cscn, align 4
  %bf.set52 = or i64 %bf.load50, 1
  store i64 %bf.set52, ptr %cscn, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %land.lhs.true44.if.end53_crit_edge, %if.end42.if.end53_crit_edge
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %47 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 7, ptr %mbxCommand, align 2
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %48 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load54 = load i8, ptr %mbxOwner, align 1
  %bf.clear55 = and i8 %bf.load54, -2
  store i8 %bf.clear55, ptr %mbxOwner, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_config_msi(ptr nocapture noundef readonly %phba, ptr nocapture noundef %pmb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %cfg_use_msi = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 98
  %0 = ptrtoint ptr %cfg_use_msi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_use_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end17, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %4 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef %1) #18
  br label %cleanup

if.end17:                                         ; preds = %entry
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %6 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp18 = icmp ult i32 %7, 3
  br i1 %cmp18, label %do.body21, label %if.end56

do.body21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %pcidev42 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev42 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev42, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no44 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no44, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev43, ptr noundef nonnull @.str.8, i32 noundef %11, i32 noundef %7) #18
  br label %cleanup

if.end56:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %12 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %attentionConditions59 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %attentionConditions59 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -536868728, ptr %attentionConditions59, align 4
  %messageNumberByHA = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 11
  %arrayidx66 = getelementptr [64 x i8], ptr %messageNumberByHA, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx66, align 1
  %arrayidx69 = getelementptr %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx69, align 1
  %autoClearHA = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 76
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %16 = ptrtoint ptr %autoClearHA to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %autoClearHA, align 4
  %17 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 48, ptr %mbxCommand, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.body21, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ -22, %do.body21 ], [ 0, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_init_link(ptr nocapture noundef %phba, ptr noundef %pmb, i32 noundef %topology, i32 noundef %linkspeed) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %topology)
  %1 = icmp ult i32 %topology, 7
  br i1 %1, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %topology to i8
  %switch.shifted = lshr i8 87, %switch.maskindex
  %2 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.lobit.not = icmp eq i8 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.lpfc_init_link, i32 0, i32 %topology
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load = load i16, ptr %switch.gep, align 2
  %link_flags20 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %link_flags20 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %switch.load, ptr %link_flags20, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %sli_family = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 21, i32 3
  %5 = ptrtoint ptr %sli_family to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sli_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %6)
  %cmp = icmp eq i32 %6, 12
  br i1 %cmp, label %sw.epilog.land.lhs.true_crit_edge, label %lor.lhs.false

sw.epilog.land.lhs.true_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %sw.epilog
  %if_type = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 21, i32 1
  %7 = ptrtoint ptr %if_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %if_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp24 = icmp eq i32 %8, 6
  br i1 %cmp24, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %sw.epilog.land.lhs.true_crit_edge
  %pls = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 21, i32 41
  %9 = ptrtoint ptr %pls to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pls, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true28, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true28:                                  ; preds = %land.lhs.true
  %link_flags30 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %link_flags30 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %link_flags30, align 2
  %13 = and i16 %12, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool32.not = icmp eq i16 %13, 0
  br i1 %tobool32.not, label %land.lhs.true28.if.end_crit_edge, label %if.then

land.lhs.true28.if.end_crit_edge:                 ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %link_flags30 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %link_flags30, align 2
  %cfg_topology = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 84
  %15 = ptrtoint ptr %cfg_topology to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %cfg_topology, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true28.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %16 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp35 = icmp eq i32 %17, 3
  br i1 %cmp35, label %land.lhs.true37, label %if.end.if.end45_crit_edge

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true37:                                  ; preds = %if.end
  %cfg_fcp_wait_abts_rsp = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 146
  %18 = ptrtoint ptr %cfg_fcp_wait_abts_rsp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg_fcp_wait_abts_rsp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool38.not = icmp eq i32 %19, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true37.if.end45_crit_edge

land.lhs.true37.if.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  %link_flags41 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %link_flags41 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %link_flags41, align 2
  %22 = or i16 %21, 16384
  store i16 %22, ptr %link_flags41, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %land.lhs.true37.if.end45_crit_edge, %if.end.if.end45_crit_edge
  %feaLevelHigh = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 160, i32 2, i32 8
  %23 = ptrtoint ptr %feaLevelHigh to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %feaLevelHigh, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp48 = icmp ugt i8 %24, 1
  br i1 %cmp48, label %if.then50, label %if.end45.if.end120_crit_edge

if.end45.if.end120_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

if.then50:                                        ; preds = %if.end45
  %25 = zext i32 %linkspeed to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %linkspeed, label %if.then50.if.end120_crit_edge [
    i32 1, label %if.then50.if.end120.sink.split_crit_edge
    i32 2, label %if.then50.if.end120.sink.split_crit_edge164
    i32 4, label %if.then50.if.end120.sink.split_crit_edge165
    i32 8, label %if.then50.if.end120.sink.split_crit_edge166
    i32 10, label %sw.bb82
    i32 16, label %sw.bb90
    i32 32, label %sw.bb98
    i32 64, label %sw.bb106
  ]

if.then50.if.end120.sink.split_crit_edge166:      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120.sink.split

if.then50.if.end120.sink.split_crit_edge165:      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120.sink.split

if.then50.if.end120.sink.split_crit_edge164:      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120.sink.split

if.then50.if.end120.sink.split_crit_edge:         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120.sink.split

if.then50.if.end120_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

sw.bb82:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120.sink.split

sw.bb90:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120.sink.split

sw.bb98:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120.sink.split

sw.bb106:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120.sink.split

if.end120.sink.split:                             ; preds = %sw.bb106, %sw.bb98, %sw.bb90, %sw.bb82, %if.then50.if.end120.sink.split_crit_edge, %if.then50.if.end120.sink.split_crit_edge164, %if.then50.if.end120.sink.split_crit_edge165, %if.then50.if.end120.sink.split_crit_edge166
  %.sink160.ph = phi i32 [ 23, %sw.bb106 ], [ 20, %sw.bb98 ], [ 17, %sw.bb90 ], [ 16, %sw.bb82 ], [ %linkspeed, %if.then50.if.end120.sink.split_crit_edge ], [ %linkspeed, %if.then50.if.end120.sink.split_crit_edge164 ], [ %linkspeed, %if.then50.if.end120.sink.split_crit_edge165 ], [ %linkspeed, %if.then50.if.end120.sink.split_crit_edge166 ]
  %link_flags108 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %link_flags108 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %link_flags108, align 2
  %28 = or i16 %27, 2048
  store i16 %28, ptr %link_flags108, align 2
  br label %if.end120

if.end120:                                        ; preds = %if.end120.sink.split, %if.then50.if.end120_crit_edge, %if.end45.if.end120_crit_edge
  %.sink160 = phi i32 [ 0, %if.then50.if.end120_crit_edge ], [ 0, %if.end45.if.end120_crit_edge ], [ %.sink160.ph, %if.end120.sink.split ]
  %link_speed = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink160, ptr %link_speed, align 4
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %30 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %mbxCommand, align 2
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %31 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %mbxOwner, align 1
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, ptr %mbxOwner, align 1
  %fc_pref_ALPA = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 54
  %32 = ptrtoint ptr %fc_pref_ALPA to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fc_pref_ALPA, align 8
  %fabric_AL_PA = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %fabric_AL_PA to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %fabric_AL_PA, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_read_sparam(ptr noundef %phba, ptr nocapture noundef %pmb, i32 noundef %vpi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 20) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.then5_crit_edge, label %if.then

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then:                                          ; preds = %entry
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 2
  %call1 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %phba, i32 noundef 0, ptr noundef %phys) #14
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %virt, align 8
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.then.if.then5_crit_edge, label %if.end20

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then5:                                         ; preds = %if.then.if.then5_crit_edge, %entry.if.then5_crit_edge
  tail call void @kfree(ptr noundef %call7.i) #14
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -115, ptr %mbxCommand, align 2
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %4 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pport, align 8
  %tobool6.not = icmp eq ptr %5, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %5, i32 0, i32 51
  %cfg_log_verbose8 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool6.not, ptr %cfg_log_verbose8, ptr %cfg_log_verbose
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %7 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %9 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %10) #18
  br label %cleanup

if.else:                                          ; preds = %if.then5
  %11 = ptrtoint ptr %cfg_log_verbose8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg_log_verbose8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %brd_no15 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %13 = ptrtoint ptr %brd_no15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %brd_no15, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.10, i32 noundef %14) #14
  br label %cleanup

if.end20:                                         ; preds = %if.then
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %prev.i, align 4
  %mbxCommand21 = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %17 = ptrtoint ptr %mbxCommand21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -115, ptr %mbxCommand21, align 2
  %un22 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %un22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load23 = load i32, ptr %un22, align 4
  %bf.clear24 = and i32 %bf.load23, -16777216
  %bf.set25 = or i32 %bf.clear24, 112
  store i32 %bf.set25, ptr %un22, align 4
  %addrHigh = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %addrHigh to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %addrHigh, align 4
  %20 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys, align 4
  %addrLow = getelementptr inbounds %struct.ulp_bde64, ptr %un22, i32 0, i32 1
  %22 = ptrtoint ptr %addrLow to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %addrLow, align 4
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %23 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp = icmp ugt i32 %24, 2
  br i1 %cmp, label %if.then38, label %if.end20.if.end41_crit_edge

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then38:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %vpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 247
  %25 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vpi_ids, align 8
  %arrayidx = getelementptr i16, ptr %26, i32 %vpi
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx, align 2
  %vpi40 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 8
  %29 = ptrtoint ptr %vpi40 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vpi40, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end20.if.end41_crit_edge
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 4
  %30 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i, ptr %ctx_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then14, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.then14 ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_unreg_did(ptr nocapture noundef readonly %phba, i16 noundef zeroext %vpi, i32 noundef %did, ptr nocapture noundef %pmb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %did, ptr %un, align 4
  %vpi3 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 8
  %2 = ptrtoint ptr %vpi3 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %vpi, ptr %vpi3, align 2
  %conv = zext i16 %vpi to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vpi)
  %cmp.not = icmp eq i16 %vpi, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %3 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp5 = icmp eq i32 %4, 4
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %vpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 247
  %5 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vpi_ids, align 8
  %arrayidx = getelementptr i16, ptr %6, i32 %conv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %9 = ptrtoint ptr %vpi3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %vpi3, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %10 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 35, ptr %mbxCommand, align 2
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %11 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %mbxOwner, align 1
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, ptr %mbxOwner, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_read_config(ptr nocapture noundef readnone %phba, ptr nocapture noundef %pmb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 11, ptr %mbxCommand, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_read_lnk_stat(ptr nocapture readnone %phba, ptr nocapture noundef %pmb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 18, ptr %mbxCommand, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_reg_rpi(ptr noundef %phba, i16 noundef zeroext %vpi, i32 noundef %did, ptr nocapture noundef readonly %param, ptr nocapture noundef %pmb, i16 noundef zeroext %rpi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %1 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rpi1 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
  %rpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 88
  %3 = ptrtoint ptr %rpi_ids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rpi_ids, align 4
  %idxprom = zext i16 %rpi to i32
  %arrayidx = getelementptr i16, ptr %4, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %7 = ptrtoint ptr %rpi1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %rpi1, align 2
  %8 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %sli_rev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = phi i32 [ %.pr, %if.then ], [ %2, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5 = icmp ugt i32 %9, 2
  br i1 %cmp5, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %vpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 247
  %10 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vpi_ids, align 8
  %idxprom7 = zext i16 %vpi to i32
  %arrayidx8 = getelementptr i16, ptr %11, i32 %idxprom7
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx8, align 2
  %vpi10 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 8
  %14 = ptrtoint ptr %vpi10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %vpi10, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %did13 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %did13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %did13, align 4
  %bf.value = and i32 %did, 16777215
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, ptr %did13, align 4
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %16 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load14 = load i8, ptr %mbxOwner, align 1
  %bf.clear15 = and i8 %bf.load14, -2
  store i8 %bf.clear15, ptr %mbxOwner, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 20) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end11.if.then23_crit_edge, label %if.then17

if.end11.if.then23_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

if.then17:                                        ; preds = %if.end11
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 2
  %call18 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %phba, i32 noundef 0, ptr noundef %phys) #14
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call18, ptr %virt, align 8
  %tobool22.not = icmp eq ptr %call18, null
  br i1 %tobool22.not, label %if.then17.if.then23_crit_edge, label %if.end41

if.then17.if.then23_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

if.then23:                                        ; preds = %if.then17.if.then23_crit_edge, %if.end11.if.then23_crit_edge
  tail call void @kfree(ptr noundef %call7.i) #14
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %19 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -109, ptr %mbxCommand, align 2
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %20 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pport, align 8
  %tobool24.not = icmp eq ptr %21, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %21, i32 0, i32 51
  %cfg_log_verbose26 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool24.not, ptr %cfg_log_verbose26, ptr %cfg_log_verbose
  %22 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %23 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %25 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %brd_no, align 4
  %conv = zext i16 %vpi to i32
  %conv30 = zext i16 %rpi to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %26, i32 noundef %conv, i32 noundef %did, i32 noundef %conv30) #18
  br label %cleanup

if.else:                                          ; preds = %if.then23
  %27 = ptrtoint ptr %cfg_log_verbose26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cfg_log_verbose26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool32.not = icmp eq i32 %28, 0
  br i1 %tobool32.not, label %if.then33, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %brd_no34 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %29 = ptrtoint ptr %brd_no34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brd_no34, align 4
  %conv35 = zext i16 %vpi to i32
  %conv36 = zext i16 %rpi to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.13, i32 noundef %30, i32 noundef %conv35, i32 noundef %did, i32 noundef %conv36) #14
  br label %cleanup

if.end41:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i, ptr %prev.i, align 4
  %33 = call ptr @memcpy(ptr %call18, ptr %param, i32 112)
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 4
  %34 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i, ptr %ctx_buf, align 4
  %mbxCommand43 = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %35 = ptrtoint ptr %mbxCommand43 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -109, ptr %mbxCommand43, align 2
  %un45 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %un45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load46 = load i32, ptr %un45, align 4
  %bf.clear47 = and i32 %bf.load46, -16777216
  %bf.set48 = or i32 %bf.clear47, 112
  store i32 %bf.set48, ptr %un45, align 4
  %addrHigh = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %37 = ptrtoint ptr %addrHigh to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %addrHigh, align 4
  %38 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys, align 4
  %addrLow = getelementptr inbounds %struct.ulp_bde64, ptr %un45, i32 0, i32 1
  %40 = ptrtoint ptr %addrLow to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %addrLow, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then33, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.then33 ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_unreg_login(ptr nocapture noundef readonly %phba, i16 noundef zeroext %vpi, i32 noundef %rpi, ptr nocapture noundef %pmb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %conv = trunc i32 %rpi to i16
  %rpi1 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %rpi1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %rpi1, align 2
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %2 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 247
  %4 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpi_ids, align 8
  %idxprom = zext i16 %vpi to i32
  %arrayidx = getelementptr i16, ptr %5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %vpi5 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 8
  %8 = ptrtoint ptr %vpi5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %vpi5, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %9 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 20, ptr %mbxCommand, align 2
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %10 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %mbxOwner, align 1
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, ptr %mbxOwner, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_sli4_unreg_all_rpis(ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %mbox_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 231
  %2 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_mem_pool, align 8
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %3, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %4 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vpi, align 4
  %vpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 247
  %6 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vpi_ids, align 8
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr i16, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = call ptr @memset(ptr %call, i32 0, i32 312)
  %rpi1.i = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %rpi1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %9, ptr %rpi1.i, align 2
  %sli_rev.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %sli_rev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sli_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp ugt i32 %13, 2
  br i1 %cmp.i, label %if.then.i, label %if.then.lpfc_unreg_login.exit_crit_edge

if.then.lpfc_unreg_login.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %lpfc_unreg_login.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vpi_ids, align 8
  %arrayidx.i = getelementptr i16, ptr %15, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i, align 2
  %vpi5.i = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 1, i32 0, i32 1, i32 0, i32 8
  %18 = ptrtoint ptr %vpi5.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %vpi5.i, align 2
  br label %lpfc_unreg_login.exit

lpfc_unreg_login.exit:                            ; preds = %if.then.i, %if.then.lpfc_unreg_login.exit_crit_edge
  %u.i = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 1
  %mbxCommand.i = getelementptr inbounds %struct.anon.99, ptr %u.i, i32 0, i32 1
  %19 = ptrtoint ptr %mbxCommand.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 20, ptr %mbxCommand.i, align 2
  %mbxOwner.i = getelementptr inbounds %struct.anon.99, ptr %u.i, i32 0, i32 2
  %20 = ptrtoint ptr %mbxOwner.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %mbxOwner.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -2
  store i8 %bf.clear.i, ptr %mbxOwner.i, align 1
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %un to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 16384, ptr %un, align 4
  %vport3 = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %vport3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %vport, ptr %vport3, align 4
  %mbox_cmpl = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 6
  %23 = ptrtoint ptr %mbox_cmpl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @lpfc_sli_def_mbox_cmpl, ptr %mbox_cmpl, align 4
  %ctx_ndlp = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 3
  %24 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ctx_ndlp, align 4
  %call4 = tail call i32 @lpfc_sli_issue_mbox(ptr noundef %1, ptr noundef nonnull %call, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call4)
  %cmp = icmp eq i32 %call4, 255
  br i1 %cmp, label %if.then6, label %lpfc_unreg_login.exit.if.end8_crit_edge

lpfc_unreg_login.exit.if.end8_crit_edge:          ; preds = %lpfc_unreg_login.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then6:                                         ; preds = %lpfc_unreg_login.exit
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %26) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %lpfc_unreg_login.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_def_mbox_cmpl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli_issue_mbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_reg_vpi(ptr nocapture noundef readonly %vport, ptr nocapture noundef %pmb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %2 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %5 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fc_flag, align 4
  %and = and i32 %6, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %upd = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %upd to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %upd, align 4
  %bf.set = or i32 %bf.load, 16777216
  store i32 %bf.set, ptr %upd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %vpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 247
  %8 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vpi_ids, align 8
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %10 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vpi, align 4
  %idxprom = zext i16 %11 to i32
  %arrayidx = getelementptr i16, ptr %9, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %vpi3 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 8
  %14 = ptrtoint ptr %vpi3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %vpi3, align 2
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %15 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fc_myDID, align 8
  %sid = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load5 = load i32, ptr %sid, align 4
  %bf.value = and i32 %16, 16777215
  %bf.clear6 = and i32 %bf.load5, -16777216
  %bf.set7 = or i32 %bf.clear6, %bf.value
  store i32 %bf.set7, ptr %sid, align 4
  %18 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp9 = icmp eq i32 %19, 4
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %vfi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 95
  %20 = ptrtoint ptr %vfi_ids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vfi_ids, align 8
  %vfi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 5
  %22 = ptrtoint ptr %vfi to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vfi, align 2
  %idxprom11 = zext i16 %23 to i32
  %arrayidx12 = getelementptr i16, ptr %21, i32 %idxprom11
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx12, align 2
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %vfi15 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 5
  %26 = ptrtoint ptr %vfi15 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vfi15, align 2
  %28 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vport, align 8
  %vfi_base = getelementptr inbounds %struct.lpfc_hba, ptr %29, i32 0, i32 245
  %30 = ptrtoint ptr %vfi_base to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vfi_base, align 2
  %add = add i16 %31, %27
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then10
  %add.sink = phi i16 [ %25, %if.then10 ], [ %add, %if.else ]
  %32 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add.sink, ptr %32, align 4
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %wwn = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %fc_portname = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 32
  %34 = ptrtoint ptr %fc_portname to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %fc_portname, align 8
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %36 to i32
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %wwn to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %wwn, align 4
  %arrayidx31 = getelementptr [2 x i32], ptr %wwn, i32 0, i32 1
  %40 = trunc i64 %35 to i32
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx31, align 4
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %43 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -106, ptr %mbxCommand, align 2
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %44 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load35 = load i8, ptr %mbxOwner, align 1
  %bf.clear36 = and i8 %bf.load35, -2
  store i8 %bf.clear36, ptr %mbxOwner, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_unreg_vpi(ptr nocapture noundef readonly %phba, i16 noundef zeroext %vpi, ptr nocapture noundef %pmb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %1 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 247
  %3 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vpi_ids, align 8
  %idxprom = zext i16 %vpi to i32
  %arrayidx = getelementptr i16, ptr %4, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %vpi1 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 8
  %7 = ptrtoint ptr %vpi1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %vpi1, align 2
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp3 = icmp ugt i32 %2, 3
  br i1 %cmp3, label %if.then4, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %vpi_ids5 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 247
  %8 = ptrtoint ptr %vpi_ids5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vpi_ids5, align 8
  %idxprom6 = zext i16 %vpi to i32
  %arrayidx7 = getelementptr i16, ptr %9, i32 %idxprom6
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx7, align 2
  %sli4_vpi = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %sli4_vpi to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %sli4_vpi, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.else.if.end9_crit_edge, %if.then
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %13 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -105, ptr %mbxCommand, align 2
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %14 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %mbxOwner, align 1
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, ptr %mbxOwner, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_read_rev(ptr nocapture noundef readnone %phba, ptr nocapture noundef %pmb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -2013265920, ptr %un, align 4
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 17, ptr %mbxCommand, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_sli4_swap_str(ptr nocapture noundef readnone %phba, ptr noundef %pmb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mbxCommand, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %1)
  %cond = icmp eq i8 %1, 17
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fw_name = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1
  tail call void @lpfc_sli_pcimem_bcopy(ptr noundef %fw_name, ptr noundef %fw_name, i32 noundef 16) #14
  %ulp_fw_name = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 20
  tail call void @lpfc_sli_pcimem_bcopy(ptr noundef %ulp_fw_name, ptr noundef %ulp_fw_name, i32 noundef 16) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_pcimem_bcopy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_config_hbq(ptr nocapture noundef readonly %phba, i32 noundef %id, ptr noundef readonly %hbq_desc, i32 noundef %hbq_entry_index, ptr nocapture noundef %pmb) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %1 = and i32 %id, 65535
  %bf.value = zext i32 %1 to i96
  %bf.shl = shl nuw nsw i96 %bf.value, 48
  %2 = ptrtoint ptr %un to i32
  call void @__asan_storeN_noabort(i32 %2, i32 12)
  store i96 %bf.shl, ptr %un, align 4
  %entry_count = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 1
  %3 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %entry_count, align 4
  %5 = shl i32 %4, 16
  %bf.shl3 = zext i32 %5 to i96
  %bf.set5 = or i96 %bf.shl, %bf.shl3
  store i96 %bf.set5, ptr %un, align 4
  %6 = ptrtoint ptr %hbq_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hbq_desc, align 4
  %8 = and i32 %7, 1
  %bf.value8 = zext i32 %8 to i96
  %bf.shl9 = shl nuw nsw i96 %bf.value8, 88
  %bf.set11 = or i96 %bf.shl9, %bf.set5
  store i96 %bf.set11, ptr %un, align 4
  %mask_count = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 12
  %9 = ptrtoint ptr %mask_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask_count, align 4
  %11 = and i32 %10, 255
  %bf.value14 = zext i32 %11 to i96
  %bf.shl15 = shl nuw nsw i96 %bf.value14, 80
  %bf.set17 = or i96 %bf.set11, %bf.shl15
  store i96 %bf.set17, ptr %un, align 4
  %profile = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 4
  %12 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %profile, align 4
  %14 = and i32 %13, 255
  %bf.value20 = zext i32 %14 to i96
  %bf.shl21 = shl nuw nsw i96 %bf.value20, 72
  %bf.clear22 = and i96 %bf.set17, 617765816189276907238260736
  %bf.set23 = or i96 %bf.clear22, %bf.shl21
  store i96 %bf.set23, ptr %un, align 4
  %ring_mask = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 5
  %15 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ring_mask, align 4
  %17 = and i32 %16, 15
  %bf.value26 = zext i32 %17 to i96
  %bf.shl27 = shl nuw nsw i96 %bf.value26, 32
  %bf.set29 = or i96 %bf.set23, %bf.shl27
  store i96 %bf.set29, ptr %un, align 4
  %headerLen = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 2
  %18 = ptrtoint ptr %headerLen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %headerLen, align 4
  %20 = and i32 %19, 255
  %bf.value32 = zext i32 %20 to i96
  %bf.set34 = or i96 %bf.set29, %bf.value32
  store i96 %bf.set34, ptr %un, align 4
  %logEntry = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 3
  %21 = ptrtoint ptr %logEntry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %logEntry, align 4
  %logEntry36 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %bf.value38 = and i32 %22, 1
  %23 = ptrtoint ptr %logEntry36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bf.value38, ptr %logEntry36, align 4
  %phys = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 48, i32 2
  %24 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys, align 4
  %mul = shl i32 %hbq_entry_index, 4
  %add = add i32 %25, %mul
  %hbqaddrLow = getelementptr inbounds %struct.config_hbq_var, ptr %un, i32 0, i32 1
  %26 = ptrtoint ptr %hbqaddrLow to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %hbqaddrLow, align 4
  %hbqaddrHigh = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %hbqaddrHigh to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %hbqaddrHigh, align 4
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %28 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 124, ptr %mbxCommand, align 2
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %29 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %mbxOwner, align 1
  %30 = load i32, ptr %profile, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %30, label %entry.if.end62_crit_edge [
    i32 2, label %if.then
    i32 3, label %if.then55
    i32 5, label %if.then60
  ]

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seqlenbcnt.i = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 9
  %32 = ptrtoint ptr %seqlenbcnt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seqlenbcnt.i, align 4
  %profiles.i = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 28
  %34 = ptrtoint ptr %profiles.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %bf.load.i = load i64, ptr %profiles.i, align 4
  %35 = and i32 %33, 15
  %bf.value.i = zext i32 %35 to i64
  %bf.clear.i = and i64 %bf.load.i, -16
  %bf.set.i = or i64 %bf.clear.i, %bf.value.i
  store i64 %bf.set.i, ptr %profiles.i, align 4
  %maxlen.i = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 8
  %36 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %maxlen.i, align 4
  %38 = and i32 %37, 65535
  %bf.value3.i = zext i32 %38 to i64
  %bf.shl.i = shl nuw nsw i64 %bf.value3.i, 32
  %bf.clear4.i = and i64 %bf.set.i, -281470681743361
  %bf.set5.i = or i64 %bf.shl.i, %bf.clear4.i
  store i64 %bf.set5.i, ptr %profiles.i, align 4
  %seqlenoff.i = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 7
  %39 = ptrtoint ptr %seqlenoff.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %seqlenoff.i, align 4
  %bf.value9.i = zext i32 %40 to i64
  %bf.shl10.i = shl i64 %bf.value9.i, 48
  %bf.clear11.i = and i64 %bf.set5.i, 281474976710655
  %bf.set12.i = or i64 %bf.clear11.i, %bf.shl10.i
  store i64 %bf.set12.i, ptr %profiles.i, align 4
  br label %if.end62

if.then55:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seqlenbcnt.i136 = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 9
  %41 = ptrtoint ptr %seqlenbcnt.i136 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %seqlenbcnt.i136, align 4
  %profiles.i137 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 28
  %seqlenbcnt1.i = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 36
  %43 = trunc i32 %42 to i16
  %44 = ptrtoint ptr %seqlenbcnt1.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i138 = load i16, ptr %seqlenbcnt1.i, align 4
  %bf.value.i139 = and i16 %43, 15
  %bf.clear.i140 = and i16 %bf.load.i138, -16
  %bf.set.i141 = or i16 %bf.clear.i140, %bf.value.i139
  store i16 %bf.set.i141, ptr %seqlenbcnt1.i, align 4
  %maxlen.i142 = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 8
  %45 = ptrtoint ptr %maxlen.i142 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %maxlen.i142, align 4
  %47 = ptrtoint ptr %profiles.i137 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %bf.load3.i = load i64, ptr %profiles.i137, align 4
  %48 = and i32 %46, 65535
  %bf.value4.i = zext i32 %48 to i64
  %bf.shl.i143 = shl nuw nsw i64 %bf.value4.i, 32
  %bf.clear5.i = and i64 %bf.load3.i, -281470681743361
  %bf.set6.i = or i64 %bf.shl.i143, %bf.clear5.i
  store i64 %bf.set6.i, ptr %profiles.i137, align 4
  %cmdcodeoff.i = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 10
  %49 = ptrtoint ptr %cmdcodeoff.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmdcodeoff.i, align 4
  %51 = shl i32 %50, 4
  %bf.shl11.i = zext i32 %51 to i64
  %bf.clear12.i = and i64 %bf.set6.i, -4294967281
  %bf.set13.i = or i64 %bf.clear12.i, %bf.shl11.i
  store i64 %bf.set13.i, ptr %profiles.i137, align 4
  %seqlenoff.i144 = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 7
  %52 = ptrtoint ptr %seqlenoff.i144 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %seqlenoff.i144, align 4
  %bf.value17.i = zext i32 %53 to i64
  %bf.shl18.i = shl i64 %bf.value17.i, 48
  %bf.clear19.i = and i64 %bf.set13.i, 281474976710655
  %bf.set20.i = or i64 %bf.clear19.i, %bf.shl18.i
  store i64 %bf.set20.i, ptr %profiles.i137, align 4
  %cmdmatch.i = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 40
  %cmdmatch23.i = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 11
  %54 = call ptr @memcpy(ptr %cmdmatch.i, ptr %cmdmatch23.i, i32 32)
  br label %if.end62

if.then60:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seqlenbcnt.i145 = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 9
  %55 = ptrtoint ptr %seqlenbcnt.i145 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %seqlenbcnt.i145, align 4
  %profiles.i146 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 28
  %seqlenbcnt1.i147 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 36
  %57 = trunc i32 %56 to i16
  %58 = ptrtoint ptr %seqlenbcnt1.i147 to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load.i148 = load i16, ptr %seqlenbcnt1.i147, align 4
  %bf.value.i149 = and i16 %57, 15
  %bf.clear.i150 = and i16 %bf.load.i148, -16
  %bf.set.i151 = or i16 %bf.clear.i150, %bf.value.i149
  store i16 %bf.set.i151, ptr %seqlenbcnt1.i147, align 4
  %maxlen.i152 = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 8
  %59 = ptrtoint ptr %maxlen.i152 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %maxlen.i152, align 4
  %61 = ptrtoint ptr %profiles.i146 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %bf.load3.i153 = load i64, ptr %profiles.i146, align 4
  %62 = and i32 %60, 65535
  %bf.value4.i154 = zext i32 %62 to i64
  %bf.shl.i155 = shl nuw nsw i64 %bf.value4.i154, 32
  %bf.clear5.i156 = and i64 %bf.load3.i153, -281470681743361
  %bf.set6.i157 = or i64 %bf.shl.i155, %bf.clear5.i156
  store i64 %bf.set6.i157, ptr %profiles.i146, align 4
  %cmdcodeoff.i158 = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 10
  %63 = ptrtoint ptr %cmdcodeoff.i158 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cmdcodeoff.i158, align 4
  %65 = shl i32 %64, 4
  %bf.shl11.i159 = zext i32 %65 to i64
  %bf.clear12.i160 = and i64 %bf.set6.i157, -4294967281
  %bf.set13.i161 = or i64 %bf.clear12.i160, %bf.shl11.i159
  store i64 %bf.set13.i161, ptr %profiles.i146, align 4
  %seqlenoff.i162 = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 7
  %66 = ptrtoint ptr %seqlenoff.i162 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %seqlenoff.i162, align 4
  %bf.value17.i163 = zext i32 %67 to i64
  %bf.shl18.i164 = shl i64 %bf.value17.i163, 48
  %bf.clear19.i165 = and i64 %bf.set13.i161, 281474976710655
  %bf.set20.i166 = or i64 %bf.clear19.i165, %bf.shl18.i164
  store i64 %bf.set20.i166, ptr %profiles.i146, align 4
  %cmdmatch.i167 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 40
  %cmdmatch23.i168 = getelementptr inbounds %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 11
  %68 = call ptr @memcpy(ptr %cmdmatch.i167, ptr %cmdmatch23.i168, i32 32)
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.then55, %if.then, %entry.if.end62_crit_edge
  %69 = ptrtoint ptr %mask_count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mask_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not = icmp eq i32 %70, 0
  br i1 %tobool.not, label %if.end62.cleanup_crit_edge, label %for.cond.preheader

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end62
  %71 = ptrtoint ptr %mask_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mask_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp67169.not = icmp eq i32 %72, 0
  br i1 %cmp67169.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hbqMasks69 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 13, i32 %i.0170
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx, align 4
  %arrayidx70 = getelementptr [6 x %struct.hbq_mask], ptr %hbqMasks69, i32 0, i32 %i.0170
  %75 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx70, align 4
  %tmask = getelementptr %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 13, i32 %i.0170, i32 1
  %76 = ptrtoint ptr %tmask to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tmask, align 1
  %tmask76 = getelementptr [6 x %struct.hbq_mask], ptr %hbqMasks69, i32 0, i32 %i.0170, i32 1
  %78 = ptrtoint ptr %tmask76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %tmask76, align 1
  %rctlmatch = getelementptr %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 13, i32 %i.0170, i32 2
  %79 = ptrtoint ptr %rctlmatch to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %rctlmatch, align 2
  %rctlmatch81 = getelementptr [6 x %struct.hbq_mask], ptr %hbqMasks69, i32 0, i32 %i.0170, i32 2
  %81 = ptrtoint ptr %rctlmatch81 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %rctlmatch81, align 2
  %rctlmask = getelementptr %struct.lpfc_hbq_init, ptr %hbq_desc, i32 0, i32 13, i32 %i.0170, i32 3
  %82 = ptrtoint ptr %rctlmask to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %rctlmask, align 1
  %rctlmask86 = getelementptr [6 x %struct.hbq_mask], ptr %hbqMasks69, i32 0, i32 %i.0170, i32 3
  %84 = ptrtoint ptr %rctlmask86 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %rctlmask86, align 1
  %inc = add nuw i32 %i.0170, 1
  %85 = ptrtoint ptr %mask_count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mask_count, align 4
  %cmp67 = icmp ult i32 %inc, %86
  br i1 %cmp67, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end62.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_config_ring(ptr nocapture noundef readonly %phba, i32 noundef %ring, ptr nocapture noundef %pmb) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %bf.value = and i32 %ring, 15
  %bf.set6 = or i32 %bf.value, 16777216
  %1 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bf.set6, ptr %un, align 4
  %sli3_ring = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 2
  %2 = ptrtoint ptr %sli3_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sli3_ring, align 8
  %num_mask = getelementptr %struct.lpfc_sli_ring, ptr %3, i32 %ring, i32 23
  %4 = ptrtoint ptr %num_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_mask, align 4
  %bf.value9 = shl i32 %5, 16
  %bf.shl = and i32 %bf.value9, 16711680
  %bf.set11 = or i32 %bf.shl, %bf.set6
  store i32 %bf.set11, ptr %un, align 4
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %6 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %mbxCommand, align 2
  %mbxOwner = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 2
  %7 = ptrtoint ptr %mbxOwner to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mbxOwner, align 1
  %prt = getelementptr %struct.lpfc_sli_ring, ptr %3, i32 %ring, i32 22
  %8 = ptrtoint ptr %prt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %prt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %10 = ptrtoint ptr %num_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp87.not = icmp eq i32 %11, 0
  br i1 %cmp87.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rrRegs = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %9 to i32
  %bf.shl22 = shl nuw nsw i32 %conv, 8
  %bf.set24 = or i32 %bf.shl22, %bf.set11
  %12 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.set24, ptr %un, align 4
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %rctl = getelementptr %struct.lpfc_sli_ring, ptr %3, i32 %ring, i32 22, i32 %i.088, i32 1
  %13 = ptrtoint ptr %rctl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rctl, align 1
  %arrayidx30 = getelementptr [6 x %struct.RR_REG], ptr %rrRegs, i32 0, i32 %i.088
  %rval = getelementptr [6 x %struct.RR_REG], ptr %rrRegs, i32 0, i32 %i.088, i32 2
  %15 = ptrtoint ptr %rval to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %rval, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %14)
  %cmp36.not = icmp eq i8 %14, 34
  %spec.select = select i1 %cmp36.not, i8 -2, i8 -1
  %16 = getelementptr [6 x %struct.RR_REG], ptr %rrRegs, i32 0, i32 %i.088, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %16, align 1
  %type = getelementptr %struct.lpfc_sli_ring, ptr %3, i32 %ring, i32 22, i32 %i.088, i32 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 2
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx30, align 4
  %tmask = getelementptr [6 x %struct.RR_REG], ptr %rrRegs, i32 0, i32 %i.088, i32 1
  %21 = ptrtoint ptr %tmask to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %tmask, align 1
  %inc = add nuw i32 %i.088, 1
  %22 = ptrtoint ptr %num_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_mask, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_config_port(ptr noundef %phba, ptr nocapture noundef %pmb) local_unnamed_addr #0 align 64 {
entry:
  %bar_low = alloca i32, align 4
  %bar_high = alloca i32, align 4
  %hbainit = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %MBslimaddr = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 188
  %0 = ptrtoint ptr %MBslimaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %MBslimaddr, align 8
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar_low) #14
  %2 = ptrtoint ptr %bar_low to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bar_low, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar_high) #14
  %3 = ptrtoint ptr %bar_high to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bar_high, align 4, !annotation !73
  %4 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %5 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -120, ptr %mbxCommand, align 2
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 128, ptr %un, align 4
  %pcb = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 46
  %7 = ptrtoint ptr %pcb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcb, align 4
  %virt = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 41, i32 1
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %phys = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 41, i32 2
  %11 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys, align 4
  %add = add i32 %sub.ptr.sub, %12
  %pcbLow = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pcbLow to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %pcbLow, align 4
  %pcbHigh = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %pcbHigh to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pcbHigh, align 4
  %hps = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %hps to i32
  call void @__asan_storeN_noabort(i32 %15, i32 20)
  store i160 -730750818665451459101842416358141509827966271488, ptr %hps, align 4
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %16 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp = icmp eq i32 %17, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.else64_crit_edge

entry.if.else64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else64

land.lhs.true:                                    ; preds = %entry
  %sli3Feat = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 160, i32 3
  %18 = ptrtoint ptr %sli3Feat to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load16 = load i32, ptr %sli3Feat, align 4
  %19 = and i32 %bf.load16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %land.lhs.true.if.else64_crit_edge, label %if.then

land.lhs.true.if.else64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else64

if.then:                                          ; preds = %land.lhs.true
  %cfg_enable_bg = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 135
  %20 = ptrtoint ptr %cfg_enable_bg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg_enable_bg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool18.not = icmp eq i32 %21, 0
  br i1 %tobool18.not, label %if.then.if.end_crit_edge, label %if.then19

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %hps to i32
  call void @__asan_storeN_noabort(i32 %22, i32 20)
  store i160 -730750818665451438819432812706471085880714985472, ptr %hps, align 4
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.then.if.end_crit_edge
  %23 = ptrtoint ptr %hps to i32
  call void @__asan_loadN_noabort(i32 %23, i32 20)
  %bf.load25 = load i160, ptr %hps, align 4
  %bf.set31 = or i160 %bf.load25, 5387515050969974956360988622848
  store i160 %bf.set31, ptr %hps, align 4
  %call = tail call i32 @lpfc_sli_hbq_count() #14
  %24 = ptrtoint ptr %hps to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load33 = load i160, ptr %hps, align 4
  %25 = shl i32 %call, 16
  %bf.shl = zext i32 %25 to i160
  %bf.clear34 = and i160 %bf.load33, -4294901761
  %bf.set35 = or i160 %bf.clear34, %bf.shl
  store i160 %bf.set35, ptr %hps, align 4
  %max_vpi = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 242
  %26 = ptrtoint ptr %max_vpi to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %max_vpi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool37.not = icmp eq i16 %27, 0
  br i1 %tobool37.not, label %if.end.if.else_crit_edge, label %land.lhs.true38

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true38:                                  ; preds = %if.end
  %cfg_enable_npiv = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 82
  %28 = ptrtoint ptr %cfg_enable_npiv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg_enable_npiv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool39.not = icmp eq i32 %29, 0
  br i1 %tobool39.not, label %land.lhs.true38.if.else_crit_edge, label %land.lhs.true40

land.lhs.true38.if.else_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %30 = ptrtoint ptr %sli3Feat to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load43 = load i32, ptr %sli3Feat, align 4
  %31 = and i32 %bf.load43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool46.not = icmp eq i32 %31, 0
  br i1 %tobool46.not, label %land.lhs.true40.if.else_crit_edge, label %if.then47

land.lhs.true40.if.else_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then47:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  %max_vpi49 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 24
  %32 = ptrtoint ptr %max_vpi49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load50 = load i32, ptr %max_vpi49, align 4
  %bf.clear51 = and i32 %bf.load50, -65536
  %bf.set52 = or i32 %bf.clear51, 255
  store i32 %bf.set52, ptr %max_vpi49, align 4
  %bf.set56 = or i160 %bf.set35, 10141204801825835211973625643008
  %33 = ptrtoint ptr %hps to i32
  call void @__asan_storeN_noabort(i32 %33, i32 20)
  store i160 %bf.set56, ptr %hps, align 4
  br label %if.end66

if.else:                                          ; preds = %land.lhs.true40.if.else_crit_edge, %land.lhs.true38.if.else_crit_edge, %if.end.if.else_crit_edge
  %34 = ptrtoint ptr %max_vpi to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %max_vpi, align 4
  %max_vpi59 = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1, i32 0, i32 1, i32 1, i32 24
  %35 = ptrtoint ptr %max_vpi59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load60 = load i32, ptr %max_vpi59, align 4
  %bf.clear61 = and i32 %bf.load60, -65536
  store i32 %bf.clear61, ptr %max_vpi59, align 4
  br label %if.end66

if.else64:                                        ; preds = %land.lhs.true.if.else64_crit_edge, %entry.if.else64_crit_edge
  %36 = ptrtoint ptr %sli_rev to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %sli_rev, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else64, %if.else, %if.then47
  %37 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sli_rev, align 4
  %39 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load69 = load i32, ptr %un, align 4
  %bf.value70 = shl i32 %38, 24
  %bf.shl71 = and i32 %bf.value70, 251658240
  %bf.clear72 = and i32 %bf.load69, -251658241
  %bf.set73 = or i32 %bf.clear72, %bf.shl71
  store i32 %bf.set73, ptr %un, align 4
  %40 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp75 = icmp eq i32 %40, 3
  br i1 %cmp75, label %if.then77, label %if.end66.if.end82_crit_edge

if.end66.if.end82_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.then77:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %hps to i32
  call void @__asan_loadN_noabort(i32 %41, i32 20)
  %bf.load79 = load i160, ptr %hps, align 4
  %bf.set81 = or i160 %bf.load79, 162259276829213363391578010288128
  store i160 %bf.set81, ptr %hps, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end66.if.end82_crit_edge
  %42 = ptrtoint ptr %pcb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcb, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load84 = load i32, ptr %43, align 4
  %bf.clear85 = and i32 %bf.load84, 16777215
  %bf.set86 = or i32 %bf.clear85, 16777216
  store i32 %bf.set86, ptr %43, align 4
  %45 = load ptr, ptr %pcb, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load88 = load i32, ptr %45, align 4
  %bf.clear89 = and i32 %bf.load88, -16711681
  %bf.set90 = or i32 %bf.clear89, 65536
  store i32 %bf.set90, ptr %45, align 4
  %47 = load ptr, ptr %pcb, align 4
  %mailBoxSize = getelementptr inbounds %struct._PCB, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %mailBoxSize to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2304, ptr %mailBoxSize, align 4
  %mbox = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 42
  %49 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mbox, align 4
  %51 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %virt, align 8
  %sub.ptr.lhs.cast94 = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast95 = ptrtoint ptr %52 to i32
  %sub.ptr.sub96 = sub i32 %sub.ptr.lhs.cast94, %sub.ptr.rhs.cast95
  %53 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phys, align 4
  %add99 = add i32 %sub.ptr.sub96, %54
  %55 = load ptr, ptr %pcb, align 4
  %mbAddrHigh = getelementptr inbounds %struct._PCB, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %mbAddrHigh to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %mbAddrHigh, align 4
  %57 = load ptr, ptr %pcb, align 4
  %mbAddrLow = getelementptr inbounds %struct._PCB, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %mbAddrLow to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add99, ptr %mbAddrLow, align 4
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %59 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcidev, align 4
  %call109 = call i32 @pci_read_config_dword(ptr noundef %60, i32 noundef 16, ptr noundef nonnull %bar_low) #14
  %61 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pcidev, align 4
  %call111 = call i32 @pci_read_config_dword(ptr noundef %62, i32 noundef 20, ptr noundef nonnull %bar_high) #14
  %cfg_hostmem_hgp = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 138
  %63 = ptrtoint ptr %cfg_hostmem_hgp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cfg_hostmem_hgp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool112.not = icmp eq i32 %64, 0
  br i1 %tobool112.not, label %if.end82.if.else139_crit_edge, label %land.lhs.true113

if.end82.if.else139_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else139

land.lhs.true113:                                 ; preds = %if.end82
  %65 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp115.not = icmp eq i32 %66, 3
  br i1 %cmp115.not, label %land.lhs.true113.if.else139_crit_edge, label %if.then117

land.lhs.true113.if.else139_crit_edge:            ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else139

if.then117:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mbox, align 4
  %host = getelementptr inbounds %struct.MAILBOX_t, ptr %68, i32 0, i32 2, i32 0, i32 1
  %host_gp = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 193
  %69 = ptrtoint ptr %host_gp to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %host, ptr %host_gp, align 4
  %hbq_put = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 195
  %70 = ptrtoint ptr %hbq_put to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %hbq_put, align 4
  %71 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %virt, align 8
  %sub.ptr.lhs.cast124 = ptrtoint ptr %host to i32
  %sub.ptr.rhs.cast125 = ptrtoint ptr %72 to i32
  %sub.ptr.sub126 = sub i32 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %73 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %phys, align 4
  %add129 = add i32 %sub.ptr.sub126, %74
  %75 = ptrtoint ptr %pcb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcb, align 4
  %hgpAddrHigh = getelementptr inbounds %struct._PCB, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %hgpAddrHigh to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %hgpAddrHigh, align 4
  %78 = load ptr, ptr %pcb, align 4
  %hgpAddrLow = getelementptr inbounds %struct._PCB, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %hgpAddrLow to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add129, ptr %hgpAddrLow, align 4
  br label %if.end185

if.else139:                                       ; preds = %land.lhs.true113.if.else139_crit_edge, %if.end82.if.else139_crit_edge
  %80 = ptrtoint ptr %hps to i32
  call void @__asan_loadN_noabort(i32 %80, i32 20)
  %bf.load142 = load i160, ptr %hps, align 4
  %bf.set144 = or i160 %bf.load142, -730750818665451459101842416358141509827966271488
  store i160 %bf.set144, ptr %hps, align 4
  %81 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp146 = icmp eq i32 %82, 3
  %us149 = getelementptr inbounds %struct.MAILBOX_t, ptr %1, i32 0, i32 2
  %hbq_put154 = getelementptr inbounds %struct.MAILBOX_t, ptr %1, i32 0, i32 2, i32 0, i32 1
  %host159 = getelementptr inbounds %struct.MAILBOX_t, ptr %1, i32 0, i32 2, i32 0, i32 1
  %host159.sink = select i1 %cmp146, ptr %us149, ptr %host159
  %.sink = select i1 %cmp146, ptr %hbq_put154, ptr null
  %83 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 193
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %host159.sink, ptr %83, align 4
  %85 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 195
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %.sink, ptr %85, align 4
  %87 = ptrtoint ptr %bar_low to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bar_low, align 4
  %and164 = and i32 %88, -16
  %add.ptr = getelementptr i8, ptr %host159.sink, i32 %and164
  %89 = ptrtoint ptr %MBslimaddr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %MBslimaddr, align 8
  %sub.ptr.lhs.cast167 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast168 = ptrtoint ptr %90 to i32
  %sub.ptr.sub169 = sub i32 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168
  %91 = ptrtoint ptr %pcb to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pcb, align 4
  %hgpAddrLow171 = getelementptr inbounds %struct._PCB, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %hgpAddrLow171 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub.ptr.sub169, ptr %hgpAddrLow171, align 4
  %and172 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.else139.if.end180_crit_edge, label %if.then174

if.else139.if.end180_crit_edge:                   ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end180

if.then174:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %bar_high to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bar_high, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then174, %if.else139.if.end180_crit_edge
  %.sink302 = phi i32 [ %95, %if.then174 ], [ 0, %if.else139.if.end180_crit_edge ]
  %96 = ptrtoint ptr %pcb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pcb, align 4
  %hgpAddrHigh179 = getelementptr inbounds %struct._PCB, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %hgpAddrHigh179 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %.sink302, ptr %hgpAddrHigh179, align 4
  %sli = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29
  %99 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sli, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp181300.not = icmp eq i32 %100, 0
  br i1 %cmp181300.not, label %if.end180.if.end185_crit_edge, label %if.end180.for.body_crit_edge

if.end180.for.body_crit_edge:                     ; preds = %if.end180
  br label %for.body

if.end180.if.end185_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end185

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end180.for.body_crit_edge
  %i.0301 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end180.for.body_crit_edge ]
  %101 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %83, align 4
  %add.ptr184 = getelementptr %struct.lpfc_hgp, ptr %102, i32 %i.0301
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !74
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 0) #14, !srcloc !75
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184) #14, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !77
  %incdec.ptr.i = getelementptr i32, ptr %add.ptr184, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !74
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr.i, i32 0) #14, !srcloc !75
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i) #14, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !77
  %inc = add nuw i32 %i.0301, 1
  %105 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sli, align 8
  %cmp181 = icmp ult i32 %inc, %106
  br i1 %cmp181, label %for.body.for.body_crit_edge, label %for.body.if.end185_crit_edge

for.body.if.end185_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end185

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end185:                                        ; preds = %for.body.if.end185_crit_edge, %if.end180.if.end185_crit_edge, %if.then117
  %107 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %108)
  %cmp187 = icmp eq i32 %108, 3
  %. = select i1 %cmp187, i32 128, i32 224
  %109 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %phys, align 4
  %add194 = add i32 %., %110
  %111 = ptrtoint ptr %pcb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pcb, align 4
  %pgpAddrHigh = getelementptr inbounds %struct._PCB, ptr %112, i32 0, i32 7
  %113 = ptrtoint ptr %pgpAddrHigh to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %pgpAddrHigh, align 4
  %114 = load ptr, ptr %pcb, align 4
  %pgpAddrLow = getelementptr inbounds %struct._PCB, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %pgpAddrLow to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add194, ptr %pgpAddrLow, align 4
  %sli.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29
  %116 = load ptr, ptr %pcb, align 4
  %117 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sli.i, align 8
  %sub.i = add i32 %118, 15
  %119 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %bf.load.i = load i32, ptr %116, align 4
  %bf.value.i = and i32 %sub.i, 15
  %bf.clear.i = and i32 %bf.load.i, -16
  %bf.set.i = or i32 %bf.clear.i, %bf.value.i
  store i32 %bf.set.i, ptr %116, align 4
  %120 = load i32, ptr %sli.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp154.not.i = icmp eq i32 %120, 0
  br i1 %cmp154.not.i, label %if.end185.lpfc_config_pcb_setup.exit_crit_edge, label %for.body.lr.ph.i

if.end185.lpfc_config_pcb_setup.exit_crit_edge:   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #16
  br label %lpfc_config_pcb_setup.exit

for.body.lr.ph.i:                                 ; preds = %if.end185
  %sli3_ring.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 2
  %IOCBs.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 47
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0157.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %iocbCnt.0155.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %iocbCnt.1.i, %for.inc.i.for.body.i_crit_edge ]
  %121 = ptrtoint ptr %sli3_ring.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sli3_ring.i, align 8
  %123 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %cmp2.i = icmp eq i32 %124, 3
  %conv.i = select i1 %cmp2.i, i16 128, i16 32
  %sli3.i = getelementptr %struct.lpfc_sli_ring, ptr %122, i32 %i.0157.i, i32 27
  %sizeCiocb.i = getelementptr inbounds %struct.lpfc_sli3_ring, ptr %sli3.i, i32 0, i32 6
  %125 = ptrtoint ptr %sizeCiocb.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i, ptr %sizeCiocb.i, align 4
  %126 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %127)
  %cmp5.i = icmp eq i32 %127, 3
  %conv8.i = select i1 %cmp5.i, i16 64, i16 32
  %sizeRiocb.i = getelementptr inbounds %struct.lpfc_sli3_ring, ptr %sli3.i, i32 0, i32 7
  %128 = ptrtoint ptr %sizeRiocb.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv8.i, ptr %sizeRiocb.i, align 2
  %numCiocb.i = getelementptr inbounds %struct.lpfc_sli3_ring, ptr %sli3.i, i32 0, i32 4
  %129 = ptrtoint ptr %numCiocb.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %numCiocb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %cmp12.i = icmp eq i16 %130, 0
  br i1 %cmp12.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %numRiocb.i = getelementptr inbounds %struct.lpfc_sli3_ring, ptr %sli3.i, i32 0, i32 5
  %131 = ptrtoint ptr %numRiocb.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %numRiocb.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %cmp16.i = icmp eq i16 %132, 0
  br i1 %cmp16.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %arrayidx18.i = getelementptr %struct._PCB, ptr %116, i32 0, i32 8, i32 %i.0157.i
  %cmdringaddr.i = getelementptr inbounds %struct.lpfc_sli3_ring, ptr %sli3.i, i32 0, i32 8
  %133 = call ptr @memset(ptr %arrayidx18.i, i32 0, i32 24)
  %134 = ptrtoint ptr %cmdringaddr.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %cmdringaddr.i, align 4
  %rspringaddr.i = getelementptr inbounds %struct.lpfc_sli3_ring, ptr %sli3.i, i32 0, i32 9
  %135 = ptrtoint ptr %rspringaddr.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %rspringaddr.i, align 4
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %136 = ptrtoint ptr %IOCBs.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %IOCBs.i, align 8
  %arrayidx31.i = getelementptr %struct._IOCB, ptr %137, i32 %iocbCnt.0155.i
  %cmdringaddr33.i = getelementptr inbounds %struct.lpfc_sli3_ring, ptr %sli3.i, i32 0, i32 8
  %138 = ptrtoint ptr %cmdringaddr33.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %arrayidx31.i, ptr %cmdringaddr33.i, align 4
  %conv36.i = zext i16 %130 to i32
  %arrayidx38.i = getelementptr %struct._PCB, ptr %116, i32 0, i32 8, i32 %i.0157.i
  %139 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv36.i, ptr %arrayidx38.i, align 4
  %140 = load ptr, ptr %IOCBs.i, align 8
  %arrayidx41.i = getelementptr %struct._IOCB, ptr %140, i32 %iocbCnt.0155.i
  %141 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %virt, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx41.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %142 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %143 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %phys, align 4
  %add.i = add i32 %sub.ptr.sub.i, %144
  %cmdAddrHigh47.i = getelementptr %struct._PCB, ptr %116, i32 0, i32 8, i32 %i.0157.i, i32 2
  %145 = ptrtoint ptr %cmdAddrHigh47.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %cmdAddrHigh47.i, align 4
  %cmdAddrLow53.i = getelementptr %struct._PCB, ptr %116, i32 0, i32 8, i32 %i.0157.i, i32 1
  %146 = ptrtoint ptr %cmdAddrLow53.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %add.i, ptr %cmdAddrLow53.i, align 4
  %147 = ptrtoint ptr %numCiocb.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %numCiocb.i, align 4
  %conv56.i = zext i16 %148 to i32
  %add57.i = add i32 %iocbCnt.0155.i, %conv56.i
  %149 = load ptr, ptr %IOCBs.i, align 8
  %arrayidx59.i = getelementptr %struct._IOCB, ptr %149, i32 %add57.i
  %rspringaddr61.i = getelementptr inbounds %struct.lpfc_sli3_ring, ptr %sli3.i, i32 0, i32 9
  %150 = ptrtoint ptr %rspringaddr61.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %arrayidx59.i, ptr %rspringaddr61.i, align 4
  %151 = ptrtoint ptr %numRiocb.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %numRiocb.i, align 2
  %conv64.i = zext i16 %152 to i32
  %rspEntries67.i = getelementptr %struct._PCB, ptr %116, i32 0, i32 8, i32 %i.0157.i, i32 3
  %153 = ptrtoint ptr %rspEntries67.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %conv64.i, ptr %rspEntries67.i, align 4
  %154 = load ptr, ptr %IOCBs.i, align 8
  %arrayidx69.i = getelementptr %struct._IOCB, ptr %154, i32 %add57.i
  %155 = load ptr, ptr %virt, align 8
  %sub.ptr.lhs.cast72.i = ptrtoint ptr %arrayidx69.i to i32
  %sub.ptr.rhs.cast73.i = ptrtoint ptr %155 to i32
  %sub.ptr.sub74.i = sub i32 %sub.ptr.lhs.cast72.i, %sub.ptr.rhs.cast73.i
  %156 = load i32, ptr %phys, align 4
  %add77.i = add i32 %sub.ptr.sub74.i, %156
  %rspAddrHigh84.i = getelementptr %struct._PCB, ptr %116, i32 0, i32 8, i32 %i.0157.i, i32 5
  %157 = ptrtoint ptr %rspAddrHigh84.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %rspAddrHigh84.i, align 4
  %rspAddrLow90.i = getelementptr %struct._PCB, ptr %116, i32 0, i32 8, i32 %i.0157.i, i32 4
  %158 = ptrtoint ptr %rspAddrLow90.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add77.i, ptr %rspAddrLow90.i, align 4
  %159 = load i16, ptr %numRiocb.i, align 2
  %conv93.i = zext i16 %159 to i32
  %add94.i = add i32 %add57.i, %conv93.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.then.i
  %iocbCnt.1.i = phi i32 [ %iocbCnt.0155.i, %if.then.i ], [ %add94.i, %if.end.i ]
  %inc.i = add nuw i32 %i.0157.i, 1
  %160 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %sli.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %161
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.lpfc_config_pcb_setup.exit_crit_edge

for.inc.i.lpfc_config_pcb_setup.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lpfc_config_pcb_setup.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

lpfc_config_pcb_setup.exit:                       ; preds = %for.inc.i.lpfc_config_pcb_setup.exit_crit_edge, %if.end185.lpfc_config_pcb_setup.exit_crit_edge
  %162 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pcidev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 8
  %164 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %device, align 2
  %166 = zext i16 %165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %166, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %165, label %lpfc_config_pcb_setup.exit.if.end211_crit_edge [
    i16 -3931, label %lpfc_config_pcb_setup.exit.if.then207_crit_edge
    i16 -3944, label %lpfc_config_pcb_setup.exit.if.then207_crit_edge304
    i16 -3935, label %lpfc_config_pcb_setup.exit.if.then207_crit_edge305
    i16 -3883, label %lpfc_config_pcb_setup.exit.if.then207_crit_edge306
    i16 -3887, label %lpfc_config_pcb_setup.exit.if.then207_crit_edge307
    i16 -3867, label %lpfc_config_pcb_setup.exit.if.then207_crit_edge308
    i16 -3871, label %lpfc_config_pcb_setup.exit.if.then207_crit_edge309
    i16 -4075, label %lpfc_config_pcb_setup.exit.if.then207_crit_edge310
    i16 -4079, label %lpfc_config_pcb_setup.exit.if.then207_crit_edge311
    i16 -3947, label %lpfc_config_pcb_setup.exit.if.then207_crit_edge312
  ]

lpfc_config_pcb_setup.exit.if.then207_crit_edge312: ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then207

lpfc_config_pcb_setup.exit.if.then207_crit_edge311: ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then207

lpfc_config_pcb_setup.exit.if.then207_crit_edge310: ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then207

lpfc_config_pcb_setup.exit.if.then207_crit_edge309: ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then207

lpfc_config_pcb_setup.exit.if.then207_crit_edge308: ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then207

lpfc_config_pcb_setup.exit.if.then207_crit_edge307: ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then207

lpfc_config_pcb_setup.exit.if.then207_crit_edge306: ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then207

lpfc_config_pcb_setup.exit.if.then207_crit_edge305: ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then207

lpfc_config_pcb_setup.exit.if.then207_crit_edge304: ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then207

lpfc_config_pcb_setup.exit.if.then207_crit_edge:  ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then207

lpfc_config_pcb_setup.exit.if.end211_crit_edge:   ; preds = %lpfc_config_pcb_setup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end211

if.then207:                                       ; preds = %lpfc_config_pcb_setup.exit.if.then207_crit_edge, %lpfc_config_pcb_setup.exit.if.then207_crit_edge304, %lpfc_config_pcb_setup.exit.if.then207_crit_edge305, %lpfc_config_pcb_setup.exit.if.then207_crit_edge306, %lpfc_config_pcb_setup.exit.if.then207_crit_edge307, %lpfc_config_pcb_setup.exit.if.then207_crit_edge308, %lpfc_config_pcb_setup.exit.if.then207_crit_edge309, %lpfc_config_pcb_setup.exit.if.then207_crit_edge310, %lpfc_config_pcb_setup.exit.if.then207_crit_edge311, %lpfc_config_pcb_setup.exit.if.then207_crit_edge312
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hbainit) #14
  %167 = call ptr @memset(ptr %hbainit, i32 255, i32 20)
  call void @lpfc_hba_init(ptr noundef %phba, ptr noundef nonnull %hbainit) #14
  %hbainit209 = getelementptr inbounds %struct.CONFIG_PORT_VAR, ptr %un, i32 0, i32 3
  %168 = call ptr @memcpy(ptr %hbainit209, ptr %hbainit, i32 20)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hbainit) #14
  br label %if.end211

if.end211:                                        ; preds = %if.then207, %lpfc_config_pcb_setup.exit.if.end211_crit_edge
  %169 = ptrtoint ptr %pcb to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pcb, align 4
  call void @lpfc_sli_pcimem_bcopy(ptr noundef %170, ptr noundef %170, i32 noundef 128) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar_high) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar_low) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli_hbq_count() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_hba_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_kill_board(ptr nocapture noundef readnone %phba, ptr nocapture noundef %pmb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %pmb, i32 0, i32 1
  %0 = call ptr @memset(ptr %pmb, i32 0, i32 312)
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 36, ptr %mbxCommand, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_mbox_put(ptr noundef %phba, ptr noundef %mbq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mboxq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 4
  %prev.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 4, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mbq, ptr noundef %1, ptr noundef %mboxq) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mbq, ptr %prev.i, align 4
  %3 = ptrtoint ptr %mbq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mboxq, ptr %mbq, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %mbq, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %mbq, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %mboxq_cnt = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 5
  %6 = ptrtoint ptr %mboxq_cnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mboxq_cnt, align 8
  %inc = add i16 %7, 1
  store i16 %inc, ptr %mboxq_cnt, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lpfc_mbox_get(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mboxq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 4
  %0 = ptrtoint ptr %mboxq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mboxq, align 4
  %cmp.i.not = icmp eq ptr %1, %mboxq
  br i1 %cmp.i.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %do.end

do.end:                                           ; preds = %if.end.i.i, %if.then.do.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.end.if.end4_crit_edge, label %if.then3

do.end.if.end4_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %mboxq_cnt = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 5
  %10 = ptrtoint ptr %mboxq_cnt to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mboxq_cnt, align 8
  %dec = add i16 %11, -1
  store i16 %dec, ptr %mboxq_cnt, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %mbq.011 = phi ptr [ %1, %if.then3 ], [ null, %do.end.if.end4_crit_edge ], [ null, %entry.if.end4_crit_edge ]
  ret ptr %mbq.011
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__lpfc_mbox_cmpl_put(ptr noundef %phba, ptr noundef %mbq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mboxq_cmpl = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 8
  %prev.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 8, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mbq, ptr noundef %1, ptr noundef %mboxq_cmpl) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mbq, ptr %prev.i, align 4
  %3 = ptrtoint ptr %mbq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mboxq_cmpl, ptr %mbq, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %mbq, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %mbq, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_mbox_cmpl_put(ptr noundef %phba, ptr noundef %mbq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock) #14
  %mboxq_cmpl.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 8
  %prev.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 8, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mbq, ptr noundef %1, ptr noundef %mboxq_cmpl.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.__lpfc_mbox_cmpl_put.exit_crit_edge

entry.__lpfc_mbox_cmpl_put.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__lpfc_mbox_cmpl_put.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mbq, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %mbq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mboxq_cmpl.i, ptr %mbq, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %mbq, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %mbq, ptr %1, align 4
  br label %__lpfc_mbox_cmpl_put.exit

__lpfc_mbox_cmpl_put.exit:                        ; preds = %if.end.i.i.i, %entry.__lpfc_mbox_cmpl_put.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_mbox_cmd_check(ptr nocapture noundef readonly %phba, ptr nocapture noundef readonly %mboxq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_cmpl = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 6
  %0 = ptrtoint ptr %mbox_cmpl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_cmpl, align 4
  %tobool.not = icmp eq ptr %1, null
  %cmp.not = icmp eq ptr %1, @lpfc_sli_def_mbox_cmpl
  %or.cond = or i1 %tobool.not, %cmp.not
  %cmp4.not = icmp eq ptr %1, @lpfc_sli_wake_mbox_wait
  %or.cond41 = or i1 %cmp4.not, %or.cond
  br i1 %or.cond41, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %entry
  %vport = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 2
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.body, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %4 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %6 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brd_no, align 4
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %8 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mbxCommand, align 2
  %conv15 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef %conv15) #18
  tail call void @dump_stack() #18
  br label %return

return:                                           ; preds = %do.body, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.body ], [ 0, %if.then.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_wake_mbox_wait(ptr noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lpfc_mbox_dev_check(ptr nocapture noundef readonly %phba) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge, !prof !78

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %link_state = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 36
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  %. = select i1 %cmp, i32 -19, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lpfc_mbox_tmo_val(ptr nocapture noundef readnone %phba, ptr nocapture noundef readonly %mboxq) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mbxCommand, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %1, label %sw.epilog15 [
    i8 3, label %entry.cleanup_crit_edge
    i8 23, label %entry.cleanup_crit_edge40
    i8 27, label %entry.cleanup_crit_edge41
    i8 28, label %entry.cleanup_crit_edge42
    i8 29, label %entry.cleanup_crit_edge43
    i8 50, label %entry.cleanup_crit_edge44
    i8 -127, label %entry.cleanup_crit_edge45
    i8 -104, label %entry.cleanup_crit_edge46
    i8 -100, label %entry.cleanup_crit_edge47
    i8 -91, label %entry.cleanup_crit_edge48
    i8 -101, label %if.end.i
  ]

entry.cleanup_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %un.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %un.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %un.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_shdr7.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  br label %cleanup.sink.split.i

if.end11.i:                                       ; preds = %if.end.i
  %sge_array.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 12
  %5 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sge_array.i, align 4
  %tobool12.not.i = icmp eq ptr %6, null
  br i1 %tobool12.not.i, label %if.end11.i.if.end.i29_crit_edge, label %if.end17.i, !prof !79

if.end11.i.if.end.i29_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i29

if.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end17.i, %if.then3.i
  %.sink29.i = phi ptr [ %8, %if.end17.i ], [ %cfg_shdr7.i, %if.then3.i ]
  %9 = ptrtoint ptr %.sink29.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %.sink29.i, align 4
  %shr20.i = lshr i32 %10, 8
  %conv22.i = trunc i32 %shr20.i to i8
  br label %if.end.i29

if.end.i29:                                       ; preds = %cleanup.sink.split.i, %if.end11.i.if.end.i29_crit_edge
  %retval.0.i = phi i8 [ 0, %if.end11.i.if.end.i29_crit_edge ], [ %conv22.i, %cleanup.sink.split.i ]
  %11 = ptrtoint ptr %un.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %un.i, align 4
  %and.i27 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i28 = icmp eq i32 %and.i27, 0
  br i1 %tobool.not.i28, label %if.end11.i34, label %if.then3.i31

if.then3.i31:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_shdr7.i30 = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  br label %cleanup.sink.split.i38

if.end11.i34:                                     ; preds = %if.end.i29
  %sge_array.i32 = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 12
  %13 = ptrtoint ptr %sge_array.i32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sge_array.i32, align 4
  %tobool12.not.i33 = icmp eq ptr %14, null
  br i1 %tobool12.not.i33, label %if.end11.i34.lpfc_sli_config_mbox_opcode_get.exit_crit_edge, label %if.end17.i35, !prof !79

if.end11.i34.lpfc_sli_config_mbox_opcode_get.exit_crit_edge: ; preds = %if.end11.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %lpfc_sli_config_mbox_opcode_get.exit

if.end17.i35:                                     ; preds = %if.end11.i34
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  br label %cleanup.sink.split.i38

cleanup.sink.split.i38:                           ; preds = %if.end17.i35, %if.then3.i31
  %.sink29.i36 = phi ptr [ %16, %if.end17.i35 ], [ %cfg_shdr7.i30, %if.then3.i31 ]
  %17 = ptrtoint ptr %.sink29.i36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %.sink29.i36, align 4
  %conv22.i37 = trunc i32 %18 to i8
  br label %lpfc_sli_config_mbox_opcode_get.exit

lpfc_sli_config_mbox_opcode_get.exit:             ; preds = %cleanup.sink.split.i38, %if.end11.i34.lpfc_sli_config_mbox_opcode_get.exit_crit_edge
  %retval.0.i39 = phi i8 [ 0, %if.end11.i34.lpfc_sli_config_mbox_opcode_get.exit_crit_edge ], [ %conv22.i37, %cleanup.sink.split.i38 ]
  %19 = zext i8 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %retval.0.i, label %lpfc_sli_config_mbox_opcode_get.exit.if.end14_crit_edge [
    i8 1, label %if.then
    i8 12, label %if.then10
  ]

lpfc_sli_config_mbox_opcode_get.exit.if.end14_crit_edge: ; preds = %lpfc_sli_config_mbox_opcode_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then:                                          ; preds = %lpfc_sli_config_mbox_opcode_get.exit
  %20 = zext i8 %retval.0.i39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %retval.0.i39, label %if.then.if.end14_crit_edge [
    i8 -85, label %if.then.cleanup_crit_edge
    i8 -84, label %if.then.cleanup_crit_edge49
    i8 -83, label %if.then.cleanup_crit_edge50
    i8 -82, label %if.then.cleanup_crit_edge51
    i8 -90, label %if.then.cleanup_crit_edge52
    i8 -88, label %if.then.cleanup_crit_edge53
    i8 -92, label %if.then.cleanup_crit_edge54
    i8 -91, label %if.then.cleanup_crit_edge55
    i8 -87, label %if.then.cleanup_crit_edge56
    i8 -95, label %if.then.cleanup_crit_edge57
    i8 115, label %if.then.cleanup_crit_edge58
    i8 116, label %if.then.cleanup_crit_edge59
    i8 67, label %if.then.cleanup_crit_edge60
    i8 91, label %if.then.cleanup_crit_edge61
    i8 62, label %if.then.cleanup_crit_edge62
  ]

if.then.cleanup_crit_edge62:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge61:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge60:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge59:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge58:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge57:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge56:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge55:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge54:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge53:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge52:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge51:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge50:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge49:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then10:                                        ; preds = %lpfc_sli_config_mbox_opcode_get.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %retval.0.i39)
  %cond.old = icmp eq i8 %retval.0.i39, 33
  br i1 %cond.old, label %if.then10.cleanup_crit_edge, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %if.then10.if.end14_crit_edge, %if.then.if.end14_crit_edge, %lpfc_sli_config_mbox_opcode_get.exit.if.end14_crit_edge
  br label %cleanup

sw.epilog15:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog15, %if.end14, %if.then10.cleanup_crit_edge, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge49, %if.then.cleanup_crit_edge50, %if.then.cleanup_crit_edge51, %if.then.cleanup_crit_edge52, %if.then.cleanup_crit_edge53, %if.then.cleanup_crit_edge54, %if.then.cleanup_crit_edge55, %if.then.cleanup_crit_edge56, %if.then.cleanup_crit_edge57, %if.then.cleanup_crit_edge58, %if.then.cleanup_crit_edge59, %if.then.cleanup_crit_edge60, %if.then.cleanup_crit_edge61, %if.then.cleanup_crit_edge62, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge40, %entry.cleanup_crit_edge41, %entry.cleanup_crit_edge42, %entry.cleanup_crit_edge43, %entry.cleanup_crit_edge44, %entry.cleanup_crit_edge45, %entry.cleanup_crit_edge46, %entry.cleanup_crit_edge47, %entry.cleanup_crit_edge48
  %retval.0 = phi i32 [ 30, %sw.epilog15 ], [ 60, %if.end14 ], [ 300, %entry.cleanup_crit_edge ], [ 300, %entry.cleanup_crit_edge40 ], [ 300, %entry.cleanup_crit_edge41 ], [ 300, %entry.cleanup_crit_edge42 ], [ 300, %entry.cleanup_crit_edge43 ], [ 300, %entry.cleanup_crit_edge44 ], [ 300, %entry.cleanup_crit_edge45 ], [ 300, %entry.cleanup_crit_edge46 ], [ 300, %entry.cleanup_crit_edge47 ], [ 300, %entry.cleanup_crit_edge48 ], [ 300, %if.then.cleanup_crit_edge ], [ 300, %if.then.cleanup_crit_edge49 ], [ 300, %if.then.cleanup_crit_edge50 ], [ 300, %if.then.cleanup_crit_edge51 ], [ 300, %if.then.cleanup_crit_edge52 ], [ 300, %if.then.cleanup_crit_edge53 ], [ 300, %if.then.cleanup_crit_edge54 ], [ 300, %if.then.cleanup_crit_edge55 ], [ 300, %if.then.cleanup_crit_edge56 ], [ 300, %if.then.cleanup_crit_edge57 ], [ 300, %if.then.cleanup_crit_edge58 ], [ 300, %if.then.cleanup_crit_edge59 ], [ 300, %if.then.cleanup_crit_edge60 ], [ 300, %if.then.cleanup_crit_edge61 ], [ 300, %if.then.cleanup_crit_edge62 ], [ 300, %if.then10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @lpfc_sli_config_mbox_subsys_get(ptr nocapture readnone %phba, ptr nocapture noundef readonly %mbox) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mbxCommand, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -101, i8 %1)
  %cmp.not = icmp eq i8 %1, -101
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %un, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_shdr7 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end
  %sge_array = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 12
  %4 = ptrtoint ptr %sge_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sge_array, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end17, !prof !79

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17, %if.then3
  %.sink29 = phi ptr [ %7, %if.end17 ], [ %cfg_shdr7, %if.then3 ]
  %8 = ptrtoint ptr %.sink29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %.sink29, align 4
  %shr20 = lshr i32 %9, 8
  %conv22 = trunc i32 %shr20 to i8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %conv22, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @lpfc_sli_config_mbox_opcode_get(ptr nocapture readnone %phba, ptr nocapture noundef readonly %mbox) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mbxCommand, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -101, i8 %1)
  %cmp.not = icmp eq i8 %1, -101
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %un, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_shdr7 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end
  %sge_array = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 12
  %4 = ptrtoint ptr %sge_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sge_array, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end17, !prof !79

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17, %if.then3
  %.sink29 = phi ptr [ %7, %if.end17 ], [ %cfg_shdr7, %if.then3 ]
  %8 = ptrtoint ptr %.sink29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %.sink29, align 4
  %conv22 = trunc i32 %9 to i8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %conv22, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @lpfc_sli4_mbx_sge_set(ptr nocapture noundef writeonly %mbox, i32 noundef %sgentry, i32 noundef %phyaddr, i32 noundef %length) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sge = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %arrayidx = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge, i32 0, i32 %sgentry
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %phyaddr, ptr %arrayidx, align 4
  %pa_hi = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge, i32 0, i32 %sgentry, i32 1
  %1 = ptrtoint ptr %pa_hi to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pa_hi, align 4
  %length9 = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge, i32 0, i32 %sgentry, i32 2
  %2 = ptrtoint ptr %length9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %length, ptr %length9, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_sli4_mbx_sge_get(ptr nocapture noundef readonly %mbox, i32 noundef %sgentry, ptr nocapture noundef writeonly %sge) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sge1 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %arrayidx = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge1, i32 0, i32 %sgentry
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %sge to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %sge, align 4
  %pa_hi = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge1, i32 0, i32 %sgentry, i32 1
  %3 = ptrtoint ptr %pa_hi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pa_hi, align 4
  %pa_hi5 = getelementptr inbounds %struct.lpfc_mbx_sge, ptr %sge, i32 0, i32 1
  %5 = ptrtoint ptr %pa_hi5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pa_hi5, align 4
  %length = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge1, i32 0, i32 %sgentry, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %length8 = getelementptr inbounds %struct.lpfc_mbx_sge, ptr %sge, i32 0, i32 2
  %8 = ptrtoint ptr %length8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %length8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_sli4_mbox_cmd_free(ptr nocapture noundef readonly %phba, ptr noundef %mbox) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %un, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr4 = lshr i32 %1, 3
  %and5 = and i32 %shr4, 31
  %sge_array = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 12
  %2 = ptrtoint ptr %sge_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sge_array, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader, !prof !79

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp37.not = icmp eq i32 %and5, 0
  br i1 %cmp37.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sge1.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %sgentry.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx.i = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge1.i, i32 0, i32 %sgentry.038
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %sge_array to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sge_array, align 4
  %arrayidx = getelementptr [19 x ptr], ptr %9, i32 0, i32 %sgentry.038
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %11, i32 noundef %5, i32 noundef 0) #14
  %inc = add nuw nsw i32 %sgentry.038, 1
  %exitcond.not = icmp eq i32 %inc, %and5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %12 = ptrtoint ptr %sge_array to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sge_array, align 4
  tail call void @kfree(ptr noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %mbox_mem_pool18 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  %14 = ptrtoint ptr %mbox_mem_pool18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbox_mem_pool18, align 8
  tail call void @mempool_free(ptr noundef %mbox, ptr noundef %15) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_sli4_config(ptr nocapture noundef readonly %phba, ptr nocapture noundef %mbox, i8 noundef zeroext %subsystem, i8 noundef zeroext %opcode, i32 noundef %length, i1 noundef zeroext %emb) local_unnamed_addr #0 align 64 {
entry:
  %phyaddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phyaddr) #14
  %0 = ptrtoint ptr %phyaddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phyaddr, align 4, !annotation !73
  %1 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 39680, ptr %u, align 4
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  br i1 %emb, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %un, align 4
  %or5 = or i32 %4, 1
  store i32 %or5, ptr %un, align 4
  %payload_length = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %payload_length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %length, ptr %payload_length, align 4
  %conv = zext i8 %opcode to i32
  %cfg_shdr13 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %6 = ptrtoint ptr %cfg_shdr13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg_shdr13, align 4
  %and14 = and i32 %7, -65536
  %or15 = or i32 %and14, %conv
  %conv19 = zext i8 %subsystem to i32
  %shl21 = shl nuw nsw i32 %conv19, 8
  %or26 = or i32 %or15, %shl21
  store i32 %or26, ptr %cfg_shdr13, align 4
  %sub = add i32 %length, -16
  %request_length = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 11
  %8 = ptrtoint ptr %request_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %request_length, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %length, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 81919, i32 %add)
  %cmp = icmp ugt i32 %add, 81919
  %div179 = lshr i32 %add, 12
  %spec.select = select i1 %cmp, i32 19, i32 %div179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 76) #17
  %sge_array = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 12
  %10 = ptrtoint ptr %sge_array to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %sge_array, align 4
  %tobool35.not = icmp eq ptr %call7.i.i, null
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  br i1 %tobool35.not, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp60185.not = icmp eq i32 %spec.select, 0
  br i1 %cmp60185.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sge.i181 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  br label %for.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %13 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %14) #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pagen.0188 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %alloc_len.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %alloc_len.1, %for.inc.for.body_crit_edge ]
  %cfg_shdr.0186 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select180, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev63, i32 noundef 4096, ptr noundef nonnull %phyaddr, i32 noundef 3264, i32 noundef 0) #14
  %tobool65.not = icmp eq ptr %call.i, null
  br i1 %tobool65.not, label %for.body.for.end_crit_edge, label %if.end67

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end67:                                         ; preds = %for.body
  %17 = ptrtoint ptr %sge_array to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sge_array, align 4
  %arrayidx = getelementptr [19 x ptr], ptr %18, i32 0, i32 %pagen.0188
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pagen.0188)
  %cmp69 = icmp eq i32 %pagen.0188, 0
  %spec.select180 = select i1 %cmp69, ptr %call.i, ptr %cfg_shdr.0186
  %sub73 = sub i32 %length, %alloc_len.0187
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub73)
  %cmp74 = icmp ugt i32 %sub73, 4096
  %20 = ptrtoint ptr %phyaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phyaddr, align 4
  %arrayidx.i = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge.i181, i32 0, i32 %pagen.0188
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %pa_hi.i = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge.i181, i32 0, i32 %pagen.0188, i32 1
  %23 = ptrtoint ptr %pa_hi.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pa_hi.i, align 4
  %length9.i = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge.i181, i32 0, i32 %pagen.0188, i32 2
  br i1 %cmp74, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %length9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4096, ptr %length9.i, align 4
  %add77 = add i32 %alloc_len.0187, 4096
  br label %for.inc

if.else78:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %length9.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub73, ptr %length9.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else78, %if.then76
  %alloc_len.1 = phi i32 [ %add77, %if.then76 ], [ %length, %if.else78 ]
  %inc = add nuw nsw i32 %pagen.0188, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cfg_shdr.0.lcssa = phi ptr [ null, %for.cond.preheader.for.end_crit_edge ], [ %cfg_shdr.0186, %for.body.for.end_crit_edge ], [ %spec.select180, %for.inc.for.end_crit_edge ]
  %alloc_len.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %alloc_len.0187, %for.body.for.end_crit_edge ], [ %alloc_len.1, %for.inc.for.end_crit_edge ]
  %pagen.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %pagen.0188, %for.body.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  %payload_length82 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %payload_length82 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %alloc_len.0.lcssa, ptr %payload_length82, align 4
  %and83 = shl i32 %pagen.0.lcssa, 3
  %shl84 = and i32 %and83, 248
  %27 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %un, align 4
  %and88 = and i32 %28, -249
  %or89 = or i32 %and88, %shl84
  store i32 %or89, ptr %un, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pagen.0.lcssa)
  %cmp93.not = icmp eq i32 %pagen.0.lcssa, 0
  br i1 %cmp93.not, label %for.end.if.end112_crit_edge, label %if.then95

for.end.if.end112_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.then95:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv96 = zext i8 %opcode to i32
  %29 = ptrtoint ptr %cfg_shdr.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cfg_shdr.0.lcssa, align 4
  %and100 = and i32 %30, -65536
  %or101 = or i32 %and100, %conv96
  %conv103 = zext i8 %subsystem to i32
  %shl105 = shl nuw nsw i32 %conv103, 8
  %or108 = or i32 %or101, %shl105
  store i32 %or108, ptr %cfg_shdr.0.lcssa, align 4
  %sub110 = add i32 %alloc_len.0.lcssa, -16
  %request_length111 = getelementptr inbounds %struct.anon.116, ptr %cfg_shdr.0.lcssa, i32 0, i32 2
  %31 = ptrtoint ptr %request_length111 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub110, ptr %request_length111, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then95, %for.end.if.end112_crit_edge
  %tobool113.not = icmp eq ptr %cfg_shdr.0.lcssa, null
  br i1 %tobool113.not, label %if.end112.cleanup_crit_edge, label %if.then114

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #16
  call void @lpfc_sli_pcimem_bcopy(ptr noundef nonnull %cfg_shdr.0.lcssa, ptr noundef nonnull %cfg_shdr.0.lcssa, i32 noundef 16) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %if.end112.cleanup_crit_edge, %do.body, %if.then
  %retval.0 = phi i32 [ %length, %if.then ], [ 0, %do.body ], [ %alloc_len.0.lcssa, %if.then114 ], [ %alloc_len.0.lcssa, %if.end112.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phyaddr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_sli4_mbox_rsrc_extent(ptr nocapture noundef readonly %phba, ptr nocapture noundef %mbox, i16 noundef zeroext %exts_count, i16 noundef zeroext %rsrc_type, i1 noundef zeroext %emb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %emb, label %if.then10, label %if.then

if.then:                                          ; preds = %entry
  %sge_array = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 12
  %0 = ptrtoint ptr %sge_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge_array, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.else

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv11 = zext i16 %rsrc_type to i32
  %u12 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 1, i32 4
  %4 = ptrtoint ptr %u12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u12, align 4
  %and13 = and i32 %5, -65536
  %or = or i32 %and13, %conv11
  store i32 %or, ptr %u12, align 4
  br label %if.end27

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %conv18 = zext i16 %rsrc_type to i32
  %word421 = getelementptr inbounds %struct.lpfc_mbx_nembed_rsrc_extent, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %word421 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %word421, align 4
  %and22 = and i32 %7, -65536
  %or23 = or i32 %and22, %conv18
  store i32 %or23, ptr %word421, align 4
  tail call void @lpfc_sli_pcimem_bcopy(ptr noundef %word421, ptr noundef %word421, i32 noundef 4) #14
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then10
  %n_rsrc_extnt.0107 = phi ptr [ %3, %if.else ], [ null, %if.then10 ]
  %u.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %mbxCommand.i = getelementptr inbounds %struct.anon.99, ptr %u.i, i32 0, i32 1
  %8 = ptrtoint ptr %mbxCommand.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mbxCommand.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -101, i8 %9)
  %cmp.not.i = icmp eq i8 %9, -101
  br i1 %cmp.not.i, label %if.end.i, label %if.end27.do.body_crit_edge

if.end27.do.body_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end.i:                                         ; preds = %if.end27
  %un.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %un.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %un.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_shdr7.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  br label %lpfc_sli_config_mbox_opcode_get.exit

if.end11.i:                                       ; preds = %if.end.i
  %sge_array.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 12
  %12 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sge_array.i, align 4
  %tobool12.not.i = icmp eq ptr %13, null
  br i1 %tobool12.not.i, label %if.end11.i.do.body_crit_edge, label %if.end17.i, !prof !79

if.end11.i.do.body_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  br label %lpfc_sli_config_mbox_opcode_get.exit

lpfc_sli_config_mbox_opcode_get.exit:             ; preds = %if.end17.i, %if.then3.i
  %.sink29.i = phi ptr [ %15, %if.end17.i ], [ %cfg_shdr7.i, %if.then3.i ]
  %16 = ptrtoint ptr %.sink29.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %.sink29.i, align 4
  %conv22.i = trunc i32 %17 to i8
  %conv28 = and i32 %17, 255
  %18 = zext i8 %conv22.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %conv22.i, label %lpfc_sli_config_mbox_opcode_get.exit.do.body_crit_edge [
    i8 -100, label %sw.bb
    i8 -101, label %lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge
    i8 -102, label %lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge112
    i8 -99, label %lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge113
  ]

lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge113: ; preds = %lpfc_sli_config_mbox_opcode_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge112: ; preds = %lpfc_sli_config_mbox_opcode_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge: ; preds = %lpfc_sli_config_mbox_opcode_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lpfc_sli_config_mbox_opcode_get.exit.do.body_crit_edge: ; preds = %lpfc_sli_config_mbox_opcode_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb:                                            ; preds = %lpfc_sli_config_mbox_opcode_get.exit
  %conv34 = zext i16 %exts_count to i32
  %shl36 = shl nuw i32 %conv34, 16
  br i1 %emb, label %if.then33, label %if.else47

if.then33:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %u39 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 1, i32 4
  %19 = ptrtoint ptr %u39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %u39, align 4
  %and41 = and i32 %20, 65535
  %or42 = or i32 %and41, %shl36
  store i32 %or42, ptr %u39, align 4
  br label %cleanup

if.else47:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %word451 = getelementptr inbounds %struct.lpfc_mbx_nembed_rsrc_extent, ptr %n_rsrc_extnt.0107, i32 0, i32 1
  %21 = ptrtoint ptr %word451 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %word451, align 4
  %and52 = and i32 %22, 65535
  %or53 = or i32 %and52, %shl36
  store i32 %or53, ptr %word451, align 4
  br label %cleanup

do.body:                                          ; preds = %lpfc_sli_config_mbox_opcode_get.exit.do.body_crit_edge, %if.end11.i.do.body_crit_edge, %if.end27.do.body_crit_edge
  %conv28111 = phi i32 [ %conv28, %lpfc_sli_config_mbox_opcode_get.exit.do.body_crit_edge ], [ 0, %if.end27.do.body_crit_edge ], [ 0, %if.end11.i.do.body_crit_edge ]
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %23 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %25 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %26, i32 noundef %conv28111) #18
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.else47, %if.then33, %lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge, %lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge112, %lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge113, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 1, %if.then.cleanup_crit_edge ], [ 0, %lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge ], [ 0, %lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge112 ], [ 0, %lpfc_sli_config_mbox_opcode_get.exit.cleanup_crit_edge113 ], [ 0, %if.then33 ], [ 0, %if.else47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_sli4_mbx_read_fcf_rec(ptr nocapture noundef readonly %phba, ptr noundef %mboxq, i16 noundef zeroext %fcf_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mboxq, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @lpfc_sli4_config(ptr noundef %phba, ptr noundef nonnull %mboxq, i8 noundef zeroext 12, i8 noundef zeroext 8, i32 noundef 580, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 580, i32 %call)
  %cmp = icmp ult i32 %call, 580
  br i1 %cmp, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %2 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %3, i32 noundef %call, i32 noundef 580) #18
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sge_array = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 12
  %4 = ptrtoint ptr %sge_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sge_array, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %conv19 = zext i16 %fcf_index to i32
  %u = getelementptr %struct.lpfc_mbx_read_fcf_tbl, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %u, align 4
  %and21 = and i32 %9, -65536
  %or = or i32 %and21, %conv19
  store i32 %or, ptr %u, align 4
  tail call void @lpfc_sli_pcimem_bcopy(ptr noundef %u, ptr noundef %u, i32 noundef 4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.body ], [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_request_features(ptr nocapture noundef %phba, ptr nocapture noundef %mboxq) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mboxq, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1
  %1 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 40192, ptr %u, align 4
  %word2 = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %word2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2064, ptr %word2, align 4
  %cfg_enable_bg = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 135
  %3 = ptrtoint ptr %cfg_enable_bg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cfg_enable_bg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %spec.store.select = select i1 %tobool.not, i32 2064, i32 2068
  %5 = ptrtoint ptr %word2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.store.select, ptr %word2, align 4
  %max_vpi = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 242
  %6 = ptrtoint ptr %max_vpi to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_vpi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool25.not = icmp eq i16 %7, 0
  br i1 %tobool25.not, label %entry.if.end36_crit_edge, label %land.lhs.true

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.lhs.true:                                    ; preds = %entry
  %cfg_enable_npiv = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 82
  %8 = ptrtoint ptr %cfg_enable_npiv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg_enable_npiv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool26.not = icmp eq i32 %9, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end36_crit_edge, label %if.then27

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %word2, align 4
  %or32 = or i32 %11, 2
  store i32 %or32, ptr %word2, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %land.lhs.true.if.end36_crit_edge, %entry.if.end36_crit_edge
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 74
  %12 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37.not = icmp eq i8 %13, 0
  br i1 %tobool37.not, label %if.end36.if.end63_crit_edge, label %if.then38

if.end36.if.end63_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %word2, align 4
  %or43 = and i32 %15, -66050
  %and50 = or i32 %or43, 65536
  store i32 %and50, ptr %word2, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then38, %if.end36.if.end63_crit_edge
  %cfg_vmid_app_header = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 162
  %16 = ptrtoint ptr %cfg_vmid_app_header to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_vmid_app_header, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool64.not = icmp eq i32 %17, 0
  br i1 %tobool64.not, label %if.end63.if.end80_crit_edge, label %if.then65

if.end63.if.end80_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %word2, align 4
  %or70 = or i32 %19, 131072
  store i32 %or70, ptr %word2, align 4
  %sli4_flags = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 98
  %20 = ptrtoint ptr %sli4_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sli4_flags, align 8
  %or76 = or i32 %21, 16
  store i32 %or76, ptr %sli4_flags, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then65, %if.end63.if.end80_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_init_vfi(ptr nocapture noundef %mbox, ptr noundef %vport) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %vport1 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 2
  %1 = ptrtoint ptr %vport1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vport, ptr %vport1, align 4
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 41728, ptr %u, align 4
  %3 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -805306368, ptr %un, align 4
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vport, align 8
  %vfi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 25, i32 95
  %6 = ptrtoint ptr %vfi_ids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfi_ids, align 8
  %vfi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 5
  %8 = ptrtoint ptr %vfi to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vfi, align 2
  %idxprom = zext i16 %9 to i32
  %arrayidx = getelementptr i16, ptr %7, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  %or19 = or i32 %conv, -805306368
  store i32 %or19, ptr %un, align 4
  %12 = load ptr, ptr %vport, align 8
  %vpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %12, i32 0, i32 247
  %13 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vpi_ids, align 8
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %15 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vpi, align 4
  %idxprom22 = zext i16 %16 to i32
  %arrayidx23 = getelementptr i16, ptr %14, i32 %idxprom22
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %18 to i32
  %shl26 = shl nuw i32 %conv24, 16
  %word2 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %word2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl26, ptr %word2, align 4
  %20 = load ptr, ptr %vport, align 8
  %fcf = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 325
  %21 = ptrtoint ptr %fcf to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fcf, align 8
  %conv31 = zext i16 %22 to i32
  %or36 = or i32 %shl26, %conv31
  store i32 %or36, ptr %word2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_reg_vfi(ptr nocapture noundef %mbox, ptr nocapture noundef readonly %vport, i32 noundef %phys) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %2 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 40704, ptr %u, align 4
  %4 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 268435456, ptr %un, align 4
  %vfi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 95
  %5 = ptrtoint ptr %vfi_ids to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vfi_ids, align 8
  %vfi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 5
  %7 = ptrtoint ptr %vfi to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vfi, align 2
  %idxprom = zext i16 %8 to i32
  %arrayidx = getelementptr i16, ptr %6, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %10 to i32
  %or11 = or i32 %conv, 268435456
  store i32 %or11, ptr %un, align 4
  %fcf = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 325
  %11 = ptrtoint ptr %fcf to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fcf, align 8
  %conv13 = zext i16 %12 to i32
  %word2 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %word2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv13, ptr %word2, align 4
  %vpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 247
  %14 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vpi_ids, align 8
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %16 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vpi, align 4
  %idxprom19 = zext i16 %17 to i32
  %arrayidx20 = getelementptr i16, ptr %15, i32 %idxprom19
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx20, align 2
  %conv21 = zext i16 %19 to i32
  %shl23 = shl nuw i32 %conv21, 16
  %or26 = or i32 %shl23, %conv13
  store i32 %or26, ptr %word2, align 4
  %wwn = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %fc_portname = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 32
  %20 = ptrtoint ptr %fc_portname to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fc_portname, align 8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %wwn to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %wwn, align 4
  %arrayidx33 = getelementptr [2 x i32], ptr %wwn, i32 0, i32 1
  %26 = trunc i64 %21 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx33, align 4
  %fc_edtov = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 56
  %29 = ptrtoint ptr %fc_edtov to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fc_edtov, align 8
  %e_d_tov = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 11
  %31 = ptrtoint ptr %e_d_tov to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %e_d_tov, align 4
  %fc_ratov = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 58
  %32 = ptrtoint ptr %fc_ratov to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fc_ratov, align 8
  %r_a_tov = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %r_a_tov, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phys)
  %tobool.not = icmp eq i32 %phys, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bde = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %addrHigh = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 9
  %35 = ptrtoint ptr %addrHigh to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %addrHigh, align 4
  %addrLow = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %36 = ptrtoint ptr %addrLow to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %phys, ptr %addrLow, align 4
  %37 = ptrtoint ptr %bde to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 112, ptr %bde, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %38 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fc_myDID, align 8
  %and49 = and i32 %39, 16777215
  %word10 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 1, i32 4
  %40 = ptrtoint ptr %word10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %word10, align 4
  %and51 = and i32 %41, -16777216
  %or52 = or i32 %and51, %and49
  store i32 %or52, ptr %word10, align 4
  %lnk_tp = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 107, i32 1
  %42 = ptrtoint ptr %lnk_tp to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %lnk_tp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp = icmp eq i8 %43, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end66_crit_edge

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %44 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fc_flag, align 4
  %and57 = and i32 %45, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.lhs.true.if.end66_crit_edge, label %land.lhs.true59

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true59:                                  ; preds = %land.lhs.true
  %fc_topology_changed = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 66
  %46 = ptrtoint ptr %fc_topology_changed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fc_topology_changed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool60.not = icmp eq i32 %47, 0
  br i1 %tobool60.not, label %if.then61, label %land.lhs.true59.if.end66_crit_edge

land.lhs.true59.if.end66_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  %or64 = or i32 %conv, 805306368
  %48 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or64, ptr %un, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %land.lhs.true59.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge, %if.end.if.end66_crit_edge
  %and72 = and i32 %or52, 134217727
  %49 = ptrtoint ptr %word10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and72, ptr %word10, align 4
  %bbRcvSizeMsb = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 62, i32 0, i32 5
  %50 = ptrtoint ptr %bbRcvSizeMsb to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bbRcvSizeMsb, align 2
  %52 = lshr i8 %51, 4
  %bbcredit_support = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 76
  %53 = ptrtoint ptr %bbcredit_support to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bbcredit_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool80.not = icmp eq i8 %54, 0
  br i1 %tobool80.not, label %if.end66.do.body_crit_edge, label %land.lhs.true81

if.end66.do.body_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true81:                                  ; preds = %if.end66
  %cfg_enable_bbcr = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 155
  %55 = ptrtoint ptr %cfg_enable_bbcr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cfg_enable_bbcr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool82.not = icmp eq i32 %56, 0
  br i1 %tobool82.not, label %land.lhs.true81.do.body_crit_edge, label %land.lhs.true83

land.lhs.true81.do.body_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true83:                                  ; preds = %land.lhs.true81
  %conv84 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %51)
  %cmp85.not = icmp ult i8 %51, 16
  br i1 %cmp85.not, label %land.lhs.true83.do.body_crit_edge, label %if.then87

land.lhs.true83.do.body_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then87:                                        ; preds = %land.lhs.true83
  %bbscn_params = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 22
  %57 = ptrtoint ptr %bbscn_params to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bbscn_params, align 4
  %59 = lshr i32 %58, 4
  %conv94 = and i32 %59, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %conv94, i32 %conv84)
  %cmp95.not = icmp ult i32 %conv94, %conv84
  br i1 %cmp95.not, label %if.then87.do.body_crit_edge, label %if.then97

if.then87.do.body_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then97:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  %shr101 = lshr i32 %58, 8
  %conv103 = and i32 %shr101, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %conv103, i32 %conv84)
  %cmp106 = icmp ult i32 %conv103, %conv84
  %conv84.shr101 = select i1 %cmp106, i32 %conv84, i32 %shr101
  %shl118.pn = shl i32 %conv84.shr101, 28
  %storemerge = or i32 %shl118.pn, %and72
  %or126 = or i32 %storemerge, 134217728
  %60 = ptrtoint ptr %word10 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or126, ptr %word10, align 4
  br label %do.body

do.body:                                          ; preds = %if.then97, %if.then87.do.body_crit_edge, %land.lhs.true83.do.body_crit_edge, %land.lhs.true81.do.body_crit_edge, %if.end66.do.body_crit_edge
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %61 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg_log_verbose, align 4
  %and130 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.else160, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %64, i32 0, i32 165
  %65 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %64, i32 0, i32 197
  %67 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %brd_no, align 4
  %69 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vpi, align 4
  %conv137 = zext i16 %70 to i32
  %71 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fc_myDID, align 8
  %73 = ptrtoint ptr %fcf to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %fcf, align 8
  %conv141 = zext i16 %74 to i32
  %75 = ptrtoint ptr %vfi_ids to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vfi_ids, align 8
  %77 = ptrtoint ptr %vfi to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vfi, align 2
  %idxprom145 = zext i16 %78 to i32
  %arrayidx146 = getelementptr i16, ptr %76, i32 %idxprom145
  %79 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx146, align 2
  %conv147 = zext i16 %80 to i32
  %81 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vpi_ids, align 8
  %arrayidx151 = getelementptr i16, ptr %82, i32 %conv137
  %83 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx151, align 2
  %conv152 = zext i16 %84 to i32
  %fc_flag157 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %85 = ptrtoint ptr %fc_flag157 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fc_flag157, align 4
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %87 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port_state, align 8
  %fc_topology_changed158 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 66
  %89 = ptrtoint ptr %fc_topology_changed158 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fc_topology_changed158, align 8
  %conv159 = zext i8 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %68, i32 noundef %conv137, i32 noundef %72, i32 noundef %conv141, i32 noundef %conv147, i32 noundef %conv152, i32 noundef %24, i32 noundef %27, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %conv159) #18
  br label %do.end195

if.else160:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool162.not = icmp eq i32 %62, 0
  br i1 %tobool162.not, label %if.then163, label %if.else160.do.end195_crit_edge

if.else160.do.end195_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end195

if.then163:                                       ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %vport, align 8
  %brd_no166 = getelementptr inbounds %struct.lpfc_hba, ptr %92, i32 0, i32 197
  %93 = ptrtoint ptr %brd_no166 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %brd_no166, align 4
  %95 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vpi, align 4
  %conv168 = zext i16 %96 to i32
  %97 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fc_myDID, align 8
  %99 = ptrtoint ptr %fcf to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %fcf, align 8
  %conv172 = zext i16 %100 to i32
  %101 = ptrtoint ptr %vfi_ids to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %vfi_ids, align 8
  %103 = ptrtoint ptr %vfi to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %vfi, align 2
  %idxprom176 = zext i16 %104 to i32
  %arrayidx177 = getelementptr i16, ptr %102, i32 %idxprom176
  %105 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx177, align 2
  %conv178 = zext i16 %106 to i32
  %107 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vpi_ids, align 8
  %arrayidx182 = getelementptr i16, ptr %108, i32 %conv168
  %109 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx182, align 2
  %conv183 = zext i16 %110 to i32
  %fc_flag188 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %111 = ptrtoint ptr %fc_flag188 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fc_flag188, align 4
  %port_state189 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %113 = ptrtoint ptr %port_state189 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port_state189, align 8
  %fc_topology_changed190 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 66
  %115 = ptrtoint ptr %fc_topology_changed190 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fc_topology_changed190, align 8
  %conv191 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %92, ptr noundef nonnull @.str.23, i32 noundef %94, i32 noundef %conv168, i32 noundef %98, i32 noundef %conv172, i32 noundef %conv178, i32 noundef %conv183, i32 noundef %24, i32 noundef %27, i32 noundef %112, i32 noundef %114, i32 noundef %116, i32 noundef %conv191) #14
  br label %do.end195

do.end195:                                        ; preds = %if.then163, %if.else160.do.end195_crit_edge, %do.end
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_init_vpi(ptr nocapture noundef readonly %phba, ptr nocapture noundef %mbox, i16 noundef zeroext %vpi) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %1 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 41984, ptr %u, align 4
  %vpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 247
  %2 = ptrtoint ptr %vpi_ids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpi_ids, align 8
  %idxprom = zext i16 %vpi to i32
  %arrayidx = getelementptr i16, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %un, align 4
  %vfi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 95
  %7 = ptrtoint ptr %vfi_ids to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vfi_ids, align 8
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %9 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pport, align 8
  %vfi = getelementptr inbounds %struct.lpfc_vport, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %vfi to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vfi, align 2
  %idxprom10 = zext i16 %12 to i32
  %arrayidx11 = getelementptr i16, ptr %8, i32 %idxprom10
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %14 to i32
  %shl14 = shl nuw i32 %conv12, 16
  %or19 = or i32 %shl14, %conv
  store i32 %or19, ptr %un, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_unreg_vfi(ptr nocapture noundef %mbox, ptr nocapture noundef readonly %vport) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %1 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 41216, ptr %u, align 4
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 8
  %vfi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 95
  %4 = ptrtoint ptr %vfi_ids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfi_ids, align 8
  %vfi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 5
  %6 = ptrtoint ptr %vfi to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vfi, align 2
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr i16, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %9 to i32
  %word2 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %word2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %word2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_sli4_dump_cfg_rg23(ptr noundef %phba, ptr nocapture noundef %mbox) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 20) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.then5_crit_edge, label %if.then

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then:                                          ; preds = %entry
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 2
  %call1 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %phba, i32 noundef 0, ptr noundef %phys) #14
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %virt, align 8
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.then.if.then5_crit_edge, label %if.end20

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then5:                                         ; preds = %if.then.if.then5_crit_edge, %entry.if.then5_crit_edge
  tail call void @kfree(ptr noundef %call7.i) #14
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %3 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pport, align 8
  %tobool6.not = icmp eq ptr %4, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %4, i32 0, i32 51
  %cfg_log_verbose8 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool6.not, ptr %cfg_log_verbose8, ptr %cfg_log_verbose
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %8 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %9) #18
  br label %cleanup

if.else:                                          ; preds = %if.then5
  %10 = ptrtoint ptr %cfg_log_verbose8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg_log_verbose8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %if.then14, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %brd_no15 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %12 = ptrtoint ptr %brd_no15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brd_no15, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.26, i32 noundef %13) #14
  br label %cleanup

if.end20:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %14 = call ptr @memset(ptr %call1, i32 0, i32 1024)
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %prev.i, align 4
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 4
  %17 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %ctx_buf, align 4
  %mbxCommand = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %18 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 23, ptr %mbxCommand, align 2
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %un to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load = load i64, ptr %un, align 4
  %bf.clear = and i64 %bf.load, -64424574976
  %bf.set25 = or i64 %bf.clear, 8589934615
  store i64 %bf.set25, ptr %un, align 4
  %sli4_length = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %sli4_length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1024, ptr %sli4_length, align 4
  %21 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phys, align 4
  %arrayidx = getelementptr [31 x i32], ptr %un, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx, align 4
  %arrayidx36 = getelementptr %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then14, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.then14 ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_mbx_cmpl_rdp_page_a0(ptr noundef %phba, ptr noundef %mbox) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 4
  %0 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_buf, align 4
  %ctx_ndlp = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 3
  %2 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx_ndlp, align 4
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %tobool.not = icmp ult i32 %5, 65536
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

if.end:                                           ; preds = %entry
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %page_a0 = getelementptr inbounds %struct.lpfc_rdp_context, ptr %3, i32 0, i32 4
  tail call void @lpfc_sli_bemem_bcopy(ptr noundef %7, ptr noundef %page_a0, i32 noundef 256) #14
  %8 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 256)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %1, ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %prev.i, align 4
  %14 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %ctx_buf, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %vport = getelementptr inbounds %struct.lpfc_nodelist, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vport, align 4
  %vport3 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 2
  %19 = ptrtoint ptr %vport3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %vport3, align 4
  %20 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %u, align 4
  %and6 = and i32 %21, -65281
  %or = or i32 %and6, 5888
  store i32 %or, ptr %u, align 4
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %un, align 4
  %and10 = and i32 %23, -16
  %or11 = or i32 %and10, 3
  store i32 %or11, ptr %un, align 4
  %physical_port = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 112
  %24 = ptrtoint ptr %physical_port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %physical_port, align 8
  %shl = shl i32 %25, 24
  %and19 = and i32 %or11, 16777203
  %or20 = or i32 %shl, %and19
  store i32 %or20, ptr %un, align 4
  %word2 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %word2, align 4
  %and26 = and i32 %27, -65536
  %or27 = or i32 %and26, 162
  store i32 %or27, ptr %word2, align 4
  %word3 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %word3, align 4
  %and33 = and i32 %29, -16777216
  %or34 = or i32 %and33, 256
  store i32 %or34, ptr %word3, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phys, align 4
  %addr_lo = getelementptr inbounds %struct.lpfc_mbx_memory_dump_type3, ptr %un, i32 0, i32 3
  %32 = ptrtoint ptr %addr_lo to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %addr_lo, align 4
  %addr_hi = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %addr_hi, align 4
  %mbox_cmpl = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 6
  %34 = ptrtoint ptr %mbox_cmpl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @lpfc_mbx_cmpl_rdp_page_a2, ptr %mbox_cmpl, align 4
  %35 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %3, ptr %ctx_ndlp, align 4
  %call = tail call i32 @lpfc_sli_issue_mbox(ptr noundef %phba, ptr noundef %mbox, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp = icmp eq i32 %call, 255
  br i1 %cmp, label %if.end.error_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

error:                                            ; preds = %if.end.error_crit_edge, %entry.error_crit_edge
  %virt53 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %virt53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virt53, align 4
  %phys54 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %phys54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys54, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %37, i32 noundef %39) #14
  tail call void @kfree(ptr noundef %1) #14
  %un.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %un.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %un.i, align 4
  %and.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %error.lpfc_sli4_mbox_cmd_free.exit_crit_edge

error.lpfc_sli4_mbox_cmd_free.exit_crit_edge:     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  br label %lpfc_sli4_mbox_cmd_free.exit

if.end.i:                                         ; preds = %error
  %shr4.i = lshr i32 %41, 3
  %and5.i = and i32 %shr4.i, 31
  %sge_array.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 12
  %42 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sge_array.i, align 4
  %tobool6.not.i = icmp eq ptr %43, null
  br i1 %tobool6.not.i, label %if.end.i.lpfc_sli4_mbox_cmd_free.exit_crit_edge, label %for.cond.preheader.i, !prof !79

if.end.i.lpfc_sli4_mbox_cmd_free.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lpfc_sli4_mbox_cmd_free.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp37.not.i = icmp eq i32 %and5.i, 0
  br i1 %cmp37.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sge1.i.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sgentry.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge1.i.i, i32 0, i32 %sgentry.038.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i, align 4
  %46 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sge_array.i, align 4
  %arrayidx.i = getelementptr [19 x ptr], ptr %49, i32 0, i32 %sgentry.038.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef %51, i32 noundef %45, i32 noundef 0) #14
  %inc.i = add nuw nsw i32 %sgentry.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and5.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %52 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sge_array.i, align 4
  tail call void @kfree(ptr noundef %53) #14
  br label %lpfc_sli4_mbox_cmd_free.exit

lpfc_sli4_mbox_cmd_free.exit:                     ; preds = %for.end.i, %if.end.i.lpfc_sli4_mbox_cmd_free.exit_crit_edge, %error.lpfc_sli4_mbox_cmd_free.exit_crit_edge
  %mbox_mem_pool18.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  %54 = ptrtoint ptr %mbox_mem_pool18.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mbox_mem_pool18.i, align 8
  tail call void @mempool_free(ptr noundef %mbox, ptr noundef %55) #14
  %cmpl = getelementptr inbounds %struct.lpfc_rdp_context, ptr %3, i32 0, i32 6
  %56 = ptrtoint ptr %cmpl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmpl, align 4
  tail call void %57(ptr noundef %phba, ptr noundef %3, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %lpfc_sli4_mbox_cmd_free.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_bemem_bcopy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_mbx_cmpl_rdp_page_a2(ptr noundef %phba, ptr noundef %mbox) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 4
  %0 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_buf, align 4
  %ctx_ndlp = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 3
  %2 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx_ndlp, align 4
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %tobool.not = icmp ult i32 %5, 65536
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  br i1 %tobool.not, label %if.end, label %error_mbuf_free

if.end:                                           ; preds = %entry
  %page_a2 = getelementptr inbounds %struct.lpfc_rdp_context, ptr %3, i32 0, i32 5
  tail call void @lpfc_sli_bemem_bcopy(ptr noundef %7, ptr noundef %page_a2, i32 noundef 256) #14
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %9, i32 noundef %11) #14
  tail call void @kfree(ptr noundef %1) #14
  %mbxCommand.i = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %12 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %13 = ptrtoint ptr %mbxCommand.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 18, ptr %mbxCommand.i, align 2
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %vport = getelementptr inbounds %struct.lpfc_nodelist, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vport, align 4
  %vport2 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 2
  %18 = ptrtoint ptr %vport2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %vport2, align 4
  %mbox_cmpl = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 6
  %19 = ptrtoint ptr %mbox_cmpl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @lpfc_mbx_cmpl_rdp_link_stat, ptr %mbox_cmpl, align 4
  %20 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %ctx_ndlp, align 4
  %call = tail call i32 @lpfc_sli_issue_mbox(ptr noundef %phba, ptr noundef %mbox, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp = icmp eq i32 %call, 255
  br i1 %cmp, label %if.end.error_cmd_free_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.error_cmd_free_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_cmd_free

error_mbuf_free:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %phys7 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %phys7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phys7, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %7, i32 noundef %22) #14
  tail call void @kfree(ptr noundef %1) #14
  br label %error_cmd_free

error_cmd_free:                                   ; preds = %error_mbuf_free, %if.end.error_cmd_free_crit_edge
  %un.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %un.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %un.i, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %error_cmd_free.lpfc_sli4_mbox_cmd_free.exit_crit_edge

error_cmd_free.lpfc_sli4_mbox_cmd_free.exit_crit_edge: ; preds = %error_cmd_free
  call void @__sanitizer_cov_trace_pc() #16
  br label %lpfc_sli4_mbox_cmd_free.exit

if.end.i:                                         ; preds = %error_cmd_free
  %shr4.i = lshr i32 %24, 3
  %and5.i = and i32 %shr4.i, 31
  %sge_array.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 12
  %25 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sge_array.i, align 4
  %tobool6.not.i = icmp eq ptr %26, null
  br i1 %tobool6.not.i, label %if.end.i.lpfc_sli4_mbox_cmd_free.exit_crit_edge, label %for.cond.preheader.i, !prof !79

if.end.i.lpfc_sli4_mbox_cmd_free.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lpfc_sli4_mbox_cmd_free.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp37.not.i = icmp eq i32 %and5.i, 0
  br i1 %cmp37.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sge1.i.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sgentry.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge1.i.i, i32 0, i32 %sgentry.038.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %29 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sge_array.i, align 4
  %arrayidx.i = getelementptr [19 x ptr], ptr %32, i32 0, i32 %sgentry.038.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef %34, i32 noundef %28, i32 noundef 0) #14
  %inc.i = add nuw nsw i32 %sgentry.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and5.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %35 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sge_array.i, align 4
  tail call void @kfree(ptr noundef %36) #14
  br label %lpfc_sli4_mbox_cmd_free.exit

lpfc_sli4_mbox_cmd_free.exit:                     ; preds = %for.end.i, %if.end.i.lpfc_sli4_mbox_cmd_free.exit_crit_edge, %error_cmd_free.lpfc_sli4_mbox_cmd_free.exit_crit_edge
  %mbox_mem_pool18.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  %37 = ptrtoint ptr %mbox_mem_pool18.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mbox_mem_pool18.i, align 8
  tail call void @mempool_free(ptr noundef %mbox, ptr noundef %38) #14
  %cmpl = getelementptr inbounds %struct.lpfc_rdp_context, ptr %3, i32 0, i32 6
  %39 = ptrtoint ptr %cmpl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmpl, align 4
  tail call void %40(ptr noundef %phba, ptr noundef %3, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %lpfc_sli4_mbox_cmd_free.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_mbuf_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_sli4_dump_page_a0(ptr noundef %phba, ptr nocapture noundef %mbox) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 20) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.then5_crit_edge, label %if.then

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then:                                          ; preds = %entry
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 2
  %call1 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %phba, i32 noundef 0, ptr noundef %phys) #14
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %virt, align 8
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.then.if.then5_crit_edge, label %if.end20

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then5:                                         ; preds = %if.then.if.then5_crit_edge, %entry.if.then5_crit_edge
  tail call void @kfree(ptr noundef %call7.i) #14
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %3 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pport, align 8
  %tobool6.not = icmp eq ptr %4, null
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %4, i32 0, i32 51
  %cfg_log_verbose8 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in = select i1 %tobool6.not, ptr %cfg_log_verbose8, ptr %cfg_log_verbose
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond = load i32, ptr %cond.in, align 4
  %and = and i32 %cond, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %8 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %9) #18
  br label %cleanup

if.else:                                          ; preds = %if.then5
  %10 = ptrtoint ptr %cfg_log_verbose8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg_log_verbose8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %if.then14, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %brd_no15 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %12 = ptrtoint ptr %brd_no15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brd_no15, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.28, i32 noundef %13) #14
  br label %cleanup

if.end20:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %14 = call ptr @memset(ptr %call1, i32 0, i32 1024)
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %prev.i, align 4
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %17 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %u, align 4
  %and22 = and i32 %18, -65281
  %or = or i32 %and22, 5888
  store i32 %or, ptr %u, align 4
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 4
  %19 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %ctx_buf, align 4
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %un, align 4
  %and26 = and i32 %21, -16
  %or27 = or i32 %and26, 3
  store i32 %or27, ptr %un, align 4
  %physical_port = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 112
  %22 = ptrtoint ptr %physical_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %physical_port, align 8
  %shl = shl i32 %23, 24
  %and35 = and i32 %or27, 16777203
  %or36 = or i32 %shl, %and35
  store i32 %or36, ptr %un, align 4
  %word2 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %word2, align 4
  %and42 = and i32 %25, -65536
  %or43 = or i32 %and42, 160
  store i32 %or43, ptr %word2, align 4
  %word3 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %word3, align 4
  %and49 = and i32 %27, -16777216
  %or50 = or i32 %and49, 256
  store i32 %or50, ptr %word3, align 4
  %28 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phys, align 4
  %addr_lo = getelementptr inbounds %struct.lpfc_mbx_memory_dump_type3, ptr %un, i32 0, i32 3
  %30 = ptrtoint ptr %addr_lo to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %addr_lo, align 4
  %addr_hi = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %31 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %addr_hi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then14, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.then14 ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_reg_fcfi(ptr nocapture noundef readonly %phba, ptr nocapture noundef %mbox) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 40960, ptr %u, align 4
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 74
  %2 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hdr_rq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 38
  %4 = ptrtoint ptr %hdr_rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdr_rq, align 8
  %queue_id = getelementptr inbounds %struct.lpfc_queue, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %queue_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_id, align 4
  %shl = shl i32 %7, 16
  %word2 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %word4 = getelementptr inbounds %struct.lpfc_mbx_reg_fcfi, ptr %un, i32 0, i32 3
  %8 = ptrtoint ptr %word4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %word4, align 4
  %or26 = or i32 %shl, 65535
  %9 = ptrtoint ptr %word2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or26, ptr %word2, align 4
  %addr_mode = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 325, i32 3
  %10 = ptrtoint ptr %addr_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_mode, align 4
  %neg = shl i32 %11, 13
  %and28 = and i32 %neg, 24576
  %word8 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 11
  %12 = ptrtoint ptr %word8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %word8, align 4
  %and31 = and i32 %13, -24577
  %14 = or i32 %and28, %and31
  %or32 = xor i32 %14, 24576
  store i32 %or32, ptr %word8, align 4
  br label %if.end81

if.else:                                          ; preds = %entry
  %cfg_nvmet_mrq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 112
  %15 = ptrtoint ptr %cfg_nvmet_mrq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg_nvmet_mrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp34.not = icmp eq i32 %16, 1
  br i1 %cmp34.not, label %if.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %nvmet_mrq_hdr = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 30
  %17 = ptrtoint ptr %nvmet_mrq_hdr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nvmet_mrq_hdr, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %queue_id38 = getelementptr inbounds %struct.lpfc_queue, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %queue_id38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %queue_id38, align 4
  %shl40 = shl i32 %22, 16
  %word241 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %word241 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %word241, align 4
  %and42 = and i32 %24, 65535
  %or43 = or i32 %and42, %shl40
  store i32 %or43, ptr %word241, align 4
  %word445 = getelementptr inbounds %struct.lpfc_mbx_reg_fcfi, ptr %un, i32 0, i32 3
  %25 = ptrtoint ptr %word445 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %word445, align 4
  %and46 = and i32 %26, 255
  %or55 = or i32 %and46, 150930944
  store i32 %or55, ptr %word445, align 4
  %hdr_rq58 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 38
  %27 = ptrtoint ptr %hdr_rq58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdr_rq58, align 8
  %queue_id59 = getelementptr inbounds %struct.lpfc_queue, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %queue_id59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %queue_id59, align 4
  %and60 = and i32 %30, 65535
  %or64 = or i32 %and60, %shl40
  store i32 %or64, ptr %word241, align 4
  %word5 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %31 = ptrtoint ptr %word5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %word5, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end, %if.then
  %word3 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %word3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %word3, align 4
  %fcf_indx = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 325, i32 5, i32 3
  %33 = ptrtoint ptr %fcf_indx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %fcf_indx, align 2
  %conv90 = zext i16 %34 to i32
  %35 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %un, align 4
  %and93 = and i32 %36, -65536
  %or94 = or i32 %and93, %conv90
  store i32 %or94, ptr %un, align 4
  %vlan_id = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 325, i32 5, i32 5
  %37 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %38)
  %cmp99.not = icmp eq i16 %38, 4095
  br i1 %cmp99.not, label %if.end81.cleanup_crit_edge, label %if.then101

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then101:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %word8102 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 11
  %39 = ptrtoint ptr %word8102 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %word8102, align 4
  %or104 = or i32 %40, 4096
  store i32 %or104, ptr %word8102, align 4
  %41 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vlan_id, align 4
  %43 = and i16 %42, 4095
  %and110 = zext i16 %43 to i32
  %and113 = and i32 %or104, -4096
  %or114 = or i32 %and113, %and110
  store i32 %or114, ptr %word8102, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %if.end81.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_reg_fcfi_mrq(ptr nocapture noundef readonly %phba, ptr nocapture noundef %mbox, i32 noundef %mode) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_nvmet_mrq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 112
  %0 = ptrtoint ptr %cfg_nvmet_mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_nvmet_mrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 44800, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp4 = icmp eq i32 %mode, 0
  br i1 %cmp4, label %if.then5, label %if.end30

if.then5:                                         ; preds = %if.end
  %fcf_indx = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 325, i32 5, i32 3
  %4 = ptrtoint ptr %fcf_indx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fcf_indx, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %un, align 4
  %and7 = and i32 %7, -65536
  %or8 = or i32 %and7, %conv
  store i32 %or8, ptr %un, align 4
  %vlan_id = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 325, i32 5, i32 5
  %8 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %9)
  %cmp13.not = icmp eq i16 %9, 4095
  br i1 %cmp13.not, label %if.then5.cleanup_crit_edge, label %if.then15

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %word8 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 11
  %10 = ptrtoint ptr %word8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %word8, align 4
  %or17 = or i32 %11, 4096
  store i32 %or17, ptr %word8, align 4
  %12 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan_id, align 4
  %14 = and i16 %13, 4095
  %and23 = zext i16 %14 to i32
  %and26 = and i32 %or17, -4096
  %or27 = or i32 %and26, %and23
  store i32 %or27, ptr %word8, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %nvmet_mrq_hdr = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 30
  %15 = ptrtoint ptr %nvmet_mrq_hdr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nvmet_mrq_hdr, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %queue_id = getelementptr inbounds %struct.lpfc_queue, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %queue_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %queue_id, align 4
  %shl32 = shl i32 %20, 16
  %word2 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %word2, align 4
  %and33 = and i32 %22, 65535
  %or34 = or i32 %and33, %shl32
  store i32 %or34, ptr %word2, align 4
  %word4 = getelementptr inbounds %struct.lpfc_mbx_reg_fcfi_mrq, ptr %un, i32 0, i32 3
  %23 = ptrtoint ptr %word4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 150931199, ptr %word4, align 4
  %word851 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 11
  %24 = ptrtoint ptr %word851 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %word851, align 4
  %word9 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %word9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %word9, align 4
  %or64 = or i32 %25, 16850944
  store i32 %or64, ptr %word851, align 4
  %or60 = and i32 %27, -65281
  %or68 = or i32 %or60, 12544
  store i32 %or68, ptr %word9, align 4
  %28 = ptrtoint ptr %cfg_nvmet_mrq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg_nvmet_mrq, align 4
  %and71 = and i32 %29, 255
  %and74 = and i32 %or68, -52992
  %or75 = or i32 %and71, %and74
  store i32 %or75, ptr %word9, align 4
  %hdr_rq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 38
  %30 = ptrtoint ptr %hdr_rq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdr_rq, align 8
  %queue_id78 = getelementptr inbounds %struct.lpfc_queue, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %queue_id78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %queue_id78, align 4
  %and79 = and i32 %33, 65535
  %or83 = or i32 %and79, %shl32
  store i32 %or83, ptr %word2, align 4
  %word5 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %word5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %word5, align 4
  %word3 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %word3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %word3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then15, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_unreg_fcfi(ptr nocapture noundef %mbox, i16 noundef zeroext %fcfi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %1 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 41472, ptr %u, align 4
  %conv = zext i16 %fcfi to i32
  %word2 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %word2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %word2, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_resume_rpi(ptr nocapture noundef %mbox, ptr nocapture noundef readonly %ndlp) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %phba1 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 22
  %0 = ptrtoint ptr %phba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phba1, align 8
  %2 = call ptr @memset(ptr %mbox, i32 0, i32 312)
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 40448, ptr %u, align 4
  %rpi_ids = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 88
  %4 = ptrtoint ptr %rpi_ids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rpi_ids, align 4
  %nlp_rpi = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %6 = ptrtoint ptr %nlp_rpi to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlp_rpi, align 4
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr i16, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %un, align 4
  %11 = load ptr, ptr %phba1, align 8
  %fc_eventTag = getelementptr inbounds %struct.lpfc_hba, ptr %11, i32 0, i32 51
  %12 = ptrtoint ptr %fc_eventTag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fc_eventTag, align 4
  %event_tag = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %event_tag to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %event_tag, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_mbx_cmpl_rdp_link_stat(ptr noundef %phba, ptr noundef %mboxq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_ndlp = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 3
  %0 = ptrtoint ptr %ctx_ndlp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_ndlp, align 4
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.mbx_failed_crit_edge

entry.mbx_failed_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_failed

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %link_stat = getelementptr inbounds %struct.lpfc_rdp_context, ptr %1, i32 0, i32 3
  %un = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %link_stat, ptr %un, i32 92)
  br label %mbx_failed

mbx_failed:                                       ; preds = %if.end, %entry.mbx_failed_crit_edge
  %rc.0 = phi i32 [ 1, %entry.mbx_failed_crit_edge ], [ 8194, %if.end ]
  %un.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %un.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %un.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mbx_failed.lpfc_sli4_mbox_cmd_free.exit_crit_edge

mbx_failed.lpfc_sli4_mbox_cmd_free.exit_crit_edge: ; preds = %mbx_failed
  call void @__sanitizer_cov_trace_pc() #16
  br label %lpfc_sli4_mbox_cmd_free.exit

if.end.i:                                         ; preds = %mbx_failed
  %shr4.i = lshr i32 %6, 3
  %and5.i = and i32 %shr4.i, 31
  %sge_array.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 12
  %7 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sge_array.i, align 4
  %tobool6.not.i = icmp eq ptr %8, null
  br i1 %tobool6.not.i, label %if.end.i.lpfc_sli4_mbox_cmd_free.exit_crit_edge, label %for.cond.preheader.i, !prof !79

if.end.i.lpfc_sli4_mbox_cmd_free.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lpfc_sli4_mbox_cmd_free.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp37.not.i = icmp eq i32 %and5.i, 0
  br i1 %cmp37.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sge1.i.i = getelementptr inbounds %struct.lpfcMboxq, ptr %mboxq, i32 0, i32 1, i32 0, i32 1, i32 0, i32 6
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sgentry.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr [19 x %struct.lpfc_mbx_sge], ptr %sge1.i.i, i32 0, i32 %sgentry.038.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %11 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sge_array.i, align 4
  %arrayidx.i = getelementptr [19 x ptr], ptr %14, i32 0, i32 %sgentry.038.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef %16, i32 noundef %10, i32 noundef 0) #14
  %inc.i = add nuw nsw i32 %sgentry.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and5.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %17 = ptrtoint ptr %sge_array.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sge_array.i, align 4
  tail call void @kfree(ptr noundef %18) #14
  br label %lpfc_sli4_mbox_cmd_free.exit

lpfc_sli4_mbox_cmd_free.exit:                     ; preds = %for.end.i, %if.end.i.lpfc_sli4_mbox_cmd_free.exit_crit_edge, %mbx_failed.lpfc_sli4_mbox_cmd_free.exit_crit_edge
  %mbox_mem_pool18.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  %19 = ptrtoint ptr %mbox_mem_pool18.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbox_mem_pool18.i, align 8
  tail call void @mempool_free(ptr noundef %mboxq, ptr noundef %20) #14
  %cmpl = getelementptr inbounds %struct.lpfc_rdp_context, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %cmpl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmpl, align 4
  tail call void %22(ptr noundef %phba, ptr noundef %1, i32 noundef %rc.0) #14
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 89, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lpfc_dump_static_vport._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lpfc_dump_static_vport._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 415, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lpfc_config_msi._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @lpfc_config_msi._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 422, i32 3}
!15 = !{ptr @lpfc_config_msi._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @lpfc_config_msi._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 624, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @lpfc_read_sparam._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @lpfc_read_sparam._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 777, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lpfc_reg_rpi._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @lpfc_reg_rpi._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 1579, i32 4}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @lpfc_mbox_cmd_check._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @lpfc_mbox_cmd_check._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 1821, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @lpfc_sli4_config._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @lpfc_sli4_config._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 1939, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @lpfc_sli4_mbox_rsrc_extent._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @lpfc_sli4_mbox_rsrc_extent._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 2049, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @lpfc_sli4_mbx_read_fcf_rec._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @lpfc_sli4_mbx_read_fcf_rec._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 2211, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lpfc_reg_vfi._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @lpfc_reg_vfi._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 2291, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @lpfc_sli4_dump_cfg_rg23._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @lpfc_sli4_dump_cfg_rg23._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/lpfc/lpfc_mbox.c", i32 2439, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @lpfc_sli4_dump_page_a0._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @lpfc_sli4_dump_page_a0._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 2156578114}
!75 = !{i64 6034801}
!76 = !{i64 6035219}
!77 = !{i64 2156578729}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{!"branch_weights", i32 1, i32 2000}
