; ModuleID = '/llk/IR_all_yes/drivers/scsi/lpfc/lpfc_mem.c_pt.bc'
source_filename = "../drivers/scsi/lpfc/lpfc_mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
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
%struct.lpfcMboxq = type { %struct.list_head, %union.anon.95, ptr, ptr, ptr, ptr, ptr, i8, i16, i16, i8, %struct.lpfc_mcqe, ptr }
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
%struct.hbq_dmabuf = type { %struct.lpfc_dmabuf, %struct.lpfc_dmabuf, i16, i16, i32, %struct.lpfc_cq_event, i32, ptr }
%struct.lpfc_cq_event = type { %struct.list_head, i16, %union.anon }
%union.anon = type { %struct.lpfc_mcqe }
%struct.rqb_dmabuf = type { %struct.lpfc_dmabuf, %struct.lpfc_dmabuf, i16, i16, i16, ptr, ptr }
%struct.lpfc_rqe = type { i32, i32 }
%struct.lpfc_queue = type { %struct.list_head, %struct.list_head, i16, i16, i8, i8, %struct.list_head, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i16, i16, i8, i8, ptr, i16, i16, ptr, i32, i32, i32, i64, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, i64, ptr, %struct.list_head, ptr, %struct.irq_poll, i32 }
%struct.irq_poll = type { %struct.list_head, i32, i32, ptr }
%struct.lpfc_rqb = type { i16, i16, %struct.list_head, ptr, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpfc_mbuf_pool\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpfc_hrb_pool\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpfc_drb_pool\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpfc_hbq_pool\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpfc_nvmet_drb_pool\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lpfc_nvmet_mem_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 199, ptr @.str.5, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%d:6024 Can't enable NVME Target - no memory\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lpfc_nvmet_mem_alloc\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/lpfc/lpfc_mem.c\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpfc_nvmet_mem_alloc._entry_ptr = internal global ptr @lpfc_nvmet_mem_alloc._entry, section ".printk_index", align 4
@lpfc_rq_buf_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.8, i32 745, ptr @.str.5, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%d:6409 Cannot post to HRQ %d: %x %x %x DRQ %x %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpfc_rq_buf_free\00", [47 x i8] zeroinitializer }, align 32
@lpfc_rq_buf_free._entry_ptr = internal global ptr @lpfc_rq_buf_free._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 92, i32 41 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 131, i32 41 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 137, i32 41 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 144, i32 41 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 194, i32 19 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 198, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [32 x i8] c"../drivers/scsi/lpfc/lpfc_mem.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 737, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @lpfc_nvmet_mem_alloc._entry, ptr @lpfc_nvmet_mem_alloc._entry_ptr, ptr @lpfc_rq_buf_free._entry, ptr @lpfc_rq_buf_free._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_nvmet_mem_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_rq_buf_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_mem_alloc_active_rrq_pool_s4(ptr nocapture noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %max_cfg_param = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 60
  %0 = ptrtoint ptr %max_cfg_param to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_cfg_param, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 31
  %2 = lshr i32 %add, 3
  %mul = and i32 %2, 16380
  %cfg_rrq_xri_bitmap_sz = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 145
  %3 = ptrtoint ptr %cfg_rrq_xri_bitmap_sz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %cfg_rrq_xri_bitmap_sz, align 8
  %4 = inttoptr i32 %mul to ptr
  %call.i = tail call ptr @mempool_create(i32 noundef 64, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef %4) #5
  %active_rrq_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 234
  %5 = ptrtoint ptr %active_rrq_pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %active_rrq_pool, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_mem_alloc(ptr noundef %phba, i32 noundef %align) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lpfc_mbuf_safety_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call ptr @dma_pool_create(ptr noundef nonnull @.str, ptr noundef %dev, i32 noundef 1024, i32 noundef %align, i32 noundef 0) #5
  %lpfc_mbuf_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 224
  %2 = ptrtoint ptr %lpfc_mbuf_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %lpfc_mbuf_pool, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1280) #8
  %4 = ptrtoint ptr %lpfc_mbuf_safety_pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %lpfc_mbuf_safety_pool, align 4
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.fail_free_lpfc_mbuf_pool_crit_edge, label %if.end6

if.end.fail_free_lpfc_mbuf_pool_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_free_lpfc_mbuf_pool

if.end6:                                          ; preds = %if.end
  %max_count = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 1
  %5 = ptrtoint ptr %max_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %max_count, align 4
  %current_count = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 2
  %6 = ptrtoint ptr %current_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %current_count, align 4
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %if.end6
  %i.0162 = phi i32 [ 0, %if.end6 ], [ %inc21, %if.end17.for.body_crit_edge ]
  %7 = ptrtoint ptr %lpfc_mbuf_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lpfc_mbuf_pool, align 4
  %9 = ptrtoint ptr %lpfc_mbuf_safety_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lpfc_mbuf_safety_pool, align 4
  %phys = getelementptr %struct.lpfc_dmabuf, ptr %10, i32 %i.0162, i32 2
  %call9 = tail call ptr @dma_pool_alloc(ptr noundef %8, i32 noundef 3264, ptr noundef %phys) #5
  %11 = ptrtoint ptr %lpfc_mbuf_safety_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lpfc_mbuf_safety_pool, align 4
  %virt = getelementptr %struct.lpfc_dmabuf, ptr %12, i32 %i.0162, i32 1
  %13 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %virt, align 4
  %14 = load ptr, ptr %lpfc_mbuf_safety_pool, align 4
  %virt14 = getelementptr %struct.lpfc_dmabuf, ptr %14, i32 %i.0162, i32 1
  %15 = ptrtoint ptr %virt14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt14, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %fail_free_mbuf_pool, label %if.end17

if.end17:                                         ; preds = %for.body
  %17 = ptrtoint ptr %max_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_count, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %max_count, align 4
  %19 = ptrtoint ptr %current_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_count, align 4
  %inc20 = add i32 %20, 1
  store i32 %inc20, ptr %current_count, align 4
  %inc21 = add nuw nsw i32 %i.0162, 1
  %exitcond.not = icmp eq i32 %inc21, 64
  br i1 %exitcond.not, label %for.end, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end17
  %call.i = tail call ptr @mempool_create(i32 noundef 256, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 312 to ptr)) #5
  %mbox_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  %21 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %mbox_mem_pool, align 8
  %tobool24.not = icmp eq ptr %call.i, null
  br i1 %tobool24.not, label %for.end.while.body.preheader_crit_edge, label %if.end26

for.end.while.body.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

if.end26:                                         ; preds = %for.end
  %call.i157 = tail call ptr @mempool_create(i32 noundef 64, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 392 to ptr)) #5
  %nlp_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 232
  %22 = ptrtoint ptr %nlp_mem_pool to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i157, ptr %nlp_mem_pool, align 4
  %tobool29.not = icmp eq ptr %call.i157, null
  br i1 %tobool29.not, label %if.end26.fail_free_mbox_pool_crit_edge, label %if.end31

if.end26.fail_free_mbox_pool_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_free_mbox_pool

if.end31:                                         ; preds = %if.end26
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %23 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp32 = icmp eq i32 %24, 4
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  %call.i158 = tail call ptr @mempool_create(i32 noundef 256, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 28 to ptr)) #5
  %rrq_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 233
  %25 = ptrtoint ptr %rrq_pool to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i158, ptr %rrq_pool, align 8
  %tobool36.not = icmp eq ptr %call.i158, null
  br i1 %tobool36.not, label %if.then33.fail_free_nlp_mem_pool_crit_edge, label %if.end38

if.then33.fail_free_nlp_mem_pool_crit_edge:       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_free_nlp_mem_pool

if.end38:                                         ; preds = %if.then33
  %26 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcidev, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %call41 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.1, ptr noundef %dev40, i32 noundef 128, i32 noundef %align, i32 noundef 0) #5
  %lpfc_hrb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 225
  %28 = ptrtoint ptr %lpfc_hrb_pool to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call41, ptr %lpfc_hrb_pool, align 8
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.end38.fail_free_rrq_mem_pool_crit_edge, label %if.end45

if.end38.fail_free_rrq_mem_pool_crit_edge:        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_free_rrq_mem_pool

if.end45:                                         ; preds = %if.end38
  %29 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcidev, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %call48 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.2, ptr noundef %dev47, i32 noundef 2048, i32 noundef %align, i32 noundef 0) #5
  %lpfc_drb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 226
  %31 = ptrtoint ptr %lpfc_drb_pool to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call48, ptr %lpfc_drb_pool, align 4
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %if.end45.fail_free_hrb_pool_crit_edge, label %if.end52

if.end45.fail_free_hrb_pool_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_free_hrb_pool

if.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_hbq_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 228
  br label %if.end63

if.else:                                          ; preds = %if.end31
  %32 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcidev, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %call55 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.3, ptr noundef %dev54, i32 noundef 1024, i32 noundef %align, i32 noundef 0) #5
  %lpfc_hbq_pool56 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 228
  %34 = ptrtoint ptr %lpfc_hbq_pool56 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call55, ptr %lpfc_hbq_pool56, align 4
  %tobool58.not = icmp eq ptr %call55, null
  br i1 %tobool58.not, label %if.else.fail_free_nlp_mem_pool_crit_edge, label %if.end60

if.else.fail_free_nlp_mem_pool_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_free_nlp_mem_pool

if.end60:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_hrb_pool61 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 225
  %35 = ptrtoint ptr %lpfc_hrb_pool61 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %lpfc_hrb_pool61, align 8
  %lpfc_drb_pool62 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 226
  br label %if.end63

if.end63:                                         ; preds = %if.end60, %if.end52
  %lpfc_drb_pool62.sink = phi ptr [ %lpfc_drb_pool62, %if.end60 ], [ %lpfc_hbq_pool, %if.end52 ]
  %36 = ptrtoint ptr %lpfc_drb_pool62.sink to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %lpfc_drb_pool62.sink, align 4
  %cfg_EnableXLane = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 127
  %37 = ptrtoint ptr %cfg_EnableXLane to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cfg_EnableXLane, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool64.not = icmp eq i32 %38, 0
  br i1 %tobool64.not, label %if.else71, label %if.then65

if.then65:                                        ; preds = %if.end63
  %call.i159 = tail call ptr @mempool_create(i32 noundef 64, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 48 to ptr)) #5
  %device_data_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 344
  %39 = ptrtoint ptr %device_data_mem_pool to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i159, ptr %device_data_mem_pool, align 8
  %tobool68.not = icmp eq ptr %call.i159, null
  br i1 %tobool68.not, label %fail_free_drb_pool, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else71:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %device_data_mem_pool72 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 344
  %40 = ptrtoint ptr %device_data_mem_pool72 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %device_data_mem_pool72, align 8
  br label %cleanup

fail_free_drb_pool:                               ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_drb_pool74 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 226
  %41 = ptrtoint ptr %lpfc_drb_pool74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lpfc_drb_pool74, align 4
  tail call void @dma_pool_destroy(ptr noundef %42) #5
  %43 = ptrtoint ptr %lpfc_drb_pool74 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %lpfc_drb_pool74, align 4
  br label %fail_free_hrb_pool

fail_free_hrb_pool:                               ; preds = %fail_free_drb_pool, %if.end45.fail_free_hrb_pool_crit_edge
  %lpfc_hrb_pool76 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 225
  %44 = ptrtoint ptr %lpfc_hrb_pool76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lpfc_hrb_pool76, align 8
  tail call void @dma_pool_destroy(ptr noundef %45) #5
  %46 = ptrtoint ptr %lpfc_hrb_pool76 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %lpfc_hrb_pool76, align 8
  br label %fail_free_rrq_mem_pool

fail_free_rrq_mem_pool:                           ; preds = %fail_free_hrb_pool, %if.end38.fail_free_rrq_mem_pool_crit_edge
  %rrq_pool78 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 233
  %47 = ptrtoint ptr %rrq_pool78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rrq_pool78, align 8
  tail call void @mempool_destroy(ptr noundef %48) #5
  %49 = ptrtoint ptr %rrq_pool78 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rrq_pool78, align 8
  br label %fail_free_nlp_mem_pool

fail_free_nlp_mem_pool:                           ; preds = %fail_free_rrq_mem_pool, %if.else.fail_free_nlp_mem_pool_crit_edge, %if.then33.fail_free_nlp_mem_pool_crit_edge
  %50 = ptrtoint ptr %nlp_mem_pool to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nlp_mem_pool, align 4
  tail call void @mempool_destroy(ptr noundef %51) #5
  %52 = ptrtoint ptr %nlp_mem_pool to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %nlp_mem_pool, align 4
  br label %fail_free_mbox_pool

fail_free_mbox_pool:                              ; preds = %fail_free_nlp_mem_pool, %if.end26.fail_free_mbox_pool_crit_edge
  %53 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_destroy(ptr noundef %54) #5
  %55 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %mbox_mem_pool, align 8
  br label %while.body.preheader

fail_free_mbuf_pool:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0162)
  %tobool84.not163 = icmp eq i32 %i.0162, 0
  br i1 %tobool84.not163, label %fail_free_mbuf_pool.while.end_crit_edge, label %fail_free_mbuf_pool.while.body.preheader_crit_edge

fail_free_mbuf_pool.while.body.preheader_crit_edge: ; preds = %fail_free_mbuf_pool
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

fail_free_mbuf_pool.while.end_crit_edge:          ; preds = %fail_free_mbuf_pool
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.preheader:                             ; preds = %fail_free_mbuf_pool.while.body.preheader_crit_edge, %fail_free_mbox_pool, %for.end.while.body.preheader_crit_edge
  %i.1164.ph = phi i32 [ 64, %fail_free_mbox_pool ], [ 64, %for.end.while.body.preheader_crit_edge ], [ %i.0162, %fail_free_mbuf_pool.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %i.1164 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.1164.ph, %while.body.preheader ]
  %dec = add nsw i32 %i.1164, -1
  %56 = ptrtoint ptr %lpfc_mbuf_pool to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lpfc_mbuf_pool, align 4
  %58 = ptrtoint ptr %lpfc_mbuf_safety_pool to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lpfc_mbuf_safety_pool, align 4
  %virt88 = getelementptr %struct.lpfc_dmabuf, ptr %59, i32 %dec, i32 1
  %60 = ptrtoint ptr %virt88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %virt88, align 4
  %phys91 = getelementptr %struct.lpfc_dmabuf, ptr %59, i32 %dec, i32 2
  %62 = ptrtoint ptr %phys91 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %phys91, align 4
  tail call void @dma_pool_free(ptr noundef %57, ptr noundef %61, i32 noundef %63) #5
  %tobool84.not = icmp eq i32 %dec, 0
  br i1 %tobool84.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %fail_free_mbuf_pool.while.end_crit_edge
  %64 = ptrtoint ptr %lpfc_mbuf_safety_pool to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lpfc_mbuf_safety_pool, align 4
  tail call void @kfree(ptr noundef %65) #5
  br label %fail_free_lpfc_mbuf_pool

fail_free_lpfc_mbuf_pool:                         ; preds = %while.end, %if.end.fail_free_lpfc_mbuf_pool_crit_edge
  %66 = ptrtoint ptr %lpfc_mbuf_pool to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lpfc_mbuf_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %67) #5
  %68 = ptrtoint ptr %lpfc_mbuf_pool to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %lpfc_mbuf_pool, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail_free_lpfc_mbuf_pool, %if.else71, %if.then65.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then65.cleanup_crit_edge ], [ 0, %if.else71 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %fail_free_lpfc_mbuf_pool ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_nvmet_mem_alloc(ptr nocapture noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.4, ptr noundef %dev, i32 noundef 128, i32 noundef 64, i32 noundef 0) #5
  %lpfc_nvmet_drb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 227
  %2 = ptrtoint ptr %lpfc_nvmet_drb_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %lpfc_nvmet_drb_pool, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcidev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %5 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %brd_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev10, ptr noundef nonnull @.str.6, i32 noundef %6) #9
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.body ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_mem_free(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lpfc_mbuf_safety_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230
  tail call void @lpfc_sli_hbqbuf_free_all(ptr noundef %phba) #5
  %lpfc_nvmet_drb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 227
  %0 = ptrtoint ptr %lpfc_nvmet_drb_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpfc_nvmet_drb_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %1) #5
  %2 = ptrtoint ptr %lpfc_nvmet_drb_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %lpfc_nvmet_drb_pool, align 8
  %lpfc_drb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 226
  %3 = ptrtoint ptr %lpfc_drb_pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lpfc_drb_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %4) #5
  %5 = ptrtoint ptr %lpfc_drb_pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %lpfc_drb_pool, align 4
  %lpfc_hrb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 225
  %6 = ptrtoint ptr %lpfc_hrb_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lpfc_hrb_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %7) #5
  %8 = ptrtoint ptr %lpfc_hrb_pool to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %lpfc_hrb_pool, align 8
  %lpfc_hbq_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 228
  %9 = ptrtoint ptr %lpfc_hbq_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lpfc_hbq_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %10) #5
  %11 = ptrtoint ptr %lpfc_hbq_pool to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %lpfc_hbq_pool, align 4
  %rrq_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 233
  %12 = ptrtoint ptr %rrq_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rrq_pool, align 8
  tail call void @mempool_destroy(ptr noundef %13) #5
  %14 = ptrtoint ptr %rrq_pool to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rrq_pool, align 8
  %nlp_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 232
  %15 = ptrtoint ptr %nlp_mem_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nlp_mem_pool, align 4
  tail call void @mempool_destroy(ptr noundef %16) #5
  %17 = ptrtoint ptr %nlp_mem_pool to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %nlp_mem_pool, align 4
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %18 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp = icmp eq i32 %19, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %active_rrq_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 234
  %20 = ptrtoint ptr %active_rrq_pool to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %active_rrq_pool, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mempool_destroy(ptr noundef nonnull %21) #5
  %22 = ptrtoint ptr %active_rrq_pool to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %active_rrq_pool, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mbox_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  %23 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_destroy(ptr noundef %24) #5
  %25 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %mbox_mem_pool, align 8
  %current_count = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 2
  %26 = ptrtoint ptr %current_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %current_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1059.not = icmp eq i32 %27, 0
  br i1 %cmp1059.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %lpfc_mbuf_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 224
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %lpfc_mbuf_pool to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lpfc_mbuf_pool, align 4
  %30 = ptrtoint ptr %lpfc_mbuf_safety_pool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lpfc_mbuf_safety_pool, align 4
  %virt = getelementptr %struct.lpfc_dmabuf, ptr %31, i32 %i.060, i32 1
  %32 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt, align 4
  %phys = getelementptr %struct.lpfc_dmabuf, ptr %31, i32 %i.060, i32 2
  %34 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phys, align 4
  tail call void @dma_pool_free(ptr noundef %29, ptr noundef %33, i32 noundef %35) #5
  %inc = add nuw i32 %i.060, 1
  %36 = ptrtoint ptr %current_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %current_count, align 4
  %cmp10 = icmp ult i32 %inc, %37
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %38 = ptrtoint ptr %lpfc_mbuf_safety_pool to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lpfc_mbuf_safety_pool, align 4
  tail call void @kfree(ptr noundef %39) #5
  %lpfc_mbuf_pool14 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 224
  %40 = ptrtoint ptr %lpfc_mbuf_pool14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lpfc_mbuf_pool14, align 4
  tail call void @dma_pool_destroy(ptr noundef %41) #5
  %42 = ptrtoint ptr %lpfc_mbuf_pool14 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %lpfc_mbuf_pool14, align 4
  %device_data_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 344
  %43 = ptrtoint ptr %device_data_mem_pool to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device_data_mem_pool, align 8
  %tobool16.not = icmp eq ptr %44, null
  br i1 %tobool16.not, label %for.end.if.end22_crit_edge, label %while.cond.preheader

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

while.cond.preheader:                             ; preds = %for.end
  %luns = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 345
  %45 = ptrtoint ptr %luns to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %luns, align 4
  %cmp.i.not61 = icmp eq ptr %46, %luns
  br i1 %cmp.i.not61, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %47 = phi ptr [ %59, %list_del.exit.while.body_crit_edge ], [ %46, %while.cond.preheader.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %47) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %56 = ptrtoint ptr %device_data_mem_pool to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_data_mem_pool, align 8
  tail call void @mempool_free(ptr noundef %47, ptr noundef %57) #5
  %58 = ptrtoint ptr %luns to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %luns, align 4
  %cmp.i.not = icmp eq ptr %59, %luns
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %60 = ptrtoint ptr %device_data_mem_pool to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device_data_mem_pool, align 8
  tail call void @mempool_destroy(ptr noundef %61) #5
  br label %if.end22

if.end22:                                         ; preds = %while.end, %for.end.if.end22_crit_edge
  %62 = ptrtoint ptr %device_data_mem_pool to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %device_data_mem_pool, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_hbqbuf_free_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_mem_free_all(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mboxq = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 4
  %0 = ptrtoint ptr %mboxq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mboxq, align 8
  %cmp.not161 = icmp eq ptr %1, %mboxq
  br i1 %cmp.not161, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hbalock.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %current_count.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 2
  %max_count.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 1
  %lpfc_mbuf_pool.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 224
  %lpfc_mbuf_safety_pool.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230
  %mbox_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %mbox.0162 = phi ptr [ %1, %for.body.lr.ph ], [ %next_mbox.0164, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %mbox.0162 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next_mbox.0164 = load ptr, ptr %mbox.0162, align 4
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox.0162, i32 0, i32 4
  %3 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phys, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock.i) #5
  %9 = ptrtoint ptr %current_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_count.i.i, align 4
  %11 = ptrtoint ptr %max_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.i = icmp ult i32 %10, %12
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %lpfc_mbuf_safety_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lpfc_mbuf_safety_pool.i.i, align 4
  %virt2.i.i = getelementptr %struct.lpfc_dmabuf, ptr %14, i32 %10, i32 1
  %15 = ptrtoint ptr %virt2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %virt2.i.i, align 4
  %16 = load ptr, ptr %lpfc_mbuf_safety_pool.i.i, align 4
  %17 = ptrtoint ptr %current_count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %current_count.i.i, align 4
  %phys.i.i = getelementptr %struct.lpfc_dmabuf, ptr %16, i32 %18, i32 2
  %19 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %8, ptr %phys.i.i, align 4
  %20 = load i32, ptr %current_count.i.i, align 4
  %inc.i.i = add i32 %20, 1
  store i32 %inc.i.i, ptr %current_count.i.i, align 4
  br label %lpfc_mbuf_free.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %lpfc_mbuf_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lpfc_mbuf_pool.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %22, ptr noundef %6, i32 noundef %8) #5
  br label %lpfc_mbuf_free.exit

lpfc_mbuf_free.exit:                              ; preds = %if.else.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock.i, i32 noundef %call2.i) #5
  tail call void @kfree(ptr noundef nonnull %4) #5
  br label %if.end

if.end:                                           ; preds = %lpfc_mbuf_free.exit, %for.body.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mbox.0162) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mbox.0162, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %mbox.0162 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mbox.0162, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %29 = ptrtoint ptr %mbox.0162 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %mbox.0162, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbox.0162, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %31 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_free(ptr noundef %mbox.0162, ptr noundef %32) #5
  %cmp.not = icmp eq ptr %next_mbox.0164, %mboxq
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mboxq_cmpl = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 8
  %33 = ptrtoint ptr %mboxq_cmpl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mboxq_cmpl, align 8
  %cmp25.not166 = icmp eq ptr %34, %mboxq_cmpl
  br i1 %cmp25.not166, label %for.end.for.end42_crit_edge, label %for.body27.lr.ph

for.end.for.end42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end42

for.body27.lr.ph:                                 ; preds = %for.end
  %hbalock.i128 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %current_count.i.i130 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 2
  %max_count.i.i131 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 1
  %lpfc_mbuf_pool.i.i138 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 224
  %lpfc_mbuf_safety_pool.i.i133 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230
  %mbox_mem_pool35 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  br label %for.body27

for.body27:                                       ; preds = %list_del.exit146.for.body27_crit_edge, %for.body27.lr.ph
  %mbox.1167 = phi ptr [ %34, %for.body27.lr.ph ], [ %next_mbox.1169, %list_del.exit146.for.body27_crit_edge ]
  %35 = ptrtoint ptr %mbox.1167 to i32
  call void @__asan_load4_noabort(i32 %35)
  %next_mbox.1169 = load ptr, ptr %mbox.1167, align 4
  %ctx_buf28 = getelementptr inbounds %struct.lpfcMboxq, ptr %mbox.1167, i32 0, i32 4
  %36 = ptrtoint ptr %ctx_buf28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx_buf28, align 4
  %tobool29.not = icmp eq ptr %37, null
  br i1 %tobool29.not, label %for.body27.if.end33_crit_edge, label %if.then30

for.body27.if.end33_crit_edge:                    ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then30:                                        ; preds = %for.body27
  %virt31 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %virt31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virt31, align 4
  %phys32 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %phys32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phys32, align 4
  %call2.i129 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock.i128) #5
  %42 = ptrtoint ptr %current_count.i.i130 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %current_count.i.i130, align 4
  %44 = ptrtoint ptr %max_count.i.i131 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_count.i.i131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.i.i132 = icmp ult i32 %43, %45
  br i1 %cmp.i.i132, label %if.then.i.i137, label %if.else.i.i139

if.then.i.i137:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %lpfc_mbuf_safety_pool.i.i133 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lpfc_mbuf_safety_pool.i.i133, align 4
  %virt2.i.i134 = getelementptr %struct.lpfc_dmabuf, ptr %47, i32 %43, i32 1
  %48 = ptrtoint ptr %virt2.i.i134 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %39, ptr %virt2.i.i134, align 4
  %49 = load ptr, ptr %lpfc_mbuf_safety_pool.i.i133, align 4
  %50 = ptrtoint ptr %current_count.i.i130 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %current_count.i.i130, align 4
  %phys.i.i135 = getelementptr %struct.lpfc_dmabuf, ptr %49, i32 %51, i32 2
  %52 = ptrtoint ptr %phys.i.i135 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %41, ptr %phys.i.i135, align 4
  %53 = load i32, ptr %current_count.i.i130, align 4
  %inc.i.i136 = add i32 %53, 1
  store i32 %inc.i.i136, ptr %current_count.i.i130, align 4
  br label %lpfc_mbuf_free.exit140

if.else.i.i139:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %lpfc_mbuf_pool.i.i138 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lpfc_mbuf_pool.i.i138, align 4
  tail call void @dma_pool_free(ptr noundef %55, ptr noundef %39, i32 noundef %41) #5
  br label %lpfc_mbuf_free.exit140

lpfc_mbuf_free.exit140:                           ; preds = %if.else.i.i139, %if.then.i.i137
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock.i128, i32 noundef %call2.i129) #5
  tail call void @kfree(ptr noundef nonnull %37) #5
  br label %if.end33

if.end33:                                         ; preds = %lpfc_mbuf_free.exit140, %for.body27.if.end33_crit_edge
  %call.i.i141 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mbox.1167) #5
  br i1 %call.i.i141, label %if.end.i.i144, label %if.end33.list_del.exit146_crit_edge

if.end33.list_del.exit146_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit146

if.end.i.i144:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i142 = getelementptr inbounds %struct.list_head, ptr %mbox.1167, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i142 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i142, align 4
  %58 = ptrtoint ptr %mbox.1167 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mbox.1167, align 4
  %prev1.i.i.i143 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i143, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit146

list_del.exit146:                                 ; preds = %if.end.i.i144, %if.end33.list_del.exit146_crit_edge
  %62 = ptrtoint ptr %mbox.1167 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %mbox.1167, align 4
  %prev.i145 = getelementptr inbounds %struct.list_head, ptr %mbox.1167, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i145 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i145, align 4
  %64 = ptrtoint ptr %mbox_mem_pool35 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mbox_mem_pool35, align 8
  tail call void @mempool_free(ptr noundef %mbox.1167, ptr noundef %65) #5
  %cmp25.not = icmp eq ptr %next_mbox.1169, %mboxq_cmpl
  br i1 %cmp25.not, label %list_del.exit146.for.end42_crit_edge, label %list_del.exit146.for.body27_crit_edge

list_del.exit146.for.body27_crit_edge:            ; preds = %list_del.exit146
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body27

list_del.exit146.for.end42_crit_edge:             ; preds = %list_del.exit146
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end42

for.end42:                                        ; preds = %list_del.exit146.for.end42_crit_edge, %for.end.for.end42_crit_edge
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  tail call void @_raw_spin_lock_irq(ptr noundef %hbalock) #5
  %sli_flag = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 1
  %66 = ptrtoint ptr %sli_flag to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sli_flag, align 4
  %and = and i32 %67, -257
  store i32 %and, ptr %sli_flag, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #5
  %mbox_active = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 7
  %68 = ptrtoint ptr %mbox_active to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mbox_active, align 4
  %tobool44.not = icmp eq ptr %69, null
  br i1 %tobool44.not, label %for.end42.if.end55_crit_edge, label %if.then45

for.end42.if.end55_crit_edge:                     ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then45:                                        ; preds = %for.end42
  %ctx_buf47 = getelementptr inbounds %struct.lpfcMboxq, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %ctx_buf47 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx_buf47, align 4
  %tobool48.not = icmp eq ptr %71, null
  br i1 %tobool48.not, label %if.then45.if.end52_crit_edge, label %if.then49

if.then45.if.end52_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then49:                                        ; preds = %if.then45
  %virt50 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %virt50 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %virt50, align 4
  %phys51 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %71, i32 0, i32 2
  %74 = ptrtoint ptr %phys51 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %phys51, align 4
  %call2.i148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock) #5
  %current_count.i.i149 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 2
  %76 = ptrtoint ptr %current_count.i.i149 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %current_count.i.i149, align 4
  %max_count.i.i150 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 1
  %78 = ptrtoint ptr %max_count.i.i150 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_count.i.i150, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp.i.i151 = icmp ult i32 %77, %79
  br i1 %cmp.i.i151, label %if.then.i.i156, label %if.else.i.i158

if.then.i.i156:                                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_mbuf_safety_pool.i.i152 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230
  %80 = ptrtoint ptr %lpfc_mbuf_safety_pool.i.i152 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lpfc_mbuf_safety_pool.i.i152, align 4
  %virt2.i.i153 = getelementptr %struct.lpfc_dmabuf, ptr %81, i32 %77, i32 1
  %82 = ptrtoint ptr %virt2.i.i153 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %73, ptr %virt2.i.i153, align 4
  %83 = load ptr, ptr %lpfc_mbuf_safety_pool.i.i152, align 4
  %84 = ptrtoint ptr %current_count.i.i149 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %current_count.i.i149, align 4
  %phys.i.i154 = getelementptr %struct.lpfc_dmabuf, ptr %83, i32 %85, i32 2
  %86 = ptrtoint ptr %phys.i.i154 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %75, ptr %phys.i.i154, align 4
  %87 = load i32, ptr %current_count.i.i149, align 4
  %inc.i.i155 = add i32 %87, 1
  store i32 %inc.i.i155, ptr %current_count.i.i149, align 4
  br label %lpfc_mbuf_free.exit159

if.else.i.i158:                                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_mbuf_pool.i.i157 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 224
  %88 = ptrtoint ptr %lpfc_mbuf_pool.i.i157 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lpfc_mbuf_pool.i.i157, align 4
  tail call void @dma_pool_free(ptr noundef %89, ptr noundef %73, i32 noundef %75) #5
  br label %lpfc_mbuf_free.exit159

lpfc_mbuf_free.exit159:                           ; preds = %if.else.i.i158, %if.then.i.i156
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call2.i148) #5
  tail call void @kfree(ptr noundef nonnull %71) #5
  br label %if.end52

if.end52:                                         ; preds = %lpfc_mbuf_free.exit159, %if.then45.if.end52_crit_edge
  %mbox_mem_pool53 = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  %90 = ptrtoint ptr %mbox_mem_pool53 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mbox_mem_pool53, align 8
  tail call void @mempool_free(ptr noundef nonnull %69, ptr noundef %91) #5
  %92 = ptrtoint ptr %mbox_active to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %mbox_active, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end52, %for.end42.if.end55_crit_edge
  tail call void @lpfc_mem_free(ptr noundef %phba)
  %lpfc_sg_dma_buf_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 223
  %93 = ptrtoint ptr %lpfc_sg_dma_buf_pool to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lpfc_sg_dma_buf_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %94) #5
  %95 = ptrtoint ptr %lpfc_sg_dma_buf_pool to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %lpfc_sg_dma_buf_pool, align 8
  %lpfc_cmd_rsp_buf_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 229
  %96 = ptrtoint ptr %lpfc_cmd_rsp_buf_pool to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lpfc_cmd_rsp_buf_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %97) #5
  %98 = ptrtoint ptr %lpfc_cmd_rsp_buf_pool to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %lpfc_cmd_rsp_buf_pool, align 8
  %cgn_i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 413
  %99 = ptrtoint ptr %cgn_i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cgn_i, align 8
  %tobool58.not = icmp eq ptr %100, null
  br i1 %tobool58.not, label %if.end55.if.end66_crit_edge, label %if.then59

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %101 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %virt61 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %100, i32 0, i32 1
  %103 = ptrtoint ptr %virt61 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %virt61, align 4
  %phys63 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %100, i32 0, i32 2
  %105 = ptrtoint ptr %phys63 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %phys63, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 1416, ptr noundef %104, i32 noundef %106, i32 noundef 0) #5
  %107 = ptrtoint ptr %cgn_i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cgn_i, align 8
  tail call void @kfree(ptr noundef %108) #5
  %109 = ptrtoint ptr %cgn_i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %cgn_i, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then59, %if.end55.if.end66_crit_edge
  %rxtable = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 406
  %110 = ptrtoint ptr %rxtable to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rxtable, align 8
  tail call void @kfree(ptr noundef %111) #5
  %112 = ptrtoint ptr %rxtable to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %rxtable, align 8
  %iocbq_lookup = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 29, i32 10
  %113 = ptrtoint ptr %iocbq_lookup to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %iocbq_lookup, align 8
  tail call void @kfree(ptr noundef %114) #5
  %115 = ptrtoint ptr %iocbq_lookup to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %iocbq_lookup, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %virt, i32 noundef %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock) #5
  %current_count.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 2
  %0 = ptrtoint ptr %current_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_count.i, align 4
  %max_count.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 1
  %2 = ptrtoint ptr %max_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_mbuf_safety_pool.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230
  %4 = ptrtoint ptr %lpfc_mbuf_safety_pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lpfc_mbuf_safety_pool.i, align 4
  %virt2.i = getelementptr %struct.lpfc_dmabuf, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %virt2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %virt, ptr %virt2.i, align 4
  %7 = load ptr, ptr %lpfc_mbuf_safety_pool.i, align 4
  %8 = ptrtoint ptr %current_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_count.i, align 4
  %phys.i = getelementptr %struct.lpfc_dmabuf, ptr %7, i32 %9, i32 2
  %10 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dma, ptr %phys.i, align 4
  %11 = load i32, ptr %current_count.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %current_count.i, align 4
  br label %__lpfc_mbuf_free.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_mbuf_pool.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 224
  %12 = ptrtoint ptr %lpfc_mbuf_pool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lpfc_mbuf_pool.i, align 4
  tail call void @dma_pool_free(ptr noundef %13, ptr noundef %virt, i32 noundef %dma) #5
  br label %__lpfc_mbuf_free.exit

__lpfc_mbuf_free.exit:                            ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lpfc_mbuf_alloc(ptr noundef %phba, i32 noundef %mem_flags, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lpfc_mbuf_safety_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230
  %lpfc_mbuf_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 224
  %0 = ptrtoint ptr %lpfc_mbuf_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpfc_mbuf_pool, align 4
  %call = tail call ptr @dma_pool_alloc(ptr noundef %1, i32 noundef 3264, ptr noundef %handle) #5
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %mem_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true7

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %current_count = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 2
  %2 = ptrtoint ptr %current_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.end_crit_edge, label %if.then

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i32 %3, -1
  %4 = ptrtoint ptr %current_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %current_count, align 4
  %5 = ptrtoint ptr %lpfc_mbuf_safety_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lpfc_mbuf_safety_pool, align 4
  %virt = getelementptr %struct.lpfc_dmabuf, ptr %6, i32 %dec, i32 1
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt, align 4
  %phys = getelementptr %struct.lpfc_dmabuf, ptr %6, i32 %dec, i32 2
  %9 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phys, align 4
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %handle, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %8, %if.then ], [ null, %land.lhs.true7.if.end_crit_edge ], [ null, %land.lhs.true.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call3) #5
  ret ptr %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__lpfc_mbuf_free(ptr nocapture noundef %phba, ptr noundef %virt, i32 noundef %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %current_count = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 2
  %0 = ptrtoint ptr %current_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_count, align 4
  %max_count = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 1
  %2 = ptrtoint ptr %max_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_mbuf_safety_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230
  %4 = ptrtoint ptr %lpfc_mbuf_safety_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lpfc_mbuf_safety_pool, align 4
  %virt2 = getelementptr %struct.lpfc_dmabuf, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %virt2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %virt, ptr %virt2, align 4
  %7 = load ptr, ptr %lpfc_mbuf_safety_pool, align 4
  %8 = ptrtoint ptr %current_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_count, align 4
  %phys = getelementptr %struct.lpfc_dmabuf, ptr %7, i32 %9, i32 2
  %10 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dma, ptr %phys, align 4
  %11 = load i32, ptr %current_count, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %current_count, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_mbuf_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 224
  %12 = ptrtoint ptr %lpfc_mbuf_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lpfc_mbuf_pool, align 4
  tail call void @dma_pool_free(ptr noundef %13, ptr noundef %virt, i32 noundef %dma) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lpfc_nvmet_buf_alloc(ptr nocapture noundef readonly %phba, i32 noundef %mem_flags, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lpfc_sg_dma_buf_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 223
  %0 = ptrtoint ptr %lpfc_sg_dma_buf_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpfc_sg_dma_buf_pool, align 8
  %call = tail call ptr @dma_pool_alloc(ptr noundef %1, i32 noundef 3264, ptr noundef %handle) #5
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_nvmet_buf_free(ptr nocapture noundef readonly %phba, ptr noundef %virt, i32 noundef %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lpfc_sg_dma_buf_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 223
  %0 = ptrtoint ptr %lpfc_sg_dma_buf_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpfc_sg_dma_buf_pool, align 8
  tail call void @dma_pool_free(ptr noundef %1, ptr noundef %virt, i32 noundef %dma) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lpfc_els_hbq_alloc(ptr nocapture noundef readonly %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 84) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lpfc_hbq_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 228
  %1 = ptrtoint ptr %lpfc_hbq_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lpfc_hbq_pool, align 4
  %phys = getelementptr inbounds %struct.hbq_dmabuf, ptr %call7.i.i, i32 0, i32 1, i32 2
  %call1 = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef %phys) #5
  %virt = getelementptr inbounds %struct.hbq_dmabuf, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %virt, align 4
  %tobool5.not = icmp eq ptr %call1, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %total_size = getelementptr inbounds %struct.hbq_dmabuf, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %total_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1024, ptr %total_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end7 ], [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_els_hbq_free(ptr nocapture noundef readonly %phba, ptr noundef %hbqbp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lpfc_hbq_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 228
  %0 = ptrtoint ptr %lpfc_hbq_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpfc_hbq_pool, align 4
  %virt = getelementptr inbounds %struct.hbq_dmabuf, ptr %hbqbp, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.hbq_dmabuf, ptr %hbqbp, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys, align 4
  tail call void @dma_pool_free(ptr noundef %1, ptr noundef %3, i32 noundef %5) #5
  tail call void @kfree(ptr noundef %hbqbp) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lpfc_sli4_rb_alloc(ptr nocapture noundef readonly %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 84) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lpfc_hrb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 225
  %1 = ptrtoint ptr %lpfc_hrb_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lpfc_hrb_pool, align 8
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i.i, i32 0, i32 2
  %call1 = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef %phys) #5
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %virt, align 8
  %tobool5.not = icmp eq ptr %call1, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %lpfc_drb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 226
  %4 = ptrtoint ptr %lpfc_drb_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lpfc_drb_pool, align 4
  %phys8 = getelementptr inbounds %struct.hbq_dmabuf, ptr %call7.i.i, i32 0, i32 1, i32 2
  %call9 = tail call ptr @dma_pool_alloc(ptr noundef %5, i32 noundef 3264, ptr noundef %phys8) #5
  %virt11 = getelementptr inbounds %struct.hbq_dmabuf, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %virt11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %virt11, align 4
  %tobool14.not = icmp eq ptr %call9, null
  br i1 %tobool14.not, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %lpfc_hrb_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lpfc_hrb_pool, align 8
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt, align 8
  %11 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys, align 4
  tail call void @dma_pool_free(ptr noundef %8, ptr noundef %10, i32 noundef %12) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %total_size = getelementptr inbounds %struct.hbq_dmabuf, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %total_size to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2048, ptr %total_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end21 ], [ null, %if.then15 ], [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_sli4_rb_free(ptr nocapture noundef readonly %phba, ptr noundef %dmab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lpfc_hrb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 225
  %0 = ptrtoint ptr %lpfc_hrb_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpfc_hrb_pool, align 8
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %dmab, i32 0, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %dmab, i32 0, i32 2
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys, align 4
  tail call void @dma_pool_free(ptr noundef %1, ptr noundef %3, i32 noundef %5) #5
  %lpfc_drb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 226
  %6 = ptrtoint ptr %lpfc_drb_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lpfc_drb_pool, align 4
  %virt2 = getelementptr inbounds %struct.hbq_dmabuf, ptr %dmab, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %virt2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt2, align 4
  %phys4 = getelementptr inbounds %struct.hbq_dmabuf, ptr %dmab, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %phys4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phys4, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef %9, i32 noundef %11) #5
  tail call void @kfree(ptr noundef %dmab) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lpfc_sli4_nvmet_alloc(ptr nocapture noundef readonly %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lpfc_hrb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 225
  %1 = ptrtoint ptr %lpfc_hrb_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lpfc_hrb_pool, align 8
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i.i, i32 0, i32 2
  %call1 = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef %phys) #5
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %virt, align 8
  %tobool5.not = icmp eq ptr %call1, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %lpfc_nvmet_drb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 227
  %4 = ptrtoint ptr %lpfc_nvmet_drb_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lpfc_nvmet_drb_pool, align 8
  %phys8 = getelementptr inbounds %struct.rqb_dmabuf, ptr %call7.i.i, i32 0, i32 1, i32 2
  %call9 = tail call ptr @dma_pool_alloc(ptr noundef %5, i32 noundef 3264, ptr noundef %phys8) #5
  %virt11 = getelementptr inbounds %struct.rqb_dmabuf, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %virt11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %virt11, align 4
  %tobool14.not = icmp eq ptr %call9, null
  br i1 %tobool14.not, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %lpfc_hrb_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lpfc_hrb_pool, align 8
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt, align 8
  %11 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys, align 4
  tail call void @dma_pool_free(ptr noundef %8, ptr noundef %10, i32 noundef %12) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %total_size = getelementptr inbounds %struct.rqb_dmabuf, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %total_size to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 128, ptr %total_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end21 ], [ null, %if.then15 ], [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_sli4_nvmet_free(ptr nocapture noundef readonly %phba, ptr noundef %dmab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lpfc_hrb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 225
  %0 = ptrtoint ptr %lpfc_hrb_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpfc_hrb_pool, align 8
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %dmab, i32 0, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %dmab, i32 0, i32 2
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys, align 4
  tail call void @dma_pool_free(ptr noundef %1, ptr noundef %3, i32 noundef %5) #5
  %lpfc_nvmet_drb_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 227
  %6 = ptrtoint ptr %lpfc_nvmet_drb_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lpfc_nvmet_drb_pool, align 8
  %virt2 = getelementptr inbounds %struct.rqb_dmabuf, ptr %dmab, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %virt2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt2, align 4
  %phys4 = getelementptr inbounds %struct.rqb_dmabuf, ptr %dmab, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %phys4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phys4, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef %9, i32 noundef %11) #5
  tail call void @kfree(ptr noundef %dmab) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_in_buf_free(ptr noundef %phba, ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sli3_options = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 32
  %0 = ptrtoint ptr %sli3_options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sli3_options, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else17, label %if.then2

if.then2:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %mp, i32 -20
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock) #5
  %hbq_in_use = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 175
  %2 = ptrtoint ptr %hbq_in_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hbq_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call5) #5
  br label %cleanup

if.end11:                                         ; preds = %if.then2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mp) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_del.exit_crit_edge

if.end11.list_del.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mp, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end11.list_del.exit_crit_edge
  %10 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %mp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mp, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tag = getelementptr i8, ptr %mp, i32 24
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp12 = icmp eq i32 %13, -1
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %hbq_free_buffer = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 177, i32 0, i32 8
  %14 = ptrtoint ptr %hbq_free_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hbq_free_buffer, align 4
  tail call void %15(ptr noundef %phba, ptr noundef %add.ptr) #5
  br label %if.end15

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lpfc_sli_free_hbq(ptr noundef %phba, ptr noundef %add.ptr) #5
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call5) #5
  br label %cleanup

if.else17:                                        ; preds = %if.end
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %mp, i32 0, i32 1
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %mp, i32 0, i32 2
  %18 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phys, align 4
  %hbalock.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock.i) #5
  %current_count.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 2
  %20 = ptrtoint ptr %current_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_count.i.i, align 4
  %max_count.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230, i32 1
  %22 = ptrtoint ptr %max_count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i.i = icmp ult i32 %21, %23
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_mbuf_safety_pool.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 230
  %24 = ptrtoint ptr %lpfc_mbuf_safety_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lpfc_mbuf_safety_pool.i.i, align 4
  %virt2.i.i = getelementptr %struct.lpfc_dmabuf, ptr %25, i32 %21, i32 1
  %26 = ptrtoint ptr %virt2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %17, ptr %virt2.i.i, align 4
  %27 = load ptr, ptr %lpfc_mbuf_safety_pool.i.i, align 4
  %28 = ptrtoint ptr %current_count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %current_count.i.i, align 4
  %phys.i.i = getelementptr %struct.lpfc_dmabuf, ptr %27, i32 %29, i32 2
  %30 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %19, ptr %phys.i.i, align 4
  %31 = load i32, ptr %current_count.i.i, align 4
  %inc.i.i = add i32 %31, 1
  store i32 %inc.i.i, ptr %current_count.i.i, align 4
  br label %lpfc_mbuf_free.exit

if.else.i.i:                                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  %lpfc_mbuf_pool.i.i = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 224
  %32 = ptrtoint ptr %lpfc_mbuf_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lpfc_mbuf_pool.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %33, ptr noundef %17, i32 noundef %19) #5
  br label %lpfc_mbuf_free.exit

lpfc_mbuf_free.exit:                              ; preds = %if.else.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock.i, i32 noundef %call2.i) #5
  tail call void @kfree(ptr noundef nonnull %mp) #5
  br label %cleanup

cleanup:                                          ; preds = %lpfc_mbuf_free.exit, %if.end15, %if.then9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_sli_free_hbq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_rq_buf_free(ptr noundef %phba, ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  %hrqe = alloca %struct.lpfc_rqe, align 4
  %drqe = alloca %struct.lpfc_rqe, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hrqe) #5
  %0 = getelementptr inbounds %struct.lpfc_rqe, ptr %hrqe, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %drqe) #5
  %1 = getelementptr inbounds %struct.lpfc_rqe, ptr %drqe, i32 0, i32 1
  %tobool.not = icmp eq ptr %mp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hrq = getelementptr inbounds %struct.rqb_dmabuf, ptr %mp, i32 0, i32 5
  %2 = ptrtoint ptr %hrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hrq, align 4
  %rqbp1 = getelementptr inbounds %struct.lpfc_queue, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %rqbp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rqbp1, align 4
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hbalock) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mp) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mp, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %mp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mp, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %mp, i32 0, i32 2
  %14 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phys, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %0, align 4
  %17 = ptrtoint ptr %hrqe to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hrqe, align 4
  %phys15 = getelementptr inbounds %struct.rqb_dmabuf, ptr %mp, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %phys15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phys15, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %1, align 4
  %21 = ptrtoint ptr %drqe to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %drqe, align 4
  %22 = ptrtoint ptr %hrq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hrq, align 4
  %drq = getelementptr inbounds %struct.rqb_dmabuf, ptr %mp, i32 0, i32 6
  %24 = ptrtoint ptr %drq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drq, align 4
  %call28 = call i32 @lpfc_sli4_rq_put(ptr noundef %23, ptr noundef %25, ptr noundef nonnull %hrqe, ptr noundef nonnull %drqe) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.body32, label %if.else73

do.body32:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %26 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %28 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %brd_no, align 4
  %30 = ptrtoint ptr %hrq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hrq, align 4
  %queue_id = getelementptr inbounds %struct.lpfc_queue, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %queue_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %queue_id, align 4
  %host_index = getelementptr inbounds %struct.lpfc_queue, ptr %31, i32 0, i32 22
  %34 = ptrtoint ptr %host_index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %host_index, align 4
  %hba_index = getelementptr inbounds %struct.lpfc_queue, ptr %31, i32 0, i32 23
  %36 = ptrtoint ptr %hba_index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hba_index, align 8
  %entry_count = getelementptr inbounds %struct.lpfc_queue, ptr %31, i32 0, i32 14
  %38 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %entry_count, align 4
  %40 = ptrtoint ptr %drq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %drq, align 4
  %host_index50 = getelementptr inbounds %struct.lpfc_queue, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %host_index50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %host_index50, align 4
  %hba_index52 = getelementptr inbounds %struct.lpfc_queue, ptr %41, i32 0, i32 23
  %44 = ptrtoint ptr %hba_index52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hba_index52, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %29, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %43, i32 noundef %45) #9
  %rqb_free_buffer = getelementptr inbounds %struct.lpfc_rqb, ptr %5, i32 0, i32 4
  %46 = ptrtoint ptr %rqb_free_buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rqb_free_buffer, align 4
  call void %47(ptr noundef %phba, ptr noundef nonnull %mp) #5
  br label %if.end76

if.else73:                                        ; preds = %list_del.exit
  %rqb_buffer_list = getelementptr inbounds %struct.lpfc_rqb, ptr %5, i32 0, i32 2
  %prev.i117 = getelementptr inbounds %struct.lpfc_rqb, ptr %5, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i117, align 4
  %call.i.i118 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %mp, ptr noundef %49, ptr noundef %rqb_buffer_list) #5
  br i1 %call.i.i118, label %if.end.i.i119, label %if.else73.list_add_tail.exit_crit_edge

if.else73.list_add_tail.exit_crit_edge:           ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i119:                                    ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %mp, ptr %prev.i117, align 4
  %51 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %rqb_buffer_list, ptr %mp, align 4
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %mp, ptr %49, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i119, %if.else73.list_add_tail.exit_crit_edge
  %buffer_count = getelementptr inbounds %struct.lpfc_rqb, ptr %5, i32 0, i32 1
  %54 = ptrtoint ptr %buffer_count to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %buffer_count, align 2
  %inc = add i16 %55, 1
  store i16 %inc, ptr %buffer_count, align 2
  br label %if.end76

if.end76:                                         ; preds = %list_add_tail.exit, %do.body32
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hbalock, i32 noundef %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %drqe) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hrqe) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli4_rq_put(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/lpfc/lpfc_mem.c", i32 92, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/lpfc/lpfc_mem.c", i32 131, i32 41}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/lpfc/lpfc_mem.c", i32 137, i32 41}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/lpfc/lpfc_mem.c", i32 144, i32 41}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/lpfc/lpfc_mem.c", i32 194, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/lpfc/lpfc_mem.c", i32 198, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @lpfc_nvmet_mem_alloc._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @lpfc_nvmet_mem_alloc._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/lpfc/lpfc_mem.c", i32 737, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @lpfc_rq_buf_free._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @lpfc_rq_buf_free._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
