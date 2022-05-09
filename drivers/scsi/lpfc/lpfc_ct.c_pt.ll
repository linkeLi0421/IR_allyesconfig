; ModuleID = '/llk/IR_all_yes/drivers/scsi/lpfc/lpfc_ct.c_pt.bc'
source_filename = "../drivers/scsi/lpfc/lpfc_ct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lpfc_iocbq = type { %struct.list_head, %struct.list_head, %struct.list_head, i16, i16, i16, i16, %struct.lpfc_cq_event, %struct.lpfc_wcqe_complete, i64, %union.lpfc_wqe128, %struct._IOCB, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, i32, %union.anon.94, %union.lpfc_vmid_iocb_tag, ptr, ptr, ptr, ptr }
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
%union.anon.94 = type { ptr }
%union.lpfc_vmid_iocb_tag = type { i32 }
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
%struct.dbg_log_ent = type { [256 x i8], i64 }
%struct.lpfc_sli_ct_request = type { %union.CtRevisionId, i8, i8, i8, i8, %union.CtCommandResponse, i8, i8, i8, i8, %union.anon.214 }
%union.CtRevisionId = type { %struct.anon.212 }
%struct.anon.212 = type { i32 }
%union.CtCommandResponse = type { %struct.anon.213 }
%struct.anon.213 = type { i32 }
%union.anon.214 = type { %struct.rspn, [4 x i8] }
%struct.rspn = type { i32, i8, [255 x i8] }
%struct.lpfc_vport = type { ptr, %struct.list_head, i8, i32, i16, i16, i8, i32, i32, %struct.list_head, i16, i16, i16, i16, i16, i16, i16, i16, %struct.serv_parm, i32, i32, %struct.lpfc_name, %struct.lpfc_name, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], %struct.lpfc_name, %struct.lpfc_name, %struct.lpfc_work_evt, %struct.timer_list, i8, i32, %struct.spinlock, i32, %struct.timer_list, %struct.timer_list, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, [256 x %struct.hlist_head], %struct.rwlock_t, %struct.lpfc_vmid_priority_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i8, i8, %struct.list_head, i32, i32, i16, i32, i32, ptr, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lpfc_vmid_priority_info = type { i32, ptr }
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
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.207 = type { ptr }
%struct.RCV_ELS_REQ = type { [2 x %struct.ulp_bde], i32, i32 }
%struct.ulp_bde = type { i32, i32 }
%struct.GEN_REQUEST64 = type { %struct.ULP_BDL, i32, %union.WORD5 }
%union.WORD5 = type { i32 }
%struct.anon.1 = type { i8, i8, i8, i8 }
%struct.gid = type { i8, i8, i8, i8 }
%struct.lpfc_fdmi_reg_portattr = type { %struct.lpfc_name, %struct.lpfc_fdmi_attr_block }
%struct.lpfc_fdmi_attr_block = type { i32, %struct.lpfc_fdmi_attr_entry }
%struct.lpfc_fdmi_attr_entry = type { %union.anon.215 }
%union.anon.215 = type { %struct.lpfc_name, [248 x i8] }
%struct.lpfc_fdmi_attr_def = type <{ i32, %struct.lpfc_fdmi_attr_entry }>
%struct.lpfc_vmid = type { i8, [256 x i8], %union.lpfc_vmid_io_tag, %struct.hlist_node, i64, i64, i8, i8, i32, ptr }
%union.lpfc_vmid_io_tag = type { i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Emulex %s\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" FV%s\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" DV%s\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" HN:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" OS:%s\00", [25 x i8] zeroinitializer }, align 32
@lpfc_ns_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1959, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%d:(%d):0236 NameServer Req Data: x%x x%x x%x x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpfc_ns_cmd\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/lpfc/lpfc_ct.c\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpfc_ns_cmd._entry_ptr = internal global ptr @lpfc_ns_cmd._entry, section ".printk_index", align 4
@lpfc_ns_cmd._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 2064, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%d:(%d):6433 Issue RFT (%s %s): %08x %08x %08x %08x %08x %08x %08x %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_ns_cmd._entry_ptr.13 = internal global ptr @lpfc_ns_cmd._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCP\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NVME\00", [27 x i8] zeroinitializer }, align 32
@lpfc_ns_cmd._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 2146, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%d:(%d):6434 Issue RFF (%s): %08x %08x %08x %08x %08x %08x %08x %08x\0A\00", [58 x i8] zeroinitializer }, align 32
@lpfc_ns_cmd._entry_ptr.19 = internal global ptr @lpfc_ns_cmd._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Issue CT cmd:    cmd:x%x did:x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lpfc_ns_cmd._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.8, i32 2173, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%d:(%d):0266 Issue NameServer Req x%x err %d Data: x%x x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@lpfc_ns_cmd._entry_ptr.24 = internal global ptr @lpfc_ns_cmd._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@lpfc_fdmi_hba_action = dso_local global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @lpfc_fdmi_hba_attr_wwnn, ptr @lpfc_fdmi_hba_attr_manufacturer, ptr @lpfc_fdmi_hba_attr_sn, ptr @lpfc_fdmi_hba_attr_model, ptr @lpfc_fdmi_hba_attr_description, ptr @lpfc_fdmi_hba_attr_hdw_ver, ptr @lpfc_fdmi_hba_attr_drvr_ver, ptr @lpfc_fdmi_hba_attr_rom_ver, ptr @lpfc_fdmi_hba_attr_fmw_ver, ptr @lpfc_fdmi_hba_attr_os_ver, ptr @lpfc_fdmi_hba_attr_ct_len, ptr @lpfc_fdmi_hba_attr_symbolic_name, ptr @lpfc_fdmi_hba_attr_vendor_info, ptr @lpfc_fdmi_hba_attr_num_ports, ptr @lpfc_fdmi_hba_attr_fabric_wwnn, ptr @lpfc_fdmi_hba_attr_bios_ver, ptr @lpfc_fdmi_hba_attr_bios_state, ptr @lpfc_fdmi_hba_attr_vendor_id], [56 x i8] zeroinitializer }, align 32
@lpfc_fdmi_port_action = dso_local global { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @lpfc_fdmi_port_attr_fc4type, ptr @lpfc_fdmi_port_attr_support_speed, ptr @lpfc_fdmi_port_attr_speed, ptr @lpfc_fdmi_port_attr_max_frame, ptr @lpfc_fdmi_port_attr_os_devname, ptr @lpfc_fdmi_port_attr_host_name, ptr @lpfc_fdmi_port_attr_wwnn, ptr @lpfc_fdmi_port_attr_wwpn, ptr @lpfc_fdmi_port_attr_symbolic_name, ptr @lpfc_fdmi_port_attr_port_type, ptr @lpfc_fdmi_port_attr_class, ptr @lpfc_fdmi_port_attr_fabric_wwpn, ptr @lpfc_fdmi_port_attr_active_fc4type, ptr @lpfc_fdmi_port_attr_port_state, ptr @lpfc_fdmi_port_attr_num_disc, ptr @lpfc_fdmi_port_attr_nportid, ptr @lpfc_fdmi_smart_attr_service, ptr @lpfc_fdmi_smart_attr_guid, ptr @lpfc_fdmi_smart_attr_version, ptr @lpfc_fdmi_smart_attr_model, ptr @lpfc_fdmi_smart_attr_port_info, ptr @lpfc_fdmi_smart_attr_qos, ptr @lpfc_fdmi_smart_attr_security, ptr @lpfc_fdmi_vendor_attr_mi], [32 x i8] zeroinitializer }, align 32
@lpfc_fdmi_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.8, i32 3481, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):0218 FDMI Request Data: x%x x%x x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpfc_fdmi_cmd\00", [18 x i8] zeroinitializer }, align 32
@lpfc_fdmi_cmd._entry_ptr = internal global ptr @lpfc_fdmi_cmd._entry, section ".printk_index", align 4
@lpfc_fdmi_cmd._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.8, i32 3627, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):0298 FDMI cmdcode x%x not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lpfc_fdmi_cmd._entry_ptr.31 = internal global ptr @lpfc_fdmi_cmd._entry.28, section ".printk_index", align 4
@lpfc_fdmi_cmd._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.8, i32 3657, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d:(%d):0244 Issue FDMI request failed Data: x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@lpfc_fdmi_cmd._entry_ptr.34 = internal global ptr @lpfc_fdmi_cmd._entry.32, section ".printk_index", align 4
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d.%d%d%c%d (%s)\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d.%d%d%c%d\00", [20 x i8] zeroinitializer }, align 32
@lpfc_vmid_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.8, i32 3953, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):3275 VMID Request Data: x%x x%x x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpfc_vmid_cmd\00", [18 x i8] zeroinitializer }, align 32
@lpfc_vmid_cmd._entry_ptr = internal global ptr @lpfc_vmid_cmd._entry, section ".printk_index", align 4
@lpfc_vmid_cmd._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.8, i32 3971, ptr @.str.43, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%d:(%d):1329 RAPP_IDENT for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@lpfc_vmid_cmd._entry_ptr.44 = internal global ptr @lpfc_vmid_cmd._entry.41, section ".printk_index", align 4
@lpfc_vmid_cmd._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.40, ptr @.str.8, i32 3990, ptr @.str.43, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%d:(%d):1469 DAPP_IDENT for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@lpfc_vmid_cmd._entry_ptr.47 = internal global ptr @lpfc_vmid_cmd._entry.45, section ".printk_index", align 4
@lpfc_vmid_cmd._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.40, ptr @.str.8, i32 4013, ptr @.str.43, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):7062 VMID cmdcode x%x not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@lpfc_vmid_cmd._entry_ptr.50 = internal global ptr @lpfc_vmid_cmd._entry.48, section ".printk_index", align 4
@lpfc_vmid_cmd._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.40, ptr @.str.8, i32 4043, ptr @.str.43, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d:(%d):3276 VMID CT request failed Data: x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@lpfc_vmid_cmd._entry_ptr.53 = internal global ptr @lpfc_vmid_cmd._entry.51, section ".printk_index", align 4
@lpfc_ct_handle_mibreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.8, i32 299, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%d:6437 Unsol CT: VPORT NULL vpi : x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpfc_ct_handle_mibreq\00", [42 x i8] zeroinitializer }, align 32
@lpfc_ct_handle_mibreq._entry_ptr = internal global ptr @lpfc_ct_handle_mibreq._entry, section ".printk_index", align 4
@lpfc_ct_handle_mibreq._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.8, i32 307, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%d:(%d):6438 Unsol CT: status:x%x/x%x did : x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@lpfc_ct_handle_mibreq._entry_ptr.58 = internal global ptr @lpfc_ct_handle_mibreq._entry.56, section ".printk_index", align 4
@lpfc_ct_handle_mibreq._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.8, i32 319, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d:(%d):6439 Unsol CT: NDLP Not Found for DID : x%x\00", [44 x i8] zeroinitializer }, align 32
@lpfc_ct_handle_mibreq._entry_ptr.61 = internal global ptr @lpfc_ct_handle_mibreq._entry.59, section ".printk_index", align 4
@lpfc_ct_handle_mibreq._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.8, i32 328, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%d:(%d):6442 : MI Cmd : x%x Not Supported\0A\00", [53 x i8] zeroinitializer }, align 32
@lpfc_ct_handle_mibreq._entry_ptr.64 = internal global ptr @lpfc_ct_handle_mibreq._entry.62, section ".printk_index", align 4
@lpfc_ct_reject_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.8, i32 272, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d:(%d):6440 Unsol CT: Rsp err %d Data: x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lpfc_ct_reject_event\00", [43 x i8] zeroinitializer }, align 32
@lpfc_ct_reject_event._entry_ptr = internal global ptr @lpfc_ct_reject_event._entry, section ".printk_index", align 4
@lpfc_ct_ignore_hbq_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.8, i32 90, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%d:0146 Ignoring unsolicited CT No HBQ status = x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lpfc_ct_ignore_hbq_buffer\00", [38 x i8] zeroinitializer }, align 32
@lpfc_ct_ignore_hbq_buffer._entry_ptr = internal global ptr @lpfc_ct_ignore_hbq_buffer._entry, section ".printk_index", align 4
@lpfc_ct_ignore_hbq_buffer._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.8, i32 95, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%d:0145 Ignoring unsolicted CT HBQ Size:%d status = x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lpfc_ct_ignore_hbq_buffer._entry_ptr.71 = internal global ptr @lpfc_ct_ignore_hbq_buffer._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14.0.0.4\00", [23 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GID_FT cmpl:     status:x%x/x%x rtry:%d\00", [56 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.8, i32 965, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d:(%d):9043 Event tag mismatch. Ignoring NS rsp\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_cmpl_ct_cmd_gid_ft\00", [40 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry_ptr = internal global ptr @lpfc_cmpl_ct_cmd_gid_ft._entry, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_ft._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.8, i32 978, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:(%d):0216 Link event during NS query\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.78 = internal global ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.76, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_ft._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.8, i32 986, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d:(%d):0226 NS query failed due to link event\0A\00", [48 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.81 = internal global ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.79, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_ft._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.8, i32 1009, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d:(%d):0151 Process Deferred RSCN Data: x%x x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.84 = internal global ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.82, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_ft._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.8, i32 1043, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d:(%d):0257 GID_FT Query error: 0x%x 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.87 = internal global ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.85, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_ft._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.75, ptr @.str.8, i32 1057, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:(%d):0208 NameServer Rsp Data: x%x x%x x%x x%x sz x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.90 = internal global ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.88, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_ft._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.75, ptr @.str.8, i32 1075, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:(%d):0269 No NameServer Entries Data: x%x x%x x%x x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.93 = internal global ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GID_FT no entry  cmd:x%x rsn:x%x exp:x%x\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.75, ptr @.str.8, i32 1090, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%d:(%d):0240 NameServer Rsp Error Data: x%x x%x x%x x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.97 = internal global ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GID_FT rsp err1  cmd:x%x rsn:x%x exp:x%x\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.75, ptr @.str.8, i32 1108, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%d:(%d):0241 NameServer Rsp Error Data: x%x x%x x%x x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.101 = internal global ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GID_FT rsp err2  cmd:x%x rsn:x%x exp:x%x\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.75, ptr @.str.8, i32 1122, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:(%d):4216 GID_FT cmpl inp %d disc %d\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.105 = internal global ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GID_FT\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GID_PT\00", [25 x i8] zeroinitializer }, align 32
@lpfc_ns_rsp_audit_did._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.8, i32 840, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d:(%d):6430 Process %s rsp for %08x type %x %s %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpfc_ns_rsp_audit_did\00", [42 x i8] zeroinitializer }, align 32
@lpfc_ns_rsp_audit_did._entry_ptr = internal global ptr @lpfc_ns_rsp_audit_did._entry, section ".printk_index", align 4
@.str.110 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Parse GID_FTrsp: did:x%x flg:x%x x%x\00", [59 x i8] zeroinitializer }, align 32
@lpfc_prep_node_fc4type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.8, i32 764, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%d:(%d):0238 Process x%06x NameServer Rsp Data: x%x x%x x%x x%x x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpfc_prep_node_fc4type\00", [41 x i8] zeroinitializer }, align 32
@lpfc_prep_node_fc4type._entry_ptr = internal global ptr @lpfc_prep_node_fc4type._entry, section ".printk_index", align 4
@.str.113 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Skip1 GID_FTrsp: did:x%x flg:x%x cnt:%d\00", [56 x i8] zeroinitializer }, align 32
@lpfc_prep_node_fc4type._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.112, ptr @.str.8, i32 784, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%d:(%d):0239 Skip x%06x NameServer Rsp Data: x%x x%x x%px\0A\00", [37 x i8] zeroinitializer }, align 32
@lpfc_prep_node_fc4type._entry_ptr.116 = internal global ptr @lpfc_prep_node_fc4type._entry.114, section ".printk_index", align 4
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Query GID_FTrsp: did:x%x flg:x%x cnt:%d\00", [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Skip2 GID_FTrsp: did:x%x flg:x%x cnt:%d\00", [56 x i8] zeroinitializer }, align 32
@lpfc_prep_node_fc4type._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.112, ptr @.str.8, i32 820, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%d:(%d):0245 Skip x%06x NameServer Rsp Data: x%x x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@lpfc_prep_node_fc4type._entry_ptr.121 = internal global ptr @lpfc_prep_node_fc4type._entry.119, section ".printk_index", align 4
@.str.122 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GID_PT cmpl:     status:x%x/x%x rtry:%d\00", [56 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.8, i32 1182, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d:(%d):9044 Event tag mismatch. Ignoring NS rsp\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_cmpl_ct_cmd_gid_pt\00", [40 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry_ptr = internal global ptr @lpfc_cmpl_ct_cmd_gid_pt._entry, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_pt._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.8, i32 1195, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:(%d):4108 Link event during NS query\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.127 = internal global ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.125, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_pt._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.8, i32 1203, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d:(%d):4166 NS query failed due to link event\0A\00", [48 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.130 = internal global ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.128, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_pt._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.124, ptr @.str.8, i32 1226, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d:(%d):4167 Process Deferred RSCN Data: x%x x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.133 = internal global ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.131, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_pt._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.124, ptr @.str.8, i32 1256, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d:(%d):4103 GID_FT Query error: 0x%x 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.136 = internal global ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.134, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_pt._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.124, ptr @.str.8, i32 1270, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:(%d):4105 NameServer Rsp Data: x%x x%x x%x x%x sz x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.139 = internal global ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.137, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gid_pt._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.124, ptr @.str.8, i32 1288, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:(%d):4106 No NameServer Entries Data: x%x x%x x%x x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.142 = internal global ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.140, section ".printk_index", align 4
@.str.143 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GID_PT no entry  cmd:x%x rsn:x%x exp:x%x\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.124, ptr @.str.8, i32 1304, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%d:(%d):4107 NameServer Rsp Error Data: x%x x%x x%x x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.146 = internal global ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.144, section ".printk_index", align 4
@.str.147 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GID_PT rsp err1  cmd:x%x rsn:x%x exp:x%x\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.124, ptr @.str.8, i32 1321, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%d:(%d):4109 NameServer Rsp Error Data: x%x x%x x%x x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.150 = internal global ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.148, section ".printk_index", align 4
@.str.151 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GID_PT rsp err2  cmd:x%x rsn:x%x exp:x%x\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.124, ptr @.str.8, i32 1336, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:(%d):6450 GID_PT cmpl inp %d disc %d\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.154 = internal global ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.152, section ".printk_index", align 4
@.str.155 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GFF_ID cmpl:     status:x%x/x%x did:x%x\00", [56 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gff_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.8, i32 1388, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d:(%d):9045 Event tag mismatch. Ignoring NS rsp\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_cmpl_ct_cmd_gff_id\00", [40 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gff_id._entry_ptr = internal global ptr @lpfc_cmpl_ct_cmd_gff_id._entry, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gff_id._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.8, i32 1402, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%d:(%d):6431 Process GFF_ID rsp for %08x fbits %02x %s %s\0A\00", [37 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gff_id._entry_ptr.160 = internal global ptr @lpfc_cmpl_ct_cmd_gff_id._entry.158, section ".printk_index", align 4
@.str.161 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Initiator\00", [22 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Target\00", [25 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gff_id._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.157, ptr @.str.8, i32 1413, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%d:(%d):0270 Skip x%x GFF NameServer Rsp Data: (init) x%x x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gff_id._entry_ptr.165 = internal global ptr @lpfc_cmpl_ct_cmd_gff_id._entry.163, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gff_id._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.157, ptr @.str.8, i32 1460, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%d:(%d):0267 NameServer GFF Rsp x%x Error (%d %d) Data: x%x x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gff_id._entry_ptr.168 = internal global ptr @lpfc_cmpl_ct_cmd_gff_id._entry.166, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gff_id._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.157, ptr @.str.8, i32 1470, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%d:(%d):0242 Process x%x GFF NameServer Rsp Data: x%x x%x x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gff_id._entry_ptr.171 = internal global ptr @lpfc_cmpl_ct_cmd_gff_id._entry.169, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gff_id._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.157, ptr @.str.8, i32 1475, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%d:(%d):0243 Skip x%x GFF NameServer Rsp Data: x%x x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gff_id._entry_ptr.174 = internal global ptr @lpfc_cmpl_ct_cmd_gff_id._entry.172, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gff_id._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.157, ptr @.str.8, i32 1484, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:(%d):6451 GFF_ID cmpl inp %d disc %d\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gff_id._entry_ptr.177 = internal global ptr @lpfc_cmpl_ct_cmd_gff_id._entry.175, section ".printk_index", align 4
@.str.178 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GFT_ID cmpl: status:x%x/x%x did:x%x\00", [60 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gft_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.8, i32 1536, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d:(%d):9046 Event tag mismatch. Ignoring NS rsp\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpfc_cmpl_ct_cmd_gft_id\00", [40 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gft_id._entry_ptr = internal global ptr @lpfc_cmpl_ct_cmd_gft_id._entry, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gft_id._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.8, i32 1556, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%d:(%d):6432 Process GFT_ID rsp for %08x Data %08x %08x %s %s\0A\00", [33 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gft_id._entry_ptr.183 = internal global ptr @lpfc_cmpl_ct_cmd_gft_id._entry.181, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gft_id._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.180, ptr @.str.8, i32 1578, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%d:(%d):3064 Setting ndlp x%px, DID x%06x with FC4 x%08x, Data: x%08x x%08x %d\0A\00", [48 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gft_id._entry_ptr.186 = internal global ptr @lpfc_cmpl_ct_cmd_gft_id._entry.184, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gft_id._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.180, ptr @.str.8, i32 1595, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%d:(%d):6443 Sending LOGO ndlp x%px,DID x%06x with fc4_type: x%08x, state: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gft_id._entry_ptr.189 = internal global ptr @lpfc_cmpl_ct_cmd_gft_id._entry.187, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_gft_id._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.180, ptr @.str.8, i32 1604, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d:(%d):3065 GFT_ID failed x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_gft_id._entry_ptr.192 = internal global ptr @lpfc_cmpl_ct_cmd_gft_id._entry.190, section ".printk_index", align 4
@lpfc_cmpl_ct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.8, i32 1647, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"%d:(%d):0209 CT Request completes, latt %d, ulpStatus x%x CmdRsp x%x, Context x%x, Tag x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpfc_cmpl_ct\00", [19 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct._entry_ptr = internal global ptr @lpfc_cmpl_ct._entry, section ".printk_index", align 4
@.str.195 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CT cmd cmpl:     status:x%x/x%x cmd:x%x\00", [56 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.194, ptr @.str.8, i32 1656, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:(%d):0268 NS cmd x%x Error (x%x x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct._entry_ptr.198 = internal global ptr @lpfc_cmpl_ct._entry.196, section ".printk_index", align 4
@lpfc_cmpl_ct._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.194, ptr @.str.8, i32 1671, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%d:(%d):0250 Retrying NS cmd %x\0A\00", [63 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct._entry_ptr.201 = internal global ptr @lpfc_cmpl_ct._entry.199, section ".printk_index", align 4
@lpfc_gen_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.8, i32 654, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%d:(%d):0119 Issue GEN REQ IOCB to NPORT x%x Data: x%x x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpfc_gen_req\00", [19 x i8] zeroinitializer }, align 32
@lpfc_gen_req._entry_ptr = internal global ptr @lpfc_gen_req._entry, section ".printk_index", align 4
@.str.204 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Emulex Corporation\00", [45 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s %s\00", [23 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EMULEX\00", [25 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"/sys/class/scsi_host/host%d\00", [36 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Smart SAN Initiator\00", [44 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Smart SAN Version 2.0\00", [42 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ELXE2EM:%04d\00", [19 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FDMI cmpl:       status:x%x/x%x latt:%d\00", [56 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_disc_fdmi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.8, i32 2242, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%d:(%d):0229 FDMI cmd %04x failed, latt = %d ulpStatus: x%x, rid x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpfc_cmpl_ct_disc_fdmi\00", [41 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_disc_fdmi._entry_ptr = internal global ptr @lpfc_cmpl_ct_disc_fdmi._entry, section ".printk_index", align 4
@lpfc_cmpl_ct_disc_fdmi._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.8, i32 2258, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%d:(%d):0220 FDMI cmd failed FS_RJT Data: x%x\00", [50 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_disc_fdmi._entry_ptr.216 = internal global ptr @lpfc_cmpl_ct_disc_fdmi._entry.214, section ".printk_index", align 4
@lpfc_cmpl_ct_disc_fdmi._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.213, ptr @.str.8, i32 2295, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d:6460 VEN FDMI RPA failure\0A\00", [34 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_disc_fdmi._entry_ptr.219 = internal global ptr @lpfc_cmpl_ct_disc_fdmi._entry.217, section ".printk_index", align 4
@lpfc_cmpl_ct_disc_fdmi._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.213, ptr @.str.8, i32 2343, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d:(%d):6449 VEN RPA FDMI Success\0A\00", [61 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_disc_fdmi._entry_ptr.222 = internal global ptr @lpfc_cmpl_ct_disc_fdmi._entry.220, section ".printk_index", align 4
@lpfc_cmpl_ct_disc_fdmi._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.213, ptr @.str.8, i32 2350, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%d:6210 Issue Vendor MI FDMI %x\0A\00", [63 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_disc_fdmi._entry_ptr.225 = internal global ptr @lpfc_cmpl_ct_disc_fdmi._entry.223, section ".printk_index", align 4
@lpfc_cmpl_ct_disc_fdmi._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.213, ptr @.str.8, i32 2360, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d:6458 Send MI FDMI:%x Flag x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_disc_fdmi._entry_ptr.228 = internal global ptr @lpfc_cmpl_ct_disc_fdmi._entry.226, section ".printk_index", align 4
@lpfc_cmpl_ct_disc_fdmi._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.213, ptr @.str.8, i32 2365, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%d:6459 No FDMI VEN MI support - RPA Success\0A\00", [50 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_disc_fdmi._entry_ptr.231 = internal global ptr @lpfc_cmpl_ct_disc_fdmi._entry.229, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_vmid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.8, i32 3826, ptr @.str.43, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d:(%d):3306 VMID FS_RJT Data: x%x x%x x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpfc_cmpl_ct_cmd_vmid\00", [42 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_vmid._entry_ptr = internal global ptr @lpfc_cmpl_ct_cmd_vmid._entry, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_vmid._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.8, i32 3844, ptr @.str.43, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d:(%d):6712 RAPP_IDENT app id %d  port id x%x id len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_vmid._entry_ptr.236 = internal global ptr @lpfc_cmpl_ct_cmd_vmid._entry.234, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_vmid._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.233, ptr @.str.8, i32 3864, ptr @.str.43, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%d:(%d):6901 No entry found %s hash %d\0A\00", [56 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_vmid._entry_ptr.239 = internal global ptr @lpfc_cmpl_ct_cmd_vmid._entry.237, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_vmid._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.233, ptr @.str.8, i32 3872, ptr @.str.43, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d:(%d):6713 DAPP_IDENT app id %d  port id x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_vmid._entry_ptr.242 = internal global ptr @lpfc_cmpl_ct_cmd_vmid._entry.240, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_vmid._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.233, ptr @.str.8, i32 3876, ptr @.str.43, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%d:(%d):8856 Deregistered all app ids\0A\00", [57 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_vmid._entry_ptr.245 = internal global ptr @lpfc_cmpl_ct_cmd_vmid._entry.243, section ".printk_index", align 4
@lpfc_cmpl_ct_cmd_vmid._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.233, ptr @.str.8, i32 3892, ptr @.str.43, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d:(%d):8857 Invalid command code\0A\00", [61 x i8] zeroinitializer }, align 32
@lpfc_cmpl_ct_cmd_vmid._entry_ptr.248 = internal global ptr @lpfc_cmpl_ct_cmd_vmid._entry.246, section ".printk_index", align 4
@switch.table.lpfc_decode_firmware_rev = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 78, i32 65, i32 66, i32 88], [16 x i8] zeroinitializer }, align 32
@switch.table.lpfc_fdmi_port_attr_support_speed = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 65536, i32 65536, i32 524288, i32 131072, i32 262144], [44 x i8] zeroinitializer }, align 32
@switch.table.lpfc_fdmi_port_attr_speed = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 65536, i32 32768, i32 524288, i32 131072, i32 262144], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 15]
@__sancov_gen_cov_switch_values.249 = internal global [12 x i64] [i64 10, i64 32, i64 279, i64 287, i64 369, i64 417, i64 531, i64 535, i64 536, i64 543, i64 569, i64 768]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.252 = internal global [5 x i64] [i64 3, i64 32, i64 26, i64 257, i64 259]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 40]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 16, i64 32769, i64 32770]
@__sancov_gen_cov_switch_values.255 = internal global [5 x i64] [i64 3, i64 32, i64 26, i64 257, i64 259]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 16, i64 32769, i64 32770]
@__sancov_gen_cov_switch_values.257 = internal global [6 x i64] [i64 4, i64 32, i64 17, i64 26, i64 257, i64 259]
@__sancov_gen_cov_switch_values.258 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 32]
@__sancov_gen_cov_switch_values.259 = internal global [15 x i64] [i64 13, i64 32, i64 256, i64 257, i64 258, i64 272, i64 288, i64 512, i64 513, i64 528, i64 529, i64 768, i64 769, i64 784, i64 785]
@__sancov_gen_cov_switch_values.260 = internal global [12 x i64] [i64 10, i64 8, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 144, i64 160, i64 176, i64 192]
@__sancov_gen_cov_switch_values.261 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 6, i64 15, i64 17, i64 21]
@__sancov_gen_cov_switch_values.262 = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 528, i64 529]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 32, i64 65535, i64 8388607]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 32, i64 65535, i64 8388607]
@__sancov_gen_cov_switch_values.265 = internal global [6 x i64] [i64 4, i64 16, i64 512, i64 529, i64 768, i64 784]
@__sancov_gen_cov_switch_values.266 = internal global [6 x i64] [i64 4, i64 32, i64 258, i64 512, i64 768, i64 769]
@__sancov_gen_cov_switch_values.267 = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 768, i64 769]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 40]
@__sancov_gen_cov_switch_values.269 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 40]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 32, i64 257, i64 259]
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1816, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1830, i32 30 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1835, i32 30 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1839, i32 30 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1843, i32 30 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1848, i32 30 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1956, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2057, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2140, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2156, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2171, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2403, i32 61 }
@___asan_gen_.343 = private unnamed_addr constant [21 x i8] c"lpfc_fdmi_hba_action\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3369, i32 7 }
@___asan_gen_.346 = private unnamed_addr constant [22 x i8] c"lpfc_fdmi_port_action\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3393, i32 7 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3479, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3625, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3655, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3775, i32 25 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3779, i32 25 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3951, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3970, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3989, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 4011, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 4042, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 297, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 305, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 317, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 327, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 270, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 87, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 92, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 77, i32 37 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 959, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 964, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 977, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 985, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1007, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1041, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1050, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1068, i32 5 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1078, i32 5 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1083, i32 5 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1093, i32 5 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1102, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1111, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1120, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 833, i32 9 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 835, i32 9 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 836, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 749, i32 5 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 759, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 777, i32 5 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 780, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 790, i32 5 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 813, i32 5 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 816, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1175, i32 10 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1181, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1194, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1202, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1224, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1254, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1263, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1281, i32 5 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1292, i32 5 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1297, i32 5 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1308, i32 5 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1315, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1325, i32 5 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1334, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1382, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1387, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1397, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1408, i32 5 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1456, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1466, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1472, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1482, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1530, i32 10 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1535, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1549, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1572, i32 4 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1589, i32 5 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1603, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1642, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1650, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1654, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1670, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 650, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2474, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2658, i32 57 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2807, i32 29 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3005, i32 4 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3222, i32 29 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3264, i32 29 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3357, i32 23 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2203, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2238, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2257, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2293, i32 5 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2340, i32 5 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2348, i32 4 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2356, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2362, i32 4 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3823, i32 4 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3840, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3862, i32 4 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3869, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3875, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.895 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.896 = private constant [31 x i8] c"../drivers/scsi/lpfc/lpfc_ct.c\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 3891, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant [38 x i8] c"switch.table.lpfc_decode_firmware_rev\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [47 x i8] c"switch.table.lpfc_fdmi_port_attr_support_speed\00", align 1
@___asan_gen_.900 = private unnamed_addr constant [39 x i8] c"switch.table.lpfc_fdmi_port_attr_speed\00", align 1
@llvm.compiler.used = appending global [284 x ptr] [ptr @lpfc_cmpl_ct._entry, ptr @lpfc_cmpl_ct._entry.196, ptr @lpfc_cmpl_ct._entry.199, ptr @lpfc_cmpl_ct._entry_ptr, ptr @lpfc_cmpl_ct._entry_ptr.198, ptr @lpfc_cmpl_ct._entry_ptr.201, ptr @lpfc_cmpl_ct_cmd_gff_id._entry, ptr @lpfc_cmpl_ct_cmd_gff_id._entry.158, ptr @lpfc_cmpl_ct_cmd_gff_id._entry.163, ptr @lpfc_cmpl_ct_cmd_gff_id._entry.166, ptr @lpfc_cmpl_ct_cmd_gff_id._entry.169, ptr @lpfc_cmpl_ct_cmd_gff_id._entry.172, ptr @lpfc_cmpl_ct_cmd_gff_id._entry.175, ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr, ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.160, ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.165, ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.168, ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.171, ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.174, ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.177, ptr @lpfc_cmpl_ct_cmd_gft_id._entry, ptr @lpfc_cmpl_ct_cmd_gft_id._entry.181, ptr @lpfc_cmpl_ct_cmd_gft_id._entry.184, ptr @lpfc_cmpl_ct_cmd_gft_id._entry.187, ptr @lpfc_cmpl_ct_cmd_gft_id._entry.190, ptr @lpfc_cmpl_ct_cmd_gft_id._entry_ptr, ptr @lpfc_cmpl_ct_cmd_gft_id._entry_ptr.183, ptr @lpfc_cmpl_ct_cmd_gft_id._entry_ptr.186, ptr @lpfc_cmpl_ct_cmd_gft_id._entry_ptr.189, ptr @lpfc_cmpl_ct_cmd_gft_id._entry_ptr.192, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.103, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.76, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.79, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.82, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.85, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.88, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.91, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.95, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.99, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.101, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.105, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.78, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.81, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.84, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.87, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.90, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.93, ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.97, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.125, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.128, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.131, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.134, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.137, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.140, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.144, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.148, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.152, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.127, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.130, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.133, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.136, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.139, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.142, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.146, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.150, ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.154, ptr @lpfc_cmpl_ct_cmd_vmid._entry, ptr @lpfc_cmpl_ct_cmd_vmid._entry.234, ptr @lpfc_cmpl_ct_cmd_vmid._entry.237, ptr @lpfc_cmpl_ct_cmd_vmid._entry.240, ptr @lpfc_cmpl_ct_cmd_vmid._entry.243, ptr @lpfc_cmpl_ct_cmd_vmid._entry.246, ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr, ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr.236, ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr.239, ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr.242, ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr.245, ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr.248, ptr @lpfc_cmpl_ct_disc_fdmi._entry, ptr @lpfc_cmpl_ct_disc_fdmi._entry.214, ptr @lpfc_cmpl_ct_disc_fdmi._entry.217, ptr @lpfc_cmpl_ct_disc_fdmi._entry.220, ptr @lpfc_cmpl_ct_disc_fdmi._entry.223, ptr @lpfc_cmpl_ct_disc_fdmi._entry.226, ptr @lpfc_cmpl_ct_disc_fdmi._entry.229, ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr, ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.216, ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.219, ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.222, ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.225, ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.228, ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.231, ptr @lpfc_ct_handle_mibreq._entry, ptr @lpfc_ct_handle_mibreq._entry.56, ptr @lpfc_ct_handle_mibreq._entry.59, ptr @lpfc_ct_handle_mibreq._entry.62, ptr @lpfc_ct_handle_mibreq._entry_ptr, ptr @lpfc_ct_handle_mibreq._entry_ptr.58, ptr @lpfc_ct_handle_mibreq._entry_ptr.61, ptr @lpfc_ct_handle_mibreq._entry_ptr.64, ptr @lpfc_ct_ignore_hbq_buffer._entry, ptr @lpfc_ct_ignore_hbq_buffer._entry.69, ptr @lpfc_ct_ignore_hbq_buffer._entry_ptr, ptr @lpfc_ct_ignore_hbq_buffer._entry_ptr.71, ptr @lpfc_ct_reject_event._entry, ptr @lpfc_ct_reject_event._entry_ptr, ptr @lpfc_fdmi_cmd._entry, ptr @lpfc_fdmi_cmd._entry.28, ptr @lpfc_fdmi_cmd._entry.32, ptr @lpfc_fdmi_cmd._entry_ptr, ptr @lpfc_fdmi_cmd._entry_ptr.31, ptr @lpfc_fdmi_cmd._entry_ptr.34, ptr @lpfc_gen_req._entry, ptr @lpfc_gen_req._entry_ptr, ptr @lpfc_ns_cmd._entry, ptr @lpfc_ns_cmd._entry.11, ptr @lpfc_ns_cmd._entry.17, ptr @lpfc_ns_cmd._entry.22, ptr @lpfc_ns_cmd._entry_ptr, ptr @lpfc_ns_cmd._entry_ptr.13, ptr @lpfc_ns_cmd._entry_ptr.19, ptr @lpfc_ns_cmd._entry_ptr.24, ptr @lpfc_ns_rsp_audit_did._entry, ptr @lpfc_ns_rsp_audit_did._entry_ptr, ptr @lpfc_prep_node_fc4type._entry, ptr @lpfc_prep_node_fc4type._entry.114, ptr @lpfc_prep_node_fc4type._entry.119, ptr @lpfc_prep_node_fc4type._entry_ptr, ptr @lpfc_prep_node_fc4type._entry_ptr.116, ptr @lpfc_prep_node_fc4type._entry_ptr.121, ptr @lpfc_vmid_cmd._entry, ptr @lpfc_vmid_cmd._entry.41, ptr @lpfc_vmid_cmd._entry.45, ptr @lpfc_vmid_cmd._entry.48, ptr @lpfc_vmid_cmd._entry.51, ptr @lpfc_vmid_cmd._entry_ptr, ptr @lpfc_vmid_cmd._entry_ptr.44, ptr @lpfc_vmid_cmd._entry_ptr.47, ptr @lpfc_vmid_cmd._entry_ptr.50, ptr @lpfc_vmid_cmd._entry_ptr.53, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @lpfc_fdmi_hba_action, ptr @lpfc_fdmi_port_action, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.197, ptr @.str.200, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.215, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @switch.table.lpfc_decode_firmware_rev, ptr @switch.table.lpfc_fdmi_port_attr_support_speed, ptr @switch.table.lpfc_fdmi_port_attr_speed], section "llvm.metadata"
@0 = internal global [212 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ns_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ns_cmd._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ns_cmd._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ns_cmd._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_fdmi_hba_action to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_fdmi_port_action to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_fdmi_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_fdmi_cmd._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_fdmi_cmd._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vmid_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vmid_cmd._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vmid_cmd._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vmid_cmd._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vmid_cmd._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ct_handle_mibreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ct_handle_mibreq._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ct_handle_mibreq._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ct_handle_mibreq._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ct_reject_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ct_ignore_hbq_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ct_ignore_hbq_buffer._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_ft._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_ns_rsp_audit_did._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_prep_node_fc4type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_prep_node_fc4type._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_prep_node_fc4type._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_pt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gff_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gff_id._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gff_id._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gff_id._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gff_id._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gff_id._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gff_id._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gft_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gft_id._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gft_id._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gft_id._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_gft_id._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_gen_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_disc_fdmi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_disc_fdmi._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_disc_fdmi._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_disc_fdmi._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_disc_fdmi._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_disc_fdmi._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_disc_fdmi._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_vmid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_vmid._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_vmid._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_vmid._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_vmid._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_cmpl_ct_cmd_vmid._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lpfc_decode_firmware_rev to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lpfc_fdmi_port_attr_support_speed to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lpfc_fdmi_port_attr_speed to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_ct_unsol_event(ptr noundef %phba, ptr noundef %pring, ptr noundef %ctiocbq) local_unnamed_addr #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #20
  %0 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %head, align 4, !annotation !406
  %1 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !406
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 19
  %3 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context2, align 4
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 20
  %5 = ptrtoint ptr %context3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context3, align 8
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 18
  %7 = ptrtoint ptr %context1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %context1, align 8
  store ptr null, ptr %context2, align 4
  store ptr null, ptr %context3, align 8
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 15
  %9 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear, label %entry.if.end16_crit_edge [
    i32 15, label %if.then
    i32 3, label %land.lhs.true
  ], !prof !407

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 @lpfc_sli_hbqbuf_add_hbqs(ptr noundef %phba, i32 noundef 0) #20
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 11, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and = and i32 %11, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and)
  %cmp9 = icmp eq i32 %and, 11
  br i1 %cmp9, label %if.then10, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then10:                                        ; preds = %land.lhs.true
  %NoRcvBuf = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 67, i32 49
  %12 = ptrtoint ptr %NoRcvBuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %NoRcvBuf, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %NoRcvBuf, align 4
  %sli3_options = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 32
  %14 = ptrtoint ptr %sli3_options to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sli3_options, align 8
  %and11 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  %call14 = tail call i32 @lpfc_post_buffer(ptr noundef %phba, ptr noundef %pring, i32 noundef 2) #20
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.then, %entry.if.end16_crit_edge
  %16 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load17 = load i32, ptr %ulpStatus, align 4
  %17 = and i32 %bf.load17, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp20 = icmp eq i32 %17, 0
  br i1 %cmp20, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %sli3_options23 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 32
  %18 = ptrtoint ptr %sli3_options23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sli3_options23, align 8
  %and24 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else36, label %if.then26

if.then26:                                        ; preds = %if.end22
  %20 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %4, ptr %context2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp32 = icmp eq i32 %17, 8
  br i1 %cmp32, label %if.then26.if.end68.sink.split_crit_edge, label %if.then26.if.end68_crit_edge

if.then26.if.end68_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68

if.then26.if.end68.sink.split_crit_edge:          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68.sink.split

if.else36:                                        ; preds = %if.end22
  %addrLow = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 11, i32 0, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %addrLow to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addrLow, align 4
  %call44 = tail call ptr @lpfc_sli_ringpostbuf_get(ptr noundef %phba, ptr noundef %pring, i32 noundef %22) #20
  %23 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call44, ptr %context2, align 4
  %24 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load47 = load i32, ptr %ulpStatus, align 4
  %25 = and i32 %bf.load47, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %25)
  %cmp50 = icmp eq i32 %25, 8
  br i1 %cmp50, label %if.then52, label %if.else36.if.end68_crit_edge

if.else36.if.end68_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68

if.then52:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #22
  %addrLow61 = getelementptr %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 11, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %addrLow61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addrLow61, align 4
  %call65 = tail call ptr @lpfc_sli_ringpostbuf_get(ptr noundef %phba, ptr noundef %pring, i32 noundef %27) #20
  br label %if.end68.sink.split

if.end68.sink.split:                              ; preds = %if.then52, %if.then26.if.end68.sink.split_crit_edge
  %call65.sink = phi ptr [ %call65, %if.then52 ], [ %6, %if.then26.if.end68.sink.split_crit_edge ]
  %28 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call65.sink, ptr %context3, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.else36.if.end68_crit_edge, %if.then26.if.end68_crit_edge
  %29 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virt, align 4
  %FsType = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %FsType to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %FsType, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %34)
  %cmp71 = icmp eq i8 %34, -6
  br i1 %cmp71, label %land.lhs.true73, label %if.end68.if.else78_crit_edge

if.end68.if.else78_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else78

land.lhs.true73:                                  ; preds = %if.end68
  %FsSubType = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %FsSubType to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %FsSubType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %36)
  %cmp75 = icmp eq i8 %36, 17
  br i1 %cmp75, label %if.then77, label %land.lhs.true73.if.else78_crit_edge

land.lhs.true73.if.else78_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else78

if.then77:                                        ; preds = %land.lhs.true73
  %unsli3.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 11, i32 3
  %vpi2.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 11, i32 3, i32 0, i32 1
  %37 = ptrtoint ptr %vpi2.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vpi2.i, align 4
  %conv.i = zext i16 %38 to i32
  %call.i = tail call ptr @lpfc_find_vport_by_vpid(ptr noundef %phba, i16 noundef zeroext %38) #20
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end17.i

do.body.i:                                        ; preds = %if.then77
  %pport.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %39 = ptrtoint ptr %pport.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pport.i, align 8
  %tobool4.not.i = icmp eq ptr %40, null
  %cfg_log_verbose.i = getelementptr inbounds %struct.lpfc_vport, ptr %40, i32 0, i32 51
  %cfg_log_verbose6.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in.i = select i1 %tobool4.not.i, ptr %cfg_log_verbose6.i, ptr %cfg_log_verbose.i
  %41 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %and.i = and i32 %cond.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %42 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %44 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brd_no.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev.i, ptr noundef nonnull @.str.54, i32 noundef %45, i32 noundef %conv.i) #23
  br label %if.end83

if.else.i:                                        ; preds = %do.body.i
  %46 = ptrtoint ptr %cfg_log_verbose6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cfg_log_verbose6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool11.not.i = icmp eq i32 %47, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else.i.if.end83_crit_edge

if.else.i.if.end83_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %brd_no13.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %48 = ptrtoint ptr %brd_no13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brd_no13.i, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.54, i32 noundef %49, i32 noundef %conv.i) #20
  br label %if.end83

if.end17.i:                                       ; preds = %if.then77
  %iocb.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 11
  %remoteID.i = getelementptr inbounds %struct.RCV_ELS_REQ, ptr %iocb.i, i32 0, i32 2
  %50 = ptrtoint ptr %remoteID.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load.i = load i32, ptr %remoteID.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 16777215
  %51 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load19.i = load i32, ptr %ulpStatus, align 4
  %bf.lshr.i = lshr i32 %bf.load19.i, 4
  %bf.clear20.i = and i32 %bf.lshr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear20.i)
  %tobool21.not.i = icmp eq i32 %bf.clear20.i, 0
  br i1 %tobool21.not.i, label %if.end62.i, label %do.body23.i

do.body23.i:                                      ; preds = %if.end17.i
  %cfg_log_verbose24.i = getelementptr inbounds %struct.lpfc_vport, ptr %call.i, i32 0, i32 51
  %52 = ptrtoint ptr %cfg_log_verbose24.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cfg_log_verbose24.i, align 4
  %and25.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.else43.i, label %do.end30.i

do.end30.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #22
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 8
  %pcidev32.i = getelementptr inbounds %struct.lpfc_hba, ptr %55, i32 0, i32 165
  %56 = ptrtoint ptr %pcidev32.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcidev32.i, align 4
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %brd_no35.i = getelementptr inbounds %struct.lpfc_hba, ptr %55, i32 0, i32 197
  %58 = ptrtoint ptr %brd_no35.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %brd_no35.i, align 4
  %vpi36.i = getelementptr inbounds %struct.lpfc_vport, ptr %call.i, i32 0, i32 4
  %60 = ptrtoint ptr %vpi36.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vpi36.i, align 4
  %conv37.i = zext i16 %61 to i32
  %arrayidx.i = getelementptr %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 11, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev33.i, ptr noundef nonnull @.str.57, i32 noundef %59, i32 noundef %conv37.i, i32 noundef %bf.clear20.i, i32 noundef %63, i32 noundef %bf.clear.i) #23
  br label %if.end83

if.else43.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool45.not.i = icmp eq i32 %53, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.else43.i.if.end83_crit_edge

if.else43.i.if.end83_crit_edge:                   ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

if.then46.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #22
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 8
  %brd_no49.i = getelementptr inbounds %struct.lpfc_hba, ptr %65, i32 0, i32 197
  %66 = ptrtoint ptr %brd_no49.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %brd_no49.i, align 4
  %vpi50.i = getelementptr inbounds %struct.lpfc_vport, ptr %call.i, i32 0, i32 4
  %68 = ptrtoint ptr %vpi50.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vpi50.i, align 4
  %conv51.i = zext i16 %69 to i32
  %arrayidx57.i = getelementptr %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 11, i32 0, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx57.i, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %65, ptr noundef nonnull @.str.57, i32 noundef %67, i32 noundef %conv51.i, i32 noundef %bf.clear20.i, i32 noundef %71, i32 noundef %bf.clear.i) #20
  br label %if.end83

if.end62.i:                                       ; preds = %if.end17.i
  %fc_flag.i = getelementptr inbounds %struct.lpfc_vport, ptr %call.i, i32 0, i32 7
  %72 = ptrtoint ptr %fc_flag.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fc_flag.i, align 4
  %and63.i = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %if.end62.i.if.end83_crit_edge

if.end62.i.if.end83_crit_edge:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

if.end66.i:                                       ; preds = %if.end62.i
  %call67.i = tail call ptr @lpfc_findnode_did(ptr noundef nonnull %call.i, i32 noundef %bf.clear.i) #20
  %tobool68.not.i = icmp eq ptr %call67.i, null
  br i1 %tobool68.not.i, label %do.body70.i, label %if.end98.i

do.body70.i:                                      ; preds = %if.end66.i
  %cfg_log_verbose71.i = getelementptr inbounds %struct.lpfc_vport, ptr %call.i, i32 0, i32 51
  %74 = ptrtoint ptr %cfg_log_verbose71.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cfg_log_verbose71.i, align 4
  %and72.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.else85.i, label %do.end77.i

do.end77.i:                                       ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #22
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 8
  %pcidev79.i = getelementptr inbounds %struct.lpfc_hba, ptr %77, i32 0, i32 165
  %78 = ptrtoint ptr %pcidev79.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pcidev79.i, align 4
  %dev80.i = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %brd_no82.i = getelementptr inbounds %struct.lpfc_hba, ptr %77, i32 0, i32 197
  %80 = ptrtoint ptr %brd_no82.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %brd_no82.i, align 4
  %vpi83.i = getelementptr inbounds %struct.lpfc_vport, ptr %call.i, i32 0, i32 4
  %82 = ptrtoint ptr %vpi83.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %vpi83.i, align 4
  %conv84.i = zext i16 %83 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev80.i, ptr noundef nonnull @.str.60, i32 noundef %81, i32 noundef %conv84.i, i32 noundef %bf.clear.i) #23
  br label %if.end83

if.else85.i:                                      ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool87.not.i = icmp eq i32 %75, 0
  br i1 %tobool87.not.i, label %if.then88.i, label %if.else85.i.if.end83_crit_edge

if.else85.i.if.end83_crit_edge:                   ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

if.then88.i:                                      ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #22
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 8
  %brd_no91.i = getelementptr inbounds %struct.lpfc_hba, ptr %85, i32 0, i32 197
  %86 = ptrtoint ptr %brd_no91.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %brd_no91.i, align 4
  %vpi92.i = getelementptr inbounds %struct.lpfc_vport, ptr %call.i, i32 0, i32 4
  %88 = ptrtoint ptr %vpi92.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vpi92.i, align 4
  %conv93.i = zext i16 %89 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %85, ptr noundef nonnull @.str.60, i32 noundef %87, i32 noundef %conv93.i, i32 noundef %bf.clear.i) #20
  br label %if.end83

if.end98.i:                                       ; preds = %if.end66.i
  %90 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %context2, align 4
  %virt.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %virt.i, align 4
  %CommandResponse.i = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %CommandResponse.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load99.i = load i32, ptr %CommandResponse.i, align 4
  %bf.lshr100.i = lshr i32 %bf.load99.i, 16
  %cfg_log_verbose102.i = getelementptr inbounds %struct.lpfc_vport, ptr %call.i, i32 0, i32 51
  %95 = ptrtoint ptr %cfg_log_verbose102.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cfg_log_verbose102.i, align 4
  %and103.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %if.else116.i, label %do.end108.i

do.end108.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #22
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i, align 8
  %pcidev110.i = getelementptr inbounds %struct.lpfc_hba, ptr %98, i32 0, i32 165
  %99 = ptrtoint ptr %pcidev110.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pcidev110.i, align 4
  %dev111.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %brd_no113.i = getelementptr inbounds %struct.lpfc_hba, ptr %98, i32 0, i32 197
  %101 = ptrtoint ptr %brd_no113.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %brd_no113.i, align 4
  %vpi114.i = getelementptr inbounds %struct.lpfc_vport, ptr %call.i, i32 0, i32 4
  %103 = ptrtoint ptr %vpi114.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %vpi114.i, align 4
  %conv115.i = zext i16 %104 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev111.i, ptr noundef nonnull @.str.63, i32 noundef %102, i32 noundef %conv115.i, i32 noundef %bf.lshr100.i) #23
  br label %do.end128.i

if.else116.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool118.not.i = icmp eq i32 %96, 0
  br i1 %tobool118.not.i, label %if.then119.i, label %if.else116.i.do.end128.i_crit_edge

if.else116.i.do.end128.i_crit_edge:               ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end128.i

if.then119.i:                                     ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #22
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 8
  %brd_no122.i = getelementptr inbounds %struct.lpfc_hba, ptr %106, i32 0, i32 197
  %107 = ptrtoint ptr %brd_no122.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %brd_no122.i, align 4
  %vpi123.i = getelementptr inbounds %struct.lpfc_vport, ptr %call.i, i32 0, i32 4
  %109 = ptrtoint ptr %vpi123.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %vpi123.i, align 4
  %conv124.i = zext i16 %110 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %106, ptr noundef nonnull @.str.63, i32 noundef %108, i32 noundef %conv124.i, i32 noundef %bf.lshr100.i) #20
  br label %do.end128.i

do.end128.i:                                      ; preds = %if.then119.i, %if.else116.i.do.end128.i_crit_edge, %do.end108.i
  %un1.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocbq, i32 0, i32 11, i32 1
  %111 = ptrtoint ptr %un1.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %un1.i, align 8
  %113 = ptrtoint ptr %unsli3.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %unsli3.i, align 8
  %vport1.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call67.i, i32 0, i32 25
  %115 = ptrtoint ptr %vport1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vport1.i.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %119 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %119, i32 noundef 3264, i32 noundef 20) #24
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end128.i.do.body.i.i_crit_edge, label %if.end.i.i

do.end128.i.do.body.i.i_crit_edge:                ; preds = %do.end128.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i.i

if.end.i.i:                                       ; preds = %do.end128.i
  %phys.i.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i.i.i, i32 0, i32 2
  %call3.i.i = tail call ptr @lpfc_mbuf_alloc(ptr noundef %118, i32 noundef 256, ptr noundef %phys.i.i) #20
  %virt.i.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call3.i.i, ptr %virt.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.ct_free_mp.i.i_crit_edge, label %if.end7.i.i

if.end.i.i.ct_free_mp.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ct_free_mp.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %121 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i240.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %121, i32 noundef 3264, i32 noundef 20) #24
  %tobool9.not.i.i = icmp eq ptr %call7.i240.i.i, null
  br i1 %tobool9.not.i.i, label %if.end7.i.i.ct_free_mpvirt.i.i_crit_edge, label %if.end11.i.i

if.end7.i.i.ct_free_mpvirt.i.i_crit_edge:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ct_free_mpvirt.i.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %phys12.i.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i240.i.i, i32 0, i32 2
  %call13.i.i = tail call ptr @lpfc_mbuf_alloc(ptr noundef %118, i32 noundef 256, ptr noundef %phys12.i.i) #20
  %virt14.i.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i240.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %virt14.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call13.i.i, ptr %virt14.i.i, align 8
  %tobool16.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool16.not.i.i, label %if.end11.i.i.ct_free_bmp.i.i_crit_edge, label %if.end18.i.i

if.end11.i.i.ct_free_bmp.i.i_crit_edge:           ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ct_free_bmp.i.i

if.end18.i.i:                                     ; preds = %if.end11.i.i
  %123 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  %125 = ptrtoint ptr %call7.i240.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %call7.i240.i.i, ptr %call7.i240.i.i, align 8
  %prev.i241.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i240.i.i, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i241.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call7.i240.i.i, ptr %prev.i241.i.i, align 4
  %127 = call ptr @memset(ptr %call13.i.i, i32 0, i32 12)
  %128 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %phys.i.i, align 4
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #20
  %addrLow.i.i = getelementptr inbounds %struct.ulp_bde64, ptr %call13.i.i, i32 0, i32 1
  %131 = ptrtoint ptr %addrLow.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %addrLow.i.i, align 4
  %132 = ptrtoint ptr %call13.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 268435520, ptr %call13.i.i, align 4
  %133 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %virt.i.i, align 8
  %135 = getelementptr inbounds i8, ptr %134, i32 4
  %136 = call ptr @memset(ptr %135, i32 0, i32 276)
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 16777216, ptr %134, align 4
  %FsType.i.i = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %93, i32 0, i32 1
  %138 = ptrtoint ptr %FsType.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %FsType.i.i, align 4
  %140 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %135, align 4
  %FsSubType.i.i = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %93, i32 0, i32 2
  %141 = ptrtoint ptr %FsSubType.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %FsSubType.i.i, align 1
  %FsSubType42.i.i = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %134, i32 0, i32 2
  %143 = ptrtoint ptr %FsSubType42.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %FsSubType42.i.i, align 1
  %CommandResponse.i.i = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %134, i32 0, i32 5
  %144 = ptrtoint ptr %CommandResponse.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -2147418112, ptr %CommandResponse.i.i, align 4
  %ReasonCode.i.i = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %134, i32 0, i32 7
  %145 = ptrtoint ptr %ReasonCode.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 11, ptr %ReasonCode.i.i, align 1
  %Explanation.i.i = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %134, i32 0, i32 8
  %146 = ptrtoint ptr %Explanation.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %Explanation.i.i, align 2
  %call50.i.i = tail call ptr @lpfc_sli_get_iocbq(ptr noundef %118) #20
  %tobool51.not.i.i = icmp eq ptr %call50.i.i, null
  br i1 %tobool51.not.i.i, label %if.end18.i.i.ct_free_bmpvirt.i.i_crit_edge, label %if.end53.i.i

if.end18.i.i.ct_free_bmpvirt.i.i_crit_edge:       ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ct_free_bmpvirt.i.i

if.end53.i.i:                                     ; preds = %if.end18.i.i
  %iocb.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 11
  %ulpIoTag32.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 11, i32 0, i32 0, i32 0, i32 3
  %147 = ptrtoint ptr %ulpIoTag32.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %ulpIoTag32.i.i, align 4
  %addrHigh61.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 11, i32 0, i32 0, i32 0, i32 2
  %148 = ptrtoint ptr %addrHigh61.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %addrHigh61.i.i, align 4
  %149 = ptrtoint ptr %phys12.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %phys12.i.i, align 4
  %addrLow68.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 11, i32 0, i32 0, i32 0, i32 1
  %151 = ptrtoint ptr %addrLow68.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %addrLow68.i.i, align 4
  %152 = ptrtoint ptr %iocb.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1073741836, ptr %iocb.i.i, align 4
  %w5.i.i = getelementptr inbounds %struct.GEN_REQUEST64, ptr %iocb.i.i, i32 0, i32 2
  %Fctl.i.i = getelementptr inbounds %struct.anon.1, ptr %w5.i.i, i32 0, i32 3
  %153 = ptrtoint ptr %Fctl.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -120, ptr %Fctl.i.i, align 1
  %Dfctl.i.i = getelementptr inbounds %struct.anon.1, ptr %w5.i.i, i32 0, i32 2
  %154 = ptrtoint ptr %Dfctl.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %Dfctl.i.i, align 2
  %155 = ptrtoint ptr %w5.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 3, ptr %w5.i.i, align 4
  %Type.i.i = getelementptr inbounds %struct.anon.1, ptr %w5.i.i, i32 0, i32 1
  %156 = ptrtoint ptr %Type.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 32, ptr %Type.i.i, align 1
  %ulpCommand.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 11, i32 2
  %157 = ptrtoint ptr %ulpCommand.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %bf.load86.i.i = load i32, ptr %ulpCommand.i.i, align 4
  %bf.clear87.i.i = and i32 %bf.load86.i.i, -524047
  %bf.set97.i.i = or i32 %bf.clear87.i.i, 164614
  store i32 %bf.set97.i.i, ptr %ulpCommand.i.i, align 4
  %call98.i.i = tail call ptr @lpfc_nlp_get(ptr noundef nonnull %call67.i) #20
  %context1.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 18
  %158 = ptrtoint ptr %context1.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call98.i.i, ptr %context1.i.i, align 8
  %context2.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 19
  %159 = ptrtoint ptr %context2.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call7.i.i.i, ptr %context2.i.i, align 4
  %context3.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 20
  %160 = ptrtoint ptr %context3.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call7.i240.i.i, ptr %context3.i.i, align 8
  %iocb_cmpl.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 26
  %161 = ptrtoint ptr %iocb_cmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @lpfc_ct_unsol_cmpl, ptr %iocb_cmpl.i.i, align 8
  %un1.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 11, i32 1
  %162 = ptrtoint ptr %un1.i.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %112, ptr %un1.i.i, align 4
  %unsli3.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 11, i32 3
  %163 = ptrtoint ptr %unsli3.i.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %114, ptr %unsli3.i.i, align 4
  %rpi_ids.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %118, i32 0, i32 25, i32 88
  %164 = ptrtoint ptr %rpi_ids.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rpi_ids.i.i, align 4
  %nlp_rpi.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call67.i, i32 0, i32 10
  %166 = ptrtoint ptr %nlp_rpi.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %nlp_rpi.i.i, align 4
  %idxprom.i.i = zext i16 %167 to i32
  %arrayidx.i.i = getelementptr i16, ptr %165, i32 %idxprom.i.i
  %168 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %arrayidx.i.i, align 2
  %conv100.i.i = zext i16 %169 to i32
  %170 = ptrtoint ptr %ulpIoTag32.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %conv100.i.i, ptr %ulpIoTag32.i.i, align 4
  %fc_ratov.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %118, i32 0, i32 58
  %171 = ptrtoint ptr %fc_ratov.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %fc_ratov.i.i, align 8
  %173 = ptrtoint ptr %ulpCommand.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %bf.load103.i.i = load i32, ptr %ulpCommand.i.i, align 4
  %bf.shl.i.i = mul i32 %172, 50331648
  %bf.clear104.i.i = and i32 %bf.load103.i.i, 16777215
  %bf.set105.i.i = or i32 %bf.clear104.i.i, %bf.shl.i.i
  store i32 %bf.set105.i.i, ptr %ulpCommand.i.i, align 4
  %retry.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 14
  %174 = ptrtoint ptr %retry.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %retry.i.i, align 2
  %vport106.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 17
  %175 = ptrtoint ptr %vport106.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %116, ptr %vport106.i.i, align 4
  %context_un.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 22
  %176 = ptrtoint ptr %context_un.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %context_un.i.i, align 8
  %bf.lshr.i.i = lshr exact i32 %bf.shl.i.i, 24
  %add.i.i = add nuw nsw i32 %bf.lshr.i.i, 16
  %drvrTimeout.i.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call50.i.i, i32 0, i32 16
  %177 = ptrtoint ptr %drvrTimeout.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %add.i.i, ptr %drvrTimeout.i.i, align 8
  %call109.i.i = tail call i32 @lpfc_sli_issue_iocb(ptr noundef %118, i32 noundef 2, ptr noundef nonnull %call50.i.i, i32 noundef 0) #20
  %conv110.i.i = trunc i32 %call109.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv110.i.i)
  %tobool111.not.i.i = icmp eq i8 %conv110.i.i, 0
  br i1 %tobool111.not.i.i, label %if.end53.i.i.if.end83_crit_edge, label %if.end113.i.i

if.end53.i.i.if.end83_crit_edge:                  ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

if.end113.i.i:                                    ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call114.i.i = tail call i32 @lpfc_nlp_put(ptr noundef nonnull %call67.i) #20
  tail call void @lpfc_sli_release_iocbq(ptr noundef %118, ptr noundef nonnull %call50.i.i) #20
  br label %ct_free_bmpvirt.i.i

ct_free_bmpvirt.i.i:                              ; preds = %if.end113.i.i, %if.end18.i.i.ct_free_bmpvirt.i.i_crit_edge
  %rc.0.i.i = phi i32 [ 6, %if.end113.i.i ], [ 5, %if.end18.i.i.ct_free_bmpvirt.i.i_crit_edge ]
  %178 = ptrtoint ptr %virt14.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %virt14.i.i, align 8
  %180 = ptrtoint ptr %phys12.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %phys12.i.i, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %118, ptr noundef %179, i32 noundef %181) #20
  br label %ct_free_bmp.i.i

ct_free_bmp.i.i:                                  ; preds = %ct_free_bmpvirt.i.i, %if.end11.i.i.ct_free_bmp.i.i_crit_edge
  %rc.1.i.i = phi i32 [ %rc.0.i.i, %ct_free_bmpvirt.i.i ], [ 4, %if.end11.i.i.ct_free_bmp.i.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i240.i.i) #20
  br label %ct_free_mpvirt.i.i

ct_free_mpvirt.i.i:                               ; preds = %ct_free_bmp.i.i, %if.end7.i.i.ct_free_mpvirt.i.i_crit_edge
  %rc.2.i.i = phi i32 [ %rc.1.i.i, %ct_free_bmp.i.i ], [ 3, %if.end7.i.i.ct_free_mpvirt.i.i_crit_edge ]
  %182 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %virt.i.i, align 8
  %184 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %phys.i.i, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %118, ptr noundef %183, i32 noundef %185) #20
  br label %ct_free_mp.i.i

ct_free_mp.i.i:                                   ; preds = %ct_free_mpvirt.i.i, %if.end.i.i.ct_free_mp.i.i_crit_edge
  %rc.3.i.i = phi i32 [ %rc.2.i.i, %ct_free_mpvirt.i.i ], [ 2, %if.end.i.i.ct_free_mp.i.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #20
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %ct_free_mp.i.i, %do.end128.i.do.body.i.i_crit_edge
  %rc.4.i.i = phi i32 [ %rc.3.i.i, %ct_free_mp.i.i ], [ 1, %do.end128.i.do.body.i.i_crit_edge ]
  %186 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %116, align 8
  %pcidev.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %187, i32 0, i32 165
  %188 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pcidev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 44
  %brd_no.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %187, i32 0, i32 197
  %190 = ptrtoint ptr %brd_no.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %brd_no.i.i, align 4
  %vpi.i.i = getelementptr inbounds %struct.lpfc_vport, ptr %116, i32 0, i32 4
  %192 = ptrtoint ptr %vpi.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %vpi.i.i, align 4
  %conv127.i.i = zext i16 %193 to i32
  %fc_flag.i.i = getelementptr inbounds %struct.lpfc_vport, ptr %116, i32 0, i32 7
  %194 = ptrtoint ptr %fc_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %fc_flag.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev.i.i, ptr noundef nonnull @.str.65, i32 noundef %191, i32 noundef %conv127.i.i, i32 noundef %rc.4.i.i, i32 noundef %195) #23
  br label %if.end83

if.else78:                                        ; preds = %land.lhs.true73.if.else78_crit_edge, %if.end68.if.else78_crit_edge
  %call79 = tail call i32 @lpfc_bsg_ct_unsol_event(ptr noundef %phba, ptr noundef %pring, ptr noundef %ctiocbq) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.else78.cleanup_crit_edge, label %if.else78.if.end83_crit_edge

if.else78.if.end83_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

if.else78.cleanup_crit_edge:                      ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end83:                                         ; preds = %if.else78.if.end83_crit_edge, %do.body.i.i, %if.end53.i.i.if.end83_crit_edge, %if.then88.i, %if.else85.i.if.end83_crit_edge, %do.end77.i, %if.end62.i.if.end83_crit_edge, %if.then46.i, %if.else43.i.if.end83_crit_edge, %do.end30.i, %if.then12.i, %if.else.i.if.end83_crit_edge, %do.end.i
  %196 = ptrtoint ptr %sli3_options23 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %sli3_options23, align 8
  %and85 = and i32 %197, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %198 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile ptr %head, ptr %head, align 4
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %head, ptr %1, align 4
  %prev.i284 = getelementptr inbounds %struct.list_head, ptr %ctiocbq, i32 0, i32 1
  %200 = ptrtoint ptr %prev.i284 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i284, align 4
  %call.i.i285 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %head, ptr noundef %201, ptr noundef %ctiocbq) #20
  br i1 %tobool86.not, label %if.else126, label %if.then87

if.then87:                                        ; preds = %if.end83
  br i1 %call.i.i285, label %if.end.i.i279, label %if.then87.list_add_tail.exit_crit_edge

if.then87.list_add_tail.exit_crit_edge:           ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_add_tail.exit

if.end.i.i279:                                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #22
  %202 = ptrtoint ptr %prev.i284 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %head, ptr %prev.i284, align 4
  %203 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %ctiocbq, ptr %head, align 4
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %1, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %head, ptr %201, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i279, %if.then87.list_add_tail.exit_crit_edge
  %206 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %206)
  %iocbq.0295 = load ptr, ptr %head, align 4
  %cmp89.not296 = icmp eq ptr %iocbq.0295, %head
  br i1 %cmp89.not296, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %list_add_tail.exit.for.body_crit_edge
  %iocbq.0297 = phi ptr [ %iocbq.0, %for.inc.for.body_crit_edge ], [ %iocbq.0295, %list_add_tail.exit.for.body_crit_edge ]
  %ulpBdeCount94 = getelementptr inbounds %struct.lpfc_iocbq, ptr %iocbq.0297, i32 0, i32 11, i32 2
  %207 = ptrtoint ptr %ulpBdeCount94 to i32
  call void @__asan_load4_noabort(i32 %207)
  %bf.load95 = load i32, ptr %ulpBdeCount94, align 4
  %208 = and i32 %bf.load95, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp98 = icmp eq i32 %208, 0
  br i1 %cmp98, label %for.body.for.inc_crit_edge, label %if.end101

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end101:                                        ; preds = %for.body
  %iocb93 = getelementptr inbounds %struct.lpfc_iocbq, ptr %iocbq.0297, i32 0, i32 11
  %context2102 = getelementptr inbounds %struct.lpfc_iocbq, ptr %iocbq.0297, i32 0, i32 19
  %209 = ptrtoint ptr %context2102 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %context2102, align 4
  store ptr null, ptr %context2102, align 4
  %211 = ptrtoint ptr %iocb93 to i32
  call void @__asan_load4_noabort(i32 %211)
  %bf.load106 = load i32, ptr %iocb93, align 4
  %bf.clear107 = and i32 %bf.load106, 16777215
  call fastcc void @lpfc_ct_unsol_buffer(ptr noundef %phba, ptr noundef %ctiocbq, ptr noundef %210, i32 noundef %bf.clear107)
  call void @lpfc_in_buf_free(ptr noundef %phba, ptr noundef %210) #20
  %212 = ptrtoint ptr %ulpBdeCount94 to i32
  call void @__asan_load4_noabort(i32 %212)
  %bf.load109 = load i32, ptr %ulpBdeCount94, align 4
  %213 = and i32 %bf.load109, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %213)
  %cmp112 = icmp eq i32 %213, 8
  br i1 %cmp112, label %if.then114, label %if.end101.for.inc_crit_edge

if.end101.for.inc_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then114:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #22
  %context3115 = getelementptr inbounds %struct.lpfc_iocbq, ptr %iocbq.0297, i32 0, i32 20
  %214 = ptrtoint ptr %context3115 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %context3115, align 8
  store ptr null, ptr %context3115, align 8
  %bde2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %iocbq.0297, i32 0, i32 11, i32 3, i32 0, i32 4
  %216 = ptrtoint ptr %bde2 to i32
  call void @__asan_load4_noabort(i32 %216)
  %bf.load118 = load i32, ptr %bde2, align 4
  %bf.clear119 = and i32 %bf.load118, 16777215
  call fastcc void @lpfc_ct_unsol_buffer(ptr noundef %phba, ptr noundef %ctiocbq, ptr noundef %215, i32 noundef %bf.clear119)
  call void @lpfc_in_buf_free(ptr noundef %phba, ptr noundef %215) #20
  br label %for.inc

for.inc:                                          ; preds = %if.then114, %if.end101.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %217 = ptrtoint ptr %iocbq.0297 to i32
  call void @__asan_load4_noabort(i32 %217)
  %iocbq.0 = load ptr, ptr %iocbq.0297, align 4
  %cmp89.not = icmp eq ptr %iocbq.0, %head
  br i1 %cmp89.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_add_tail.exit.for.end_crit_edge
  %call.i.i280 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %head) #20
  br i1 %call.i.i280, label %if.end.i.i281, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del.exit

if.end.i.i281:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  %218 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %1, align 4
  %220 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %219, ptr %prev1.i.i.i, align 4
  %223 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %221, ptr %219, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i281, %for.end.list_del.exit_crit_edge
  %224 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  br label %cleanup

if.else126:                                       ; preds = %if.end83
  br i1 %call.i.i285, label %if.end.i.i287, label %if.else126.list_add_tail.exit288_crit_edge

if.else126.list_add_tail.exit288_crit_edge:       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_add_tail.exit288

if.end.i.i287:                                    ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #22
  %225 = ptrtoint ptr %prev.i284 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %head, ptr %prev.i284, align 4
  %226 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %ctiocbq, ptr %head, align 4
  %227 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %201, ptr %1, align 4
  %228 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %228)
  store volatile ptr %head, ptr %201, align 4
  br label %list_add_tail.exit288

list_add_tail.exit288:                            ; preds = %if.end.i.i287, %if.else126.list_add_tail.exit288_crit_edge
  %229 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %229)
  %iocbq.1303 = load ptr, ptr %head, align 4
  %cmp134.not304 = icmp eq ptr %iocbq.1303, %head
  br i1 %cmp134.not304, label %list_add_tail.exit288.for.end184_crit_edge, label %list_add_tail.exit288.for.body138_crit_edge

list_add_tail.exit288.for.body138_crit_edge:      ; preds = %list_add_tail.exit288
  br label %for.body138

list_add_tail.exit288.for.end184_crit_edge:       ; preds = %list_add_tail.exit288
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end184

for.body138:                                      ; preds = %for.end176.for.body138_crit_edge, %list_add_tail.exit288.for.body138_crit_edge
  %iocbq.1305 = phi ptr [ %iocbq.1, %for.end176.for.body138_crit_edge ], [ %iocbq.1303, %list_add_tail.exit288.for.body138_crit_edge ]
  %iocb139 = getelementptr inbounds %struct.lpfc_iocbq, ptr %iocbq.1305, i32 0, i32 11
  %ulpBdeCount140 = getelementptr inbounds %struct.lpfc_iocbq, ptr %iocbq.1305, i32 0, i32 11, i32 2
  %230 = ptrtoint ptr %ulpBdeCount140 to i32
  call void @__asan_load4_noabort(i32 %230)
  %bf.load141 = load i32, ptr %ulpBdeCount140, align 4
  %231 = and i32 %bf.load141, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp144 = icmp eq i32 %231, 0
  br i1 %cmp144, label %if.then146, label %for.body138.if.end147_crit_edge

for.body138.if.end147_crit_edge:                  ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end147

if.then146:                                       ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @lpfc_ct_unsol_buffer(ptr noundef %phba, ptr noundef %iocbq.1305, ptr noundef null, i32 noundef 0)
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %for.body138.if.end147_crit_edge
  %232 = ptrtoint ptr %ulpBdeCount140 to i32
  call void @__asan_load4_noabort(i32 %232)
  %bf.load150298 = load i32, ptr %ulpBdeCount140, align 4
  %233 = and i32 %bf.load150298, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %cmp153301.not = icmp eq i32 %233, 0
  br i1 %cmp153301.not, label %if.end147.for.end176_crit_edge, label %for.body155

if.end147.for.end176_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end176

for.body155:                                      ; preds = %if.end147
  %addrLow164 = getelementptr %struct.lpfc_iocbq, ptr %iocbq.1305, i32 0, i32 11, i32 0, i32 0, i32 0, i32 1
  %234 = ptrtoint ptr %addrLow164 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %addrLow164, align 4
  %call168 = call ptr @lpfc_sli_ringpostbuf_get(ptr noundef %phba, ptr noundef %pring, i32 noundef %235) #20
  %236 = ptrtoint ptr %iocb139 to i32
  call void @__asan_load4_noabort(i32 %236)
  %bf.load172 = load i32, ptr %iocb139, align 4
  %bf.clear173 = and i32 %bf.load172, 16777215
  call fastcc void @lpfc_ct_unsol_buffer(ptr noundef %phba, ptr noundef %iocbq.1305, ptr noundef %call168, i32 noundef %bf.clear173)
  call void @lpfc_in_buf_free(ptr noundef %phba, ptr noundef %call168) #20
  %237 = ptrtoint ptr %ulpBdeCount140 to i32
  call void @__asan_load4_noabort(i32 %237)
  %bf.load150 = load i32, ptr %ulpBdeCount140, align 4
  %238 = and i32 %bf.load150, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp153.not = icmp eq i32 %238, 0
  br i1 %cmp153.not, label %for.body155.for.end176_crit_edge, label %for.body155.1

for.body155.for.end176_crit_edge:                 ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end176

for.body155.1:                                    ; preds = %for.body155
  %arrayidx157.1 = getelementptr %struct.lpfc_iocbq, ptr %iocbq.1305, i32 0, i32 11, i32 0, i32 0, i32 0, i32 3
  %addrLow164.1 = getelementptr %struct.lpfc_iocbq, ptr %iocbq.1305, i32 0, i32 11, i32 0, i32 0, i32 1
  %239 = ptrtoint ptr %addrLow164.1 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %addrLow164.1, align 4
  %call168.1 = call ptr @lpfc_sli_ringpostbuf_get(ptr noundef %phba, ptr noundef %pring, i32 noundef %240) #20
  %241 = ptrtoint ptr %arrayidx157.1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %bf.load172.1 = load i32, ptr %arrayidx157.1, align 4
  %bf.clear173.1 = and i32 %bf.load172.1, 16777215
  call fastcc void @lpfc_ct_unsol_buffer(ptr noundef %phba, ptr noundef %iocbq.1305, ptr noundef %call168.1, i32 noundef %bf.clear173.1)
  call void @lpfc_in_buf_free(ptr noundef %phba, ptr noundef %call168.1) #20
  %242 = ptrtoint ptr %ulpBdeCount140 to i32
  call void @__asan_load4_noabort(i32 %242)
  %bf.load150.1 = load i32, ptr %ulpBdeCount140, align 4
  %243 = and i32 %bf.load150.1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %243)
  %cmp153.1 = icmp eq i32 %243, 12
  br i1 %cmp153.1, label %for.body155.2, label %for.body155.1.for.end176_crit_edge

for.body155.1.for.end176_crit_edge:               ; preds = %for.body155.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end176

for.body155.2:                                    ; preds = %for.body155.1
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx157.2 = getelementptr %struct.lpfc_iocbq, ptr %iocbq.1305, i32 0, i32 11, i32 1
  %addrLow164.2 = getelementptr %struct.lpfc_iocbq, ptr %iocbq.1305, i32 0, i32 11, i32 2
  %244 = ptrtoint ptr %addrLow164.2 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %addrLow164.2, align 4
  %call168.2 = call ptr @lpfc_sli_ringpostbuf_get(ptr noundef %phba, ptr noundef %pring, i32 noundef %245) #20
  %246 = ptrtoint ptr %arrayidx157.2 to i32
  call void @__asan_load4_noabort(i32 %246)
  %bf.load172.2 = load i32, ptr %arrayidx157.2, align 4
  %bf.clear173.2 = and i32 %bf.load172.2, 16777215
  call fastcc void @lpfc_ct_unsol_buffer(ptr noundef %phba, ptr noundef %iocbq.1305, ptr noundef %call168.2, i32 noundef %bf.clear173.2)
  call void @lpfc_in_buf_free(ptr noundef %phba, ptr noundef %call168.2) #20
  br label %for.end176

for.end176:                                       ; preds = %for.body155.2, %for.body155.1.for.end176_crit_edge, %for.body155.for.end176_crit_edge, %if.end147.for.end176_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end147.for.end176_crit_edge ], [ 1, %for.body155.for.end176_crit_edge ], [ 2, %for.body155.1.for.end176_crit_edge ], [ 3, %for.body155.2 ]
  %call177 = call i32 @lpfc_post_buffer(ptr noundef %phba, ptr noundef %pring, i32 noundef %i.0.lcssa) #20
  %247 = ptrtoint ptr %iocbq.1305 to i32
  call void @__asan_load4_noabort(i32 %247)
  %iocbq.1 = load ptr, ptr %iocbq.1305, align 4
  %cmp134.not = icmp eq ptr %iocbq.1, %head
  br i1 %cmp134.not, label %for.end176.for.end184_crit_edge, label %for.end176.for.body138_crit_edge

for.end176.for.body138_crit_edge:                 ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body138

for.end176.for.end184_crit_edge:                  ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end184

for.end184:                                       ; preds = %for.end176.for.end184_crit_edge, %list_add_tail.exit288.for.end184_crit_edge
  %call.i.i289 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %head) #20
  br i1 %call.i.i289, label %if.end.i.i292, label %for.end184.list_del.exit294_crit_edge

for.end184.list_del.exit294_crit_edge:            ; preds = %for.end184
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del.exit294

if.end.i.i292:                                    ; preds = %for.end184
  call void @__sanitizer_cov_trace_pc() #22
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 4
  %250 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %head, align 4
  %prev1.i.i.i291 = getelementptr inbounds %struct.list_head, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %prev1.i.i.i291 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %249, ptr %prev1.i.i.i291, align 4
  %253 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %253)
  store volatile ptr %251, ptr %249, align 4
  br label %list_del.exit294

list_del.exit294:                                 ; preds = %if.end.i.i292, %for.end184.list_del.exit294_crit_edge
  %254 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit294, %list_del.exit, %if.else78.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13, %if.then10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #20
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli_hbqbuf_add_hbqs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_post_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_sli_ringpostbuf_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_bsg_ct_unsol_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_ct_unsol_buffer(ptr noundef %phba, ptr nocapture noundef readonly %piocbq, ptr noundef readnone %mp, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %mp, null
  br i1 %tobool.not.i, label %do.body.i, label %entry.do.body20.i_crit_edge

entry.do.body20.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body20.i

do.body.i:                                        ; preds = %entry
  %pport.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %0 = ptrtoint ptr %pport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pport.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  %cfg_log_verbose.i = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %cfg_log_verbose3.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond.in.i = select i1 %tobool1.not.i, ptr %cfg_log_verbose3.i, ptr %cfg_log_verbose.i
  %2 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %and.i = and i32 %cond.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %3 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %5 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %brd_no.i, align 4
  %ulpStatus.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %piocbq, i32 0, i32 11, i32 2
  %7 = ptrtoint ptr %ulpStatus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i = load i32, ptr %ulpStatus.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 4
  %bf.clear.i = and i32 %bf.lshr.i, 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev.i, ptr noundef nonnull @.str.67, i32 noundef %6, i32 noundef %bf.clear.i) #23
  br label %do.body20.i

if.else.i:                                        ; preds = %do.body.i
  %8 = ptrtoint ptr %cfg_log_verbose3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg_log_verbose3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not.i = icmp eq i32 %9, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else.i.do.body20.i_crit_edge

if.else.i.do.body20.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body20.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %brd_no10.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no10.i, align 4
  %ulpStatus12.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %piocbq, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %ulpStatus12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load13.i = load i32, ptr %ulpStatus12.i, align 4
  %bf.lshr14.i = lshr i32 %bf.load13.i, 4
  %bf.clear15.i = and i32 %bf.lshr14.i, 15
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.67, i32 noundef %11, i32 noundef %bf.clear15.i) #20
  br label %do.body20.i

do.body20.i:                                      ; preds = %if.then9.i, %if.else.i.do.body20.i_crit_edge, %do.end.i, %entry.do.body20.i_crit_edge
  %pport22.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %13 = ptrtoint ptr %pport22.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pport22.i, align 8
  %tobool23.not.i = icmp eq ptr %14, null
  %cfg_log_verbose26.i = getelementptr inbounds %struct.lpfc_vport, ptr %14, i32 0, i32 51
  %cfg_log_verbose28.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond30.in.i = select i1 %tobool23.not.i, ptr %cfg_log_verbose28.i, ptr %cfg_log_verbose26.i
  %15 = ptrtoint ptr %cond30.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond30.i = load i32, ptr %cond30.in.i, align 4
  %and31.i = and i32 %cond30.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else45.i, label %do.end36.i

do.end36.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #22
  %pcidev37.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %16 = ptrtoint ptr %pcidev37.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev37.i, align 4
  %dev38.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %brd_no39.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %18 = ptrtoint ptr %brd_no39.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brd_no39.i, align 4
  %ulpStatus41.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %piocbq, i32 0, i32 11, i32 2
  %20 = ptrtoint ptr %ulpStatus41.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load42.i = load i32, ptr %ulpStatus41.i, align 4
  %bf.lshr43.i = lshr i32 %bf.load42.i, 4
  %bf.clear44.i = and i32 %bf.lshr43.i, 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev38.i, ptr noundef nonnull @.str.70, i32 noundef %19, i32 noundef %size, i32 noundef %bf.clear44.i) #23
  br label %lpfc_ct_ignore_hbq_buffer.exit

if.else45.i:                                      ; preds = %do.body20.i
  %21 = ptrtoint ptr %cfg_log_verbose28.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg_log_verbose28.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool47.not.i = icmp eq i32 %22, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %if.else45.i.lpfc_ct_ignore_hbq_buffer.exit_crit_edge

if.else45.i.lpfc_ct_ignore_hbq_buffer.exit_crit_edge: ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_ct_ignore_hbq_buffer.exit

if.then48.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #22
  %brd_no49.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %23 = ptrtoint ptr %brd_no49.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brd_no49.i, align 4
  %ulpStatus51.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %piocbq, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %ulpStatus51.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load52.i = load i32, ptr %ulpStatus51.i, align 4
  %bf.lshr53.i = lshr i32 %bf.load52.i, 4
  %bf.clear54.i = and i32 %bf.lshr53.i, 15
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.70, i32 noundef %24, i32 noundef %size, i32 noundef %bf.clear54.i) #20
  br label %lpfc_ct_ignore_hbq_buffer.exit

lpfc_ct_ignore_hbq_buffer.exit:                   ; preds = %if.then48.i, %if.else45.i.lpfc_ct_ignore_hbq_buffer.exit_crit_edge, %do.end36.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_in_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_ct_handle_unsol_abort(ptr noundef %phba, ptr noundef %dmabuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lpfc_bsg_ct_unsol_abort(ptr noundef %phba, ptr noundef %dmabuf) #20
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_bsg_ct_unsol_abort(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_ct_free_iocb(ptr noundef %phba, ptr noundef %ctiocb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocb, i32 0, i32 22
  %0 = ptrtoint ptr %context_un to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %context_un, align 8
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocb, i32 0, i32 18
  %1 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context1, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %4, i32 noundef %6) #20
  tail call void @kfree(ptr noundef nonnull %2) #20
  %7 = ptrtoint ptr %context1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %context1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocb, i32 0, i32 19
  %8 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context2, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @lpfc_free_ct_rsp(ptr noundef %phba, ptr noundef nonnull %9)
  %10 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %context2, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %ctiocb, i32 0, i32 20
  %11 = ptrtoint ptr %context3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context3, align 8
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %if.then9

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  %virt11 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %virt11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt11, align 4
  %phys12 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %phys12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phys12, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %14, i32 noundef %16) #20
  tail call void @kfree(ptr noundef nonnull %12) #20
  %17 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %context3, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end7.if.end14_crit_edge
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %ctiocb) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_mbuf_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_free_ct_rsp(ptr noundef %phba, ptr noundef %mlist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlist, align 4
  %cmp.not27 = icmp eq ptr %1, %mlist
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %mlast.028 = phi ptr [ %next_mlast.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mlast.028 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next_mlast.0 = load ptr, ptr %mlast.028, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %mlast.028, i32 0, i32 1
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %mlast.028, i32 0, i32 2
  %5 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %4, i32 noundef %6) #20
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mlast.028) #20
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mlast.028, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %mlast.028 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mlast.028, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %mlast.028 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %mlast.028, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mlast.028, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %mlast.028) #20
  %cmp.not = icmp eq ptr %next_mlast.0, %mlist
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %virt14 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %mlist, i32 0, i32 1
  %15 = ptrtoint ptr %virt14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt14, align 4
  %phys15 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %mlist, i32 0, i32 2
  %17 = ptrtoint ptr %phys15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys15, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %16, i32 noundef %18) #20
  tail call void @kfree(ptr noundef %mlist) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_release_iocbq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lpfc_find_vport_by_did(ptr noundef %phba, i32 noundef %did) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 240
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_list_lock) #20
  %port_list = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 239
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %port_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp7.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp7.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %fc_myDID = getelementptr i8, ptr %.pn, i32 172
  %1 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fc_myDID, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp ne i32 %2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %did)
  %cmp10 = icmp eq i32 %2, %did
  %or.cond = and i1 %tobool.not, %cmp10
  br i1 %or.cond, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %vport_curr.0.le = getelementptr i8, ptr %.pn, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %vport_curr.0.le, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_list_lock, i32 noundef %call2) #20
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_vport_symbolic_port_name(ptr nocapture noundef readonly %vport, ptr noundef %symbol, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 197
  %2 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brd_no, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %symbol, i32 noundef %size, ptr noundef nonnull @.str, i32 noundef %3) #20
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_vport_symbolic_node_name(ptr nocapture noundef readonly %vport, ptr noundef %symbol, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %fwrev = alloca [32 x i8], align 1
  %tmp = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fwrev) #20
  %0 = call ptr @memset(ptr %fwrev, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp) #20
  %1 = call ptr @memset(ptr %tmp, i32 0, i32 64)
  %2 = call ptr @memset(ptr %symbol, i32 0, i32 %size)
  %3 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vport, align 8
  %ModelName = getelementptr inbounds %struct.lpfc_hba, ptr %4, i32 0, i32 202
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %ModelName) #20
  %call3 = call i32 @strlcat(ptr noundef %symbol, ptr noundef nonnull %tmp, i32 noundef %size) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %size)
  %cmp.not = icmp ult i32 %call3, %size
  br i1 %cmp.not, label %if.end, label %entry.buffer_done_crit_edge

entry.buffer_done_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %buffer_done

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vport, align 8
  call void @lpfc_decode_firmware_rev(ptr noundef %6, ptr noundef nonnull %fwrev, i32 noundef 0)
  %call8 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str.2, ptr noundef nonnull %fwrev) #20
  %call10 = call i32 @strlcat(ptr noundef %symbol, ptr noundef nonnull %tmp, i32 noundef %size) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %size)
  %cmp11.not = icmp ult i32 %call10, %size
  br i1 %cmp11.not, label %if.end13, label %if.end.buffer_done_crit_edge

if.end.buffer_done_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %buffer_done

if.end13:                                         ; preds = %if.end
  %call15 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.72) #20
  %call17 = call i32 @strlcat(ptr noundef %symbol, ptr noundef nonnull %tmp, i32 noundef %size) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %size)
  %cmp18.not = icmp ult i32 %call17, %size
  br i1 %cmp18.not, label %if.end20, label %if.end13.buffer_done_crit_edge

if.end13.buffer_done_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %buffer_done

if.end20:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vport, align 8
  %os_host_name = getelementptr inbounds %struct.lpfc_hba, ptr %8, i32 0, i32 427
  %call24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str.4, ptr noundef %os_host_name) #20
  %call26 = call i32 @strlcat(ptr noundef %symbol, ptr noundef nonnull %tmp, i32 noundef %size) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %size)
  %cmp27.not = icmp ult i32 %call26, %size
  br i1 %cmp27.not, label %if.end29, label %if.end20.buffer_done_crit_edge

if.end20.buffer_done_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %buffer_done

if.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  %call33 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_uts_ns) #20
  %call35 = call i32 @strlcat(ptr noundef %symbol, ptr noundef nonnull %tmp, i32 noundef %size) #20
  br label %buffer_done

buffer_done:                                      ; preds = %if.end29, %if.end20.buffer_done_crit_edge, %if.end13.buffer_done_crit_edge, %if.end.buffer_done_crit_edge, %entry.buffer_done_crit_edge
  %call36 = call i32 @strnlen(ptr noundef %symbol, i32 noundef %size) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fwrev) #20
  ret i32 %call36
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_decode_firmware_rev(ptr noundef %phba, ptr nocapture noundef writeonly %fwrevision, i32 noundef %flag) local_unnamed_addr #4 align 64 {
entry:
  %str = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str) #20
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %0 = call ptr @memset(ptr %str, i32 255, i32 16)
  %1 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %opFwName = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 160, i32 2, i32 12
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwrevision, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef %opFwName)
  br label %if.end81

if.else:                                          ; preds = %entry
  %rBit = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 160, i32 2, i32 5
  %3 = ptrtoint ptr %rBit to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rBit, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else66, label %if.then3

if.then3:                                         ; preds = %if.else
  %sli_flag = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 1
  %5 = ptrtoint ptr %sli_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sli_flag, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %sli2FwRev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 160, i32 2, i32 15
  %sli1FwRev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 160, i32 2, i32 13
  %rev.0.in = select i1 %tobool4.not, ptr %sli1FwRev, ptr %sli2FwRev
  %7 = ptrtoint ptr %rev.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %rev.0 = load i32, ptr %rev.0.in, align 4
  %and9 = lshr i32 %rev.0, 12
  %shr = and i32 %and9, 15
  %and10 = lshr i32 %rev.0, 8
  %shr11 = and i32 %and10, 15
  %and12 = lshr i32 %rev.0, 6
  %shr13 = and i32 %and12, 3
  %and14 = lshr i32 %rev.0, 4
  %shr15 = and i32 %and14, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.lpfc_decode_firmware_rev, i32 0, i32 %shr15
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sli2FwName = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 160, i32 2, i32 16
  %sli1FwName = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 160, i32 2, i32 14
  %fwname.0 = select i1 %tobool4.not, ptr %sli1FwName, ptr %sli2FwName
  %9 = ptrtoint ptr %fwname.0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fwname.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %cmp31 = icmp eq i8 %10, 32
  br i1 %cmp31, label %if.then33, label %if.then3.for.inc_crit_edge

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then33:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  %11 = ptrtoint ptr %fwname.0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %fwname.0, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.then3.for.inc_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %fwname.0, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp31.1 = icmp eq i8 %13, 32
  br i1 %cmp31.1, label %if.then33.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

if.then33.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then33.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %fwname.0, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %cmp31.2 = icmp eq i8 %16, 32
  br i1 %cmp31.2, label %if.then33.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.2

if.then33.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then33.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %fwname.0, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %19)
  %cmp31.3 = icmp eq i8 %19, 32
  br i1 %cmp31.3, label %if.then33.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.3

if.then33.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then33.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %fwname.0, i32 4
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %22)
  %cmp31.4 = icmp eq i8 %22, 32
  br i1 %cmp31.4, label %if.then33.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.4

if.then33.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then33.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %fwname.0, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %25)
  %cmp31.5 = icmp eq i8 %25, 32
  br i1 %cmp31.5, label %if.then33.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.5

if.then33.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then33.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr i8, ptr %fwname.0, i32 6
  %27 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %28)
  %cmp31.6 = icmp eq i8 %28, 32
  br i1 %cmp31.6, label %if.then33.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.6

if.then33.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  %29 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then33.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr i8, ptr %fwname.0, i32 7
  %30 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %31)
  %cmp31.7 = icmp eq i8 %31, 32
  br i1 %cmp31.7, label %if.then33.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.7

if.then33.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx.7, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then33.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr i8, ptr %fwname.0, i32 8
  %33 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %34)
  %cmp31.8 = icmp eq i8 %34, 32
  br i1 %cmp31.8, label %if.then33.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.8

if.then33.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  %35 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx.8, align 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then33.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr i8, ptr %fwname.0, i32 9
  %36 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %37)
  %cmp31.9 = icmp eq i8 %37, 32
  br i1 %cmp31.9, label %if.then33.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.9

if.then33.9:                                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  %38 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx.9, align 1
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then33.9, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr i8, ptr %fwname.0, i32 10
  %39 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %40)
  %cmp31.10 = icmp eq i8 %40, 32
  br i1 %cmp31.10, label %if.then33.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.10

if.then33.10:                                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  %41 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx.10, align 1
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then33.10, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr i8, ptr %fwname.0, i32 11
  %42 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %43)
  %cmp31.11 = icmp eq i8 %43, 32
  br i1 %cmp31.11, label %if.then33.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.11

if.then33.11:                                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  %44 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx.11, align 1
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then33.11, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr i8, ptr %fwname.0, i32 12
  %45 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %46)
  %cmp31.12 = icmp eq i8 %46, 32
  br i1 %cmp31.12, label %if.then33.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.12

if.then33.12:                                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  %47 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx.12, align 1
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then33.12, %for.inc.11.for.inc.12_crit_edge
  %arrayidx.13 = getelementptr i8, ptr %fwname.0, i32 13
  %48 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %49)
  %cmp31.13 = icmp eq i8 %49, 32
  br i1 %cmp31.13, label %if.then33.13, label %for.inc.12.for.inc.13_crit_edge

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.13

if.then33.13:                                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  %50 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx.13, align 1
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then33.13, %for.inc.12.for.inc.13_crit_edge
  %arrayidx.14 = getelementptr i8, ptr %fwname.0, i32 14
  %51 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %52)
  %cmp31.14 = icmp eq i8 %52, 32
  br i1 %cmp31.14, label %if.then33.14, label %for.inc.13.for.inc.14_crit_edge

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.14

if.then33.14:                                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  %53 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx.14, align 1
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then33.14, %for.inc.13.for.inc.14_crit_edge
  %arrayidx.15 = getelementptr i8, ptr %fwname.0, i32 15
  %54 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %55)
  %cmp31.15 = icmp eq i8 %55, 32
  br i1 %cmp31.15, label %if.then33.15, label %for.inc.14.for.inc.15_crit_edge

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.15

if.then33.15:                                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  %56 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx.15, align 1
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then33.15, %for.inc.14.for.inc.15_crit_edge
  %57 = call ptr @memcpy(ptr %str, ptr %fwname.0, i32 12)
  %and19 = and i32 %rev.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %tobool56.not = icmp eq i32 %flag, 0
  br i1 %tobool56.not, label %if.else61, label %if.then57

if.then57:                                        ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #22
  %call60 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %fwrevision, ptr noundef nonnull @.str.37, i32 noundef %shr, i32 noundef %shr11, i32 noundef %shr13, i32 noundef %switch.load, i32 noundef %and19, ptr noundef nonnull %str)
  br label %if.end81

if.else61:                                        ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #22
  %call63 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %fwrevision, ptr noundef nonnull @.str.38, i32 noundef %shr, i32 noundef %shr11, i32 noundef %shr13, i32 noundef %switch.load, i32 noundef %and19)
  br label %if.end81

if.else66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %smFwRev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 160, i32 2, i32 3
  %58 = ptrtoint ptr %smFwRev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %smFwRev, align 4
  %shr69 = lshr i32 %59, 24
  %and70 = lshr i32 %59, 20
  %shr71 = and i32 %and70, 15
  %and72 = lshr i32 %59, 16
  %shr73 = and i32 %and72, 15
  %and74 = lshr i32 %59, 8
  %and77 = and i32 %59, 255
  %conv78 = and i32 %and74, 255
  %call79 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %fwrevision, ptr noundef nonnull @.str.38, i32 noundef %shr69, i32 noundef %shr71, i32 noundef %shr73, i32 noundef %conv78, i32 noundef %and77)
  br label %if.end81

if.end81:                                         ; preds = %if.else66, %if.else61, %if.then57, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lpfc_get_gidft_type(ptr nocapture readnone %vport, ptr nocapture noundef readonly %cmdiocb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 18
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %un = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %3, i32 0, i32 10
  %Fc4Type = getelementptr inbounds %struct.gid, ptr %un, i32 0, i32 3
  %4 = ptrtoint ptr %Fc4Type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %Fc4Type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %5)
  %switch.selectcmp = icmp eq i8 %5, 40
  %switch.select = select i1 %switch.selectcmp, i32 40, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %switch.selectcmp12 = icmp eq i8 %5, 8
  %switch.select13 = select i1 %switch.selectcmp12, i32 8, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %switch.select13, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_ns_cmd(ptr noundef %vport, i32 noundef %cmdcode, i8 noundef zeroext %retry, i32 noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %call = tail call ptr @lpfc_findnode_did(ptr noundef %vport, i32 noundef 16777212) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body448_crit_edge, label %lor.lhs.false

entry.do.body448_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body448

lor.lhs.false:                                    ; preds = %entry
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlp_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %3)
  %cmp.not = icmp eq i16 %3, 6
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.body448_crit_edge

lor.lhs.false.do.body448_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body448

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 20) #24
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end.do.body448_crit_edge, label %if.end6

if.end.do.body448_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body448

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %prev.i, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 2
  %call7 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %1, i32 noundef 256, ptr noundef %phys) #20
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %virt, align 8
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.ns_cmd_free_mp_crit_edge, label %if.end11

if.end6.ns_cmd_free_mp_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %ns_cmd_free_mp

if.end11:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i720 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 20) #24
  %tobool13.not = icmp eq ptr %call7.i720, null
  br i1 %tobool13.not, label %if.end11.ns_cmd_free_mpvirt_crit_edge, label %if.end15

if.end11.ns_cmd_free_mpvirt_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %ns_cmd_free_mpvirt

if.end15:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %call7.i720 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i720, ptr %call7.i720, align 8
  %prev.i721 = getelementptr inbounds %struct.list_head, ptr %call7.i720, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i721 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i720, ptr %prev.i721, align 4
  %phys17 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i720, i32 0, i32 2
  %call18 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %1, i32 noundef 256, ptr noundef %phys17) #20
  %virt19 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i720, i32 0, i32 1
  %11 = ptrtoint ptr %virt19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %virt19, align 8
  %tobool21.not = icmp eq ptr %call18, null
  br i1 %tobool21.not, label %if.end15.ns_cmd_free_bmp_crit_edge, label %do.body

if.end15.ns_cmd_free_bmp_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %ns_cmd_free_bmp

do.body:                                          ; preds = %if.end15
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %12 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %15, i32 0, i32 165
  %16 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %15, i32 0, i32 197
  %18 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %20 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vpi, align 4
  %conv29 = zext i16 %21 to i32
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %22 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fc_flag, align 4
  %fc_rscn_id_cnt = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 28
  %24 = ptrtoint ptr %fc_rscn_id_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fc_rscn_id_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %19, i32 noundef %conv29, i32 noundef %cmdcode, i32 noundef %23, i32 noundef %25, i32 noundef %context) #23
  br label %do.end43

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not = icmp eq i32 %13, 0
  br i1 %tobool31.not, label %if.then32, label %if.else.do.end43_crit_edge

if.else.do.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end43

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vport, align 8
  %brd_no35 = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 197
  %28 = ptrtoint ptr %brd_no35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %brd_no35, align 4
  %vpi36 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %30 = ptrtoint ptr %vpi36 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vpi36, align 4
  %conv37 = zext i16 %31 to i32
  %fc_flag38 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %32 = ptrtoint ptr %fc_flag38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fc_flag38, align 4
  %fc_rscn_id_cnt39 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 28
  %34 = ptrtoint ptr %fc_rscn_id_cnt39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fc_rscn_id_cnt39, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %27, ptr noundef nonnull @.str.6, i32 noundef %29, i32 noundef %conv37, i32 noundef %cmdcode, i32 noundef %33, i32 noundef %35, i32 noundef %context) #20
  br label %do.end43

do.end43:                                         ; preds = %if.then32, %if.else.do.end43_crit_edge, %do.end
  %36 = ptrtoint ptr %virt19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virt19, align 8
  %38 = call ptr @memset(ptr %37, i32 0, i32 12)
  %39 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phys, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %addrLow = getelementptr inbounds %struct.ulp_bde64, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %addrLow to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %addrLow, align 4
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %37, align 4
  %44 = zext i32 %cmdcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %cmdcode, label %if.end146 [
    i32 369, label %if.end146.thread
    i32 417, label %if.end146.thread726
    i32 287, label %if.end146.thread731
    i32 279, label %if.end146.thread736
    i32 535, label %if.end146.thread741
    i32 531, label %if.end146.thread747
    i32 536, label %if.end146.thread752
    i32 569, label %if.end146.thread757
    i32 768, label %if.end146.thread762
    i32 543, label %if.end146.thread767
  ]

if.end146.thread:                                 ; preds = %do.end43
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 335544320, ptr %37, align 4
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %virt, align 8
  %48 = getelementptr inbounds i8, ptr %47, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 276)
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16777216, ptr %47, align 4
  %FsType722 = getelementptr %struct.lpfc_sli_ct_request, ptr %47, i32 0, i32 1
  %51 = ptrtoint ptr %FsType722 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -4, ptr %FsType722, align 4
  %FsSubType723 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %FsSubType723 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %FsSubType723, align 1
  %CommandResponse724 = getelementptr %struct.lpfc_sli_ct_request, ptr %47, i32 0, i32 5
  %53 = ptrtoint ptr %CommandResponse724 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 24182784, ptr %CommandResponse724, align 4
  %conv164 = trunc i32 %context to i8
  %un = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %47, i32 0, i32 10
  %Fc4Type = getelementptr inbounds %struct.gid, ptr %un, i32 0, i32 3
  %54 = ptrtoint ptr %Fc4Type to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv164, ptr %Fc4Type, align 1
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %55 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %56)
  %cmp165 = icmp ult i32 %56, 11
  br i1 %cmp165, label %if.then167, label %if.end146.thread.if.end169_crit_edge

if.end146.thread.if.end169_crit_edge:             ; preds = %if.end146.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end169

if.end146.thread726:                              ; preds = %do.end43
  %57 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 335544320, ptr %37, align 4
  %58 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %virt, align 8
  %60 = getelementptr inbounds i8, ptr %59, i32 4
  %61 = call ptr @memset(ptr %60, i32 0, i32 276)
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16777216, ptr %59, align 4
  %FsType727 = getelementptr %struct.lpfc_sli_ct_request, ptr %59, i32 0, i32 1
  %63 = ptrtoint ptr %FsType727 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -4, ptr %FsType727, align 4
  %FsSubType728 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %59, i32 0, i32 2
  %64 = ptrtoint ptr %FsSubType728 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %FsSubType728, align 1
  %CommandResponse729 = getelementptr %struct.lpfc_sli_ct_request, ptr %59, i32 0, i32 5
  %65 = ptrtoint ptr %CommandResponse729 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 27328512, ptr %CommandResponse729, align 4
  %conv175 = trunc i32 %context to i8
  %un176 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %59, i32 0, i32 10
  %66 = ptrtoint ptr %un176 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv175, ptr %un176, align 4
  %port_state177 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %67 = ptrtoint ptr %port_state177 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port_state177, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %68)
  %cmp178 = icmp ult i32 %68, 11
  br i1 %cmp178, label %if.then180, label %if.end146.thread726.if.end182_crit_edge

if.end146.thread726.if.end182_crit_edge:          ; preds = %if.end146.thread726
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end182

if.end146.thread731:                              ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #22
  %69 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 335544320, ptr %37, align 4
  %70 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %virt, align 8
  %72 = getelementptr inbounds i8, ptr %71, i32 4
  %73 = call ptr @memset(ptr %72, i32 0, i32 276)
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 16777216, ptr %71, align 4
  %FsType732 = getelementptr %struct.lpfc_sli_ct_request, ptr %71, i32 0, i32 1
  %75 = ptrtoint ptr %FsType732 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -4, ptr %FsType732, align 4
  %FsSubType733 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %71, i32 0, i32 2
  %76 = ptrtoint ptr %FsSubType733 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 2, ptr %FsSubType733, align 1
  %CommandResponse734 = getelementptr %struct.lpfc_sli_ct_request, ptr %71, i32 0, i32 5
  %77 = ptrtoint ptr %CommandResponse734 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 18808832, ptr %CommandResponse734, align 4
  %un188 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %71, i32 0, i32 10
  %78 = ptrtoint ptr %un188 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %context, ptr %un188, align 4
  br label %sw.epilog

if.end146.thread736:                              ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #22
  %79 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 335544320, ptr %37, align 4
  %80 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %virt, align 8
  %82 = getelementptr inbounds i8, ptr %81, i32 4
  %83 = call ptr @memset(ptr %82, i32 0, i32 276)
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 16777216, ptr %81, align 4
  %FsType737 = getelementptr %struct.lpfc_sli_ct_request, ptr %81, i32 0, i32 1
  %85 = ptrtoint ptr %FsType737 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -4, ptr %FsType737, align 4
  %FsSubType738 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %81, i32 0, i32 2
  %86 = ptrtoint ptr %FsSubType738 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 2, ptr %FsSubType738, align 1
  %CommandResponse739 = getelementptr %struct.lpfc_sli_ct_request, ptr %81, i32 0, i32 5
  %87 = ptrtoint ptr %CommandResponse739 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 18284544, ptr %CommandResponse739, align 4
  %un194 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %81, i32 0, i32 10
  %88 = ptrtoint ptr %un194 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %context, ptr %un194, align 4
  br label %sw.epilog

if.end146.thread741:                              ; preds = %do.end43
  %89 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 872415232, ptr %37, align 4
  %90 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %virt, align 8
  %92 = getelementptr inbounds i8, ptr %91, i32 4
  %93 = call ptr @memset(ptr %92, i32 0, i32 276)
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 16777216, ptr %91, align 4
  %FsType742 = getelementptr %struct.lpfc_sli_ct_request, ptr %91, i32 0, i32 1
  %95 = ptrtoint ptr %FsType742 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -4, ptr %FsType742, align 4
  %FsSubType743 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %91, i32 0, i32 2
  %96 = ptrtoint ptr %FsSubType743 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 2, ptr %FsSubType743, align 1
  %CommandResponse744 = getelementptr %struct.lpfc_sli_ct_request, ptr %91, i32 0, i32 5
  %ct_flags = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 8
  %97 = ptrtoint ptr %ct_flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ct_flags, align 8
  %and197 = and i32 %98, -17
  store i32 %and197, ptr %ct_flags, align 8
  %99 = ptrtoint ptr %CommandResponse744 to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load199 = load i32, ptr %CommandResponse744, align 4
  %bf.clear200 = and i32 %bf.load199, 65535
  %bf.set201 = or i32 %bf.clear200, 35061760
  store i32 %bf.set201, ptr %CommandResponse744, align 4
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %100 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fc_myDID, align 8
  %un202 = getelementptr %struct.lpfc_sli_ct_request, ptr %91, i32 0, i32 10
  %102 = ptrtoint ptr %un202 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %un202, align 4
  %cfg_enable_fc4_type = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 52
  %103 = ptrtoint ptr %cfg_enable_fc4_type to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cfg_enable_fc4_type, align 8
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %104, label %if.end146.thread741.if.end215_crit_edge [
    i32 3, label %if.end146.thread741.if.then210_crit_edge
    i32 1, label %if.end146.thread741.if.then210_crit_edge773
  ]

if.end146.thread741.if.then210_crit_edge773:      ; preds = %if.end146.thread741
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then210

if.end146.thread741.if.then210_crit_edge:         ; preds = %if.end146.thread741
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then210

if.end146.thread741.if.end215_crit_edge:          ; preds = %if.end146.thread741
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end215

if.end146.thread747:                              ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #22
  %106 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 469762048, ptr %37, align 4
  %107 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %virt, align 8
  %109 = getelementptr inbounds i8, ptr %108, i32 4
  %110 = call ptr @memset(ptr %109, i32 0, i32 276)
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 16777216, ptr %108, align 4
  %FsType748 = getelementptr %struct.lpfc_sli_ct_request, ptr %108, i32 0, i32 1
  %112 = ptrtoint ptr %FsType748 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -4, ptr %FsType748, align 4
  %FsSubType749 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %108, i32 0, i32 2
  %113 = ptrtoint ptr %FsSubType749 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 2, ptr %FsSubType749, align 1
  %CommandResponse750 = getelementptr %struct.lpfc_sli_ct_request, ptr %108, i32 0, i32 5
  %ct_flags290 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 8
  %114 = ptrtoint ptr %ct_flags290 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ct_flags290, align 8
  %and291 = and i32 %115, -3
  store i32 %and291, ptr %ct_flags290, align 8
  %116 = ptrtoint ptr %CommandResponse750 to i32
  call void @__asan_load4_noabort(i32 %116)
  %bf.load293 = load i32, ptr %CommandResponse750, align 4
  %bf.clear294 = and i32 %bf.load293, 65535
  %bf.set295 = or i32 %bf.clear294, 34799616
  store i32 %bf.set295, ptr %CommandResponse750, align 4
  %fc_myDID296 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %117 = ptrtoint ptr %fc_myDID296 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %fc_myDID296, align 8
  %un297 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %108, i32 0, i32 10
  %119 = ptrtoint ptr %un297 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %un297, align 4
  %wwnn = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %108, i32 0, i32 10, i32 0, i32 1
  %fc_nodename = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 31
  %120 = ptrtoint ptr %fc_nodename to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %fc_nodename, align 8
  %122 = ptrtoint ptr %wwnn to i32
  call void @__asan_storeN_noabort(i32 %122, i32 8)
  store i64 %121, ptr %wwnn, align 4
  br label %sw.epilog

if.end146.thread752:                              ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #22
  %123 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 335609856, ptr %37, align 4
  %124 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %virt, align 8
  %126 = getelementptr inbounds i8, ptr %125, i32 4
  %127 = call ptr @memset(ptr %126, i32 0, i32 276)
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 16777216, ptr %125, align 4
  %FsType753 = getelementptr %struct.lpfc_sli_ct_request, ptr %125, i32 0, i32 1
  %129 = ptrtoint ptr %FsType753 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -4, ptr %FsType753, align 4
  %FsSubType754 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %125, i32 0, i32 2
  %130 = ptrtoint ptr %FsSubType754 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 2, ptr %FsSubType754, align 1
  %CommandResponse755 = getelementptr %struct.lpfc_sli_ct_request, ptr %125, i32 0, i32 5
  %ct_flags301 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 8
  %131 = ptrtoint ptr %ct_flags301 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ct_flags301, align 8
  %and302 = and i32 %132, -9
  store i32 %and302, ptr %ct_flags301, align 8
  %133 = ptrtoint ptr %CommandResponse755 to i32
  call void @__asan_load4_noabort(i32 %133)
  %bf.load304 = load i32, ptr %CommandResponse755, align 4
  %bf.clear305 = and i32 %bf.load304, 65535
  %bf.set306 = or i32 %bf.clear305, 35127296
  store i32 %bf.set306, ptr %CommandResponse755, align 4
  %fc_myDID307 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %134 = ptrtoint ptr %fc_myDID307 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %fc_myDID307, align 8
  %un308 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %125, i32 0, i32 10
  %136 = ptrtoint ptr %un308 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %un308, align 4
  %symbname = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %125, i32 0, i32 10, i32 0, i32 2
  %137 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %vport, align 8
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %138, i32 0, i32 197
  %139 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %brd_no.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %symbname, i32 noundef 255, ptr noundef nonnull @.str, i32 noundef %140) #20
  %conv313 = trunc i32 %call.i to i8
  %len = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %125, i32 0, i32 10, i32 0, i32 1
  %141 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv313, ptr %len, align 4
  br label %sw.epilog

if.end146.thread757:                              ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #22
  %142 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 402718720, ptr %37, align 4
  %143 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %virt, align 8
  %145 = getelementptr inbounds i8, ptr %144, i32 4
  %146 = call ptr @memset(ptr %145, i32 0, i32 276)
  %147 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 16777216, ptr %144, align 4
  %FsType758 = getelementptr %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 1
  %148 = ptrtoint ptr %FsType758 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -4, ptr %FsType758, align 4
  %FsSubType759 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 2
  %149 = ptrtoint ptr %FsSubType759 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 2, ptr %FsSubType759, align 1
  %CommandResponse760 = getelementptr %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 5
  %ct_flags316 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 8
  %150 = ptrtoint ptr %ct_flags316 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ct_flags316, align 8
  %and317 = and i32 %151, -5
  store i32 %and317, ptr %ct_flags316, align 8
  %152 = ptrtoint ptr %CommandResponse760 to i32
  call void @__asan_load4_noabort(i32 %152)
  %bf.load319 = load i32, ptr %CommandResponse760, align 4
  %bf.clear320 = and i32 %bf.load319, 65535
  %bf.set321 = or i32 %bf.clear320, 37289984
  store i32 %bf.set321, ptr %CommandResponse760, align 4
  %un322 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 10
  %fc_nodename325 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 31
  %153 = ptrtoint ptr %fc_nodename325 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %fc_nodename325, align 8
  %155 = ptrtoint ptr %un322 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 8)
  store i64 %154, ptr %un322, align 4
  %symbname327 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 10, i32 0, i32 2, i32 4
  %call329 = tail call i32 @lpfc_vport_symbolic_node_name(ptr noundef %vport, ptr noundef %symbname327, i32 noundef 255)
  %conv330 = trunc i32 %call329 to i8
  %len332 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 10, i32 0, i32 2, i32 3
  %156 = ptrtoint ptr %len332 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv330, ptr %len332, align 4
  br label %sw.epilog

if.end146.thread762:                              ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #22
  %157 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 335544320, ptr %37, align 4
  %158 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %virt, align 8
  %160 = getelementptr inbounds i8, ptr %159, i32 4
  %161 = call ptr @memset(ptr %160, i32 0, i32 276)
  %162 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 16777216, ptr %159, align 4
  %FsType763 = getelementptr %struct.lpfc_sli_ct_request, ptr %159, i32 0, i32 1
  %163 = ptrtoint ptr %FsType763 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -4, ptr %FsType763, align 4
  %FsSubType764 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %159, i32 0, i32 2
  %164 = ptrtoint ptr %FsSubType764 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 2, ptr %FsSubType764, align 1
  %CommandResponse765 = getelementptr %struct.lpfc_sli_ct_request, ptr %159, i32 0, i32 5
  %165 = ptrtoint ptr %CommandResponse765 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 50331648, ptr %CommandResponse765, align 4
  %fc_myDID338 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %166 = ptrtoint ptr %fc_myDID338 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %fc_myDID338, align 8
  %un339 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %159, i32 0, i32 10
  %168 = ptrtoint ptr %un339 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %un339, align 4
  br label %sw.epilog

if.end146.thread767:                              ; preds = %do.end43
  %169 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 402653184, ptr %37, align 4
  %170 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %virt, align 8
  %172 = getelementptr inbounds i8, ptr %171, i32 4
  %173 = call ptr @memset(ptr %172, i32 0, i32 276)
  %174 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 16777216, ptr %171, align 4
  %FsType768 = getelementptr %struct.lpfc_sli_ct_request, ptr %171, i32 0, i32 1
  %175 = ptrtoint ptr %FsType768 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -4, ptr %FsType768, align 4
  %FsSubType769 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %171, i32 0, i32 2
  %176 = ptrtoint ptr %FsSubType769 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 2, ptr %FsSubType769, align 1
  %CommandResponse770 = getelementptr %struct.lpfc_sli_ct_request, ptr %171, i32 0, i32 5
  %ct_flags341 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 8
  %177 = ptrtoint ptr %ct_flags341 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ct_flags341, align 8
  %and342 = and i32 %178, -2
  store i32 %and342, ptr %ct_flags341, align 8
  %179 = ptrtoint ptr %CommandResponse770 to i32
  call void @__asan_load4_noabort(i32 %179)
  %bf.load344 = load i32, ptr %CommandResponse770, align 4
  %bf.clear345 = and i32 %bf.load344, 65535
  %bf.set346 = or i32 %bf.clear345, 35586048
  store i32 %bf.set346, ptr %CommandResponse770, align 4
  %fc_myDID347 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %180 = ptrtoint ptr %fc_myDID347 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %fc_myDID347, align 8
  %un348 = getelementptr %struct.lpfc_sli_ct_request, ptr %171, i32 0, i32 10
  %182 = ptrtoint ptr %un348 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %un348, align 4
  %fbits = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %171, i32 0, i32 10, i32 0, i32 2, i32 1
  %183 = ptrtoint ptr %fbits to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 2, ptr %fbits, align 2
  %cfg_enable_fc4_type351 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 52
  %184 = ptrtoint ptr %cfg_enable_fc4_type351 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cfg_enable_fc4_type351, align 8
  %186 = and i32 %185, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %186)
  %switch719 = icmp eq i32 %186, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %context)
  %cmp358 = icmp eq i32 %context, 40
  %or.cond = and i1 %cmp358, %switch719
  br i1 %or.cond, label %if.then360, label %if.else374

if.end146:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #22
  %187 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %37, align 4
  %189 = tail call i32 @llvm.bswap.i32(i32 %188)
  %190 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %37, align 4
  %191 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %virt, align 8
  %193 = getelementptr inbounds i8, ptr %192, i32 4
  %194 = call ptr @memset(ptr %193, i32 0, i32 276)
  %195 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 16777216, ptr %192, align 4
  %FsType = getelementptr %struct.lpfc_sli_ct_request, ptr %192, i32 0, i32 1
  %196 = ptrtoint ptr %FsType to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -4, ptr %FsType, align 4
  %FsSubType = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %192, i32 0, i32 2
  %197 = ptrtoint ptr %FsSubType to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 2, ptr %FsSubType, align 1
  br label %sw.epilog

if.then167:                                       ; preds = %if.end146.thread
  call void @__sanitizer_cov_trace_pc() #22
  %198 = ptrtoint ptr %port_state to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 11, ptr %port_state, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.end146.thread.if.end169_crit_edge
  tail call void @lpfc_set_disctmo(ptr noundef %vport) #20
  br label %sw.epilog

if.then180:                                       ; preds = %if.end146.thread726
  call void @__sanitizer_cov_trace_pc() #22
  %199 = ptrtoint ptr %port_state177 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 11, ptr %port_state177, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.end146.thread726.if.end182_crit_edge
  tail call void @lpfc_set_disctmo(ptr noundef %vport) #20
  br label %sw.epilog

if.then210:                                       ; preds = %if.end146.thread741.if.then210_crit_edge, %if.end146.thread741.if.then210_crit_edge773
  %fcpReg = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %91, i32 0, i32 10, i32 0, i32 1
  %200 = ptrtoint ptr %fcpReg to i32
  call void @__asan_load4_noabort(i32 %200)
  %bf.load212 = load i32, ptr %fcpReg, align 4
  %bf.set214 = or i32 %bf.load212, 256
  store i32 %bf.set214, ptr %fcpReg, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then210, %if.end146.thread741.if.end215_crit_edge
  %201 = ptrtoint ptr %cfg_enable_fc4_type to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %cfg_enable_fc4_type, align 8
  %203 = and i32 %202, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %203)
  %switch = icmp eq i32 %203, 2
  br i1 %switch, label %if.then223, label %if.end215.if.end225_crit_edge

if.end215.if.end225_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end225

if.then223:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #22
  %rsvd = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %91, i32 0, i32 10, i32 0, i32 2, i32 3
  %204 = ptrtoint ptr %rsvd to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 256, ptr %rsvd, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %if.end215.if.end225_crit_edge
  %205 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %cfg_log_verbose, align 4
  %and228 = and i32 %206, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %if.else257, label %do.end233

do.end233:                                        ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #22
  %207 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %vport, align 8
  %pcidev235 = getelementptr inbounds %struct.lpfc_hba, ptr %208, i32 0, i32 165
  %209 = ptrtoint ptr %pcidev235 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pcidev235, align 4
  %dev236 = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 44
  %brd_no238 = getelementptr inbounds %struct.lpfc_hba, ptr %208, i32 0, i32 197
  %211 = ptrtoint ptr %brd_no238 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %brd_no238, align 4
  %vpi239 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %213 = ptrtoint ptr %vpi239 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %vpi239, align 4
  %conv240 = zext i16 %214 to i32
  %fcpReg242 = getelementptr %struct.lpfc_sli_ct_request, ptr %91, i32 0, i32 10, i32 0, i32 1
  %215 = ptrtoint ptr %fcpReg242 to i32
  call void @__asan_load4_noabort(i32 %215)
  %bf.load243 = load i32, ptr %fcpReg242, align 4
  %216 = and i32 %bf.load243, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool245.not = icmp eq i32 %216, 0
  %cond = select i1 %tobool245.not, ptr @.str.15, ptr @.str.14
  %rsvd247 = getelementptr %struct.lpfc_sli_ct_request, ptr %91, i32 0, i32 10, i32 0, i32 2, i32 3
  %217 = ptrtoint ptr %rsvd247 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %rsvd247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool249.not = icmp eq i32 %218, 0
  %cond250 = select i1 %tobool249.not, ptr @.str.15, ptr @.str.16
  %219 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %91, align 4
  %221 = ptrtoint ptr %FsType742 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %FsType742, align 4
  %223 = ptrtoint ptr %CommandResponse744 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %CommandResponse744, align 4
  %add.ptr252 = getelementptr i32, ptr %91, i32 3
  %225 = ptrtoint ptr %add.ptr252 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %add.ptr252, align 4
  %227 = ptrtoint ptr %un202 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %un202, align 4
  %add.ptr256 = getelementptr i32, ptr %91, i32 7
  %229 = ptrtoint ptr %add.ptr256 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %add.ptr256, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev236, ptr noundef nonnull @.str.12, i32 noundef %212, i32 noundef %conv240, ptr noundef nonnull %cond, ptr noundef nonnull %cond250, i32 noundef %220, i32 noundef %222, i32 noundef %224, i32 noundef %226, i32 noundef %228, i32 noundef %bf.load243, i32 noundef %218, i32 noundef %230) #23
  br label %sw.epilog

if.else257:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool259.not = icmp eq i32 %206, 0
  br i1 %tobool259.not, label %if.then260, label %if.else257.sw.epilog_crit_edge

if.else257.sw.epilog_crit_edge:                   ; preds = %if.else257
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then260:                                       ; preds = %if.else257
  call void @__sanitizer_cov_trace_pc() #22
  %231 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %vport, align 8
  %brd_no263 = getelementptr inbounds %struct.lpfc_hba, ptr %232, i32 0, i32 197
  %233 = ptrtoint ptr %brd_no263 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %brd_no263, align 4
  %vpi264 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %235 = ptrtoint ptr %vpi264 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %vpi264, align 4
  %conv265 = zext i16 %236 to i32
  %fcpReg267 = getelementptr %struct.lpfc_sli_ct_request, ptr %91, i32 0, i32 10, i32 0, i32 1
  %237 = ptrtoint ptr %fcpReg267 to i32
  call void @__asan_load4_noabort(i32 %237)
  %bf.load268 = load i32, ptr %fcpReg267, align 4
  %238 = and i32 %bf.load268, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool271.not = icmp eq i32 %238, 0
  %cond272 = select i1 %tobool271.not, ptr @.str.15, ptr @.str.14
  %rsvd274 = getelementptr %struct.lpfc_sli_ct_request, ptr %91, i32 0, i32 10, i32 0, i32 2, i32 3
  %239 = ptrtoint ptr %rsvd274 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %rsvd274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool276.not = icmp eq i32 %240, 0
  %cond277 = select i1 %tobool276.not, ptr @.str.15, ptr @.str.16
  %241 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %91, align 4
  %243 = ptrtoint ptr %FsType742 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %FsType742, align 4
  %245 = ptrtoint ptr %CommandResponse744 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %CommandResponse744, align 4
  %add.ptr280 = getelementptr i32, ptr %91, i32 3
  %247 = ptrtoint ptr %add.ptr280 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %add.ptr280, align 4
  %249 = ptrtoint ptr %un202 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %un202, align 4
  %add.ptr284 = getelementptr i32, ptr %91, i32 7
  %251 = ptrtoint ptr %add.ptr284 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %add.ptr284, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %232, ptr noundef nonnull @.str.12, i32 noundef %234, i32 noundef %conv265, ptr noundef nonnull %cond272, ptr noundef nonnull %cond277, i32 noundef %242, i32 noundef %244, i32 noundef %246, i32 noundef %248, i32 noundef %250, i32 noundef %bf.load268, i32 noundef %240, i32 noundef %252) #20
  br label %sw.epilog

if.then360:                                       ; preds = %if.end146.thread767
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %253 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %pport, align 8
  %cmp361 = icmp eq ptr %254, %vport
  br i1 %cmp361, label %land.lhs.true363, label %if.then360.if.else370_crit_edge

if.then360.if.else370_crit_edge:                  ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else370

land.lhs.true363:                                 ; preds = %if.then360
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 74
  %255 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool365.not = icmp eq i8 %256, 0
  br i1 %tobool365.not, label %land.lhs.true363.if.else370_crit_edge, label %if.then366

land.lhs.true363.if.else370_crit_edge:            ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else370

if.then366:                                       ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #22
  %257 = ptrtoint ptr %fbits to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 5, ptr %fbits, align 2
  %call369 = tail call i32 @lpfc_nvmet_update_targetport(ptr noundef %1) #20
  br label %if.end391

if.else370:                                       ; preds = %land.lhs.true363.if.else370_crit_edge, %if.then360.if.else370_crit_edge
  tail call void @lpfc_nvme_update_localport(ptr noundef %vport) #20
  br label %if.end391

if.else374:                                       ; preds = %if.end146.thread767
  %258 = zext i32 %185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %185, label %if.else374.ns_cmd_free_bmpvirt_crit_edge [
    i32 3, label %if.else374.land.lhs.true382_crit_edge
    i32 1, label %if.else374.land.lhs.true382_crit_edge774
  ]

if.else374.land.lhs.true382_crit_edge774:         ; preds = %if.else374
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true382

if.else374.land.lhs.true382_crit_edge:            ; preds = %if.else374
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true382

if.else374.ns_cmd_free_bmpvirt_crit_edge:         ; preds = %if.else374
  call void @__sanitizer_cov_trace_pc() #22
  br label %ns_cmd_free_bmpvirt

land.lhs.true382:                                 ; preds = %if.else374.land.lhs.true382_crit_edge, %if.else374.land.lhs.true382_crit_edge774
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %context)
  %cmp383 = icmp eq i32 %context, 8
  br i1 %cmp383, label %land.lhs.true382.if.end391_crit_edge, label %land.lhs.true382.ns_cmd_free_bmpvirt_crit_edge

land.lhs.true382.ns_cmd_free_bmpvirt_crit_edge:   ; preds = %land.lhs.true382
  call void @__sanitizer_cov_trace_pc() #22
  br label %ns_cmd_free_bmpvirt

land.lhs.true382.if.end391_crit_edge:             ; preds = %land.lhs.true382
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end391

if.end391:                                        ; preds = %land.lhs.true382.if.end391_crit_edge, %if.else370, %if.then366
  %.sink = phi i8 [ 40, %if.else370 ], [ 40, %if.then366 ], [ 8, %land.lhs.true382.if.end391_crit_edge ]
  %type_code388 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %171, i32 0, i32 10, i32 0, i32 2, i32 2
  %259 = ptrtoint ptr %type_code388 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %.sink, ptr %type_code388, align 1
  %260 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %cfg_log_verbose, align 4
  %and394 = and i32 %261, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and394)
  %tobool395.not = icmp eq i32 %and394, 0
  br i1 %tobool395.not, label %if.else417, label %do.end399

do.end399:                                        ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #22
  %262 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %vport, align 8
  %pcidev401 = getelementptr inbounds %struct.lpfc_hba, ptr %263, i32 0, i32 165
  %264 = ptrtoint ptr %pcidev401 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %pcidev401, align 4
  %dev402 = getelementptr inbounds %struct.pci_dev, ptr %265, i32 0, i32 44
  %brd_no404 = getelementptr inbounds %struct.lpfc_hba, ptr %263, i32 0, i32 197
  %266 = ptrtoint ptr %brd_no404 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %brd_no404, align 4
  %vpi405 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %268 = ptrtoint ptr %vpi405 to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %vpi405, align 4
  %conv406 = zext i16 %269 to i32
  %cond409 = select i1 %cmp358, ptr @.str.16, ptr @.str.14
  %270 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %171, align 4
  %272 = ptrtoint ptr %FsType768 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %FsType768, align 4
  %274 = ptrtoint ptr %CommandResponse770 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %CommandResponse770, align 4
  %add.ptr412 = getelementptr i32, ptr %171, i32 3
  %276 = ptrtoint ptr %add.ptr412 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %add.ptr412, align 4
  %278 = ptrtoint ptr %un348 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %un348, align 4
  %add.ptr414 = getelementptr i32, ptr %171, i32 5
  %280 = ptrtoint ptr %add.ptr414 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %add.ptr414, align 4
  %add.ptr415 = getelementptr i32, ptr %171, i32 6
  %282 = ptrtoint ptr %add.ptr415 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %add.ptr415, align 4
  %add.ptr416 = getelementptr i32, ptr %171, i32 7
  %284 = ptrtoint ptr %add.ptr416 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %add.ptr416, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev402, ptr noundef nonnull @.str.18, i32 noundef %267, i32 noundef %conv406, ptr noundef nonnull %cond409, i32 noundef %271, i32 noundef %273, i32 noundef %275, i32 noundef %277, i32 noundef %279, i32 noundef %281, i32 noundef %283, i32 noundef %285) #23
  br label %sw.epilog

if.else417:                                       ; preds = %if.end391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool419.not = icmp eq i32 %261, 0
  br i1 %tobool419.not, label %if.then420, label %if.else417.sw.epilog_crit_edge

if.else417.sw.epilog_crit_edge:                   ; preds = %if.else417
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then420:                                       ; preds = %if.else417
  call void @__sanitizer_cov_trace_pc() #22
  %286 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %vport, align 8
  %brd_no423 = getelementptr inbounds %struct.lpfc_hba, ptr %287, i32 0, i32 197
  %288 = ptrtoint ptr %brd_no423 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %brd_no423, align 4
  %vpi424 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %290 = ptrtoint ptr %vpi424 to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %vpi424, align 4
  %conv425 = zext i16 %291 to i32
  %cond428 = select i1 %cmp358, ptr @.str.16, ptr @.str.14
  %292 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %171, align 4
  %294 = ptrtoint ptr %FsType768 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %FsType768, align 4
  %296 = ptrtoint ptr %CommandResponse770 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %CommandResponse770, align 4
  %add.ptr431 = getelementptr i32, ptr %171, i32 3
  %298 = ptrtoint ptr %add.ptr431 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %add.ptr431, align 4
  %300 = ptrtoint ptr %un348 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %un348, align 4
  %add.ptr433 = getelementptr i32, ptr %171, i32 5
  %302 = ptrtoint ptr %add.ptr433 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %add.ptr433, align 4
  %add.ptr434 = getelementptr i32, ptr %171, i32 6
  %304 = ptrtoint ptr %add.ptr434 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %add.ptr434, align 4
  %add.ptr435 = getelementptr i32, ptr %171, i32 7
  %306 = ptrtoint ptr %add.ptr435 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %add.ptr435, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %287, ptr noundef nonnull @.str.18, i32 noundef %289, i32 noundef %conv425, ptr noundef nonnull %cond428, i32 noundef %293, i32 noundef %295, i32 noundef %297, i32 noundef %299, i32 noundef %301, i32 noundef %303, i32 noundef %305, i32 noundef %307) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then420, %if.else417.sw.epilog_crit_edge, %do.end399, %if.then260, %if.else257.sw.epilog_crit_edge, %do.end233, %if.end182, %if.end169, %if.end146, %if.end146.thread762, %if.end146.thread757, %if.end146.thread752, %if.end146.thread747, %if.end146.thread736, %if.end146.thread731
  %cmpl.0 = phi ptr [ null, %if.end146 ], [ @lpfc_cmpl_ct_cmd_da_id, %if.end146.thread762 ], [ @lpfc_cmpl_ct_cmd_rsnn_nn, %if.end146.thread757 ], [ @lpfc_cmpl_ct_cmd_rspn_id, %if.end146.thread752 ], [ @lpfc_cmpl_ct_cmd_rnn_id, %if.end146.thread747 ], [ @lpfc_cmpl_ct_cmd_gft_id, %if.end146.thread736 ], [ @lpfc_cmpl_ct_cmd_gff_id, %if.end146.thread731 ], [ @lpfc_cmpl_ct_cmd_gid_pt, %if.end182 ], [ @lpfc_cmpl_ct_cmd_gid_ft, %if.end169 ], [ @lpfc_cmpl_ct_cmd_rft_id, %if.else257.sw.epilog_crit_edge ], [ @lpfc_cmpl_ct_cmd_rft_id, %if.then260 ], [ @lpfc_cmpl_ct_cmd_rft_id, %do.end233 ], [ @lpfc_cmpl_ct_cmd_rff_id, %if.else417.sw.epilog_crit_edge ], [ @lpfc_cmpl_ct_cmd_rff_id, %if.then420 ], [ @lpfc_cmpl_ct_cmd_rff_id, %do.end399 ]
  %rsp_size.0 = phi i32 [ 1024, %if.end146 ], [ 1024, %if.end146.thread762 ], [ 1024, %if.end146.thread757 ], [ 1024, %if.end146.thread752 ], [ 1024, %if.end146.thread747 ], [ 1024, %if.end146.thread736 ], [ 1024, %if.end146.thread731 ], [ 64512, %if.end182 ], [ 64512, %if.end169 ], [ 1024, %if.else257.sw.epilog_crit_edge ], [ 1024, %if.then260 ], [ 1024, %do.end233 ], [ 1024, %if.else417.sw.epilog_crit_edge ], [ 1024, %if.then420 ], [ 1024, %do.end399 ]
  %call440 = tail call fastcc i32 @lpfc_ct_cmd(ptr noundef %vport, ptr noundef nonnull %call7.i, ptr noundef nonnull %call7.i720, ptr noundef nonnull %call, ptr noundef %cmpl.0, i32 noundef %rsp_size.0, i8 noundef zeroext %retry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call440)
  %tobool441.not = icmp eq i32 %call440, 0
  br i1 %tobool441.not, label %if.then442, label %sw.epilog.ns_cmd_free_bmpvirt_crit_edge

sw.epilog.ns_cmd_free_bmpvirt_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %ns_cmd_free_bmpvirt

if.then442:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 6
  %308 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %nlp_DID, align 8
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %vport, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %cmdcode, i32 noundef %309, i32 noundef 0) #20
  br label %cleanup

ns_cmd_free_bmpvirt:                              ; preds = %sw.epilog.ns_cmd_free_bmpvirt_crit_edge, %land.lhs.true382.ns_cmd_free_bmpvirt_crit_edge, %if.else374.ns_cmd_free_bmpvirt_crit_edge
  %rc.0 = phi i32 [ 0, %land.lhs.true382.ns_cmd_free_bmpvirt_crit_edge ], [ 0, %if.else374.ns_cmd_free_bmpvirt_crit_edge ], [ 6, %sw.epilog.ns_cmd_free_bmpvirt_crit_edge ]
  %310 = ptrtoint ptr %virt19 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %virt19, align 8
  %312 = ptrtoint ptr %phys17 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %phys17, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %1, ptr noundef %311, i32 noundef %313) #20
  br label %ns_cmd_free_bmp

ns_cmd_free_bmp:                                  ; preds = %ns_cmd_free_bmpvirt, %if.end15.ns_cmd_free_bmp_crit_edge
  %rc.1 = phi i32 [ %rc.0, %ns_cmd_free_bmpvirt ], [ 5, %if.end15.ns_cmd_free_bmp_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i720) #20
  br label %ns_cmd_free_mpvirt

ns_cmd_free_mpvirt:                               ; preds = %ns_cmd_free_bmp, %if.end11.ns_cmd_free_mpvirt_crit_edge
  %rc.2 = phi i32 [ %rc.1, %ns_cmd_free_bmp ], [ 4, %if.end11.ns_cmd_free_mpvirt_crit_edge ]
  %314 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %virt, align 8
  %316 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %1, ptr noundef %315, i32 noundef %317) #20
  br label %ns_cmd_free_mp

ns_cmd_free_mp:                                   ; preds = %ns_cmd_free_mpvirt, %if.end6.ns_cmd_free_mp_crit_edge
  %rc.3 = phi i32 [ %rc.2, %ns_cmd_free_mpvirt ], [ 3, %if.end6.ns_cmd_free_mp_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #20
  br label %do.body448

do.body448:                                       ; preds = %ns_cmd_free_mp, %if.end.do.body448_crit_edge, %lor.lhs.false.do.body448_crit_edge, %entry.do.body448_crit_edge
  %rc.4 = phi i32 [ %rc.3, %ns_cmd_free_mp ], [ 1, %lor.lhs.false.do.body448_crit_edge ], [ 1, %entry.do.body448_crit_edge ], [ 2, %if.end.do.body448_crit_edge ]
  %318 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %319) #20
  %320 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %vport, align 8
  %pcidev462 = getelementptr inbounds %struct.lpfc_hba, ptr %321, i32 0, i32 165
  %322 = ptrtoint ptr %pcidev462 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %pcidev462, align 4
  %dev463 = getelementptr inbounds %struct.pci_dev, ptr %323, i32 0, i32 44
  %brd_no465 = getelementptr inbounds %struct.lpfc_hba, ptr %321, i32 0, i32 197
  %324 = ptrtoint ptr %brd_no465 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %brd_no465, align 4
  %vpi466 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %326 = ptrtoint ptr %vpi466 to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %vpi466, align 4
  %conv467 = zext i16 %327 to i32
  %fc_flag468 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %328 = ptrtoint ptr %fc_flag468 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %fc_flag468, align 4
  %fc_rscn_id_cnt469 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 28
  %330 = ptrtoint ptr %fc_rscn_id_cnt469 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %fc_rscn_id_cnt469, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev463, ptr noundef nonnull @.str.23, i32 noundef %325, i32 noundef %conv467, i32 noundef %cmdcode, i32 noundef %rc.4, i32 noundef %329, i32 noundef %331) #23
  br label %cleanup

cleanup:                                          ; preds = %do.body448, %if.then442
  %retval.0 = phi i32 [ 1, %do.body448 ], [ 0, %if.then442 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_findnode_did(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_mbuf_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dbg_print(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_set_disctmo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_gid_ft(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 22
  %2 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context_un, align 8
  store ptr %rspiocb, ptr %context_un, align 8
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 18
  %4 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context1, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %6 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context2, align 4
  %iocb = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 15
  %arrayidx = getelementptr %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %fc_ns_retry = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 35
  %11 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fc_ns_retry, align 4
  %conv = zext i8 %12 to i32
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.73, i32 noundef %bf.clear, i32 noundef %10, i32 noundef %conv) #20
  %event_tag = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 21
  %13 = ptrtoint ptr %event_tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %event_tag, align 4
  %fc_eventTag = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 51
  %15 = ptrtoint ptr %fc_eventTag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fc_eventTag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.end20, label %do.body

do.body:                                          ; preds = %entry
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %17 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 165
  %21 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 197
  %23 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vpi, align 4
  %conv8 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %24, i32 noundef %conv8) #23
  br label %out

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not = icmp eq i32 %18, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %brd_no14 = getelementptr inbounds %struct.lpfc_hba, ptr %28, i32 0, i32 197
  %29 = ptrtoint ptr %brd_no14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brd_no14, align 4
  %vpi15 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %vpi15 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vpi15, align 4
  %conv16 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %28, ptr noundef nonnull @.str.74, i32 noundef %30, i32 noundef %conv16) #20
  br label %out

if.end20:                                         ; preds = %entry
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 41
  %33 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %load_flag, align 4
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool23.not = icmp eq i8 %35, 0
  br i1 %tobool23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end20
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fc_flag, align 4
  %and25 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then24.out_crit_edge, label %if.then27

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br label %out

if.end29:                                         ; preds = %if.end20
  %call30 = tail call i32 @lpfc_els_chk_latt(ptr noundef %1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end66, label %do.body33

do.body33:                                        ; preds = %if.end29
  %cfg_log_verbose34 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %38 = ptrtoint ptr %cfg_log_verbose34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cfg_log_verbose34, align 4
  %and35 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else48, label %do.end40

do.end40:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #22
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %pcidev42 = getelementptr inbounds %struct.lpfc_hba, ptr %41, i32 0, i32 165
  %42 = ptrtoint ptr %pcidev42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcidev42, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %brd_no45 = getelementptr inbounds %struct.lpfc_hba, ptr %41, i32 0, i32 197
  %44 = ptrtoint ptr %brd_no45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brd_no45, align 4
  %vpi46 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %vpi46 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vpi46, align 4
  %conv47 = zext i16 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev43, ptr noundef nonnull @.str.77, i32 noundef %45, i32 noundef %conv47) #23
  br label %do.end60

if.else48:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool50.not = icmp eq i32 %39, 0
  br i1 %tobool50.not, label %if.then51, label %if.else48.do.end60_crit_edge

if.else48.do.end60_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end60

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #22
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %brd_no54 = getelementptr inbounds %struct.lpfc_hba, ptr %49, i32 0, i32 197
  %50 = ptrtoint ptr %brd_no54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %brd_no54, align 4
  %vpi55 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %vpi55 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vpi55, align 4
  %conv56 = zext i16 %53 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %49, ptr noundef nonnull @.str.77, i32 noundef %51, i32 noundef %conv56) #20
  br label %do.end60

do.end60:                                         ; preds = %if.then51, %if.else48.do.end60_crit_edge, %do.end40
  %fc_flag61 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %fc_flag61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fc_flag61, align 4
  %and62 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.end60.if.end65_crit_edge, label %if.then64

do.end60.if.end65_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end65

if.then64:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %do.end60.if.end65_crit_edge
  tail call void @lpfc_vport_set_state(ptr noundef %1, i32 noundef 9) #20
  br label %out

if.end66:                                         ; preds = %if.end29
  %56 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load.i = load i32, ptr %ulpStatus, align 4
  %57 = and i32 %bf.load.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %57)
  %cmp.i = icmp eq i32 %57, 48
  br i1 %cmp.i, label %land.rhs.i, label %if.end66.if.end103_crit_edge

if.end66.if.end103_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end103

land.rhs.i:                                       ; preds = %if.end66
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %59, label %land.rhs.i.if.end103_crit_edge [
    i32 259, label %land.rhs.i.do.body70_crit_edge
    i32 26, label %land.rhs.i.do.body70_crit_edge755
    i32 257, label %land.rhs.i.do.body70_crit_edge756
  ]

land.rhs.i.do.body70_crit_edge756:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body70

land.rhs.i.do.body70_crit_edge755:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body70

land.rhs.i.do.body70_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body70

land.rhs.i.if.end103_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end103

do.body70:                                        ; preds = %land.rhs.i.do.body70_crit_edge, %land.rhs.i.do.body70_crit_edge755, %land.rhs.i.do.body70_crit_edge756
  %cfg_log_verbose71 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %61 = ptrtoint ptr %cfg_log_verbose71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg_log_verbose71, align 4
  %and72 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else85, label %do.end77

do.end77:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #22
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  %pcidev79 = getelementptr inbounds %struct.lpfc_hba, ptr %64, i32 0, i32 165
  %65 = ptrtoint ptr %pcidev79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcidev79, align 4
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %brd_no82 = getelementptr inbounds %struct.lpfc_hba, ptr %64, i32 0, i32 197
  %67 = ptrtoint ptr %brd_no82 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %brd_no82, align 4
  %vpi83 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %vpi83 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vpi83, align 4
  %conv84 = zext i16 %70 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev80, ptr noundef nonnull @.str.80, i32 noundef %68, i32 noundef %conv84) #23
  br label %do.end97

if.else85:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool87.not = icmp eq i32 %62, 0
  br i1 %tobool87.not, label %if.then88, label %if.else85.do.end97_crit_edge

if.else85.do.end97_crit_edge:                     ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end97

if.then88:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #22
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %brd_no91 = getelementptr inbounds %struct.lpfc_hba, ptr %72, i32 0, i32 197
  %73 = ptrtoint ptr %brd_no91 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %brd_no91, align 4
  %vpi92 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %75 = ptrtoint ptr %vpi92 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vpi92, align 4
  %conv93 = zext i16 %76 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %72, ptr noundef nonnull @.str.80, i32 noundef %74, i32 noundef %conv93) #20
  br label %do.end97

do.end97:                                         ; preds = %if.then88, %if.else85.do.end97_crit_edge, %do.end77
  %fc_flag98 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %77 = ptrtoint ptr %fc_flag98 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fc_flag98, align 4
  %and99 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.end97.out_crit_edge, label %if.then101

do.end97.out_crit_edge:                           ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then101:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br label %out

if.end103:                                        ; preds = %land.rhs.i.if.end103_crit_edge, %if.end66.if.end103_crit_edge
  %host_lock = getelementptr i8, ptr %1, i32 -2380
  %79 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %80) #20
  %fc_flag104 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %81 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fc_flag104, align 4
  %and105 = and i32 %82, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end147, label %if.then107

if.then107:                                       ; preds = %if.end103
  %and109 = and i32 %82, -1048577
  %83 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and109, ptr %fc_flag104, align 4
  %84 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %85) #20
  %gidft_inp = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %86 = ptrtoint ptr %gidft_inp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %gidft_inp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool111.not = icmp eq i32 %87, 0
  br i1 %tobool111.not, label %if.then107.do.body115_crit_edge, label %if.then112

if.then107.do.body115_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body115

if.then112:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #22
  %dec = add i32 %87, -1
  %88 = ptrtoint ptr %gidft_inp to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %dec, ptr %gidft_inp, align 4
  br label %do.body115

do.body115:                                       ; preds = %if.then112, %if.then107.do.body115_crit_edge
  %cfg_log_verbose116 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %89 = ptrtoint ptr %cfg_log_verbose116 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cfg_log_verbose116, align 4
  %and117 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.else131, label %do.end122

do.end122:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #22
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 8
  %pcidev124 = getelementptr inbounds %struct.lpfc_hba, ptr %92, i32 0, i32 165
  %93 = ptrtoint ptr %pcidev124 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pcidev124, align 4
  %dev125 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %brd_no127 = getelementptr inbounds %struct.lpfc_hba, ptr %92, i32 0, i32 197
  %95 = ptrtoint ptr %brd_no127 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %brd_no127, align 4
  %vpi128 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %97 = ptrtoint ptr %vpi128 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %vpi128, align 4
  %conv129 = zext i16 %98 to i32
  %99 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fc_flag104, align 4
  %fc_rscn_id_cnt = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %101 = ptrtoint ptr %fc_rscn_id_cnt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fc_rscn_id_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev125, ptr noundef nonnull @.str.83, i32 noundef %96, i32 noundef %conv129, i32 noundef %100, i32 noundef %102) #23
  br label %do.end145

if.else131:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool133.not = icmp eq i32 %90, 0
  br i1 %tobool133.not, label %if.then134, label %if.else131.do.end145_crit_edge

if.else131.do.end145_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end145

if.then134:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #22
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  %brd_no137 = getelementptr inbounds %struct.lpfc_hba, ptr %104, i32 0, i32 197
  %105 = ptrtoint ptr %brd_no137 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %brd_no137, align 4
  %vpi138 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %vpi138 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %vpi138, align 4
  %conv139 = zext i16 %108 to i32
  %109 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fc_flag104, align 4
  %fc_rscn_id_cnt141 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %111 = ptrtoint ptr %fc_rscn_id_cnt141 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fc_rscn_id_cnt141, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %104, ptr noundef nonnull @.str.83, i32 noundef %106, i32 noundef %conv139, i32 noundef %110, i32 noundef %112) #20
  br label %do.end145

do.end145:                                        ; preds = %if.then134, %if.else131.do.end145_crit_edge, %do.end122
  %call146 = tail call i32 @lpfc_els_handle_rscn(ptr noundef %1) #20
  br label %out

if.end147:                                        ; preds = %if.end103
  %113 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %114) #20
  %115 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %115)
  %bf.load150 = load i32, ptr %ulpStatus, align 4
  %bf.lshr151 = lshr i32 %bf.load150, 4
  %bf.clear152 = and i32 %bf.lshr151, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear152)
  %tobool153.not = icmp eq i32 %bf.clear152, 0
  br i1 %tobool153.not, label %if.else243, label %if.then154

if.then154:                                       ; preds = %if.end147
  %116 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %fc_ns_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %117)
  %cmp157 = icmp ult i8 %117, 3
  br i1 %cmp157, label %if.then159, label %if.then154.if.end192_crit_edge

if.then154.if.end192_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end192

if.then159:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear152)
  %cmp164.not = icmp eq i32 %bf.clear152, 3
  br i1 %cmp164.not, label %lor.lhs.false, label %if.then159.if.then171_crit_edge

if.then159.if.then171_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then171

lor.lhs.false:                                    ; preds = %if.then159
  %118 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx, align 4
  %and168 = and i32 %119, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and168)
  %cmp169.not = icmp eq i32 %and168, 17
  br i1 %cmp169.not, label %lor.lhs.false.if.end173_crit_edge, label %lor.lhs.false.if.then171_crit_edge

lor.lhs.false.if.then171_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then171

lor.lhs.false.if.end173_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end173

if.then171:                                       ; preds = %lor.lhs.false.if.then171_crit_edge, %if.then159.if.then171_crit_edge
  %inc = add nuw nsw i8 %117, 1
  %120 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %inc, ptr %fc_ns_retry, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %lor.lhs.false.if.end173_crit_edge
  %121 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %context1, align 8
  %cmp.i745 = icmp eq ptr %122, null
  br i1 %cmp.i745, label %if.end173.out_crit_edge, label %if.end.i

if.end173.out_crit_edge:                          ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end.i:                                         ; preds = %if.end173
  %virt.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %virt.i, align 4
  %un.i = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %124, i32 0, i32 10
  %Fc4Type.i = getelementptr inbounds %struct.gid, ptr %un.i, i32 0, i32 3
  %125 = ptrtoint ptr %Fc4Type.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %Fc4Type.i, align 1
  %127 = zext i8 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.253)
  switch i8 %126, label %if.end.i.out_crit_edge [
    i8 8, label %if.end.i.if.end178_crit_edge
    i8 40, label %if.end178.fold.split
  ]

if.end.i.if.end178_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end178

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end178.fold.split:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end178

if.end178:                                        ; preds = %if.end178.fold.split, %if.end.i.if.end178_crit_edge
  %retval.0.i754 = phi i32 [ 8, %if.end.i.if.end178_crit_edge ], [ 40, %if.end178.fold.split ]
  %128 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %fc_ns_retry, align 4
  %call180 = tail call i32 @lpfc_ns_cmd(ptr noundef %1, i32 noundef 369, i8 noundef zeroext %129, i32 noundef %retval.0.i754)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %cmp181 = icmp eq i32 %call180, 0
  br i1 %cmp181, label %if.end178.out_crit_edge, label %if.else184

if.end178.out_crit_edge:                          ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.else184:                                       ; preds = %if.end178
  %gidft_inp185 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %130 = ptrtoint ptr %gidft_inp185 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %gidft_inp185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool186.not = icmp eq i32 %131, 0
  br i1 %tobool186.not, label %if.else184.if.end192_crit_edge, label %if.then187

if.else184.if.end192_crit_edge:                   ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end192

if.then187:                                       ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #22
  %dec189 = add i32 %131, -1
  %132 = ptrtoint ptr %gidft_inp185 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %dec189, ptr %gidft_inp185, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then187, %if.else184.if.end192_crit_edge, %if.then154.if.end192_crit_edge
  %133 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %fc_flag104, align 4
  %and194 = and i32 %134, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.end192.if.end197_crit_edge, label %if.then196

if.end192.if.end197_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end197

if.then196:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %if.end192.if.end197_crit_edge
  tail call void @lpfc_vport_set_state(ptr noundef %1, i32 noundef 9) #20
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %136) #20
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 8
  %pcidev212 = getelementptr inbounds %struct.lpfc_hba, ptr %138, i32 0, i32 165
  %139 = ptrtoint ptr %pcidev212 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pcidev212, align 4
  %dev213 = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44
  %brd_no215 = getelementptr inbounds %struct.lpfc_hba, ptr %138, i32 0, i32 197
  %141 = ptrtoint ptr %brd_no215 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %brd_no215, align 4
  %vpi216 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %143 = ptrtoint ptr %vpi216 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %vpi216, align 4
  %conv217 = zext i16 %144 to i32
  %145 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %145)
  %bf.load219 = load i32, ptr %ulpStatus, align 4
  %bf.lshr220 = lshr i32 %bf.load219, 4
  %bf.clear221 = and i32 %bf.lshr220, 15
  %146 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %fc_ns_retry, align 4
  %conv223 = zext i8 %147 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev213, ptr noundef nonnull @.str.86, i32 noundef %142, i32 noundef %conv217, i32 noundef %bf.clear221, i32 noundef %conv223) #23
  br label %do.body486

if.else243:                                       ; preds = %if.end147
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %148 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %virt, align 4
  %virt244 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %7, i32 0, i32 1
  %150 = ptrtoint ptr %virt244 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %virt244, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %152)
  %bf.load245 = load i32, ptr %CommandResponse, align 4
  %bf.lshr246 = lshr i32 %bf.load245, 16
  %trunc = trunc i32 %bf.lshr246 to i16
  %153 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.254)
  switch i16 %trunc, label %do.body421 [
    i16 -32766, label %do.body250
    i16 -32767, label %if.then308
  ]

do.body250:                                       ; preds = %if.else243
  %cfg_log_verbose251 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %154 = ptrtoint ptr %cfg_log_verbose251 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cfg_log_verbose251, align 4
  %and252 = and i32 %155, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %if.else272, label %do.end257

do.end257:                                        ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #22
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 8
  %pcidev259 = getelementptr inbounds %struct.lpfc_hba, ptr %157, i32 0, i32 165
  %158 = ptrtoint ptr %pcidev259 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pcidev259, align 4
  %dev260 = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  %brd_no262 = getelementptr inbounds %struct.lpfc_hba, ptr %157, i32 0, i32 197
  %160 = ptrtoint ptr %brd_no262 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %brd_no262, align 4
  %vpi263 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %162 = ptrtoint ptr %vpi263 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %vpi263, align 4
  %conv264 = zext i16 %163 to i32
  %164 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %fc_flag104, align 4
  %un266 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %149, i32 0, i32 10
  %Fc4Type = getelementptr inbounds %struct.gid, ptr %un266, i32 0, i32 3
  %166 = ptrtoint ptr %Fc4Type to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %Fc4Type, align 1
  %conv267 = zext i8 %167 to i32
  %num_disc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %168 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %num_disc_nodes, align 8
  %gidft_inp268 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %170 = ptrtoint ptr %gidft_inp268 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %gidft_inp268, align 4
  %172 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %172)
  %bf.load270 = load i32, ptr %iocb, align 4
  %bf.clear271 = and i32 %bf.load270, 16777215
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev260, ptr noundef nonnull @.str.89, i32 noundef %161, i32 noundef %conv264, i32 noundef %165, i32 noundef %conv267, i32 noundef %169, i32 noundef %171, i32 noundef %bf.clear271) #23
  br label %do.end294

if.else272:                                       ; preds = %do.body250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool274.not = icmp eq i32 %155, 0
  br i1 %tobool274.not, label %if.then275, label %if.else272.do.end294_crit_edge

if.else272.do.end294_crit_edge:                   ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end294

if.then275:                                       ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #22
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 8
  %brd_no278 = getelementptr inbounds %struct.lpfc_hba, ptr %174, i32 0, i32 197
  %175 = ptrtoint ptr %brd_no278 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %brd_no278, align 4
  %vpi279 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %177 = ptrtoint ptr %vpi279 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %vpi279, align 4
  %conv280 = zext i16 %178 to i32
  %179 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %fc_flag104, align 4
  %un282 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %149, i32 0, i32 10
  %Fc4Type283 = getelementptr inbounds %struct.gid, ptr %un282, i32 0, i32 3
  %181 = ptrtoint ptr %Fc4Type283 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %Fc4Type283, align 1
  %conv284 = zext i8 %182 to i32
  %num_disc_nodes285 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %183 = ptrtoint ptr %num_disc_nodes285 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %num_disc_nodes285, align 8
  %gidft_inp286 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %185 = ptrtoint ptr %gidft_inp286 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %gidft_inp286, align 4
  %187 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %187)
  %bf.load289 = load i32, ptr %iocb, align 4
  %bf.clear290 = and i32 %bf.load289, 16777215
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %174, ptr noundef nonnull @.str.89, i32 noundef %176, i32 noundef %conv280, i32 noundef %180, i32 noundef %conv284, i32 noundef %184, i32 noundef %186, i32 noundef %bf.clear290) #20
  br label %do.end294

do.end294:                                        ; preds = %if.then275, %if.else272.do.end294_crit_edge, %do.end257
  %un295 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %149, i32 0, i32 10
  %Fc4Type296 = getelementptr inbounds %struct.gid, ptr %un295, i32 0, i32 3
  %188 = ptrtoint ptr %Fc4Type296 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %Fc4Type296, align 1
  %190 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %190)
  %bf.load299 = load i32, ptr %iocb, align 4
  %bf.clear300 = and i32 %bf.load299, 16777215
  tail call fastcc void @lpfc_ns_rsp(ptr noundef %1, ptr noundef %7, i8 noundef zeroext %189, i32 noundef %bf.clear300)
  br label %if.end478

if.then308:                                       ; preds = %if.else243
  %ReasonCode = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %151, i32 0, i32 7
  %191 = ptrtoint ptr %ReasonCode to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %ReasonCode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %192)
  %cmp310 = icmp eq i8 %192, 9
  br i1 %cmp310, label %land.lhs.true, label %if.then308.do.body368_crit_edge

if.then308.do.body368_crit_edge:                  ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body368

land.lhs.true:                                    ; preds = %if.then308
  %Explanation = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %151, i32 0, i32 8
  %193 = ptrtoint ptr %Explanation to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %Explanation, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %194)
  %cmp313 = icmp eq i8 %194, 7
  br i1 %cmp313, label %do.body316, label %land.lhs.true.do.body368_crit_edge

land.lhs.true.do.body368_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body368

do.body316:                                       ; preds = %land.lhs.true
  %cfg_log_verbose317 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %195 = ptrtoint ptr %cfg_log_verbose317 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %cfg_log_verbose317, align 4
  %and318 = and i32 %196, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and318)
  %tobool319.not = icmp eq i32 %and318, 0
  br i1 %tobool319.not, label %if.else339, label %do.end323

do.end323:                                        ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #22
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 8
  %pcidev325 = getelementptr inbounds %struct.lpfc_hba, ptr %198, i32 0, i32 165
  %199 = ptrtoint ptr %pcidev325 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pcidev325, align 4
  %dev326 = getelementptr inbounds %struct.pci_dev, ptr %200, i32 0, i32 44
  %brd_no328 = getelementptr inbounds %struct.lpfc_hba, ptr %198, i32 0, i32 197
  %201 = ptrtoint ptr %brd_no328 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %brd_no328, align 4
  %vpi329 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %203 = ptrtoint ptr %vpi329 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %vpi329, align 4
  %conv330 = zext i16 %204 to i32
  %205 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %fc_flag104, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev326, ptr noundef nonnull @.str.92, i32 noundef %202, i32 noundef %conv330, i32 noundef 32769, i32 noundef 9, i32 noundef 7, i32 noundef %206) #23
  br label %do.end359

if.else339:                                       ; preds = %do.body316
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool341.not = icmp eq i32 %196, 0
  br i1 %tobool341.not, label %if.then342, label %if.else339.do.end359_crit_edge

if.else339.do.end359_crit_edge:                   ; preds = %if.else339
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end359

if.then342:                                       ; preds = %if.else339
  call void @__sanitizer_cov_trace_pc() #22
  %207 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %1, align 8
  %brd_no345 = getelementptr inbounds %struct.lpfc_hba, ptr %208, i32 0, i32 197
  %209 = ptrtoint ptr %brd_no345 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %brd_no345, align 4
  %vpi346 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %211 = ptrtoint ptr %vpi346 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %vpi346, align 4
  %conv347 = zext i16 %212 to i32
  %213 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %fc_flag104, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %208, ptr noundef nonnull @.str.92, i32 noundef %210, i32 noundef %conv347, i32 noundef 32769, i32 noundef 9, i32 noundef 7, i32 noundef %214) #20
  br label %do.end359

do.end359:                                        ; preds = %if.then342, %if.else339.do.end359_crit_edge, %do.end323
  %215 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %215)
  %bf.load361 = load i32, ptr %CommandResponse, align 4
  %bf.lshr362 = lshr i32 %bf.load361, 16
  %216 = ptrtoint ptr %ReasonCode to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %ReasonCode, align 1
  %conv364 = zext i8 %217 to i32
  %218 = ptrtoint ptr %Explanation to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %Explanation, align 2
  %conv366 = zext i8 %219 to i32
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.94, i32 noundef %bf.lshr362, i32 noundef %conv364, i32 noundef %conv366) #20
  br label %if.end478

do.body368:                                       ; preds = %land.lhs.true.do.body368_crit_edge, %if.then308.do.body368_crit_edge
  %cfg_log_verbose369 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %220 = ptrtoint ptr %cfg_log_verbose369 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %cfg_log_verbose369, align 4
  %and370 = and i32 %221, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and370)
  %tobool371.not = icmp eq i32 %and370, 0
  br i1 %tobool371.not, label %if.else391, label %do.end375

do.end375:                                        ; preds = %do.body368
  call void @__sanitizer_cov_trace_pc() #22
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 8
  %pcidev377 = getelementptr inbounds %struct.lpfc_hba, ptr %223, i32 0, i32 165
  %224 = ptrtoint ptr %pcidev377 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pcidev377, align 4
  %dev378 = getelementptr inbounds %struct.pci_dev, ptr %225, i32 0, i32 44
  %brd_no380 = getelementptr inbounds %struct.lpfc_hba, ptr %223, i32 0, i32 197
  %226 = ptrtoint ptr %brd_no380 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %brd_no380, align 4
  %vpi381 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %228 = ptrtoint ptr %vpi381 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %vpi381, align 4
  %conv382 = zext i16 %229 to i32
  %conv387 = zext i8 %192 to i32
  %Explanation388 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %151, i32 0, i32 8
  %230 = ptrtoint ptr %Explanation388 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %Explanation388, align 2
  %conv389 = zext i8 %231 to i32
  %232 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %fc_flag104, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev378, ptr noundef nonnull @.str.96, i32 noundef %227, i32 noundef %conv382, i32 noundef %bf.lshr246, i32 noundef %conv387, i32 noundef %conv389, i32 noundef %233) #23
  br label %do.end411

if.else391:                                       ; preds = %do.body368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool393.not = icmp eq i32 %221, 0
  br i1 %tobool393.not, label %if.then394, label %if.else391.do.end411_crit_edge

if.else391.do.end411_crit_edge:                   ; preds = %if.else391
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end411

if.then394:                                       ; preds = %if.else391
  call void @__sanitizer_cov_trace_pc() #22
  %234 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %1, align 8
  %brd_no397 = getelementptr inbounds %struct.lpfc_hba, ptr %235, i32 0, i32 197
  %236 = ptrtoint ptr %brd_no397 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %brd_no397, align 4
  %vpi398 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %238 = ptrtoint ptr %vpi398 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %vpi398, align 4
  %conv399 = zext i16 %239 to i32
  %conv404 = zext i8 %192 to i32
  %Explanation405 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %151, i32 0, i32 8
  %240 = ptrtoint ptr %Explanation405 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %Explanation405, align 2
  %conv406 = zext i8 %241 to i32
  %242 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %fc_flag104, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %235, ptr noundef nonnull @.str.96, i32 noundef %237, i32 noundef %conv399, i32 noundef %bf.lshr246, i32 noundef %conv404, i32 noundef %conv406, i32 noundef %243) #20
  br label %do.end411

do.end411:                                        ; preds = %if.then394, %if.else391.do.end411_crit_edge, %do.end375
  %244 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %244)
  %bf.load413 = load i32, ptr %CommandResponse, align 4
  %bf.lshr414 = lshr i32 %bf.load413, 16
  %245 = ptrtoint ptr %ReasonCode to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %ReasonCode, align 1
  %conv416 = zext i8 %246 to i32
  %Explanation417 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %151, i32 0, i32 8
  %247 = ptrtoint ptr %Explanation417 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %Explanation417, align 2
  %conv418 = zext i8 %248 to i32
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.98, i32 noundef %bf.lshr414, i32 noundef %conv416, i32 noundef %conv418) #20
  br label %if.end478

do.body421:                                       ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #22
  %249 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %1, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %250) #20
  %251 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %1, align 8
  %pcidev435 = getelementptr inbounds %struct.lpfc_hba, ptr %252, i32 0, i32 165
  %253 = ptrtoint ptr %pcidev435 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %pcidev435, align 4
  %dev436 = getelementptr inbounds %struct.pci_dev, ptr %254, i32 0, i32 44
  %brd_no438 = getelementptr inbounds %struct.lpfc_hba, ptr %252, i32 0, i32 197
  %255 = ptrtoint ptr %brd_no438 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %brd_no438, align 4
  %vpi439 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %257 = ptrtoint ptr %vpi439 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %vpi439, align 4
  %conv440 = zext i16 %258 to i32
  %259 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %259)
  %bf.load442 = load i32, ptr %CommandResponse, align 4
  %bf.lshr443 = lshr i32 %bf.load442, 16
  %ReasonCode444 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %151, i32 0, i32 7
  %260 = ptrtoint ptr %ReasonCode444 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %ReasonCode444, align 1
  %conv445 = zext i8 %261 to i32
  %Explanation446 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %151, i32 0, i32 8
  %262 = ptrtoint ptr %Explanation446 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %Explanation446, align 2
  %conv447 = zext i8 %263 to i32
  %264 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %fc_flag104, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev436, ptr noundef nonnull @.str.100, i32 noundef %256, i32 noundef %conv440, i32 noundef %bf.lshr443, i32 noundef %conv445, i32 noundef %conv447, i32 noundef %265) #23
  %266 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %266)
  %bf.load471 = load i32, ptr %CommandResponse, align 4
  %bf.lshr472 = lshr i32 %bf.load471, 16
  %267 = ptrtoint ptr %ReasonCode444 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %ReasonCode444, align 1
  %conv474 = zext i8 %268 to i32
  %269 = ptrtoint ptr %Explanation446 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %Explanation446, align 2
  %conv476 = zext i8 %270 to i32
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.102, i32 noundef %bf.lshr472, i32 noundef %conv474, i32 noundef %conv476) #20
  br label %if.end478

if.end478:                                        ; preds = %do.body421, %do.end411, %do.end359, %do.end294
  %gidft_inp479 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %271 = ptrtoint ptr %gidft_inp479 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %gidft_inp479, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %tobool480.not = icmp eq i32 %272, 0
  br i1 %tobool480.not, label %if.end478.do.body486_crit_edge, label %if.then481

if.end478.do.body486_crit_edge:                   ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body486

if.then481:                                       ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #22
  %dec483 = add i32 %272, -1
  %273 = ptrtoint ptr %gidft_inp479 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %dec483, ptr %gidft_inp479, align 4
  br label %do.body486

do.body486:                                       ; preds = %if.then481, %if.end478.do.body486_crit_edge, %if.end197
  %cfg_log_verbose487 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %274 = ptrtoint ptr %cfg_log_verbose487 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %cfg_log_verbose487, align 4
  %and488 = and i32 %275, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and488)
  %tobool489.not = icmp eq i32 %and488, 0
  br i1 %tobool489.not, label %if.else503, label %do.end493

do.end493:                                        ; preds = %do.body486
  call void @__sanitizer_cov_trace_pc() #22
  %276 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %1, align 8
  %pcidev495 = getelementptr inbounds %struct.lpfc_hba, ptr %277, i32 0, i32 165
  %278 = ptrtoint ptr %pcidev495 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %pcidev495, align 4
  %dev496 = getelementptr inbounds %struct.pci_dev, ptr %279, i32 0, i32 44
  %brd_no498 = getelementptr inbounds %struct.lpfc_hba, ptr %277, i32 0, i32 197
  %280 = ptrtoint ptr %brd_no498 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %brd_no498, align 4
  %vpi499 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %282 = ptrtoint ptr %vpi499 to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %vpi499, align 4
  %conv500 = zext i16 %283 to i32
  %gidft_inp501 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %284 = ptrtoint ptr %gidft_inp501 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %gidft_inp501, align 4
  %num_disc_nodes502 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %286 = ptrtoint ptr %num_disc_nodes502 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %num_disc_nodes502, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev496, ptr noundef nonnull @.str.104, i32 noundef %281, i32 noundef %conv500, i32 noundef %285, i32 noundef %287) #23
  br label %do.end517

if.else503:                                       ; preds = %do.body486
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool505.not = icmp eq i32 %275, 0
  br i1 %tobool505.not, label %if.then506, label %if.else503.do.end517_crit_edge

if.else503.do.end517_crit_edge:                   ; preds = %if.else503
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end517

if.then506:                                       ; preds = %if.else503
  call void @__sanitizer_cov_trace_pc() #22
  %288 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %1, align 8
  %brd_no509 = getelementptr inbounds %struct.lpfc_hba, ptr %289, i32 0, i32 197
  %290 = ptrtoint ptr %brd_no509 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %brd_no509, align 4
  %vpi510 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %292 = ptrtoint ptr %vpi510 to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %vpi510, align 4
  %conv511 = zext i16 %293 to i32
  %gidft_inp512 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %294 = ptrtoint ptr %gidft_inp512 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %gidft_inp512, align 4
  %num_disc_nodes513 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %296 = ptrtoint ptr %num_disc_nodes513 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %num_disc_nodes513, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %289, ptr noundef nonnull @.str.104, i32 noundef %291, i32 noundef %conv511, i32 noundef %295, i32 noundef %297) #20
  br label %do.end517

do.end517:                                        ; preds = %if.then506, %if.else503.do.end517_crit_edge, %do.end493
  %num_disc_nodes518 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %298 = ptrtoint ptr %num_disc_nodes518 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %num_disc_nodes518, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %cmp519 = icmp eq i32 %299, 0
  br i1 %cmp519, label %land.lhs.true521, label %do.end517.out_crit_edge

do.end517.out_crit_edge:                          ; preds = %do.end517
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

land.lhs.true521:                                 ; preds = %do.end517
  %gidft_inp522 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %300 = ptrtoint ptr %gidft_inp522 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %gidft_inp522, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %cmp523 = icmp eq i32 %301, 0
  br i1 %cmp523, label %if.then525, label %land.lhs.true521.out_crit_edge

land.lhs.true521.out_crit_edge:                   ; preds = %land.lhs.true521
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then525:                                       ; preds = %land.lhs.true521
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 3
  %302 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %303)
  %cmp526 = icmp ugt i32 %303, 12
  br i1 %cmp526, label %if.then528, label %if.then525.if.end538_crit_edge

if.then525.if.end538_crit_edge:                   ; preds = %if.then525
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end538

if.then528:                                       ; preds = %if.then525
  %304 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %fc_flag104, align 4
  %and530 = and i32 %305, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and530)
  %tobool531.not = icmp eq i32 %and530, 0
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br i1 %tobool531.not, label %if.then528.if.end538_crit_edge, label %if.then532

if.then528.if.end538_crit_edge:                   ; preds = %if.then528
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end538

if.then532:                                       ; preds = %if.then528
  call void @__sanitizer_cov_trace_pc() #22
  %306 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %307) #20
  %308 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %fc_flag104, align 4
  %or = or i32 %309, 32
  store i32 %or, ptr %fc_flag104, align 4
  %310 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %311) #20
  br label %if.end538

if.end538:                                        ; preds = %if.then532, %if.then528.if.end538_crit_edge, %if.then525.if.end538_crit_edge
  tail call void @lpfc_disc_start(ptr noundef %1) #20
  br label %out

out:                                              ; preds = %if.end538, %land.lhs.true521.out_crit_edge, %do.end517.out_crit_edge, %if.end178.out_crit_edge, %if.end.i.out_crit_edge, %if.end173.out_crit_edge, %do.end145, %if.then101, %do.end97.out_crit_edge, %if.end65, %if.then27, %if.then24.out_crit_edge, %if.then11, %if.else.out_crit_edge, %do.end
  %call540 = tail call i32 @lpfc_ct_free_iocb(ptr noundef %phba, ptr noundef %cmdiocb)
  %call541 = tail call i32 @lpfc_nlp_put(ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_gid_pt(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 22
  %2 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context_un, align 8
  store ptr %rspiocb, ptr %context_un, align 8
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 18
  %4 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context1, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %6 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context2, align 4
  %iocb = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 15
  %arrayidx = getelementptr %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %fc_ns_retry = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 35
  %11 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fc_ns_retry, align 4
  %conv = zext i8 %12 to i32
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.122, i32 noundef %bf.clear, i32 noundef %10, i32 noundef %conv) #20
  %event_tag = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 21
  %13 = ptrtoint ptr %event_tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %event_tag, align 4
  %fc_eventTag = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 51
  %15 = ptrtoint ptr %fc_eventTag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fc_eventTag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.end20, label %do.body

do.body:                                          ; preds = %entry
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %17 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 165
  %21 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 197
  %23 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vpi, align 4
  %conv8 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %24, i32 noundef %conv8) #23
  br label %out

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not = icmp eq i32 %18, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %brd_no14 = getelementptr inbounds %struct.lpfc_hba, ptr %28, i32 0, i32 197
  %29 = ptrtoint ptr %brd_no14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brd_no14, align 4
  %vpi15 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %vpi15 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vpi15, align 4
  %conv16 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %28, ptr noundef nonnull @.str.123, i32 noundef %30, i32 noundef %conv16) #20
  br label %out

if.end20:                                         ; preds = %entry
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 41
  %33 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %load_flag, align 4
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool23.not = icmp eq i8 %35, 0
  br i1 %tobool23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end20
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fc_flag, align 4
  %and25 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then24.out_crit_edge, label %if.then27

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br label %out

if.end29:                                         ; preds = %if.end20
  %call30 = tail call i32 @lpfc_els_chk_latt(ptr noundef %1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end66, label %do.body33

do.body33:                                        ; preds = %if.end29
  %cfg_log_verbose34 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %38 = ptrtoint ptr %cfg_log_verbose34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cfg_log_verbose34, align 4
  %and35 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else48, label %do.end40

do.end40:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #22
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %pcidev42 = getelementptr inbounds %struct.lpfc_hba, ptr %41, i32 0, i32 165
  %42 = ptrtoint ptr %pcidev42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcidev42, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %brd_no45 = getelementptr inbounds %struct.lpfc_hba, ptr %41, i32 0, i32 197
  %44 = ptrtoint ptr %brd_no45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brd_no45, align 4
  %vpi46 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %vpi46 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vpi46, align 4
  %conv47 = zext i16 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev43, ptr noundef nonnull @.str.126, i32 noundef %45, i32 noundef %conv47) #23
  br label %do.end60

if.else48:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool50.not = icmp eq i32 %39, 0
  br i1 %tobool50.not, label %if.then51, label %if.else48.do.end60_crit_edge

if.else48.do.end60_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end60

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #22
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %brd_no54 = getelementptr inbounds %struct.lpfc_hba, ptr %49, i32 0, i32 197
  %50 = ptrtoint ptr %brd_no54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %brd_no54, align 4
  %vpi55 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %vpi55 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vpi55, align 4
  %conv56 = zext i16 %53 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %49, ptr noundef nonnull @.str.126, i32 noundef %51, i32 noundef %conv56) #20
  br label %do.end60

do.end60:                                         ; preds = %if.then51, %if.else48.do.end60_crit_edge, %do.end40
  %fc_flag61 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %fc_flag61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fc_flag61, align 4
  %and62 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.end60.if.end65_crit_edge, label %if.then64

do.end60.if.end65_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end65

if.then64:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %do.end60.if.end65_crit_edge
  tail call void @lpfc_vport_set_state(ptr noundef %1, i32 noundef 9) #20
  br label %out

if.end66:                                         ; preds = %if.end29
  %56 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load.i = load i32, ptr %ulpStatus, align 4
  %57 = and i32 %bf.load.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %57)
  %cmp.i = icmp eq i32 %57, 48
  br i1 %cmp.i, label %land.rhs.i, label %if.end66.if.end103_crit_edge

if.end66.if.end103_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end103

land.rhs.i:                                       ; preds = %if.end66
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %59, label %land.rhs.i.if.end103_crit_edge [
    i32 259, label %land.rhs.i.do.body70_crit_edge
    i32 26, label %land.rhs.i.do.body70_crit_edge740
    i32 257, label %land.rhs.i.do.body70_crit_edge741
  ]

land.rhs.i.do.body70_crit_edge741:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body70

land.rhs.i.do.body70_crit_edge740:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body70

land.rhs.i.do.body70_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body70

land.rhs.i.if.end103_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end103

do.body70:                                        ; preds = %land.rhs.i.do.body70_crit_edge, %land.rhs.i.do.body70_crit_edge740, %land.rhs.i.do.body70_crit_edge741
  %cfg_log_verbose71 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %61 = ptrtoint ptr %cfg_log_verbose71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg_log_verbose71, align 4
  %and72 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else85, label %do.end77

do.end77:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #22
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  %pcidev79 = getelementptr inbounds %struct.lpfc_hba, ptr %64, i32 0, i32 165
  %65 = ptrtoint ptr %pcidev79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcidev79, align 4
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %brd_no82 = getelementptr inbounds %struct.lpfc_hba, ptr %64, i32 0, i32 197
  %67 = ptrtoint ptr %brd_no82 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %brd_no82, align 4
  %vpi83 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %vpi83 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vpi83, align 4
  %conv84 = zext i16 %70 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev80, ptr noundef nonnull @.str.129, i32 noundef %68, i32 noundef %conv84) #23
  br label %do.end97

if.else85:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool87.not = icmp eq i32 %62, 0
  br i1 %tobool87.not, label %if.then88, label %if.else85.do.end97_crit_edge

if.else85.do.end97_crit_edge:                     ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end97

if.then88:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #22
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %brd_no91 = getelementptr inbounds %struct.lpfc_hba, ptr %72, i32 0, i32 197
  %73 = ptrtoint ptr %brd_no91 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %brd_no91, align 4
  %vpi92 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %75 = ptrtoint ptr %vpi92 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vpi92, align 4
  %conv93 = zext i16 %76 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %72, ptr noundef nonnull @.str.129, i32 noundef %74, i32 noundef %conv93) #20
  br label %do.end97

do.end97:                                         ; preds = %if.then88, %if.else85.do.end97_crit_edge, %do.end77
  %fc_flag98 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %77 = ptrtoint ptr %fc_flag98 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fc_flag98, align 4
  %and99 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.end97.out_crit_edge, label %if.then101

do.end97.out_crit_edge:                           ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then101:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br label %out

if.end103:                                        ; preds = %land.rhs.i.if.end103_crit_edge, %if.end66.if.end103_crit_edge
  %host_lock = getelementptr i8, ptr %1, i32 -2380
  %79 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %80) #20
  %fc_flag104 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %81 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fc_flag104, align 4
  %and105 = and i32 %82, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end147, label %if.then107

if.then107:                                       ; preds = %if.end103
  %and109 = and i32 %82, -1048577
  %83 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and109, ptr %fc_flag104, align 4
  %84 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %85) #20
  %gidft_inp = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %86 = ptrtoint ptr %gidft_inp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %gidft_inp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool111.not = icmp eq i32 %87, 0
  br i1 %tobool111.not, label %if.then107.do.body115_crit_edge, label %if.then112

if.then107.do.body115_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body115

if.then112:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #22
  %dec = add i32 %87, -1
  %88 = ptrtoint ptr %gidft_inp to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %dec, ptr %gidft_inp, align 4
  br label %do.body115

do.body115:                                       ; preds = %if.then112, %if.then107.do.body115_crit_edge
  %cfg_log_verbose116 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %89 = ptrtoint ptr %cfg_log_verbose116 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cfg_log_verbose116, align 4
  %and117 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.else131, label %do.end122

do.end122:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #22
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 8
  %pcidev124 = getelementptr inbounds %struct.lpfc_hba, ptr %92, i32 0, i32 165
  %93 = ptrtoint ptr %pcidev124 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pcidev124, align 4
  %dev125 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %brd_no127 = getelementptr inbounds %struct.lpfc_hba, ptr %92, i32 0, i32 197
  %95 = ptrtoint ptr %brd_no127 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %brd_no127, align 4
  %vpi128 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %97 = ptrtoint ptr %vpi128 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %vpi128, align 4
  %conv129 = zext i16 %98 to i32
  %99 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fc_flag104, align 4
  %fc_rscn_id_cnt = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %101 = ptrtoint ptr %fc_rscn_id_cnt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fc_rscn_id_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev125, ptr noundef nonnull @.str.132, i32 noundef %96, i32 noundef %conv129, i32 noundef %100, i32 noundef %102) #23
  br label %do.end145

if.else131:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool133.not = icmp eq i32 %90, 0
  br i1 %tobool133.not, label %if.then134, label %if.else131.do.end145_crit_edge

if.else131.do.end145_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end145

if.then134:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #22
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  %brd_no137 = getelementptr inbounds %struct.lpfc_hba, ptr %104, i32 0, i32 197
  %105 = ptrtoint ptr %brd_no137 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %brd_no137, align 4
  %vpi138 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %vpi138 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %vpi138, align 4
  %conv139 = zext i16 %108 to i32
  %109 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fc_flag104, align 4
  %fc_rscn_id_cnt141 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %111 = ptrtoint ptr %fc_rscn_id_cnt141 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fc_rscn_id_cnt141, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %104, ptr noundef nonnull @.str.132, i32 noundef %106, i32 noundef %conv139, i32 noundef %110, i32 noundef %112) #20
  br label %do.end145

do.end145:                                        ; preds = %if.then134, %if.else131.do.end145_crit_edge, %do.end122
  %call146 = tail call i32 @lpfc_els_handle_rscn(ptr noundef %1) #20
  br label %out

if.end147:                                        ; preds = %if.end103
  %113 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %114) #20
  %115 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %115)
  %bf.load150 = load i32, ptr %ulpStatus, align 4
  %bf.lshr151 = lshr i32 %bf.load150, 4
  %bf.clear152 = and i32 %bf.lshr151, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear152)
  %tobool153.not = icmp eq i32 %bf.clear152, 0
  br i1 %tobool153.not, label %if.else238, label %if.then154

if.then154:                                       ; preds = %if.end147
  %116 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %fc_ns_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %117)
  %cmp157 = icmp ult i8 %117, 3
  br i1 %cmp157, label %if.then159, label %if.then154.if.end187_crit_edge

if.then154.if.end187_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end187

if.then159:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear152)
  %cmp164.not = icmp eq i32 %bf.clear152, 3
  br i1 %cmp164.not, label %lor.lhs.false, label %if.then159.if.then171_crit_edge

if.then159.if.then171_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then171

lor.lhs.false:                                    ; preds = %if.then159
  %118 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx, align 4
  %and168 = and i32 %119, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and168)
  %cmp169.not = icmp eq i32 %and168, 17
  br i1 %cmp169.not, label %lor.lhs.false.if.end173_crit_edge, label %lor.lhs.false.if.then171_crit_edge

lor.lhs.false.if.then171_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then171

lor.lhs.false.if.end173_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end173

if.then171:                                       ; preds = %lor.lhs.false.if.then171_crit_edge, %if.then159.if.then171_crit_edge
  %inc = add nuw nsw i8 %117, 1
  %120 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %inc, ptr %fc_ns_retry, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %lor.lhs.false.if.end173_crit_edge
  %121 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %fc_ns_retry, align 4
  %call175 = tail call i32 @lpfc_ns_cmd(ptr noundef %1, i32 noundef 417, i8 noundef zeroext %122, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176 = icmp eq i32 %call175, 0
  br i1 %cmp176, label %if.end173.out_crit_edge, label %if.else179

if.end173.out_crit_edge:                          ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.else179:                                       ; preds = %if.end173
  %gidft_inp180 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %123 = ptrtoint ptr %gidft_inp180 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %gidft_inp180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool181.not = icmp eq i32 %124, 0
  br i1 %tobool181.not, label %if.else179.if.end187_crit_edge, label %if.then182

if.else179.if.end187_crit_edge:                   ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end187

if.then182:                                       ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #22
  %dec184 = add i32 %124, -1
  %125 = ptrtoint ptr %gidft_inp180 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %dec184, ptr %gidft_inp180, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then182, %if.else179.if.end187_crit_edge, %if.then154.if.end187_crit_edge
  %126 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fc_flag104, align 4
  %and189 = and i32 %127, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.end187.if.end192_crit_edge, label %if.then191

if.end187.if.end192_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end192

if.then191:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %if.end187.if.end192_crit_edge
  tail call void @lpfc_vport_set_state(ptr noundef %1, i32 noundef 9) #20
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %129) #20
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 8
  %pcidev207 = getelementptr inbounds %struct.lpfc_hba, ptr %131, i32 0, i32 165
  %132 = ptrtoint ptr %pcidev207 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pcidev207, align 4
  %dev208 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  %brd_no210 = getelementptr inbounds %struct.lpfc_hba, ptr %131, i32 0, i32 197
  %134 = ptrtoint ptr %brd_no210 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %brd_no210, align 4
  %vpi211 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %136 = ptrtoint ptr %vpi211 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %vpi211, align 4
  %conv212 = zext i16 %137 to i32
  %138 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %138)
  %bf.load214 = load i32, ptr %ulpStatus, align 4
  %bf.lshr215 = lshr i32 %bf.load214, 4
  %bf.clear216 = and i32 %bf.lshr215, 15
  %139 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %fc_ns_retry, align 4
  %conv218 = zext i8 %140 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev208, ptr noundef nonnull @.str.135, i32 noundef %135, i32 noundef %conv212, i32 noundef %bf.clear216, i32 noundef %conv218) #23
  br label %do.body481

if.else238:                                       ; preds = %if.end147
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %141 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %virt, align 4
  %virt239 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %7, i32 0, i32 1
  %143 = ptrtoint ptr %virt239 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %virt239, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %145)
  %bf.load240 = load i32, ptr %CommandResponse, align 4
  %bf.lshr241 = lshr i32 %bf.load240, 16
  %trunc = trunc i32 %bf.lshr241 to i16
  %146 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.256)
  switch i16 %trunc, label %do.body416 [
    i16 -32766, label %do.body245
    i16 -32767, label %if.then303
  ]

do.body245:                                       ; preds = %if.else238
  %cfg_log_verbose246 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %147 = ptrtoint ptr %cfg_log_verbose246 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cfg_log_verbose246, align 4
  %and247 = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %if.else267, label %do.end252

do.end252:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #22
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 8
  %pcidev254 = getelementptr inbounds %struct.lpfc_hba, ptr %150, i32 0, i32 165
  %151 = ptrtoint ptr %pcidev254 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pcidev254, align 4
  %dev255 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  %brd_no257 = getelementptr inbounds %struct.lpfc_hba, ptr %150, i32 0, i32 197
  %153 = ptrtoint ptr %brd_no257 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %brd_no257, align 4
  %vpi258 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %155 = ptrtoint ptr %vpi258 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %vpi258, align 4
  %conv259 = zext i16 %156 to i32
  %157 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %fc_flag104, align 4
  %un261 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %142, i32 0, i32 10
  %Fc4Type = getelementptr inbounds %struct.gid, ptr %un261, i32 0, i32 3
  %159 = ptrtoint ptr %Fc4Type to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %Fc4Type, align 1
  %conv262 = zext i8 %160 to i32
  %num_disc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %161 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %num_disc_nodes, align 8
  %gidft_inp263 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %163 = ptrtoint ptr %gidft_inp263 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %gidft_inp263, align 4
  %165 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %165)
  %bf.load265 = load i32, ptr %iocb, align 4
  %bf.clear266 = and i32 %bf.load265, 16777215
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev255, ptr noundef nonnull @.str.138, i32 noundef %154, i32 noundef %conv259, i32 noundef %158, i32 noundef %conv262, i32 noundef %162, i32 noundef %164, i32 noundef %bf.clear266) #23
  br label %do.end289

if.else267:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool269.not = icmp eq i32 %148, 0
  br i1 %tobool269.not, label %if.then270, label %if.else267.do.end289_crit_edge

if.else267.do.end289_crit_edge:                   ; preds = %if.else267
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end289

if.then270:                                       ; preds = %if.else267
  call void @__sanitizer_cov_trace_pc() #22
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 8
  %brd_no273 = getelementptr inbounds %struct.lpfc_hba, ptr %167, i32 0, i32 197
  %168 = ptrtoint ptr %brd_no273 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %brd_no273, align 4
  %vpi274 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %170 = ptrtoint ptr %vpi274 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %vpi274, align 4
  %conv275 = zext i16 %171 to i32
  %172 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %fc_flag104, align 4
  %un277 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %142, i32 0, i32 10
  %Fc4Type278 = getelementptr inbounds %struct.gid, ptr %un277, i32 0, i32 3
  %174 = ptrtoint ptr %Fc4Type278 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %Fc4Type278, align 1
  %conv279 = zext i8 %175 to i32
  %num_disc_nodes280 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %176 = ptrtoint ptr %num_disc_nodes280 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %num_disc_nodes280, align 8
  %gidft_inp281 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %178 = ptrtoint ptr %gidft_inp281 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %gidft_inp281, align 4
  %180 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %180)
  %bf.load284 = load i32, ptr %iocb, align 4
  %bf.clear285 = and i32 %bf.load284, 16777215
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %167, ptr noundef nonnull @.str.138, i32 noundef %169, i32 noundef %conv275, i32 noundef %173, i32 noundef %conv279, i32 noundef %177, i32 noundef %179, i32 noundef %bf.clear285) #20
  br label %do.end289

do.end289:                                        ; preds = %if.then270, %if.else267.do.end289_crit_edge, %do.end252
  %un290 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %142, i32 0, i32 10
  %Fc4Type291 = getelementptr inbounds %struct.gid, ptr %un290, i32 0, i32 3
  %181 = ptrtoint ptr %Fc4Type291 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %Fc4Type291, align 1
  %183 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %183)
  %bf.load294 = load i32, ptr %iocb, align 4
  %bf.clear295 = and i32 %bf.load294, 16777215
  tail call fastcc void @lpfc_ns_rsp(ptr noundef %1, ptr noundef %7, i8 noundef zeroext %182, i32 noundef %bf.clear295)
  br label %if.end473

if.then303:                                       ; preds = %if.else238
  %ReasonCode = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 7
  %184 = ptrtoint ptr %ReasonCode to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %ReasonCode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %185)
  %cmp305 = icmp eq i8 %185, 9
  br i1 %cmp305, label %land.lhs.true, label %if.then303.do.body363_crit_edge

if.then303.do.body363_crit_edge:                  ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body363

land.lhs.true:                                    ; preds = %if.then303
  %Explanation = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 8
  %186 = ptrtoint ptr %Explanation to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %Explanation, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %187)
  %cmp308 = icmp eq i8 %187, 7
  br i1 %cmp308, label %do.body311, label %land.lhs.true.do.body363_crit_edge

land.lhs.true.do.body363_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body363

do.body311:                                       ; preds = %land.lhs.true
  %cfg_log_verbose312 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %188 = ptrtoint ptr %cfg_log_verbose312 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %cfg_log_verbose312, align 4
  %and313 = and i32 %189, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %tobool314.not = icmp eq i32 %and313, 0
  br i1 %tobool314.not, label %if.else334, label %do.end318

do.end318:                                        ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #22
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 8
  %pcidev320 = getelementptr inbounds %struct.lpfc_hba, ptr %191, i32 0, i32 165
  %192 = ptrtoint ptr %pcidev320 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pcidev320, align 4
  %dev321 = getelementptr inbounds %struct.pci_dev, ptr %193, i32 0, i32 44
  %brd_no323 = getelementptr inbounds %struct.lpfc_hba, ptr %191, i32 0, i32 197
  %194 = ptrtoint ptr %brd_no323 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %brd_no323, align 4
  %vpi324 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %196 = ptrtoint ptr %vpi324 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %vpi324, align 4
  %conv325 = zext i16 %197 to i32
  %198 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %fc_flag104, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev321, ptr noundef nonnull @.str.141, i32 noundef %195, i32 noundef %conv325, i32 noundef 32769, i32 noundef 9, i32 noundef 7, i32 noundef %199) #23
  br label %do.end354

if.else334:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool336.not = icmp eq i32 %189, 0
  br i1 %tobool336.not, label %if.then337, label %if.else334.do.end354_crit_edge

if.else334.do.end354_crit_edge:                   ; preds = %if.else334
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end354

if.then337:                                       ; preds = %if.else334
  call void @__sanitizer_cov_trace_pc() #22
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 8
  %brd_no340 = getelementptr inbounds %struct.lpfc_hba, ptr %201, i32 0, i32 197
  %202 = ptrtoint ptr %brd_no340 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %brd_no340, align 4
  %vpi341 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %204 = ptrtoint ptr %vpi341 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %vpi341, align 4
  %conv342 = zext i16 %205 to i32
  %206 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %fc_flag104, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %201, ptr noundef nonnull @.str.141, i32 noundef %203, i32 noundef %conv342, i32 noundef 32769, i32 noundef 9, i32 noundef 7, i32 noundef %207) #20
  br label %do.end354

do.end354:                                        ; preds = %if.then337, %if.else334.do.end354_crit_edge, %do.end318
  %208 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %208)
  %bf.load356 = load i32, ptr %CommandResponse, align 4
  %bf.lshr357 = lshr i32 %bf.load356, 16
  %209 = ptrtoint ptr %ReasonCode to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %ReasonCode, align 1
  %conv359 = zext i8 %210 to i32
  %211 = ptrtoint ptr %Explanation to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %Explanation, align 2
  %conv361 = zext i8 %212 to i32
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.143, i32 noundef %bf.lshr357, i32 noundef %conv359, i32 noundef %conv361) #20
  br label %if.end473

do.body363:                                       ; preds = %land.lhs.true.do.body363_crit_edge, %if.then303.do.body363_crit_edge
  %cfg_log_verbose364 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %213 = ptrtoint ptr %cfg_log_verbose364 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %cfg_log_verbose364, align 4
  %and365 = and i32 %214, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and365)
  %tobool366.not = icmp eq i32 %and365, 0
  br i1 %tobool366.not, label %if.else386, label %do.end370

do.end370:                                        ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #22
  %215 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %1, align 8
  %pcidev372 = getelementptr inbounds %struct.lpfc_hba, ptr %216, i32 0, i32 165
  %217 = ptrtoint ptr %pcidev372 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pcidev372, align 4
  %dev373 = getelementptr inbounds %struct.pci_dev, ptr %218, i32 0, i32 44
  %brd_no375 = getelementptr inbounds %struct.lpfc_hba, ptr %216, i32 0, i32 197
  %219 = ptrtoint ptr %brd_no375 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %brd_no375, align 4
  %vpi376 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %221 = ptrtoint ptr %vpi376 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %vpi376, align 4
  %conv377 = zext i16 %222 to i32
  %conv382 = zext i8 %185 to i32
  %Explanation383 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 8
  %223 = ptrtoint ptr %Explanation383 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %Explanation383, align 2
  %conv384 = zext i8 %224 to i32
  %225 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %fc_flag104, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev373, ptr noundef nonnull @.str.145, i32 noundef %220, i32 noundef %conv377, i32 noundef %bf.lshr241, i32 noundef %conv382, i32 noundef %conv384, i32 noundef %226) #23
  br label %do.end406

if.else386:                                       ; preds = %do.body363
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool388.not = icmp eq i32 %214, 0
  br i1 %tobool388.not, label %if.then389, label %if.else386.do.end406_crit_edge

if.else386.do.end406_crit_edge:                   ; preds = %if.else386
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end406

if.then389:                                       ; preds = %if.else386
  call void @__sanitizer_cov_trace_pc() #22
  %227 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %1, align 8
  %brd_no392 = getelementptr inbounds %struct.lpfc_hba, ptr %228, i32 0, i32 197
  %229 = ptrtoint ptr %brd_no392 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %brd_no392, align 4
  %vpi393 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %231 = ptrtoint ptr %vpi393 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %vpi393, align 4
  %conv394 = zext i16 %232 to i32
  %conv399 = zext i8 %185 to i32
  %Explanation400 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 8
  %233 = ptrtoint ptr %Explanation400 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %Explanation400, align 2
  %conv401 = zext i8 %234 to i32
  %235 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %fc_flag104, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %228, ptr noundef nonnull @.str.145, i32 noundef %230, i32 noundef %conv394, i32 noundef %bf.lshr241, i32 noundef %conv399, i32 noundef %conv401, i32 noundef %236) #20
  br label %do.end406

do.end406:                                        ; preds = %if.then389, %if.else386.do.end406_crit_edge, %do.end370
  %237 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %237)
  %bf.load408 = load i32, ptr %CommandResponse, align 4
  %bf.lshr409 = lshr i32 %bf.load408, 16
  %238 = ptrtoint ptr %ReasonCode to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %ReasonCode, align 1
  %conv411 = zext i8 %239 to i32
  %Explanation412 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 8
  %240 = ptrtoint ptr %Explanation412 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %Explanation412, align 2
  %conv413 = zext i8 %241 to i32
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.147, i32 noundef %bf.lshr409, i32 noundef %conv411, i32 noundef %conv413) #20
  br label %if.end473

do.body416:                                       ; preds = %if.else238
  call void @__sanitizer_cov_trace_pc() #22
  %242 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %1, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %243) #20
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %1, align 8
  %pcidev430 = getelementptr inbounds %struct.lpfc_hba, ptr %245, i32 0, i32 165
  %246 = ptrtoint ptr %pcidev430 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %pcidev430, align 4
  %dev431 = getelementptr inbounds %struct.pci_dev, ptr %247, i32 0, i32 44
  %brd_no433 = getelementptr inbounds %struct.lpfc_hba, ptr %245, i32 0, i32 197
  %248 = ptrtoint ptr %brd_no433 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %brd_no433, align 4
  %vpi434 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %250 = ptrtoint ptr %vpi434 to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %vpi434, align 4
  %conv435 = zext i16 %251 to i32
  %252 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %252)
  %bf.load437 = load i32, ptr %CommandResponse, align 4
  %bf.lshr438 = lshr i32 %bf.load437, 16
  %ReasonCode439 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 7
  %253 = ptrtoint ptr %ReasonCode439 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %ReasonCode439, align 1
  %conv440 = zext i8 %254 to i32
  %Explanation441 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %144, i32 0, i32 8
  %255 = ptrtoint ptr %Explanation441 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %Explanation441, align 2
  %conv442 = zext i8 %256 to i32
  %257 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %fc_flag104, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev431, ptr noundef nonnull @.str.149, i32 noundef %249, i32 noundef %conv435, i32 noundef %bf.lshr438, i32 noundef %conv440, i32 noundef %conv442, i32 noundef %258) #23
  %259 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %259)
  %bf.load466 = load i32, ptr %CommandResponse, align 4
  %bf.lshr467 = lshr i32 %bf.load466, 16
  %260 = ptrtoint ptr %ReasonCode439 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %ReasonCode439, align 1
  %conv469 = zext i8 %261 to i32
  %262 = ptrtoint ptr %Explanation441 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %Explanation441, align 2
  %conv471 = zext i8 %263 to i32
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.151, i32 noundef %bf.lshr467, i32 noundef %conv469, i32 noundef %conv471) #20
  br label %if.end473

if.end473:                                        ; preds = %do.body416, %do.end406, %do.end354, %do.end289
  %gidft_inp474 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %264 = ptrtoint ptr %gidft_inp474 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %gidft_inp474, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool475.not = icmp eq i32 %265, 0
  br i1 %tobool475.not, label %if.end473.do.body481_crit_edge, label %if.then476

if.end473.do.body481_crit_edge:                   ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body481

if.then476:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #22
  %dec478 = add i32 %265, -1
  %266 = ptrtoint ptr %gidft_inp474 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %dec478, ptr %gidft_inp474, align 4
  br label %do.body481

do.body481:                                       ; preds = %if.then476, %if.end473.do.body481_crit_edge, %if.end192
  %cfg_log_verbose482 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %267 = ptrtoint ptr %cfg_log_verbose482 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %cfg_log_verbose482, align 4
  %and483 = and i32 %268, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and483)
  %tobool484.not = icmp eq i32 %and483, 0
  br i1 %tobool484.not, label %if.else498, label %do.end488

do.end488:                                        ; preds = %do.body481
  call void @__sanitizer_cov_trace_pc() #22
  %269 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %1, align 8
  %pcidev490 = getelementptr inbounds %struct.lpfc_hba, ptr %270, i32 0, i32 165
  %271 = ptrtoint ptr %pcidev490 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %pcidev490, align 4
  %dev491 = getelementptr inbounds %struct.pci_dev, ptr %272, i32 0, i32 44
  %brd_no493 = getelementptr inbounds %struct.lpfc_hba, ptr %270, i32 0, i32 197
  %273 = ptrtoint ptr %brd_no493 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %brd_no493, align 4
  %vpi494 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %275 = ptrtoint ptr %vpi494 to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %vpi494, align 4
  %conv495 = zext i16 %276 to i32
  %gidft_inp496 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %277 = ptrtoint ptr %gidft_inp496 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %gidft_inp496, align 4
  %num_disc_nodes497 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %279 = ptrtoint ptr %num_disc_nodes497 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %num_disc_nodes497, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev491, ptr noundef nonnull @.str.153, i32 noundef %274, i32 noundef %conv495, i32 noundef %278, i32 noundef %280) #23
  br label %do.end512

if.else498:                                       ; preds = %do.body481
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool500.not = icmp eq i32 %268, 0
  br i1 %tobool500.not, label %if.then501, label %if.else498.do.end512_crit_edge

if.else498.do.end512_crit_edge:                   ; preds = %if.else498
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end512

if.then501:                                       ; preds = %if.else498
  call void @__sanitizer_cov_trace_pc() #22
  %281 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %1, align 8
  %brd_no504 = getelementptr inbounds %struct.lpfc_hba, ptr %282, i32 0, i32 197
  %283 = ptrtoint ptr %brd_no504 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %brd_no504, align 4
  %vpi505 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %285 = ptrtoint ptr %vpi505 to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %vpi505, align 4
  %conv506 = zext i16 %286 to i32
  %gidft_inp507 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %287 = ptrtoint ptr %gidft_inp507 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %gidft_inp507, align 4
  %num_disc_nodes508 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %289 = ptrtoint ptr %num_disc_nodes508 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %num_disc_nodes508, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %282, ptr noundef nonnull @.str.153, i32 noundef %284, i32 noundef %conv506, i32 noundef %288, i32 noundef %290) #20
  br label %do.end512

do.end512:                                        ; preds = %if.then501, %if.else498.do.end512_crit_edge, %do.end488
  %num_disc_nodes513 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %291 = ptrtoint ptr %num_disc_nodes513 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %num_disc_nodes513, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %cmp514 = icmp eq i32 %292, 0
  br i1 %cmp514, label %land.lhs.true516, label %do.end512.out_crit_edge

do.end512.out_crit_edge:                          ; preds = %do.end512
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

land.lhs.true516:                                 ; preds = %do.end512
  %gidft_inp517 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %293 = ptrtoint ptr %gidft_inp517 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %gidft_inp517, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %cmp518 = icmp eq i32 %294, 0
  br i1 %cmp518, label %if.then520, label %land.lhs.true516.out_crit_edge

land.lhs.true516.out_crit_edge:                   ; preds = %land.lhs.true516
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then520:                                       ; preds = %land.lhs.true516
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 3
  %295 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %296)
  %cmp521 = icmp ugt i32 %296, 12
  br i1 %cmp521, label %if.then523, label %if.then520.if.end533_crit_edge

if.then520.if.end533_crit_edge:                   ; preds = %if.then520
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end533

if.then523:                                       ; preds = %if.then520
  %297 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %fc_flag104, align 4
  %and525 = and i32 %298, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and525)
  %tobool526.not = icmp eq i32 %and525, 0
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br i1 %tobool526.not, label %if.then523.if.end533_crit_edge, label %if.then527

if.then523.if.end533_crit_edge:                   ; preds = %if.then523
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end533

if.then527:                                       ; preds = %if.then523
  call void @__sanitizer_cov_trace_pc() #22
  %299 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %300) #20
  %301 = ptrtoint ptr %fc_flag104 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %fc_flag104, align 4
  %or = or i32 %302, 32
  store i32 %or, ptr %fc_flag104, align 4
  %303 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %304) #20
  br label %if.end533

if.end533:                                        ; preds = %if.then527, %if.then523.if.end533_crit_edge, %if.then520.if.end533_crit_edge
  tail call void @lpfc_disc_start(ptr noundef %1) #20
  br label %out

out:                                              ; preds = %if.end533, %land.lhs.true516.out_crit_edge, %do.end512.out_crit_edge, %if.end173.out_crit_edge, %do.end145, %if.then101, %do.end97.out_crit_edge, %if.end65, %if.then27, %if.then24.out_crit_edge, %if.then11, %if.else.out_crit_edge, %do.end
  %call535 = tail call i32 @lpfc_ct_free_iocb(ptr noundef %phba, ptr noundef %cmdiocb)
  %call536 = tail call i32 @lpfc_nlp_put(ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_gff_id(ptr noundef %phba, ptr noundef %cmdiocb, ptr nocapture noundef readonly %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 18
  %2 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context1, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %4 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %un = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %un, align 4
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 15
  %arrayidx = getelementptr %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.155, i32 noundef %bf.clear, i32 noundef %12, i32 noundef %9) #20
  %event_tag = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 21
  %13 = ptrtoint ptr %event_tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %event_tag, align 4
  %fc_eventTag = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 51
  %15 = ptrtoint ptr %fc_eventTag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fc_eventTag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.end18, label %do.body

do.body:                                          ; preds = %entry
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %17 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 165
  %21 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 197
  %23 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vpi, align 4
  %conv = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.156, i32 noundef %24, i32 noundef %conv) #23
  br label %cleanup

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %brd_no12 = getelementptr inbounds %struct.lpfc_hba, ptr %28, i32 0, i32 197
  %29 = ptrtoint ptr %brd_no12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brd_no12, align 4
  %vpi13 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %vpi13 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vpi13, align 4
  %conv14 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %28, ptr noundef nonnull @.str.156, i32 noundef %30, i32 noundef %conv14) #20
  br label %cleanup

if.end18:                                         ; preds = %entry
  %33 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load20 = load i32, ptr %ulpStatus, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 4
  %bf.clear22 = and i32 %bf.lshr21, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear22)
  %cmp23 = icmp eq i32 %bf.clear22, 0
  br i1 %cmp23, label %if.then25, label %if.else120

if.then25:                                        ; preds = %if.end18
  %virt26 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %virt26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt26, align 4
  %arrayidx29 = getelementptr %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 10, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx29, align 1
  %cfg_log_verbose31 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %38 = ptrtoint ptr %cfg_log_verbose31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cfg_log_verbose31, align 4
  %and32 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else53, label %do.end37

do.end37:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %pcidev39 = getelementptr inbounds %struct.lpfc_hba, ptr %41, i32 0, i32 165
  %42 = ptrtoint ptr %pcidev39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcidev39, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %brd_no42 = getelementptr inbounds %struct.lpfc_hba, ptr %41, i32 0, i32 197
  %44 = ptrtoint ptr %brd_no42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brd_no42, align 4
  %vpi43 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %vpi43 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vpi43, align 4
  %conv44 = zext i16 %47 to i32
  %conv45 = zext i8 %37 to i32
  %and47 = and i32 %conv45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %cond = select i1 %tobool48.not, ptr @.str.15, ptr @.str.161
  %and50 = and i32 %conv45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.15, ptr @.str.162
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev40, ptr noundef nonnull @.str.159, i32 noundef %45, i32 noundef %conv44, i32 noundef %9, i32 noundef %conv45, ptr noundef nonnull %cond, ptr noundef nonnull %cond52) #23
  br label %do.end74

if.else53:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool55.not = icmp eq i32 %39, 0
  br i1 %tobool55.not, label %if.then56, label %if.else53.do.end74_crit_edge

if.else53.do.end74_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end74

if.then56:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #22
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %brd_no59 = getelementptr inbounds %struct.lpfc_hba, ptr %49, i32 0, i32 197
  %50 = ptrtoint ptr %brd_no59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %brd_no59, align 4
  %vpi60 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %vpi60 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vpi60, align 4
  %conv61 = zext i16 %53 to i32
  %conv62 = zext i8 %37 to i32
  %and64 = and i32 %conv62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %cond66 = select i1 %tobool65.not, ptr @.str.15, ptr @.str.161
  %and68 = and i32 %conv62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %cond70 = select i1 %tobool69.not, ptr @.str.15, ptr @.str.162
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %49, ptr noundef nonnull @.str.159, i32 noundef %51, i32 noundef %conv61, i32 noundef %9, i32 noundef %conv62, ptr noundef nonnull %cond66, ptr noundef nonnull %cond70) #20
  br label %do.end74

do.end74:                                         ; preds = %if.then56, %if.else53.do.end74_crit_edge, %do.end37
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 5
  %54 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load75 = load i32, ptr %CommandResponse, align 4
  %bf.lshr76.mask = and i32 %bf.load75, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147352576, i32 %bf.lshr76.mask)
  %cmp77 = icmp eq i32 %bf.lshr76.mask, -2147352576
  br i1 %cmp77, label %if.then79, label %do.end74.if.end200_crit_edge

do.end74.if.end200_crit_edge:                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end200

if.then79:                                        ; preds = %do.end74
  %conv80 = zext i8 %37 to i32
  %55 = and i32 %conv80, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %do.body87, label %if.then79.if.end200_crit_edge

if.then79.if.end200_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end200

do.body87:                                        ; preds = %if.then79
  %57 = ptrtoint ptr %cfg_log_verbose31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cfg_log_verbose31, align 4
  %and89 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.else103, label %do.end94

do.end94:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #22
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  %pcidev96 = getelementptr inbounds %struct.lpfc_hba, ptr %60, i32 0, i32 165
  %61 = ptrtoint ptr %pcidev96 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pcidev96, align 4
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %brd_no99 = getelementptr inbounds %struct.lpfc_hba, ptr %60, i32 0, i32 197
  %63 = ptrtoint ptr %brd_no99 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %brd_no99, align 4
  %vpi100 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %65 = ptrtoint ptr %vpi100 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vpi100, align 4
  %conv101 = zext i16 %66 to i32
  %fc_rscn_id_cnt = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %67 = ptrtoint ptr %fc_rscn_id_cnt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fc_rscn_id_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev97, ptr noundef nonnull @.str.164, i32 noundef %64, i32 noundef %conv101, i32 noundef %9, i32 noundef %conv80, i32 noundef %68) #23
  br label %out

if.else103:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool105.not = icmp eq i32 %58, 0
  br i1 %tobool105.not, label %if.then106, label %if.else103.out_crit_edge

if.else103.out_crit_edge:                         ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then106:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #22
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  %brd_no109 = getelementptr inbounds %struct.lpfc_hba, ptr %70, i32 0, i32 197
  %71 = ptrtoint ptr %brd_no109 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %brd_no109, align 4
  %vpi110 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %vpi110 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vpi110, align 4
  %conv111 = zext i16 %74 to i32
  %fc_rscn_id_cnt113 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %75 = ptrtoint ptr %fc_rscn_id_cnt113 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fc_rscn_id_cnt113, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %70, ptr noundef nonnull @.str.164, i32 noundef %72, i32 noundef %conv111, i32 noundef %9, i32 noundef %conv80, i32 noundef %76) #20
  br label %out

if.else120:                                       ; preds = %if.end18
  %retry121 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 14
  %77 = ptrtoint ptr %retry121 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %retry121, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %78)
  %cmp123 = icmp ult i8 %78, 3
  br i1 %cmp123, label %if.then125, label %if.else120.do.body153_crit_edge

if.else120.do.body153_crit_edge:                  ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body153

if.then125:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear22)
  %cmp130 = icmp eq i32 %bf.clear22, 3
  br i1 %cmp130, label %if.then132, label %if.then125.if.then142.sink.split_crit_edge

if.then125.if.then142.sink.split_crit_edge:       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then142.sink.split

if.then132:                                       ; preds = %if.then125
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx, align 4
  %and135 = and i32 %80, 511
  %81 = zext i32 %and135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %and135, label %if.then132.if.then142.sink.split_crit_edge [
    i32 17, label %if.then132.if.then142_crit_edge
    i32 26, label %if.then132.do.body153_crit_edge
    i32 259, label %if.then132.do.body153_crit_edge472
    i32 257, label %if.then132.do.body153_crit_edge473
  ]

if.then132.do.body153_crit_edge473:               ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body153

if.then132.do.body153_crit_edge472:               ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body153

if.then132.do.body153_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body153

if.then132.if.then142_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then142

if.then132.if.then142.sink.split_crit_edge:       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then142.sink.split

if.then142.sink.split:                            ; preds = %if.then132.if.then142.sink.split_crit_edge, %if.then125.if.then142.sink.split_crit_edge
  %inc139 = add nuw nsw i8 %78, 1
  %82 = ptrtoint ptr %retry121 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %inc139, ptr %retry121, align 2
  br label %if.then142

if.then142:                                       ; preds = %if.then142.sink.split, %if.then132.if.then142_crit_edge
  %83 = ptrtoint ptr %retry121 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %retry121, align 2
  %call144 = tail call i32 @lpfc_ns_cmd(ptr noundef %1, i32 noundef 287, i8 noundef zeroext %84, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %if.then142.cleanup_crit_edge, label %if.then142.do.body153_crit_edge

if.then142.do.body153_crit_edge:                  ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body153

if.then142.cleanup_crit_edge:                     ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body153:                                       ; preds = %if.then142.do.body153_crit_edge, %if.then132.do.body153_crit_edge, %if.then132.do.body153_crit_edge472, %if.then132.do.body153_crit_edge473, %if.else120.do.body153_crit_edge
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %86) #20
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  %pcidev166 = getelementptr inbounds %struct.lpfc_hba, ptr %88, i32 0, i32 165
  %89 = ptrtoint ptr %pcidev166 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcidev166, align 4
  %dev167 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %brd_no169 = getelementptr inbounds %struct.lpfc_hba, ptr %88, i32 0, i32 197
  %91 = ptrtoint ptr %brd_no169 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %brd_no169, align 4
  %vpi170 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %93 = ptrtoint ptr %vpi170 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %vpi170, align 4
  %conv171 = zext i16 %94 to i32
  %95 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %95)
  %bf.load173 = load i32, ptr %ulpStatus, align 4
  %bf.lshr174 = lshr i32 %bf.load173, 4
  %bf.clear175 = and i32 %bf.lshr174, 15
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx, align 4
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %98 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fc_flag, align 4
  %fc_rscn_id_cnt178 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %100 = ptrtoint ptr %fc_rscn_id_cnt178 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fc_rscn_id_cnt178, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev167, ptr noundef nonnull @.str.167, i32 noundef %92, i32 noundef %conv171, i32 noundef %9, i32 noundef %bf.clear175, i32 noundef %97, i32 noundef %99, i32 noundef %101) #23
  br label %if.end200

if.end200:                                        ; preds = %do.body153, %if.then79.if.end200_crit_edge, %do.end74.if.end200_crit_edge
  %call201 = tail call ptr @lpfc_setup_disc_node(ptr noundef %1, i32 noundef %9) #20
  %tobool202.not = icmp eq ptr %call201, null
  %cfg_log_verbose239 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %102 = ptrtoint ptr %cfg_log_verbose239 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cfg_log_verbose239, align 4
  %and240 = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool202.not, label %do.body238, label %do.body204

do.body204:                                       ; preds = %if.end200
  br i1 %tobool241.not, label %if.else221, label %do.end211

do.end211:                                        ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #22
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 8
  %pcidev213 = getelementptr inbounds %struct.lpfc_hba, ptr %105, i32 0, i32 165
  %106 = ptrtoint ptr %pcidev213 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pcidev213, align 4
  %dev214 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %brd_no216 = getelementptr inbounds %struct.lpfc_hba, ptr %105, i32 0, i32 197
  %108 = ptrtoint ptr %brd_no216 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %brd_no216, align 4
  %vpi217 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %110 = ptrtoint ptr %vpi217 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %vpi217, align 4
  %conv218 = zext i16 %111 to i32
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %call201, i32 0, i32 5
  %112 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nlp_flag, align 4
  %fc_flag219 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %114 = ptrtoint ptr %fc_flag219 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %fc_flag219, align 4
  %fc_rscn_id_cnt220 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %116 = ptrtoint ptr %fc_rscn_id_cnt220 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fc_rscn_id_cnt220, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev214, ptr noundef nonnull @.str.170, i32 noundef %109, i32 noundef %conv218, i32 noundef %9, i32 noundef %113, i32 noundef %115, i32 noundef %117) #23
  br label %out

if.else221:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool223.not = icmp eq i32 %103, 0
  br i1 %tobool223.not, label %if.then224, label %if.else221.out_crit_edge

if.else221.out_crit_edge:                         ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then224:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #22
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 8
  %brd_no227 = getelementptr inbounds %struct.lpfc_hba, ptr %119, i32 0, i32 197
  %120 = ptrtoint ptr %brd_no227 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %brd_no227, align 4
  %vpi228 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %122 = ptrtoint ptr %vpi228 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %vpi228, align 4
  %conv229 = zext i16 %123 to i32
  %nlp_flag230 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call201, i32 0, i32 5
  %124 = ptrtoint ptr %nlp_flag230 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nlp_flag230, align 4
  %fc_flag231 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %126 = ptrtoint ptr %fc_flag231 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fc_flag231, align 4
  %fc_rscn_id_cnt232 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %128 = ptrtoint ptr %fc_rscn_id_cnt232 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %fc_rscn_id_cnt232, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %119, ptr noundef nonnull @.str.170, i32 noundef %121, i32 noundef %conv229, i32 noundef %9, i32 noundef %125, i32 noundef %127, i32 noundef %129) #20
  br label %out

do.body238:                                       ; preds = %if.end200
  br i1 %tobool241.not, label %if.else255, label %do.end245

do.end245:                                        ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #22
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 8
  %pcidev247 = getelementptr inbounds %struct.lpfc_hba, ptr %131, i32 0, i32 165
  %132 = ptrtoint ptr %pcidev247 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pcidev247, align 4
  %dev248 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  %brd_no250 = getelementptr inbounds %struct.lpfc_hba, ptr %131, i32 0, i32 197
  %134 = ptrtoint ptr %brd_no250 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %brd_no250, align 4
  %vpi251 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %136 = ptrtoint ptr %vpi251 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %vpi251, align 4
  %conv252 = zext i16 %137 to i32
  %fc_flag253 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %138 = ptrtoint ptr %fc_flag253 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %fc_flag253, align 4
  %fc_rscn_id_cnt254 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %140 = ptrtoint ptr %fc_rscn_id_cnt254 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %fc_rscn_id_cnt254, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev248, ptr noundef nonnull @.str.173, i32 noundef %135, i32 noundef %conv252, i32 noundef %9, i32 noundef %139, i32 noundef %141) #23
  br label %out

if.else255:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool257.not = icmp eq i32 %103, 0
  br i1 %tobool257.not, label %if.then258, label %if.else255.out_crit_edge

if.else255.out_crit_edge:                         ; preds = %if.else255
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then258:                                       ; preds = %if.else255
  call void @__sanitizer_cov_trace_pc() #22
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 8
  %brd_no261 = getelementptr inbounds %struct.lpfc_hba, ptr %143, i32 0, i32 197
  %144 = ptrtoint ptr %brd_no261 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %brd_no261, align 4
  %vpi262 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %146 = ptrtoint ptr %vpi262 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %vpi262, align 4
  %conv263 = zext i16 %147 to i32
  %fc_flag264 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %148 = ptrtoint ptr %fc_flag264 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fc_flag264, align 4
  %fc_rscn_id_cnt265 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 28
  %150 = ptrtoint ptr %fc_rscn_id_cnt265 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %fc_rscn_id_cnt265, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %143, ptr noundef nonnull @.str.173, i32 noundef %145, i32 noundef %conv263, i32 noundef %9, i32 noundef %149, i32 noundef %151) #20
  br label %out

out:                                              ; preds = %if.then258, %if.else255.out_crit_edge, %do.end245, %if.then224, %if.else221.out_crit_edge, %do.end211, %if.then106, %if.else103.out_crit_edge, %do.end94
  %num_disc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 25
  %152 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_disc_nodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool271.not = icmp eq i32 %153, 0
  br i1 %tobool271.not, label %out.do.body275_crit_edge, label %if.then272

out.do.body275_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body275

if.then272:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #22
  %dec = add i32 %153, -1
  %154 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %dec, ptr %num_disc_nodes, align 8
  br label %do.body275

do.body275:                                       ; preds = %if.then272, %out.do.body275_crit_edge
  %cfg_log_verbose276 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %155 = ptrtoint ptr %cfg_log_verbose276 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cfg_log_verbose276, align 4
  %and277 = and i32 %156, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %if.else291, label %do.end282

do.end282:                                        ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #22
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 8
  %pcidev284 = getelementptr inbounds %struct.lpfc_hba, ptr %158, i32 0, i32 165
  %159 = ptrtoint ptr %pcidev284 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pcidev284, align 4
  %dev285 = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 44
  %brd_no287 = getelementptr inbounds %struct.lpfc_hba, ptr %158, i32 0, i32 197
  %161 = ptrtoint ptr %brd_no287 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %brd_no287, align 4
  %vpi288 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %163 = ptrtoint ptr %vpi288 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %vpi288, align 4
  %conv289 = zext i16 %164 to i32
  %gidft_inp = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %165 = ptrtoint ptr %gidft_inp to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %gidft_inp, align 4
  %167 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_disc_nodes, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev285, ptr noundef nonnull @.str.176, i32 noundef %162, i32 noundef %conv289, i32 noundef %166, i32 noundef %168) #23
  br label %do.end305

if.else291:                                       ; preds = %do.body275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool293.not = icmp eq i32 %156, 0
  br i1 %tobool293.not, label %if.then294, label %if.else291.do.end305_crit_edge

if.else291.do.end305_crit_edge:                   ; preds = %if.else291
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end305

if.then294:                                       ; preds = %if.else291
  call void @__sanitizer_cov_trace_pc() #22
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 8
  %brd_no297 = getelementptr inbounds %struct.lpfc_hba, ptr %170, i32 0, i32 197
  %171 = ptrtoint ptr %brd_no297 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %brd_no297, align 4
  %vpi298 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %173 = ptrtoint ptr %vpi298 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %vpi298, align 4
  %conv299 = zext i16 %174 to i32
  %gidft_inp300 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 26
  %175 = ptrtoint ptr %gidft_inp300 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %gidft_inp300, align 4
  %177 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %num_disc_nodes, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %170, ptr noundef nonnull @.str.176, i32 noundef %172, i32 noundef %conv299, i32 noundef %176, i32 noundef %178) #20
  br label %do.end305

do.end305:                                        ; preds = %if.then294, %if.else291.do.end305_crit_edge, %do.end282
  %179 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_disc_nodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp307 = icmp eq i32 %180, 0
  br i1 %cmp307, label %if.then309, label %do.end305.cleanup_crit_edge

do.end305.cleanup_crit_edge:                      ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then309:                                       ; preds = %do.end305
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 3
  %181 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %182)
  %cmp310 = icmp ugt i32 %182, 12
  br i1 %cmp310, label %if.then312, label %if.then309.if.end321_crit_edge

if.then309.if.end321_crit_edge:                   ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end321

if.then312:                                       ; preds = %if.then309
  %fc_flag313 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 7
  %183 = ptrtoint ptr %fc_flag313 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %fc_flag313, align 4
  %and314 = and i32 %184, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  tail call void @lpfc_els_flush_rscn(ptr noundef %1) #20
  br i1 %tobool315.not, label %if.then312.if.end321_crit_edge, label %if.then316

if.then312.if.end321_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end321

if.then316:                                       ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #22
  %host_lock = getelementptr i8, ptr %1, i32 -2380
  %185 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %186) #20
  %187 = ptrtoint ptr %fc_flag313 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %fc_flag313, align 4
  %or = or i32 %188, 32
  store i32 %or, ptr %fc_flag313, align 4
  %189 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %190) #20
  br label %if.end321

if.end321:                                        ; preds = %if.then316, %if.then312.if.end321_crit_edge, %if.then309.if.end321_crit_edge
  tail call void @lpfc_disc_start(ptr noundef %1) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end321, %do.end305.cleanup_crit_edge, %if.then142.cleanup_crit_edge, %if.then9, %if.else.cleanup_crit_edge, %do.end
  %context_un323 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 22
  %191 = ptrtoint ptr %context_un323 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %context_un323, align 8
  %call324 = tail call i32 @lpfc_ct_free_iocb(ptr noundef %phba, ptr noundef %cmdiocb)
  %call325 = tail call i32 @lpfc_nlp_put(ptr noundef %192) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_gft_id(ptr noundef %phba, ptr noundef %cmdiocb, ptr nocapture noundef readonly %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 18
  %2 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context1, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %4 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %un = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %un, align 4
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 15
  %arrayidx = getelementptr %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.178, i32 noundef %bf.clear, i32 noundef %12, i32 noundef %9) #20
  %event_tag = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 21
  %13 = ptrtoint ptr %event_tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %event_tag, align 4
  %fc_eventTag = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 51
  %15 = ptrtoint ptr %fc_eventTag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fc_eventTag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.end18, label %do.body

do.body:                                          ; preds = %entry
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %17 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 165
  %21 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %20, i32 0, i32 197
  %23 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vpi, align 4
  %conv = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.179, i32 noundef %24, i32 noundef %conv) #23
  br label %out

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %brd_no12 = getelementptr inbounds %struct.lpfc_hba, ptr %28, i32 0, i32 197
  %29 = ptrtoint ptr %brd_no12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brd_no12, align 4
  %vpi13 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %vpi13 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vpi13, align 4
  %conv14 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %28, ptr noundef nonnull @.str.179, i32 noundef %30, i32 noundef %conv14) #20
  br label %out

if.end18:                                         ; preds = %entry
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 22
  %33 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %context_un, align 8
  %35 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load20 = load i32, ptr %ulpStatus, align 4
  %36 = and i32 %bf.load20, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp23 = icmp eq i32 %36, 0
  br i1 %cmp23, label %if.then25, label %do.body177

if.then25:                                        ; preds = %if.end18
  %virt26 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %37 = ptrtoint ptr %virt26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %virt26, align 4
  %un27 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %un27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %un27, align 4
  %arrayidx31 = getelementptr %struct.lpfc_sli_ct_request, ptr %38, i32 0, i32 10, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx31, align 4
  %cfg_log_verbose33 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %43 = ptrtoint ptr %cfg_log_verbose33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cfg_log_verbose33, align 4
  %and34 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else52, label %do.end39

do.end39:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %pcidev41 = getelementptr inbounds %struct.lpfc_hba, ptr %46, i32 0, i32 165
  %47 = ptrtoint ptr %pcidev41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcidev41, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %brd_no44 = getelementptr inbounds %struct.lpfc_hba, ptr %46, i32 0, i32 197
  %49 = ptrtoint ptr %brd_no44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %brd_no44, align 4
  %vpi45 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %vpi45 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vpi45, align 4
  %conv46 = zext i16 %52 to i32
  %and47 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %cond = select i1 %tobool48.not, ptr @.str.15, ptr @.str.14
  %and49 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.15, ptr @.str.16
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev42, ptr noundef nonnull @.str.182, i32 noundef %50, i32 noundef %conv46, i32 noundef %9, i32 noundef %40, i32 noundef %42, ptr noundef nonnull %cond, ptr noundef nonnull %cond51) #23
  br label %do.end70

if.else52:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool54.not = icmp eq i32 %44, 0
  br i1 %tobool54.not, label %if.then55, label %if.else52.do.end70_crit_edge

if.else52.do.end70_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end70

if.then55:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #22
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %brd_no58 = getelementptr inbounds %struct.lpfc_hba, ptr %54, i32 0, i32 197
  %55 = ptrtoint ptr %brd_no58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %brd_no58, align 4
  %vpi59 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %vpi59 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vpi59, align 4
  %conv60 = zext i16 %58 to i32
  %and61 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %cond63 = select i1 %tobool62.not, ptr @.str.15, ptr @.str.14
  %and64 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %cond66 = select i1 %tobool65.not, ptr @.str.15, ptr @.str.16
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %54, ptr noundef nonnull @.str.182, i32 noundef %56, i32 noundef %conv60, i32 noundef %9, i32 noundef %40, i32 noundef %42, ptr noundef nonnull %cond63, ptr noundef nonnull %cond66) #20
  br label %do.end70

do.end70:                                         ; preds = %if.then55, %if.else52.do.end70_crit_edge, %do.end39
  %call = tail call ptr @lpfc_findnode_did(ptr noundef %1, i32 noundef %9) #20
  %tobool71.not = icmp eq ptr %call, null
  br i1 %tobool71.not, label %do.end70.out_crit_edge, label %if.then72

do.end70.out_crit_edge:                           ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then72:                                        ; preds = %do.end70
  %and73 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then72.if.end78_crit_edge, label %if.then75

if.then72.if.end78_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end78

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #22
  %nlp_fc4_type = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 9
  %59 = ptrtoint ptr %nlp_fc4_type to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %nlp_fc4_type, align 2
  %61 = or i16 %60, 1
  store i16 %61, ptr %nlp_fc4_type, align 2
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.then72.if.end78_crit_edge
  %and79 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.do.body87_crit_edge, label %if.then81

if.end78.do.body87_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body87

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #22
  %nlp_fc4_type82 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 9
  %62 = ptrtoint ptr %nlp_fc4_type82 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %nlp_fc4_type82, align 2
  %64 = or i16 %63, 2
  store i16 %64, ptr %nlp_fc4_type82, align 2
  br label %do.body87

do.body87:                                        ; preds = %if.then81, %if.end78.do.body87_crit_edge
  %65 = ptrtoint ptr %cfg_log_verbose33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cfg_log_verbose33, align 4
  %and89 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.else105, label %do.end94

do.end94:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #22
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %pcidev96 = getelementptr inbounds %struct.lpfc_hba, ptr %68, i32 0, i32 165
  %69 = ptrtoint ptr %pcidev96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcidev96, align 4
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %brd_no99 = getelementptr inbounds %struct.lpfc_hba, ptr %68, i32 0, i32 197
  %71 = ptrtoint ptr %brd_no99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %brd_no99, align 4
  %vpi100 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %vpi100 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vpi100, align 4
  %conv101 = zext i16 %74 to i32
  %nlp_fc4_type102 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 9
  %75 = ptrtoint ptr %nlp_fc4_type102 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %nlp_fc4_type102, align 2
  %conv103 = zext i16 %76 to i32
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 11
  %77 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %nlp_state, align 2
  %conv104 = zext i16 %78 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev97, ptr noundef nonnull @.str.185, i32 noundef %72, i32 noundef %conv101, ptr noundef nonnull %call, i32 noundef %9, i32 noundef %conv103, i32 noundef 8, i32 noundef 40, i32 noundef %conv104) #23
  br label %do.end121

if.else105:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool107.not = icmp eq i32 %66, 0
  br i1 %tobool107.not, label %if.then108, label %if.else105.do.end121_crit_edge

if.else105.do.end121_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end121

if.then108:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #22
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  %brd_no111 = getelementptr inbounds %struct.lpfc_hba, ptr %80, i32 0, i32 197
  %81 = ptrtoint ptr %brd_no111 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %brd_no111, align 4
  %vpi112 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %83 = ptrtoint ptr %vpi112 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vpi112, align 4
  %conv113 = zext i16 %84 to i32
  %nlp_fc4_type114 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 9
  %85 = ptrtoint ptr %nlp_fc4_type114 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %nlp_fc4_type114, align 2
  %conv115 = zext i16 %86 to i32
  %nlp_state116 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 11
  %87 = ptrtoint ptr %nlp_state116 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %nlp_state116, align 2
  %conv117 = zext i16 %88 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %80, ptr noundef nonnull @.str.185, i32 noundef %82, i32 noundef %conv113, ptr noundef nonnull %call, i32 noundef %9, i32 noundef %conv115, i32 noundef 8, i32 noundef 40, i32 noundef %conv117) #20
  br label %do.end121

do.end121:                                        ; preds = %if.then108, %if.else105.do.end121_crit_edge, %do.end94
  %nlp_state122 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 11
  %89 = ptrtoint ptr %nlp_state122 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %nlp_state122, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %90)
  %cmp124 = icmp eq i16 %90, 3
  br i1 %cmp124, label %land.lhs.true, label %do.end121.if.else131_crit_edge

do.end121.if.else131_crit_edge:                   ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else131

land.lhs.true:                                    ; preds = %do.end121
  %nlp_fc4_type126 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 9
  %91 = ptrtoint ptr %nlp_fc4_type126 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %nlp_fc4_type126, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool128.not = icmp eq i16 %92, 0
  br i1 %tobool128.not, label %land.lhs.true.if.else131_crit_edge, label %if.then129

land.lhs.true.if.else131_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else131

if.then129:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %nlp_prev_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 12
  %93 = ptrtoint ptr %nlp_prev_state to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 3, ptr %nlp_prev_state, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %1, ptr noundef nonnull %call, i32 noundef 4) #20
  %call130 = tail call i32 @lpfc_issue_els_prli(ptr noundef %1, ptr noundef nonnull %call, i8 noundef zeroext 0) #20
  br label %out

if.else131:                                       ; preds = %land.lhs.true.if.else131_crit_edge, %do.end121.if.else131_crit_edge
  %nlp_fc4_type132 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 9
  %94 = ptrtoint ptr %nlp_fc4_type132 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %nlp_fc4_type132, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool133.not = icmp eq i16 %95, 0
  br i1 %tobool133.not, label %do.body135, label %if.else131.out_crit_edge

if.else131.out_crit_edge:                         ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

do.body135:                                       ; preds = %if.else131
  %96 = ptrtoint ptr %cfg_log_verbose33 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cfg_log_verbose33, align 4
  %and137 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.else154, label %do.end142

do.end142:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #22
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 8
  %pcidev144 = getelementptr inbounds %struct.lpfc_hba, ptr %99, i32 0, i32 165
  %100 = ptrtoint ptr %pcidev144 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pcidev144, align 4
  %dev145 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %brd_no147 = getelementptr inbounds %struct.lpfc_hba, ptr %99, i32 0, i32 197
  %102 = ptrtoint ptr %brd_no147 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %brd_no147, align 4
  %vpi148 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %104 = ptrtoint ptr %vpi148 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %vpi148, align 4
  %conv149 = zext i16 %105 to i32
  %conv153 = zext i16 %90 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev145, ptr noundef nonnull @.str.188, i32 noundef %103, i32 noundef %conv149, ptr noundef nonnull %call, i32 noundef %9, i32 noundef 0, i32 noundef %conv153) #23
  br label %do.end170

if.else154:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool156.not = icmp eq i32 %97, 0
  br i1 %tobool156.not, label %if.then157, label %if.else154.do.end170_crit_edge

if.else154.do.end170_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end170

if.then157:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #22
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 8
  %brd_no160 = getelementptr inbounds %struct.lpfc_hba, ptr %107, i32 0, i32 197
  %108 = ptrtoint ptr %brd_no160 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %brd_no160, align 4
  %vpi161 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %110 = ptrtoint ptr %vpi161 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %vpi161, align 4
  %conv162 = zext i16 %111 to i32
  %conv166 = zext i16 %90 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %107, ptr noundef nonnull @.str.188, i32 noundef %109, i32 noundef %conv162, ptr noundef nonnull %call, i32 noundef %9, i32 noundef 0, i32 noundef %conv166) #20
  br label %do.end170

do.end170:                                        ; preds = %if.then157, %if.else154.do.end170_crit_edge, %do.end142
  %call171 = tail call i32 @lpfc_issue_els_logo(ptr noundef %1, ptr noundef nonnull %call, i8 noundef zeroext 0) #20
  %nlp_prev_state172 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 12
  %112 = ptrtoint ptr %nlp_prev_state172 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 3, ptr %nlp_prev_state172, align 8
  tail call void @lpfc_nlp_set_state(ptr noundef %1, ptr noundef nonnull %call, i32 noundef 8) #20
  br label %out

do.body177:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %114) #20
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 8
  %pcidev190 = getelementptr inbounds %struct.lpfc_hba, ptr %116, i32 0, i32 165
  %117 = ptrtoint ptr %pcidev190 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pcidev190, align 4
  %dev191 = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  %brd_no193 = getelementptr inbounds %struct.lpfc_hba, ptr %116, i32 0, i32 197
  %119 = ptrtoint ptr %brd_no193 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %brd_no193, align 4
  %vpi194 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %121 = ptrtoint ptr %vpi194 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %vpi194, align 4
  %conv195 = zext i16 %122 to i32
  %123 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %123)
  %bf.load197 = load i32, ptr %ulpStatus, align 4
  %bf.lshr198 = lshr i32 %bf.load197, 4
  %bf.clear199 = and i32 %bf.lshr198, 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev191, ptr noundef nonnull @.str.191, i32 noundef %120, i32 noundef %conv195, i32 noundef %bf.clear199) #23
  br label %out

out:                                              ; preds = %do.body177, %do.end170, %if.else131.out_crit_edge, %if.then129, %do.end70.out_crit_edge, %if.then9, %if.else.out_crit_edge, %do.end
  %ns_ndlp.0 = phi ptr [ null, %do.end ], [ null, %if.else.out_crit_edge ], [ null, %if.then9 ], [ %34, %if.then129 ], [ %34, %if.else131.out_crit_edge ], [ %34, %do.end170 ], [ %34, %do.end70.out_crit_edge ], [ %34, %do.body177 ]
  %call218 = tail call i32 @lpfc_ct_free_iocb(ptr noundef %phba, ptr noundef %cmdiocb)
  %call219 = tail call i32 @lpfc_nlp_put(ptr noundef %ns_ndlp.0) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_rft_id(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %3 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then:                                          ; preds = %entry
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %4 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load2 = load i32, ptr %CommandResponse, align 4
  %bf.lshr3.mask = and i32 %bf.load2, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147352576, i32 %bf.lshr3.mask)
  %cmp4 = icmp eq i32 %bf.lshr3.mask, -2147352576
  br i1 %cmp4, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %ct_flags = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %ct_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ct_flags, align 8
  %or = or i32 %10, 16
  store i32 %or, ptr %ct_flags, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call fastcc void @lpfc_cmpl_ct(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_rnn_id(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %3 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then:                                          ; preds = %entry
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %4 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load2 = load i32, ptr %CommandResponse, align 4
  %bf.lshr3.mask = and i32 %bf.load2, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147352576, i32 %bf.lshr3.mask)
  %cmp4 = icmp eq i32 %bf.lshr3.mask, -2147352576
  br i1 %cmp4, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %ct_flags = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %ct_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ct_flags, align 8
  %or = or i32 %10, 2
  store i32 %or, ptr %ct_flags, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call fastcc void @lpfc_cmpl_ct(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_rspn_id(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %3 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then:                                          ; preds = %entry
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %4 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load2 = load i32, ptr %CommandResponse, align 4
  %bf.lshr3.mask = and i32 %bf.load2, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147352576, i32 %bf.lshr3.mask)
  %cmp4 = icmp eq i32 %bf.lshr3.mask, -2147352576
  br i1 %cmp4, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %ct_flags = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %ct_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ct_flags, align 8
  %or = or i32 %10, 8
  store i32 %or, ptr %ct_flags, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call fastcc void @lpfc_cmpl_ct(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_rsnn_nn(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %3 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then:                                          ; preds = %entry
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %4 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load2 = load i32, ptr %CommandResponse, align 4
  %bf.lshr3.mask = and i32 %bf.load2, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147352576, i32 %bf.lshr3.mask)
  %cmp4 = icmp eq i32 %bf.lshr3.mask, -2147352576
  br i1 %cmp4, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %ct_flags = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %ct_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ct_flags, align 8
  %or = or i32 %10, 4
  store i32 %or, ptr %ct_flags, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call fastcc void @lpfc_cmpl_ct(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_da_id(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %ct_flags = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ct_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ct_flags, align 8
  tail call fastcc void @lpfc_cmpl_ct(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_nvmet_update_targetport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_nvme_update_localport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_rff_id(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ulpStatus, align 4
  %3 = and i32 %bf.load, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then:                                          ; preds = %entry
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %4 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load2 = load i32, ptr %CommandResponse, align 4
  %bf.lshr3.mask = and i32 %bf.load2, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147352576, i32 %bf.lshr3.mask)
  %cmp4 = icmp eq i32 %bf.lshr3.mask, -2147352576
  br i1 %cmp4, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %ct_flags = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %ct_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ct_flags, align 8
  %or = or i32 %10, 1
  store i32 %or, ptr %ct_flags, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call fastcc void @lpfc_cmpl_ct(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpfc_ct_cmd(ptr noundef %vport, ptr noundef %inmp, ptr noundef %bmp, ptr noundef %ndlp, ptr noundef %cmpl, i32 noundef %rsp_size, i8 noundef zeroext %retry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsp_size)
  %tobool.not81.i = icmp eq i32 %rsp_size, 0
  br i1 %tobool.not81.i, label %entry.cleanup_crit_edge, label %while.body.i.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body.i.preheader:                           ; preds = %entry
  %virt2 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %inmp, i32 0, i32 1
  %2 = ptrtoint ptr %virt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt2, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %CommandResponse, align 4
  %bf.lshr = lshr i32 %bf.load, 16
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %bmp, i32 0, i32 1
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 369, i32 %bf.lshr)
  %switch.selectcmp.case1.i = icmp eq i32 %bf.lshr, 369
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %bf.lshr)
  %switch.selectcmp.case2.i = icmp eq i32 %bf.lshr, 287
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %7 = select i1 %switch.selectcmp.i, i32 256, i32 0
  br label %while.body.i

while.body.i:                                     ; preds = %if.end25.i.while.body.i_crit_edge, %while.body.i.preheader
  %i.085.i = phi i32 [ %inc.i, %if.end25.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %mlist.084.i = phi ptr [ %mlist.1.i, %if.end25.i.while.body.i_crit_edge ], [ null, %while.body.i.preheader ]
  %size.addr.083.i = phi i32 [ %sub.i, %if.end25.i.while.body.i_crit_edge ], [ %rsp_size, %while.body.i.preheader ]
  %bpl.addr.082.i.pn = phi ptr [ %bpl.addr.082.i, %if.end25.i.while.body.i_crit_edge ], [ %6, %while.body.i.preheader ]
  %bpl.addr.082.i = getelementptr %struct.ulp_bde64, ptr %bpl.addr.082.i.pn, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 20) #24
  %tobool1.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %while.body.i
  %tobool2.not.i = icmp eq ptr %mlist.084.i, null
  br i1 %tobool2.not.i, label %if.then.i.cleanup_crit_edge, label %if.then3.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @lpfc_free_ct_rsp(ptr noundef %1, ptr noundef nonnull %mlist.084.i) #20
  br label %cleanup

if.end4.i:                                        ; preds = %while.body.i
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %phys9.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i.i, i32 0, i32 2
  %call10.i = tail call ptr @lpfc_mbuf_alloc(ptr noundef %1, i32 noundef %7, ptr noundef %phys9.i) #20
  %virt11.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %virt11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10.i, ptr %virt11.i, align 8
  %tobool14.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end19.i

if.then15.i:                                      ; preds = %if.end4.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #20
  %tobool16.not.i = icmp eq ptr %mlist.084.i, null
  br i1 %tobool16.not.i, label %if.then15.i.cleanup_crit_edge, label %if.then17.i

if.then15.i.cleanup_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then17.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @lpfc_free_ct_rsp(ptr noundef %1, ptr noundef nonnull %mlist.084.i) #20
  br label %cleanup

if.end19.i:                                       ; preds = %if.end4.i
  %tobool20.not.i = icmp eq ptr %mlist.084.i, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end25.i_crit_edge, label %if.else22.i

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25.i

if.else22.i:                                      ; preds = %if.end19.i
  %prev.i75.i = getelementptr inbounds %struct.list_head, ptr %mlist.084.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i75.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i75.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %13, ptr noundef nonnull %mlist.084.i) #20
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else22.i.if.end25.i_crit_edge

if.else22.i.if.end25.i_crit_edge:                 ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25.i

if.end.i.i.i:                                     ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %prev.i75.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %prev.i75.i, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mlist.084.i, ptr %call7.i.i, align 8
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %13, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end.i.i.i, %if.else22.i.if.end25.i_crit_edge, %if.end19.i.if.end25.i_crit_edge
  %mlist.1.i = phi ptr [ %call7.i.i, %if.end19.i.if.end25.i_crit_edge ], [ %mlist.084.i, %if.else22.i.if.end25.i_crit_edge ], [ %mlist.084.i, %if.end.i.i.i ]
  %18 = ptrtoint ptr %phys9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phys9.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #20
  %addrLow.i = getelementptr %struct.ulp_bde64, ptr %bpl.addr.082.i.pn, i32 1, i32 1
  %21 = ptrtoint ptr %addrLow.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %addrLow.i, align 4
  %addrHigh.i = getelementptr %struct.ulp_bde64, ptr %bpl.addr.082.i.pn, i32 1, i32 2
  %22 = ptrtoint ptr %addrHigh.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %addrHigh.i, align 4
  %23 = ptrtoint ptr %bpl.addr.082.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262152, ptr %bpl.addr.082.i, align 4
  %inc.i = add i32 %i.085.i, 1
  %sub.i = add i32 %size.addr.083.i, -1024
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end25.i.while.body.i_crit_edge

if.end25.i.while.body.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

if.end:                                           ; preds = %if.end25.i
  %fc_eventTag = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 51
  %24 = ptrtoint ptr %fc_eventTag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fc_eventTag, align 4
  %26 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vport, align 8
  %call.i = tail call ptr @lpfc_sli_get_iocbq(ptr noundef %27) #20
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end.if.then5_crit_edge, label %if.end.i

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then5

if.end.i:                                         ; preds = %if.end
  %iocb.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 11
  %ulpIoTag32.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 11, i32 0, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %ulpIoTag32.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ulpIoTag32.i, align 4
  %phys.i = getelementptr inbounds %struct.lpfc_dmabuf, ptr %bmp, i32 0, i32 2
  %addrHigh.i20 = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 11, i32 0, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %addrHigh.i20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %addrHigh.i20, align 4
  %30 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phys.i, align 4
  %addrLow.i21 = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 11, i32 0, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %addrLow.i21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %addrLow.i21, align 4
  %33 = mul i32 %i.085.i, 12
  %mul.i = add i32 %33, 24
  %bf.value.i = and i32 %mul.i, 16777212
  %bf.set17.i = or i32 %bf.value.i, 1073741824
  %34 = ptrtoint ptr %iocb.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bf.set17.i, ptr %iocb.i, align 4
  %context3.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 20
  %35 = ptrtoint ptr %context3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %bmp, ptr %context3.i, align 8
  %context1.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 18
  %36 = ptrtoint ptr %context1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %inmp, ptr %context1.i, align 8
  %context2.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 19
  %37 = ptrtoint ptr %context2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %mlist.1.i, ptr %context2.i, align 4
  %event_tag18.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 21
  %38 = ptrtoint ptr %event_tag18.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %25, ptr %event_tag18.i, align 4
  %ulpCommand.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 11, i32 2
  %39 = ptrtoint ptr %ulpCommand.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load19.i = load i32, ptr %ulpCommand.i, align 4
  %bf.clear20.i = and i32 %bf.load19.i, -65281
  %bf.set21.i = or i32 %bf.clear20.i, 49664
  store i32 %bf.set21.i, ptr %ulpCommand.i, align 4
  %w5.i = getelementptr inbounds %struct.GEN_REQUEST64, ptr %iocb.i, i32 0, i32 2
  %Fctl.i = getelementptr inbounds %struct.anon.1, ptr %w5.i, i32 0, i32 3
  %40 = ptrtoint ptr %Fctl.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 12, ptr %Fctl.i, align 1
  %Dfctl.i = getelementptr inbounds %struct.anon.1, ptr %w5.i, i32 0, i32 2
  %41 = ptrtoint ptr %Dfctl.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %Dfctl.i, align 2
  %42 = ptrtoint ptr %w5.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %w5.i, align 4
  %Type.i = getelementptr inbounds %struct.anon.1, ptr %w5.i, i32 0, i32 1
  %43 = ptrtoint ptr %Type.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 32, ptr %Type.i, align 1
  %fc_ratov.i = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 58
  %44 = ptrtoint ptr %fc_ratov.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fc_ratov.i, align 8
  %bf.shl.i = mul i32 %45, 50331648
  %bf.clear34.i = and i32 %bf.set21.i, 16302833
  %bf.set35.i = or i32 %bf.shl.i, %bf.clear34.i
  %bf.set44.i = or i32 %bf.set35.i, 131078
  store i32 %bf.set44.i, ptr %ulpCommand.i, align 4
  %nlp_rpi.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 10
  %46 = ptrtoint ptr %nlp_rpi.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nlp_rpi.i, align 4
  %un1.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %un1.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %un1.i, align 4
  %sli_rev.i = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 31
  %49 = ptrtoint ptr %sli_rev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sli_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp45.i = icmp eq i32 %50, 4
  br i1 %cmp45.i, label %if.then47.i, label %if.end.i.if.end51.i_crit_edge

if.end.i.if.end51.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51.i

if.then47.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %rpi_ids.i = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 25, i32 88
  %51 = ptrtoint ptr %rpi_ids.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rpi_ids.i, align 4
  %53 = ptrtoint ptr %nlp_rpi.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %nlp_rpi.i, align 4
  %idxprom.i = zext i16 %54 to i32
  %arrayidx.i = getelementptr i16, ptr %52, i32 %idxprom.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.i, align 2
  %57 = ptrtoint ptr %un1.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %un1.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then47.i, %if.end.i.if.end51.i_crit_edge
  %sli3_options.i = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 32
  %58 = ptrtoint ptr %sli3_options.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sli3_options.i, align 8
  %and52.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end51.i.do.body.i_crit_edge, label %if.then54.i

if.end51.i.do.body.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

if.then54.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #22
  %60 = ptrtoint ptr %ulpCommand.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load55.i = load i32, ptr %ulpCommand.i, align 4
  %bf.clear59.i = and i32 %bf.load55.i, -12582913
  store i32 %bf.clear59.i, ptr %ulpCommand.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then54.i, %if.end51.i.do.body.i_crit_edge
  %cfg_log_verbose.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %61 = ptrtoint ptr %cfg_log_verbose.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg_log_verbose.i, align 4
  %and62.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %63 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vport, align 8
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %64, i32 0, i32 165
  %65 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %64, i32 0, i32 197
  %67 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %brd_no.i, align 4
  %vpi.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %69 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vpi.i, align 4
  %conv68.i = zext i16 %70 to i32
  %nlp_DID.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %71 = ptrtoint ptr %nlp_DID.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nlp_DID.i, align 8
  %ulpIoTag.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 11, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %ulpIoTag.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %ulpIoTag.i, align 2
  %conv70.i = zext i16 %74 to i32
  %port_state.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %75 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port_state.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev.i, ptr noundef nonnull @.str.202, i32 noundef %68, i32 noundef %conv68.i, i32 noundef %72, i32 noundef %conv70.i, i32 noundef %76) #23
  br label %do.end87.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool72.not.i = icmp eq i32 %62, 0
  br i1 %tobool72.not.i, label %if.then73.i, label %if.else.i.do.end87.i_crit_edge

if.else.i.do.end87.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end87.i

if.then73.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %77 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vport, align 8
  %brd_no76.i = getelementptr inbounds %struct.lpfc_hba, ptr %78, i32 0, i32 197
  %79 = ptrtoint ptr %brd_no76.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %brd_no76.i, align 4
  %vpi77.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %81 = ptrtoint ptr %vpi77.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vpi77.i, align 4
  %conv78.i = zext i16 %82 to i32
  %nlp_DID79.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 6
  %83 = ptrtoint ptr %nlp_DID79.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nlp_DID79.i, align 8
  %ulpIoTag81.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 11, i32 1, i32 0, i32 1
  %85 = ptrtoint ptr %ulpIoTag81.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %ulpIoTag81.i, align 2
  %conv82.i = zext i16 %86 to i32
  %port_state83.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %87 = ptrtoint ptr %port_state83.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port_state83.i, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %78, ptr noundef nonnull @.str.202, i32 noundef %80, i32 noundef %conv78.i, i32 noundef %84, i32 noundef %conv82.i, i32 noundef %88) #20
  br label %do.end87.i

do.end87.i:                                       ; preds = %if.then73.i, %if.else.i.do.end87.i_crit_edge, %do.end.i
  %iocb_cmpl.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 26
  %89 = ptrtoint ptr %iocb_cmpl.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %cmpl, ptr %iocb_cmpl.i, align 8
  %90 = ptrtoint ptr %ulpCommand.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load89.i = load i32, ptr %ulpCommand.i, align 4
  %bf.lshr.i = lshr i32 %bf.load89.i, 24
  %add.i = add nuw nsw i32 %bf.lshr.i, 16
  %drvrTimeout.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 16
  %91 = ptrtoint ptr %drvrTimeout.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add.i, ptr %drvrTimeout.i, align 8
  %vport90.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 17
  %92 = ptrtoint ptr %vport90.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %vport, ptr %vport90.i, align 4
  %retry91.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 14
  %93 = ptrtoint ptr %retry91.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %retry, ptr %retry91.i, align 2
  %call92.i = tail call ptr @lpfc_nlp_get(ptr noundef %ndlp) #20
  %context_un.i = getelementptr inbounds %struct.lpfc_iocbq, ptr %call.i, i32 0, i32 22
  %94 = ptrtoint ptr %context_un.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call92.i, ptr %context_un.i, align 8
  %tobool94.not.i = icmp eq ptr %call92.i, null
  br i1 %tobool94.not.i, label %do.end87.i.out.i_crit_edge, label %if.end96.i

do.end87.i.out.i_crit_edge:                       ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i

if.end96.i:                                       ; preds = %do.end87.i
  %call97.i = tail call i32 @lpfc_sli_issue_iocb(ptr noundef %27, i32 noundef 2, ptr noundef nonnull %call.i, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call97.i)
  %cmp98.i = icmp eq i32 %call97.i, 2
  br i1 %cmp98.i, label %if.then100.i, label %if.end96.i.cleanup_crit_edge

if.end96.i.cleanup_crit_edge:                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then100.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #22
  %95 = ptrtoint ptr %context_un.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %context_un.i, align 8
  %call102.i = tail call i32 @lpfc_nlp_put(ptr noundef %ndlp) #20
  br label %out.i

out.i:                                            ; preds = %if.then100.i, %do.end87.i.out.i_crit_edge
  tail call void @lpfc_sli_release_iocbq(ptr noundef %27, ptr noundef nonnull %call.i) #20
  br label %if.then5

if.then5:                                         ; preds = %out.i, %if.end.if.then5_crit_edge
  tail call fastcc void @lpfc_free_ct_rsp(ptr noundef %1, ptr noundef nonnull %mlist.1.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end96.i.cleanup_crit_edge, %if.then17.i, %if.then15.i.cleanup_crit_edge, %if.then3.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ 0, %if.end96.i.cleanup_crit_edge ], [ -12, %if.then3.i ], [ -12, %if.then.i.cleanup_crit_edge ], [ -12, %if.then17.i ], [ -12, %if.then15.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_debugfs_disc_trc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dmp_dbg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_fdmi_change_check(ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %link_state.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_state.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 32, label %entry.if.end_crit_edge
    i32 6, label %entry.if.end_crit_edge74
    i32 5, label %entry.if.end_crit_edge75
  ]

entry.if.end_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

entry.if.end_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge74, %entry.if.end_crit_edge75
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %5 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fc_flag, align 4
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @lpfc_findnode_did(ptr noundef %vport, i32 noundef 16777210) #20
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %os_host_name = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 427
  %call11 = tail call i32 @strcmp(ptr noundef %os_host_name, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 1)) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end29, label %if.then13

if.then13:                                        ; preds = %if.end8
  %7 = call ptr @memset(ptr %os_host_name, i32 0, i32 64)
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %os_host_name, i32 noundef 64, ptr noundef nonnull @.str.25, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 1)) #20
  %call22 = tail call i32 @lpfc_ns_cmd(ptr noundef %vport, i32 noundef 569, i8 noundef zeroext 0, i32 noundef 0)
  %port_type = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 2
  %8 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  %link_flag = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 37
  %10 = ptrtoint ptr %link_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_flag, align 8
  %and25 = and i32 %11, -33
  store i32 %and25, ptr %link_flag, align 8
  %call26 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %vport, ptr noundef nonnull %call5, i32 noundef 768, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  %call27 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %vport, ptr noundef nonnull %call5, i32 noundef 784, i32 noundef 0)
  br label %cleanup

if.end29:                                         ; preds = %if.end8
  %fdmi_port_mask = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 88
  %12 = ptrtoint ptr %fdmi_port_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fdmi_port_mask, align 4
  %and30 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %host_lock.i = getelementptr i8, ptr %vport, i32 -2380
  %14 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %15) #20
  %fc_nodes.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 9
  %16 = ptrtoint ptr %fc_nodes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fc_nodes.i, align 4
  %cmp.not32.i = icmp eq ptr %17, %fc_nodes.i
  br i1 %cmp.not32.i, label %if.end33.lpfc_find_map_node.exit_crit_edge, label %if.end33.for.body.i_crit_edge

if.end33.for.body.i_crit_edge:                    ; preds = %if.end33
  br label %for.body.i

if.end33.lpfc_find_map_node.exit_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_find_map_node.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end33.for.body.i_crit_edge
  %ndlp.034.i = phi ptr [ %next_ndlp.035.i, %for.inc.i.for.body.i_crit_edge ], [ %17, %if.end33.for.body.i_crit_edge ]
  %cnt.033.i = phi i32 [ %cnt.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end33.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %ndlp.034.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %next_ndlp.035.i = load ptr, ptr %ndlp.034.i, align 8
  %nlp_type.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.034.i, i32 0, i32 8
  %19 = ptrtoint ptr %nlp_type.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nlp_type.i, align 8
  %21 = and i16 %20, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %nlp_state.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.034.i, i32 0, i32 11
  %22 = ptrtoint ptr %nlp_state.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nlp_state.i, align 2
  %24 = and i16 %23, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %24)
  %switch.i73 = icmp eq i16 %24, 6
  %inc.i = zext i1 %switch.i73 to i32
  %spec.select.i = add i32 %cnt.033.i, %inc.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %cnt.1.i = phi i32 [ %cnt.033.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end.i ]
  %cmp.not.i = icmp eq ptr %next_ndlp.035.i, %fc_nodes.i
  br i1 %cmp.not.i, label %for.inc.i.lpfc_find_map_node.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.lpfc_find_map_node.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_find_map_node.exit

lpfc_find_map_node.exit:                          ; preds = %for.inc.i.lpfc_find_map_node.exit_crit_edge, %if.end33.lpfc_find_map_node.exit_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %if.end33.lpfc_find_map_node.exit_crit_edge ], [ %cnt.1.i, %for.inc.i.lpfc_find_map_node.exit_crit_edge ]
  %25 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %26) #20
  %fdmi_num_disc = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 86
  %27 = ptrtoint ptr %fdmi_num_disc to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fdmi_num_disc, align 4
  %29 = trunc i32 %cnt.0.lcssa.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %29)
  %cmp38 = icmp eq i16 %28, %29
  br i1 %cmp38, label %lpfc_find_map_node.exit.cleanup_crit_edge, label %if.end41

lpfc_find_map_node.exit.cleanup_crit_edge:        ; preds = %lpfc_find_map_node.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end41:                                         ; preds = %lpfc_find_map_node.exit
  %port_type42 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 2
  %30 = ptrtoint ptr %port_type42 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_type42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp44 = icmp eq i8 %31, 1
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  %call47 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %vport, ptr noundef nonnull %call5, i32 noundef 529, i32 noundef 16384)
  br label %cleanup

if.else48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  %call49 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %vport, ptr noundef nonnull %call5, i32 noundef 528, i32 noundef 16384)
  br label %cleanup

cleanup:                                          ; preds = %if.else48, %if.then46, %lpfc_find_map_node.exit.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.else, %if.then24, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_fdmi_cmd(ptr noundef %vport, ptr noundef %ndlp, i32 noundef %cmdcode, i32 noundef %new_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %tobool.not = icmp eq ptr %ndlp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 20) #24
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.do.body212_crit_edge, label %if.end4

if.end.do.body212_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body212

if.end4:                                          ; preds = %if.end
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 2
  %call5 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %1, i32 noundef 0, ptr noundef %phys) #20
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %virt, align 8
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end4.fdmi_cmd_free_mp_crit_edge, label %if.end9

if.end4.fdmi_cmd_free_mp_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %fdmi_cmd_free_mp

if.end9:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i381 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 20) #24
  %tobool11.not = icmp eq ptr %call7.i381, null
  br i1 %tobool11.not, label %if.end9.fdmi_cmd_free_mpvirt_crit_edge, label %if.end13

if.end9.fdmi_cmd_free_mpvirt_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %fdmi_cmd_free_mpvirt

if.end13:                                         ; preds = %if.end9
  %phys14 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i381, i32 0, i32 2
  %call15 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %1, i32 noundef 0, ptr noundef %phys14) #20
  %virt16 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i381, i32 0, i32 1
  %5 = ptrtoint ptr %virt16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %virt16, align 8
  %tobool18.not = icmp eq ptr %call15, null
  br i1 %tobool18.not, label %if.end13.fdmi_cmd_free_bmp_crit_edge, label %if.end20

if.end13.fdmi_cmd_free_bmp_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %fdmi_cmd_free_bmp

if.end20:                                         ; preds = %if.end13
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %prev.i, align 4
  %8 = ptrtoint ptr %call7.i381 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i381, ptr %call7.i381, align 8
  %prev.i382 = getelementptr inbounds %struct.list_head, ptr %call7.i381, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i382 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i381, ptr %prev.i382, align 4
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %10 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
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
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %20 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fc_flag, align 4
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %22 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_state, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %17, i32 noundef %conv, i32 noundef %21, i32 noundef %23, i32 noundef %cmdcode) #23
  br label %do.end40

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool28.not = icmp eq i32 %11, 0
  br i1 %tobool28.not, label %if.then29, label %if.else.do.end40_crit_edge

if.else.do.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end40

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %24 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vport, align 8
  %brd_no32 = getelementptr inbounds %struct.lpfc_hba, ptr %25, i32 0, i32 197
  %26 = ptrtoint ptr %brd_no32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brd_no32, align 4
  %vpi33 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %28 = ptrtoint ptr %vpi33 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vpi33, align 4
  %conv34 = zext i16 %29 to i32
  %fc_flag35 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %30 = ptrtoint ptr %fc_flag35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fc_flag35, align 4
  %port_state36 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %32 = ptrtoint ptr %port_state36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port_state36, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %25, ptr noundef nonnull @.str.26, i32 noundef %27, i32 noundef %conv34, i32 noundef %31, i32 noundef %33, i32 noundef %cmdcode) #20
  br label %do.end40

do.end40:                                         ; preds = %if.then29, %if.else.do.end40_crit_edge, %do.end
  %34 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt, align 8
  %36 = getelementptr inbounds i8, ptr %35, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 276)
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16777216, ptr %35, align 4
  %FsType = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 1
  %39 = ptrtoint ptr %FsType to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -6, ptr %FsType, align 4
  %FsSubType = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 2
  %40 = ptrtoint ptr %FsSubType to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 16, ptr %FsSubType, align 1
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 5
  %bf.shl = shl i32 %cmdcode, 16
  %41 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %bf.shl, ptr %CommandResponse, align 4
  %42 = zext i32 %cmdcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %cmdcode, label %do.body151 [
    i32 513, label %do.end40.sw.bb_crit_edge
    i32 512, label %do.end40.sw.bb_crit_edge400
    i32 528, label %do.end40.sw.bb84_crit_edge
    i32 529, label %do.end40.sw.bb84_crit_edge401
    i32 257, label %do.end40.sw.bb138_crit_edge
    i32 258, label %do.end40.sw.bb138_crit_edge402
    i32 768, label %do.end40.sw.bb139_crit_edge
    i32 769, label %do.end40.sw.bb139_crit_edge403
    i32 272, label %do.end40.sw.bb144_crit_edge
    i32 288, label %do.end40.sw.bb144_crit_edge404
    i32 784, label %do.end40.sw.bb145_crit_edge
    i32 785, label %do.end40.sw.bb145_crit_edge405
    i32 256, label %do.end40.sw.epilog_crit_edge
  ]

do.end40.sw.epilog_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

do.end40.sw.bb145_crit_edge405:                   ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb145

do.end40.sw.bb145_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb145

do.end40.sw.bb144_crit_edge404:                   ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb144

do.end40.sw.bb144_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb144

do.end40.sw.bb139_crit_edge403:                   ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb139

do.end40.sw.bb139_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb139

do.end40.sw.bb138_crit_edge402:                   ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb138

do.end40.sw.bb138_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb138

do.end40.sw.bb84_crit_edge401:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb84

do.end40.sw.bb84_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb84

do.end40.sw.bb_crit_edge400:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

do.end40.sw.bb_crit_edge:                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

sw.bb:                                            ; preds = %do.end40.sw.bb_crit_edge, %do.end40.sw.bb_crit_edge400
  %un = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 10
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %43 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pport, align 8
  %portName = getelementptr inbounds %struct.lpfc_vport, ptr %44, i32 0, i32 18, i32 1
  %45 = ptrtoint ptr %portName to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %portName, align 8
  %47 = ptrtoint ptr %un to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %un, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %cmdcode)
  %cmp = icmp eq i32 %cmdcode, 512
  br i1 %cmp, label %if.then52, label %sw.bb.if.end60_crit_edge

sw.bb.if.end60_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

if.then52:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %rpl = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 10, i32 0, i32 2, i32 3
  %48 = ptrtoint ptr %rpl to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %rpl, align 8
  %pe54 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 10, i32 0, i32 2, i32 7
  %49 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pport, align 8
  %portName58 = getelementptr inbounds %struct.lpfc_vport, ptr %50, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %portName58 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %portName58, align 8
  %53 = ptrtoint ptr %pe54 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %pe54, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %sw.bb.if.end60_crit_edge
  %size.0 = phi i32 [ 20, %if.then52 ], [ 8, %sw.bb.if.end60_crit_edge ]
  %add.ptr = getelementptr i8, ptr %un, i32 %size.0
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %add.ptr, align 8
  %add = add nuw nsw i32 %size.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_mask)
  %tobool62.not = icmp eq i32 %new_mask, 0
  br i1 %tobool62.not, label %if.end65, label %if.end60.while.body.preheader_crit_edge

if.end60.while.body.preheader_crit_edge:          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.preheader

if.end65:                                         ; preds = %if.end60
  %fdmi_hba_mask = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 87
  %55 = ptrtoint ptr %fdmi_hba_mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fdmi_hba_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool66.not388 = icmp eq i32 %56, 0
  br i1 %tobool66.not388, label %if.end65.hba_out_crit_edge, label %if.end65.while.body.preheader_crit_edge

if.end65.while.body.preheader_crit_edge:          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.preheader

if.end65.hba_out_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #22
  br label %hba_out

while.body.preheader:                             ; preds = %if.end65.while.body.preheader_crit_edge, %if.end60.while.body.preheader_crit_edge
  %mask.1391.ph = phi i32 [ %new_mask, %if.end60.while.body.preheader_crit_edge ], [ %56, %if.end65.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end79.while.body_crit_edge, %while.body.preheader
  %mask.1391 = phi i32 [ %shr, %if.end79.while.body_crit_edge ], [ %mask.1391.ph, %while.body.preheader ]
  %size.1390 = phi i32 [ %size.2, %if.end79.while.body_crit_edge ], [ %add, %while.body.preheader ]
  %bit_pos.0389 = phi i32 [ %inc80, %if.end79.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %and67 = and i32 %mask.1391, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %while.body.if.end79_crit_edge, label %if.then69

while.body.if.end79_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end79

if.then69:                                        ; preds = %while.body
  %arrayidx = getelementptr [18 x ptr], ptr @lpfc_fdmi_hba_action, i32 0, i32 %bit_pos.0389
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %add.ptr70 = getelementptr i8, ptr %un, i32 %size.1390
  %call71 = tail call i32 %58(ptr noundef %vport, ptr noundef %add.ptr70) #20
  %add72 = add i32 %call71, %size.1390
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr, align 8
  %inc = add i32 %60, 1
  store i32 %inc, ptr %add.ptr, align 8
  %61 = add i32 %add72, -749
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1005, i32 %61)
  %cmp75 = icmp ult i32 %61, -1005
  br i1 %cmp75, label %if.then69.hba_out_crit_edge, label %if.then69.if.end79_crit_edge

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end79

if.then69.hba_out_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #22
  br label %hba_out

if.end79:                                         ; preds = %if.then69.if.end79_crit_edge, %while.body.if.end79_crit_edge
  %size.2 = phi i32 [ %add72, %if.then69.if.end79_crit_edge ], [ %size.1390, %while.body.if.end79_crit_edge ]
  %shr = lshr i32 %mask.1391, 1
  %inc80 = add nuw nsw i32 %bit_pos.0389, 1
  %tobool66.not = icmp ult i32 %mask.1391, 2
  br i1 %tobool66.not, label %if.end79.hba_out_crit_edge, label %if.end79.while.body_crit_edge

if.end79.while.body_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

if.end79.hba_out_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #22
  br label %hba_out

hba_out:                                          ; preds = %if.end79.hba_out_crit_edge, %if.then69.hba_out_crit_edge, %if.end65.hba_out_crit_edge
  %size.3 = phi i32 [ %add, %if.end65.hba_out_crit_edge ], [ %size.2, %if.end79.hba_out_crit_edge ], [ %add72, %if.then69.hba_out_crit_edge ]
  %add83 = add i32 %size.3, 16
  br label %sw.epilog

sw.bb84:                                          ; preds = %do.end40.sw.bb84_crit_edge, %do.end40.sw.bb84_crit_edge401
  %un85 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 528, i32 %cmdcode)
  %cmp86 = icmp eq i32 %cmdcode, 528
  br i1 %cmp86, label %if.then88, label %sw.bb84.if.end95_crit_edge

sw.bb84.if.end95_crit_edge:                       ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end95

if.then88:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #22
  %pport91 = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %62 = ptrtoint ptr %pport91 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pport91, align 8
  %portName93 = getelementptr inbounds %struct.lpfc_vport, ptr %63, i32 0, i32 18, i32 1
  %64 = ptrtoint ptr %portName93 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %portName93, align 8
  %66 = ptrtoint ptr %un85 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %un85, align 8
  %add.ptr94 = getelementptr %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 10, i32 0, i32 2, i32 3
  br label %if.end95

if.end95:                                         ; preds = %if.then88, %sw.bb84.if.end95_crit_edge
  %pab.0 = phi ptr [ %add.ptr94, %if.then88 ], [ %un85, %sw.bb84.if.end95_crit_edge ]
  %portName98 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 1
  %67 = ptrtoint ptr %portName98 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %portName98, align 8
  %69 = ptrtoint ptr %pab.0 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %pab.0, align 8
  %ab100 = getelementptr inbounds %struct.lpfc_fdmi_reg_portattr, ptr %pab.0, i32 0, i32 1
  %70 = ptrtoint ptr %ab100 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %ab100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_mask)
  %tobool102.not = icmp eq i32 %new_mask, 0
  br i1 %tobool102.not, label %if.end105, label %if.end95.while.body108.preheader_crit_edge

if.end95.while.body108.preheader_crit_edge:       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body108.preheader

if.end105:                                        ; preds = %if.end95
  %fdmi_port_mask = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 88
  %71 = ptrtoint ptr %fdmi_port_mask to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fdmi_port_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool107.not383 = icmp eq i32 %72, 0
  br i1 %tobool107.not383, label %if.end105.port_out_crit_edge, label %if.end105.while.body108.preheader_crit_edge

if.end105.while.body108.preheader_crit_edge:      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body108.preheader

if.end105.port_out_crit_edge:                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #22
  br label %port_out

while.body108.preheader:                          ; preds = %if.end105.while.body108.preheader_crit_edge, %if.end95.while.body108.preheader_crit_edge
  %mask.3386.ph = phi i32 [ %new_mask, %if.end95.while.body108.preheader_crit_edge ], [ %72, %if.end105.while.body108.preheader_crit_edge ]
  br label %while.body108

while.body108:                                    ; preds = %if.end124.while.body108_crit_edge, %while.body108.preheader
  %mask.3386 = phi i32 [ %shr125, %if.end124.while.body108_crit_edge ], [ %mask.3386.ph, %while.body108.preheader ]
  %size.4385 = phi i32 [ %size.5, %if.end124.while.body108_crit_edge ], [ 12, %while.body108.preheader ]
  %bit_pos.1384 = phi i32 [ %inc126, %if.end124.while.body108_crit_edge ], [ 0, %while.body108.preheader ]
  %and109 = and i32 %mask.3386, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %while.body108.if.end124_crit_edge, label %if.then111

while.body108.if.end124_crit_edge:                ; preds = %while.body108
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end124

if.then111:                                       ; preds = %while.body108
  %arrayidx112 = getelementptr [24 x ptr], ptr @lpfc_fdmi_port_action, i32 0, i32 %bit_pos.1384
  %73 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx112, align 4
  %add.ptr113 = getelementptr i8, ptr %pab.0, i32 %size.4385
  %call114 = tail call i32 %74(ptr noundef %vport, ptr noundef %add.ptr113) #20
  %add115 = add i32 %call114, %size.4385
  %75 = ptrtoint ptr %ab100 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ab100, align 8
  %inc118 = add i32 %76, 1
  store i32 %inc118, ptr %ab100, align 8
  %77 = add i32 %add115, -749
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1005, i32 %77)
  %cmp120 = icmp ult i32 %77, -1005
  br i1 %cmp120, label %if.then111.port_out_crit_edge, label %if.then111.if.end124_crit_edge

if.then111.if.end124_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end124

if.then111.port_out_crit_edge:                    ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #22
  br label %port_out

if.end124:                                        ; preds = %if.then111.if.end124_crit_edge, %while.body108.if.end124_crit_edge
  %size.5 = phi i32 [ %add115, %if.then111.if.end124_crit_edge ], [ %size.4385, %while.body108.if.end124_crit_edge ]
  %shr125 = lshr i32 %mask.3386, 1
  %inc126 = add nuw nsw i32 %bit_pos.1384, 1
  %tobool107.not = icmp ult i32 %mask.3386, 2
  br i1 %tobool107.not, label %if.end124.port_out_crit_edge, label %if.end124.while.body108_crit_edge

if.end124.while.body108_crit_edge:                ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body108

if.end124.port_out_crit_edge:                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #22
  br label %port_out

port_out:                                         ; preds = %if.end124.port_out_crit_edge, %if.then111.port_out_crit_edge, %if.end105.port_out_crit_edge
  %size.6 = phi i32 [ 12, %if.end105.port_out_crit_edge ], [ %size.5, %if.end124.port_out_crit_edge ], [ %add115, %if.then111.port_out_crit_edge ]
  %add135 = add i32 %size.6, 8
  %spec.select = select i1 %cmp86, i32 %add135, i32 %size.6
  %add137 = add i32 %spec.select, 16
  br label %sw.epilog

sw.bb138:                                         ; preds = %do.end40.sw.bb138_crit_edge, %do.end40.sw.bb138_crit_edge402
  br label %sw.bb139

sw.bb139:                                         ; preds = %sw.bb138, %do.end40.sw.bb139_crit_edge, %do.end40.sw.bb139_crit_edge403
  %rsp_size.0 = phi i32 [ 1024, %do.end40.sw.bb139_crit_edge ], [ 1024, %do.end40.sw.bb139_crit_edge403 ], [ 64512, %sw.bb138 ]
  %un140 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 10
  %portName143 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 1
  %78 = ptrtoint ptr %portName143 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %portName143, align 8
  %80 = ptrtoint ptr %un140 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %un140, align 8
  br label %sw.epilog

sw.bb144:                                         ; preds = %do.end40.sw.bb144_crit_edge, %do.end40.sw.bb144_crit_edge404
  br label %sw.bb145

sw.bb145:                                         ; preds = %sw.bb144, %do.end40.sw.bb145_crit_edge, %do.end40.sw.bb145_crit_edge405
  %rsp_size.1 = phi i32 [ 1024, %do.end40.sw.bb145_crit_edge ], [ 1024, %do.end40.sw.bb145_crit_edge405 ], [ 64512, %sw.bb144 ]
  %un146 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %35, i32 0, i32 10
  %portName149 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 1
  %81 = ptrtoint ptr %portName149 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %portName149, align 8
  %83 = ptrtoint ptr %un146 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %un146, align 8
  br label %sw.epilog

do.body151:                                       ; preds = %do.end40
  %84 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cfg_log_verbose, align 4
  %and153 = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.else166, label %do.end158

do.end158:                                        ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #22
  %86 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vport, align 8
  %pcidev160 = getelementptr inbounds %struct.lpfc_hba, ptr %87, i32 0, i32 165
  %88 = ptrtoint ptr %pcidev160 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pcidev160, align 4
  %dev161 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %brd_no163 = getelementptr inbounds %struct.lpfc_hba, ptr %87, i32 0, i32 197
  %90 = ptrtoint ptr %brd_no163 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %brd_no163, align 4
  %vpi164 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %92 = ptrtoint ptr %vpi164 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vpi164, align 4
  %conv165 = zext i16 %93 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.30, ptr noundef %dev161, ptr noundef nonnull @.str.29, i32 noundef %91, i32 noundef %conv165, i32 noundef %cmdcode) #23
  br label %fdmi_cmd_free_bmpvirt

if.else166:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool168.not = icmp eq i32 %85, 0
  br i1 %tobool168.not, label %if.then169, label %if.else166.fdmi_cmd_free_bmpvirt_crit_edge

if.else166.fdmi_cmd_free_bmpvirt_crit_edge:       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #22
  br label %fdmi_cmd_free_bmpvirt

if.then169:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #22
  %94 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vport, align 8
  %brd_no172 = getelementptr inbounds %struct.lpfc_hba, ptr %95, i32 0, i32 197
  %96 = ptrtoint ptr %brd_no172 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %brd_no172, align 4
  %vpi173 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %98 = ptrtoint ptr %vpi173 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %vpi173, align 4
  %conv174 = zext i16 %99 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %95, ptr noundef nonnull @.str.29, i32 noundef %97, i32 noundef %conv174, i32 noundef %cmdcode) #20
  br label %fdmi_cmd_free_bmpvirt

sw.epilog:                                        ; preds = %sw.bb145, %sw.bb139, %port_out, %hba_out, %do.end40.sw.epilog_crit_edge
  %size.8 = phi i32 [ 24, %sw.bb145 ], [ 24, %sw.bb139 ], [ %add137, %port_out ], [ %add83, %hba_out ], [ 16, %do.end40.sw.epilog_crit_edge ]
  %rsp_size.2 = phi i32 [ %rsp_size.1, %sw.bb145 ], [ %rsp_size.0, %sw.bb139 ], [ 1024, %port_out ], [ 1024, %hba_out ], [ 1024, %do.end40.sw.epilog_crit_edge ]
  %100 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %100)
  %bf.load182 = load i32, ptr %CommandResponse, align 4
  %bf.clear184 = and i32 %bf.load182, -65536
  %bf.set185 = or i32 %bf.clear184, %rsp_size.2
  store i32 %bf.set185, ptr %CommandResponse, align 4
  %101 = ptrtoint ptr %virt16 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %virt16, align 8
  %addrHigh = getelementptr inbounds %struct.ulp_bde64, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %addrHigh to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %addrHigh, align 4
  %104 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %phys, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %addrLow = getelementptr inbounds %struct.ulp_bde64, ptr %102, i32 0, i32 1
  %107 = ptrtoint ptr %addrLow to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %addrLow, align 4
  %bf.value201 = and i32 %size.8, 16777215
  %108 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %bf.value201, ptr %102, align 4
  %call204 = tail call fastcc i32 @lpfc_ct_cmd(ptr noundef %vport, ptr noundef nonnull %call7.i, ptr noundef nonnull %call7.i381, ptr noundef nonnull %ndlp, ptr noundef nonnull @lpfc_cmpl_ct_disc_fdmi, i32 noundef %rsp_size.2, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.fdmi_cmd_free_bmpvirt_crit_edge

sw.epilog.fdmi_cmd_free_bmpvirt_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %fdmi_cmd_free_bmpvirt

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

fdmi_cmd_free_bmpvirt:                            ; preds = %sw.epilog.fdmi_cmd_free_bmpvirt_crit_edge, %if.then169, %if.else166.fdmi_cmd_free_bmpvirt_crit_edge, %do.end158
  %109 = ptrtoint ptr %virt16 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %virt16, align 8
  %111 = ptrtoint ptr %phys14 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %phys14, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %1, ptr noundef %110, i32 noundef %112) #20
  br label %fdmi_cmd_free_bmp

fdmi_cmd_free_bmp:                                ; preds = %fdmi_cmd_free_bmpvirt, %if.end13.fdmi_cmd_free_bmp_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i381) #20
  br label %fdmi_cmd_free_mpvirt

fdmi_cmd_free_mpvirt:                             ; preds = %fdmi_cmd_free_bmp, %if.end9.fdmi_cmd_free_mpvirt_crit_edge
  %113 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %virt, align 8
  %115 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %1, ptr noundef %114, i32 noundef %116) #20
  br label %fdmi_cmd_free_mp

fdmi_cmd_free_mp:                                 ; preds = %fdmi_cmd_free_mpvirt, %if.end4.fdmi_cmd_free_mp_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #20
  br label %do.body212

do.body212:                                       ; preds = %fdmi_cmd_free_mp, %if.end.do.body212_crit_edge
  %cfg_log_verbose213 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %117 = ptrtoint ptr %cfg_log_verbose213 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cfg_log_verbose213, align 4
  %and214 = and i32 %118, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %if.else227, label %do.end219

do.end219:                                        ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #22
  %119 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vport, align 8
  %pcidev221 = getelementptr inbounds %struct.lpfc_hba, ptr %120, i32 0, i32 165
  %121 = ptrtoint ptr %pcidev221 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pcidev221, align 4
  %dev222 = getelementptr inbounds %struct.pci_dev, ptr %122, i32 0, i32 44
  %brd_no224 = getelementptr inbounds %struct.lpfc_hba, ptr %120, i32 0, i32 197
  %123 = ptrtoint ptr %brd_no224 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %brd_no224, align 4
  %vpi225 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %125 = ptrtoint ptr %vpi225 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %vpi225, align 4
  %conv226 = zext i16 %126 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev222, ptr noundef nonnull @.str.33, i32 noundef %124, i32 noundef %conv226, i32 noundef %cmdcode) #23
  br label %cleanup

if.else227:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool229.not = icmp eq i32 %118, 0
  br i1 %tobool229.not, label %if.then230, label %if.else227.cleanup_crit_edge

if.else227.cleanup_crit_edge:                     ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then230:                                       ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #22
  %127 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vport, align 8
  %brd_no233 = getelementptr inbounds %struct.lpfc_hba, ptr %128, i32 0, i32 197
  %129 = ptrtoint ptr %brd_no233 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %brd_no233, align 4
  %vpi234 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %131 = ptrtoint ptr %vpi234 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %vpi234, align 4
  %conv235 = zext i16 %132 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %128, ptr noundef nonnull @.str.33, i32 noundef %130, i32 noundef %conv235, i32 noundef %cmdcode) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then230, %if.else227.cleanup_crit_edge, %do.end219, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 1, %if.else227.cleanup_crit_edge ], [ 1, %if.then230 ], [ 1, %do.end219 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_wwnn(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %nodeName = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 2
  %1 = ptrtoint ptr %nodeName to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %nodeName, align 8
  %3 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %AttrValue, align 8
  %4 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 65548, ptr %ad, align 1
  ret i32 12
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_manufacturer(ptr nocapture noundef readnone %vport, ptr noundef %ad) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %call = tail call ptr @strncpy(ptr noundef %AttrValue, ptr noundef nonnull dereferenceable(19) @.str.204, i32 noundef 256)
  %call3 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call3, 8
  %add5 = and i32 %add, -4
  %conv6 = and i32 %add, 65532
  %bf.set9 = or i32 %conv6, 131072
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %bf.set9, ptr %ad, align 1
  ret i32 %add5
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_sn(ptr nocapture noundef readonly %vport, ptr noundef %ad) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %SerialNumber = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 198
  %call = tail call ptr @strncpy(ptr noundef %AttrValue, ptr noundef %SerialNumber, i32 noundef 256)
  %call5 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call5, 8
  %add7 = and i32 %add, -4
  %conv8 = and i32 %add, 65532
  %bf.set11 = or i32 %conv8, 196608
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %bf.set11, ptr %ad, align 1
  ret i32 %add7
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_model(ptr nocapture noundef readonly %vport, ptr noundef %ad) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %ModelName = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 202
  %call = tail call ptr @strncpy(ptr noundef %AttrValue, ptr noundef %ModelName, i32 noundef 256)
  %call5 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call5, 8
  %add7 = and i32 %add, -4
  %conv8 = and i32 %add, 65532
  %bf.set11 = or i32 %conv8, 262144
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %bf.set11, ptr %ad, align 1
  ret i32 %add7
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_description(ptr nocapture noundef readonly %vport, ptr noundef %ad) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %ModelDesc = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 201
  %call = tail call ptr @strncpy(ptr noundef %AttrValue, ptr noundef %ModelDesc, i32 noundef 256)
  %call5 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call5, 8
  %add7 = and i32 %add, -4
  %conv8 = and i32 %add, 65532
  %bf.set11 = or i32 %conv8, 327680
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %bf.set11, ptr %ad, align 1
  ret i32 %add7
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_hdw_ver(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %biuRev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 160, i32 2, i32 1
  %3 = ptrtoint ptr %biuRev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %biuRev, align 4
  %and = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and)
  %cmp2 = icmp ult i32 %and, 10
  %5 = trunc i32 %and to i8
  %conv4 = or i8 %5, 48
  %conv9 = add nuw nsw i8 %5, 87
  %conv9.sink = select i1 %cmp2, i8 %conv4, i8 %conv9
  %6 = getelementptr [256 x i8], ptr %AttrValue, i32 0, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv9.sink, ptr %6, align 1
  %shr = lshr i32 %4, 4
  %and.1 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.1)
  %cmp2.1 = icmp ult i32 %and.1, 10
  %8 = trunc i32 %and.1 to i8
  %conv4.1 = or i8 %8, 48
  %9 = trunc i32 %and.1 to i8
  %conv9.1 = add nuw nsw i8 %9, 87
  %conv9.1.sink = select i1 %cmp2.1, i8 %conv4.1, i8 %conv9.1
  %10 = getelementptr [256 x i8], ptr %AttrValue, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9.1.sink, ptr %10, align 1
  %shr.1 = lshr i32 %4, 8
  %and.2 = and i32 %shr.1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.2)
  %cmp2.2 = icmp ult i32 %and.2, 10
  %12 = trunc i32 %and.2 to i8
  %conv4.2 = or i8 %12, 48
  %13 = trunc i32 %and.2 to i8
  %conv9.2 = add nuw nsw i8 %13, 87
  %conv9.2.sink = select i1 %cmp2.2, i8 %conv4.2, i8 %conv9.2
  %14 = getelementptr [256 x i8], ptr %AttrValue, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9.2.sink, ptr %14, align 1
  %shr.2 = lshr i32 %4, 12
  %and.3 = and i32 %shr.2, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.3)
  %cmp2.3 = icmp ult i32 %and.3, 10
  %16 = trunc i32 %and.3 to i8
  %conv4.3 = or i8 %16, 48
  %17 = trunc i32 %and.3 to i8
  %conv9.3 = add nuw nsw i8 %17, 87
  %conv9.3.sink = select i1 %cmp2.3, i8 %conv4.3, i8 %conv9.3
  %18 = getelementptr [256 x i8], ptr %AttrValue, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv9.3.sink, ptr %18, align 1
  %shr.3 = lshr i32 %4, 16
  %and.4 = and i32 %shr.3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.4)
  %cmp2.4 = icmp ult i32 %and.4, 10
  %20 = trunc i32 %and.4 to i8
  %conv4.4 = or i8 %20, 48
  %21 = trunc i32 %and.4 to i8
  %conv9.4 = add nuw nsw i8 %21, 87
  %conv9.4.sink = select i1 %cmp2.4, i8 %conv4.4, i8 %conv9.4
  %22 = getelementptr [256 x i8], ptr %AttrValue, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv9.4.sink, ptr %22, align 1
  %shr.4 = lshr i32 %4, 20
  %and.5 = and i32 %shr.4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.5)
  %cmp2.5 = icmp ult i32 %and.5, 10
  %24 = trunc i32 %and.5 to i8
  %conv4.5 = or i8 %24, 48
  %25 = trunc i32 %and.5 to i8
  %conv9.5 = add nuw nsw i8 %25, 87
  %conv9.5.sink = select i1 %cmp2.5, i8 %conv4.5, i8 %conv9.5
  %26 = getelementptr [256 x i8], ptr %AttrValue, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv9.5.sink, ptr %26, align 1
  %shr.5 = lshr i32 %4, 24
  %and.6 = and i32 %shr.5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.6)
  %cmp2.6 = icmp ult i32 %and.6, 10
  %28 = trunc i32 %and.6 to i8
  %conv4.6 = or i8 %28, 48
  %29 = trunc i32 %and.6 to i8
  %conv9.6 = add nuw nsw i8 %29, 87
  %conv9.6.sink = select i1 %cmp2.6, i8 %conv4.6, i8 %conv9.6
  %30 = getelementptr [256 x i8], ptr %AttrValue, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv9.6.sink, ptr %30, align 1
  %shr.6 = lshr i32 %4, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %4)
  %cmp2.7 = icmp ult i32 %4, -1610612736
  %32 = trunc i32 %shr.6 to i8
  %conv9.7 = add nuw nsw i8 %32, 87
  %33 = trunc i32 %shr.6 to i8
  %conv4.7 = or i8 %33, 48
  %storemerge = select i1 %cmp2.7, i8 %conv4.7, i8 %conv9.7
  %34 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %storemerge, ptr %AttrValue, align 1
  %35 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 393228, ptr %ad, align 1
  ret i32 12
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_drvr_ver(ptr nocapture noundef readnone %vport, ptr noundef %ad) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %call = tail call ptr @strncpy(ptr noundef %AttrValue, ptr noundef nonnull dereferenceable(9) @.str.72, i32 noundef 256)
  %call3 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call3, 8
  %add5 = and i32 %add, -4
  %conv6 = and i32 %add, 65532
  %bf.set9 = or i32 %conv6, 458752
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %bf.set9, ptr %ad, align 1
  ret i32 %add5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_rom_ver(ptr nocapture noundef readonly %vport, ptr noundef %ad) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lpfc_decode_firmware_rev(ptr noundef %1, ptr noundef %AttrValue, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %OptionROMVersion = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 199
  %call = tail call ptr @strncpy(ptr noundef %AttrValue, ptr noundef %OptionROMVersion, i32 noundef 256)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call7 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call7, 8
  %add9 = and i32 %add, -4
  %conv10 = and i32 %add, 65532
  %bf.set13 = or i32 %conv10, 524288
  %5 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %bf.set13, ptr %ad, align 1
  ret i32 %add9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_fmw_ver(ptr nocapture noundef readonly %vport, ptr nocapture noundef %ad) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  tail call void @lpfc_decode_firmware_rev(ptr noundef %1, ptr noundef %AttrValue, i32 noundef 1)
  %call = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call, 8
  %add5 = and i32 %add, -4
  %conv6 = and i32 %add, 65532
  %bf.set9 = or i32 %conv6, 589824
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %bf.set9, ptr %ad, align 1
  ret i32 %add5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_os_ver(ptr nocapture noundef readnone %vport, ptr nocapture noundef %ad) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %AttrValue, i32 noundef 256, ptr noundef nonnull @.str.205, ptr noundef nonnull @init_uts_ns, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3))
  %call9 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call9, 8
  %add11 = and i32 %add, -4
  %conv12 = and i32 %add, 65532
  %bf.set15 = or i32 %conv12, 655360
  %1 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %bf.set15, ptr %ad, align 1
  ret i32 %add11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_ct_len(ptr nocapture noundef readnone %vport, ptr nocapture noundef writeonly %ad) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 245760, ptr %AttrValue, align 8
  %1 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 720904, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_symbolic_name(ptr nocapture noundef readonly %vport, ptr noundef %ad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %call = tail call i32 @lpfc_vport_symbolic_node_name(ptr noundef %vport, ptr noundef %AttrValue, i32 noundef 256)
  %add = add i32 %call, 8
  %add2 = and i32 %add, -4
  %conv3 = and i32 %add, 65532
  %bf.set6 = or i32 %conv3, 786432
  %1 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %bf.set6, ptr %ad, align 1
  ret i32 %add2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_vendor_info(ptr nocapture noundef readnone %vport, ptr nocapture noundef writeonly %ad) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %AttrValue, align 8
  %1 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 851976, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_num_ports(ptr nocapture noundef readnone %vport, ptr nocapture noundef writeonly %ad) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %AttrValue, align 8
  %1 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 917512, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_fabric_wwnn(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %fabric_nodename = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 22
  %1 = ptrtoint ptr %fabric_nodename to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %fabric_nodename, align 8
  %3 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %AttrValue, align 8
  %4 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 983052, ptr %ad, align 1
  ret i32 12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_bios_ver(ptr nocapture noundef readonly %vport, ptr noundef %ad) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %BIOSVersion = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 200
  %call = tail call i32 @strlcat(ptr noundef %AttrValue, ptr noundef %BIOSVersion, i32 noundef 256) #20
  %call5 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call5, 8
  %add7 = and i32 %add, -4
  %conv8 = and i32 %add, 65532
  %bf.set11 = or i32 %conv8, 1048576
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %bf.set11, ptr %ad, align 1
  ret i32 %add7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_bios_state(ptr nocapture noundef readnone %vport, ptr nocapture noundef writeonly %ad) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %AttrValue, align 8
  %1 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 1114120, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_hba_attr_vendor_id(ptr nocapture noundef readnone %vport, ptr noundef %ad) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %call = tail call ptr @strncpy(ptr noundef %AttrValue, ptr noundef nonnull dereferenceable(7) @.str.206, i32 noundef 256)
  %call3 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call3, 8
  %add5 = and i32 %add, -4
  %conv6 = and i32 %add, 65532
  %bf.set9 = or i32 %conv6, 14680064
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %bf.set9, ptr %ad, align 1
  ret i32 %add5
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_fc4type(ptr noundef readonly %vport, ptr nocapture noundef writeonly %ad) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %arrayidx = getelementptr [32 x i8], ptr %AttrValue, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx, align 2
  %arrayidx3 = getelementptr [32 x i8], ptr %AttrValue, i32 0, i32 7
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx3, align 1
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 241
  %7 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pport, align 8
  %cmp4 = icmp eq ptr %8, %vport
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %nvme = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 21, i32 43
  %9 = ptrtoint ptr %nvme to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nvme, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true5.if.end_crit_edge, label %if.then

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx7 = getelementptr [32 x i8], ptr %AttrValue, i32 0, i32 6
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx7, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 65572, ptr %ad, align 1
  ret i32 36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_support_speed(ptr nocapture noundef readonly %vport, ptr noundef %ad) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %AttrValue, align 8
  %hba_flag = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 38
  %3 = ptrtoint ptr %hba_flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hba_flag, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %lmt = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 64
  %5 = ptrtoint ptr %lmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lmt, align 8
  %and2 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2048, ptr %AttrValue, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %lmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lmt, align 8
  %and7 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %AttrValue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %AttrValue, align 8
  %or11 = or i32 %11, 512
  store i32 %or11, ptr %AttrValue, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %12 = ptrtoint ptr %lmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lmt, align 8
  %and14 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end19_crit_edge, label %if.then16

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %AttrValue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %AttrValue, align 8
  %or18 = or i32 %15, 1024
  store i32 %or18, ptr %AttrValue, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12.if.end19_crit_edge
  %16 = ptrtoint ptr %lmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lmt, align 8
  %and21 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end26_crit_edge, label %if.then23

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  %18 = ptrtoint ptr %AttrValue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %AttrValue, align 8
  %or25 = or i32 %19, 64
  store i32 %or25, ptr %AttrValue, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19.if.end26_crit_edge
  %20 = ptrtoint ptr %lmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lmt, align 8
  %and28 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end33_crit_edge, label %if.then30

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  %22 = ptrtoint ptr %AttrValue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %AttrValue, align 8
  %or32 = or i32 %23, 32
  store i32 %or32, ptr %AttrValue, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end26.if.end33_crit_edge
  %24 = ptrtoint ptr %lmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lmt, align 8
  %and35 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end40_crit_edge, label %if.then37

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %AttrValue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %AttrValue, align 8
  %or39 = or i32 %27, 4
  store i32 %or39, ptr %AttrValue, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end33.if.end40_crit_edge
  %28 = ptrtoint ptr %lmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lmt, align 8
  %and42 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end47_crit_edge, label %if.then44

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #22
  %30 = ptrtoint ptr %AttrValue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %AttrValue, align 8
  %or46 = or i32 %31, 16
  store i32 %or46, ptr %AttrValue, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  %32 = ptrtoint ptr %lmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lmt, align 8
  %and49 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end54_crit_edge, label %if.then51

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end54

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #22
  %34 = ptrtoint ptr %AttrValue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %AttrValue, align 8
  %or53 = or i32 %35, 8
  store i32 %or53, ptr %AttrValue, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end47.if.end54_crit_edge
  %36 = ptrtoint ptr %lmt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lmt, align 8
  %and56 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.if.end61_crit_edge, label %if.then58

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #22
  %38 = ptrtoint ptr %AttrValue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %AttrValue, align 8
  %or60 = or i32 %39, 2
  store i32 %or60, ptr %AttrValue, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end54.if.end61_crit_edge
  %40 = ptrtoint ptr %lmt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lmt, align 8
  %and63 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end61.if.end76_crit_edge, label %if.then65

if.end61.if.end76_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end76

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #22
  %42 = ptrtoint ptr %AttrValue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %AttrValue, align 8
  %or67 = or i32 %43, 1
  br label %if.end76.sink.split

if.else:                                          ; preds = %entry
  %fc_linkspeed = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 50
  %44 = ptrtoint ptr %fc_linkspeed to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fc_linkspeed, align 2
  %switch.tableidx = add i8 %45, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %46 = icmp ult i8 %switch.tableidx, 5
  br i1 %46, label %switch.hole_check, label %if.else.if.end76_crit_edge

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end76

switch.hole_check:                                ; preds = %if.else
  %switch.shifted = lshr i8 29, %switch.tableidx
  %47 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %switch.lobit.not = icmp eq i8 %47, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end76_crit_edge, label %switch.lookup

switch.hole_check.if.end76_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end76

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  %48 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.lpfc_fdmi_port_attr_support_speed, i32 0, i32 %48
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end76.sink.split

if.end76.sink.split:                              ; preds = %switch.lookup, %if.then65
  %.sink = phi i32 [ %or67, %if.then65 ], [ %switch.load, %switch.lookup ]
  %50 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink, ptr %AttrValue, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end76.sink.split, %switch.hole_check.if.end76_crit_edge, %if.else.if.end76_crit_edge, %if.end61.if.end76_crit_edge
  %51 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 131080, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_speed(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %hba_flag = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %hba_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hba_flag, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %fc_linkspeed = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %fc_linkspeed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fc_linkspeed, align 2
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.260)
  switch i8 %5, label %sw.default [
    i8 4, label %if.then.if.end_crit_edge
    i8 8, label %sw.bb2
    i8 16, label %sw.bb4
    i8 32, label %sw.bb6
    i8 64, label %sw.bb8
    i8 -128, label %sw.bb10
    i8 -112, label %sw.bb12
    i8 -96, label %sw.bb14
    i8 -80, label %sw.bb16
    i8 -64, label %sw.bb18
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

sw.bb18:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.else:                                          ; preds = %entry
  %switch.tableidx = add i8 %5, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 5
  br i1 %7, label %switch.lookup, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.lpfc_fdmi_port_attr_speed, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.else.if.end_crit_edge, %sw.default, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %if.then.if.end_crit_edge
  %.sink = phi i32 [ 2, %sw.bb2 ], [ 8, %sw.bb4 ], [ 16, %sw.bb6 ], [ 4, %sw.bb8 ], [ 32, %sw.bb10 ], [ 64, %sw.bb12 ], [ 1024, %sw.bb14 ], [ 512, %sw.bb16 ], [ 2048, %sw.bb18 ], [ 32768, %sw.default ], [ 1, %if.then.if.end_crit_edge ], [ %switch.load, %switch.lookup ], [ 32768, %if.else.if.end_crit_edge ]
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %10 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %AttrValue, align 8
  %11 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 196616, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_max_frame(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %bbRcvSizeMsb = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 0, i32 5
  %0 = ptrtoint ptr %bbRcvSizeMsb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bbRcvSizeMsb, align 2
  %2 = and i8 %1, 15
  %and = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %and, 8
  %bbRcvSizeLsb = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 0, i32 6
  %3 = ptrtoint ptr %bbRcvSizeLsb to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bbRcvSizeLsb, align 1
  %conv2 = zext i8 %4 to i32
  %or = or i32 %shl, %conv2
  %5 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %AttrValue, align 8
  %6 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 262152, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_os_devname(ptr nocapture noundef readonly %vport, ptr nocapture noundef %ad) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %host_no = getelementptr i8, ptr %vport, i32 -2004
  %1 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %host_no, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %AttrValue, i32 noundef 256, ptr noundef nonnull @.str.207, i32 noundef %2)
  %call4 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call4, 8
  %add6 = and i32 %add, -4
  %conv7 = and i32 %add, 65532
  %bf.set10 = or i32 %conv7, 327680
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %bf.set10, ptr %ad, align 1
  ret i32 %add6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_host_name(ptr nocapture noundef readonly %vport, ptr noundef %ad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %1 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vport, align 8
  %os_host_name = getelementptr inbounds %struct.lpfc_hba, ptr %2, i32 0, i32 427
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %AttrValue, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %os_host_name) #20
  %call4 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call4, 8
  %add6 = and i32 %add, -4
  %conv7 = and i32 %add, 65532
  %bf.set10 = or i32 %conv7, 393216
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %bf.set10, ptr %ad, align 1
  ret i32 %add6
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_wwnn(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %nodeName = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 2
  %1 = ptrtoint ptr %nodeName to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %nodeName, align 8
  %3 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %AttrValue, align 8
  %4 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 458764, ptr %ad, align 1
  ret i32 12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_wwpn(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %portName = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 1
  %1 = ptrtoint ptr %portName to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %portName, align 8
  %3 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %AttrValue, align 8
  %4 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 524300, ptr %ad, align 1
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_symbolic_name(ptr nocapture noundef readonly %vport, ptr noundef %ad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %1 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vport, align 8
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %2, i32 0, i32 197
  %3 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %brd_no.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %AttrValue, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef %4) #20
  %add = add i32 %call.i, 8
  %add2 = and i32 %add, -4
  %conv3 = and i32 %add, 65532
  %bf.set6 = or i32 %conv3, 589824
  %5 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %bf.set6, ptr %ad, align 1
  ret i32 %add2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_port_type(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %fc_topology = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 65
  %2 = ptrtoint ptr %fc_topology to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fc_topology, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %. = select i1 %cmp, i32 2, i32 1
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %4 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %AttrValue, align 8
  %5 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 655368, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_class(ptr nocapture noundef readnone %vport, ptr nocapture noundef writeonly %ad) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %AttrValue, align 8
  %1 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 720904, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_fabric_wwpn(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %fabric_portname = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 21
  %1 = ptrtoint ptr %fabric_portname to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %fabric_portname, align 8
  %3 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %AttrValue, align 8
  %4 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 786444, ptr %ad, align 1
  ret i32 12
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_active_fc4type(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %arrayidx = getelementptr [32 x i8], ptr %AttrValue, i32 0, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr [32 x i8], ptr %AttrValue, i32 0, i32 7
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %arrayidx2, align 1
  %3 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vport, align 8
  %cfg_enable_fc4_type = getelementptr inbounds %struct.lpfc_hba, ptr %4, i32 0, i32 140
  %5 = ptrtoint ptr %cfg_enable_fc4_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cfg_enable_fc4_type, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx4 = getelementptr [32 x i8], ptr %AttrValue, i32 0, i32 6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx4, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 852004, ptr %ad, align 1
  ret i32 36
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_port_state(ptr nocapture noundef readnone %vport, ptr nocapture noundef writeonly %ad) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %AttrValue, align 8
  %1 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 16842760, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_num_disc(ptr noundef %vport, ptr nocapture noundef writeonly %ad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock.i = getelementptr i8, ptr %vport, i32 -2380
  %0 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #20
  %fc_nodes.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 9
  %2 = ptrtoint ptr %fc_nodes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fc_nodes.i, align 4
  %cmp.not32.i = icmp eq ptr %3, %fc_nodes.i
  br i1 %cmp.not32.i, label %entry.lpfc_find_map_node.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.lpfc_find_map_node.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_find_map_node.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ndlp.034.i = phi ptr [ %next_ndlp.035.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %cnt.033.i = phi i32 [ %cnt.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %ndlp.034.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %next_ndlp.035.i = load ptr, ptr %ndlp.034.i, align 8
  %nlp_type.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.034.i, i32 0, i32 8
  %5 = ptrtoint ptr %nlp_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nlp_type.i, align 8
  %7 = and i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %nlp_state.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.034.i, i32 0, i32 11
  %8 = ptrtoint ptr %nlp_state.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nlp_state.i, align 2
  %10 = and i16 %9, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %10)
  %switch.i = icmp eq i16 %10, 6
  %inc.i = zext i1 %switch.i to i32
  %spec.select.i = add i32 %cnt.033.i, %inc.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %cnt.1.i = phi i32 [ %cnt.033.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end.i ]
  %cmp.not.i = icmp eq ptr %next_ndlp.035.i, %fc_nodes.i
  br i1 %cmp.not.i, label %for.inc.i.lpfc_find_map_node.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.lpfc_find_map_node.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_find_map_node.exit

lpfc_find_map_node.exit:                          ; preds = %for.inc.i.lpfc_find_map_node.exit_crit_edge, %entry.lpfc_find_map_node.exit_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %entry.lpfc_find_map_node.exit_crit_edge ], [ %cnt.1.i, %for.inc.i.lpfc_find_map_node.exit_crit_edge ]
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %11 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %12) #20
  %conv = trunc i32 %cnt.0.lcssa.i to i16
  %fdmi_num_disc = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 86
  %13 = ptrtoint ptr %fdmi_num_disc to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %fdmi_num_disc, align 4
  %conv2 = and i32 %cnt.0.lcssa.i, 65535
  %14 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv2, ptr %AttrValue, align 8
  %15 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 16908296, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_port_attr_nportid(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %0 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_myDID, align 8
  %2 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %AttrValue, align 8
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 16973832, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_smart_attr_service(ptr nocapture noundef readnone %vport, ptr noundef %ad) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %call = tail call ptr @strncpy(ptr noundef %AttrValue, ptr noundef nonnull dereferenceable(20) @.str.208, i32 noundef 256)
  %call3 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call3, 8
  %add5 = and i32 %add, -4
  %conv6 = and i32 %add, 65532
  %bf.set9 = or i32 %conv6, -251658240
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %bf.set9, ptr %ad, align 1
  ret i32 %add5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_smart_attr_guid(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %nodeName = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 2
  %1 = ptrtoint ptr %nodeName to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %nodeName, align 8
  %3 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %AttrValue, align 8
  %add.ptr = getelementptr %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1, i32 0, i32 1
  %portName = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %portName to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %portName, align 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %add.ptr, align 1
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 -251592684, ptr %ad, align 1
  ret i32 20
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_smart_attr_version(ptr nocapture noundef readnone %vport, ptr noundef %ad) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %call = tail call ptr @strncpy(ptr noundef %AttrValue, ptr noundef nonnull dereferenceable(22) @.str.209, i32 noundef 256)
  %call3 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call3, 8
  %add5 = and i32 %add, -4
  %conv6 = and i32 %add, 65532
  %bf.set9 = or i32 %conv6, -251527168
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %bf.set9, ptr %ad, align 1
  ret i32 %add5
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_smart_attr_model(ptr nocapture noundef readonly %vport, ptr noundef %ad) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %ModelName = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 202
  %call = tail call ptr @strncpy(ptr noundef %AttrValue, ptr noundef %ModelName, i32 noundef 256)
  %call5 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call5, 8
  %add7 = and i32 %add, -4
  %conv8 = and i32 %add, 65532
  %bf.set11 = or i32 %conv8, -251461632
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %bf.set11, ptr %ad, align 1
  ret i32 %add7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpfc_fdmi_smart_attr_port_info(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %ad) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %0 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vpi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %AttrValue, align 8
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 -251396088, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpfc_fdmi_smart_attr_qos(ptr nocapture noundef readnone %vport, ptr nocapture noundef writeonly %ad) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %AttrValue, align 8
  %1 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 -251330552, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpfc_fdmi_smart_attr_security(ptr nocapture noundef readnone %vport, ptr nocapture noundef writeonly %ad) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %0 = ptrtoint ptr %AttrValue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %AttrValue, align 8
  %1 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 -251265016, ptr %ad, align 1
  ret i32 8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpfc_fdmi_vendor_attr_mi(ptr nocapture noundef readonly %vport, ptr noundef %ad) #4 align 64 {
entry:
  %mibrevision = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mibrevision) #20
  %AttrValue = getelementptr inbounds %struct.lpfc_fdmi_attr_def, ptr %ad, i32 0, i32 1
  %2 = call ptr @memset(ptr %mibrevision, i32 255, i32 16)
  %3 = call ptr @memset(ptr %AttrValue, i32 0, i32 256)
  %mi_ver = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 25, i32 21, i32 29
  %4 = ptrtoint ptr %mi_ver to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mi_ver, align 4
  %conv = zext i16 %5 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %mibrevision, ptr noundef nonnull @.str.210, i32 noundef %conv)
  %call3 = call ptr @strncpy(ptr noundef %AttrValue, ptr noundef nonnull %mibrevision, i32 noundef 256)
  %call6 = tail call i32 @strnlen(ptr noundef %AttrValue, i32 noundef 256) #25
  %add = add i32 %call6, 8
  %add8 = and i32 %add, -4
  %conv10 = and i32 %add, 65532
  %bf.set13 = or i32 %conv10, -263782400
  %6 = ptrtoint ptr %ad to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.set13, ptr %ad, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mibrevision) #20
  ret i32 %add8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_disc_fdmi(ptr noundef %phba, ptr noundef %cmdiocb, ptr nocapture noundef readonly %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 18
  %2 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context1, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %4 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %virt2 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %virt2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt2, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %CommandResponse, align 4
  %bf.lshr = lshr i32 %bf.load, 16
  %CommandResponse3 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %9, i32 0, i32 5
  %11 = ptrtoint ptr %CommandResponse3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load4 = load i32, ptr %CommandResponse3, align 4
  %call = tail call i32 @lpfc_els_chk_latt(ptr noundef %1) #20
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load7 = load i32, ptr %ulpStatus, align 4
  %bf.lshr8 = lshr i32 %bf.load7, 4
  %bf.clear = and i32 %bf.lshr8, 15
  %arrayidx = getelementptr %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.211, i32 noundef %bf.clear, i32 noundef %14, i32 noundef %call) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %15 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load10 = load i32, ptr %ulpStatus, align 4
  %16 = and i32 %bf.load10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end67_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

lor.lhs.false.if.end67_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end67

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %17 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load15 = load i32, ptr %ulpStatus, align 4
  %18 = and i32 %bf.load15, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %18)
  %cmp = icmp eq i32 %18, 48
  br i1 %cmp, label %if.then19, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

if.then19:                                        ; preds = %if.then
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %and = and i32 %20, 511
  %21 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %and, label %if.then19.do.body_crit_edge [
    i32 6, label %if.then19.sw.bb22_crit_edge
    i32 17, label %if.then19.sw.bb22_crit_edge505
    i32 21, label %if.then19.sw.bb22_crit_edge506
    i32 2, label %if.then19.sw.bb22_crit_edge507
    i32 15, label %if.then19.sw.bb22_crit_edge508
  ]

if.then19.sw.bb22_crit_edge508:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb22

if.then19.sw.bb22_crit_edge507:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb22

if.then19.sw.bb22_crit_edge506:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb22

if.then19.sw.bb22_crit_edge505:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb22

if.then19.sw.bb22_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb22

if.then19.do.body_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

sw.bb22:                                          ; preds = %if.then19.sw.bb22_crit_edge, %if.then19.sw.bb22_crit_edge505, %if.then19.sw.bb22_crit_edge506, %if.then19.sw.bb22_crit_edge507, %if.then19.sw.bb22_crit_edge508
  %retry = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 14
  %22 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %retry, align 2
  %inc = add i8 %23, 1
  store i8 %inc, ptr %retry, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc)
  %cmp25 = icmp ugt i8 %inc, 2
  br i1 %cmp25, label %sw.bb22.do.body_crit_edge, label %if.end

sw.bb22.do.body_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

if.end:                                           ; preds = %sw.bb22
  %call28 = tail call i32 @lpfc_sli_issue_iocb(ptr noundef %phba, i32 noundef 2, ptr noundef %cmdiocb, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 2
  br i1 %cmp29, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %sw.bb22.do.body_crit_edge, %if.then19.do.body_crit_edge, %if.then.do.body_crit_edge
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %24 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg_log_verbose, align 4
  %and34 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 165
  %28 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 197
  %30 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vpi, align 4
  %conv40 = zext i16 %33 to i32
  %34 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load43 = load i32, ptr %ulpStatus, align 4
  %bf.lshr44 = lshr i32 %bf.load43, 4
  %bf.clear45 = and i32 %bf.lshr44, 15
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.212, i32 noundef %31, i32 noundef %conv40, i32 noundef %bf.lshr, i32 noundef %call, i32 noundef %bf.clear45, i32 noundef %36) #23
  br label %if.end67

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool49.not = icmp eq i32 %25, 0
  br i1 %tobool49.not, label %if.then50, label %if.else.if.end67_crit_edge

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end67

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %brd_no53 = getelementptr inbounds %struct.lpfc_hba, ptr %38, i32 0, i32 197
  %39 = ptrtoint ptr %brd_no53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %brd_no53, align 4
  %vpi54 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %vpi54 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vpi54, align 4
  %conv55 = zext i16 %42 to i32
  %43 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load58 = load i32, ptr %ulpStatus, align 4
  %bf.lshr59 = lshr i32 %bf.load58, 4
  %bf.clear60 = and i32 %bf.lshr59, 15
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %38, ptr noundef nonnull @.str.212, i32 noundef %40, i32 noundef %conv55, i32 noundef %bf.lshr, i32 noundef %call, i32 noundef %bf.clear60, i32 noundef %45) #20
  br label %if.end67

if.end67:                                         ; preds = %if.then50, %if.else.if.end67_crit_edge, %do.end, %lor.lhs.false.if.end67_crit_edge
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 22
  %46 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %context_un, align 8
  %call68 = tail call i32 @lpfc_ct_free_iocb(ptr noundef %phba, ptr noundef %cmdiocb)
  %call69 = tail call i32 @lpfc_nlp_put(ptr noundef %47) #20
  %call70 = tail call ptr @lpfc_findnode_did(ptr noundef %1, i32 noundef 16777210) #20
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.end67.cleanup_crit_edge, label %if.end73

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end73:                                         ; preds = %if.end67
  %bf.lshr5.mask = and i32 %bf.load4, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147418112, i32 %bf.lshr5.mask)
  %cmp76 = icmp eq i32 %bf.lshr5.mask, -2147418112
  br i1 %cmp76, label %do.body79, label %if.end73.if.end183_crit_edge

if.end73.if.end183_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #22
  %.pre = trunc i32 %bf.lshr to i16
  br label %if.end183

do.body79:                                        ; preds = %if.end73
  %cfg_log_verbose80 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %48 = ptrtoint ptr %cfg_log_verbose80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cfg_log_verbose80, align 4
  %and81 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.else94, label %do.end86

do.end86:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #22
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %pcidev88 = getelementptr inbounds %struct.lpfc_hba, ptr %51, i32 0, i32 165
  %52 = ptrtoint ptr %pcidev88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcidev88, align 4
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %brd_no91 = getelementptr inbounds %struct.lpfc_hba, ptr %51, i32 0, i32 197
  %54 = ptrtoint ptr %brd_no91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %brd_no91, align 4
  %vpi92 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %vpi92 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vpi92, align 4
  %conv93 = zext i16 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev89, ptr noundef nonnull @.str.215, i32 noundef %55, i32 noundef %conv93, i32 noundef %bf.lshr) #23
  br label %do.end106

if.else94:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool96.not = icmp eq i32 %49, 0
  br i1 %tobool96.not, label %if.then97, label %if.else94.do.end106_crit_edge

if.else94.do.end106_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end106

if.then97:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #22
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %brd_no100 = getelementptr inbounds %struct.lpfc_hba, ptr %59, i32 0, i32 197
  %60 = ptrtoint ptr %brd_no100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %brd_no100, align 4
  %vpi101 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %62 = ptrtoint ptr %vpi101 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vpi101, align 4
  %conv102 = zext i16 %63 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %59, ptr noundef nonnull @.str.215, i32 noundef %61, i32 noundef %conv102, i32 noundef %bf.lshr) #20
  br label %do.end106

do.end106:                                        ; preds = %if.then97, %if.else94.do.end106_crit_edge, %do.end86
  %trunc504 = trunc i32 %bf.lshr to i16
  %64 = zext i16 %trunc504 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.262)
  switch i16 %trunc504, label %do.end106.if.end183_crit_edge [
    i16 512, label %sw.bb107
    i16 528, label %sw.bb114
    i16 529, label %sw.bb129
  ]

do.end106.if.end183_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end183

sw.bb107:                                         ; preds = %do.end106
  %fdmi_hba_mask = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 87
  %65 = ptrtoint ptr %fdmi_hba_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fdmi_hba_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192511, i32 %66)
  %cmp108 = icmp eq i32 %66, 192511
  br i1 %cmp108, label %if.then110, label %sw.bb107.cleanup_crit_edge

sw.bb107.cleanup_crit_edge:                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then110:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #22
  %67 = ptrtoint ptr %fdmi_hba_mask to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2047, ptr %fdmi_hba_mask, align 8
  %fdmi_port_mask = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 88
  %68 = ptrtoint ptr %fdmi_port_mask to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 63, ptr %fdmi_port_mask, align 4
  %call112 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %1, ptr noundef nonnull %call70, i32 noundef 768, i32 noundef 0)
  br label %cleanup

sw.bb114:                                         ; preds = %do.end106
  %fdmi_port_mask115 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 88
  %69 = ptrtoint ptr %fdmi_port_mask115 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fdmi_port_mask115, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %70, label %sw.bb114.cleanup_crit_edge [
    i32 65535, label %if.then118
    i32 8388607, label %if.then125
  ]

sw.bb114.cleanup_crit_edge:                       ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then118:                                       ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #22
  %72 = ptrtoint ptr %fdmi_port_mask115 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 63, ptr %fdmi_port_mask115, align 4
  %call120 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %1, ptr noundef nonnull %call70, i32 noundef 528, i32 noundef 0)
  br label %cleanup

if.then125:                                       ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #22
  %73 = ptrtoint ptr %fdmi_port_mask115 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 65535, ptr %fdmi_port_mask115, align 4
  %call127 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %1, ptr noundef nonnull %call70, i32 noundef 528, i32 noundef 0)
  br label %cleanup

sw.bb129:                                         ; preds = %do.end106
  %link_flag = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 37
  %74 = ptrtoint ptr %link_flag to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %link_flag, align 8
  %and130 = and i32 %75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end166, label %if.then132

if.then132:                                       ; preds = %sw.bb129
  %and134 = and i32 %75, -33
  %76 = ptrtoint ptr %link_flag to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and134, ptr %link_flag, align 8
  %cmf_active_mode = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 394
  %77 = ptrtoint ptr %cmf_active_mode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cmf_active_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp135 = icmp eq i32 %78, 0
  br i1 %cmp135, label %if.then132.cleanup_crit_edge, label %do.body139

if.then132.cleanup_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body139:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #22
  %pcidev154 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %79 = ptrtoint ptr %pcidev154 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pcidev154, align 4
  %dev155 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %brd_no156 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %81 = ptrtoint ptr %brd_no156 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %brd_no156, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev155, ptr noundef nonnull @.str.218, i32 noundef %82) #23
  br label %cleanup

if.end166:                                        ; preds = %sw.bb129
  %fdmi_port_mask167 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 88
  %83 = ptrtoint ptr %fdmi_port_mask167 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fdmi_port_mask167, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %84, label %if.end166.cleanup_crit_edge [
    i32 65535, label %if.then170
    i32 8388607, label %if.then178
  ]

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then170:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #22
  %fdmi_hba_mask171 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 87
  %86 = ptrtoint ptr %fdmi_hba_mask171 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2047, ptr %fdmi_hba_mask171, align 8
  %87 = ptrtoint ptr %fdmi_port_mask167 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 63, ptr %fdmi_port_mask167, align 4
  %call173 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %1, ptr noundef nonnull %call70, i32 noundef 768, i32 noundef 0)
  br label %cleanup

if.then178:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #22
  %88 = ptrtoint ptr %fdmi_port_mask167 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 65535, ptr %fdmi_port_mask167, align 4
  %call180 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %1, ptr noundef nonnull %call70, i32 noundef 529, i32 noundef 0)
  br label %cleanup

if.end183:                                        ; preds = %do.end106.if.end183_crit_edge, %if.end73.if.end183_crit_edge
  %trunc.pre-phi = phi i16 [ %.pre, %if.end73.if.end183_crit_edge ], [ %trunc504, %do.end106.if.end183_crit_edge ]
  %89 = zext i16 %trunc.pre-phi to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.265)
  switch i16 %trunc.pre-phi, label %if.end183.cleanup_crit_edge [
    i16 512, label %sw.bb184
    i16 768, label %sw.bb186
    i16 784, label %sw.bb188
    i16 529, label %sw.bb197
  ]

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb184:                                         ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #22
  %call185 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %1, ptr noundef nonnull %call70, i32 noundef 529, i32 noundef 0)
  br label %cleanup

sw.bb186:                                         ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #22
  %call187 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %1, ptr noundef nonnull %call70, i32 noundef 784, i32 noundef 0)
  br label %cleanup

sw.bb188:                                         ; preds = %if.end183
  %port_type = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 2
  %90 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %91)
  %cmp190 = icmp eq i8 %91, 1
  br i1 %cmp190, label %if.then192, label %if.else194

if.then192:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #22
  %call193 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %1, ptr noundef nonnull %call70, i32 noundef 512, i32 noundef 0)
  br label %cleanup

if.else194:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #22
  %call195 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %1, ptr noundef nonnull %call70, i32 noundef 528, i32 noundef 0)
  br label %cleanup

sw.bb197:                                         ; preds = %if.end183
  %port_type198 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 2
  %92 = ptrtoint ptr %port_type198 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %port_type198, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %cmp200 = icmp eq i8 %93, 1
  br i1 %cmp200, label %land.lhs.true, label %sw.bb197.do.body323_crit_edge

sw.bb197.do.body323_crit_edge:                    ; preds = %sw.bb197
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body323

land.lhs.true:                                    ; preds = %sw.bb197
  %mi_ver = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 21, i32 29
  %94 = ptrtoint ptr %mi_ver to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %mi_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool203.not = icmp eq i16 %95, 0
  br i1 %tobool203.not, label %land.lhs.true.do.body323_crit_edge, label %if.then204

land.lhs.true.do.body323_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body323

if.then204:                                       ; preds = %land.lhs.true
  %link_flag205 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 37
  %96 = ptrtoint ptr %link_flag205 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %link_flag205, align 8
  %and206 = and i32 %97, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %do.body240, label %do.body209

do.body209:                                       ; preds = %if.then204
  %cfg_log_verbose210 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %98 = ptrtoint ptr %cfg_log_verbose210 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cfg_log_verbose210, align 4
  %and211 = and i32 %99, 67108867
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.else224, label %do.end216

do.end216:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #22
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 8
  %pcidev218 = getelementptr inbounds %struct.lpfc_hba, ptr %101, i32 0, i32 165
  %102 = ptrtoint ptr %pcidev218 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pcidev218, align 4
  %dev219 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %brd_no221 = getelementptr inbounds %struct.lpfc_hba, ptr %101, i32 0, i32 197
  %104 = ptrtoint ptr %brd_no221 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %brd_no221, align 4
  %vpi222 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %106 = ptrtoint ptr %vpi222 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vpi222, align 4
  %conv223 = zext i16 %107 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev219, ptr noundef nonnull @.str.221, i32 noundef %105, i32 noundef %conv223) #23
  br label %do.end236

if.else224:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool226.not = icmp eq i32 %99, 0
  br i1 %tobool226.not, label %if.then227, label %if.else224.do.end236_crit_edge

if.else224.do.end236_crit_edge:                   ; preds = %if.else224
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end236

if.then227:                                       ; preds = %if.else224
  call void @__sanitizer_cov_trace_pc() #22
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 8
  %brd_no230 = getelementptr inbounds %struct.lpfc_hba, ptr %109, i32 0, i32 197
  %110 = ptrtoint ptr %brd_no230 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %brd_no230, align 4
  %vpi231 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %112 = ptrtoint ptr %vpi231 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %vpi231, align 4
  %conv232 = zext i16 %113 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %109, ptr noundef nonnull @.str.221, i32 noundef %111, i32 noundef %conv232) #20
  br label %do.end236

do.end236:                                        ; preds = %if.then227, %if.else224.do.end236_crit_edge, %do.end216
  %114 = ptrtoint ptr %link_flag205 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %link_flag205, align 8
  %and238 = and i32 %115, -33
  store i32 %and238, ptr %link_flag205, align 8
  br label %cleanup

do.body240:                                       ; preds = %if.then204
  %pport242 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %116 = ptrtoint ptr %pport242 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pport242, align 8
  %tobool243.not = icmp eq ptr %117, null
  %cfg_log_verbose246 = getelementptr inbounds %struct.lpfc_vport, ptr %117, i32 0, i32 51
  %cfg_log_verbose248 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond250.in = select i1 %tobool243.not, ptr %cfg_log_verbose248, ptr %cfg_log_verbose246
  %118 = ptrtoint ptr %cond250.in to i32
  call void @__asan_load4_noabort(i32 %118)
  %cond250 = load i32, ptr %cond250.in, align 4
  %and251 = and i32 %cond250, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %tobool252.not = icmp eq i32 %and251, 0
  br i1 %tobool252.not, label %if.else264, label %do.end256

do.end256:                                        ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #22
  %pcidev257 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %119 = ptrtoint ptr %pcidev257 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pcidev257, align 4
  %dev258 = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  %brd_no259 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %121 = ptrtoint ptr %brd_no259 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %brd_no259, align 4
  %conv263 = zext i16 %95 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev258, ptr noundef nonnull @.str.224, i32 noundef %122, i32 noundef %conv263) #23
  br label %if.end274

if.else264:                                       ; preds = %do.body240
  %123 = ptrtoint ptr %cfg_log_verbose248 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cfg_log_verbose248, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool266.not = icmp eq i32 %124, 0
  br i1 %tobool266.not, label %if.then267, label %if.else264.if.end274_crit_edge

if.else264.if.end274_crit_edge:                   ; preds = %if.else264
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end274

if.then267:                                       ; preds = %if.else264
  call void @__sanitizer_cov_trace_pc() #22
  %brd_no268 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %125 = ptrtoint ptr %brd_no268 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %brd_no268, align 4
  %conv272 = zext i16 %95 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.224, i32 noundef %126, i32 noundef %conv272) #20
  br label %if.end274

if.end274:                                        ; preds = %if.then267, %if.else264.if.end274_crit_edge, %do.end256
  %call277 = tail call i32 @lpfc_fdmi_cmd(ptr noundef %1, ptr noundef nonnull %call70, i32 noundef 529, i32 noundef 8388608)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %cmp278 = icmp eq i32 %call277, 0
  br i1 %cmp278, label %if.then280, label %if.end274.do.body283_crit_edge

if.end274.do.body283_crit_edge:                   ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body283

if.then280:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #22
  %127 = ptrtoint ptr %link_flag205 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %link_flag205, align 8
  %or = or i32 %128, 32
  store i32 %or, ptr %link_flag205, align 8
  br label %do.body283

do.body283:                                       ; preds = %if.then280, %if.end274.do.body283_crit_edge
  %129 = ptrtoint ptr %pport242 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pport242, align 8
  %tobool286.not = icmp eq ptr %130, null
  %cfg_log_verbose289 = getelementptr inbounds %struct.lpfc_vport, ptr %130, i32 0, i32 51
  %cond293.in = select i1 %tobool286.not, ptr %cfg_log_verbose248, ptr %cfg_log_verbose289
  %131 = ptrtoint ptr %cond293.in to i32
  call void @__asan_load4_noabort(i32 %131)
  %cond293 = load i32, ptr %cond293.in, align 4
  %and294 = and i32 %cond293, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and294)
  %tobool295.not = icmp eq i32 %and294, 0
  br i1 %tobool295.not, label %if.else308, label %do.end299

do.end299:                                        ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #22
  %pcidev300 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %132 = ptrtoint ptr %pcidev300 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pcidev300, align 4
  %dev301 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  %brd_no302 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %134 = ptrtoint ptr %brd_no302 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %brd_no302, align 4
  %136 = ptrtoint ptr %mi_ver to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %mi_ver, align 4
  %conv306 = zext i16 %137 to i32
  %138 = ptrtoint ptr %link_flag205 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %link_flag205, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev301, ptr noundef nonnull @.str.227, i32 noundef %135, i32 noundef %conv306, i32 noundef %139) #23
  br label %cleanup

if.else308:                                       ; preds = %do.body283
  %140 = ptrtoint ptr %cfg_log_verbose248 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cfg_log_verbose248, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool310.not = icmp eq i32 %141, 0
  br i1 %tobool310.not, label %if.then311, label %if.else308.cleanup_crit_edge

if.else308.cleanup_crit_edge:                     ; preds = %if.else308
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then311:                                       ; preds = %if.else308
  call void @__sanitizer_cov_trace_pc() #22
  %brd_no312 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %142 = ptrtoint ptr %brd_no312 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %brd_no312, align 4
  %144 = ptrtoint ptr %mi_ver to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %mi_ver, align 4
  %conv316 = zext i16 %145 to i32
  %146 = ptrtoint ptr %link_flag205 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %link_flag205, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.227, i32 noundef %143, i32 noundef %conv316, i32 noundef %147) #20
  br label %cleanup

do.body323:                                       ; preds = %land.lhs.true.do.body323_crit_edge, %sw.bb197.do.body323_crit_edge
  %pport325 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 241
  %148 = ptrtoint ptr %pport325 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pport325, align 8
  %tobool326.not = icmp eq ptr %149, null
  %cfg_log_verbose329 = getelementptr inbounds %struct.lpfc_vport, ptr %149, i32 0, i32 51
  %cfg_log_verbose331 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 139
  %cond333.in = select i1 %tobool326.not, ptr %cfg_log_verbose331, ptr %cfg_log_verbose329
  %150 = ptrtoint ptr %cond333.in to i32
  call void @__asan_load4_noabort(i32 %150)
  %cond333 = load i32, ptr %cond333.in, align 4
  %and334 = and i32 %cond333, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and334)
  %tobool335.not = icmp eq i32 %and334, 0
  br i1 %tobool335.not, label %if.else343, label %do.end339

do.end339:                                        ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #22
  %pcidev340 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %151 = ptrtoint ptr %pcidev340 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pcidev340, align 4
  %dev341 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  %brd_no342 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %153 = ptrtoint ptr %brd_no342 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %brd_no342, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev341, ptr noundef nonnull @.str.230, i32 noundef %154) #23
  br label %cleanup

if.else343:                                       ; preds = %do.body323
  %155 = ptrtoint ptr %cfg_log_verbose331 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cfg_log_verbose331, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool345.not = icmp eq i32 %156, 0
  br i1 %tobool345.not, label %if.then346, label %if.else343.cleanup_crit_edge

if.else343.cleanup_crit_edge:                     ; preds = %if.else343
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then346:                                       ; preds = %if.else343
  call void @__sanitizer_cov_trace_pc() #22
  %brd_no347 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %157 = ptrtoint ptr %brd_no347 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %brd_no347, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %phba, ptr noundef nonnull @.str.230, i32 noundef %158) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then346, %if.else343.cleanup_crit_edge, %do.end339, %if.then311, %if.else308.cleanup_crit_edge, %do.end299, %do.end236, %if.else194, %if.then192, %sw.bb186, %sw.bb184, %if.end183.cleanup_crit_edge, %if.then178, %if.then170, %if.end166.cleanup_crit_edge, %do.body139, %if.then132.cleanup_crit_edge, %if.then125, %if.then118, %sw.bb114.cleanup_crit_edge, %if.then110, %sw.bb107.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_delayed_disc_tmo(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -548
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %work_port_lock = getelementptr i8, ptr %t, i32 -96
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_port_lock) #20
  %work_port_events = getelementptr i8, ptr %t, i32 -52
  %2 = ptrtoint ptr %work_port_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %work_port_events, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end11.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %or = or i32 %3, 8
  %4 = ptrtoint ptr %work_port_events to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %work_port_events, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_port_lock, i32 noundef %call4) #20
  %data_flags.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 173
  tail call void @_set_bit(i32 noundef 0, ptr noundef %data_flags.i) #20
  %work_waitq.i = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 171
  tail call void @__wake_up(ptr noundef %work_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #20
  br label %if.end11

if.end11.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_port_lock, i32 noundef %call4) #20
  br label %if.end11

if.end11:                                         ; preds = %if.end11.critedge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_delayed_disc_timeout_handler(ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr i8, ptr %vport, i32 -2380
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #20
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %2 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fc_flag, align 4
  %and = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %5) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %and3 = and i32 %3, -33554433
  %6 = ptrtoint ptr %fc_flag to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and3, ptr %fc_flag, align 4
  %7 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %8) #20
  %9 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vport, align 8
  tail call void @lpfc_do_scr_ns_plogi(ptr noundef %10, ptr noundef %vport) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_do_scr_ns_plogi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_vmid_cmd(ptr noundef %vport, i32 noundef %cmdcode, ptr noundef %vmid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %call = tail call ptr @lpfc_findnode_did(ptr noundef %vport, i32 noundef 16777210) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlp_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %3)
  %cmp.not = icmp eq i16 %3, 6
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 20) #24
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end.do.body211_crit_edge, label %if.end6

if.end.do.body211_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body211

if.end6:                                          ; preds = %if.end
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 2
  %call7 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %1, i32 noundef 0, ptr noundef %phys) #20
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %virt, align 8
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.vmid_free_mp_virt_exit_crit_edge, label %if.end11

if.end6.vmid_free_mp_virt_exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %vmid_free_mp_virt_exit

if.end11:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i365 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 20) #24
  %tobool13.not = icmp eq ptr %call7.i365, null
  br i1 %tobool13.not, label %if.end11.vmid_free_bmp_exit_crit_edge, label %if.end15

if.end11.vmid_free_bmp_exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %vmid_free_bmp_exit

if.end15:                                         ; preds = %if.end11
  %phys16 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i365, i32 0, i32 2
  %call17 = tail call ptr @lpfc_mbuf_alloc(ptr noundef %1, i32 noundef 0, ptr noundef %phys16) #20
  %virt18 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i365, i32 0, i32 1
  %7 = ptrtoint ptr %virt18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17, ptr %virt18, align 8
  %tobool20.not = icmp eq ptr %call17, null
  br i1 %tobool20.not, label %if.end15.vmid_free_bmp_virt_exit_crit_edge, label %if.end22

if.end15.vmid_free_bmp_virt_exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %vmid_free_bmp_virt_exit

if.end22:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %prev.i, align 4
  %10 = ptrtoint ptr %call7.i365 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i365, ptr %call7.i365, align 8
  %prev.i366 = getelementptr inbounds %struct.list_head, ptr %call7.i365, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i366 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i365, ptr %prev.i366, align 4
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %12 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %15, i32 0, i32 165
  %16 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %15, i32 0, i32 197
  %18 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %20 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vpi, align 4
  %conv29 = zext i16 %21 to i32
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %22 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fc_flag, align 4
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %24 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_state, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %19, i32 noundef %conv29, i32 noundef %23, i32 noundef %25, i32 noundef %cmdcode) #23
  br label %do.end43

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not = icmp eq i32 %13, 0
  br i1 %tobool31.not, label %if.then32, label %if.else.do.end43_crit_edge

if.else.do.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end43

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vport, align 8
  %brd_no35 = getelementptr inbounds %struct.lpfc_hba, ptr %27, i32 0, i32 197
  %28 = ptrtoint ptr %brd_no35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %brd_no35, align 4
  %vpi36 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %30 = ptrtoint ptr %vpi36 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vpi36, align 4
  %conv37 = zext i16 %31 to i32
  %fc_flag38 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %32 = ptrtoint ptr %fc_flag38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fc_flag38, align 4
  %port_state39 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %34 = ptrtoint ptr %port_state39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port_state39, align 8
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %27, ptr noundef nonnull @.str.39, i32 noundef %29, i32 noundef %conv37, i32 noundef %33, i32 noundef %35, i32 noundef %cmdcode) #20
  br label %do.end43

do.end43:                                         ; preds = %if.then32, %if.else.do.end43_crit_edge, %do.end
  %36 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virt, align 8
  %38 = getelementptr inbounds i8, ptr %37, i32 6
  %39 = call ptr @memset(ptr %38, i32 0, i32 1018)
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16777216, ptr %37, align 4
  %FsType = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %FsType to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -6, ptr %FsType, align 4
  %FsSubType = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %37, i32 0, i32 2
  %42 = ptrtoint ptr %FsSubType to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 32, ptr %FsSubType, align 1
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %37, i32 0, i32 5
  %bf.shl = shl i32 %cmdcode, 16
  %43 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bf.shl, ptr %CommandResponse, align 4
  %44 = zext i32 %cmdcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %cmdcode, label %do.body151 [
    i32 512, label %do.body55
    i32 258, label %sw.bb92
    i32 768, label %do.body96
    i32 769, label %sw.bb148
  ]

do.body55:                                        ; preds = %do.end43
  %45 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cfg_log_verbose, align 4
  %and57 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else70, label %do.end62

do.end62:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #22
  %47 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vport, align 8
  %pcidev64 = getelementptr inbounds %struct.lpfc_hba, ptr %48, i32 0, i32 165
  %49 = ptrtoint ptr %pcidev64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcidev64, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %brd_no67 = getelementptr inbounds %struct.lpfc_hba, ptr %48, i32 0, i32 197
  %51 = ptrtoint ptr %brd_no67 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %brd_no67, align 4
  %vpi68 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %53 = ptrtoint ptr %vpi68 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vpi68, align 4
  %conv69 = zext i16 %54 to i32
  %host_vmid = getelementptr inbounds %struct.lpfc_vmid, ptr %vmid, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev65, ptr noundef nonnull @.str.42, i32 noundef %52, i32 noundef %conv69, ptr noundef %host_vmid) #23
  br label %do.end84

if.else70:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool72.not = icmp eq i32 %46, 0
  br i1 %tobool72.not, label %if.then73, label %if.else70.do.end84_crit_edge

if.else70.do.end84_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end84

if.then73:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #22
  %55 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vport, align 8
  %brd_no76 = getelementptr inbounds %struct.lpfc_hba, ptr %56, i32 0, i32 197
  %57 = ptrtoint ptr %brd_no76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %brd_no76, align 4
  %vpi77 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %59 = ptrtoint ptr %vpi77 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vpi77, align 4
  %conv78 = zext i16 %60 to i32
  %host_vmid79 = getelementptr inbounds %struct.lpfc_vmid, ptr %vmid, i32 0, i32 1
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %56, ptr noundef nonnull @.str.42, i32 noundef %58, i32 noundef %conv78, ptr noundef %host_vmid79) #20
  br label %do.end84

do.end84:                                         ; preds = %if.then73, %if.else70.do.end84_crit_edge, %do.end62
  %fc_myDID = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %61 = ptrtoint ptr %fc_myDID to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fc_myDID, align 8
  %un = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %37, i32 0, i32 10
  %63 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %un, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 20
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %add.ptr, align 4
  %vmid_len = getelementptr inbounds %struct.lpfc_vmid, ptr %vmid, i32 0, i32 6
  %65 = ptrtoint ptr %vmid_len to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %vmid_len, align 8
  %obj = getelementptr i8, ptr %37, i32 24
  %67 = ptrtoint ptr %obj to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %obj, align 4
  %entity_id = getelementptr i8, ptr %37, i32 25
  %host_vmid88 = getelementptr inbounds %struct.lpfc_vmid, ptr %vmid, i32 0, i32 1
  %68 = load i8, ptr %vmid_len, align 8
  %conv91 = zext i8 %68 to i32
  %69 = call ptr @memcpy(ptr %entity_id, ptr %host_vmid88, i32 %conv91)
  br label %sw.epilog

sw.bb92:                                          ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #22
  %fc_myDID93 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %70 = ptrtoint ptr %fc_myDID93 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fc_myDID93, align 8
  %un94 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %37, i32 0, i32 10
  %72 = ptrtoint ptr %un94 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %un94, align 4
  br label %sw.epilog

do.body96:                                        ; preds = %do.end43
  %73 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cfg_log_verbose, align 4
  %and98 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else113, label %do.end103

do.end103:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #22
  %75 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vport, align 8
  %pcidev105 = getelementptr inbounds %struct.lpfc_hba, ptr %76, i32 0, i32 165
  %77 = ptrtoint ptr %pcidev105 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcidev105, align 4
  %dev106 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %brd_no108 = getelementptr inbounds %struct.lpfc_hba, ptr %76, i32 0, i32 197
  %79 = ptrtoint ptr %brd_no108 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %brd_no108, align 4
  %vpi109 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %81 = ptrtoint ptr %vpi109 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vpi109, align 4
  %conv110 = zext i16 %82 to i32
  %host_vmid111 = getelementptr inbounds %struct.lpfc_vmid, ptr %vmid, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev106, ptr noundef nonnull @.str.46, i32 noundef %80, i32 noundef %conv110, ptr noundef %host_vmid111) #23
  br label %do.end127

if.else113:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool115.not = icmp eq i32 %74, 0
  br i1 %tobool115.not, label %if.then116, label %if.else113.do.end127_crit_edge

if.else113.do.end127_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end127

if.then116:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #22
  %83 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vport, align 8
  %brd_no119 = getelementptr inbounds %struct.lpfc_hba, ptr %84, i32 0, i32 197
  %85 = ptrtoint ptr %brd_no119 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %brd_no119, align 4
  %vpi120 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %87 = ptrtoint ptr %vpi120 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %vpi120, align 4
  %conv121 = zext i16 %88 to i32
  %host_vmid122 = getelementptr inbounds %struct.lpfc_vmid, ptr %vmid, i32 0, i32 1
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %84, ptr noundef nonnull @.str.46, i32 noundef %86, i32 noundef %conv121, ptr noundef %host_vmid122) #20
  br label %do.end127

do.end127:                                        ; preds = %if.then116, %if.else113.do.end127_crit_edge, %do.end103
  %fc_myDID128 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %89 = ptrtoint ptr %fc_myDID128 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fc_myDID128, align 8
  %un129 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %37, i32 0, i32 10
  %91 = ptrtoint ptr %un129 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %un129, align 4
  %add.ptr130 = getelementptr i8, ptr %37, i32 20
  %92 = ptrtoint ptr %add.ptr130 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %add.ptr130, align 4
  %vmid_len132 = getelementptr inbounds %struct.lpfc_vmid, ptr %vmid, i32 0, i32 6
  %93 = ptrtoint ptr %vmid_len132 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %vmid_len132, align 8
  %obj133 = getelementptr i8, ptr %37, i32 24
  %95 = ptrtoint ptr %obj133 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %obj133, align 4
  %entity_id138 = getelementptr i8, ptr %37, i32 25
  %host_vmid140 = getelementptr inbounds %struct.lpfc_vmid, ptr %vmid, i32 0, i32 1
  %96 = load i8, ptr %vmid_len132, align 8
  %conv143 = zext i8 %96 to i32
  %97 = call ptr @memcpy(ptr %entity_id138, ptr %host_vmid140, i32 %conv143)
  %vmid_lock = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 70
  tail call void @_raw_write_lock(ptr noundef %vmid_lock) #20
  %98 = ptrtoint ptr %vmid to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %vmid, align 8
  %100 = and i8 %99, -5
  store i8 %100, ptr %vmid, align 8
  tail call void @_raw_write_unlock(ptr noundef %vmid_lock) #20
  br label %sw.epilog

sw.bb148:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #22
  %fc_myDID149 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %101 = ptrtoint ptr %fc_myDID149 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fc_myDID149, align 8
  %un150 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %37, i32 0, i32 10
  %103 = ptrtoint ptr %un150 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %un150, align 4
  br label %sw.epilog

do.body151:                                       ; preds = %do.end43
  %104 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cfg_log_verbose, align 4
  %and153 = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.else166, label %do.end158

do.end158:                                        ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #22
  %106 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vport, align 8
  %pcidev160 = getelementptr inbounds %struct.lpfc_hba, ptr %107, i32 0, i32 165
  %108 = ptrtoint ptr %pcidev160 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pcidev160, align 4
  %dev161 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %brd_no163 = getelementptr inbounds %struct.lpfc_hba, ptr %107, i32 0, i32 197
  %110 = ptrtoint ptr %brd_no163 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %brd_no163, align 4
  %vpi164 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %112 = ptrtoint ptr %vpi164 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %vpi164, align 4
  %conv165 = zext i16 %113 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev161, ptr noundef nonnull @.str.49, i32 noundef %111, i32 noundef %conv165, i32 noundef %cmdcode) #23
  br label %vmid_free_all_mem

if.else166:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool168.not = icmp eq i32 %105, 0
  br i1 %tobool168.not, label %if.then169, label %if.else166.vmid_free_all_mem_crit_edge

if.else166.vmid_free_all_mem_crit_edge:           ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #22
  br label %vmid_free_all_mem

if.then169:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #22
  %114 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vport, align 8
  %brd_no172 = getelementptr inbounds %struct.lpfc_hba, ptr %115, i32 0, i32 197
  %116 = ptrtoint ptr %brd_no172 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %brd_no172, align 4
  %vpi173 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %118 = ptrtoint ptr %vpi173 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %vpi173, align 4
  %conv174 = zext i16 %119 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %115, ptr noundef nonnull @.str.49, i32 noundef %117, i32 noundef %conv174, i32 noundef %cmdcode) #20
  br label %vmid_free_all_mem

sw.epilog:                                        ; preds = %sw.bb148, %do.end127, %sw.bb92, %do.end84
  %size.0 = phi i32 [ 20, %sw.bb148 ], [ 280, %do.end127 ], [ 20, %sw.bb92 ], [ 280, %do.end84 ]
  %retry.0 = phi i8 [ 0, %sw.bb148 ], [ 1, %do.end127 ], [ 0, %sw.bb92 ], [ 1, %do.end84 ]
  %120 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %120)
  %bf.load182 = load i32, ptr %CommandResponse, align 4
  %bf.clear184 = and i32 %bf.load182, -65536
  %bf.set185 = or i32 %bf.clear184, 1024
  store i32 %bf.set185, ptr %CommandResponse, align 4
  %121 = ptrtoint ptr %virt18 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %virt18, align 8
  %addrHigh = getelementptr inbounds %struct.ulp_bde64, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %addrHigh to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %addrHigh, align 4
  %124 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %phys, align 4
  %addrLow = getelementptr inbounds %struct.ulp_bde64, ptr %122, i32 0, i32 1
  %126 = ptrtoint ptr %addrLow to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %addrLow, align 4
  %127 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %size.0, ptr %122, align 4
  %call203 = tail call fastcc i32 @lpfc_ct_cmd(ptr noundef %vport, ptr noundef nonnull %call7.i, ptr noundef nonnull %call7.i365, ptr noundef nonnull %call, ptr noundef nonnull @lpfc_cmpl_ct_cmd_vmid, i32 noundef 1024, i8 noundef zeroext %retry.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.vmid_free_all_mem_crit_edge

sw.epilog.vmid_free_all_mem_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %vmid_free_all_mem

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

vmid_free_all_mem:                                ; preds = %sw.epilog.vmid_free_all_mem_crit_edge, %if.then169, %if.else166.vmid_free_all_mem_crit_edge, %do.end158
  %128 = ptrtoint ptr %virt18 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %virt18, align 8
  %130 = ptrtoint ptr %phys16 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %phys16, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %1, ptr noundef %129, i32 noundef %131) #20
  br label %vmid_free_bmp_virt_exit

vmid_free_bmp_virt_exit:                          ; preds = %vmid_free_all_mem, %if.end15.vmid_free_bmp_virt_exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i365) #20
  br label %vmid_free_bmp_exit

vmid_free_bmp_exit:                               ; preds = %vmid_free_bmp_virt_exit, %if.end11.vmid_free_bmp_exit_crit_edge
  %132 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %virt, align 8
  %134 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %1, ptr noundef %133, i32 noundef %135) #20
  br label %vmid_free_mp_virt_exit

vmid_free_mp_virt_exit:                           ; preds = %vmid_free_bmp_exit, %if.end6.vmid_free_mp_virt_exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #20
  br label %do.body211

do.body211:                                       ; preds = %vmid_free_mp_virt_exit, %if.end.do.body211_crit_edge
  %cfg_log_verbose212 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %136 = ptrtoint ptr %cfg_log_verbose212 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cfg_log_verbose212, align 4
  %and213 = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.else226, label %do.end218

do.end218:                                        ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #22
  %138 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %vport, align 8
  %pcidev220 = getelementptr inbounds %struct.lpfc_hba, ptr %139, i32 0, i32 165
  %140 = ptrtoint ptr %pcidev220 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pcidev220, align 4
  %dev221 = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 44
  %brd_no223 = getelementptr inbounds %struct.lpfc_hba, ptr %139, i32 0, i32 197
  %142 = ptrtoint ptr %brd_no223 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %brd_no223, align 4
  %vpi224 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %144 = ptrtoint ptr %vpi224 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %vpi224, align 4
  %conv225 = zext i16 %145 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev221, ptr noundef nonnull @.str.52, i32 noundef %143, i32 noundef %conv225, i32 noundef %cmdcode) #23
  br label %cleanup

if.else226:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool228.not = icmp eq i32 %137, 0
  br i1 %tobool228.not, label %if.then229, label %if.else226.cleanup_crit_edge

if.else226.cleanup_crit_edge:                     ; preds = %if.else226
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then229:                                       ; preds = %if.else226
  call void @__sanitizer_cov_trace_pc() #22
  %146 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %vport, align 8
  %brd_no232 = getelementptr inbounds %struct.lpfc_hba, ptr %147, i32 0, i32 197
  %148 = ptrtoint ptr %brd_no232 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %brd_no232, align 4
  %vpi233 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %150 = ptrtoint ptr %vpi233 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %vpi233, align 4
  %conv234 = zext i16 %151 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %147, ptr noundef nonnull @.str.52, i32 noundef %149, i32 noundef %conv234, i32 noundef %cmdcode) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then229, %if.else226.cleanup_crit_edge, %do.end218, %sw.epilog.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -5, %if.else226.cleanup_crit_edge ], [ -5, %if.then229 ], [ -5, %do.end218 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_cmpl_ct_cmd_vmid(ptr noundef %phba, ptr noundef %cmdiocb, ptr nocapture noundef readonly %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 18
  %2 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context1, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %4 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %virt2 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %virt2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt2, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %CommandResponse, align 4
  %CommandResponse4 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %CommandResponse4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load5 = load i32, ptr %CommandResponse4, align 4
  %bf.lshr6 = lshr i32 %bf.load5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %bf.lshr6)
  %cmp = icmp eq i32 %bf.lshr6, 769
  br i1 %cmp, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %call = tail call i32 @lpfc_ct_free_iocb(ptr noundef %phba, ptr noundef %cmdiocb)
  %call10 = tail call i32 @lpfc_els_chk_latt(ptr noundef %1) #20
  %bf.lshr.mask = and i32 %bf.load, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147418112, i32 %bf.lshr.mask)
  %cmp21 = icmp eq i32 %bf.lshr.mask, -2147418112
  br i1 %cmp21, label %lor.lhs.false54.critedge, label %if.end.do.body212_crit_edge

if.end.do.body212_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body212

if.end.thread:                                    ; preds = %entry
  %call10444 = tail call i32 @lpfc_els_chk_latt(ptr noundef %1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10444)
  %tobool.not445 = icmp eq i32 %call10444, 0
  br i1 %tobool.not445, label %lor.lhs.false, label %if.end.thread.cleanup_crit_edge

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end.thread
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load11 = load i32, ptr %ulpStatus, align 4
  %13 = and i32 %bf.load11, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end19.thread456, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end19.thread456:                               ; preds = %lor.lhs.false
  %bf.lshr.mask457 = and i32 %bf.load, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147418112, i32 %bf.lshr.mask457)
  %cmp21458 = icmp eq i32 %bf.lshr.mask457, -2147418112
  br i1 %cmp21458, label %do.body, label %if.end72

do.body:                                          ; preds = %if.end19.thread456
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %14 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %17, i32 0, i32 165
  %18 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %17, i32 0, i32 197
  %20 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vpi, align 4
  %conv32 = zext i16 %23 to i32
  %ReasonCode = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %9, i32 0, i32 7
  %24 = ptrtoint ptr %ReasonCode to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ReasonCode, align 1
  %conv33 = zext i8 %25 to i32
  %Explanation = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %9, i32 0, i32 8
  %26 = ptrtoint ptr %Explanation to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %Explanation, align 2
  %conv34 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev, ptr noundef nonnull @.str.232, i32 noundef %21, i32 noundef %conv32, i32 noundef %bf.lshr6, i32 noundef %conv33, i32 noundef %conv34) #23
  br label %cleanup

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool36.not = icmp eq i32 %15, 0
  br i1 %tobool36.not, label %if.then37, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %brd_no40 = getelementptr inbounds %struct.lpfc_hba, ptr %29, i32 0, i32 197
  %30 = ptrtoint ptr %brd_no40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brd_no40, align 4
  %vpi41 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %vpi41 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vpi41, align 4
  %conv42 = zext i16 %33 to i32
  %ReasonCode43 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %9, i32 0, i32 7
  %34 = ptrtoint ptr %ReasonCode43 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ReasonCode43, align 1
  %conv44 = zext i8 %35 to i32
  %Explanation45 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %9, i32 0, i32 8
  %36 = ptrtoint ptr %Explanation45 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %Explanation45, align 2
  %conv46 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %29, ptr noundef nonnull @.str.232, i32 noundef %31, i32 noundef %conv42, i32 noundef %bf.lshr6, i32 noundef %conv44, i32 noundef %conv46) #20
  br label %cleanup

lor.lhs.false54.critedge:                         ; preds = %if.end
  %ReasonCode55 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %9, i32 0, i32 7
  %38 = ptrtoint ptr %ReasonCode55 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ReasonCode55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %39)
  %cmp57.not = icmp eq i8 %39, 9
  br i1 %cmp57.not, label %lor.lhs.false59, label %lor.lhs.false54.critedge.if.then67_crit_edge

lor.lhs.false54.critedge.if.then67_crit_edge:     ; preds = %lor.lhs.false54.critedge
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then67

lor.lhs.false59:                                  ; preds = %lor.lhs.false54.critedge
  %Explanation60 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %9, i32 0, i32 8
  %40 = ptrtoint ptr %Explanation60 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %Explanation60, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %41)
  %cmp62.not = icmp eq i8 %41, 64
  br i1 %cmp62.not, label %lor.lhs.false59.do.body212_crit_edge, label %lor.lhs.false59.if.then67_crit_edge

lor.lhs.false59.if.then67_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then67

lor.lhs.false59.do.body212_crit_edge:             ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body212

if.then67:                                        ; preds = %lor.lhs.false59.if.then67_crit_edge, %lor.lhs.false54.critedge.if.then67_crit_edge
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 41
  %42 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %load_flag, align 4
  %44 = or i8 %43, 16
  store i8 %44, ptr %load_flag, align 4
  br label %cleanup

if.end72:                                         ; preds = %if.end19.thread456
  %trunc = trunc i32 %bf.lshr6 to i16
  %45 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.267)
  switch i16 %trunc, label %do.body288 [
    i16 512, label %sw.bb
    i16 768, label %sw.bb177
    i16 769, label %if.end72.do.body212_crit_edge
  ]

if.end72.do.body212_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body212

sw.bb:                                            ; preds = %if.end72
  %add.ptr = getelementptr i8, ptr %9, i32 20
  %cfg_log_verbose74 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %46 = ptrtoint ptr %cfg_log_verbose74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cfg_log_verbose74, align 4
  %and75 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.else89, label %do.end80

do.end80:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %pcidev82 = getelementptr inbounds %struct.lpfc_hba, ptr %49, i32 0, i32 165
  %50 = ptrtoint ptr %pcidev82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcidev82, align 4
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %brd_no85 = getelementptr inbounds %struct.lpfc_hba, ptr %49, i32 0, i32 197
  %52 = ptrtoint ptr %brd_no85 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %brd_no85, align 4
  %vpi86 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %vpi86 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vpi86, align 4
  %conv87 = zext i16 %55 to i32
  %app_id = getelementptr i8, ptr %9, i32 24
  %56 = ptrtoint ptr %app_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %app_id, align 4
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr, align 4
  %obj = getelementptr i8, ptr %9, i32 28
  %60 = ptrtoint ptr %obj to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %obj, align 4
  %conv88 = zext i8 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev83, ptr noundef nonnull @.str.235, i32 noundef %53, i32 noundef %conv87, i32 noundef %57, i32 noundef %59, i32 noundef %conv88) #23
  br label %do.end106

if.else89:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool91.not = icmp eq i32 %47, 0
  br i1 %tobool91.not, label %if.then92, label %if.else89.do.end106_crit_edge

if.else89.do.end106_crit_edge:                    ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end106

if.then92:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #22
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %brd_no95 = getelementptr inbounds %struct.lpfc_hba, ptr %63, i32 0, i32 197
  %64 = ptrtoint ptr %brd_no95 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %brd_no95, align 4
  %vpi96 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %vpi96 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vpi96, align 4
  %conv97 = zext i16 %67 to i32
  %app_id98 = getelementptr i8, ptr %9, i32 24
  %68 = ptrtoint ptr %app_id98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %app_id98, align 4
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr, align 4
  %obj100 = getelementptr i8, ptr %9, i32 28
  %72 = ptrtoint ptr %obj100 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %obj100, align 4
  %conv102 = zext i8 %73 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %63, ptr noundef nonnull @.str.235, i32 noundef %65, i32 noundef %conv97, i32 noundef %69, i32 noundef %71, i32 noundef %conv102) #20
  br label %do.end106

do.end106:                                        ; preds = %if.then92, %if.else89.do.end106_crit_edge, %do.end80
  %obj107 = getelementptr i8, ptr %9, i32 28
  %74 = ptrtoint ptr %obj107 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %obj107, align 4
  %conv109 = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp110 = icmp eq i8 %75, 0
  br i1 %cmp110, label %do.end106.cleanup_crit_edge, label %lor.lhs.false112

do.end106.cleanup_crit_edge:                      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false112:                                 ; preds = %do.end106
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp114 = icmp eq i32 %77, 0
  br i1 %cmp114, label %lor.lhs.false112.cleanup_crit_edge, label %if.end117

lor.lhs.false112.cleanup_crit_edge:               ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end117:                                        ; preds = %lor.lhs.false112
  %entity_id = getelementptr i8, ptr %9, i32 29
  %call122 = tail call i32 @lpfc_vmid_hash_fn(ptr noundef %entity_id, i32 noundef %conv109) #20
  %call126 = tail call ptr @lpfc_get_vmid_from_hashtable(ptr noundef %1, i32 noundef %call122, ptr noundef %entity_id) #20
  %tobool127.not = icmp eq ptr %call126, null
  br i1 %tobool127.not, label %do.body142, label %if.then128

if.then128:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #22
  %vmid_lock = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 70
  tail call void @_raw_write_lock(ptr noundef %vmid_lock) #20
  %app_id129 = getelementptr i8, ptr %9, i32 24
  %78 = ptrtoint ptr %app_id129 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %app_id129, align 4
  %un = getelementptr inbounds %struct.lpfc_vmid, ptr %call126, i32 0, i32 2
  %80 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %un, align 4
  %81 = ptrtoint ptr %call126 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %call126, align 8
  %83 = and i8 %82, -7
  %84 = or i8 %83, 4
  store i8 %84, ptr %call126, align 8
  tail call void @_raw_write_unlock(ptr noundef %vmid_lock) #20
  %vmid_flag = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 65
  %85 = ptrtoint ptr %vmid_flag to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %vmid_flag, align 8
  %87 = or i8 %86, 1
  store i8 %87, ptr %vmid_flag, align 8
  br label %cleanup

do.body142:                                       ; preds = %if.end117
  %88 = ptrtoint ptr %cfg_log_verbose74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cfg_log_verbose74, align 4
  %and144 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.else160, label %do.end149

do.end149:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #22
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 8
  %pcidev151 = getelementptr inbounds %struct.lpfc_hba, ptr %91, i32 0, i32 165
  %92 = ptrtoint ptr %pcidev151 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pcidev151, align 4
  %dev152 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %brd_no154 = getelementptr inbounds %struct.lpfc_hba, ptr %91, i32 0, i32 197
  %94 = ptrtoint ptr %brd_no154 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %brd_no154, align 4
  %vpi155 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %96 = ptrtoint ptr %vpi155 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %vpi155, align 4
  %conv156 = zext i16 %97 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev152, ptr noundef nonnull @.str.238, i32 noundef %95, i32 noundef %conv156, ptr noundef %entity_id, i32 noundef %call122) #23
  br label %cleanup

if.else160:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool162.not = icmp eq i32 %89, 0
  br i1 %tobool162.not, label %if.then163, label %if.else160.cleanup_crit_edge

if.else160.cleanup_crit_edge:                     ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then163:                                       ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #22
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 8
  %brd_no166 = getelementptr inbounds %struct.lpfc_hba, ptr %99, i32 0, i32 197
  %100 = ptrtoint ptr %brd_no166 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %brd_no166, align 4
  %vpi167 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %102 = ptrtoint ptr %vpi167 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %vpi167, align 4
  %conv168 = zext i16 %103 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %99, ptr noundef nonnull @.str.238, i32 noundef %101, i32 noundef %conv168, ptr noundef %entity_id, i32 noundef %call122) #20
  br label %cleanup

sw.bb177:                                         ; preds = %if.end72
  %add.ptr178 = getelementptr i8, ptr %9, i32 20
  %cfg_log_verbose180 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %104 = ptrtoint ptr %cfg_log_verbose180 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cfg_log_verbose180, align 4
  %and181 = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.else196, label %do.end186

do.end186:                                        ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #22
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 8
  %pcidev188 = getelementptr inbounds %struct.lpfc_hba, ptr %107, i32 0, i32 165
  %108 = ptrtoint ptr %pcidev188 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pcidev188, align 4
  %dev189 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %brd_no191 = getelementptr inbounds %struct.lpfc_hba, ptr %107, i32 0, i32 197
  %110 = ptrtoint ptr %brd_no191 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %brd_no191, align 4
  %vpi192 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %112 = ptrtoint ptr %vpi192 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %vpi192, align 4
  %conv193 = zext i16 %113 to i32
  %app_id194 = getelementptr i8, ptr %9, i32 24
  %114 = ptrtoint ptr %app_id194 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %app_id194, align 4
  %116 = ptrtoint ptr %add.ptr178 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr178, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev189, ptr noundef nonnull @.str.241, i32 noundef %111, i32 noundef %conv193, i32 noundef %115, i32 noundef %117) #23
  br label %cleanup

if.else196:                                       ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool198.not = icmp eq i32 %105, 0
  br i1 %tobool198.not, label %if.then199, label %if.else196.cleanup_crit_edge

if.else196.cleanup_crit_edge:                     ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then199:                                       ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #22
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 8
  %brd_no202 = getelementptr inbounds %struct.lpfc_hba, ptr %119, i32 0, i32 197
  %120 = ptrtoint ptr %brd_no202 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %brd_no202, align 4
  %vpi203 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %122 = ptrtoint ptr %vpi203 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %vpi203, align 4
  %conv204 = zext i16 %123 to i32
  %app_id205 = getelementptr i8, ptr %9, i32 24
  %124 = ptrtoint ptr %app_id205 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %app_id205, align 4
  %126 = ptrtoint ptr %add.ptr178 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr178, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %119, ptr noundef nonnull @.str.241, i32 noundef %121, i32 noundef %conv204, i32 noundef %125, i32 noundef %127) #20
  br label %cleanup

do.body212:                                       ; preds = %if.end72.do.body212_crit_edge, %lor.lhs.false59.do.body212_crit_edge, %if.end.do.body212_crit_edge
  %cfg_log_verbose213 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %128 = ptrtoint ptr %cfg_log_verbose213 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cfg_log_verbose213, align 4
  %and214 = and i32 %129, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %if.else227, label %do.end219

do.end219:                                        ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #22
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 8
  %pcidev221 = getelementptr inbounds %struct.lpfc_hba, ptr %131, i32 0, i32 165
  %132 = ptrtoint ptr %pcidev221 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pcidev221, align 4
  %dev222 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  %brd_no224 = getelementptr inbounds %struct.lpfc_hba, ptr %131, i32 0, i32 197
  %134 = ptrtoint ptr %brd_no224 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %brd_no224, align 4
  %vpi225 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %136 = ptrtoint ptr %vpi225 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %vpi225, align 4
  %conv226 = zext i16 %137 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev222, ptr noundef nonnull @.str.244, i32 noundef %135, i32 noundef %conv226) #23
  br label %do.end239

if.else227:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool229.not = icmp eq i32 %129, 0
  br i1 %tobool229.not, label %if.then230, label %if.else227.do.end239_crit_edge

if.else227.do.end239_crit_edge:                   ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end239

if.then230:                                       ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #22
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 8
  %brd_no233 = getelementptr inbounds %struct.lpfc_hba, ptr %139, i32 0, i32 197
  %140 = ptrtoint ptr %brd_no233 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %brd_no233, align 4
  %vpi234 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %142 = ptrtoint ptr %vpi234 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %vpi234, align 4
  %conv235 = zext i16 %143 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %139, ptr noundef nonnull @.str.244, i32 noundef %141, i32 noundef %conv235) #20
  br label %do.end239

do.end239:                                        ; preds = %if.then230, %if.else227.do.end239_crit_edge, %do.end219
  %vmid_lock240 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 70
  tail call void @_raw_read_lock(ptr noundef %vmid_lock240) #20
  %cfg_max_vmid = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 161
  %144 = ptrtoint ptr %cfg_max_vmid to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cfg_max_vmid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp241460.not = icmp eq i32 %145, 0
  br i1 %cmp241460.not, label %do.end239.for.end_crit_edge, label %for.body.lr.ph

do.end239.for.end_crit_edge:                      ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end239
  %vmid = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 68
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0461 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %146 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %vmid, align 4
  %arrayidx = getelementptr %struct.lpfc_vmid, ptr %147, i32 %i.0461
  %148 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %cmp245.not = icmp eq i8 %149, 0
  br i1 %cmp245.not, label %for.body.for.inc_crit_edge, label %if.then247

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then247:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %150 = call ptr @memset(ptr %arrayidx, i32 0, i32 304)
  br label %for.inc

for.inc:                                          ; preds = %if.then247, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0461, 1
  %151 = ptrtoint ptr %cfg_max_vmid to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cfg_max_vmid, align 4
  %cmp241 = icmp ult i32 %inc, %152
  br i1 %cmp241, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end239.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %vmid_lock240) #20
  %hash_table = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 69
  %153 = ptrtoint ptr %hash_table to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile ptr, ptr %hash_table, align 4
  %tobool.not.i.not.i462 = icmp eq ptr %154, null
  br i1 %tobool.not.i.not.i462, label %for.end.for.cond.i_crit_edge, label %for.end.for.body258.preheader_crit_edge

for.end.for.body258.preheader_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body258.preheader

for.end.for.cond.i_crit_edge:                     ; preds = %for.end
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.end.for.cond.i_crit_edge
  %i.01.i463 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.end.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i463, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.cond.i.__hash_empty.exit_crit_edge, label %for.body.i

for.cond.i.__hash_empty.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__hash_empty.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %hash_table, i32 %inc.i
  %155 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %156, null
  br i1 %tobool.not.i.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.__hash_empty.exit_crit_edge

for.body.i.__hash_empty.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__hash_empty.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.i

__hash_empty.exit:                                ; preds = %for.body.i.__hash_empty.exit_crit_edge, %for.cond.i.__hash_empty.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.01.i463)
  %cmp.i.le = icmp ult i32 %i.01.i463, 255
  br i1 %cmp.i.le, label %__hash_empty.exit.for.body258.preheader_crit_edge, label %__hash_empty.exit.if.end283_crit_edge

__hash_empty.exit.if.end283_crit_edge:            ; preds = %__hash_empty.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end283

__hash_empty.exit.for.body258.preheader_crit_edge: ; preds = %__hash_empty.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body258.preheader

for.body258.preheader:                            ; preds = %__hash_empty.exit.for.body258.preheader_crit_edge, %for.end.for.body258.preheader_crit_edge
  br label %for.body258

for.body258:                                      ; preds = %for.inc280.for.body258_crit_edge, %for.body258.preheader
  %bucket.0467 = phi i32 [ %inc281, %for.inc280.for.body258_crit_edge ], [ 0, %for.body258.preheader ]
  %arrayidx260 = getelementptr %struct.lpfc_vport, ptr %1, i32 0, i32 69, i32 %bucket.0467
  %157 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx260, align 4
  %tobool261.not = icmp eq ptr %158, null
  %add.ptr263 = getelementptr i8, ptr %158, i32 -264
  %tobool265.not465468 = icmp eq ptr %add.ptr263, null
  %tobool265.not465 = or i1 %tobool261.not, %tobool265.not465468
  br i1 %tobool265.not465, label %for.body258.for.inc280_crit_edge, label %for.body258.for.body266_crit_edge

for.body258.for.body266_crit_edge:                ; preds = %for.body258
  br label %for.body266

for.body258.for.inc280_crit_edge:                 ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc280

for.body266:                                      ; preds = %hash_del.exit.for.body266_crit_edge, %for.body258.for.body266_crit_edge
  %cur.1466 = phi ptr [ %add.ptr275, %hash_del.exit.for.body266_crit_edge ], [ %add.ptr263, %for.body258.for.body266_crit_edge ]
  %hnode = getelementptr inbounds %struct.lpfc_vmid, ptr %cur.1466, i32 0, i32 3
  %pprev.i.i.i = getelementptr inbounds %struct.lpfc_vmid, ptr %cur.1466, i32 0, i32 3, i32 1
  %159 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %160, null
  br i1 %tobool.not.i.not.i.i, label %hash_del.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body266
  %pprev.i.i.i.le = getelementptr inbounds %struct.lpfc_vmid, ptr %cur.1466, i32 0, i32 3, i32 1
  %161 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hnode, align 4
  %163 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %162, ptr %160, align 4
  %tobool.not.i3.i.i = icmp eq ptr %162, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.hash_del.exit.thread_crit_edge, label %do.body13.i.i.i

if.then.i.i.hash_del.exit.thread_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %hash_del.exit.thread

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %162, i32 0, i32 1
  %164 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %160, ptr %pprev14.i.i.i, align 4
  br label %hash_del.exit.thread

hash_del.exit.thread:                             ; preds = %do.body13.i.i.i, %if.then.i.i.hash_del.exit.thread_crit_edge
  %165 = ptrtoint ptr %hnode to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %hnode, align 4
  %166 = ptrtoint ptr %pprev.i.i.i.le to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %pprev.i.i.i.le, align 4
  br label %for.inc280

hash_del.exit:                                    ; preds = %for.body266
  %167 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %167)
  %.pr = load ptr, ptr %hnode, align 8
  %tobool271.not = icmp eq ptr %.pr, null
  %add.ptr275 = getelementptr i8, ptr %.pr, i32 -264
  %tobool265.not = icmp eq ptr %add.ptr275, null
  %or.cond = or i1 %tobool271.not, %tobool265.not
  br i1 %or.cond, label %hash_del.exit.for.inc280_crit_edge, label %hash_del.exit.for.body266_crit_edge

hash_del.exit.for.body266_crit_edge:              ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body266

hash_del.exit.for.inc280_crit_edge:               ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc280

for.inc280:                                       ; preds = %hash_del.exit.for.inc280_crit_edge, %hash_del.exit.thread, %for.body258.for.inc280_crit_edge
  %inc281 = add nuw nsw i32 %bucket.0467, 1
  %exitcond.not = icmp eq i32 %inc281, 256
  br i1 %exitcond.not, label %for.inc280.if.end283_crit_edge, label %for.inc280.for.body258_crit_edge

for.inc280.for.body258_crit_edge:                 ; preds = %for.inc280
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body258

for.inc280.if.end283_crit_edge:                   ; preds = %for.inc280
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end283

if.end283:                                        ; preds = %for.inc280.if.end283_crit_edge, %__hash_empty.exit.if.end283_crit_edge
  %load_flag284 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 41
  %168 = ptrtoint ptr %load_flag284 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %load_flag284, align 4
  %170 = or i8 %169, 8
  store i8 %170, ptr %load_flag284, align 4
  br label %cleanup

do.body288:                                       ; preds = %if.end72
  %cfg_log_verbose289 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %171 = ptrtoint ptr %cfg_log_verbose289 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %cfg_log_verbose289, align 4
  %and290 = and i32 %172, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %tobool291.not = icmp eq i32 %and290, 0
  br i1 %tobool291.not, label %if.else303, label %do.end295

do.end295:                                        ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #22
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 8
  %pcidev297 = getelementptr inbounds %struct.lpfc_hba, ptr %174, i32 0, i32 165
  %175 = ptrtoint ptr %pcidev297 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pcidev297, align 4
  %dev298 = getelementptr inbounds %struct.pci_dev, ptr %176, i32 0, i32 44
  %brd_no300 = getelementptr inbounds %struct.lpfc_hba, ptr %174, i32 0, i32 197
  %177 = ptrtoint ptr %brd_no300 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %brd_no300, align 4
  %vpi301 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %179 = ptrtoint ptr %vpi301 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %vpi301, align 4
  %conv302 = zext i16 %180 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev298, ptr noundef nonnull @.str.247, i32 noundef %178, i32 noundef %conv302) #23
  br label %cleanup

if.else303:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool305.not = icmp eq i32 %172, 0
  br i1 %tobool305.not, label %if.then306, label %if.else303.cleanup_crit_edge

if.else303.cleanup_crit_edge:                     ; preds = %if.else303
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then306:                                       ; preds = %if.else303
  call void @__sanitizer_cov_trace_pc() #22
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 8
  %brd_no309 = getelementptr inbounds %struct.lpfc_hba, ptr %182, i32 0, i32 197
  %183 = ptrtoint ptr %brd_no309 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %brd_no309, align 4
  %vpi310 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %185 = ptrtoint ptr %vpi310 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %vpi310, align 4
  %conv311 = zext i16 %186 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %182, ptr noundef nonnull @.str.247, i32 noundef %184, i32 noundef %conv311) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then306, %if.else303.cleanup_crit_edge, %do.end295, %if.end283, %if.then199, %if.else196.cleanup_crit_edge, %do.end186, %if.then163, %if.else160.cleanup_crit_edge, %do.end149, %if.then128, %lor.lhs.false112.cleanup_crit_edge, %do.end106.cleanup_crit_edge, %if.then67, %if.then37, %if.else.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.thread.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_find_vport_by_vpid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_sli_get_iocbq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_nlp_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpfc_ct_unsol_cmpl(ptr noundef %phba, ptr noundef %cmdiocb, ptr nocapture noundef readnone %rspiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 18
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 @lpfc_nlp_put(ptr noundef nonnull %1) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %2 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context2, align 4
  %context3 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 20
  %4 = ptrtoint ptr %context3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context3, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %7, i32 noundef %9) #20
  tail call void @kfree(ptr noundef nonnull %3) #20
  %10 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %context2, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.if.end10_crit_edge, label %if.then6

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  %virt7 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %virt7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt7, align 4
  %phys8 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %phys8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phys8, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %12, i32 noundef %14) #20
  tail call void @kfree(ptr noundef nonnull %5) #20
  %15 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %context3, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end4.if.end10_crit_edge
  tail call void @lpfc_sli_release_iocbq(ptr noundef %phba, ptr noundef %cmdiocb) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli_issue_iocb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_nlp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_els_flush_rscn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_els_chk_latt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_vport_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_els_handle_rscn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_ns_rsp(ptr noundef %vport, ptr noundef %mp, i8 noundef zeroext %fc4_type, i32 noundef %Size) unnamed_addr #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %un = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #20
  %2 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %head, align 4, !annotation !406
  %3 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !406
  tail call void @lpfc_set_disctmo(ptr noundef %vport) #20
  %num_disc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 25
  %5 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %num_disc_nodes, align 8
  %fc_ns_retry = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 35
  %6 = ptrtoint ptr %fc_ns_retry to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %fc_ns_retry, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mp, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %head, ptr noundef %8, ptr noundef %mp) #20
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %prev.i, align 4
  %10 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mp, ptr %head, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %3, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %head, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head, align 4
  %cmp.not11 = icmp eq ptr %14, %head
  br i1 %cmp.not11, label %list_add_tail.exit.for.end_crit_edge, label %for.body.lr.ph

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_add_tail.exit
  %cfg_log_verbose.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %vpi.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %conv6.i = zext i8 %fc4_type to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %fc4_type)
  %cmp8.i = icmp eq i8 %fc4_type, 8
  %cond.i = select i1 %cmp8.i, ptr @.str.14, ptr @.str.15
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %fc4_type)
  %cmp11.i = icmp eq i8 %fc4_type, 40
  %cond13.i = select i1 %cmp11.i, ptr @.str.16, ptr @.str.15
  %fc_myDID.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 19
  %cfg_peer_port_login.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 47
  %fc_nodes.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 9
  %port_type.i.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 2
  %ct_flags.i.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 8
  %cfg_restrict_login.i.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 46
  %fc_flag97.i.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %fc_rscn_id_cnt143.i.i = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 28
  br label %for.body

for.cond.loopexit:                                ; preds = %if.end14.for.cond.loopexit_crit_edge, %if.end.for.cond.loopexit_crit_edge
  %cmp.not = icmp eq ptr %next_mp.015, %head
  br i1 %cmp.not, label %for.cond.loopexit.for.end_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.cond.loopexit.for.end_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %mp.addr.014 = phi ptr [ %14, %for.body.lr.ph ], [ %next_mp.015, %for.cond.loopexit.for.body_crit_edge ]
  %Size.addr.013 = phi i32 [ %Size, %for.body.lr.ph ], [ %sub, %for.cond.loopexit.for.body_crit_edge ]
  %ctptr.012 = phi ptr [ %un, %for.body.lr.ph ], [ null, %for.cond.loopexit.for.body_crit_edge ]
  %15 = ptrtoint ptr %mp.addr.014 to i32
  call void @__asan_load4_noabort(i32 %15)
  %next_mp.015 = load ptr, ptr %mp.addr.014, align 4
  %16 = call i32 @llvm.umin.i32(i32 %Size.addr.013, i32 1024)
  %sub = sub i32 %Size.addr.013, %16
  %tobool.not = icmp eq ptr %ctptr.012, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %virt8 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %mp.addr.014, i32 0, i32 1
  %17 = ptrtoint ptr %virt8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt8, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %sub9 = add nsw i32 %16, -16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %Cnt.0 = phi i32 [ %sub9, %if.else ], [ %16, %if.then ]
  %ctptr.1 = phi ptr [ %ctptr.012, %if.else ], [ %18, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %Cnt.0)
  %cmp107 = icmp ugt i32 %Cnt.0, 3
  br i1 %cmp107, label %if.end.while.body_crit_edge, label %if.end.for.cond.loopexit_crit_edge

if.end.for.cond.loopexit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.loopexit

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %if.end.while.body_crit_edge
  %ctptr.29 = phi ptr [ %incdec.ptr, %if.end14.while.body_crit_edge ], [ %ctptr.1, %if.end.while.body_crit_edge ]
  %Cnt.18 = phi i32 [ %sub15, %if.end14.while.body_crit_edge ], [ %Cnt.0, %if.end.while.body_crit_edge ]
  %19 = ptrtoint ptr %ctptr.29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctptr.29, align 4
  %and = and i32 %20, 16777215
  %21 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vport, align 8
  %cfg_ns_query.i = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 88
  %23 = ptrtoint ptr %cfg_ns_query.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cfg_ns_query.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp eq i32 %24, 0
  %.str.106..str.107.i = select i1 %cmp.i, ptr @.str.106, ptr @.str.107
  %25 = ptrtoint ptr %cfg_log_verbose.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cfg_log_verbose.i, align 4
  %and.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else14.i, label %do.end.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 165
  %27 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 197
  %29 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brd_no.i, align 4
  %31 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vpi.i, align 4
  %conv.i = zext i16 %32 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev.i, ptr noundef nonnull @.str.108, i32 noundef %30, i32 noundef %conv.i, ptr noundef nonnull %.str.106..str.107.i, i32 noundef %and, i32 noundef %conv6.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond13.i) #23
  br label %do.end35.i

if.else14.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not.i = icmp eq i32 %26, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.else14.i.do.end35.i_crit_edge

if.else14.i.do.end35.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end35.i

if.then17.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #22
  %brd_no20.i = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 197
  %33 = ptrtoint ptr %brd_no20.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %brd_no20.i, align 4
  %35 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vpi.i, align 4
  %conv22.i = zext i16 %36 to i32
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %22, ptr noundef nonnull @.str.108, i32 noundef %34, i32 noundef %conv22.i, ptr noundef nonnull %.str.106..str.107.i, i32 noundef %and, i32 noundef %conv6.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond13.i) #20
  br label %do.end35.i

do.end35.i:                                       ; preds = %if.then17.i, %if.else14.i.do.end35.i_crit_edge, %do.end.i
  %37 = ptrtoint ptr %fc_myDID.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fc_myDID.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %and)
  %cmp36.not.i = icmp eq i32 %38, %and
  br i1 %cmp36.not.i, label %do.end35.i.lpfc_ns_rsp_audit_did.exit_crit_edge, label %land.lhs.true.i

do.end35.i.lpfc_ns_rsp_audit_did.exit_crit_edge:  ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_ns_rsp_audit_did.exit

land.lhs.true.i:                                  ; preds = %do.end35.i
  %port_list_lock.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 240
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %port_list_lock.i.i) #20
  %port_list.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 239
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %land.lhs.true.i
  %.pn.in.i.i = phi ptr [ %port_list.i.i, %land.lhs.true.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %39 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %.pn.i.i, %port_list.i.i
  br i1 %cmp7.not.i.i, label %lpfc_find_vport_by_did.exit.thread.i, label %for.body.i.i

lpfc_find_vport_by_did.exit.thread.i:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @_raw_spin_unlock_irqrestore(ptr noundef %port_list_lock.i.i, i32 noundef %call2.i.i) #20
  br label %if.then40.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %fc_myDID.i.i = getelementptr i8, ptr %.pn.i.i, i32 172
  %40 = ptrtoint ptr %fc_myDID.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fc_myDID.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i = icmp ne i32 %41, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %and)
  %cmp10.i.i = icmp eq i32 %41, %and
  %or.cond.i.i = and i1 %tobool.not.i.i, %cmp10.i.i
  br i1 %or.cond.i.i, label %lpfc_find_vport_by_did.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.i.i

lpfc_find_vport_by_did.exit.i:                    ; preds = %for.body.i.i
  %vport_curr.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %port_list_lock.i.i, i32 noundef %call2.i.i) #20
  %tobool38.not.i = icmp eq ptr %vport_curr.0.le.i.i, null
  br i1 %tobool38.not.i, label %lpfc_find_vport_by_did.exit.i.if.then40.i_crit_edge, label %lor.lhs.false.i

lpfc_find_vport_by_did.exit.i.if.then40.i_crit_edge: ; preds = %lpfc_find_vport_by_did.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then40.i

lor.lhs.false.i:                                  ; preds = %lpfc_find_vport_by_did.exit.i
  %42 = ptrtoint ptr %cfg_peer_port_login.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cfg_peer_port_login.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool39.not.i = icmp eq i32 %43, 0
  br i1 %tobool39.not.i, label %lor.lhs.false.i.lpfc_ns_rsp_audit_did.exit_crit_edge, label %lor.lhs.false.i.if.then40.i_crit_edge

lor.lhs.false.i.if.then40.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then40.i

lor.lhs.false.i.lpfc_ns_rsp_audit_did.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_ns_rsp_audit_did.exit

if.then40.i:                                      ; preds = %lor.lhs.false.i.if.then40.i_crit_edge, %lpfc_find_vport_by_did.exit.i.if.then40.i_crit_edge, %lpfc_find_vport_by_did.exit.thread.i
  %nvmet_support.i = getelementptr inbounds %struct.lpfc_hba, ptr %22, i32 0, i32 74
  %44 = ptrtoint ptr %nvmet_support.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nvmet_support.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool41.not.i = icmp eq i8 %45, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.end43.i

if.then42.i:                                      ; preds = %if.then40.i
  %46 = ptrtoint ptr %port_type.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %port_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp.not.i.i = icmp eq i8 %47, 2
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then42.i.if.then.i108.i_crit_edge

if.then42.i.if.then.i108.i_crit_edge:             ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i108.i

lor.lhs.false.i.i:                                ; preds = %if.then42.i
  %48 = ptrtoint ptr %ct_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ct_flags.i.i, align 8
  %and.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i107.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i107.i, label %lor.lhs.false.i.i.if.then.i108.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.then.i108.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i108.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %50 = ptrtoint ptr %cfg_restrict_login.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cfg_restrict_login.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool3.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false2.i.i.if.then.i108.i_crit_edge, label %if.else96.i.i

lor.lhs.false2.i.i.if.then.i108.i_crit_edge:      ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i108.i

if.then.i108.i:                                   ; preds = %lor.lhs.false2.i.i.if.then.i108.i_crit_edge, %lor.lhs.false.i.i.if.then.i108.i_crit_edge, %if.then42.i.if.then.i108.i_crit_edge
  %call.i.i1 = call ptr @lpfc_setup_disc_node(ptr noundef %vport, i32 noundef %and) #20
  %tobool4.not.i.i = icmp eq ptr %call.i.i1, null
  br i1 %tobool4.not.i.i, label %if.else60.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then.i108.i
  %nlp_flag.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call.i.i1, i32 0, i32 5
  %52 = ptrtoint ptr %nlp_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nlp_flag.i.i, align 4
  %54 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fc_flag97.i.i, align 4
  call void @lpfc_debugfs_disc_trc(ptr noundef %vport, i32 noundef 32, ptr noundef nonnull @.str.110, i32 noundef %and, i32 noundef %53, i32 noundef %55) #20
  %56 = zext i8 %fc4_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.268)
  switch i8 %fc4_type, label %if.then5.i.i.do.body.i.i_crit_edge [
    i8 8, label %if.then5.i.i.do.body.sink.split.i.i_crit_edge
    i8 40, label %if.then15.i.i
  ]

if.then5.i.i.do.body.sink.split.i.i_crit_edge:    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.sink.split.i.i

if.then5.i.i.do.body.i.i_crit_edge:               ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i.i

if.then15.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.sink.split.i.i

do.body.sink.split.i.i:                           ; preds = %if.then15.i.i, %if.then5.i.i.do.body.sink.split.i.i_crit_edge
  %.sink273.i.i = phi i16 [ 2, %if.then15.i.i ], [ 1, %if.then5.i.i.do.body.sink.split.i.i_crit_edge ]
  %nlp_fc4_type16.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call.i.i1, i32 0, i32 9
  %57 = ptrtoint ptr %nlp_fc4_type16.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %nlp_fc4_type16.i.i, align 2
  %59 = or i16 %58, %.sink273.i.i
  store i16 %59, ptr %nlp_fc4_type16.i.i, align 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.sink.split.i.i, %if.then5.i.i.do.body.i.i_crit_edge
  %60 = ptrtoint ptr %cfg_log_verbose.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cfg_log_verbose.i, align 4
  %and21.i.i = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.else.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %62 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vport, align 8
  %pcidev.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %63, i32 0, i32 165
  %64 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcidev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %brd_no.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %63, i32 0, i32 197
  %66 = ptrtoint ptr %brd_no.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %brd_no.i.i, align 4
  %68 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vpi.i, align 4
  %conv26.i.i = zext i16 %69 to i32
  %70 = ptrtoint ptr %nlp_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nlp_flag.i.i, align 4
  %nlp_fc4_type28.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call.i.i1, i32 0, i32 9
  %72 = ptrtoint ptr %nlp_fc4_type28.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %nlp_fc4_type28.i.i, align 2
  %conv29.i.i = zext i16 %73 to i32
  %nlp_state.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call.i.i1, i32 0, i32 11
  %74 = ptrtoint ptr %nlp_state.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %nlp_state.i.i, align 2
  %conv30.i.i = zext i16 %75 to i32
  %76 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fc_flag97.i.i, align 4
  %78 = ptrtoint ptr %fc_rscn_id_cnt143.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fc_rscn_id_cnt143.i.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev.i.i, ptr noundef nonnull @.str.111, i32 noundef %67, i32 noundef %conv26.i.i, i32 noundef %and, i32 noundef %71, i32 noundef %conv29.i.i, i32 noundef %conv30.i.i, i32 noundef %77, i32 noundef %79) #23
  br label %do.end50.i.i

if.else.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool33.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %if.else.i.i.do.end50.i.i_crit_edge

if.else.i.i.do.end50.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end50.i.i

if.then34.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %80 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vport, align 8
  %brd_no37.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %81, i32 0, i32 197
  %82 = ptrtoint ptr %brd_no37.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %brd_no37.i.i, align 4
  %84 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %vpi.i, align 4
  %conv39.i.i = zext i16 %85 to i32
  %86 = ptrtoint ptr %nlp_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nlp_flag.i.i, align 4
  %nlp_fc4_type41.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call.i.i1, i32 0, i32 9
  %88 = ptrtoint ptr %nlp_fc4_type41.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %nlp_fc4_type41.i.i, align 2
  %conv42.i.i = zext i16 %89 to i32
  %nlp_state43.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call.i.i1, i32 0, i32 11
  %90 = ptrtoint ptr %nlp_state43.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %nlp_state43.i.i, align 2
  %conv44.i.i = zext i16 %91 to i32
  %92 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fc_flag97.i.i, align 4
  %94 = ptrtoint ptr %fc_rscn_id_cnt143.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fc_rscn_id_cnt143.i.i, align 4
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %81, ptr noundef nonnull @.str.111, i32 noundef %83, i32 noundef %conv39.i.i, i32 noundef %and, i32 noundef %87, i32 noundef %conv42.i.i, i32 noundef %conv44.i.i, i32 noundef %93, i32 noundef %95) #20
  br label %do.end50.i.i

do.end50.i.i:                                     ; preds = %if.then34.i.i, %if.else.i.i.do.end50.i.i_crit_edge, %do.end.i.i
  %96 = ptrtoint ptr %nlp_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nlp_flag.i.i, align 4
  %and52.i.i = and i32 %97, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.i.i = icmp eq i32 %and52.i.i, 0
  br i1 %tobool53.not.i.i, label %do.end50.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge, label %land.lhs.true.i.i

do.end50.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge: ; preds = %do.end50.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_ns_rsp_audit_did.exit

land.lhs.true.i.i:                                ; preds = %do.end50.i.i
  %nlp_state54.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call.i.i1, i32 0, i32 11
  %98 = ptrtoint ptr %nlp_state54.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %nlp_state54.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp56.i.i = icmp eq i16 %99, 0
  br i1 %cmp56.i.i, label %if.then58.i.i, label %land.lhs.true.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge

land.lhs.true.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_ns_rsp_audit_did.exit

if.then58.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @lpfc_nlp_set_state(ptr noundef %vport, ptr noundef nonnull %call.i.i1, i32 noundef 8) #20
  br label %lpfc_ns_rsp_audit_did.exit

if.else60.i.i:                                    ; preds = %if.then.i108.i
  %100 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fc_flag97.i.i, align 4
  %102 = ptrtoint ptr %fc_rscn_id_cnt143.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fc_rscn_id_cnt143.i.i, align 4
  call void @lpfc_debugfs_disc_trc(ptr noundef %vport, i32 noundef 32, ptr noundef nonnull @.str.113, i32 noundef %and, i32 noundef %101, i32 noundef %103) #20
  %104 = ptrtoint ptr %cfg_log_verbose.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cfg_log_verbose.i, align 4
  %and65.i.i = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i.i)
  %tobool66.not.i.i = icmp eq i32 %and65.i.i, 0
  br i1 %tobool66.not.i.i, label %if.else80.i.i, label %do.end70.i.i

do.end70.i.i:                                     ; preds = %if.else60.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %106 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vport, align 8
  %pcidev72.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %107, i32 0, i32 165
  %108 = ptrtoint ptr %pcidev72.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pcidev72.i.i, align 4
  %dev73.i.i = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %brd_no75.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %107, i32 0, i32 197
  %110 = ptrtoint ptr %brd_no75.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %brd_no75.i.i, align 4
  %112 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %vpi.i, align 4
  %conv77.i.i = zext i16 %113 to i32
  %114 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %fc_flag97.i.i, align 4
  %116 = ptrtoint ptr %fc_rscn_id_cnt143.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fc_rscn_id_cnt143.i.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev73.i.i, ptr noundef nonnull @.str.115, i32 noundef %111, i32 noundef %conv77.i.i, i32 noundef %and, i32 noundef %115, i32 noundef %117, ptr noundef null) #23
  br label %lpfc_ns_rsp_audit_did.exit

if.else80.i.i:                                    ; preds = %if.else60.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool82.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool82.not.i.i, label %if.then83.i.i, label %if.else80.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge

if.else80.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge: ; preds = %if.else80.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_ns_rsp_audit_did.exit

if.then83.i.i:                                    ; preds = %if.else80.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %118 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %vport, align 8
  %brd_no86.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %119, i32 0, i32 197
  %120 = ptrtoint ptr %brd_no86.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %brd_no86.i.i, align 4
  %122 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %vpi.i, align 4
  %conv88.i.i = zext i16 %123 to i32
  %124 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %fc_flag97.i.i, align 4
  %126 = ptrtoint ptr %fc_rscn_id_cnt143.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fc_rscn_id_cnt143.i.i, align 4
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %119, ptr noundef nonnull @.str.115, i32 noundef %121, i32 noundef %conv88.i.i, i32 noundef %and, i32 noundef %125, i32 noundef %127, ptr noundef null) #20
  br label %lpfc_ns_rsp_audit_did.exit

if.else96.i.i:                                    ; preds = %lor.lhs.false2.i.i
  %128 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %fc_flag97.i.i, align 4
  %and98.i.i = and i32 %129, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i.i)
  %tobool99.not.i.i = icmp eq i32 %and98.i.i, 0
  br i1 %tobool99.not.i.i, label %if.else96.i.i.if.then103.i.i_crit_edge, label %lor.lhs.false100.i.i

if.else96.i.i.if.then103.i.i_crit_edge:           ; preds = %if.else96.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then103.i.i

lor.lhs.false100.i.i:                             ; preds = %if.else96.i.i
  %call101.i.i = call i32 @lpfc_rscn_payload_check(ptr noundef %vport, i32 noundef %and) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i.i)
  %tobool102.not.i.i = icmp eq i32 %call101.i.i, 0
  br i1 %tobool102.not.i.i, label %if.else141.i.i, label %lor.lhs.false100.i.i.if.then103.i.i_crit_edge

lor.lhs.false100.i.i.if.then103.i.i_crit_edge:    ; preds = %lor.lhs.false100.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then103.i.i

if.then103.i.i:                                   ; preds = %lor.lhs.false100.i.i.if.then103.i.i_crit_edge, %if.else96.i.i.if.then103.i.i_crit_edge
  %130 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %fc_flag97.i.i, align 4
  %132 = ptrtoint ptr %fc_rscn_id_cnt143.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fc_rscn_id_cnt143.i.i, align 4
  call void @lpfc_debugfs_disc_trc(ptr noundef %vport, i32 noundef 32, ptr noundef nonnull @.str.117, i32 noundef %and, i32 noundef %131, i32 noundef %133) #20
  %call106.i.i = call ptr @lpfc_findnode_did(ptr noundef %vport, i32 noundef %and) #20
  %tobool107.not.i.i = icmp eq ptr %call106.i.i, null
  br i1 %tobool107.not.i.i, label %if.then103.i.i.if.else132.i.i_crit_edge, label %land.lhs.true108.i.i

if.then103.i.i.if.else132.i.i_crit_edge:          ; preds = %if.then103.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else132.i.i

land.lhs.true108.i.i:                             ; preds = %if.then103.i.i
  %nlp_type.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call106.i.i, i32 0, i32 8
  %134 = ptrtoint ptr %nlp_type.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %nlp_type.i.i, align 8
  %136 = and i16 %135, 40
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool111.not.i.i = icmp eq i16 %136, 0
  br i1 %tobool111.not.i.i, label %land.lhs.true108.i.i.if.else132.i.i_crit_edge, label %if.then112.i.i

land.lhs.true108.i.i.if.else132.i.i_crit_edge:    ; preds = %land.lhs.true108.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else132.i.i

if.then112.i.i:                                   ; preds = %land.lhs.true108.i.i
  %137 = zext i8 %fc4_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.269)
  switch i8 %fc4_type, label %if.then112.i.i.if.end130.i.i_crit_edge [
    i8 8, label %if.then112.i.i.if.end130.sink.split.i.i_crit_edge
    i8 40, label %if.then125.i.i
  ]

if.then112.i.i.if.end130.sink.split.i.i_crit_edge: ; preds = %if.then112.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end130.sink.split.i.i

if.then112.i.i.if.end130.i.i_crit_edge:           ; preds = %if.then112.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end130.i.i

if.then125.i.i:                                   ; preds = %if.then112.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end130.sink.split.i.i

if.end130.sink.split.i.i:                         ; preds = %if.then125.i.i, %if.then112.i.i.if.end130.sink.split.i.i_crit_edge
  %.sink276.i.i = phi i16 [ 2, %if.then125.i.i ], [ 1, %if.then112.i.i.if.end130.sink.split.i.i_crit_edge ]
  %nlp_fc4_type126.i.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %call106.i.i, i32 0, i32 9
  %138 = ptrtoint ptr %nlp_fc4_type126.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %nlp_fc4_type126.i.i, align 2
  %140 = or i16 %139, %.sink276.i.i
  store i16 %140, ptr %nlp_fc4_type126.i.i, align 2
  br label %if.end130.i.i

if.end130.i.i:                                    ; preds = %if.end130.sink.split.i.i, %if.then112.i.i.if.end130.i.i_crit_edge
  %call131.i.i = call ptr @lpfc_setup_disc_node(ptr noundef %vport, i32 noundef %and) #20
  br label %lpfc_ns_rsp_audit_did.exit

if.else132.i.i:                                   ; preds = %land.lhs.true108.i.i.if.else132.i.i_crit_edge, %if.then103.i.i.if.else132.i.i_crit_edge
  %call133.i.i = call i32 @lpfc_ns_cmd(ptr noundef %vport, i32 noundef 287, i8 noundef zeroext 0, i32 noundef %and) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i.i)
  %cmp134.i.i = icmp eq i32 %call133.i.i, 0
  br i1 %cmp134.i.i, label %if.then136.i.i, label %if.else137.i.i

if.then136.i.i:                                   ; preds = %if.else132.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %141 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_disc_nodes, align 8
  %inc.i.i = add i32 %142, 1
  store i32 %inc.i.i, ptr %num_disc_nodes, align 8
  br label %lpfc_ns_rsp_audit_did.exit

if.else137.i.i:                                   ; preds = %if.else132.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call138.i.i = call ptr @lpfc_setup_disc_node(ptr noundef %vport, i32 noundef %and) #20
  br label %lpfc_ns_rsp_audit_did.exit

if.else141.i.i:                                   ; preds = %lor.lhs.false100.i.i
  %143 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %fc_flag97.i.i, align 4
  %145 = ptrtoint ptr %fc_rscn_id_cnt143.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %fc_rscn_id_cnt143.i.i, align 4
  call void @lpfc_debugfs_disc_trc(ptr noundef %vport, i32 noundef 32, ptr noundef nonnull @.str.118, i32 noundef %and, i32 noundef %144, i32 noundef %146) #20
  %147 = ptrtoint ptr %cfg_log_verbose.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cfg_log_verbose.i, align 4
  %and146.i.i = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i.i)
  %tobool147.not.i.i = icmp eq i32 %and146.i.i, 0
  br i1 %tobool147.not.i.i, label %if.else161.i.i, label %do.end151.i.i

do.end151.i.i:                                    ; preds = %if.else141.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %149 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %vport, align 8
  %pcidev153.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %150, i32 0, i32 165
  %151 = ptrtoint ptr %pcidev153.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pcidev153.i.i, align 4
  %dev154.i.i = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  %brd_no156.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %150, i32 0, i32 197
  %153 = ptrtoint ptr %brd_no156.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %brd_no156.i.i, align 4
  %155 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %vpi.i, align 4
  %conv158.i.i = zext i16 %156 to i32
  %157 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %fc_flag97.i.i, align 4
  %159 = ptrtoint ptr %fc_rscn_id_cnt143.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %fc_rscn_id_cnt143.i.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev154.i.i, ptr noundef nonnull @.str.120, i32 noundef %154, i32 noundef %conv158.i.i, i32 noundef %and, i32 noundef %158, i32 noundef %160) #23
  br label %lpfc_ns_rsp_audit_did.exit

if.else161.i.i:                                   ; preds = %if.else141.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool163.not.i.i = icmp eq i32 %148, 0
  br i1 %tobool163.not.i.i, label %if.then164.i.i, label %if.else161.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge

if.else161.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge: ; preds = %if.else161.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_ns_rsp_audit_did.exit

if.then164.i.i:                                   ; preds = %if.else161.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %161 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %vport, align 8
  %brd_no167.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %162, i32 0, i32 197
  %163 = ptrtoint ptr %brd_no167.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %brd_no167.i.i, align 4
  %165 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %vpi.i, align 4
  %conv169.i.i = zext i16 %166 to i32
  %167 = ptrtoint ptr %fc_flag97.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %fc_flag97.i.i, align 4
  %169 = ptrtoint ptr %fc_rscn_id_cnt143.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %fc_rscn_id_cnt143.i.i, align 4
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %162, ptr noundef nonnull @.str.120, i32 noundef %164, i32 noundef %conv169.i.i, i32 noundef %and, i32 noundef %168, i32 noundef %170) #20
  br label %lpfc_ns_rsp_audit_did.exit

if.end43.i:                                       ; preds = %if.then40.i
  %171 = ptrtoint ptr %fc_nodes.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %ndlp.0112.i = load ptr, ptr %fc_nodes.i, align 4
  %cmp45.not113.i = icmp eq ptr %ndlp.0112.i, %fc_nodes.i
  br i1 %cmp45.not113.i, label %if.end43.i.lpfc_ns_rsp_audit_did.exit_crit_edge, label %if.end43.i.for.body.i_crit_edge

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  br label %for.body.i

if.end43.i.lpfc_ns_rsp_audit_did.exit_crit_edge:  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_ns_rsp_audit_did.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end43.i.for.body.i_crit_edge
  %ndlp.0114.i = phi ptr [ %ndlp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ndlp.0112.i, %if.end43.i.for.body.i_crit_edge ]
  %nlp_type.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.0114.i, i32 0, i32 8
  %172 = ptrtoint ptr %nlp_type.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %nlp_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %173)
  %cmp48.not.i = icmp eq i16 %173, 64
  br i1 %cmp48.not.i, label %lor.lhs.false50.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

lor.lhs.false50.i:                                ; preds = %for.body.i
  %nlp_state.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.0114.i, i32 0, i32 11
  %174 = ptrtoint ptr %nlp_state.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %nlp_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %175)
  %cmp52.not.i = icmp eq i16 %175, 6
  br i1 %cmp52.not.i, label %if.end55.i, label %lor.lhs.false50.i.for.inc.i_crit_edge

lor.lhs.false50.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false50.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.end55.i:                                       ; preds = %lor.lhs.false50.i
  call void @__sanitizer_cov_trace_pc() #22
  %lock.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.0114.i, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #20
  %nlp_DID.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.0114.i, i32 0, i32 6
  %176 = ptrtoint ptr %nlp_DID.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %nlp_DID.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %and)
  %cmp56.i = icmp eq i32 %177, %and
  %nlp_flag.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.0114.i, i32 0, i32 5
  %178 = ptrtoint ptr %nlp_flag.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %nlp_flag.i, align 4
  %and59.i = and i32 %179, -4097
  %masksel.i = select i1 %cmp56.i, i32 0, i32 4096
  %or.sink.i = or i32 %and59.i, %masksel.i
  store i32 %or.sink.i, ptr %nlp_flag.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end55.i, %lor.lhs.false50.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %180 = ptrtoint ptr %ndlp.0114.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %ndlp.0.i = load ptr, ptr %ndlp.0114.i, align 4
  %cmp45.not.i = icmp eq ptr %ndlp.0.i, %fc_nodes.i
  br i1 %cmp45.not.i, label %for.inc.i.lpfc_ns_rsp_audit_did.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.lpfc_ns_rsp_audit_did.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lpfc_ns_rsp_audit_did.exit

lpfc_ns_rsp_audit_did.exit:                       ; preds = %for.inc.i.lpfc_ns_rsp_audit_did.exit_crit_edge, %if.end43.i.lpfc_ns_rsp_audit_did.exit_crit_edge, %if.then164.i.i, %if.else161.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge, %do.end151.i.i, %if.else137.i.i, %if.then136.i.i, %if.end130.i.i, %if.then83.i.i, %if.else80.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge, %do.end70.i.i, %if.then58.i.i, %land.lhs.true.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge, %do.end50.i.i.lpfc_ns_rsp_audit_did.exit_crit_edge, %lor.lhs.false.i.lpfc_ns_rsp_audit_did.exit_crit_edge, %do.end35.i.lpfc_ns_rsp_audit_did.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool12.not = icmp sgt i32 %20, -1
  br i1 %tobool12.not, label %if.end14, label %lpfc_ns_rsp_audit_did.exit.nsout1_crit_edge

lpfc_ns_rsp_audit_did.exit.nsout1_crit_edge:      ; preds = %lpfc_ns_rsp_audit_did.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %nsout1

if.end14:                                         ; preds = %lpfc_ns_rsp_audit_did.exit
  %incdec.ptr = getelementptr i32, ptr %ctptr.29, i32 1
  %sub15 = add i32 %Cnt.18, -4
  %cmp10 = icmp ugt i32 %sub15, 3
  br i1 %cmp10, label %if.end14.while.body_crit_edge, label %if.end14.for.cond.loopexit_crit_edge

if.end14.for.cond.loopexit_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.loopexit

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

for.end:                                          ; preds = %for.cond.loopexit.for.end_crit_edge, %list_add_tail.exit.for.end_crit_edge
  %181 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %vport, align 8
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %182, i32 0, i32 74
  %183 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool21.not = icmp eq i8 %184, 0
  br i1 %tobool21.not, label %for.end.nsout1_crit_edge, label %if.then22

for.end.nsout1_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %nsout1

if.then22:                                        ; preds = %for.end
  %fc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 9
  %185 = ptrtoint ptr %fc_nodes to i32
  call void @__asan_load4_noabort(i32 %185)
  %ndlp.016 = load ptr, ptr %fc_nodes, align 4
  %cmp29.not17 = icmp eq ptr %ndlp.016, %fc_nodes
  br i1 %cmp29.not17, label %if.then22.nsout1_crit_edge, label %if.then22.for.body31_crit_edge

if.then22.for.body31_crit_edge:                   ; preds = %if.then22
  br label %for.body31

if.then22.nsout1_crit_edge:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #22
  br label %nsout1

for.body31:                                       ; preds = %for.inc39.for.body31_crit_edge, %if.then22.for.body31_crit_edge
  %ndlp.018 = phi ptr [ %ndlp.0, %for.inc39.for.body31_crit_edge ], [ %ndlp.016, %if.then22.for.body31_crit_edge ]
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.018, i32 0, i32 5
  %186 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %nlp_flag, align 4
  %and32 = and i32 %187, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %for.body31.for.inc39_crit_edge, label %if.end35

for.body31.for.inc39_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc39

if.end35:                                         ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #22
  %call = call i32 @lpfc_disc_state_machine(ptr noundef %vport, ptr noundef %ndlp.018, ptr noundef null, i32 noundef 12) #20
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.018, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %lock) #20
  %188 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %nlp_flag, align 4
  %and37 = and i32 %189, -4097
  store i32 %and37, ptr %nlp_flag, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #20
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35, %for.body31.for.inc39_crit_edge
  %190 = ptrtoint ptr %ndlp.018 to i32
  call void @__asan_load4_noabort(i32 %190)
  %ndlp.0 = load ptr, ptr %ndlp.018, align 4
  %cmp29.not = icmp eq ptr %ndlp.0, %fc_nodes
  br i1 %cmp29.not, label %for.inc39.nsout1_crit_edge, label %for.inc39.for.body31_crit_edge

for.inc39.for.body31_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body31

for.inc39.nsout1_crit_edge:                       ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #22
  br label %nsout1

nsout1:                                           ; preds = %for.inc39.nsout1_crit_edge, %if.then22.nsout1_crit_edge, %for.end.nsout1_crit_edge, %lpfc_ns_rsp_audit_did.exit.nsout1_crit_edge
  %call.i.i2 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %head) #20
  br i1 %call.i.i2, label %if.end.i.i3, label %nsout1.list_del.exit_crit_edge

nsout1.list_del.exit_crit_edge:                   ; preds = %nsout1
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del.exit

if.end.i.i3:                                      ; preds = %nsout1
  call void @__sanitizer_cov_trace_pc() #22
  %191 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %3, align 4
  %193 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %192, ptr %prev1.i.i.i, align 4
  %196 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %194, ptr %192, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i3, %nsout1.list_del.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_disc_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_disc_state_machine(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_setup_disc_node(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_nlp_set_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_rscn_payload_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_issue_els_prli(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_issue_els_logo(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_cmpl_ct(ptr noundef %phba, ptr noundef %cmdiocb, ptr noundef %rspiocb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 17
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %context_un = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 22
  %2 = ptrtoint ptr %context_un to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context_un, align 8
  store ptr %rspiocb, ptr %context_un, align 8
  %context1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 18
  %4 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context1, align 8
  %context2 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 19
  %6 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context2, align 4
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt, align 4
  %CommandResponse = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %CommandResponse to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %CommandResponse, align 4
  %bf.lshr = lshr i32 %bf.load, 16
  %virt4 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %virt4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt4, align 4
  %call = tail call i32 @lpfc_els_chk_latt(ptr noundef %1) #20
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 51
  %13 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfg_log_verbose, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %16, i32 0, i32 165
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %16, i32 0, i32 197
  %19 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vpi, align 4
  %conv8 = zext i16 %22 to i32
  %ulpStatus = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %23 = ptrtoint ptr %ulpStatus to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load9 = load i32, ptr %ulpStatus, align 4
  %bf.lshr10 = lshr i32 %bf.load9, 4
  %bf.clear = and i32 %bf.lshr10, 15
  %CommandResponse11 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %12, i32 0, i32 5
  %24 = ptrtoint ptr %CommandResponse11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load12 = load i32, ptr %CommandResponse11, align 4
  %bf.lshr13 = lshr i32 %bf.load12, 16
  %un1 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 11, i32 1
  %25 = ptrtoint ptr %un1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %un1, align 8
  %conv15 = zext i16 %26 to i32
  %ulpIoTag = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 11, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %ulpIoTag to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ulpIoTag, align 2
  %conv18 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.193, i32 noundef %20, i32 noundef %conv8, i32 noundef %call, i32 noundef %bf.clear, i32 noundef %bf.lshr13, i32 noundef %conv15, i32 noundef %conv18) #23
  br label %do.end44

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not = icmp eq i32 %14, 0
  br i1 %tobool20.not, label %if.then21, label %if.else.do.end44_crit_edge

if.else.do.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end44

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %brd_no24 = getelementptr inbounds %struct.lpfc_hba, ptr %30, i32 0, i32 197
  %31 = ptrtoint ptr %brd_no24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %brd_no24, align 4
  %vpi25 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %vpi25 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vpi25, align 4
  %conv26 = zext i16 %34 to i32
  %ulpStatus27 = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %ulpStatus27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load28 = load i32, ptr %ulpStatus27, align 4
  %bf.lshr29 = lshr i32 %bf.load28, 4
  %bf.clear30 = and i32 %bf.lshr29, 15
  %CommandResponse31 = getelementptr inbounds %struct.lpfc_sli_ct_request, ptr %12, i32 0, i32 5
  %36 = ptrtoint ptr %CommandResponse31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load32 = load i32, ptr %CommandResponse31, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 16
  %un135 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %un135 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %un135, align 8
  %conv37 = zext i16 %38 to i32
  %ulpIoTag40 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 11, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %ulpIoTag40 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ulpIoTag40, align 2
  %conv41 = zext i16 %40 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %30, ptr noundef nonnull @.str.193, i32 noundef %32, i32 noundef %conv26, i32 noundef %call, i32 noundef %bf.clear30, i32 noundef %bf.lshr33, i32 noundef %conv37, i32 noundef %conv41) #20
  br label %do.end44

do.end44:                                         ; preds = %if.then21, %if.else.do.end44_crit_edge, %do.end
  %ulpStatus45 = getelementptr inbounds %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 2
  %41 = ptrtoint ptr %ulpStatus45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load46 = load i32, ptr %ulpStatus45, align 4
  %bf.lshr47 = lshr i32 %bf.load46, 4
  %bf.clear48 = and i32 %bf.lshr47, 15
  %arrayidx = getelementptr %struct.lpfc_iocbq, ptr %rspiocb, i32 0, i32 11, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  tail call void @lpfc_debugfs_disc_trc(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.195, i32 noundef %bf.clear48, i32 noundef %43, i32 noundef %bf.lshr) #20
  %44 = ptrtoint ptr %ulpStatus45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load50 = load i32, ptr %ulpStatus45, align 4
  %45 = and i32 %bf.load50, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool53.not = icmp eq i32 %45, 0
  br i1 %tobool53.not, label %do.end44.out_crit_edge, label %do.body55

do.end44.out_crit_edge:                           ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

do.body55:                                        ; preds = %do.end44
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %47) #20
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %pcidev67 = getelementptr inbounds %struct.lpfc_hba, ptr %49, i32 0, i32 165
  %50 = ptrtoint ptr %pcidev67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcidev67, align 4
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %brd_no70 = getelementptr inbounds %struct.lpfc_hba, ptr %49, i32 0, i32 197
  %52 = ptrtoint ptr %brd_no70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %brd_no70, align 4
  %vpi71 = getelementptr inbounds %struct.lpfc_vport, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %vpi71 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vpi71, align 4
  %conv72 = zext i16 %55 to i32
  %56 = ptrtoint ptr %ulpStatus45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load74 = load i32, ptr %ulpStatus45, align 4
  %bf.lshr75 = lshr i32 %bf.load74, 4
  %bf.clear76 = and i32 %bf.lshr75, 15
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev68, ptr noundef nonnull @.str.197, i32 noundef %53, i32 noundef %conv72, i32 noundef %bf.lshr, i32 noundef %bf.clear76, i32 noundef %58) #23
  %59 = ptrtoint ptr %ulpStatus45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load99 = load i32, ptr %ulpStatus45, align 4
  %60 = and i32 %bf.load99, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %60)
  %cmp102 = icmp eq i32 %60, 48
  br i1 %cmp102, label %land.lhs.true, label %do.body55.if.end116_crit_edge

do.body55.if.end116_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end116

land.lhs.true:                                    ; preds = %do.body55
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx, align 4
  %and106 = and i32 %62, 511
  %63 = zext i32 %and106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.270)
  switch i32 %and106, label %land.lhs.true.if.end116_crit_edge [
    i32 257, label %land.lhs.true.out_crit_edge
    i32 259, label %land.lhs.true.out_crit_edge217
  ]

land.lhs.true.out_crit_edge217:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end116

if.end116:                                        ; preds = %land.lhs.true.if.end116_crit_edge, %do.body55.if.end116_crit_edge
  %retry117 = getelementptr inbounds %struct.lpfc_iocbq, ptr %cmdiocb, i32 0, i32 14
  %64 = ptrtoint ptr %retry117 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %retry117, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp119 = icmp ugt i8 %65, 2
  br i1 %cmp119, label %if.end116.out_crit_edge, label %if.end122

if.end116.out_crit_edge:                          ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end122:                                        ; preds = %if.end116
  %inc = add nuw nsw i8 %65, 1
  %66 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cfg_log_verbose, align 4
  %and125 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.else138, label %do.end130

do.end130:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #22
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %pcidev132 = getelementptr inbounds %struct.lpfc_hba, ptr %69, i32 0, i32 165
  %70 = ptrtoint ptr %pcidev132 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcidev132, align 4
  %dev133 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %brd_no135 = getelementptr inbounds %struct.lpfc_hba, ptr %69, i32 0, i32 197
  %72 = ptrtoint ptr %brd_no135 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %brd_no135, align 4
  %74 = ptrtoint ptr %vpi71 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %vpi71, align 4
  %conv137 = zext i16 %75 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev133, ptr noundef nonnull @.str.200, i32 noundef %73, i32 noundef %conv137, i32 noundef %bf.lshr) #23
  br label %do.end150

if.else138:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool140.not = icmp eq i32 %67, 0
  br i1 %tobool140.not, label %if.then141, label %if.else138.do.end150_crit_edge

if.else138.do.end150_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end150

if.then141:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #22
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  %brd_no144 = getelementptr inbounds %struct.lpfc_hba, ptr %77, i32 0, i32 197
  %78 = ptrtoint ptr %brd_no144 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %brd_no144, align 4
  %80 = ptrtoint ptr %vpi71 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vpi71, align 4
  %conv146 = zext i16 %81 to i32
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %77, ptr noundef nonnull @.str.200, i32 noundef %79, i32 noundef %conv146, i32 noundef %bf.lshr) #20
  br label %do.end150

do.end150:                                        ; preds = %if.then141, %if.else138.do.end150_crit_edge, %do.end130
  %call151 = tail call i32 @lpfc_ns_cmd(ptr noundef %1, i32 noundef %bf.lshr, i8 noundef zeroext %inc, i32 noundef 0)
  br label %out

out:                                              ; preds = %do.end150, %if.end116.out_crit_edge, %land.lhs.true.out_crit_edge, %land.lhs.true.out_crit_edge217, %do.end44.out_crit_edge
  %call157 = tail call i32 @lpfc_ct_free_iocb(ptr noundef %phba, ptr noundef %cmdiocb)
  %call158 = tail call i32 @lpfc_nlp_put(ptr noundef %3) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_vmid_hash_fn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_get_vmid_from_hashtable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 212)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 212)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !158, !159, !160, !162, !164, !165, !166, !168, !170, !171, !172, !174, !176, !178, !179, !180, !181, !183, !185, !186, !187, !188, !190, !192, !193, !194, !196, !198, !200, !201, !202, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !237, !238, !239, !241, !243, !244, !245, !247, !249, !250, !251, !253, !255, !256, !257, !258, !260, !261, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !288, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !312, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396}
!llvm.module.flags = !{!397, !398, !399, !400, !401, !402, !403, !404}
!llvm.ident = !{!405}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1816, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1830, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1835, i32 30}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1839, i32 30}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1843, i32 30}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1848, i32 30}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1956, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @lpfc_ns_cmd._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @lpfc_ns_cmd._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2057, i32 3}
!22 = !{ptr @lpfc_ns_cmd._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @lpfc_ns_cmd._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2140, i32 3}
!29 = !{ptr @lpfc_ns_cmd._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lpfc_ns_cmd._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2156, i32 4}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2171, i32 2}
!35 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @lpfc_ns_cmd._entry.22, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @lpfc_ns_cmd._entry_ptr.24, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2403, i32 61}
!40 = !{ptr @lpfc_fdmi_hba_action, !41, !"lpfc_fdmi_hba_action", i1 false, i1 false}
!41 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3369, i32 7}
!42 = !{ptr @lpfc_fdmi_port_action, !43, !"lpfc_fdmi_port_action", i1 false, i1 false}
!43 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3393, i32 7}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3479, i32 2}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @lpfc_fdmi_cmd._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @lpfc_fdmi_cmd._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3625, i32 3}
!51 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lpfc_fdmi_cmd._entry.28, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @lpfc_fdmi_cmd._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3655, i32 2}
!56 = !{ptr @lpfc_fdmi_cmd._entry.32, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @lpfc_fdmi_cmd._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3768, i32 25}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3771, i32 25}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3775, i32 25}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3779, i32 25}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3951, i32 2}
!68 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @lpfc_vmid_cmd._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @lpfc_vmid_cmd._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3970, i32 3}
!73 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @lpfc_vmid_cmd._entry.41, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @lpfc_vmid_cmd._entry_ptr.44, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3989, i32 3}
!78 = !{ptr @lpfc_vmid_cmd._entry.45, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @lpfc_vmid_cmd._entry_ptr.47, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 4011, i32 3}
!82 = !{ptr @lpfc_vmid_cmd._entry.48, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @lpfc_vmid_cmd._entry_ptr.50, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 4042, i32 2}
!86 = !{ptr @lpfc_vmid_cmd._entry.51, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @lpfc_vmid_cmd._entry_ptr.53, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 297, i32 3}
!90 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @lpfc_ct_handle_mibreq._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @lpfc_ct_handle_mibreq._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 305, i32 3}
!95 = !{ptr @lpfc_ct_handle_mibreq._entry.56, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @lpfc_ct_handle_mibreq._entry_ptr.58, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 317, i32 3}
!99 = !{ptr @lpfc_ct_handle_mibreq._entry.59, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @lpfc_ct_handle_mibreq._entry_ptr.61, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.63, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 327, i32 2}
!103 = !{ptr @lpfc_ct_handle_mibreq._entry.62, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @lpfc_ct_handle_mibreq._entry_ptr.64, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.65, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 270, i32 2}
!107 = !{ptr @.str.66, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @lpfc_ct_reject_event._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @lpfc_ct_reject_event._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.67, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 87, i32 3}
!112 = !{ptr @.str.68, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @lpfc_ct_ignore_hbq_buffer._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @lpfc_ct_ignore_hbq_buffer._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.70, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 92, i32 2}
!117 = !{ptr @lpfc_ct_ignore_hbq_buffer._entry.69, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @lpfc_ct_ignore_hbq_buffer._entry_ptr.71, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.72, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 77, i32 37}
!121 = distinct !{null, !122, !"lpfc_release_version", i1 false, i1 false}
!122 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 77, i32 14}
!123 = !{ptr @.str.73, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 959, i32 4}
!125 = !{ptr @.str.74, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 964, i32 3}
!127 = !{ptr @.str.75, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.77, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 977, i32 3}
!132 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.76, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.78, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.80, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 985, i32 3}
!136 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.79, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.81, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.83, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1007, i32 3}
!140 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.82, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.84, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.86, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1041, i32 3}
!144 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.85, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.87, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.89, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1050, i32 4}
!148 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.88, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.90, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.92, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1068, i32 5}
!152 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.91, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.93, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.94, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1078, i32 5}
!156 = !{ptr @.str.96, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1083, i32 5}
!158 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.95, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.97, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.98, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1093, i32 5}
!162 = !{ptr @.str.100, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1102, i32 4}
!164 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.99, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.101, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.102, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1111, i32 5}
!168 = !{ptr @.str.104, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1120, i32 2}
!170 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry.103, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @lpfc_cmpl_ct_cmd_gid_ft._entry_ptr.105, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.106, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 833, i32 9}
!174 = !{ptr @.str.107, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 835, i32 9}
!176 = !{ptr @.str.108, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 836, i32 2}
!178 = !{ptr @.str.109, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @lpfc_ns_rsp_audit_did._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @lpfc_ns_rsp_audit_did._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.110, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 749, i32 5}
!183 = !{ptr @.str.111, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 759, i32 4}
!185 = !{ptr @.str.112, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @lpfc_prep_node_fc4type._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @lpfc_prep_node_fc4type._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.113, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 777, i32 5}
!190 = !{ptr @.str.115, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 780, i32 4}
!192 = !{ptr @lpfc_prep_node_fc4type._entry.114, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @lpfc_prep_node_fc4type._entry_ptr.116, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.117, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 790, i32 5}
!196 = !{ptr @.str.118, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 813, i32 5}
!198 = !{ptr @.str.120, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 816, i32 4}
!200 = !{ptr @lpfc_prep_node_fc4type._entry.119, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @lpfc_prep_node_fc4type._entry_ptr.121, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.122, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1175, i32 10}
!204 = !{ptr @.str.123, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1181, i32 3}
!206 = !{ptr @.str.124, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.126, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1194, i32 3}
!211 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.125, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.127, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.129, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1202, i32 3}
!215 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.128, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.130, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.132, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1224, i32 3}
!219 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.131, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.133, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.135, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1254, i32 3}
!223 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.134, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.136, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.138, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1263, i32 4}
!227 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.137, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.139, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.141, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1281, i32 5}
!231 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.140, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.142, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.143, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1292, i32 5}
!235 = !{ptr @.str.145, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1297, i32 5}
!237 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.144, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.146, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.147, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1308, i32 5}
!241 = !{ptr @.str.149, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1315, i32 4}
!243 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.148, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.150, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.151, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1325, i32 5}
!247 = !{ptr @.str.153, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1334, i32 2}
!249 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry.152, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @lpfc_cmpl_ct_cmd_gid_pt._entry_ptr.154, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.155, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1382, i32 3}
!253 = !{ptr @.str.156, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1387, i32 3}
!255 = !{ptr @.str.157, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.159, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1397, i32 3}
!260 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry.158, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.160, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.161, !259, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.162, !259, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.164, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1408, i32 5}
!266 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry.163, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.165, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.167, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1456, i32 3}
!270 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry.166, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.168, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.170, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1466, i32 3}
!274 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry.169, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.171, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.173, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1472, i32 3}
!278 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry.172, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.174, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.176, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1482, i32 2}
!282 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry.175, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @lpfc_cmpl_ct_cmd_gff_id._entry_ptr.177, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.178, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1530, i32 10}
!286 = !{ptr @.str.179, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1535, i32 3}
!288 = !{ptr @.str.180, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @lpfc_cmpl_ct_cmd_gft_id._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @lpfc_cmpl_ct_cmd_gft_id._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.182, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1549, i32 3}
!293 = !{ptr @lpfc_cmpl_ct_cmd_gft_id._entry.181, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @lpfc_cmpl_ct_cmd_gft_id._entry_ptr.183, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.185, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1572, i32 4}
!297 = !{ptr @lpfc_cmpl_ct_cmd_gft_id._entry.184, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @lpfc_cmpl_ct_cmd_gft_id._entry_ptr.186, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.188, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1589, i32 5}
!301 = !{ptr @lpfc_cmpl_ct_cmd_gft_id._entry.187, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @lpfc_cmpl_ct_cmd_gft_id._entry_ptr.189, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.191, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1603, i32 3}
!305 = !{ptr @lpfc_cmpl_ct_cmd_gft_id._entry.190, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @lpfc_cmpl_ct_cmd_gft_id._entry_ptr.192, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.193, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1642, i32 2}
!309 = !{ptr @.str.194, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @lpfc_cmpl_ct._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @lpfc_cmpl_ct._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.195, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1650, i32 3}
!314 = !{ptr @.str.197, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1654, i32 3}
!316 = !{ptr @lpfc_cmpl_ct._entry.196, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @lpfc_cmpl_ct._entry_ptr.198, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.200, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 1670, i32 3}
!320 = !{ptr @lpfc_cmpl_ct._entry.199, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @lpfc_cmpl_ct._entry_ptr.201, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.202, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 650, i32 2}
!324 = !{ptr @.str.203, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @lpfc_gen_req._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @lpfc_gen_req._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.204, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2474, i32 3}
!329 = !{ptr @.str.205, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2658, i32 57}
!331 = !{ptr @.str.206, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2807, i32 29}
!333 = !{ptr @.str.207, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3005, i32 4}
!335 = !{ptr @.str.208, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3222, i32 29}
!337 = !{ptr @.str.209, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3264, i32 29}
!339 = !{ptr @.str.210, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3357, i32 23}
!341 = !{ptr @.str.211, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2203, i32 3}
!343 = !{ptr @.str.212, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2238, i32 3}
!345 = !{ptr @.str.213, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.215, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2257, i32 3}
!350 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry.214, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.216, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.218, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2293, i32 5}
!354 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry.217, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.219, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.221, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2340, i32 5}
!358 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry.220, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.222, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.224, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2348, i32 4}
!362 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry.223, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.225, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.227, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2356, i32 4}
!366 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry.226, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.228, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.230, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 2362, i32 4}
!370 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry.229, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @lpfc_cmpl_ct_disc_fdmi._entry_ptr.231, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.232, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3823, i32 4}
!374 = !{ptr @.str.233, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.235, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3840, i32 3}
!379 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry.234, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr.236, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.238, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3862, i32 4}
!383 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry.237, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr.239, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.241, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3869, i32 3}
!387 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry.240, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr.242, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.244, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3875, i32 3}
!391 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry.243, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr.245, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.247, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/scsi/lpfc/lpfc_ct.c", i32 3891, i32 3}
!395 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry.246, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @lpfc_cmpl_ct_cmd_vmid._entry_ptr.248, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{i32 1, !"wchar_size", i32 2}
!398 = !{i32 1, !"min_enum_size", i32 4}
!399 = !{i32 8, !"branch-target-enforcement", i32 0}
!400 = !{i32 8, !"sign-return-address", i32 0}
!401 = !{i32 8, !"sign-return-address-all", i32 0}
!402 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!403 = !{i32 7, !"uwtable", i32 1}
!404 = !{i32 7, !"frame-pointer", i32 2}
!405 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!406 = !{!"auto-init"}
!407 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
