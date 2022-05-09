; ModuleID = '/llk/IR_all_yes/drivers/scsi/lpfc/lpfc_vport.c_pt.bc'
source_filename = "../drivers/scsi/lpfc/lpfc_vport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lpfc_vport = type { ptr, %struct.list_head, i8, i32, i16, i16, i8, i32, i32, %struct.list_head, i16, i16, i16, i16, i16, i16, i16, i16, %struct.serv_parm, i32, i32, %struct.lpfc_name, %struct.lpfc_name, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], %struct.lpfc_name, %struct.lpfc_name, %struct.lpfc_work_evt, %struct.timer_list, i8, i32, %struct.spinlock, i32, %struct.timer_list, %struct.timer_list, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, [256 x %struct.hlist_head], %struct.rwlock_t, %struct.lpfc_vmid_priority_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i8, i8, %struct.list_head, i32, i32, i16, i32, i32, ptr, i8, i32, i32 }
%struct.serv_parm = type { %struct.csp, %struct.lpfc_name, %struct.lpfc_name, %struct.class_parms, %struct.class_parms, %struct.class_parms, %struct.class_parms, %union.anon.118 }
%struct.csp = type { i8, i8, i8, i8, i16, i8, i8, %union.anon.114, i32 }
%union.anon.114 = type { i32 }
%struct.class_parms = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.118 = type { %struct.anon.119, [8 x i8] }
%struct.anon.119 = type { i32, i32 }
%struct.lpfc_name = type { %union.anon.116 }
%union.anon.116 = type { i64 }
%struct.lpfc_work_evt = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lpfc_vmid_priority_info = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.lpfc_sli = type { i32, i32, ptr, %struct.lpfc_sli_stat, %struct.list_head, i16, i16, ptr, %struct.list_head, %struct.timer_list, ptr, i32, i16, i64, %struct.lpfc_lnk_stat }
%struct.lpfc_sli_stat = type { i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.lpfc_lnk_stat = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_trunk_link = type { %struct.lpfc_trunk_link_state, %struct.lpfc_trunk_link_state, %struct.lpfc_trunk_link_state, %struct.lpfc_trunk_link_state }
%struct.lpfc_trunk_link_state = type { i32, i8 }
%struct.lpfc_mbox_ext_buf_ctx = type { i32, i32, i32, i32, i32, i32, ptr, %struct.list_head }
%struct.lpfc_dmabuf = type { %struct.list_head, ptr, i32, i32 }
%struct.lpfc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_nodelist = type { %struct.list_head, %struct.serv_parm, %struct.lpfc_name, %struct.lpfc_name, %struct.spinlock, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, %struct.timer_list, ptr, ptr, ptr, ptr, %struct.lpfc_work_evt, %struct.lpfc_work_evt, %struct.lpfc_work_evt, %struct.kref, %struct.atomic_t, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.lpfc_vpd = type { i32, i32, %struct.anon.209, %struct.anon.210 }
%struct.anon.209 = type { i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, i32, [16 x i8], i32, [16 x i8], i32, [16 x i8] }
%struct.anon.210 = type { i32 }
%struct.hbq_s = type { i16, i16, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.lpfc_dma_pool = type { ptr, i32, i32 }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.lpfc_fcf = type { i16, i32, i16, i32, i32, %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec, %struct.list_head, [32 x %struct.lpfc_fcf_pri], i32, %struct.timer_list, ptr }
%struct.lpfc_fcf_rec = type { [8 x i8], [8 x i8], [6 x i8], i16, i32, i16, i32, i32 }
%struct.lpfc_fcf_pri = type { %struct.list_head, %struct.lpfc_fcf_pri_rec }
%struct.lpfc_fcf_pri_rec = type { i16, i16, i32 }
%struct.unsol_rcv_ct_ctx = type { i32, i32, i32, i16, i16 }
%struct.lpfc_ras_fwlog = type { ptr, i32, i32, %struct.lpfc_dmabuf, %struct.list_head, i8, i8, i32 }
%struct.lpfc_cgn_param = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lpfc_cgn_acqe_stat = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.timespec64 = type { i64, i32 }
%struct.atomic64_t = type { i64 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.dbg_log_ent = type { [256 x i8], i64 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.211, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.211 = type { ptr }
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
%struct.lpfc_mcqe = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.179, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.147 }
%struct.llist_node = type { ptr }
%union.anon.147 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.179 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.15 = type { i16, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 311, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%d:1808 Create VPORT failed: NPIV is not enabled: SLImode:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpfc_vport_create\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/lpfc/lpfc_vport.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr = internal global ptr @lpfc_vport_create._entry, section ".printk_index", align 4
@lpfc_vport_create._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 320, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%d:3189 Create VPORT failed: NPIV is not supported on NVME Target\0A\00", [61 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.7 = internal global ptr @lpfc_vport_create._entry.5, section ".printk_index", align 4
@lpfc_vport_create._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 330, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%d:1809 Create VPORT failed: Max VPORTs (%d) exceeded\0A\00", [41 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.10 = internal global ptr @lpfc_vport_create._entry.8, section ".printk_index", align 4
@lpfc_vport_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 339, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%d:1810 Create VPORT failed: Cannot get instance number\0A\00", [39 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.13 = internal global ptr @lpfc_vport_create._entry.11, section ".printk_index", align 4
@lpfc_vport_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 348, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d:1811 Create VPORT failed: vpi x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.16 = internal global ptr @lpfc_vport_create._entry.14, section ".printk_index", align 4
@lpfc_vport_create._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 360, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%d:(%d):1831 Create VPORT Interrupted.\0A\00", [56 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.19 = internal global ptr @lpfc_vport_create._entry.17, section ".printk_index", align 4
@lpfc_vport_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 365, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%d:(%d):1813 Create VPORT failed. Cannot get sparam\0A\00", [43 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.22 = internal global ptr @lpfc_vport_create._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WWNN\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WWPN\00", [27 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 383, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%d:(%d):1821 Create VPORT failed. Invalid WWN format\0A\00", [42 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.27 = internal global ptr @lpfc_vport_create._entry.25, section ".printk_index", align 4
@lpfc_vport_create._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 393, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%d:(%d):1823 Create VPORT failed. Duplicate WWN on HBA\0A\00", [40 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.30 = internal global ptr @lpfc_vport_create._entry.28, section ".printk_index", align 4
@lpfc_vport_create._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 431, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d:1838 Failed to INIT_VPI on vpi %d status %d\0A\00", [48 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.33 = internal global ptr @lpfc_vport_create._entry.31, section ".printk_index", align 4
@lpfc_vport_create._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 473, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d:(%d):0262 No NPIV Fabric support\0A\00", [59 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.36 = internal global ptr @lpfc_vport_create._entry.34, section ".printk_index", align 4
@lpfc_vport_create._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 482, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%d:(%d):1825 Vport Created.\0A\00", [35 x i8] zeroinitializer }, align 32
@lpfc_vport_create._entry_ptr.39 = internal global ptr @lpfc_vport_create._entry.37, section ".printk_index", align 4
@lpfc_vport_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 653, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%d:(%d):1812 vport_delete failed: Cannot delete physical host\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpfc_vport_delete\00", [46 x i8] zeroinitializer }, align 32
@lpfc_vport_delete._entry_ptr = internal global ptr @lpfc_vport_delete._entry, section ".printk_index", align 4
@lpfc_vport_delete._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 662, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%d:(%d):1837 vport_delete failed: Cannot delete static vport.\0A\00", [33 x i8] zeroinitializer }, align 32
@lpfc_vport_delete._entry_ptr.44 = internal global ptr @lpfc_vport_delete._entry.42, section ".printk_index", align 4
@lpfc_vport_delete._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 719, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%d:1829 CT command failed to delete objects on fabric, rc %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lpfc_vport_delete._entry_ptr.48 = internal global ptr @lpfc_vport_delete._entry.45, section ".printk_index", align 4
@lpfc_vport_delete._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.41, ptr @.str.3, i32 772, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%d:(%d):1828 Vport Deleted.\0A\00", [35 x i8] zeroinitializer }, align 32
@lpfc_vport_delete._entry_ptr.51 = internal global ptr @lpfc_vport_delete._entry.49, section ".printk_index", align 4
@lpfc_create_vport_work_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 795, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%d:(%d):1801 Create vport work array FAILED: cannot do scsi_host_get\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lpfc_create_vport_work_array\00", [35 x i8] zeroinitializer }, align 32
@lpfc_create_vport_work_array._entry_ptr = internal global ptr @lpfc_create_vport_work_array._entry, section ".printk_index", align 4
@lpfc_alloc_bucket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 863, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%d:(%d):0287 lpfc_alloc_bucket failed to allocate statistical data buffer DID 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpfc_alloc_bucket\00", [46 x i8] zeroinitializer }, align 32
@lpfc_alloc_bucket._entry_ptr = internal global ptr @lpfc_alloc_bucket._entry, section ".printk_index", align 4
@lpfc_vport_sparm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 150, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%d:(%d):1830 Signal aborted mbxCmd x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpfc_vport_sparm\00", [47 x i8] zeroinitializer }, align 32
@lpfc_vport_sparm._entry_ptr = internal global ptr @lpfc_vport_sparm._entry, section ".printk_index", align 4
@lpfc_vport_sparm._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 160, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%d:(%d):1818 VPort failed init, mbxCmd x%x READ_SPARM mbxStatus x%x, rc = x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@lpfc_vport_sparm._entry_ptr.60 = internal global ptr @lpfc_vport_sparm._entry.58, section ".printk_index", align 4
@lpfc_valid_wwn_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 200, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%d:1822 Invalid %s: %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpfc_valid_wwn_format\00", [42 x i8] zeroinitializer }, align 32
@lpfc_valid_wwn_format._entry_ptr = internal global ptr @lpfc_valid_wwn_format._entry, section ".printk_index", align 4
@disable_vport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 580, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d:(%d):1826 Vport Disabled.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disable_vport\00", [18 x i8] zeroinitializer }, align 32
@disable_vport._entry_ptr = internal global ptr @disable_vport._entry, section ".printk_index", align 4
@enable_vport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 620, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d:(%d):0264 No NPIV Fabric support\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enable_vport\00", [19 x i8] zeroinitializer }, align 32
@enable_vport._entry_ptr = internal global ptr @enable_vport._entry, section ".printk_index", align 4
@enable_vport._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 628, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%d:(%d):1827 Vport Enabled.\0A\00", [35 x i8] zeroinitializer }, align 32
@enable_vport._entry_ptr.69 = internal global ptr @enable_vport._entry.67, section ".printk_index", align 4
@lpfc_send_npiv_logo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"&waitq\00", [25 x i8] zeroinitializer }, align 32
@lpfc_send_npiv_logo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 528, ptr @.str.73, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d:(%d):1824 Issue LOGO completes with status %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpfc_send_npiv_logo\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lpfc_send_npiv_logo._entry_ptr = internal global ptr @lpfc_send_npiv_logo._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lpfc_discovery_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 271, ptr @.str.73, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"%d:(%d):1833 Vport discovery quiesce Wait: state x%x fc_flags x%x num_nodes x%x, waiting 1000 msecs total wait msecs x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpfc_discovery_wait\00", [44 x i8] zeroinitializer }, align 32
@lpfc_discovery_wait._entry_ptr = internal global ptr @lpfc_discovery_wait._entry, section ".printk_index", align 4
@lpfc_discovery_wait._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 281, ptr @.str.73, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%d:(%d):1834 Vport discovery quiesced: state x%x fc_flags x%x wait msecs x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@lpfc_discovery_wait._entry_ptr.78 = internal global ptr @lpfc_discovery_wait._entry.76, section ".printk_index", align 4
@lpfc_discovery_wait._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.3, i32 291, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%d:(%d):1835 Vport discovery quiesce failed: state x%x fc_flags x%x wait msecs x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@lpfc_discovery_wait._entry_ptr.81 = internal global ptr @lpfc_discovery_wait._entry.79, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.lpfc_vport_set_state = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 308, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 318, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 327, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 337, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 347, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 359, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 363, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 379, i32 63 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 380, i32 63 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 381, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 391, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 429, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 472, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 481, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 651, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 660, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 715, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 771, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 792, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 859, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 148, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 157, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 193, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 579, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 619, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 627, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 494, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 526, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 264, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 275, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.305 = private constant [34 x i8] c"../drivers/scsi/lpfc/lpfc_vport.c\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 287, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [34 x i8] c"switch.table.lpfc_vport_set_state\00", align 1
@llvm.compiler.used = appending global [104 x ptr] [ptr @disable_vport._entry, ptr @disable_vport._entry_ptr, ptr @enable_vport._entry, ptr @enable_vport._entry.67, ptr @enable_vport._entry_ptr, ptr @enable_vport._entry_ptr.69, ptr @lpfc_alloc_bucket._entry, ptr @lpfc_alloc_bucket._entry_ptr, ptr @lpfc_create_vport_work_array._entry, ptr @lpfc_create_vport_work_array._entry_ptr, ptr @lpfc_discovery_wait._entry, ptr @lpfc_discovery_wait._entry.76, ptr @lpfc_discovery_wait._entry.79, ptr @lpfc_discovery_wait._entry_ptr, ptr @lpfc_discovery_wait._entry_ptr.78, ptr @lpfc_discovery_wait._entry_ptr.81, ptr @lpfc_send_npiv_logo._entry, ptr @lpfc_send_npiv_logo._entry_ptr, ptr @lpfc_valid_wwn_format._entry, ptr @lpfc_valid_wwn_format._entry_ptr, ptr @lpfc_vport_create._entry, ptr @lpfc_vport_create._entry.11, ptr @lpfc_vport_create._entry.14, ptr @lpfc_vport_create._entry.17, ptr @lpfc_vport_create._entry.20, ptr @lpfc_vport_create._entry.25, ptr @lpfc_vport_create._entry.28, ptr @lpfc_vport_create._entry.31, ptr @lpfc_vport_create._entry.34, ptr @lpfc_vport_create._entry.37, ptr @lpfc_vport_create._entry.5, ptr @lpfc_vport_create._entry.8, ptr @lpfc_vport_create._entry_ptr, ptr @lpfc_vport_create._entry_ptr.10, ptr @lpfc_vport_create._entry_ptr.13, ptr @lpfc_vport_create._entry_ptr.16, ptr @lpfc_vport_create._entry_ptr.19, ptr @lpfc_vport_create._entry_ptr.22, ptr @lpfc_vport_create._entry_ptr.27, ptr @lpfc_vport_create._entry_ptr.30, ptr @lpfc_vport_create._entry_ptr.33, ptr @lpfc_vport_create._entry_ptr.36, ptr @lpfc_vport_create._entry_ptr.39, ptr @lpfc_vport_create._entry_ptr.7, ptr @lpfc_vport_delete._entry, ptr @lpfc_vport_delete._entry.42, ptr @lpfc_vport_delete._entry.45, ptr @lpfc_vport_delete._entry.49, ptr @lpfc_vport_delete._entry_ptr, ptr @lpfc_vport_delete._entry_ptr.44, ptr @lpfc_vport_delete._entry_ptr.48, ptr @lpfc_vport_delete._entry_ptr.51, ptr @lpfc_vport_sparm._entry, ptr @lpfc_vport_sparm._entry.58, ptr @lpfc_vport_sparm._entry_ptr, ptr @lpfc_vport_sparm._entry_ptr.60, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @lpfc_send_npiv_logo.__key, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @switch.table.lpfc_vport_set_state], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_create._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_delete._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_delete._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_delete._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_create_vport_work_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_alloc_bucket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_sparm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_vport_sparm._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_valid_wwn_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_vport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_vport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_vport._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_send_npiv_logo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_send_npiv_logo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_discovery_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_discovery_wait._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfc_discovery_wait._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lpfc_vport_set_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lpfc_vport_set_state(ptr nocapture noundef %vport, i32 noundef %new_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %fc_vport1 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 67
  %0 = ptrtoint ptr %fc_vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fc_vport1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %new_state)
  %cmp.not = icmp eq i32 %new_state, 4
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %vport_last_state = getelementptr inbounds %struct.fc_vport, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %vport_last_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vport_last_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %new_state, ptr %1, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %switch.tableidx = add i32 %new_state, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 7
  br i1 %6, label %switch.hole_check, label %if.end4.sw.epilog_crit_edge

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end4
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 125, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.lpfc_vport_set_state, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %port_state6 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %9 = ptrtoint ptr %port_state6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.load, ptr %port_state6, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_alloc_vpi(ptr noundef %phba) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  tail call void @_raw_spin_lock_irq(ptr noundef %hbalock) #10
  %vpi_bmask = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 246
  %0 = ptrtoint ptr %vpi_bmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpi_bmask, align 4
  %max_vpi = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 242
  %2 = ptrtoint ptr %max_vpi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_vpi, align 4
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 1
  %call = tail call i32 @_find_next_zero_bit_be(ptr noundef %1, i32 noundef %add, i32 noundef 1) #10
  %4 = ptrtoint ptr %max_vpi to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_vpi, align 4
  %conv2 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv2)
  %cmp = icmp ugt i32 %call, %conv2
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %vpi_bmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vpi_bmask, align 4
  tail call void @_set_bit(i32 noundef %call, ptr noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %vpi.0 = phi i32 [ %call, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %8 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp5 = icmp eq i32 %9, 4
  br i1 %cmp5, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %vpi_used = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 60, i32 8
  %10 = ptrtoint ptr %vpi_used to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vpi_used, align 4
  %inc = add i16 %11, 1
  store i16 %inc, ptr %vpi_used, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #10
  ret i32 %vpi.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_vport_create(ptr noundef %fc_vport, i1 noundef zeroext %disable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ult i32 %5, 3
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %cfg_enable_npiv = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 82
  %6 = ptrtoint ptr %cfg_enable_npiv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg_enable_npiv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.do.body_crit_edge, label %if.end22

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #10
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %10 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brd_no, align 4
  %12 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sli_rev, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %13) #13
  br label %error_out

if.end22:                                         ; preds = %lor.lhs.false
  %nvmet_support = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 74
  %14 = ptrtoint ptr %nvmet_support to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nvmet_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not = icmp eq i8 %15, 0
  br i1 %tobool23.not, label %if.end58, label %do.body25

do.body25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #10
  %pcidev46 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %16 = ptrtoint ptr %pcidev46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev46, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %brd_no48 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %18 = ptrtoint ptr %brd_no48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brd_no48, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev47, ptr noundef nonnull @.str.6, i32 noundef %19) #13
  br label %error_out

if.end58:                                         ; preds = %if.end22
  %hbalock.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 221
  tail call void @_raw_spin_lock_irq(ptr noundef %hbalock.i) #10
  %vpi_bmask.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 246
  %20 = ptrtoint ptr %vpi_bmask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vpi_bmask.i, align 4
  %max_vpi.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 242
  %22 = ptrtoint ptr %max_vpi.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max_vpi.i, align 4
  %conv.i = zext i16 %23 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %21, i32 noundef %add.i, i32 noundef 1) #10
  %24 = ptrtoint ptr %max_vpi.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_vpi.i, align 4
  %conv2.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv2.i)
  %cmp.i = icmp ugt i32 %call.i, %conv2.i
  br i1 %cmp.i, label %if.end58.if.end.i_crit_edge, label %if.else.i

if.end58.if.end.i_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %vpi_bmask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vpi_bmask.i, align 4
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %27) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end58.if.end.i_crit_edge
  %vpi.0.i = phi i32 [ %call.i, %if.else.i ], [ 0, %if.end58.if.end.i_crit_edge ]
  %28 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp5.i = icmp eq i32 %29, 4
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.lpfc_alloc_vpi.exit_crit_edge

if.end.i.lpfc_alloc_vpi.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_alloc_vpi.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %vpi_used.i = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 60, i32 8
  %30 = ptrtoint ptr %vpi_used.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vpi_used.i, align 4
  %inc.i = add i16 %31, 1
  store i16 %inc.i, ptr %vpi_used.i, align 4
  br label %lpfc_alloc_vpi.exit

lpfc_alloc_vpi.exit:                              ; preds = %if.then7.i, %if.end.i.lpfc_alloc_vpi.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vpi.0.i)
  %cmp59 = icmp eq i32 %vpi.0.i, 0
  br i1 %cmp59, label %do.body62, label %if.end98

do.body62:                                        ; preds = %lpfc_alloc_vpi.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #10
  %pcidev83 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %32 = ptrtoint ptr %pcidev83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcidev83, align 4
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %brd_no85 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %34 = ptrtoint ptr %brd_no85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %brd_no85, align 4
  %36 = ptrtoint ptr %max_vpi.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max_vpi.i, align 4
  %conv86 = zext i16 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev84, ptr noundef nonnull @.str.9, i32 noundef %35, i32 noundef %conv86) #13
  br label %error_out

if.end98:                                         ; preds = %lpfc_alloc_vpi.exit
  %call99 = tail call i32 @lpfc_get_instance() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.end.i706, label %if.end136

if.end.i706:                                      ; preds = %if.end98
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #10
  %pcidev124 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %38 = ptrtoint ptr %pcidev124 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcidev124, align 4
  %dev125 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %brd_no126 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %40 = ptrtoint ptr %brd_no126 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %brd_no126, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev125, ptr noundef nonnull @.str.12, i32 noundef %41) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %hbalock.i) #10
  %42 = ptrtoint ptr %vpi_bmask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vpi_bmask.i, align 4
  tail call void @_clear_bit(i32 noundef %vpi.0.i, ptr noundef %43) #10
  %44 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp1.i = icmp eq i32 %45, 4
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i706.lpfc_free_vpi.exit_crit_edge

if.end.i706.lpfc_free_vpi.exit_crit_edge:         ; preds = %if.end.i706
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_free_vpi.exit

if.then2.i:                                       ; preds = %if.end.i706
  call void @__sanitizer_cov_trace_pc() #12
  %vpi_used.i707 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 25, i32 60, i32 8
  %46 = ptrtoint ptr %vpi_used.i707 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vpi_used.i707, align 4
  %dec.i = add i16 %47, -1
  store i16 %dec.i, ptr %vpi_used.i707, align 4
  br label %lpfc_free_vpi.exit

lpfc_free_vpi.exit:                               ; preds = %if.then2.i, %if.end.i706.lpfc_free_vpi.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock.i) #10
  br label %error_out

if.end136:                                        ; preds = %if.end98
  %dev137 = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 14
  %call138 = tail call ptr @lpfc_create_port(ptr noundef %3, i32 noundef %call99, ptr noundef %dev137) #10
  %tobool139.not = icmp eq ptr %call138, null
  br i1 %tobool139.not, label %do.body141, label %if.end174

do.body141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #10
  %pcidev162 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %48 = ptrtoint ptr %pcidev162 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcidev162, align 4
  %dev163 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %brd_no164 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %50 = ptrtoint ptr %brd_no164 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %brd_no164, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev163, ptr noundef nonnull @.str.15, i32 noundef %51, i32 noundef %vpi.0.i) #13
  tail call fastcc void @lpfc_free_vpi(ptr noundef %3, i32 noundef %vpi.0.i)
  br label %error_out

if.end174:                                        ; preds = %if.end136
  %conv175 = trunc i32 %vpi.0.i to i16
  %vpi176 = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 4
  %52 = ptrtoint ptr %vpi176 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv175, ptr %vpi176, align 4
  tail call void @lpfc_debugfs_initialize(ptr noundef nonnull %call138) #10
  %call177 = tail call fastcc i32 @lpfc_vport_sparm(ptr noundef %3, ptr noundef nonnull %call138)
  %53 = zext i32 %call177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call177, label %do.body217 [
    i32 0, label %if.end251
    i32 -4, label %if.end174.if.end250_crit_edge
  ]

if.end174.if.end250_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end250

do.body217:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end250

if.end250:                                        ; preds = %do.body217, %if.end174.if.end250_crit_edge
  %.str.21.sink = phi ptr [ @.str.21, %do.body217 ], [ @.str.18, %if.end174.if.end250_crit_edge ]
  %rc.0 = phi i32 [ -4, %do.body217 ], [ -1, %if.end174.if.end250_crit_edge ]
  %54 = ptrtoint ptr %call138 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call138, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %55) #10
  %56 = ptrtoint ptr %call138 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call138, align 8
  %pcidev231 = getelementptr inbounds %struct.lpfc_hba, ptr %57, i32 0, i32 165
  %58 = ptrtoint ptr %pcidev231 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcidev231, align 4
  %dev232 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %brd_no234 = getelementptr inbounds %struct.lpfc_hba, ptr %57, i32 0, i32 197
  %60 = ptrtoint ptr %brd_no234 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %brd_no234, align 4
  %62 = ptrtoint ptr %vpi176 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vpi176, align 4
  %conv236 = zext i16 %63 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev232, ptr noundef nonnull %.str.21.sink, i32 noundef %61, i32 noundef %conv236) #13
  tail call fastcc void @lpfc_free_vpi(ptr noundef %3, i32 noundef %vpi.0.i)
  tail call void @destroy_port(ptr noundef nonnull %call138) #10
  br label %error_out

if.end251:                                        ; preds = %if.end174
  %node_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 2
  %64 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %node_name, align 8
  %fc_nodename = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 31
  %66 = ptrtoint ptr %fc_nodename to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %65, ptr %fc_nodename, align 1
  %port_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 3
  %67 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %port_name, align 8
  %fc_portname = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 32
  %69 = ptrtoint ptr %fc_portname to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %68, ptr %fc_portname, align 1
  %portName = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 18, i32 1
  %70 = ptrtoint ptr %portName to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %68, ptr %portName, align 8
  %nodeName = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 18, i32 2
  %71 = ptrtoint ptr %nodeName to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %65, ptr %nodeName, align 8
  %call264 = tail call fastcc i32 @lpfc_valid_wwn_format(ptr noundef %3, ptr noundef %nodeName, ptr noundef nonnull @.str.23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.end251.do.body272_crit_edge, label %lor.lhs.false266

if.end251.do.body272_crit_edge:                   ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body272

lor.lhs.false266:                                 ; preds = %if.end251
  %call269 = tail call fastcc i32 @lpfc_valid_wwn_format(ptr noundef %3, ptr noundef %portName, ptr noundef nonnull @.str.24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %lor.lhs.false266.do.body272_crit_edge, label %if.end305

lor.lhs.false266.do.body272_crit_edge:            ; preds = %lor.lhs.false266
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body272

do.body272:                                       ; preds = %lor.lhs.false266.do.body272_crit_edge, %if.end251.do.body272_crit_edge
  %72 = ptrtoint ptr %call138 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call138, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %73) #10
  %74 = ptrtoint ptr %call138 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call138, align 8
  %pcidev286 = getelementptr inbounds %struct.lpfc_hba, ptr %75, i32 0, i32 165
  %76 = ptrtoint ptr %pcidev286 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcidev286, align 4
  %dev287 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %brd_no289 = getelementptr inbounds %struct.lpfc_hba, ptr %75, i32 0, i32 197
  %78 = ptrtoint ptr %brd_no289 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %brd_no289, align 4
  %80 = ptrtoint ptr %vpi176 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vpi176, align 4
  %conv291 = zext i16 %81 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev287, ptr noundef nonnull @.str.26, i32 noundef %79, i32 noundef %conv291) #13
  tail call fastcc void @lpfc_free_vpi(ptr noundef %3, i32 noundef %vpi.0.i)
  tail call void @destroy_port(ptr noundef nonnull %call138) #10
  br label %error_out

if.end305:                                        ; preds = %lor.lhs.false266
  %call306 = tail call fastcc i32 @lpfc_unique_wwpn(ptr noundef %3, ptr noundef nonnull %call138)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %do.body309, label %if.end342

do.body309:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %call138 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call138, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %83) #10
  %84 = ptrtoint ptr %call138 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call138, align 8
  %pcidev323 = getelementptr inbounds %struct.lpfc_hba, ptr %85, i32 0, i32 165
  %86 = ptrtoint ptr %pcidev323 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pcidev323, align 4
  %dev324 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %brd_no326 = getelementptr inbounds %struct.lpfc_hba, ptr %85, i32 0, i32 197
  %88 = ptrtoint ptr %brd_no326 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %brd_no326, align 4
  %90 = ptrtoint ptr %vpi176 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vpi176, align 4
  %conv328 = zext i16 %91 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev324, ptr noundef nonnull @.str.29, i32 noundef %89, i32 noundef %conv328) #13
  tail call fastcc void @lpfc_free_vpi(ptr noundef %3, i32 noundef %vpi.0.i)
  tail call void @destroy_port(ptr noundef nonnull %call138) #10
  br label %error_out

if.end342:                                        ; preds = %if.end305
  %call343 = tail call i32 @lpfc_alloc_sysfs_attr(ptr noundef nonnull %call138) #10
  %pport344 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 241
  %92 = ptrtoint ptr %pport344 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pport344, align 8
  %cfg_lun_queue_depth = getelementptr inbounds %struct.lpfc_vport, ptr %93, i32 0, i32 43
  %94 = ptrtoint ptr %cfg_lun_queue_depth to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cfg_lun_queue_depth, align 4
  %cfg_lun_queue_depth345 = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 43
  %96 = ptrtoint ptr %cfg_lun_queue_depth345 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %cfg_lun_queue_depth345, align 4
  %cfg_enable_fc4_type = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 52
  %97 = ptrtoint ptr %cfg_enable_fc4_type to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %cfg_enable_fc4_type, align 8
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %98 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dd_data, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call138, ptr %99, align 4
  %fc_vport346 = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 67
  %101 = ptrtoint ptr %fc_vport346 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %fc_vport, ptr %fc_vport346, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 41
  %102 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %load_flag, align 4
  %104 = or i8 %103, 4
  store i8 %104, ptr %load_flag, align 4
  %cfg_enable_SmartSAN = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 150
  %105 = ptrtoint ptr %cfg_enable_SmartSAN to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cfg_enable_SmartSAN, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool349.not = icmp eq i32 %106, 0
  br i1 %tobool349.not, label %lor.lhs.false350, label %if.end342.if.then353_crit_edge

if.end342.if.then353_crit_edge:                   ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then353

lor.lhs.false350:                                 ; preds = %if.end342
  %cfg_fdmi_on = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 149
  %107 = ptrtoint ptr %cfg_fdmi_on to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cfg_fdmi_on, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp351 = icmp eq i32 %108, 1
  br i1 %cmp351, label %lor.lhs.false350.if.then353_crit_edge, label %lor.lhs.false350.if.end358_crit_edge

lor.lhs.false350.if.end358_crit_edge:             ; preds = %lor.lhs.false350
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end358

lor.lhs.false350.if.then353_crit_edge:            ; preds = %lor.lhs.false350
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then353

if.then353:                                       ; preds = %lor.lhs.false350.if.then353_crit_edge, %if.end342.if.then353_crit_edge
  %109 = ptrtoint ptr %pport344 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pport344, align 8
  %fdmi_hba_mask = getelementptr inbounds %struct.lpfc_vport, ptr %110, i32 0, i32 87
  %111 = ptrtoint ptr %fdmi_hba_mask to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fdmi_hba_mask, align 8
  %fdmi_hba_mask355 = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 87
  %113 = ptrtoint ptr %fdmi_hba_mask355 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %fdmi_hba_mask355, align 8
  %114 = load ptr, ptr %pport344, align 8
  %fdmi_port_mask = getelementptr inbounds %struct.lpfc_vport, ptr %114, i32 0, i32 88
  %115 = ptrtoint ptr %fdmi_port_mask to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fdmi_port_mask, align 4
  %fdmi_port_mask357 = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 88
  %117 = ptrtoint ptr %fdmi_port_mask357 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %fdmi_port_mask357, align 4
  br label %if.end358

if.end358:                                        ; preds = %if.then353, %lor.lhs.false350.if.end358_crit_edge
  %118 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %119)
  %cmp360 = icmp eq i32 %119, 4
  br i1 %cmp360, label %land.lhs.true, label %if.end358.if.end410_crit_edge

if.end358.if.end410_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end410

land.lhs.true:                                    ; preds = %if.end358
  %fc_flag = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 1
  %120 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %fc_flag, align 4
  %and362 = and i32 %121, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and362)
  %tobool363.not = icmp eq i32 %and362, 0
  br i1 %tobool363.not, label %if.then406, label %if.then364

if.then364:                                       ; preds = %land.lhs.true
  %call365 = tail call i32 @lpfc_sli4_init_vpi(ptr noundef nonnull %call138) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call365)
  %tobool366.not = icmp eq i32 %call365, 0
  br i1 %tobool366.not, label %if.then364.if.end410_crit_edge, label %do.body368

if.then364.if.end410_crit_edge:                   ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end410

do.body368:                                       ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_dmp_dbg(ptr noundef %3) #10
  %pcidev389 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 165
  %122 = ptrtoint ptr %pcidev389 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pcidev389, align 4
  %dev390 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %brd_no391 = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 197
  %124 = ptrtoint ptr %brd_no391 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %brd_no391, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev390, ptr noundef nonnull @.str.32, i32 noundef %125, i32 noundef %vpi.0.i, i32 noundef %call365) #13
  tail call fastcc void @lpfc_free_vpi(ptr noundef %3, i32 noundef %vpi.0.i)
  br label %error_out

if.then406:                                       ; preds = %land.lhs.true
  %fc_flag407 = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 7
  %126 = ptrtoint ptr %fc_flag407 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fc_flag407, align 4
  %or408 = or i32 %127, 2097152
  store i32 %or408, ptr %fc_flag407, align 4
  %128 = ptrtoint ptr %fc_vport346 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fc_vport346, align 8
  %tobool.not.i = icmp eq ptr %129, null
  br i1 %tobool.not.i, label %if.then406.lpfc_vport_set_state.exit_crit_edge, label %if.then.i

if.then406.lpfc_vport_set_state.exit_crit_edge:   ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_vport_set_state.exit

if.then.i:                                        ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %129, i32 0, i32 1
  %132 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %vport_last_state.i, align 4
  store i32 3, ptr %129, align 8
  br label %lpfc_vport_set_state.exit

lpfc_vport_set_state.exit:                        ; preds = %if.then.i, %if.then406.lpfc_vport_set_state.exit_crit_edge
  %port_state6.i = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 3
  %133 = ptrtoint ptr %port_state6.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %port_state6.i, align 8
  br label %do.body473

if.end410:                                        ; preds = %if.then364.if.end410_crit_edge, %if.end358.if.end410_crit_edge
  %link_state = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 36
  %134 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %135)
  %cmp411 = icmp slt i32 %135, 5
  br i1 %cmp411, label %if.end410.if.then419_crit_edge, label %lor.lhs.false413

if.end410.if.then419_crit_edge:                   ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then419

lor.lhs.false413:                                 ; preds = %if.end410
  %port_state = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 2
  %136 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %137)
  %cmp414 = icmp ult i32 %137, 9
  br i1 %cmp414, label %lor.lhs.false413.if.then419_crit_edge, label %lor.lhs.false416

lor.lhs.false413.if.then419_crit_edge:            ; preds = %lor.lhs.false413
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then419

lor.lhs.false416:                                 ; preds = %lor.lhs.false413
  %fc_topology = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 65
  %138 = ptrtoint ptr %fc_topology to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %fc_topology, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %139)
  %cmp417 = icmp eq i32 %139, 2
  br i1 %cmp417, label %lor.lhs.false416.if.then419_crit_edge, label %if.end420

lor.lhs.false416.if.then419_crit_edge:            ; preds = %lor.lhs.false416
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then419

if.then419:                                       ; preds = %lor.lhs.false416.if.then419_crit_edge, %lor.lhs.false413.if.then419_crit_edge, %if.end410.if.then419_crit_edge
  %140 = ptrtoint ptr %fc_vport346 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %fc_vport346, align 8
  %tobool.not.i711 = icmp eq ptr %141, null
  br i1 %tobool.not.i711, label %if.then419.lpfc_vport_set_state.exit717_crit_edge, label %if.then.i712

if.then419.lpfc_vport_set_state.exit717_crit_edge: ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_vport_set_state.exit717

if.then.i712:                                     ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  %vport_last_state.i713 = getelementptr inbounds %struct.fc_vport, ptr %141, i32 0, i32 1
  %144 = ptrtoint ptr %vport_last_state.i713 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %vport_last_state.i713, align 4
  store i32 3, ptr %141, align 8
  br label %lpfc_vport_set_state.exit717

lpfc_vport_set_state.exit717:                     ; preds = %if.then.i712, %if.then419.lpfc_vport_set_state.exit717_crit_edge
  %port_state6.i716 = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 3
  %145 = ptrtoint ptr %port_state6.i716 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %port_state6.i716, align 8
  br label %do.body473

if.end420:                                        ; preds = %lor.lhs.false416
  br i1 %disable, label %if.then422, label %if.end423

if.then422:                                       ; preds = %if.end420
  %146 = ptrtoint ptr %fc_vport346 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %fc_vport346, align 8
  %tobool.not.i719 = icmp eq ptr %147, null
  br i1 %tobool.not.i719, label %if.then422.do.body473_crit_edge, label %if.then.i720

if.then422.do.body473_crit_edge:                  ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body473

if.then.i720:                                     ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 8
  %vport_last_state.i721 = getelementptr inbounds %struct.fc_vport, ptr %147, i32 0, i32 1
  %150 = ptrtoint ptr %vport_last_state.i721 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %vport_last_state.i721, align 4
  store i32 2, ptr %147, align 8
  br label %do.body473

if.end423:                                        ; preds = %if.end420
  %151 = ptrtoint ptr %pport344 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pport344, align 8
  %call425 = tail call ptr @lpfc_findnode_did(ptr noundef %152, i32 noundef 16777214) #10
  %tobool426.not = icmp eq ptr %call425, null
  br i1 %tobool426.not, label %if.end423.if.else471_crit_edge, label %land.lhs.true427

if.end423.if.else471_crit_edge:                   ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else471

land.lhs.true427:                                 ; preds = %if.end423
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %call425, i32 0, i32 11
  %153 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %nlp_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %154)
  %cmp429 = icmp eq i16 %154, 6
  br i1 %cmp429, label %if.then431, label %land.lhs.true427.if.else471_crit_edge

land.lhs.true427.if.else471_crit_edge:            ; preds = %land.lhs.true427
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else471

if.then431:                                       ; preds = %land.lhs.true427
  %link_flag = getelementptr inbounds %struct.lpfc_hba, ptr %3, i32 0, i32 37
  %155 = ptrtoint ptr %link_flag to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %link_flag, align 8
  %and432 = and i32 %156, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and432)
  %tobool433.not = icmp eq i32 %and432, 0
  br i1 %tobool433.not, label %if.else436, label %if.then434

if.then434:                                       ; preds = %if.then431
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_set_disctmo(ptr noundef nonnull %call138) #10
  %call435 = tail call i32 @lpfc_initial_fdisc(ptr noundef nonnull %call138) #10
  br label %do.body473

if.else436:                                       ; preds = %if.then431
  %157 = ptrtoint ptr %fc_vport346 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fc_vport346, align 8
  %tobool.not.i726 = icmp eq ptr %158, null
  br i1 %tobool.not.i726, label %if.else436.lpfc_vport_set_state.exit732_crit_edge, label %if.then.i727

if.else436.lpfc_vport_set_state.exit732_crit_edge: ; preds = %if.else436
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_vport_set_state.exit732

if.then.i727:                                     ; preds = %if.else436
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 8
  %vport_last_state.i728 = getelementptr inbounds %struct.fc_vport, ptr %158, i32 0, i32 1
  %161 = ptrtoint ptr %vport_last_state.i728 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %vport_last_state.i728, align 4
  store i32 5, ptr %158, align 8
  br label %lpfc_vport_set_state.exit732

lpfc_vport_set_state.exit732:                     ; preds = %if.then.i727, %if.else436.lpfc_vport_set_state.exit732_crit_edge
  %port_state6.i731 = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 3
  %162 = ptrtoint ptr %port_state6.i731 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1, ptr %port_state6.i731, align 8
  %163 = ptrtoint ptr %call138 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %call138, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %164) #10
  %165 = ptrtoint ptr %call138 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %call138, align 8
  %pcidev451 = getelementptr inbounds %struct.lpfc_hba, ptr %166, i32 0, i32 165
  %167 = ptrtoint ptr %pcidev451 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pcidev451, align 4
  %dev452 = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 44
  %brd_no454 = getelementptr inbounds %struct.lpfc_hba, ptr %166, i32 0, i32 197
  %169 = ptrtoint ptr %brd_no454 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %brd_no454, align 4
  %171 = ptrtoint ptr %vpi176 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %vpi176, align 4
  %conv456 = zext i16 %172 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev452, ptr noundef nonnull @.str.35, i32 noundef %170, i32 noundef %conv456) #13
  br label %do.body473

if.else471:                                       ; preds = %land.lhs.true427.if.else471_crit_edge, %if.end423.if.else471_crit_edge
  %173 = ptrtoint ptr %fc_vport346 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %fc_vport346, align 8
  %tobool.not.i734 = icmp eq ptr %174, null
  br i1 %tobool.not.i734, label %if.else471.lpfc_vport_set_state.exit740_crit_edge, label %if.then.i735

if.else471.lpfc_vport_set_state.exit740_crit_edge: ; preds = %if.else471
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_vport_set_state.exit740

if.then.i735:                                     ; preds = %if.else471
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 8
  %vport_last_state.i736 = getelementptr inbounds %struct.fc_vport, ptr %174, i32 0, i32 1
  %177 = ptrtoint ptr %vport_last_state.i736 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %vport_last_state.i736, align 4
  store i32 9, ptr %174, align 8
  br label %lpfc_vport_set_state.exit740

lpfc_vport_set_state.exit740:                     ; preds = %if.then.i735, %if.else471.lpfc_vport_set_state.exit740_crit_edge
  %port_state6.i739 = getelementptr inbounds %struct.lpfc_vport, ptr %call138, i32 0, i32 3
  %178 = ptrtoint ptr %port_state6.i739 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %port_state6.i739, align 8
  br label %do.body473

do.body473:                                       ; preds = %lpfc_vport_set_state.exit740, %lpfc_vport_set_state.exit732, %if.then434, %if.then.i720, %if.then422.do.body473_crit_edge, %lpfc_vport_set_state.exit717, %lpfc_vport_set_state.exit
  %179 = ptrtoint ptr %call138 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %call138, align 8
  %pcidev486 = getelementptr inbounds %struct.lpfc_hba, ptr %180, i32 0, i32 165
  %181 = ptrtoint ptr %pcidev486 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pcidev486, align 4
  %dev487 = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 44
  %brd_no489 = getelementptr inbounds %struct.lpfc_hba, ptr %180, i32 0, i32 197
  %183 = ptrtoint ptr %brd_no489 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %brd_no489, align 4
  %185 = ptrtoint ptr %vpi176 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %vpi176, align 4
  %conv491 = zext i16 %186 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev487, ptr noundef nonnull @.str.38, i32 noundef %184, i32 noundef %conv491) #13
  %add.ptr.i = getelementptr i8, ptr %call138, i32 -2448
  tail call void @lpfc_host_attrib_init(ptr noundef %add.ptr.i) #10
  br label %error_out

error_out:                                        ; preds = %do.body473, %do.body368, %do.body309, %do.body272, %if.end250, %do.body141, %lpfc_free_vpi.exit, %do.body62, %do.body25, %do.body
  %rc.2 = phi i32 [ -2, %do.body ], [ -2, %do.body25 ], [ -4, %do.body62 ], [ -4, %lpfc_free_vpi.exit ], [ %rc.0, %if.end250 ], [ -4, %do.body368 ], [ 0, %do.body473 ], [ -2, %do.body309 ], [ -2, %do.body272 ], [ -4, %do.body141 ]
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dmp_dbg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_dbg_print(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_get_instance() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_free_vpi(ptr noundef %phba, i32 noundef %vpi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vpi)
  %cmp = icmp eq i32 %vpi, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 221
  tail call void @_raw_spin_lock_irq(ptr noundef %hbalock) #10
  %vpi_bmask = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 246
  %0 = ptrtoint ptr %vpi_bmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpi_bmask, align 4
  tail call void @_clear_bit(i32 noundef %vpi, ptr noundef %1) #10
  %sli_rev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 31
  %2 = ptrtoint ptr %sli_rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sli_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp1 = icmp eq i32 %3, 4
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %vpi_used = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 25, i32 60, i32 8
  %4 = ptrtoint ptr %vpi_used to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vpi_used, align 4
  %dec = add i16 %5, -1
  store i16 %dec, ptr %vpi_used, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #10
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_create_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_debugfs_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpfc_vport_sparm(ptr noundef %phba, ptr noundef %vport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem_pool = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 231
  %0 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem_pool, align 8
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %1, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 1
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %2 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vpi, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 @lpfc_read_sparam(ptr noundef %phba, ptr noundef nonnull %call, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %ctx_buf = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %ctx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx_buf, align 4
  store ptr null, ptr %ctx_buf, align 4
  %vport7 = getelementptr inbounds %struct.lpfcMboxq, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %vport7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vport, ptr %vport7, align 4
  %fc_ratov = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 58
  %7 = ptrtoint ptr %fc_ratov to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fc_ratov, align 8
  %mul = shl i32 %8, 1
  %call8 = tail call i32 @lpfc_sli_issue_mbox_wait(ptr noundef %phba, ptr noundef nonnull %call, i32 noundef %mul) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end94, label %if.then10

if.then10:                                        ; preds = %if.end5
  %9 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stack.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.then10.do.body_crit_edge, !prof !144

if.then10.do.body_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

signal_pending.exit:                              ; preds = %if.then10
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %14, align 4
  %and1.i.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool13.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool13.not, label %do.body47, label %signal_pending.exit.do.body_crit_edge

signal_pending.exit.do.body_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %signal_pending.exit.do.body_crit_edge, %if.then10.do.body_crit_edge
  %20 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %21) #10
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
  %28 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vpi, align 4
  %conv25 = zext i16 %29 to i32
  %mbxCommand = getelementptr inbounds %struct.anon.15, ptr %u, i32 0, i32 1
  %30 = ptrtoint ptr %mbxCommand to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mbxCommand, align 2
  %conv26 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %27, i32 noundef %conv25, i32 noundef %conv26) #13
  %virt = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 2
  %34 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phys, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %33, i32 noundef %35) #10
  tail call void @kfree(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %call8)
  %cmp41.not = icmp eq i32 %call8, 16777214
  br i1 %cmp41.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body47:                                        ; preds = %signal_pending.exit
  %36 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %37) #10
  %38 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vport, align 8
  %pcidev61 = getelementptr inbounds %struct.lpfc_hba, ptr %39, i32 0, i32 165
  %40 = ptrtoint ptr %pcidev61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcidev61, align 4
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %brd_no64 = getelementptr inbounds %struct.lpfc_hba, ptr %39, i32 0, i32 197
  %42 = ptrtoint ptr %brd_no64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %brd_no64, align 4
  %44 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vpi, align 4
  %conv66 = zext i16 %45 to i32
  %mbxCommand67 = getelementptr inbounds %struct.anon.15, ptr %u, i32 0, i32 1
  %46 = ptrtoint ptr %mbxCommand67 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mbxCommand67, align 2
  %conv68 = zext i8 %47 to i32
  %48 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %u, align 4
  %conv69 = zext i16 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev62, ptr noundef nonnull @.str.59, i32 noundef %43, i32 noundef %conv66, i32 noundef %conv68, i32 noundef %conv69, i32 noundef %call8) #13
  %virt87 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %50 = ptrtoint ptr %virt87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %virt87, align 4
  %phys88 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 2
  %52 = ptrtoint ptr %phys88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %phys88, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %51, i32 noundef %53) #10
  tail call void @kfree(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %call8)
  %cmp89.not = icmp eq i32 %call8, 16777214
  br i1 %cmp89.not, label %do.body47.cleanup_crit_edge, label %do.body47.cleanup.sink.split_crit_edge

do.body47.cleanup.sink.split_crit_edge:           ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end94:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %fc_sparam = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18
  %virt95 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 1
  %54 = ptrtoint ptr %virt95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %virt95, align 4
  %56 = call ptr @memcpy(ptr %fc_sparam, ptr %55, i32 112)
  %fc_nodename = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 31
  %nodeName = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 2
  %57 = ptrtoint ptr %nodeName to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %nodeName, align 8
  %59 = ptrtoint ptr %fc_nodename to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %fc_nodename, align 8
  %fc_portname = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 32
  %portName = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %portName to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %portName, align 8
  %62 = ptrtoint ptr %fc_portname to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %fc_portname, align 8
  %63 = load ptr, ptr %virt95, align 4
  %phys99 = getelementptr inbounds %struct.lpfc_dmabuf, ptr %5, i32 0, i32 2
  %64 = ptrtoint ptr %phys99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %phys99, align 4
  tail call void @lpfc_mbuf_free(ptr noundef %phba, ptr noundef %63, i32 noundef %65) #10
  tail call void @kfree(ptr noundef %5) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end94, %do.body47.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end94 ], [ -12, %if.end.cleanup.sink.split_crit_edge ], [ -4, %do.body.cleanup.sink.split_crit_edge ], [ -5, %do.body47.cleanup.sink.split_crit_edge ]
  %66 = ptrtoint ptr %mbox_mem_pool to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mbox_mem_pool, align 8
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %67) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body47.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -4, %do.body.cleanup_crit_edge ], [ -5, %do.body47.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpfc_valid_wwn_format(ptr nocapture noundef readonly %phba, ptr nocapture noundef readonly %wwn, ptr noundef %name_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wwn to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wwn, align 8
  %conv = zext i8 %1 to i32
  %.mask = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.mask)
  %cmp = icmp eq i32 %.mask, 16
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %lor.lhs.false, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx8 = getelementptr [8 x i8], ptr %wwn, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx8, align 1
  %4 = and i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp11.not = icmp eq i8 %4, 0
  br i1 %cmp11.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 165
  %5 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 197
  %7 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %brd_no, align 4
  %arrayidx27 = getelementptr [8 x i8], ptr %wwn, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %10 to i32
  %arrayidx30 = getelementptr [8 x i8], ptr %wwn, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx30, align 2
  %conv31 = zext i8 %12 to i32
  %arrayidx33 = getelementptr [8 x i8], ptr %wwn, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %14 to i32
  %arrayidx36 = getelementptr [8 x i8], ptr %wwn, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx36, align 4
  %conv37 = zext i8 %16 to i32
  %arrayidx39 = getelementptr [8 x i8], ptr %wwn, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %18 to i32
  %arrayidx42 = getelementptr [8 x i8], ptr %wwn, i32 0, i32 6
  %19 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx42, align 2
  %conv43 = zext i8 %20 to i32
  %arrayidx45 = getelementptr [8 x i8], ptr %wwn, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %8, ptr noundef %name_type, i32 noundef %conv, i32 noundef %conv28, i32 noundef %conv31, i32 noundef %conv34, i32 noundef %conv37, i32 noundef %conv40, i32 noundef %conv43, i32 noundef %conv46) #13
  br label %return

return:                                           ; preds = %do.body, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ 1, %lor.lhs.false.return_crit_edge ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpfc_unique_wwpn(ptr noundef %phba, ptr noundef readonly %new_vport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 240
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_list_lock) #10
  %port_list = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 239
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn35 = load ptr, ptr %port_list, align 4
  %cmp7.not36 = icmp eq ptr %.pn35, %port_list
  br i1 %cmp7.not36, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %portName12 = getelementptr inbounds %struct.lpfc_vport, ptr %new_vport, i32 0, i32 18, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn37 = phi ptr [ %.pn35, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %vport.0 = getelementptr i8, ptr %.pn37, i32 -4
  %cmp9 = icmp eq ptr %vport.0, %new_vport
  br i1 %cmp9, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %portName = getelementptr i8, ptr %.pn37, i32 76
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %portName, ptr noundef dereferenceable(8) %portName12, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp14 = icmp eq i32 %bcmp, 0
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %1 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp7.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_list_lock, i32 noundef %call2) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_alloc_sysfs_attr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli4_init_vpi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpfc_findnode_did(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_set_disctmo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_initial_fdisc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_host_attrib_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_vport_disable(ptr nocapture noundef readonly %fc_vport, i1 noundef zeroext %disable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data.i = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  br i1 %disable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %load_flag.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 41
  %6 = ptrtoint ptr %load_flag.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %load_flag.i, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %if.then
  %call2.i = tail call ptr @lpfc_findnode_did(ptr noundef %3, i32 noundef 16777214) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %link_state.i = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 36
  %9 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.i = icmp sgt i32 %10, 4
  br i1 %cmp.i, label %if.then5.i, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call fastcc i32 @lpfc_send_npiv_logo(ptr noundef %3, ptr noundef nonnull %call2.i) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %call8.i = tail call i32 @lpfc_sli_host_down(ptr noundef %3) #10
  %fc_nodes.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %fc_nodes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fc_nodes.i, align 4
  %cmp15.not2.i = icmp eq ptr %12, %fc_nodes.i
  br i1 %cmp15.not2.i, label %if.end7.i.for.end.i_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %ndlp.03.i = phi ptr [ %next_ndlp.04.i, %for.inc.i.for.body.i_crit_edge ], [ %12, %if.end7.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %ndlp.03.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %next_ndlp.04.i = load ptr, ptr %ndlp.03.i, align 8
  %nlp_state.i = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.03.i, i32 0, i32 11
  %14 = ptrtoint ptr %nlp_state.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nlp_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp18.i = icmp eq i16 %15, 0
  br i1 %cmp18.i, label %for.body.i.for.inc.i_crit_edge, label %if.end21.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end21.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call22.i = tail call i32 @lpfc_disc_state_machine(ptr noundef %3, ptr noundef %ndlp.03.i, ptr noundef null, i32 noundef 12) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end21.i, %for.body.i.for.inc.i_crit_edge
  %cmp15.not.i = icmp eq ptr %next_ndlp.04.i, %fc_nodes.i
  br i1 %cmp15.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  tail call void @lpfc_cleanup_rpis(ptr noundef %3, i32 noundef 1) #10
  tail call void @lpfc_stop_vport_timers(ptr noundef %3) #10
  tail call void @lpfc_unreg_all_rpis(ptr noundef %3) #10
  tail call void @lpfc_unreg_default_rpis(ptr noundef %3) #10
  %call28.i = tail call i32 @lpfc_mbx_unreg_vpi(ptr noundef %3) #10
  %sli_rev.i = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 31
  %16 = ptrtoint ptr %sli_rev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sli_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp29.i = icmp eq i32 %17, 4
  br i1 %cmp29.i, label %if.then31.i, label %for.end.i.if.end33.i_crit_edge

for.end.i.if.end33.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then31.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %host_lock.i = getelementptr i8, ptr %3, i32 -2380
  %18 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #10
  %fc_flag.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %fc_flag.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fc_flag.i, align 4
  %or.i = or i32 %21, 2097152
  store i32 %or.i, ptr %fc_flag.i, align 4
  %22 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %23) #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %for.end.i.if.end33.i_crit_edge
  %fc_vport1.i.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 67
  %24 = ptrtoint ptr %fc_vport1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fc_vport1.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end33.i.lpfc_vport_set_state.exit.i_crit_edge, label %if.then.i.i

if.end33.i.lpfc_vport_set_state.exit.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_vport_set_state.exit.i

if.then.i.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %vport_last_state.i.i = getelementptr inbounds %struct.fc_vport, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %vport_last_state.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %vport_last_state.i.i, align 4
  store i32 2, ptr %25, align 8
  br label %lpfc_vport_set_state.exit.i

lpfc_vport_set_state.exit.i:                      ; preds = %if.then.i.i, %if.end33.i.lpfc_vport_set_state.exit.i_crit_edge
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 8
  %pcidev.i = getelementptr inbounds %struct.lpfc_hba, ptr %30, i32 0, i32 165
  %31 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %brd_no.i = getelementptr inbounds %struct.lpfc_hba, ptr %30, i32 0, i32 197
  %33 = ptrtoint ptr %brd_no.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %brd_no.i, align 4
  %vpi.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vpi.i, align 4
  %conv43.i = zext i16 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev.i, ptr noundef nonnull @.str.63, i32 noundef %34, i32 noundef %conv43.i) #13
  br label %return

if.else:                                          ; preds = %entry
  %link_state.i4 = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 36
  %37 = ptrtoint ptr %link_state.i4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %link_state.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %cmp.i5 = icmp slt i32 %38, 5
  br i1 %cmp.i5, label %if.else.if.then.i_crit_edge, label %lor.lhs.false.i

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else
  %fc_topology.i = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 65
  %39 = ptrtoint ptr %fc_topology.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fc_topology.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp2.i = icmp eq i32 %40, 2
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i15

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  %fc_vport1.i.i6 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 67
  %41 = ptrtoint ptr %fc_vport1.i.i6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fc_vport1.i.i6, align 8
  %tobool.not.i.i7 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i7, label %if.then.i.lpfc_vport_set_state.exit.i10_crit_edge, label %if.then.i.i9

if.then.i.lpfc_vport_set_state.exit.i10_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_vport_set_state.exit.i10

if.then.i.i9:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %vport_last_state.i.i8 = getelementptr inbounds %struct.fc_vport, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %vport_last_state.i.i8 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %vport_last_state.i.i8, align 4
  store i32 3, ptr %42, align 8
  br label %lpfc_vport_set_state.exit.i10

lpfc_vport_set_state.exit.i10:                    ; preds = %if.then.i.i9, %if.then.i.lpfc_vport_set_state.exit.i10_crit_edge
  %port_state6.i.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 3
  %46 = ptrtoint ptr %port_state6.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %port_state6.i.i, align 8
  br label %return

if.end.i15:                                       ; preds = %lor.lhs.false.i
  %host_lock.i11 = getelementptr i8, ptr %3, i32 -2380
  %47 = ptrtoint ptr %host_lock.i11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host_lock.i11, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %48) #10
  %load_flag.i12 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 41
  %49 = ptrtoint ptr %load_flag.i12 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %load_flag.i12, align 4
  %51 = or i8 %50, 1
  store i8 %51, ptr %load_flag.i12, align 4
  %fc_flag.i13 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 7
  %52 = ptrtoint ptr %fc_flag.i13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fc_flag.i13, align 4
  %and.i = and i32 %53, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i14 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i14, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %host_lock.i11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %host_lock.i11, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %55) #10
  tail call void @lpfc_issue_init_vpi(ptr noundef %3) #10
  br label %do.body48.i

if.end6.i:                                        ; preds = %if.end.i15
  %or8.i = or i32 %53, 524288
  %56 = ptrtoint ptr %fc_flag.i13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or8.i, ptr %fc_flag.i13, align 4
  %57 = ptrtoint ptr %host_lock.i11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %host_lock.i11, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %58) #10
  %pport.i = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 241
  %59 = ptrtoint ptr %pport.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pport.i, align 8
  %call10.i = tail call ptr @lpfc_findnode_did(ptr noundef %60, i32 noundef 16777214) #10
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end6.i.if.else46.i_crit_edge, label %land.lhs.true.i17

if.end6.i.if.else46.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else46.i

land.lhs.true.i17:                                ; preds = %if.end6.i
  %nlp_state.i16 = getelementptr inbounds %struct.lpfc_nodelist, ptr %call10.i, i32 0, i32 11
  %61 = ptrtoint ptr %nlp_state.i16 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %nlp_state.i16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %62)
  %cmp13.i = icmp eq i16 %62, 6
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i17.if.else46.i_crit_edge

land.lhs.true.i17.if.else46.i_crit_edge:          ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else46.i

if.then15.i:                                      ; preds = %land.lhs.true.i17
  %link_flag.i = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 37
  %63 = ptrtoint ptr %link_flag.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %link_flag.i, align 8
  %and16.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_set_disctmo(ptr noundef %3) #10
  %call19.i = tail call i32 @lpfc_initial_fdisc(ptr noundef %3) #10
  br label %do.body48.i

if.else.i:                                        ; preds = %if.then15.i
  %fc_vport1.i1.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 67
  %65 = ptrtoint ptr %fc_vport1.i1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fc_vport1.i1.i, align 8
  %tobool.not.i2.i = icmp eq ptr %66, null
  br i1 %tobool.not.i2.i, label %if.else.i.lpfc_vport_set_state.exit6.i_crit_edge, label %if.then.i3.i

if.else.i.lpfc_vport_set_state.exit6.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_vport_set_state.exit6.i

if.then.i3.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %vport_last_state.i4.i = getelementptr inbounds %struct.fc_vport, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %vport_last_state.i4.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %vport_last_state.i4.i, align 4
  store i32 5, ptr %66, align 8
  br label %lpfc_vport_set_state.exit6.i

lpfc_vport_set_state.exit6.i:                     ; preds = %if.then.i3.i, %if.else.i.lpfc_vport_set_state.exit6.i_crit_edge
  %port_state6.i5.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 3
  %70 = ptrtoint ptr %port_state6.i5.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %port_state6.i5.i, align 8
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %72) #10
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 8
  %pcidev.i18 = getelementptr inbounds %struct.lpfc_hba, ptr %74, i32 0, i32 165
  %75 = ptrtoint ptr %pcidev.i18 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcidev.i18, align 4
  %dev.i19 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %brd_no.i20 = getelementptr inbounds %struct.lpfc_hba, ptr %74, i32 0, i32 197
  %77 = ptrtoint ptr %brd_no.i20 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %brd_no.i20, align 4
  %vpi.i21 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %79 = ptrtoint ptr %vpi.i21 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vpi.i21, align 4
  %conv31.i = zext i16 %80 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev.i19, ptr noundef nonnull @.str.65, i32 noundef %78, i32 noundef %conv31.i) #13
  br label %do.body48.i

if.else46.i:                                      ; preds = %land.lhs.true.i17.if.else46.i_crit_edge, %if.end6.i.if.else46.i_crit_edge
  %fc_vport1.i7.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 67
  %81 = ptrtoint ptr %fc_vport1.i7.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fc_vport1.i7.i, align 8
  %tobool.not.i8.i = icmp eq ptr %82, null
  br i1 %tobool.not.i8.i, label %if.else46.i.lpfc_vport_set_state.exit12.i_crit_edge, label %if.then.i9.i

if.else46.i.lpfc_vport_set_state.exit12.i_crit_edge: ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_vport_set_state.exit12.i

if.then.i9.i:                                     ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %vport_last_state.i10.i = getelementptr inbounds %struct.fc_vport, ptr %82, i32 0, i32 1
  %85 = ptrtoint ptr %vport_last_state.i10.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %vport_last_state.i10.i, align 4
  store i32 9, ptr %82, align 8
  br label %lpfc_vport_set_state.exit12.i

lpfc_vport_set_state.exit12.i:                    ; preds = %if.then.i9.i, %if.else46.i.lpfc_vport_set_state.exit12.i_crit_edge
  %port_state6.i11.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 3
  %86 = ptrtoint ptr %port_state6.i11.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %port_state6.i11.i, align 8
  br label %do.body48.i

do.body48.i:                                      ; preds = %lpfc_vport_set_state.exit12.i, %lpfc_vport_set_state.exit6.i, %if.then18.i, %if.then4.i
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %3, align 8
  %pcidev61.i = getelementptr inbounds %struct.lpfc_hba, ptr %88, i32 0, i32 165
  %89 = ptrtoint ptr %pcidev61.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcidev61.i, align 4
  %dev62.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %brd_no64.i = getelementptr inbounds %struct.lpfc_hba, ptr %88, i32 0, i32 197
  %91 = ptrtoint ptr %brd_no64.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %brd_no64.i, align 4
  %vpi65.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %93 = ptrtoint ptr %vpi65.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %vpi65.i, align 4
  %conv66.i = zext i16 %94 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev62.i, ptr noundef nonnull @.str.68, i32 noundef %92, i32 noundef %conv66.i) #13
  br label %return

return:                                           ; preds = %do.body48.i, %lpfc_vport_set_state.exit.i10, %lpfc_vport_set_state.exit.i, %if.then.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lpfc_vport_delete(ptr nocapture noundef readonly %fc_vport) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -2448
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %port_type = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %do.body, label %if.end23

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_dmp_dbg(ptr noundef %5) #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %9, i32 0, i32 165
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %9, i32 0, i32 197
  %12 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vpi, align 4
  %conv11 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %13, i32 noundef %conv11) #13
  br label %cleanup225

if.end23:                                         ; preds = %entry
  %vport_flag = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 85
  %16 = ptrtoint ptr %vport_flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vport_flag, align 8
  %and24 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end63_crit_edge, label %land.lhs.true

if.end23.if.end63_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end23
  %pport = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 241
  %18 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pport, align 8
  %load_flag = getelementptr inbounds %struct.lpfc_vport, ptr %19, i32 0, i32 41
  %20 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %load_flag, align 4
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool28.not = icmp eq i8 %22, 0
  br i1 %tobool28.not, label %do.body30, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.body30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lpfc_dmp_dbg(ptr noundef %5) #10
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %pcidev44 = getelementptr inbounds %struct.lpfc_hba, ptr %24, i32 0, i32 165
  %25 = ptrtoint ptr %pcidev44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcidev44, align 4
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %brd_no47 = getelementptr inbounds %struct.lpfc_hba, ptr %24, i32 0, i32 197
  %27 = ptrtoint ptr %brd_no47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %brd_no47, align 4
  %vpi48 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %vpi48 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vpi48, align 4
  %conv49 = zext i16 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev45, ptr noundef nonnull @.str.43, i32 noundef %28, i32 noundef %conv49) #13
  br label %cleanup225

if.end63:                                         ; preds = %land.lhs.true.if.end63_crit_edge, %if.end23.if.end63_crit_edge
  %hbalock = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 221
  tail call void @_raw_spin_lock_irq(ptr noundef %hbalock) #10
  %load_flag64 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 41
  %31 = ptrtoint ptr %load_flag64 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %load_flag64, align 4
  %33 = or i8 %32, 2
  store i8 %33, ptr %load_flag64, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #10
  %pport68 = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 241
  %34 = ptrtoint ptr %pport68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pport68, align 8
  %load_flag69 = getelementptr inbounds %struct.lpfc_vport, ptr %35, i32 0, i32 41
  %36 = ptrtoint ptr %load_flag69 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %load_flag69, align 4
  %38 = and i8 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool72.not = icmp eq i8 %38, 0
  br i1 %tobool72.not, label %while.cond.preheader, label %if.end63.if.end91_crit_edge

if.end63.if.end91_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

while.cond.preheader:                             ; preds = %if.end63
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 3
  %fc_ratov = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 58
  %39 = ptrtoint ptr %fc_ratov to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fc_ratov, align 8
  %mul320 = mul i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %mul320)
  %cmp74322.not = icmp eq i32 %mul320, -3
  br i1 %cmp74322.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.land.lhs.true76_crit_edge

while.cond.preheader.land.lhs.true76_crit_edge:   ; preds = %while.cond.preheader
  br label %land.lhs.true76

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.lhs.true76:                                  ; preds = %while.body.land.lhs.true76_crit_edge, %while.cond.preheader.land.lhs.true76_crit_edge
  %check_count.0323 = phi i32 [ %inc, %while.body.land.lhs.true76_crit_edge ], [ 0, %while.cond.preheader.land.lhs.true76_crit_edge ]
  %41 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_state, align 8
  %43 = add i32 %42, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %43)
  %44 = icmp ult i32 %43, 30
  br i1 %44, label %while.body, label %land.lhs.true76.while.end_crit_edge

land.lhs.true76.while.end_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.lhs.true76
  %inc = add nuw i32 %check_count.0323, 1
  tail call void @msleep(i32 noundef 1000) #10
  %45 = ptrtoint ptr %fc_ratov to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fc_ratov, align 8
  %mul = mul i32 %46, 3
  %add = add i32 %mul, 3
  %cmp74 = icmp ult i32 %inc, %add
  br i1 %cmp74, label %while.body.land.lhs.true76_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.land.lhs.true76_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true76

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.lhs.true76.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %47 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port_state, align 8
  %49 = add i32 %48, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %49)
  %50 = icmp ult i32 %49, 30
  br i1 %50, label %while.end.cleanup225_crit_edge, label %while.end.if.end91_crit_edge

while.end.if.end91_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

while.end.cleanup225_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup225

if.end91:                                         ; preds = %while.end.if.end91_crit_edge, %if.end63.if.end91_crit_edge
  %call92 = tail call ptr @scsi_host_get(ptr noundef %add.ptr.i) #10
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %if.end91.cleanup225_crit_edge, label %if.end95

if.end91.cleanup225_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup225

if.end95:                                         ; preds = %if.end91
  tail call void @lpfc_free_sysfs_attr(ptr noundef %3) #10
  tail call void @lpfc_debugfs_terminate(ptr noundef %3) #10
  tail call void @fc_remove_host(ptr noundef %add.ptr.i) #10
  tail call void @scsi_remove_host(ptr noundef %add.ptr.i) #10
  %call96 = tail call ptr @lpfc_findnode_did(ptr noundef %3, i32 noundef 16777214) #10
  %tobool97.not = icmp eq ptr %call96, null
  br i1 %tobool97.not, label %if.end95.skip_logo_crit_edge, label %land.lhs.true101

if.end95.skip_logo_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_logo

land.lhs.true101:                                 ; preds = %if.end95
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %call96, i32 0, i32 11
  %51 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %nlp_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %52)
  %cmp103 = icmp eq i16 %52, 6
  br i1 %cmp103, label %land.lhs.true105, label %land.lhs.true101.if.end164_crit_edge

land.lhs.true101.if.end164_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

land.lhs.true105:                                 ; preds = %land.lhs.true101
  %link_state = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 36
  %53 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp106 = icmp sgt i32 %54, 4
  br i1 %cmp106, label %land.lhs.true108, label %land.lhs.true105.if.end164_crit_edge

land.lhs.true105.if.end164_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

land.lhs.true108:                                 ; preds = %land.lhs.true105
  %fc_topology = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 65
  %55 = ptrtoint ptr %fc_topology to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fc_topology, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp109.not = icmp eq i32 %56, 2
  br i1 %cmp109.not, label %land.lhs.true108.if.end164_crit_edge, label %if.then111

land.lhs.true108.if.end164_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then111:                                       ; preds = %land.lhs.true108
  %cfg_enable_da_id = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 54
  %57 = ptrtoint ptr %cfg_enable_da_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cfg_enable_da_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool112.not = icmp eq i32 %58, 0
  br i1 %tobool112.not, label %if.then111.if.end150_crit_edge, label %if.then113

if.then111.if.end150_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then113:                                       ; preds = %if.then111
  %call114 = tail call i32 @lpfc_ns_cmd(ptr noundef %3, i32 noundef 768, i8 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then113.if.end150_crit_edge, label %do.body117

if.then113.if.end150_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

do.body117:                                       ; preds = %if.then113
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 8
  %pport119 = getelementptr inbounds %struct.lpfc_hba, ptr %60, i32 0, i32 241
  %61 = ptrtoint ptr %pport119 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pport119, align 8
  %tobool120.not = icmp eq ptr %62, null
  %cfg_log_verbose123 = getelementptr inbounds %struct.lpfc_vport, ptr %62, i32 0, i32 51
  %cfg_log_verbose125 = getelementptr inbounds %struct.lpfc_hba, ptr %60, i32 0, i32 139
  %cond.in = select i1 %tobool120.not, ptr %cfg_log_verbose125, ptr %cfg_log_verbose123
  %63 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %63)
  %cond = load i32, ptr %cond.in, align 4
  %and126 = and i32 %cond, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.else137, label %do.end131

do.end131:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #12
  %pcidev133 = getelementptr inbounds %struct.lpfc_hba, ptr %60, i32 0, i32 165
  %64 = ptrtoint ptr %pcidev133 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcidev133, align 4
  %dev134 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %brd_no136 = getelementptr inbounds %struct.lpfc_hba, ptr %60, i32 0, i32 197
  %66 = ptrtoint ptr %brd_no136 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %brd_no136, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.47, ptr noundef %dev134, ptr noundef nonnull @.str.46, i32 noundef %67, i32 noundef %call114) #13
  br label %if.end150

if.else137:                                       ; preds = %do.body117
  %68 = ptrtoint ptr %cfg_log_verbose125 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cfg_log_verbose125, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool140.not = icmp eq i32 %69, 0
  br i1 %tobool140.not, label %if.then141, label %if.else137.if.end150_crit_edge

if.else137.if.end150_crit_edge:                   ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then141:                                       ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #12
  %brd_no144 = getelementptr inbounds %struct.lpfc_hba, ptr %60, i32 0, i32 197
  %70 = ptrtoint ptr %brd_no144 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %brd_no144, align 4
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %60, ptr noundef nonnull @.str.46, i32 noundef %71, i32 noundef %call114) #10
  br label %if.end150

if.end150:                                        ; preds = %if.then141, %if.else137.if.end150_crit_edge, %do.end131, %if.then113.if.end150_crit_edge, %if.then111.if.end150_crit_edge
  %vpi_state = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 6
  %72 = ptrtoint ptr %vpi_state to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %vpi_state, align 8
  %74 = and i8 %73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool153.not = icmp eq i8 %74, 0
  br i1 %tobool153.not, label %if.end150.skip_logo_crit_edge, label %if.end155

if.end150.skip_logo_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_logo

if.end155:                                        ; preds = %if.end150
  %call156 = tail call ptr @lpfc_findnode_did(ptr noundef %3, i32 noundef 16777214) #10
  %tobool157.not = icmp eq ptr %call156, null
  br i1 %tobool157.not, label %if.end155.skip_logo_crit_edge, label %if.end159

if.end155.skip_logo_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_logo

if.end159:                                        ; preds = %if.end155
  %call160 = tail call fastcc i32 @lpfc_send_npiv_logo(ptr noundef %3, ptr noundef nonnull %call156)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end159.if.end164_crit_edge, label %if.end159.skip_logo_crit_edge

if.end159.skip_logo_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_logo

if.end159.if.end164_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.end164:                                        ; preds = %if.end159.if.end164_crit_edge, %land.lhs.true108.if.end164_crit_edge, %land.lhs.true105.if.end164_crit_edge, %land.lhs.true101.if.end164_crit_edge
  %75 = ptrtoint ptr %pport68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pport68, align 8
  %load_flag166 = getelementptr inbounds %struct.lpfc_vport, ptr %76, i32 0, i32 41
  %77 = ptrtoint ptr %load_flag166 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %load_flag166, align 4
  %79 = and i8 %78, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool169.not = icmp eq i8 %79, 0
  br i1 %tobool169.not, label %if.then170, label %if.end164.skip_logo_crit_edge

if.end164.skip_logo_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_logo

if.then170:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @lpfc_discovery_wait(ptr noundef %3)
  br label %skip_logo

skip_logo:                                        ; preds = %if.then170, %if.end164.skip_logo_crit_edge, %if.end159.skip_logo_crit_edge, %if.end155.skip_logo_crit_edge, %if.end150.skip_logo_crit_edge, %if.end95.skip_logo_crit_edge
  tail call void @lpfc_cleanup(ptr noundef %3) #10
  %call172 = tail call i32 @lpfc_sli_host_down(ptr noundef %3) #10
  tail call void @lpfc_stop_vport_timers(ptr noundef %3) #10
  %80 = ptrtoint ptr %pport68 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pport68, align 8
  %load_flag174 = getelementptr inbounds %struct.lpfc_vport, ptr %81, i32 0, i32 41
  %82 = ptrtoint ptr %load_flag174 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %load_flag174, align 4
  %84 = and i8 %83, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool177.not = icmp eq i8 %84, 0
  br i1 %tobool177.not, label %if.then178, label %skip_logo.if.end189.sink.split_crit_edge

skip_logo.if.end189.sink.split_crit_edge:         ; preds = %skip_logo
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189.sink.split

if.then178:                                       ; preds = %skip_logo
  tail call void @lpfc_unreg_all_rpis(ptr noundef %3) #10
  tail call void @lpfc_unreg_default_rpis(ptr noundef %3) #10
  %vpi_state179 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 6
  %85 = ptrtoint ptr %vpi_state179 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %vpi_state179, align 8
  %87 = and i8 %86, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool182.not = icmp eq i8 %87, 0
  br i1 %tobool182.not, label %if.then178.if.end189.sink.split_crit_edge, label %lor.lhs.false183

if.then178.if.end189.sink.split_crit_edge:        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189.sink.split

lor.lhs.false183:                                 ; preds = %if.then178
  %call184 = tail call i32 @lpfc_mbx_unreg_vpi(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %lor.lhs.false183.if.end189_crit_edge, label %lor.lhs.false183.if.end189.sink.split_crit_edge

lor.lhs.false183.if.end189.sink.split_crit_edge:  ; preds = %lor.lhs.false183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189.sink.split

lor.lhs.false183.if.end189_crit_edge:             ; preds = %lor.lhs.false183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189

if.end189.sink.split:                             ; preds = %lor.lhs.false183.if.end189.sink.split_crit_edge, %if.then178.if.end189.sink.split_crit_edge, %skip_logo.if.end189.sink.split_crit_edge
  tail call void @scsi_host_put(ptr noundef %add.ptr.i) #10
  br label %if.end189

if.end189:                                        ; preds = %if.end189.sink.split, %lor.lhs.false183.if.end189_crit_edge
  %vpi190 = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 4
  %88 = ptrtoint ptr %vpi190 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vpi190, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %cmp.i = icmp eq i16 %89, 0
  br i1 %cmp.i, label %if.end189.lpfc_free_vpi.exit_crit_edge, label %if.end.i

if.end189.lpfc_free_vpi.exit_crit_edge:           ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpfc_free_vpi.exit

if.end.i:                                         ; preds = %if.end189
  %conv191 = zext i16 %89 to i32
  tail call void @_raw_spin_lock_irq(ptr noundef %hbalock) #10
  %vpi_bmask.i = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 246
  %90 = ptrtoint ptr %vpi_bmask.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vpi_bmask.i, align 4
  tail call void @_clear_bit(i32 noundef %conv191, ptr noundef %91) #10
  %sli_rev.i = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 31
  %92 = ptrtoint ptr %sli_rev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sli_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %93)
  %cmp1.i = icmp eq i32 %93, 4
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %vpi_used.i = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 25, i32 60, i32 8
  %94 = ptrtoint ptr %vpi_used.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %vpi_used.i, align 4
  %dec.i = add i16 %95, -1
  store i16 %dec.i, ptr %vpi_used.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %hbalock) #10
  br label %lpfc_free_vpi.exit

lpfc_free_vpi.exit:                               ; preds = %if.end3.i, %if.end189.lpfc_free_vpi.exit_crit_edge
  %work_port_events = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 38
  %96 = ptrtoint ptr %work_port_events to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %work_port_events, align 8
  %port_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %5, i32 0, i32 240
  tail call void @_raw_spin_lock_irq(ptr noundef %port_list_lock) #10
  %listentry = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %listentry) #10
  br i1 %call.i.i, label %if.end.i.i, label %lpfc_free_vpi.exit.list_del_init.exit_crit_edge

lpfc_free_vpi.exit.list_del_init.exit_crit_edge:  ; preds = %lpfc_free_vpi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %lpfc_free_vpi.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 1, i32 1
  %97 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i, align 4
  %99 = ptrtoint ptr %listentry to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %listentry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev1.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %98, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %lpfc_free_vpi.exit.list_del_init.exit_crit_edge
  %103 = ptrtoint ptr %listentry to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %listentry, ptr %listentry, align 4
  %prev.i3.i = getelementptr inbounds %struct.lpfc_vport, ptr %3, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %listentry, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_list_lock) #10
  %105 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %3, align 8
  %pcidev206 = getelementptr inbounds %struct.lpfc_hba, ptr %106, i32 0, i32 165
  %107 = ptrtoint ptr %pcidev206 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pcidev206, align 4
  %dev207 = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %brd_no209 = getelementptr inbounds %struct.lpfc_hba, ptr %106, i32 0, i32 197
  %109 = ptrtoint ptr %brd_no209 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %brd_no209, align 4
  %111 = ptrtoint ptr %vpi190 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %vpi190, align 4
  %conv211 = zext i16 %112 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev207, ptr noundef nonnull @.str.50, i32 noundef %110, i32 noundef %conv211) #13
  tail call void @scsi_host_put(ptr noundef %add.ptr.i) #10
  br label %cleanup225

cleanup225:                                       ; preds = %list_del_init.exit, %if.end91.cleanup225_crit_edge, %while.end.cleanup225_crit_edge, %do.body30, %do.body
  %retval.1 = phi i32 [ -1, %do.body ], [ 0, %list_del_init.exit ], [ -1, %do.body30 ], [ -11, %while.end.cleanup225_crit_edge ], [ -2, %if.end91.cleanup225_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_free_sysfs_attr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_debugfs_terminate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remove_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_ns_cmd(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpfc_send_npiv_logo(ptr noundef %vport, ptr noundef %ndlp) unnamed_addr #2 align 64 {
entry:
  %waitq = alloca %struct.wait_queue_head, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %waitq) #10
  %2 = call ptr @memset(ptr %waitq, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %waitq, ptr noundef nonnull @.str.70, ptr noundef nonnull @lpfc_send_npiv_logo.__key) #10
  %lock = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %save_flags = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 36
  %3 = ptrtoint ptr %save_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %save_flags, align 8
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %logo_waitq = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 40
  %5 = ptrtoint ptr %logo_waitq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %logo_waitq, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %logo_waitq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %waitq, ptr %logo_waitq, align 8
  %nlp_fcp_info = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 18
  %8 = ptrtoint ptr %nlp_fcp_info to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nlp_fcp_info, align 2
  %10 = and i8 %9, -17
  store i8 %10, ptr %nlp_fcp_info, align 2
  %nlp_flag = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %11 = ptrtoint ptr %nlp_flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nlp_flag, align 4
  %or = or i32 %12, 4194304
  store i32 %or, ptr %nlp_flag, align 4
  %or7 = or i32 %4, 2
  %13 = ptrtoint ptr %save_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or7, ptr %save_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %call = call i32 @lpfc_issue_els_npiv_logo(ptr noundef %vport, ptr noundef %ndlp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end70_crit_edge

if.end.if.end70_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then10:                                        ; preds = %if.end
  %fc_ratov = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 58
  %14 = ptrtoint ptr %fc_ratov to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fc_ratov, align 8
  %mul = mul i32 %15, 2000
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 509) #10
  %16 = ptrtoint ptr %save_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %save_flags, align 8
  %and19 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %not.tobool20.not = xor i1 %tobool20.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool29.not157 = icmp eq i32 %call2.i, 0
  %tobool29.not = select i1 %not.tobool20.not, i1 %tobool29.not157, i1 false
  %18 = select i1 %tobool20.not, i1 true, i1 %tobool29.not
  br i1 %18, label %if.then10.if.end63_crit_edge, label %if.then32

if.then10.if.end63_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then32:                                        ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %20 = ptrtoint ptr %fc_ratov to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fc_ratov, align 8
  %mul35 = mul i32 %21, 2000
  %call2.i150 = call i32 @__msecs_to_jiffies(i32 noundef %mul35) #10
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call37158 = call i32 @prepare_to_wait_event(ptr noundef nonnull %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %22 = ptrtoint ptr %save_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %save_flags, align 8
  %and40159 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40159)
  %tobool41.not160 = icmp eq i32 %and40159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i150)
  %tobool47.not161 = icmp eq i32 %call2.i150, 0
  %24 = select i1 %tobool41.not160, i1 %tobool47.not161, i1 false
  %__ret33.1162 = select i1 %24, i32 1, i32 %call2.i150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret33.1162)
  %tobool54.not163 = icmp eq i32 %__ret33.1162, 0
  %25 = select i1 %tobool41.not160, i1 true, i1 %tobool54.not163
  br i1 %25, label %if.then32.for.end_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  br label %cleanup

if.then32.for.end_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then32.cleanup_crit_edge
  %__ret33.1164 = phi i32 [ %__ret33.1, %cleanup.cleanup_crit_edge ], [ %__ret33.1162, %if.then32.cleanup_crit_edge ]
  %call61 = call i32 @schedule_timeout(i32 noundef %__ret33.1164) #10
  %call37 = call i32 @prepare_to_wait_event(ptr noundef nonnull %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %26 = ptrtoint ptr %save_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %save_flags, align 8
  %and40 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool47.not = icmp eq i32 %call61, 0
  %28 = select i1 %tobool41.not, i1 %tobool47.not, i1 false
  %__ret33.1 = select i1 %28, i32 1, i32 %call61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret33.1)
  %tobool54.not = icmp eq i32 %__ret33.1, 0
  %29 = select i1 %tobool41.not, i1 true, i1 %tobool54.not
  br i1 %29, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then32.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull %waitq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end63

if.end63:                                         ; preds = %for.end, %if.then10.if.end63_crit_edge
  %30 = ptrtoint ptr %save_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %save_flags, align 8
  %and66 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end63.do.body77_crit_edge, label %if.end63.if.end70_crit_edge

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.end63.do.body77_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body77

if.end70:                                         ; preds = %if.end63.if.end70_crit_edge, %if.end.if.end70_crit_edge
  %rc.0 = phi i32 [ -4, %if.end63.if.end70_crit_edge ], [ -5, %if.end.if.end70_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %nlp_flag72 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 5
  %32 = ptrtoint ptr %nlp_flag72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nlp_flag72, align 4
  %and73 = and i32 %33, -4194305
  store i32 %and73, ptr %nlp_flag72, align 4
  %34 = ptrtoint ptr %save_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %save_flags, align 8
  %and75 = and i32 %35, -3
  store i32 %and75, ptr %save_flags, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %do.body77

do.body77:                                        ; preds = %if.end70, %if.end63.do.body77_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end70 ], [ 0, %if.end63.do.body77_crit_edge ]
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %36 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg_log_verbose, align 4
  %and78 = and i32 %37, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.else87, label %do.end83

do.end83:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %39, i32 0, i32 165
  %40 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %39, i32 0, i32 197
  %42 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %44 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vpi, align 4
  %conv86 = zext i16 %45 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.73, ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %43, i32 noundef %conv86, i32 noundef %rc.1) #13
  br label %do.end99

if.else87:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool89.not = icmp eq i32 %37, 0
  br i1 %tobool89.not, label %if.then90, label %if.else87.do.end99_crit_edge

if.else87.do.end99_crit_edge:                     ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99

if.then90:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vport, align 8
  %brd_no93 = getelementptr inbounds %struct.lpfc_hba, ptr %47, i32 0, i32 197
  %48 = ptrtoint ptr %brd_no93 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brd_no93, align 4
  %vpi94 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %50 = ptrtoint ptr %vpi94 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vpi94, align 4
  %conv95 = zext i16 %51 to i32
  call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %47, ptr noundef nonnull @.str.71, i32 noundef %49, i32 noundef %conv95, i32 noundef %rc.1) #10
  br label %do.end99

do.end99:                                         ; preds = %if.then90, %if.else87.do.end99_crit_edge, %do.end83
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %logo_waitq101 = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp, i32 0, i32 40
  %52 = ptrtoint ptr %logo_waitq101 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %logo_waitq101, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %waitq) #10
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpfc_discovery_wait(ptr noundef readonly %vport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %fc_ratov = getelementptr inbounds %struct.lpfc_hba, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %fc_ratov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fc_ratov, align 8
  %4 = mul i32 %3, 3000
  %mul2 = add i32 %4, 3000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add3 = add i32 %5, %call2.i
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub171 = sub i32 %7, %add3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub171)
  %cmp172 = icmp slt i32 %sub171, 0
  br i1 %cmp172, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %num_disc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 25
  %fc_flag = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %port_state = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %cfg_log_verbose = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 51
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %do.end35.while.body_crit_edge, %while.body.lr.ph
  %8 = ptrtoint ptr %num_disc_nodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_disc_nodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.not = icmp eq i32 %9, 0
  br i1 %cmp4.not, label %lor.lhs.false, label %while.body.do.body_crit_edge

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %while.body
  %10 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fc_flag, align 4
  %and = and i32 %11, 1115236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false5, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_state, align 8
  %14 = add i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %14)
  %15 = icmp ult i32 %14, 30
  br i1 %15, label %lor.lhs.false5.do.body_crit_edge, label %do.body37

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false5.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %while.body.do.body_crit_edge
  %16 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_log_verbose, align 4
  %and9 = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vport, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %19, i32 0, i32 165
  %20 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %19, i32 0, i32 197
  %22 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brd_no, align 4
  %24 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vpi, align 4
  %conv = zext i16 %25 to i32
  %26 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_state, align 8
  %28 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fc_flag, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub18 = sub i32 %30, %6
  %call19 = tail call i32 @jiffies_to_msecs(i32 noundef %sub18) #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.73, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %23, i32 noundef %conv, i32 noundef %27, i32 noundef %29, i32 noundef %9, i32 noundef %call19) #13
  br label %do.end35

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.then22, label %if.else.do.end35_crit_edge

if.else.do.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vport, align 8
  %brd_no25 = getelementptr inbounds %struct.lpfc_hba, ptr %32, i32 0, i32 197
  %33 = ptrtoint ptr %brd_no25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %brd_no25, align 4
  %35 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vpi, align 4
  %conv27 = zext i16 %36 to i32
  %37 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port_state, align 8
  %39 = ptrtoint ptr %fc_flag to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fc_flag, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub31 = sub i32 %41, %6
  %call32 = tail call i32 @jiffies_to_msecs(i32 noundef %sub31) #10
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %32, ptr noundef nonnull @.str.74, i32 noundef %34, i32 noundef %conv27, i32 noundef %38, i32 noundef %40, i32 noundef %9, i32 noundef %call32) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then22, %if.else.do.end35_crit_edge, %do.end
  tail call void @msleep(i32 noundef 1000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %42, %add3
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end35.while.body_crit_edge, label %do.end35.while.end_crit_edge

do.end35.while.end_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end35.while.body_crit_edge:                    ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.body37:                                        ; preds = %lor.lhs.false5
  %43 = ptrtoint ptr %cfg_log_verbose to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cfg_log_verbose, align 4
  %and39 = and i32 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else56, label %do.end44

do.end44:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vport, align 8
  %pcidev46 = getelementptr inbounds %struct.lpfc_hba, ptr %46, i32 0, i32 165
  %47 = ptrtoint ptr %pcidev46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcidev46, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %brd_no49 = getelementptr inbounds %struct.lpfc_hba, ptr %46, i32 0, i32 197
  %49 = ptrtoint ptr %brd_no49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %brd_no49, align 4
  %51 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vpi, align 4
  %conv51 = zext i16 %52 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub54 = sub i32 %53, %6
  %call55 = tail call i32 @jiffies_to_msecs(i32 noundef %sub54) #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.73, ptr noundef %dev47, ptr noundef nonnull @.str.77, i32 noundef %50, i32 noundef %conv51, i32 noundef %13, i32 noundef %11, i32 noundef %call55) #13
  br label %while.end

if.else56:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool58.not = icmp eq i32 %44, 0
  br i1 %tobool58.not, label %if.then59, label %if.else56.while.end_crit_edge

if.else56.while.end_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then59:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vport, align 8
  %brd_no62 = getelementptr inbounds %struct.lpfc_hba, ptr %55, i32 0, i32 197
  %56 = ptrtoint ptr %brd_no62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %brd_no62, align 4
  %58 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vpi, align 4
  %conv64 = zext i16 %59 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %sub67 = sub i32 %60, %6
  %call68 = tail call i32 @jiffies_to_msecs(i32 noundef %sub67) #10
  tail call void (ptr, ptr, ...) @lpfc_dbg_print(ptr noundef %55, ptr noundef nonnull @.str.77, i32 noundef %57, i32 noundef %conv64, i32 noundef %13, i32 noundef %11, i32 noundef %call68) #10
  br label %while.end

while.end:                                        ; preds = %if.then59, %if.else56.while.end_crit_edge, %do.end44, %do.end35.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub74 = sub i32 %add3, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub74)
  %cmp75 = icmp slt i32 %sub74, 0
  br i1 %cmp75, label %do.body78, label %while.end.if.end119_crit_edge

while.end.if.end119_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

do.body78:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %63) #10
  %64 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vport, align 8
  %pcidev92 = getelementptr inbounds %struct.lpfc_hba, ptr %65, i32 0, i32 165
  %66 = ptrtoint ptr %pcidev92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcidev92, align 4
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %brd_no95 = getelementptr inbounds %struct.lpfc_hba, ptr %65, i32 0, i32 197
  %68 = ptrtoint ptr %brd_no95 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %brd_no95, align 4
  %vpi96 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  %70 = ptrtoint ptr %vpi96 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vpi96, align 4
  %conv97 = zext i16 %71 to i32
  %port_state98 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 3
  %72 = ptrtoint ptr %port_state98 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port_state98, align 8
  %fc_flag99 = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 7
  %74 = ptrtoint ptr %fc_flag99 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fc_flag99, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %sub100 = sub i32 %76, %6
  %call101 = tail call i32 @jiffies_to_msecs(i32 noundef %sub100) #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev93, ptr noundef nonnull @.str.80, i32 noundef %69, i32 noundef %conv97, i32 noundef %73, i32 noundef %75, i32 noundef %call101) #13
  br label %if.end119

if.end119:                                        ; preds = %do.body78, %while.end.if.end119_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli_host_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_stop_vport_timers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_unreg_all_rpis(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_unreg_default_rpis(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_mbx_unreg_vpi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lpfc_create_vport_work_array(ptr noundef %phba) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_vports = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 243
  %0 = ptrtoint ptr %max_vports to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_vports, align 2
  %conv = zext i16 %1 to i32
  %add = shl nuw nsw i32 %conv, 2
  %2 = add nuw nsw i32 %add, 4
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #15
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_list_lock = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 240
  tail call void @_raw_spin_lock_irq(ptr noundef %port_list_lock) #10
  %port_list = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 239
  %3 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn65 = load ptr, ptr %port_list, align 4
  %cmp3.not67 = icmp eq ptr %.pn65, %port_list
  br i1 %cmp3.not67, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn69 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn65, %if.end.for.body_crit_edge ]
  %index.068 = phi i32 [ %index.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %port_iterator.070 = getelementptr i8, ptr %.pn69, i32 -4
  %load_flag = getelementptr i8, ptr %.pn69, i32 592
  %4 = ptrtoint ptr %load_flag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %load_flag, align 4
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %.pn69, i32 -2452
  %call9 = tail call ptr @scsi_host_get(ptr noundef %add.ptr.i) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.body, label %if.end35

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %port_iterator.070 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_iterator.070, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %8) #10
  %9 = ptrtoint ptr %port_iterator.070 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_iterator.070, align 8
  %pcidev = getelementptr inbounds %struct.lpfc_hba, ptr %10, i32 0, i32 165
  %11 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %brd_no = getelementptr inbounds %struct.lpfc_hba, ptr %10, i32 0, i32 197
  %13 = ptrtoint ptr %brd_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %brd_no, align 4
  %vpi = getelementptr i8, ptr %.pn69, i32 16
  %15 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vpi, align 4
  %conv22 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %14, i32 noundef %conv22) #13
  br label %for.inc

if.end35:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %index.068, 1
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %index.068
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %port_iterator.070, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end35, %do.body, %for.body.for.inc_crit_edge
  %index.1 = phi i32 [ %index.068, %for.body.for.inc_crit_edge ], [ %inc, %if.end35 ], [ %index.068, %do.body ]
  %18 = ptrtoint ptr %.pn69 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn69, align 4
  %cmp3.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp3.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret ptr %call8.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_destroy_vport_work_array(ptr nocapture noundef readonly %phba, ptr noundef %vports) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vports, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %max_vports = getelementptr inbounds %struct.lpfc_hba, ptr %phba, i32 0, i32 243
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %for.cond.preheader
  %i.013 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.land.rhs_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %vports, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp3.not = icmp eq ptr %1, null
  br i1 %cmp3.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %add.ptr.i = getelementptr i8, ptr %1, i32 -2448
  tail call void @scsi_host_put(ptr noundef %add.ptr.i) #10
  %inc = add nuw nsw i32 %i.013, 1
  %2 = ptrtoint ptr %max_vports to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_vports, align 2
  %conv = zext i16 %3 to i32
  %cmp1.not.not = icmp ult i32 %i.013, %conv
  br i1 %cmp1.not.not, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %vports) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_vport_reset_stat_data(ptr noundef readonly %vport) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 9
  %0 = ptrtoint ptr %fc_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fc_nodes, align 4
  %cmp.not19 = icmp eq ptr %1, %fc_nodes
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ndlp.020 = phi ptr [ %next_ndlp.021, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ndlp.020 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next_ndlp.021 = load ptr, ptr %ndlp.020, align 8
  %lat_data = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.020, i32 0, i32 34
  %3 = ptrtoint ptr %lat_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lat_data, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memset(ptr %4, i32 0, i32 80)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %next_ndlp.021, %fc_nodes
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_alloc_bucket(ptr noundef readonly %vport) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 9
  %0 = ptrtoint ptr %fc_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fc_nodes, align 4
  %cmp.not61 = icmp eq ptr %1, %fc_nodes
  br i1 %cmp.not61, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vpi = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ndlp.062 = phi ptr [ %1, %for.body.lr.ph ], [ %next_ndlp.063, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %ndlp.062 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next_ndlp.063 = load ptr, ptr %ndlp.062, align 8
  %lat_data = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.062, i32 0, i32 34
  %3 = ptrtoint ptr %lat_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lat_data, align 8
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %lat_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %lat_data, align 8
  %nlp_state = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.062, i32 0, i32 11
  %6 = ptrtoint ptr %nlp_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlp_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %7)
  %cmp8 = icmp eq i16 %7, 7
  br i1 %cmp8, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 80) #16
  %9 = ptrtoint ptr %lat_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %lat_data, align 8
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.body, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vport, align 8
  tail call void @lpfc_dmp_dbg(ptr noundef %11) #10
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
  %18 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vpi, align 4
  %conv21 = zext i16 %19 to i32
  %nlp_DID = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.062, i32 0, i32 6
  %20 = ptrtoint ptr %nlp_DID to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlp_DID, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %17, i32 noundef %conv21, i32 noundef %21) #13
  br label %for.inc

for.inc:                                          ; preds = %do.body, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %next_ndlp.063, %fc_nodes
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpfc_free_bucket(ptr noundef readonly %vport) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_nodes = getelementptr inbounds %struct.lpfc_vport, ptr %vport, i32 0, i32 9
  %0 = ptrtoint ptr %fc_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fc_nodes, align 4
  %cmp.not18 = icmp eq ptr %1, %fc_nodes
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ndlp.019 = phi ptr [ %next_ndlp.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ndlp.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next_ndlp.0 = load ptr, ptr %ndlp.019, align 8
  %lat_data = getelementptr inbounds %struct.lpfc_nodelist, ptr %ndlp.019, i32 0, i32 34
  %3 = ptrtoint ptr %lat_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lat_data, align 8
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %lat_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %lat_data, align 8
  %cmp.not = icmp eq ptr %next_ndlp.0, %fc_nodes
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_read_sparam(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_sli_issue_mbox_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_mbuf_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_disc_state_machine(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_cleanup_rpis(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpfc_issue_init_vpi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpfc_issue_els_npiv_logo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133}
!llvm.named.register.sp = !{!134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 308, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lpfc_vport_create._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lpfc_vport_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 318, i32 3}
!10 = !{ptr @lpfc_vport_create._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @lpfc_vport_create._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 327, i32 3}
!14 = !{ptr @lpfc_vport_create._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @lpfc_vport_create._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 337, i32 3}
!18 = !{ptr @lpfc_vport_create._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @lpfc_vport_create._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 347, i32 3}
!22 = !{ptr @lpfc_vport_create._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @lpfc_vport_create._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 359, i32 4}
!26 = !{ptr @lpfc_vport_create._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lpfc_vport_create._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 363, i32 4}
!30 = !{ptr @lpfc_vport_create._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lpfc_vport_create._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 379, i32 63}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 380, i32 63}
!36 = !{ptr @.str.26, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 381, i32 3}
!38 = !{ptr @lpfc_vport_create._entry.25, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @lpfc_vport_create._entry_ptr.27, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 391, i32 3}
!42 = !{ptr @lpfc_vport_create._entry.28, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lpfc_vport_create._entry_ptr.30, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.32, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 429, i32 4}
!46 = !{ptr @lpfc_vport_create._entry.31, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @lpfc_vport_create._entry_ptr.33, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.35, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 472, i32 4}
!50 = !{ptr @lpfc_vport_create._entry.34, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @lpfc_vport_create._entry_ptr.36, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.38, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 481, i32 2}
!54 = !{ptr @lpfc_vport_create._entry.37, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @lpfc_vport_create._entry_ptr.39, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.40, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 651, i32 3}
!58 = !{ptr @.str.41, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @lpfc_vport_delete._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @lpfc_vport_delete._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.43, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 660, i32 3}
!63 = !{ptr @lpfc_vport_delete._entry.42, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @lpfc_vport_delete._entry_ptr.44, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.46, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 715, i32 5}
!67 = !{ptr @.str.47, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @lpfc_vport_delete._entry.45, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @lpfc_vport_delete._entry_ptr.48, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.50, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 771, i32 2}
!72 = !{ptr @lpfc_vport_delete._entry.49, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @lpfc_vport_delete._entry_ptr.51, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.52, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 792, i32 4}
!76 = !{ptr @.str.53, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @lpfc_create_vport_work_array._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @lpfc_create_vport_work_array._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.54, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 859, i32 5}
!81 = !{ptr @.str.55, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @lpfc_alloc_bucket._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @lpfc_alloc_bucket._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.56, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 148, i32 4}
!86 = !{ptr @.str.57, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @lpfc_vport_sparm._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @lpfc_vport_sparm._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.59, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 157, i32 4}
!91 = !{ptr @lpfc_vport_sparm._entry.58, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @lpfc_vport_sparm._entry_ptr.60, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.61, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 193, i32 2}
!95 = !{ptr @.str.62, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lpfc_valid_wwn_format._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @lpfc_valid_wwn_format._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.63, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 579, i32 2}
!100 = !{ptr @.str.64, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @disable_vport._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @disable_vport._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.65, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 619, i32 4}
!105 = !{ptr @.str.66, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @enable_vport._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @enable_vport._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.68, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 627, i32 2}
!110 = !{ptr @enable_vport._entry.67, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @enable_vport._entry_ptr.69, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @lpfc_send_npiv_logo.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 494, i32 2}
!114 = !{ptr @.str.70, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.71, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 526, i32 2}
!117 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.73, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @lpfc_send_npiv_logo._entry, !116, !"_entry", i1 false, i1 false}
!120 = !{ptr @lpfc_send_npiv_logo._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.74, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 264, i32 4}
!123 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @lpfc_discovery_wait._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @lpfc_discovery_wait._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.77, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 275, i32 4}
!128 = !{ptr @lpfc_discovery_wait._entry.76, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @lpfc_discovery_wait._entry_ptr.78, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.80, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/lpfc/lpfc_vport.c", i32 287, i32 3}
!132 = !{ptr @lpfc_discovery_wait._entry.79, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @lpfc_discovery_wait._entry_ptr.81, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{!"sp"}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"branch_weights", i32 2000, i32 1}
