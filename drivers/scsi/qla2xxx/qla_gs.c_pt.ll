; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_gs.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_gs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_qla_host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, i32, [16 x i8], %struct.anon.79, %struct.atomic_t, i32, i32, i32, i32, i16, i16, %struct.fc_port, %union.port_id_t, i8, i16, i8, %struct.atomic_t, i8, i32, %struct.timer_list, [8 x i8], [8 x i8], [8 x i8], [8 x i8], ptr, %struct.completion, i16, i16, [6 x i8], %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i16, ptr, i32, %struct.atomic_t, i16, i16, ptr, %struct.scsi_qlt_host, ptr, i32, i32, %struct.fc_host_statistics, %struct.qla_statistics, %struct.bidi_statistics, %struct.atomic_t, %struct.qla8044_reset_template, i16, i16, i16, i16, i16, i16, ptr, %struct.purex_list, %struct.purex_item, %struct.name_list_extended, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, [8 x i8], [8 x i8], i16, [4 x i16], %struct.list_head, %struct.fab_scan, i8, i32, i64, i64, i64, i64, i64, i64, %struct.edif_dbell, %struct.pur_core }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.79 = type { i16, [2 x i8] }
%struct.fc_port = type { %struct.list_head, ptr, [3 x i8], i8, [8 x i8], [8 x i8], %union.port_id_t, i16, i16, %struct.completion, i32, i32, ptr, i8, i32, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, i32, %struct.list_head, %struct.work_struct, %struct.work_struct, i64, i32, [2 x ptr], i16, i16, i16, i8, [8 x i8], i16, i32, %struct.atomic_t, i32, i32, ptr, ptr, i32, i8, i8, i8, i32, i32, i16, ptr, i32, ptr, %struct.ct_sns_desc, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, [64 x i8], i8, i8, i16, i16, ptr, i64, i64, i64, %struct.anon.143 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ct_sns_desc = type { ptr, i32 }
%struct.anon.143 = type { i16, i32, i32, i64, i64, i8, i8, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock }
%union.port_id_t = type { i24 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.scsi_qlt_host = type { ptr, %struct.mutex, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_statistics = type { i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.qla_dif_statistics }
%struct.qla_dif_statistics = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.bidi_statistics = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.qla8044_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.purex_list = type { %struct.list_head, %struct.spinlock }
%struct.purex_item = type { %struct.list_head, ptr, ptr, %struct.atomic_t, i16, %struct.anon.166 }
%struct.anon.166 = type { [64 x i8] }
%struct.name_list_extended = type { ptr, i32, %struct.list_head, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.fab_scan = type { ptr, i32, i16, i32, %struct.delayed_work }
%struct.edif_dbell = type { i32, %struct.spinlock, %struct.list_head, %struct.completion }
%struct.pur_core = type { i32, %struct.spinlock, %struct.list_head }
%struct.ms_iocb_entry_t = type { i8, i8, i8, i8, i32, %union.target_id_t, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i32, i32, i32, %struct.dsd64, %struct.dsd64 }
%union.target_id_t = type { i16 }
%struct.dsd64 = type <{ i64, i32 }>
%struct.qla_hw_data = type { ptr, ptr, %struct.anon.144, i16, i16, [108 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i8, ptr, ptr, ptr, [8 x i32], [8 x i32], [8 x i32], i8, i8, i8, i8, ptr, ptr, i16, i16, i8, i8, i8, %struct.atomic_t, i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i16, i16, ptr, i16, i16, ptr, i16, i8, i8, i16, i32, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i64, i8, i8, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, %struct.fc_els_flogi, ptr, [32 x i16], [32 x i32], [8 x i32], ptr, ptr, i32, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, i32, %struct.mutex, i16, i16, i16, i16, i16, [2 x i16], i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, [16 x i16], [4 x i8], [4 x i16], [3 x i8], [3 x i8], i32, [3 x i8], [3 x i8], [2 x %struct.fwdt], ptr, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [8 x i16], i64, i64, %struct.mutex, i32, i16, [4 x i16], [17 x i8], [80 x i8], [17 x i8], ptr, i32, i32, i32, i32, %struct.mutex, [2 x i8], [2 x i8], [16 x i8], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.156, i8, i16, i8, i16, i16, ptr, %struct.list_head, [8 x i32], i16, i16, i16, i32, ptr, ptr, ptr, %struct.work_struct, %struct.qlfc_fw, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, ptr, %struct.qla82xx_legacy_intr_set, i16, i16, %struct.list_head, i8, i32, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mr_data_fx00, i32, [36 x i8], %struct.qlt_hw_data, i32, i32, i16, i16, ptr, %struct.anon.163, i64, i64, i64, i64, i64, %struct.atomic_t, i16, i8, %struct.atomic_t, i16, %struct.qla_hw_data_stat, i32, ptr, %struct.btree_head32, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.els_reject, i8 }
%struct.anon.144 = type { i56 }
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.152, i32 }
%union.anon.152 = type { %struct.anon.154 }
%struct.anon.154 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.fwdt = type { ptr, i32, i32 }
%struct.anon.156 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlfc_fw = type { ptr, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla82xx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.mr_data_fx00 = type { [64 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], %struct.fc_port, i8, i8, i8, i32, i16, i8, i16, i32, i32, i8, i8, i8 }
%struct.qlt_hw_data = type { i8, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr, i32, i16, i32, i32, i32, [2 x i8], [2 x i8], [8 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, i32, %struct.spinlock, i32, %struct.spinlock, i32, [60 x i8], %struct.spinlock, [84 x i8] }
%struct.anon.163 = type { %struct.anon.164, %struct.anon.165 }
%struct.anon.164 = type { %struct.list_head, i32 }
%struct.anon.165 = type { %struct.list_head, i32 }
%struct.qla_hw_data_stat = type { i32, i32 }
%struct.btree_head32 = type { %struct.btree_head }
%struct.btree_head = type { ptr, ptr, i32 }
%struct.els_reject = type { ptr, i32, i16 }
%struct.anon.82 = type { i8, i8 }
%struct.ct_arg = type { ptr, i16, i32, i32, i32, i32, i32, i32, ptr, ptr, %union.port_id_t }
%struct.ct_entry_24xx = type { i8, i8, i8, i8, i32, i16, i16, i16, i8, i8, i16, i16, i16, [10 x i8], i32, i32, [2 x %struct.dsd64] }
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.ct_rsp_hdr = type { %struct.ct_cmd_hdr, i16, i16, i8, i8, i8, i8 }
%struct.ct_cmd_hdr = type { i8, [3 x i8], i8, i8, i8, i8 }
%struct.anon.151 = type <{ i16, i16, i64, i16, i16, i16, i16, i32, [36 x i8] }>
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ct_sns_req = type { %struct.ct_cmd_hdr, i16, i16, i8, [3 x i8], %union.anon.110 }
%union.anon.110 = type { %struct.anon.119 }
%struct.anon.119 = type { [8 x i8], i32, [8 x i8], %struct.ct_fdmi2_hba_attributes }
%struct.ct_fdmi2_hba_attributes = type { i32, [17 x %struct.ct_fdmi_hba_attr] }
%struct.ct_fdmi_hba_attr = type { i16, i16, %union.anon.120 }
%union.anon.120 = type { i32, [252 x i8] }
%struct.ct_sns_rsp = type { %struct.ct_rsp_hdr, %union.anon.132 }
%union.anon.132 = type { %struct.anon.138, [5576 x i8] }
%struct.anon.138 = type { i32, [8 x i8], %struct.ct_fdmi1_hba_attributes }
%struct.ct_fdmi1_hba_attributes = type { i32, [10 x %struct.ct_fdmi_hba_attr] }
%struct.anon.133 = type { i8, %struct.be_id_t, [8 x i8], i8, [255 x i8], [8 x i8], i8, [255 x i8], [8 x i8], [16 x i8], [4 x i8], [32 x i8], [16 x i8], [8 x i8], i8, [3 x i8] }
%struct.be_id_t = type { i8, i8, i8 }
%struct.sw_info_t = type { %union.port_id_t, [8 x i8], [8 x i8], [8 x i8], i16, i8, i8 }
%struct.ct_sns_gid_pt_data = type { i8, %struct.be_id_t }
%struct.srb = type { i8, [3 x i8], %struct.iocb_resource, %struct.kref, ptr, %struct.wait_queue_head, ptr, ptr, i8, i32, i16, i16, ptr, i32, ptr, ptr, %struct.list_head, i32, i32, i32, i32, ptr, %union.anon.83, %struct.anon.106, ptr, ptr, ptr }
%struct.iocb_resource = type { i8, i8, i16 }
%union.anon.83 = type { %struct.srb_iocb }
%struct.srb_iocb = type { %union.anon.84, %struct.timer_list, ptr }
%union.anon.84 = type { %struct.anon.87, [112 x i8] }
%struct.anon.87 = type { i64, i32, i32, %struct.completion, i16 }
%struct.anon.106 = type { i8, %struct.anon.107, %struct.anon.108 }
%struct.anon.107 = type { i32, ptr, i32 }
%struct.anon.108 = type { i32, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.81, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.81 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.anon.117 = type { [8 x i8], i8, [255 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.75, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.56 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.init_cb_24xx = type <{ i16, i16, i16, i16, i16, i16, [8 x i8], [8 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i64, i64, i64, i16, i16, [4 x i8], i16, i16, i64, i16, i16, i32, i32, i32, i16, i16, [20 x i8] }>
%struct.init_cb_t = type { i8, i8, [2 x i8], i16, i16, i16, i8, i8, [8 x i8], i16, i8, i8, [8 x i8], i16, i16, i16, i16, i64, i64, i16, i8, i8, i16, [2 x i8], [2 x i8], i8, i8, [2 x i8], [26 x i8] }
%struct.anon.140 = type { i16, i16 }
%struct.qla_work_evt = type { %struct.list_head, i32, i32, %union.anon.171 }
%union.anon.171 = type { %struct.anon.181 }
%struct.anon.181 = type { ptr, [64 x i8], i32 }
%struct.event_arg = type { ptr, ptr, %union.port_id_t, [2 x i16], i16, [8 x i8], [2 x i32] }
%struct.qla_qpair = type { %struct.spinlock, %struct.atomic_t, i32, ptr, ptr, i32, i8, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.qla_counters, %struct.list_head, %struct.list_head, i16, i32, i64, %struct.qla_tgt_counters, i16, [94 x i8], %struct.qla_fw_resources, i32, i32, i32, [108 x i8] }
%struct.qla_counters = type { i64, i64, i64, i64 }
%struct.qla_tgt_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_fw_resources = type { i16, i16, i16, i16 }
%struct.fab_scan_rp = type { %union.port_id_t, i32, [8 x i8], [8 x i8] }
%struct.ct_sns_gpnft_rsp = type { %struct.anon.186, [1 x %struct.ct_sns_gpn_ft_data] }
%struct.anon.186 = type { %struct.ct_cmd_hdr, i16, i16, i8, i8, i8, i8 }
%struct.ct_sns_gpn_ft_data = type { i8, [3 x i8], i32, [8 x i8] }
%struct.ct_fdmi_port_attr = type { i16, i16, %union.anon.123 }
%union.anon.123 = type { i32, [252 x i8] }

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s failed, error status (%x) on port_id: %02x%02x%02x.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s failed rejected request on port_id: %02x%02x%02x Completion status 0x%x, response 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s failed, Name server has logged out\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s failed, completion status (%x) on port_id: %02x%02x%02x.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GA_NXT issue IOCB failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GA_NXT\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"GA_NXT entry - nn %8phN pn %8phN port_id=%02x%02x%02x.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GID_PT issue IOCB failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GID_PT\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GPN_ID issue IOCB failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPN_ID\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GNN_ID issue IOCB failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GNN_ID\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"GID_PT entry - nn %8phN pn %8phN portid=%02x%02x%02x.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RFF_ID call not supported on ISP2100/ISP2200.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s FW:v%s DVR:v%s\00", [46 x i8] zeroinitializer }, align 32
@qla2x00_version_str = external dso_local global [0 x i8], align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s FW:v%d.%02d.%02d DVR:v%s\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RSNN_ID call unsupported on ISP2100/ISP2200.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed management_server login: loopid=%x rval=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Failed management_server login: loopid=%x mb[0]=%x mb[1]=%x mb[2]=%x mb[6]=%x mb[7]=%x.\0A\00", [39 x i8] zeroinitializer }, align 32
@ql2xsmartsan = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"GFPN_ID issue IOCB failed (%d).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GFPN_ID\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GPSC issue IOCB failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPSC\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"GPSC command unsupported, disabling query.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"GPSC ext entry - fpn %8phN speeds=%04x speed=%04x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GFF_ID issue IOCB failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GFF_ID\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"GFF_ID IOCB status had a failure status code.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s %8phC DS %d LS %d rc %d login %d|%d rscn %d|%d lid %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.qla24xx_handle_gpsc_event = private unnamed_addr constant [26 x i8] c"qla24xx_handle_gpsc_event\00", align 1
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s %8phC generation changed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpsc\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Async-%s %8phC hdl=%x loopid=%x portid=%02x%02x%02x.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s %d port_id: %06x\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qla24xx_handle_gpnid_event = private unnamed_addr constant [27 x i8] c"qla24xx_handle_gpnid_event\00", align 1
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Port login retry %8phN, lid 0x%04x cnt=%d.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s %d %8phC revalidate session with ADISC\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s %d %8phC login\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s %d %8phC DS %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s %d %8phC post new sess\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpnid\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate ct_sns request.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Async-%s hdl=%x ID %3phC.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Async done-%s res %x ID %x. %8phC\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gffid\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Async-%s hdl=%x  %8phC.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s enter\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.qla24xx_async_gnnft_done = private unnamed_addr constant [25 x i8] c"qla24xx_async_gnnft_done\00", align 1
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s scan stop due to chip reset %x/%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Fabric scan failed for %d retries.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Detected duplicate NPORT ID from switch data base: ID %06x WWN %8phN WWN %8phN\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Detected %d duplicate NPORT ID(s) from switch data base\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s %d %8phC post del sess\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Port login retry %8phN, lid 0x%04x retry cnt=%d.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.qla24xx_async_gpnft_done = private unnamed_addr constant [25 x i8] c"qla24xx_async_gpnft_done\00", align 1
@__func__.qla24xx_async_gpnft = private unnamed_addr constant [20 x i8] c"qla24xx_async_gpnft\00", align 1
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: scan active\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Performing FCP Scan\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s scan list size %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NVME scan did not provide SP\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpnft\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Async-%s hdl=%x FC4Type %x.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Scan scheduled.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: schedule loop resync\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.qla_scan_work_fn = private unnamed_addr constant [17 x i8] c"qla_scan_work_fn\00", align 1
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gnnid\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Async-%s - %8phC hdl=%x loopid=%x portid %06x.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s %8phC DS %d LS %d rc %d login %d|%d rscn %d|%d fcpcnt %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qla24xx_handle_gfpnid_event = private unnamed_addr constant [28 x i8] c"qla24xx_handle_gfpnid_event\00", align 1
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gfpnid\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rft_id\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to allocate ct_sns request.\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.qla_async_rftid = private unnamed_addr constant [16 x i8] c"qla_async_rftid\00", align 1
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Async-%s - hdl=%x portid %06x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RFT_ID issue IOCB failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Async done-%s exiting normally.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Async done-%s timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Async done-%s fail rc %x.  Retry count %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rff_id\00", [25 x i8] zeroinitializer }, align 32
@__func__.qla_async_rffid = private unnamed_addr constant [16 x i8] c"qla_async_rffid\00", align 1
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Async-%s - hdl=%x portid %06x feature %x type %x.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RFF_ID issue IOCB failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rnid\00", [27 x i8] zeroinitializer }, align 32
@__func__.qla_async_rnnid = private unnamed_addr constant [16 x i8] c"qla_async_rnnid\00", align 1
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Async-%s - hdl=%x portid %06x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RNN_ID issue IOCB failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rsnn_nn\00", [24 x i8] zeroinitializer }, align 32
@__func__.qla_async_rsnn_nn = private unnamed_addr constant [18 x i8] c"qla_async_rsnn_nn\00", align 1
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Async-%s - hdl=%x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GA_NXT Send SNS failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"GA_NXT failed, rejected request ga_nxt_rsp:\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GID_PT Send SNS failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"GID_PT failed, rejected request, gid_rsp:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GPN_ID Send SNS failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"GPN_ID failed, rejected request, gpn_rsp:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GNN_ID Send SNS failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"GNN_ID failed, rejected request, gnn_rsp:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"GID_PT entry - nn %8phN pn %8phN port_id=%02x%02x%02x.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RFT_ID Send SNS failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RFT_ID failed, rejected request rft_rsp:\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RFT_ID exiting normally.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RNN_ID Send SNS failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RNN_ID failed, rejected request, rnn_rsp:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RNN_ID exiting normally.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RPRT (callopt=%x count=%u size=%lu).\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RPRT %016llx  %016llx.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RPRT iocb failed (%d).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RPRT\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RPRT already registered.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"RPRT failed, CT Reason code: %#x, CT Explanation %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RPRT exiting normally.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FC4 TYPES = %016llx.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NVME FC4 Type = %02x 0x0 0x0 0x0 0x0 0x0.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SUPPORTED SPEED = %x.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CURRENT SPEED = %x.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MAX FRAME SIZE = %x.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s:host%lu\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla2xxx\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"OS DEVICE NAME = %s.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Linux-default\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HOSTNAME = %s.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NODENAME = %016llx.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PORTNAME = %016llx.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PORT SYMBOLIC NAME = %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PORT TYPE = %x.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SUPPORTED COS = %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FABRIC NAME = %016llx.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PORT ACTIVE FC4 TYPE = %016llx.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PORT_STATE = %x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PORT COUNT = %x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PORT ID = %x.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Smart SAN Initiator\00", [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SMARTSAN SERVICE CATEGORY = %s.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Smart SAN GUID = %016llx-%016llx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Smart SAN Version 2.0\00", [42 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SMARTSAN VERSION = %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ISP%04x\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SMARTSAN PRODUCT NAME = %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SMARTSAN PORT INFO = %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SMARTSAN SECURITY SUPPORT = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RHBA (callopt=%x count=%u size=%lu).\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RHBA %016llx %016llx.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RHBA iocb failed (%d).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RHBA\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RHBA already registered.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RHBA failed, CT Reason %#x, CT Explanation %#x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RHBA exiting normally.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"QLogic Corporation\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MANUFACTURER = %s.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SN\00", [29 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%c%05d\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SERIAL NUMBER = %s.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MODEL NAME = %s.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MODEL DESCRIPTION = %s.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MN\00", [29 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EC\00", [29 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HW:%s\00", [26 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HARDWARE VERSION = %s.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRIVER VERSION = %s.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d.%02d\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"OPTROM VERSION = %d.%02d.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FIRMWARE VERSION = %s.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s %s\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Linux\00", [26 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OS VERSION = %s.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CT PAYLOAD LENGTH = 0x%x.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SYMBOLIC NAME = %s.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VENDOR SPECIFIC INFO = 0x%x.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BIOS %d.%02d\00", [19 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BIOS NAME = %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QLGC\00", [27 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VENDOR IDENTIFIER = %s.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DHBA portname = %8phN.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DHBA issue IOCB failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DHBA\00", [27 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DHBA exiting normally.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RPA (callopt=%x count=%u size=%lu).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RPA %016llx.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RPA iocb failed (%d).\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RPA\00", [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RPA already registered.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"RPA failed, CT Reason code: %#x, CT Explanation %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RPA exiting normally.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Async done-%s res %x, WWPN %8phC \0A\00", [61 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Async-%s OUT WWPN %8phC speeds=%04x speed=%04x.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Async done-%s fail res %x rscn gen %d ID %3phC. %8phC\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Async done-%s good rscn gen %d ID %3phC. %8phC\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: req %p rsp %p are not setup\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qla24xx_async_gnnft = private unnamed_addr constant [20 x i8] c"qla24xx_async_gnnft\00", align 1
@.str.181 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/qla2xxx/qla_gs.c\00", [34 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: FC4Type %x, CT-PASSTHRU %s command ctarg rsp size %d, ctarg req size %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gnnft\00", [26 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: schedule\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Async done-%s res %x FC4Type %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Switch Zone check please .\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Async done-%s rescan failed on all retries.\0A\00", [51 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.188 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"FCPort %8phC disc_state transition: %s to %s - portid=%06x.\0A\00", [35 x i8] zeroinitializer }, align 32
@port_dstate_str = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.189, ptr @.str.12, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198], [52 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DELETED\00", [24 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GNL\00", [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LOGIN_PEND\00", [21 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LOGIN_FAILED\00", [19 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPDB\00", [27 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UPD_FCPORT\00", [21 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LOGIN_COMPLETE\00", [17 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADISC\00", [26 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DELETE_PEND\00", [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOGIN_AUTH_PEND\00", [16 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Async done-%s res %x, WWPN %8phC %8phC\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.qla25xx_fdmi_port_speed_currently = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 1, i32 2, i32 32768, i32 8, i32 16, i32 32, i32 64, i32 128, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 4], [48 x i8] zeroinitializer }, align 32
@switch.table.qla2x00_port_attributes = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 1, i32 2, i32 32768, i32 8, i32 16, i32 32, i32 64, i32 128, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 4], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 6, i64 7, i64 21, i64 41]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 259]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 265]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 265]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 11]
@__sancov_gen_cov_switch_values.205 = internal global [10 x i64] [i64 8, i64 16, i64 128, i64 256, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.206 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 458752]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 11]
@__sancov_gen_cov_switch_values.208 = internal global [10 x i64] [i64 8, i64 16, i64 128, i64 256, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.209 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 7, i64 9]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 16]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.213 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 131, i32 7 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 147, i32 9 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 170, i32 6 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 182, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 238, i32 7 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 239, i32 56 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 259, i32 7 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 329, i32 7 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 330, i32 56 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 409, i32 8 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 412, i32 7 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 476, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 479, i32 7 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 488, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 675, i32 7 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 854, i32 31 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 857, i32 30 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 875, i32 7 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1376, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1380, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2570, i32 8 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2573, i32 7 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2685, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2687, i32 7 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2695, i32 9 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2706, i32 8 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2774, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2776, i32 11 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2778, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2822, i32 6 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2837, i32 7 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2913, i32 13 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2939, i32 6 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3008, i32 6 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3046, i32 9 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3054, i32 9 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3062, i32 9 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3083, i32 10 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3095, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3190, i32 13 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3213, i32 7 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3245, i32 6 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3296, i32 9 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3348, i32 13 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3374, i32 6 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3424, i32 6 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3428, i32 7 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3442, i32 8 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3484, i32 9 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3544, i32 7 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3580, i32 13 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3596, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3984, i32 7 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3992, i32 7 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4047, i32 7 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4052, i32 7 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4057, i32 13 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4080, i32 6 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4112, i32 7 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4131, i32 6 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4189, i32 13 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4216, i32 6 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4256, i32 6 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4317, i32 13 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 600, i32 13 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 609, i32 7 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 645, i32 6 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 651, i32 7 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 512, i32 7 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 516, i32 7 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 525, i32 7 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 696, i32 13 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 739, i32 6 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 745, i32 7 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 787, i32 13 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 830, i32 6 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 836, i32 7 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 894, i32 13 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 943, i32 6 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1025, i32 7 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1029, i32 7 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1094, i32 7 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1098, i32 7 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1164, i32 8 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1168, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1220, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1224, i32 8 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1234, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1282, i32 7 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1286, i32 7 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1292, i32 7 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1338, i32 7 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1342, i32 7 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1348, i32 7 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2301, i32 6 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2323, i32 6 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2333, i32 7 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2336, i32 52 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2342, i32 8 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2347, i32 7 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2352, i32 35 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1874, i32 6 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1878, i32 7 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1891, i32 6 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1902, i32 6 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1913, i32 6 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1919, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1919, i32 17 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1925, i32 6 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1929, i32 39 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1930, i32 14 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1933, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1939, i32 6 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1953, i32 6 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1964, i32 6 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1976, i32 6 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1987, i32 6 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1998, i32 6 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2010, i32 6 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2024, i32 6 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2036, i32 6 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2047, i32 6 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2058, i32 6 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2068, i32 9 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2074, i32 6 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2086, i32 6 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2095, i32 9 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2101, i32 6 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2108, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2114, i32 6 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2125, i32 6 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2136, i32 6 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2167, i32 6 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2201, i32 6 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2213, i32 7 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2217, i32 52 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2223, i32 8 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2228, i32 7 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2234, i32 35 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1620, i32 9 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1626, i32 6 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1632, i32 37 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1640, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1647, i32 6 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1659, i32 6 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1671, i32 6 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1678, i32 38 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1682, i32 38 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1689, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1696, i32 6 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1708, i32 6 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1714, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1721, i32 6 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1733, i32 6 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1741, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1747, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1748, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1755, i32 6 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1768, i32 6 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1779, i32 6 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1789, i32 6 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1817, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1823, i32 6 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1829, i32 9 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1835, i32 6 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2257, i32 6 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2264, i32 7 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2265, i32 56 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2270, i32 7 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2385, i32 6 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2412, i32 6 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2422, i32 7 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2426, i32 52 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2432, i32 8 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2437, i32 7 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2443, i32 35 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2858, i32 6 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2884, i32 7 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3116, i32 7 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3121, i32 7 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3874, i32 7 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3880, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3887, i32 6 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3892, i32 13 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3948, i32 7 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3767, i32 6 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3783, i32 11 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3810, i32 9 }
@___asan_gen_.779 = private unnamed_addr constant [37 x i8] c"../drivers/scsi/qla2xxx/qla_inline.h\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 123, i32 8 }
@___asan_gen_.781 = private unnamed_addr constant [16 x i8] c"port_dstate_str\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2676, i32 27 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2677, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2679, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2680, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2681, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2682, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2683, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2684, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2685, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2686, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant [34 x i8] c"../drivers/scsi/qla2xxx/qla_def.h\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 2687, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.815 = private constant [33 x i8] c"../drivers/scsi/qla2xxx/qla_gs.c\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 4165, i32 6 }
@___asan_gen_.817 = private unnamed_addr constant [47 x i8] c"switch.table.qla25xx_fdmi_port_speed_currently\00", align 1
@___asan_gen_.818 = private unnamed_addr constant [37 x i8] c"switch.table.qla2x00_port_attributes\00", align 1
@llvm.compiler.used = appending global [203 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @port_dstate_str, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @switch.table.qla25xx_fdmi_port_speed_currently, ptr @switch.table.qla2x00_port_attributes], section "llvm.metadata"
@0 = internal global [203 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_dstate_str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla25xx_fdmi_port_speed_currently to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla2x00_port_attributes to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qla2x00_prep_ms_iocb(ptr nocapture noundef %vha, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 64)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 41, ptr %3, align 4
  %entry_count = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %entry_count, align 1
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %7 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not = icmp sgt i32 %8, -1
  %loop_id1 = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %loop_id1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -32768, ptr %loop_id1, align 4
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %standard = getelementptr inbounds %struct.anon.82, ptr %loop_id1, i32 0, i32 1
  %10 = ptrtoint ptr %standard to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %standard, align 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %control_flags = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 8704, ptr %control_flags, align 4
  %r_a_tov = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 68
  %12 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %r_a_tov, align 8
  %14 = udiv i16 %13, 10
  %15 = shl nuw nsw i16 %14, 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %timeout = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %timeout, align 4
  %cmd_dsd_count = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %cmd_dsd_count to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 256, ptr %cmd_dsd_count, align 2
  %total_dsd_count = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %total_dsd_count to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 512, ptr %total_dsd_count, align 4
  %rsp_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 5
  %20 = ptrtoint ptr %rsp_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rsp_size, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %rsp_bytecount = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 17
  %23 = ptrtoint ptr %rsp_bytecount to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rsp_bytecount, align 4
  %req_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 4
  %24 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_size, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %req_bytecount = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 18
  %27 = ptrtoint ptr %req_bytecount to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %req_bytecount, align 4
  %req_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 2
  %28 = ptrtoint ptr %req_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %req_dma, align 4
  %conv3 = zext i32 %29 to i64
  %req_dsd = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 19
  %30 = tail call i64 @llvm.bswap.i64(i64 %conv3) #12
  %31 = ptrtoint ptr %req_dsd to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %req_dsd, align 1
  %length = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 19, i32 1
  %32 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %length, align 4
  %rsp_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 3
  %33 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rsp_dma, align 4
  %conv6 = zext i32 %34 to i64
  %rsp_dsd = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 20
  %35 = tail call i64 @llvm.bswap.i64(i64 %conv6) #12
  %36 = ptrtoint ptr %rsp_dsd to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %rsp_dsd, align 1
  %length10 = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 20, i32 1
  %37 = ptrtoint ptr %length10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %22, ptr %length10, align 4
  %control_requests = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 5
  %38 = ptrtoint ptr %control_requests to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %control_requests, align 8
  %inc = add i32 %39, 1
  store i32 %inc, ptr %control_requests, align 8
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qla24xx_prep_ms_iocb(ptr nocapture noundef %vha, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 64)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 41, ptr %3, align 4
  %entry_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %entry_count, align 1
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %nport_handle to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nport_handle, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %nport_handle1 = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %nport_handle1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %nport_handle1, align 2
  %r_a_tov = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 68
  %11 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %r_a_tov, align 8
  %13 = udiv i16 %12, 10
  %14 = shl nuw nsw i16 %13, 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %timeout = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %timeout, align 4
  %cmd_dsd_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %cmd_dsd_count to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 256, ptr %cmd_dsd_count, align 4
  %rsp_dsd_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %rsp_dsd_count to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 256, ptr %rsp_dsd_count, align 4
  %rsp_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 5
  %19 = ptrtoint ptr %rsp_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rsp_size, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %rsp_byte_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 14
  %22 = ptrtoint ptr %rsp_byte_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rsp_byte_count, align 4
  %req_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 4
  %23 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %req_size, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %cmd_byte_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 15
  %26 = ptrtoint ptr %cmd_byte_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cmd_byte_count, align 4
  %req_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 2
  %27 = ptrtoint ptr %req_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %req_dma, align 4
  %conv3 = zext i32 %28 to i64
  %dsd = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 16
  %29 = tail call i64 @llvm.bswap.i64(i64 %conv3) #12
  %30 = ptrtoint ptr %dsd to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %dsd, align 1
  %length = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 16, i32 0, i32 1
  %31 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %25, ptr %length, align 4
  %rsp_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 3
  %32 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rsp_dma, align 4
  %conv7 = zext i32 %33 to i64
  %arrayidx9 = getelementptr %struct.ct_entry_24xx, ptr %3, i32 0, i32 16, i32 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %conv7) #12
  %35 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %arrayidx9, align 1
  %length14 = getelementptr %struct.ct_entry_24xx, ptr %3, i32 0, i32 16, i32 1, i32 1
  %36 = ptrtoint ptr %length14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %21, ptr %length14, align 4
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %37 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vp_idx, align 8
  %conv15 = trunc i16 %38 to i8
  %vp_index = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 8
  %39 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv15, ptr %vp_index, align 2
  %control_requests = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 5
  %40 = ptrtoint ptr %control_requests to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %control_requests, align 8
  %inc = add i32 %41, 1
  store i32 %inc, ptr %control_requests, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr nocapture noundef readonly %ms_pkt, ptr noundef %ct_rsp, ptr noundef %routine) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entry_status = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ms_pkt, i32 0, i32 3
  %0 = ptrtoint ptr %entry_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %entry_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %1 to i32
  %d_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %2 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %d_id, align 8
  %conv4 = zext i8 %3 to i32
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %4 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %area, align 1
  %conv6 = zext i8 %5 to i32
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %6 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %al_pa, align 2
  %conv8 = zext i8 %7 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8241, ptr noundef nonnull @.str, ptr noundef %routine, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8) #12
  br label %if.end65

if.else:                                          ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 55
  %10 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_type, align 4
  %and = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %status = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ms_pkt, i32 0, i32 6
  %comp_status10 = getelementptr inbounds %struct.ct_entry_24xx, ptr %ms_pkt, i32 0, i32 5
  %.sink.in = select i1 %tobool.not, ptr %status, ptr %comp_status10
  %12 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %12)
  %.sink = load i16, ptr %.sink.in, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %.sink)
  %conv12 = zext i16 %13 to i32
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %13, label %if.else.sw.default_crit_edge [
    i16 0, label %if.else.sw.bb_crit_edge
    i16 21, label %if.else.sw.bb_crit_edge96
    i16 7, label %if.else.sw.bb_crit_edge97
    i16 41, label %sw.bb32
    i16 6, label %sw.bb54
  ]

if.else.sw.bb_crit_edge97:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.else.sw.bb_crit_edge96:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.else.sw.bb_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.else.sw.default_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

sw.bb:                                            ; preds = %if.else.sw.bb_crit_edge, %if.else.sw.bb_crit_edge96, %if.else.sw.bb_crit_edge97
  %response = getelementptr inbounds %struct.ct_rsp_hdr, ptr %ct_rsp, i32 0, i32 1
  %15 = ptrtoint ptr %response to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %response, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32766, i16 %16)
  %cmp14.not = icmp eq i16 %16, -32766
  br i1 %cmp14.not, label %sw.bb.if.end65_crit_edge, label %if.then16

sw.bb.if.end65_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then16:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %conv13 = zext i16 %16 to i32
  %d_id17 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %17 = ptrtoint ptr %d_id17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %d_id17, align 8
  %conv19 = zext i8 %18 to i32
  %area21 = getelementptr inbounds %struct.anon.80, ptr %d_id17, i32 0, i32 1
  %19 = ptrtoint ptr %area21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %area21, align 1
  %conv22 = zext i8 %20 to i32
  %al_pa24 = getelementptr inbounds %struct.anon.80, ptr %d_id17, i32 0, i32 2
  %21 = ptrtoint ptr %al_pa24 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %al_pa24, align 2
  %conv25 = zext i8 %22 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8311, ptr noundef nonnull @.str.1, ptr noundef %routine, i32 noundef %conv19, i32 noundef %conv22, i32 noundef %conv25, i32 noundef %conv12, i32 noundef %conv13) #12
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8312, ptr noundef %ct_rsp, i32 noundef 16) #12
  br label %if.end65

sw.bb32:                                          ; preds = %if.else
  %loop_id43 = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %ms_pkt, i32 0, i32 5
  %23 = ptrtoint ptr %loop_id43 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %loop_id43, align 4
  br i1 %tobool.not, label %if.end49, label %if.then36

if.then36:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1017, i16 %24)
  %cmp38 = icmp eq i16 %24, -1017
  br i1 %cmp38, label %if.then36.if.then51_crit_edge, label %if.then36.if.end65_crit_edge

if.then36.if.end65_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then36.if.then51_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.end49:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %24)
  %cmp45 = icmp eq i16 %24, -32768
  br i1 %cmp45, label %if.end49.if.then51_crit_edge, label %if.end49.if.end65_crit_edge

if.end49.if.end65_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %if.then36.if.then51_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %vha, i32 noundef 20523, ptr noundef nonnull @.str.2, ptr noundef %routine) #12
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags) #12
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dpc_flags) #12
  br label %if.end65

sw.bb54:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

sw.default:                                       ; preds = %sw.bb54, %if.else.sw.default_crit_edge
  %rval.0 = phi i32 [ 258, %if.else.sw.default_crit_edge ], [ 256, %sw.bb54 ]
  %d_id56 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %25 = ptrtoint ptr %d_id56 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %d_id56, align 8
  %conv58 = zext i8 %26 to i32
  %area60 = getelementptr inbounds %struct.anon.80, ptr %d_id56, i32 0, i32 1
  %27 = ptrtoint ptr %area60 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %area60, align 1
  %conv61 = zext i8 %28 to i32
  %al_pa63 = getelementptr inbounds %struct.anon.80, ptr %d_id56, i32 0, i32 2
  %29 = ptrtoint ptr %al_pa63 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %al_pa63, align 2
  %conv64 = zext i8 %30 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8243, ptr noundef nonnull @.str.3, ptr noundef %routine, i32 noundef %conv12, i32 noundef %conv58, i32 noundef %conv61, i32 noundef %conv64) #12
  br label %if.end65

if.end65:                                         ; preds = %sw.default, %if.then51, %if.end49.if.end65_crit_edge, %if.then36.if.end65_crit_edge, %if.then16, %sw.bb.if.end65_crit_edge, %if.then
  %rval.1 = phi i32 [ 258, %if.then ], [ %rval.0, %sw.default ], [ 10, %if.then51 ], [ 258, %if.end49.if.end65_crit_edge ], [ 1, %if.then16 ], [ 0, %sw.bb.if.end65_crit_edge ], [ 258, %if.then36.if.end65_crit_edge ]
  ret i32 %rval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dump_buffer(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_ga_nxt(ptr noundef %vha, ptr noundef %fcport) local_unnamed_addr #3 align 64 {
entry:
  %arg = alloca %struct.ct_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %arg) #12
  %2 = getelementptr inbounds i8, ptr %arg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 40)
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sns_cmd1.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 81
  %8 = ptrtoint ptr %sns_cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sns_cmd1.i.i, align 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 2064)
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 15873, ptr %9, align 4
  %sns_cmd_dma.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 82
  %12 = ptrtoint ptr %sns_cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sns_cmd_dma.i.i, align 4
  %conv3.i.i = zext i32 %13 to i64
  %buffer_address.i.i = getelementptr inbounds %struct.anon.151, ptr %9, i32 0, i32 2
  %14 = tail call i64 @llvm.bswap.i64(i64 %conv3.i.i) #12
  %15 = ptrtoint ptr %buffer_address.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %buffer_address.i.i, align 1
  %subcommand_length.i.i = getelementptr inbounds %struct.anon.151, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %subcommand_length.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1536, ptr %subcommand_length.i.i, align 4
  %subcommand.i.i = getelementptr %struct.anon.151, ptr %9, i32 0, i32 5
  %17 = ptrtoint ptr %subcommand.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %subcommand.i.i, align 4
  %size.i.i = getelementptr %struct.anon.151, ptr %9, i32 0, i32 6
  %18 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -25856, ptr %size.i.i, align 2
  %control_requests.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 5
  %19 = ptrtoint ptr %control_requests.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %control_requests.i.i, align 8
  %inc.i.i = add i32 %20, 1
  store i32 %inc.i.i, ptr %control_requests.i.i, align 8
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 6
  %al_pa.i = getelementptr inbounds %struct.anon.80, ptr %d_id.i, i32 0, i32 2
  %21 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %al_pa.i, align 2
  %param.i = getelementptr inbounds %struct.anon.151, ptr %9, i32 0, i32 8
  %23 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %param.i, align 4
  %area.i = getelementptr inbounds %struct.anon.80, ptr %d_id.i, i32 0, i32 1
  %24 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %area.i, align 1
  %arrayidx4.i = getelementptr %struct.anon.151, ptr %9, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx4.i, align 1
  %27 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %d_id.i, align 8
  %arrayidx8.i = getelementptr %struct.anon.151, ptr %9, i32 0, i32 8, i32 2
  %29 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx8.i, align 2
  %30 = ptrtoint ptr %sns_cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sns_cmd_dma.i.i, align 4
  %call9.i = tail call i32 @qla2x00_send_sns(ptr noundef %vha, i32 noundef %31, i16 noundef zeroext 14, i32 noundef 2064) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8287, ptr noundef nonnull @.str.79, i32 noundef %call9.i) #12
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %arrayidx11.i = getelementptr [636 x i8], ptr %9, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %33)
  %cmp12.not.i = icmp eq i8 %33, -128
  br i1 %cmp12.not.i, label %lor.lhs.false.i, label %if.else.i.if.then19.i_crit_edge

if.else.i.if.then19.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %arrayidx15.i = getelementptr [636 x i8], ptr %9, i32 0, i32 9
  %34 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp17.not.i = icmp eq i8 %35, 2
  br i1 %cmp17.not.i, label %if.else21.i, label %lor.lhs.false.i.if.then19.i_crit_edge

lor.lhs.false.i.if.then19.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

if.then19.i:                                      ; preds = %lor.lhs.false.i.if.then19.i_crit_edge, %if.else.i.if.then19.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8324, ptr noundef nonnull @.str.80) #12
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8308, ptr noundef %9, i32 noundef 16) #12
  br label %cleanup

if.else21.i:                                      ; preds = %lor.lhs.false.i
  %arrayidx23.i = getelementptr [636 x i8], ptr %9, i32 0, i32 17
  %36 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx23.i, align 1
  %38 = ptrtoint ptr %d_id.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %d_id.i, align 8
  %39 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %size.i.i, align 2
  %41 = ptrtoint ptr %area.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %area.i, align 1
  %arrayidx31.i = getelementptr [636 x i8], ptr %9, i32 0, i32 19
  %42 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx31.i, align 1
  %44 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %al_pa.i, align 2
  %node_name.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 4
  %arrayidx36.i = getelementptr [636 x i8], ptr %9, i32 0, i32 284
  %45 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %arrayidx36.i, align 4
  %47 = ptrtoint ptr %node_name.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %node_name.i, align 8
  %port_name.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 5
  %arrayidx39.i = getelementptr [636 x i8], ptr %9, i32 0, i32 20
  %48 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %arrayidx39.i, align 4
  %50 = ptrtoint ptr %port_name.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %port_name.i, align 8
  %51 = ptrtoint ptr %subcommand.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %subcommand.i.i, align 4
  %.off.i = add i8 %52, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.else21.i.if.end.i_crit_edge, label %if.then50.i

if.else21.i.if.end.i_crit_edge:                   ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then50.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %d_id.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -16, ptr %d_id.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then50.i, %if.else21.i.if.end.i_crit_edge
  %54 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %d_id.i, align 8
  %conv59.i = zext i8 %55 to i32
  %conv62.i = zext i8 %40 to i32
  %conv65.i = zext i8 %43 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8289, ptr noundef nonnull @.str.6, ptr noundef %node_name.i, ptr noundef %port_name.i, i32 noundef %conv59.i, i32 noundef %conv62.i, i32 noundef %conv65.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %56 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ms_iocb, align 8
  %58 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %arg, align 4
  %ct_sns_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 80
  %59 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ct_sns_dma, align 4
  %req_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 2
  %61 = ptrtoint ptr %req_dma to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %req_dma, align 4
  %rsp_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 3
  %62 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %rsp_dma, align 4
  %req_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 4
  %63 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 20, ptr %req_size, align 4
  %rsp_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 5
  %64 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 636, ptr %rsp_size, align 4
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 1
  %65 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 2044, ptr %nport_handle, align 4
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %66 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %isp_ops, align 4
  %prep_ms_iocb = getelementptr inbounds %struct.isp_operations, ptr %67, i32 0, i32 20
  %68 = ptrtoint ptr %prep_ms_iocb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prep_ms_iocb, align 4
  %call7 = call ptr %69(ptr noundef %vha, ptr noundef nonnull %arg) #12
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %70 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ct_sns, align 16
  %72 = call ptr @memset(ptr %71, i32 0, i32 8208)
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %71, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %71, i32 0, i32 2
  %74 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %71, i32 0, i32 3
  %75 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 256, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %71, i32 0, i32 2
  %77 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 155, ptr %max_rsp_size.i, align 2
  %78 = load ptr, ptr %ct_sns, align 16
  %port_id = getelementptr inbounds %struct.ct_sns_req, ptr %71, i32 0, i32 5, i32 0, i32 0, i32 1
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 6
  %79 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %79)
  %.unpack = load i32, ptr %d_id, align 8
  %tmp.coerce.0.extract.shift = lshr i32 %.unpack, 8
  %tmp.coerce.0.extract.trunc = trunc i32 %tmp.coerce.0.extract.shift to i24
  %80 = ptrtoint ptr %port_id to i32
  call void @__asan_storeN_noabort(i32 %80, i32 3)
  store i24 %tmp.coerce.0.extract.trunc, ptr %port_id, align 1
  %81 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ms_iocb, align 8
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  %83 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ms_iocb_dma, align 4
  %call12 = call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %82, i32 noundef %84, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 0
  br i1 %cmp.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8290, ptr noundef nonnull @.str.4, i32 noundef %call12) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call14 = call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %call7, ptr noundef %78, ptr noundef nonnull @.str.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.else17, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else17:                                        ; preds = %if.else
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %78, i32 0, i32 1
  %port_id20 = getelementptr inbounds %struct.anon.133, ptr %rsp, i32 0, i32 1
  %85 = ptrtoint ptr %port_id20 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 3)
  %port_id20.coerce.sroa.0.0.copyload = load i24, ptr %port_id20, align 1
  %port_id20.coerce.sroa.0.0.insert.ext = zext i24 %port_id20.coerce.sroa.0.0.copyload to i32
  %port_id20.coerce.sroa.0.0.insert.shift = shl nuw i32 %port_id20.coerce.sroa.0.0.insert.ext, 8
  %86 = ptrtoint ptr %d_id to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %port_id20.coerce.sroa.0.0.insert.shift, ptr %d_id, align 8
  %node_name = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 4
  %node_name23 = getelementptr inbounds %struct.ct_sns_rsp, ptr %78, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 2, i32 1, i32 244
  %87 = ptrtoint ptr %node_name23 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %node_name23, align 4
  %89 = ptrtoint ptr %node_name to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %node_name, align 8
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 5
  %port_name27 = getelementptr inbounds %struct.ct_sns_rsp, ptr %78, i32 0, i32 1, i32 0, i32 1
  %90 = ptrtoint ptr %port_name27 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %91 = load i64, ptr %port_name27, align 4
  %92 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %port_name, align 8
  %arrayidx = getelementptr %struct.ct_sns_rsp, ptr %78, i32 0, i32 1, i32 0, i32 2, i32 1, i32 2, i32 2, i32 1, i32 18
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx, align 2
  %95 = and i8 %94, 1
  %fc4_type = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 40
  %96 = ptrtoint ptr %fc4_type to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %fc4_type, align 4
  %97 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rsp, align 4
  %.off = add i8 %98, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.else17.if.end44_crit_edge, label %if.then42

if.else17.if.end44_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then42:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %d_id to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -16, ptr %d_id, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.else17.if.end44_crit_edge
  %100 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %d_id, align 8
  %conv51 = zext i8 %101 to i32
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %102 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %area, align 1
  %conv53 = zext i8 %103 to i32
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %104 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %al_pa, align 2
  %conv55 = zext i8 %105 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8291, ptr noundef nonnull @.str.6, ptr noundef %node_name, ptr noundef %port_name, i32 noundef %conv51, i32 noundef %conv53, i32 noundef %conv55) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.else.cleanup_crit_edge, %if.then13, %if.end.i, %if.then19.i, %if.then.i
  %retval.0 = phi i32 [ %call12, %if.then13 ], [ 0, %if.end44 ], [ 258, %if.else.cleanup_crit_edge ], [ %call9.i, %if.then.i ], [ 258, %if.then19.i ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %arg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_issue_iocb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_gid_pt(ptr noundef %vha, ptr nocapture noundef writeonly %list) local_unnamed_addr #3 align 64 {
entry:
  %arg = alloca %struct.ct_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %arg) #12
  %2 = getelementptr inbounds i8, ptr %arg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 40)
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %max_fibre_devices.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_fibre_devices.i, align 4
  br i1 %7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mul.i.i = shl i16 %9, 2
  %add.i.i = add i16 %mul.i.i, 16
  %sns_cmd1.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 81
  %10 = ptrtoint ptr %sns_cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sns_cmd1.i.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 2064)
  %conv.i80.i = zext i16 %add.i.i to i32
  %div21.i.i = lshr exact i16 %add.i.i, 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %div21.i.i) #12
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %11, align 4
  %sns_cmd_dma.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 82
  %15 = ptrtoint ptr %sns_cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sns_cmd_dma.i.i, align 4
  %conv3.i.i = zext i32 %16 to i64
  %buffer_address.i.i = getelementptr inbounds %struct.anon.151, ptr %11, i32 0, i32 2
  %17 = tail call i64 @llvm.bswap.i64(i64 %conv3.i.i) #12
  %18 = ptrtoint ptr %buffer_address.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %buffer_address.i.i, align 1
  %subcommand_length.i.i = getelementptr inbounds %struct.anon.151, ptr %11, i32 0, i32 3
  %19 = ptrtoint ptr %subcommand_length.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1536, ptr %subcommand_length.i.i, align 4
  %subcommand.i.i = getelementptr inbounds %struct.anon.151, ptr %11, i32 0, i32 5
  %20 = ptrtoint ptr %subcommand.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -24319, ptr %subcommand.i.i, align 4
  %sub.i.i = add nsw i32 %conv.i80.i, -16
  %div8.i.i = sdiv i32 %sub.i.i, 4
  %conv9.i.i = trunc i32 %div8.i.i to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv9.i.i) #12
  %size.i.i = getelementptr inbounds %struct.anon.151, ptr %11, i32 0, i32 6
  %22 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %size.i.i, align 2
  %control_requests.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 5
  %23 = ptrtoint ptr %control_requests.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %control_requests.i.i, align 8
  %inc.i.i = add i32 %24, 1
  store i32 %inc.i.i, ptr %control_requests.i.i, align 8
  %param.i = getelementptr inbounds %struct.anon.151, ptr %11, i32 0, i32 8
  %25 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 127, ptr %param.i, align 4
  %26 = ptrtoint ptr %sns_cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sns_cmd_dma.i.i, align 4
  %call3.i = tail call i32 @qla2x00_send_sns(ptr noundef %vha, i32 noundef %27, i16 noundef zeroext 14, i32 noundef 2064) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8301, ptr noundef nonnull @.str.81, i32 noundef %call3.i) #12
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %arrayidx6.i = getelementptr [2064 x i8], ptr %11, i32 0, i32 8
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %29)
  %cmp8.not.i = icmp eq i8 %29, -128
  br i1 %cmp8.not.i, label %lor.lhs.false.i, label %if.else.i.if.then15.i_crit_edge

if.else.i.if.then15.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %arrayidx11.i = getelementptr [2064 x i8], ptr %11, i32 0, i32 9
  %30 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp13.not.i = icmp eq i8 %31, 2
  br i1 %cmp13.not.i, label %for.cond.preheader.i, label %lor.lhs.false.i.if.then15.i_crit_edge

lor.lhs.false.i.if.then15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %32 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_fibre_devices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp2083.not.i = icmp eq i16 %33, 0
  br i1 %cmp2083.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.then15.i:                                      ; preds = %lor.lhs.false.i.if.then15.i_crit_edge, %if.else.i.if.then15.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8239, ptr noundef nonnull @.str.82) #12
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8321, ptr noundef %11, i32 noundef 16) #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %indvars.iv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 16
  %arrayidx24.i = getelementptr [2064 x i8], ptr %11, i32 0, i32 %add.i
  %arrayidx25.i = getelementptr i8, ptr %arrayidx24.i, i32 1
  %34 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx25.i, align 1
  %arrayidx26.i = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv.i
  %36 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx26.i, align 4
  %arrayidx27.i = getelementptr i8, ptr %arrayidx24.i, i32 2
  %37 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx27.i, align 1
  %area.i = getelementptr inbounds %struct.anon.80, ptr %arrayidx26.i, i32 0, i32 1
  %39 = ptrtoint ptr %area.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %area.i, align 1
  %arrayidx31.i = getelementptr i8, ptr %arrayidx24.i, i32 3
  %40 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx31.i, align 1
  %al_pa.i = getelementptr inbounds %struct.anon.80, ptr %arrayidx26.i, i32 0, i32 2
  %42 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %al_pa.i, align 2
  %43 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %tobool.not.i = icmp sgt i8 %44, -1
  br i1 %tobool.not.i, label %for.inc.i, label %if.then37.i

if.then37.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = trunc i32 %indvars.iv.i to i16
  %rsvd_1.i = getelementptr inbounds %struct.anon.80, ptr %arrayidx26.i, i32 0, i32 3
  %46 = ptrtoint ptr %rsvd_1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %44, ptr %rsvd_1.i, align 1
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %47 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %max_fibre_devices.i, align 4
  %49 = zext i16 %48 to i32
  %cmp20.i = icmp ult i32 %indvars.iv.next.i, %49
  br i1 %cmp20.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = trunc i32 %indvars.iv.next.i to i16
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.then37.i, %for.cond.preheader.i.for.end.i_crit_edge
  %i.082.i = phi i16 [ %45, %if.then37.i ], [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %50, %for.end.loopexit.i ]
  %51 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %max_fibre_devices.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %i.082.i, i16 %52)
  %cmp45.i = icmp eq i16 %i.082.i, %52
  %spec.select.i = select i1 %cmp45.i, i32 258, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = zext i16 %9 to i32
  %mul.i93 = shl nuw nsw i32 %conv.i, 2
  %add.i94 = add nuw nsw i32 %mul.i93, 16
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %53 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ms_iocb, align 8
  %55 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %arg, align 4
  %ct_sns_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 80
  %56 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ct_sns_dma, align 4
  %req_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 2
  %58 = ptrtoint ptr %req_dma to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %req_dma, align 4
  %rsp_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 3
  %59 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %rsp_dma, align 4
  %req_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 4
  %60 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 20, ptr %req_size, align 4
  %conv8 = and i32 %add.i94, 65532
  %rsp_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 5
  %61 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv8, ptr %rsp_size, align 4
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 1
  %62 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 2044, ptr %nport_handle, align 4
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %63 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %isp_ops, align 4
  %prep_ms_iocb = getelementptr inbounds %struct.isp_operations, ptr %64, i32 0, i32 20
  %65 = ptrtoint ptr %prep_ms_iocb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prep_ms_iocb, align 4
  %call9 = call ptr %66(ptr noundef %vha, ptr noundef nonnull %arg) #12
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %67 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ct_sns, align 16
  %69 = call ptr @memset(ptr %68, i32 0, i32 8208)
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %68, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %68, i32 0, i32 2
  %71 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %68, i32 0, i32 3
  %72 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 417, ptr %command.i, align 4
  %sub.i = add nsw i32 %conv8, -16
  %div.i = sdiv i32 %sub.i, 4
  %conv7.i = trunc i32 %div.i to i16
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %68, i32 0, i32 2
  %74 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv7.i, ptr %max_rsp_size.i, align 2
  %75 = load ptr, ptr %ct_sns, align 16
  %req = getelementptr inbounds %struct.ct_sns_req, ptr %68, i32 0, i32 5
  %76 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 127, ptr %req, align 4
  %77 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ms_iocb, align 8
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  %79 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ms_iocb_dma, align 4
  %call13 = call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %78, i32 noundef %80, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 0
  br i1 %cmp.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8277, ptr noundef nonnull @.str.7, i32 noundef %call13) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call16 = call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %call9, ptr noundef %75, ptr noundef nonnull @.str.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %for.cond.preheader, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.else
  %81 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %max_fibre_devices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp23102.not = icmp eq i16 %82, 0
  br i1 %cmp23102.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %75, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2048 x %struct.ct_sns_gid_pt_data], ptr %rsp, i32 0, i32 %indvars.iv
  %arrayidx26 = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv
  %port_id = getelementptr [2048 x %struct.ct_sns_gid_pt_data], ptr %rsp, i32 0, i32 %indvars.iv, i32 1
  %83 = ptrtoint ptr %port_id to i32
  call void @__asan_loadN_noabort(i32 %83, i32 3)
  %port_id.coerce.sroa.0.0.copyload = load i24, ptr %port_id, align 1
  %port_id.coerce.sroa.0.0.insert.ext = zext i24 %port_id.coerce.sroa.0.0.copyload to i32
  %port_id.coerce.sroa.0.0.insert.shift = shl nuw i32 %port_id.coerce.sroa.0.0.insert.ext, 8
  %84 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %port_id.coerce.sroa.0.0.insert.shift, ptr %arrayidx26, align 4
  %fabric_port_name = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv, i32 3
  %85 = ptrtoint ptr %fabric_port_name to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 0, ptr %fabric_port_name, align 4
  %fp_speed = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv, i32 4
  %86 = ptrtoint ptr %fp_speed to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -1, ptr %fp_speed, align 4
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %88)
  %tobool34.not = icmp sgt i8 %88, -1
  br i1 %tobool34.not, label %for.inc, label %if.then35

if.then35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %89 = trunc i32 %indvars.iv to i16
  %rsvd_1 = getelementptr inbounds %struct.anon.80, ptr %arrayidx26, i32 0, i32 3
  %90 = ptrtoint ptr %rsvd_1 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %88, ptr %rsvd_1, align 1
  br label %for.end

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %91 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %max_fibre_devices.i, align 4
  %93 = zext i16 %92 to i32
  %cmp23 = icmp ult i32 %indvars.iv.next, %93
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %94 = trunc i32 %indvars.iv.next to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then35, %for.cond.preheader.for.end_crit_edge
  %i.097 = phi i16 [ %89, %if.then35 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %94, %for.end.loopexit ]
  %95 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %max_fibre_devices.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %i.097, i16 %96)
  %cmp44 = icmp eq i16 %i.097, %96
  %spec.select = select i1 %cmp44, i32 258, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.cleanup_crit_edge, %if.then15, %for.end.i, %if.then15.i, %if.then.i
  %retval.0 = phi i32 [ %call13, %if.then15 ], [ 258, %if.else.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %call3.i, %if.then.i ], [ 258, %if.then15.i ], [ %spec.select.i, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %arg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_gpn_id(ptr noundef %vha, ptr nocapture noundef %list) local_unnamed_addr #3 align 64 {
entry:
  %arg = alloca %struct.ct_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %arg) #12
  %2 = getelementptr inbounds i8, ptr %arg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 40)
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %max_fibre_devices.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_fibre_devices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp70.not.i = icmp eq i16 %9, 0
  br i1 %cmp70.not.i, label %if.then.cleanup_crit_edge, label %for.body.lr.ph.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then
  %control_requests.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 5
  %sns_cmd_dma.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 82
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end37.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %10 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_fibre_devices.i, align 4
  %12 = zext i16 %11 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %12
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %sns_cmd1.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 81
  %15 = ptrtoint ptr %sns_cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sns_cmd1.i.i, align 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 2064)
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 3072, ptr %16, align 4
  %sns_cmd_dma.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 82
  %19 = ptrtoint ptr %sns_cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sns_cmd_dma.i.i, align 4
  %conv3.i.i = zext i32 %20 to i64
  %buffer_address.i.i = getelementptr inbounds %struct.anon.151, ptr %16, i32 0, i32 2
  %21 = tail call i64 @llvm.bswap.i64(i64 %conv3.i.i) #12
  %22 = ptrtoint ptr %buffer_address.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %buffer_address.i.i, align 1
  %subcommand_length.i.i = getelementptr inbounds %struct.anon.151, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %subcommand_length.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1536, ptr %subcommand_length.i.i, align 4
  %subcommand.i.i = getelementptr %struct.anon.151, ptr %16, i32 0, i32 5
  %24 = ptrtoint ptr %subcommand.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 4609, ptr %subcommand.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.anon.151, ptr %16, i32 0, i32 6
  %25 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 512, ptr %size.i.i, align 2
  %26 = ptrtoint ptr %control_requests.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %control_requests.i.i, align 8
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %control_requests.i.i, align 8
  %arrayidx.i = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv.i
  %al_pa.i = getelementptr inbounds %struct.anon.80, ptr %arrayidx.i, i32 0, i32 2
  %28 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %al_pa.i, align 2
  %param.i = getelementptr inbounds %struct.anon.151, ptr %16, i32 0, i32 8
  %30 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %param.i, align 4
  %area.i = getelementptr inbounds %struct.anon.80, ptr %arrayidx.i, i32 0, i32 1
  %31 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %area.i, align 1
  %arrayidx9.i = getelementptr %struct.anon.151, ptr %16, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx9.i, align 1
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 4
  %arrayidx15.i = getelementptr %struct.anon.151, ptr %16, i32 0, i32 8, i32 2
  %36 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx15.i, align 2
  %37 = ptrtoint ptr %sns_cmd_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sns_cmd_dma.i, align 4
  %call16.i = tail call i32 @qla2x00_send_sns(ptr noundef %vha, i32 noundef %38, i16 noundef zeroext 14, i32 noundef 2064) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8242, ptr noundef nonnull @.str.83, i32 noundef %call16.i) #12
  br label %if.end37.i

if.else.i:                                        ; preds = %for.body.i
  %arrayidx20.i = getelementptr [24 x i8], ptr %16, i32 0, i32 8
  %39 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %40)
  %cmp22.not.i = icmp eq i8 %40, -128
  br i1 %cmp22.not.i, label %lor.lhs.false.i, label %if.else.i.if.then29.i_crit_edge

if.else.i.if.then29.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %arrayidx25.i = getelementptr [24 x i8], ptr %16, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp27.not.i = icmp eq i8 %42, 2
  br i1 %cmp27.not.i, label %if.else31.i, label %lor.lhs.false.i.if.then29.i_crit_edge

lor.lhs.false.i.if.then29.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

if.then29.i:                                      ; preds = %lor.lhs.false.i.if.then29.i_crit_edge, %if.else.i.if.then29.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8318, ptr noundef nonnull @.str.84) #12
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8319, ptr noundef %16, i32 noundef 16) #12
  br label %if.end37.i

if.else31.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %port_name.i = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv.i, i32 2
  %43 = ptrtoint ptr %subcommand.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %subcommand.i.i, align 4
  %45 = ptrtoint ptr %port_name.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %port_name.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else31.i, %if.then29.i, %if.then.i
  %rval.1.i = phi i32 [ %call16.i, %if.then.i ], [ 258, %if.then29.i ], [ 0, %if.else31.i ]
  %rsvd_1.i = getelementptr inbounds %struct.anon.80, ptr %arrayidx.i, i32 0, i32 3
  %46 = ptrtoint ptr %rsvd_1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rsvd_1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp42.not.i = icmp eq i8 %47, 0
  br i1 %cmp42.not.i, label %for.cond.i, label %if.end37.i.cleanup_crit_edge

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %48 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ms_iocb, align 8
  %50 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %arg, align 4
  %ct_sns_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 80
  %51 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ct_sns_dma, align 4
  %req_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 2
  %53 = ptrtoint ptr %req_dma to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %req_dma, align 4
  %rsp_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 3
  %54 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %rsp_dma, align 4
  %req_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 4
  %55 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 20, ptr %req_size, align 4
  %rsp_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 5
  %56 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 24, ptr %rsp_size, align 4
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 1
  %57 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 2044, ptr %nport_handle, align 4
  %max_fibre_devices = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 44
  %58 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %max_fibre_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp69.not = icmp eq i16 %59, 0
  br i1 %cmp69.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  br label %for.body

for.cond:                                         ; preds = %if.else22
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %60 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %max_fibre_devices, align 4
  %62 = zext i16 %61 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %62
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %63 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %isp_ops, align 4
  %prep_ms_iocb = getelementptr inbounds %struct.isp_operations, ptr %64, i32 0, i32 20
  %65 = ptrtoint ptr %prep_ms_iocb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prep_ms_iocb, align 4
  %call9 = call ptr %66(ptr noundef %vha, ptr noundef nonnull %arg) #12
  %67 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ct_sns, align 16
  %69 = call ptr @memset(ptr %68, i32 0, i32 8208)
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %68, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %68, i32 0, i32 2
  %71 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %68, i32 0, i32 3
  %72 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 274, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %68, i32 0, i32 2
  %74 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 2, ptr %max_rsp_size.i, align 2
  %75 = load ptr, ptr %ct_sns, align 16
  %port_id = getelementptr inbounds %struct.ct_sns_req, ptr %68, i32 0, i32 5, i32 0, i32 0, i32 1
  %arrayidx = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack = load i32, ptr %arrayidx, align 4
  %tmp.coerce.0.extract.shift = lshr i32 %.unpack, 8
  %tmp.coerce.0.extract.trunc = trunc i32 %tmp.coerce.0.extract.shift to i24
  %77 = ptrtoint ptr %port_id to i32
  call void @__asan_storeN_noabort(i32 %77, i32 3)
  store i24 %tmp.coerce.0.extract.trunc, ptr %port_id, align 1
  %78 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ms_iocb, align 8
  %80 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ms_iocb_dma, align 4
  %call14 = call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %79, i32 noundef %81, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8278, ptr noundef nonnull @.str.9, i32 noundef %call14) #12
  br label %cleanup

if.else:                                          ; preds = %for.body
  %call18 = call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %call9, ptr noundef %75, ptr noundef nonnull @.str.10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.else22, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else22:                                        ; preds = %if.else
  %port_name = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv, i32 2
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %75, i32 0, i32 1
  %82 = ptrtoint ptr %rsp to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %83 = load i64, ptr %rsp, align 4
  %84 = ptrtoint ptr %port_name to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 %83, ptr %port_name, align 4
  %rsvd_1 = getelementptr inbounds %struct.anon.80, ptr %arrayidx, i32 0, i32 3
  %85 = ptrtoint ptr %rsvd_1 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rsvd_1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp33.not = icmp eq i8 %86, 0
  br i1 %cmp33.not, label %for.cond, label %if.else22.cleanup_crit_edge

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.else22.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then17, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end37.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then17 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 258, %if.else.cleanup_crit_edge ], [ 0, %if.else22.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %rval.1.i, %for.cond.i.cleanup_crit_edge ], [ %rval.1.i, %if.end37.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %arg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_gnn_id(ptr noundef %vha, ptr noundef %list) local_unnamed_addr #3 align 64 {
entry:
  %arg = alloca %struct.ct_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %arg) #12
  %2 = getelementptr inbounds i8, ptr %arg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 40)
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %max_fibre_devices.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_fibre_devices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp103.not.i = icmp eq i16 %9, 0
  br i1 %cmp103.not.i, label %if.then.cleanup_crit_edge, label %for.body.lr.ph.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then
  %control_requests.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 5
  %sns_cmd_dma.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 82
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end59.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %10 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_fibre_devices.i, align 4
  %12 = zext i16 %11 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %12
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %sns_cmd1.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 81
  %15 = ptrtoint ptr %sns_cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sns_cmd1.i.i, align 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 2064)
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 3072, ptr %16, align 4
  %sns_cmd_dma.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 82
  %19 = ptrtoint ptr %sns_cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sns_cmd_dma.i.i, align 4
  %conv3.i.i = zext i32 %20 to i64
  %buffer_address.i.i = getelementptr inbounds %struct.anon.151, ptr %16, i32 0, i32 2
  %21 = tail call i64 @llvm.bswap.i64(i64 %conv3.i.i) #12
  %22 = ptrtoint ptr %buffer_address.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %buffer_address.i.i, align 1
  %subcommand_length.i.i = getelementptr inbounds %struct.anon.151, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %subcommand_length.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1536, ptr %subcommand_length.i.i, align 4
  %subcommand.i.i = getelementptr %struct.anon.151, ptr %16, i32 0, i32 5
  %24 = ptrtoint ptr %subcommand.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 4865, ptr %subcommand.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.anon.151, ptr %16, i32 0, i32 6
  %25 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 512, ptr %size.i.i, align 2
  %26 = ptrtoint ptr %control_requests.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %control_requests.i.i, align 8
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %control_requests.i.i, align 8
  %arrayidx.i = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv.i
  %al_pa.i = getelementptr inbounds %struct.anon.80, ptr %arrayidx.i, i32 0, i32 2
  %28 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %al_pa.i, align 2
  %param.i = getelementptr inbounds %struct.anon.151, ptr %16, i32 0, i32 8
  %30 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %param.i, align 4
  %area.i = getelementptr inbounds %struct.anon.80, ptr %arrayidx.i, i32 0, i32 1
  %31 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %area.i, align 1
  %arrayidx9.i = getelementptr %struct.anon.151, ptr %16, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx9.i, align 1
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 4
  %arrayidx15.i = getelementptr %struct.anon.151, ptr %16, i32 0, i32 8, i32 2
  %36 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx15.i, align 2
  %37 = ptrtoint ptr %sns_cmd_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sns_cmd_dma.i, align 4
  %call16.i = tail call i32 @qla2x00_send_sns(ptr noundef %vha, i32 noundef %38, i16 noundef zeroext 14, i32 noundef 2064) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8255, ptr noundef nonnull @.str.85, i32 noundef %call16.i) #12
  br label %if.end59.i

if.else.i:                                        ; preds = %for.body.i
  %arrayidx20.i = getelementptr [24 x i8], ptr %16, i32 0, i32 8
  %39 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %40)
  %cmp22.not.i = icmp eq i8 %40, -128
  br i1 %cmp22.not.i, label %lor.lhs.false.i, label %if.else.i.if.then29.i_crit_edge

if.else.i.if.then29.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %arrayidx25.i = getelementptr [24 x i8], ptr %16, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp27.not.i = icmp eq i8 %42, 2
  br i1 %cmp27.not.i, label %if.else31.i, label %lor.lhs.false.i.if.then29.i_crit_edge

lor.lhs.false.i.if.then29.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

if.then29.i:                                      ; preds = %lor.lhs.false.i.if.then29.i_crit_edge, %if.else.i.if.then29.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8322, ptr noundef nonnull @.str.86) #12
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8314, ptr noundef %16, i32 noundef 16) #12
  br label %if.end59.i

if.else31.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %node_name.i = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv.i, i32 1
  %43 = ptrtoint ptr %subcommand.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %subcommand.i.i, align 4
  %45 = ptrtoint ptr %node_name.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %node_name.i, align 4
  %port_name.i = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv.i, i32 2
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 4
  %conv48.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %area.i, align 1
  %conv53.i = zext i8 %49 to i32
  %50 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %al_pa.i, align 2
  %conv58.i = zext i8 %51 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8302, ptr noundef nonnull @.str.87, ptr noundef %node_name.i, ptr noundef %port_name.i, i32 noundef %conv48.i, i32 noundef %conv53.i, i32 noundef %conv58.i) #12
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else31.i, %if.then29.i, %if.then.i
  %rval.1.i = phi i32 [ %call16.i, %if.then.i ], [ 258, %if.then29.i ], [ 0, %if.else31.i ]
  %rsvd_1.i = getelementptr inbounds %struct.anon.80, ptr %arrayidx.i, i32 0, i32 3
  %52 = ptrtoint ptr %rsvd_1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rsvd_1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp64.not.i = icmp eq i8 %53, 0
  br i1 %cmp64.not.i, label %for.cond.i, label %if.end59.i.cleanup_crit_edge

if.end59.i.cleanup_crit_edge:                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %54 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ms_iocb, align 8
  %56 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %arg, align 4
  %ct_sns_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 80
  %57 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ct_sns_dma, align 4
  %req_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 2
  %59 = ptrtoint ptr %req_dma to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %req_dma, align 4
  %rsp_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 3
  %60 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %58, ptr %rsp_dma, align 4
  %req_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 4
  %61 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 20, ptr %req_size, align 4
  %rsp_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 5
  %62 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 24, ptr %rsp_size, align 4
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 1
  %63 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 2044, ptr %nport_handle, align 4
  %max_fibre_devices = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 44
  %64 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %max_fibre_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp99.not = icmp eq i16 %65, 0
  br i1 %cmp99.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  br label %for.body

for.cond:                                         ; preds = %if.else22
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %66 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %max_fibre_devices, align 4
  %68 = zext i16 %67 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %68
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %69 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %isp_ops, align 4
  %prep_ms_iocb = getelementptr inbounds %struct.isp_operations, ptr %70, i32 0, i32 20
  %71 = ptrtoint ptr %prep_ms_iocb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prep_ms_iocb, align 4
  %call9 = call ptr %72(ptr noundef %vha, ptr noundef nonnull %arg) #12
  %73 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ct_sns, align 16
  %75 = call ptr @memset(ptr %74, i32 0, i32 8208)
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %74, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %74, i32 0, i32 2
  %77 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %74, i32 0, i32 3
  %78 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 275, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %74, i32 0, i32 2
  %80 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 2, ptr %max_rsp_size.i, align 2
  %81 = load ptr, ptr %ct_sns, align 16
  %port_id = getelementptr inbounds %struct.ct_sns_req, ptr %74, i32 0, i32 5, i32 0, i32 0, i32 1
  %arrayidx = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack = load i32, ptr %arrayidx, align 4
  %tmp.coerce.0.extract.shift = lshr i32 %.unpack, 8
  %tmp.coerce.0.extract.trunc = trunc i32 %tmp.coerce.0.extract.shift to i24
  %83 = ptrtoint ptr %port_id to i32
  call void @__asan_storeN_noabort(i32 %83, i32 3)
  store i24 %tmp.coerce.0.extract.trunc, ptr %port_id, align 1
  %84 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ms_iocb, align 8
  %86 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ms_iocb_dma, align 4
  %call14 = call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %85, i32 noundef %87, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8279, ptr noundef nonnull @.str.11, i32 noundef %call14) #12
  br label %cleanup

if.else:                                          ; preds = %for.body
  %call18 = call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %call9, ptr noundef %81, ptr noundef nonnull @.str.12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.else22, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else22:                                        ; preds = %if.else
  %node_name = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv, i32 1
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %81, i32 0, i32 1
  %88 = ptrtoint ptr %rsp to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %rsp, align 4
  %90 = ptrtoint ptr %node_name to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %89, ptr %node_name, align 4
  %port_name = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv, i32 2
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx, align 4
  %conv37 = zext i8 %92 to i32
  %area = getelementptr inbounds %struct.anon.80, ptr %arrayidx, i32 0, i32 1
  %93 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %area, align 1
  %conv41 = zext i8 %94 to i32
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %arrayidx, i32 0, i32 2
  %95 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %al_pa, align 2
  %conv45 = zext i8 %96 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8280, ptr noundef nonnull @.str.13, ptr noundef %node_name, ptr noundef %port_name, i32 noundef %conv37, i32 noundef %conv41, i32 noundef %conv45) #12
  %rsvd_1 = getelementptr inbounds %struct.anon.80, ptr %arrayidx, i32 0, i32 3
  %97 = ptrtoint ptr %rsvd_1 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rsvd_1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp52.not = icmp eq i8 %98, 0
  br i1 %cmp52.not, label %for.cond, label %if.else22.cleanup_crit_edge

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.else22.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then17, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end59.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then17 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 258, %if.else.cleanup_crit_edge ], [ 0, %if.else22.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %rval.1.i, %for.cond.i.cleanup_crit_edge ], [ %rval.1.i, %if.end59.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %arg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_rft_id(ptr noundef %vha) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sns_cmd1.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 81
  %6 = ptrtoint ptr %sns_cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sns_cmd1.i.i, align 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 2064)
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2048, ptr %7, align 4
  %sns_cmd_dma.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 82
  %10 = ptrtoint ptr %sns_cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sns_cmd_dma.i.i, align 4
  %conv3.i.i = zext i32 %11 to i64
  %buffer_address.i.i = getelementptr inbounds %struct.anon.151, ptr %7, i32 0, i32 2
  %12 = tail call i64 @llvm.bswap.i64(i64 %conv3.i.i) #12
  %13 = ptrtoint ptr %buffer_address.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %buffer_address.i.i, align 1
  %subcommand_length.i.i = getelementptr inbounds %struct.anon.151, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %subcommand_length.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 5632, ptr %subcommand_length.i.i, align 4
  %subcommand.i.i = getelementptr inbounds %struct.anon.151, ptr %7, i32 0, i32 5
  %15 = ptrtoint ptr %subcommand.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 5890, ptr %subcommand.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.anon.151, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %size.i.i, align 2
  %control_requests.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 5
  %17 = ptrtoint ptr %control_requests.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %control_requests.i.i, align 8
  %inc.i.i = add i32 %18, 1
  store i32 %inc.i.i, ptr %control_requests.i.i, align 8
  %d_id.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %al_pa.i = getelementptr inbounds %struct.anon.80, ptr %d_id.i, i32 0, i32 2
  %19 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %al_pa.i, align 2
  %param.i = getelementptr inbounds %struct.anon.151, ptr %7, i32 0, i32 8
  %21 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %param.i, align 4
  %area.i = getelementptr inbounds %struct.anon.80, ptr %d_id.i, i32 0, i32 1
  %22 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %area.i, align 1
  %arrayidx4.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx4.i, align 1
  %25 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %d_id.i, align 8
  %arrayidx8.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 2
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx8.i, align 2
  %arrayidx11.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 5
  %28 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %arrayidx11.i, align 1
  %29 = ptrtoint ptr %sns_cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sns_cmd_dma.i.i, align 4
  %call12.i = tail call i32 @qla2x00_send_sns(ptr noundef %vha, i32 noundef %30, i16 noundef zeroext 30, i32 noundef 2064) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.not.i = icmp eq i32 %call12.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8288, ptr noundef nonnull @.str.88, i32 noundef %call12.i) #12
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %arrayidx14.i = getelementptr [16 x i8], ptr %7, i32 0, i32 8
  %31 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %32)
  %cmp15.not.i = icmp eq i8 %32, -128
  br i1 %cmp15.not.i, label %lor.lhs.false.i, label %if.else.i.if.then22.i_crit_edge

if.else.i.if.then22.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %arrayidx18.i = getelementptr [16 x i8], ptr %7, i32 0, i32 9
  %33 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp20.not.i = icmp eq i8 %34, 2
  br i1 %cmp20.not.i, label %if.else24.i, label %lor.lhs.false.i.if.then22.i_crit_edge

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false.i.if.then22.i_crit_edge, %if.else.i.if.then22.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8323, ptr noundef nonnull @.str.89) #12
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8320, ptr noundef %7, i32 noundef 16) #12
  br label %cleanup

if.else24.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8307, ptr noundef nonnull @.str.90) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %36 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef null, i32 noundef 3264) #12
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 11
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 15, ptr %type.i, align 2
  %name.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 12
  %38 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.64, ptr %name.i, align 8
  %call4.i = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add.i = add i32 %call4.i, 2
  tail call void @qla2x00_init_timer(ptr noundef nonnull %call.i, i32 noundef %add.i) #12
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %u.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22
  %req_dma.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8208, ptr noundef %req_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %req.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i, ptr %req.i, align 8
  %req_allocated_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %req_allocated_size.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8208, ptr %req_allocated_size.i, align 8
  %tobool14.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53313, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.qla_async_rftid) #12
  br label %done_free_sp.i

if.end16.i:                                       ; preds = %if.end3.i
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 128
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %rsp_dma.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %call.i112.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev19.i, i32 noundef 8208, ptr noundef %rsp_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %rsp.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %49 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i112.i, ptr %rsp.i, align 4
  %rsp_allocated_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %rsp_allocated_size.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8208, ptr %rsp_allocated_size.i, align 4
  %tobool30.not.i = icmp eq ptr %call.i112.i, null
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end32.i

if.then31.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53314, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.qla_async_rftid) #12
  br label %done_free_sp.i

if.end32.i:                                       ; preds = %if.end16.i
  %51 = call ptr @memset(ptr %call.i112.i, i32 0, i32 8208)
  %52 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %req.i, align 8
  %54 = call ptr @memset(ptr %53, i32 0, i32 8208)
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %53, align 4
  %gs_type.i.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %gs_type.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -4, ptr %gs_type.i.i, align 4
  %gs_subtype.i.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %53, i32 0, i32 3
  %57 = ptrtoint ptr %gs_subtype.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %gs_subtype.i.i, align 1
  %command.i.i = getelementptr inbounds %struct.ct_sns_req, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 535, ptr %command.i.i, align 4
  %port_id.i = getelementptr inbounds %struct.ct_sns_req, ptr %53, i32 0, i32 5, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack.i = load i32, ptr %d_id, align 8
  %tmp.coerce.0.extract.shift.i = lshr i32 %.unpack.i, 8
  %tmp.coerce.0.extract.trunc.i = trunc i32 %tmp.coerce.0.extract.shift.i to i24
  %60 = ptrtoint ptr %port_id.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 3)
  store i24 %tmp.coerce.0.extract.trunc.i, ptr %port_id.i, align 1
  %fc4_types.i = getelementptr inbounds %struct.ct_sns_req, ptr %53, i32 0, i32 5, i32 0, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.ct_sns_req, ptr %53, i32 0, i32 5, i32 0, i32 0, i32 6
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %arrayidx.i, align 2
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load45.i = load volatile i32, ptr %flags.i, align 8
  %63 = and i32 %bf.load45.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool48.not.i = icmp eq i32 %63, 0
  br i1 %tobool48.not.i, label %if.end32.i.if.end54.i_crit_edge, label %land.lhs.true.i

if.end32.i.if.end54.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

land.lhs.true.i:                                  ; preds = %if.end32.i
  %host.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %64 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %host.i.i, align 8
  %active_mode.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %65, i32 0, i32 36
  %66 = ptrtoint ptr %active_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load.i.i = load i16, ptr %active_mode.i.i, align 8
  %bf.lshr.mask.i.i = and i16 %bf.load.i.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i.i)
  %cmp.i.i = icmp eq i16 %bf.lshr.mask.i.i, 16384
  br i1 %cmp.i.i, label %if.then50.i, label %land.lhs.true.i.if.end54.i_crit_edge

land.lhs.true.i.if.end54.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

if.then50.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx53.i = getelementptr [32 x i8], ptr %fc4_types.i, i32 0, i32 6
  %67 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %arrayidx53.i, align 2
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then50.i, %land.lhs.true.i.if.end54.i_crit_edge, %if.end32.i.if.end54.i_crit_edge
  %req_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %68 = ptrtoint ptr %req_size.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 52, ptr %req_size.i, align 8
  %rsp_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %rsp_size.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 16, ptr %rsp_size.i, align 4
  %nport_handle.i = getelementptr inbounds %struct.ct_arg, ptr %u.i, i32 0, i32 1
  %70 = ptrtoint ptr %nport_handle.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 2044, ptr %nport_handle.i, align 4
  %timeout.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 2
  %71 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout.i, align 8
  %done.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 24
  %72 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @qla2x00_async_sns_sp_done, ptr %done.i, align 4
  %73 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name.i, align 8
  %handle.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 9
  %75 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %handle.i, align 8
  %77 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load63.i = load i32, ptr %d_id, align 4
  %bf.lshr64.i = lshr i32 %bf.load63.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.66, ptr noundef %74, i32 noundef %76, i32 noundef %bf.lshr64.i) #12
  %call65.i = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp.not.i12 = icmp eq i32 %call65.i, 0
  br i1 %cmp.not.i12, label %if.end54.i.cleanup_crit_edge, label %if.then66.i

if.end54.i.cleanup_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then66.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8259, ptr noundef nonnull @.str.67, i32 noundef %call65.i) #12
  br label %done_free_sp.i

done_free_sp.i:                                   ; preds = %if.then66.i, %if.then31.i, %if.then15.i
  %rval.0.i13 = phi i32 [ %call65.i, %if.then66.i ], [ 259, %if.then31.i ], [ 259, %if.then15.i ]
  %free.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 25
  %78 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %free.i, align 8
  tail call void %79(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %done_free_sp.i, %if.end54.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.else24.i, %if.then22.i, %if.then.i
  %retval.0 = phi i32 [ %call12.i, %if.then.i ], [ 258, %if.then22.i ], [ 0, %if.else24.i ], [ 0, %if.end54.i.cleanup_crit_edge ], [ %rval.0.i13, %done_free_sp.i ], [ 259, %if.end.i.cleanup_crit_edge ], [ 259, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_rff_id(ptr noundef %vha, i8 noundef zeroext %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8262, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %call = tail call zeroext i8 @qlt_rff_id(ptr noundef %vha) #12
  %call.i = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef null, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %type.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 15, ptr %type.i, align 2
  %name.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.71, ptr %name.i, align 8
  %call1.i = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add.i = add i32 %call1.i, 2
  tail call void @qla2x00_init_timer(ptr noundef nonnull %call.i, i32 noundef %add.i) #12
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %u.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22
  %req_dma.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8208, ptr noundef %req_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %req.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %req.i, align 8
  %req_allocated_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %req_allocated_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8208, ptr %req_allocated_size.i, align 8
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53313, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.qla_async_rffid) #12
  br label %done_free_sp.i

if.end13.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 128
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %rsp_dma.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %call.i1.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev16.i, i32 noundef 8208, ptr noundef %rsp_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %rsp.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i1.i, ptr %rsp.i, align 4
  %rsp_allocated_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %rsp_allocated_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8208, ptr %rsp_allocated_size.i, align 4
  %tobool27.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end29.i

if.then28.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53314, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.qla_async_rffid) #12
  br label %done_free_sp.i

if.end29.i:                                       ; preds = %if.end13.i
  %20 = call ptr @memset(ptr %call.i1.i, i32 0, i32 8208)
  %21 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req.i, align 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 8208)
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %22, align 4
  %gs_type.i.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %gs_type.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -4, ptr %gs_type.i.i, align 4
  %gs_subtype.i.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %22, i32 0, i32 3
  %26 = ptrtoint ptr %gs_subtype.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %gs_subtype.i.i, align 1
  %command.i.i = getelementptr inbounds %struct.ct_sns_req, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 543, ptr %command.i.i, align 4
  %port_id.i = getelementptr inbounds %struct.ct_sns_req, ptr %22, i32 0, i32 5, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack.i = load i32, ptr %d_id, align 4
  %tmp.coerce.0.extract.shift.i = lshr i32 %.unpack.i, 8
  %tmp.coerce.0.extract.trunc.i = trunc i32 %tmp.coerce.0.extract.shift.i to i24
  %29 = ptrtoint ptr %port_id.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 3)
  store i24 %tmp.coerce.0.extract.trunc.i, ptr %port_id.i, align 1
  %fc4_feature.i = getelementptr inbounds %struct.ct_sns_req, ptr %22, i32 0, i32 5, i32 0, i32 0, i32 6
  %30 = ptrtoint ptr %fc4_feature.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call, ptr %fc4_feature.i, align 2
  %fc4_type.i = getelementptr inbounds %struct.ct_sns_req, ptr %22, i32 0, i32 5, i32 0, i32 0, i32 7
  %31 = ptrtoint ptr %fc4_type.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 8, ptr %fc4_type.i, align 1
  %req_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %req_size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 24, ptr %req_size.i, align 8
  %rsp_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %rsp_size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %rsp_size.i, align 4
  %nport_handle.i = getelementptr inbounds %struct.ct_arg, ptr %u.i, i32 0, i32 1
  %34 = ptrtoint ptr %nport_handle.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2044, ptr %nport_handle.i, align 4
  %timeout.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 2
  %35 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout.i, align 8
  %done.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 24
  %36 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @qla2x00_async_sns_sp_done, ptr %done.i, align 4
  %37 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name.i, align 8
  %handle.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %handle.i, align 8
  %bf.load.i = load i32, ptr %d_id, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  %conv.i = zext i8 %call to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.72, ptr noundef %38, i32 noundef %40, i32 noundef %bf.lshr.i, i32 noundef %conv.i, i32 noundef 8) #12
  %call50.i = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp.not.i = icmp eq i32 %call50.i, 0
  br i1 %cmp.not.i, label %if.end29.i.cleanup_crit_edge, label %if.then52.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then52.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8263, ptr noundef nonnull @.str.73, i32 noundef %call50.i) #12
  br label %done_free_sp.i

done_free_sp.i:                                   ; preds = %if.then52.i, %if.then28.i, %if.then12.i
  %rval.0.i = phi i32 [ %call50.i, %if.then52.i ], [ 259, %if.then28.i ], [ 259, %if.then12.i ]
  %free.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 25
  %41 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %free.i, align 8
  tail call void %42(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %done_free_sp.i, %if.end29.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end29.i.cleanup_crit_edge ], [ %rval.0.i, %done_free_sp.i ], [ 259, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @qlt_rff_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_rnn_id(ptr noundef %vha) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sns_cmd1.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 81
  %6 = ptrtoint ptr %sns_cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sns_cmd1.i.i, align 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 2064)
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2048, ptr %7, align 4
  %sns_cmd_dma.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 82
  %10 = ptrtoint ptr %sns_cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sns_cmd_dma.i.i, align 4
  %conv3.i.i = zext i32 %11 to i64
  %buffer_address.i.i = getelementptr inbounds %struct.anon.151, ptr %7, i32 0, i32 2
  %12 = tail call i64 @llvm.bswap.i64(i64 %conv3.i.i) #12
  %13 = ptrtoint ptr %buffer_address.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %buffer_address.i.i, align 1
  %subcommand_length.i.i = getelementptr inbounds %struct.anon.151, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %subcommand_length.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2560, ptr %subcommand_length.i.i, align 4
  %subcommand.i.i = getelementptr inbounds %struct.anon.151, ptr %7, i32 0, i32 5
  %15 = ptrtoint ptr %subcommand.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4866, ptr %subcommand.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.anon.151, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %size.i.i, align 2
  %control_requests.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 5
  %17 = ptrtoint ptr %control_requests.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %control_requests.i.i, align 8
  %inc.i.i = add i32 %18, 1
  store i32 %inc.i.i, ptr %control_requests.i.i, align 8
  %d_id.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %al_pa.i = getelementptr inbounds %struct.anon.80, ptr %d_id.i, i32 0, i32 2
  %19 = ptrtoint ptr %al_pa.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %al_pa.i, align 2
  %param.i = getelementptr inbounds %struct.anon.151, ptr %7, i32 0, i32 8
  %21 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %param.i, align 4
  %area.i = getelementptr inbounds %struct.anon.80, ptr %d_id.i, i32 0, i32 1
  %22 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %area.i, align 1
  %arrayidx4.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx4.i, align 1
  %25 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %d_id.i, align 8
  %arrayidx8.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 2
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx8.i, align 2
  %node_name.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 25
  %arrayidx9.i = getelementptr %struct.scsi_qla_host, ptr %vha, i32 0, i32 25, i32 7
  %28 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx9.i, align 1
  %arrayidx12.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 4
  %30 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx12.i, align 4
  %arrayidx14.i = getelementptr %struct.scsi_qla_host, ptr %vha, i32 0, i32 25, i32 6
  %31 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx14.i, align 2
  %arrayidx17.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 5
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx17.i, align 1
  %arrayidx19.i = getelementptr %struct.scsi_qla_host, ptr %vha, i32 0, i32 25, i32 5
  %34 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx19.i, align 1
  %arrayidx22.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 6
  %36 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx22.i, align 2
  %arrayidx24.i = getelementptr %struct.scsi_qla_host, ptr %vha, i32 0, i32 25, i32 4
  %37 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx24.i, align 4
  %arrayidx27.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 7
  %39 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx27.i, align 1
  %arrayidx29.i = getelementptr %struct.scsi_qla_host, ptr %vha, i32 0, i32 25, i32 3
  %40 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx32.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 8
  %42 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx32.i, align 4
  %arrayidx34.i = getelementptr %struct.scsi_qla_host, ptr %vha, i32 0, i32 25, i32 2
  %43 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx34.i, align 2
  %arrayidx37.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 9
  %45 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx37.i, align 1
  %arrayidx39.i = getelementptr %struct.scsi_qla_host, ptr %vha, i32 0, i32 25, i32 1
  %46 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx39.i, align 1
  %arrayidx42.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 10
  %48 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx42.i, align 2
  %49 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %node_name.i, align 8
  %arrayidx47.i = getelementptr %struct.anon.151, ptr %7, i32 0, i32 8, i32 11
  %51 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx47.i, align 1
  %52 = ptrtoint ptr %sns_cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sns_cmd_dma.i.i, align 4
  %call48.i = tail call i32 @qla2x00_send_sns(ptr noundef %vha, i32 noundef %53, i16 noundef zeroext 18, i32 noundef 2064) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp.not.i = icmp eq i32 %call48.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8266, ptr noundef nonnull @.str.91, i32 noundef %call48.i) #12
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %arrayidx50.i = getelementptr [16 x i8], ptr %7, i32 0, i32 8
  %54 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %55)
  %cmp51.not.i = icmp eq i8 %55, -128
  br i1 %cmp51.not.i, label %lor.lhs.false.i, label %if.else.i.if.then58.i_crit_edge

if.else.i.if.then58.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %arrayidx54.i = getelementptr [16 x i8], ptr %7, i32 0, i32 9
  %56 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx54.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp56.not.i = icmp eq i8 %57, 2
  br i1 %cmp56.not.i, label %if.else60.i, label %lor.lhs.false.i.if.then58.i_crit_edge

lor.lhs.false.i.if.then58.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58.i

if.then58.i:                                      ; preds = %lor.lhs.false.i.if.then58.i_crit_edge, %if.else.i.if.then58.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8315, ptr noundef nonnull @.str.92) #12
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8316, ptr noundef %7, i32 noundef 16) #12
  br label %cleanup

if.else60.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8268, ptr noundef nonnull @.str.93) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %call.i = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef null, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %type.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 11
  %58 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 15, ptr %type.i, align 2
  %name.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 12
  %59 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.74, ptr %name.i, align 8
  %call1.i = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add.i = add i32 %call1.i, 2
  tail call void @qla2x00_init_timer(ptr noundef nonnull %call.i, i32 noundef %add.i) #12
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %u.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22
  %req_dma.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8208, ptr noundef %req_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %req.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %64 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i, ptr %req.i, align 8
  %req_allocated_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %65 = ptrtoint ptr %req_allocated_size.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 8208, ptr %req_allocated_size.i, align 8
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53313, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.qla_async_rnnid) #12
  br label %done_free_sp.i

if.end13.i:                                       ; preds = %if.end.i
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 128
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %rsp_dma.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %call.i1.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev16.i, i32 noundef 8208, ptr noundef %rsp_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %rsp.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %70 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i1.i, ptr %rsp.i, align 4
  %rsp_allocated_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %71 = ptrtoint ptr %rsp_allocated_size.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 8208, ptr %rsp_allocated_size.i, align 4
  %tobool27.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end29.i

if.then28.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53314, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.qla_async_rnnid) #12
  br label %done_free_sp.i

if.end29.i:                                       ; preds = %if.end13.i
  %72 = call ptr @memset(ptr %call.i1.i, i32 0, i32 8208)
  %73 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %req.i, align 8
  %75 = call ptr @memset(ptr %74, i32 0, i32 8208)
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %74, align 4
  %gs_type.i.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %74, i32 0, i32 2
  %77 = ptrtoint ptr %gs_type.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -4, ptr %gs_type.i.i, align 4
  %gs_subtype.i.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %74, i32 0, i32 3
  %78 = ptrtoint ptr %gs_subtype.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %gs_subtype.i.i, align 1
  %command.i.i = getelementptr inbounds %struct.ct_sns_req, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 531, ptr %command.i.i, align 4
  %port_id.i = getelementptr inbounds %struct.ct_sns_req, ptr %74, i32 0, i32 5, i32 0, i32 0, i32 1
  %80 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack.i = load i32, ptr %d_id, align 8
  %tmp.coerce.0.extract.shift.i = lshr i32 %.unpack.i, 8
  %tmp.coerce.0.extract.trunc.i = trunc i32 %tmp.coerce.0.extract.shift.i to i24
  %81 = ptrtoint ptr %port_id.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 3)
  store i24 %tmp.coerce.0.extract.trunc.i, ptr %port_id.i, align 1
  %node_name41.i = getelementptr inbounds %struct.ct_sns_req, ptr %74, i32 0, i32 5, i32 0, i32 0, i32 4
  %node_name42.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 25
  %82 = ptrtoint ptr %node_name42.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %node_name42.i, align 8
  %84 = ptrtoint ptr %node_name41.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 %83, ptr %node_name41.i, align 4
  %req_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %85 = ptrtoint ptr %req_size.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 28, ptr %req_size.i, align 8
  %rsp_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %86 = ptrtoint ptr %rsp_size.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 16, ptr %rsp_size.i, align 4
  %nport_handle.i = getelementptr inbounds %struct.ct_arg, ptr %u.i, i32 0, i32 1
  %87 = ptrtoint ptr %nport_handle.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 2044, ptr %nport_handle.i, align 4
  %timeout.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 2
  %88 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout.i, align 8
  %done.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 24
  %89 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @qla2x00_async_sns_sp_done, ptr %done.i, align 4
  %90 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name.i, align 8
  %handle.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 9
  %92 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %handle.i, align 8
  %bf.load.i = load i32, ptr %d_id, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.75, ptr noundef %91, i32 noundef %93, i32 noundef %bf.lshr.i) #12
  %call52.i = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp.not.i13 = icmp eq i32 %call52.i, 0
  br i1 %cmp.not.i13, label %if.end29.i.cleanup_crit_edge, label %if.then53.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then53.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8269, ptr noundef nonnull @.str.76, i32 noundef %call52.i) #12
  br label %done_free_sp.i

done_free_sp.i:                                   ; preds = %if.then53.i, %if.then28.i, %if.then12.i
  %rval.0.i14 = phi i32 [ %call52.i, %if.then53.i ], [ 259, %if.then28.i ], [ 259, %if.then12.i ]
  %free.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 25
  %94 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %free.i, align 8
  tail call void %95(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %done_free_sp.i, %if.end29.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.else60.i, %if.then58.i, %if.then.i
  %retval.0 = phi i32 [ %call48.i, %if.then.i ], [ 258, %if.then58.i ], [ 0, %if.else60.i ], [ 0, %if.end29.i.cleanup_crit_edge ], [ %rval.0.i14, %done_free_sp.i ], [ 259, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_get_sym_node_name(ptr nocapture noundef readonly %vha, ptr noundef %snn, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %model_number3 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 195
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fw_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 3
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %snn, i32 noundef %size, ptr noundef nonnull @.str.15, ptr noundef %model_number3, ptr noundef %fw_version, ptr noundef nonnull @qla2x00_version_str) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fw_major_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 135
  %4 = ptrtoint ptr %fw_major_version to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fw_major_version, align 4
  %conv = zext i16 %5 to i32
  %fw_minor_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 136
  %6 = ptrtoint ptr %fw_minor_version to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fw_minor_version, align 2
  %conv5 = zext i16 %7 to i32
  %fw_subminor_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 137
  %8 = ptrtoint ptr %fw_subminor_version to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fw_subminor_version, align 8
  %conv6 = zext i16 %9 to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %snn, i32 noundef %size, ptr noundef nonnull @.str.16, ptr noundef %model_number3, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6, ptr noundef nonnull @qla2x00_version_str) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call7, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_rsnn_nn(ptr noundef %vha) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8272, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef null, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %type.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 15, ptr %type.i, align 2
  %name.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.77, ptr %name.i, align 8
  %call1.i = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add.i = add i32 %call1.i, 2
  tail call void @qla2x00_init_timer(ptr noundef nonnull %call.i, i32 noundef %add.i) #12
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %u.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22
  %req_dma.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8208, ptr noundef %req_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %req.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %req.i, align 8
  %req_allocated_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %req_allocated_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8208, ptr %req_allocated_size.i, align 8
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53313, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.qla_async_rsnn_nn) #12
  br label %done_free_sp.i

if.end13.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 128
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %rsp_dma.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %call.i108.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev16.i, i32 noundef 8208, ptr noundef %rsp_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %rsp.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i108.i, ptr %rsp.i, align 4
  %rsp_allocated_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %rsp_allocated_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8208, ptr %rsp_allocated_size.i, align 4
  %tobool27.not.i = icmp eq ptr %call.i108.i, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end29.i

if.then28.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53314, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.qla_async_rsnn_nn) #12
  br label %done_free_sp.i

if.end29.i:                                       ; preds = %if.end13.i
  %20 = call ptr @memset(ptr %call.i108.i, i32 0, i32 8208)
  %21 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req.i, align 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 8208)
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %22, align 4
  %gs_type.i.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %gs_type.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -4, ptr %gs_type.i.i, align 4
  %gs_subtype.i.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %22, i32 0, i32 3
  %26 = ptrtoint ptr %gs_subtype.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %gs_subtype.i.i, align 1
  %command.i.i = getelementptr inbounds %struct.ct_sns_req, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 569, ptr %command.i.i, align 4
  %req37.i = getelementptr inbounds %struct.ct_sns_req, ptr %22, i32 0, i32 5
  %node_name38.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 25
  %28 = ptrtoint ptr %node_name38.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %node_name38.i, align 8
  %30 = ptrtoint ptr %req37.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %req37.i, align 4
  %sym_node_name.i = getelementptr inbounds %struct.anon.117, ptr %req37.i, i32 0, i32 2
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %isp_type.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %32, i32 0, i32 54
  %33 = ptrtoint ptr %isp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %isp_type.i.i, align 8
  %and1.i.i = and i32 %34, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  %model_number3.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %32, i32 0, i32 195
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %fw_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %32, i32 0, i32 278, i32 3
  %call.i109.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %sym_node_name.i, i32 noundef 255, ptr noundef nonnull @.str.15, ptr noundef %model_number3.i.i, ptr noundef %fw_version.i.i, ptr noundef nonnull @qla2x00_version_str) #12
  br label %qla2x00_get_sym_node_name.exit.i

if.end.i.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %fw_major_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %32, i32 0, i32 135
  %35 = ptrtoint ptr %fw_major_version.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fw_major_version.i.i, align 4
  %conv.i.i = zext i16 %36 to i32
  %fw_minor_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %32, i32 0, i32 136
  %37 = ptrtoint ptr %fw_minor_version.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fw_minor_version.i.i, align 2
  %conv5.i.i = zext i16 %38 to i32
  %fw_subminor_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %32, i32 0, i32 137
  %39 = ptrtoint ptr %fw_subminor_version.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %fw_subminor_version.i.i, align 8
  %conv6.i.i = zext i16 %40 to i32
  %call7.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %sym_node_name.i, i32 noundef 255, ptr noundef nonnull @.str.16, ptr noundef %model_number3.i.i, i32 noundef %conv.i.i, i32 noundef %conv5.i.i, i32 noundef %conv6.i.i, ptr noundef nonnull @qla2x00_version_str) #12
  br label %qla2x00_get_sym_node_name.exit.i

qla2x00_get_sym_node_name.exit.i:                 ; preds = %if.end.i.i, %if.then.i.i
  %call46.i = tail call i32 @strlen(ptr noundef %sym_node_name.i) #15
  %conv.i = trunc i32 %call46.i to i8
  %name_len.i = getelementptr inbounds %struct.ct_sns_req, ptr %22, i32 0, i32 5, i32 0, i32 1
  %41 = ptrtoint ptr %name_len.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i, ptr %name_len.i, align 4
  %conv50.i = and i32 %call46.i, 255
  %add51.i = add nuw nsw i32 %conv50.i, 25
  %req_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %req_size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add51.i, ptr %req_size.i, align 8
  %rsp_size.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %rsp_size.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16, ptr %rsp_size.i, align 4
  %nport_handle.i = getelementptr inbounds %struct.ct_arg, ptr %u.i, i32 0, i32 1
  %44 = ptrtoint ptr %nport_handle.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2044, ptr %nport_handle.i, align 4
  %timeout.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 22, i32 0, i32 2
  %45 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout.i, align 8
  %done.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 24
  %46 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @qla2x00_async_sns_sp_done, ptr %done.i, align 4
  %47 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name.i, align 8
  %handle.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 9
  %49 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %handle.i, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.78, ptr noundef %48, i32 noundef %50) #12
  %call60.i = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp.not.i = icmp eq i32 %call60.i, 0
  br i1 %cmp.not.i, label %qla2x00_get_sym_node_name.exit.i.cleanup_crit_edge, label %if.then62.i

qla2x00_get_sym_node_name.exit.i.cleanup_crit_edge: ; preds = %qla2x00_get_sym_node_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then62.i:                                      ; preds = %qla2x00_get_sym_node_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8259, ptr noundef nonnull @.str.67, i32 noundef %call60.i) #12
  br label %done_free_sp.i

done_free_sp.i:                                   ; preds = %if.then62.i, %if.then28.i, %if.then12.i
  %rval.0.i = phi i32 [ %call60.i, %if.then62.i ], [ 259, %if.then28.i ], [ 259, %if.then12.i ]
  %free.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 25
  %51 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %free.i, align 8
  tail call void %52(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %done_free_sp.i, %qla2x00_get_sym_node_name.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %qla2x00_get_sym_node_name.exit.i.cleanup_crit_edge ], [ %rval.0.i, %done_free_sp.i ], [ 259, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_mgmt_svr_login(ptr noundef %vha) local_unnamed_addr #3 align 64 {
entry:
  %mb = alloca [32 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mb) #12
  %0 = call ptr @memset(ptr %mb, i32 255, i32 64)
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load volatile i32, ptr %flags, align 8
  %4 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 234
  %5 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %isp_ops, align 4
  %fabric_login = getelementptr inbounds %struct.isp_operations, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %fabric_login to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fabric_login, align 4
  %mgmt_svr_loop_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 19
  %9 = ptrtoint ptr %mgmt_svr_loop_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mgmt_svr_loop_id, align 2
  %call = call i32 %8(ptr noundef %vha, i16 noundef zeroext %10, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -6, ptr noundef nonnull %mb, i8 noundef zeroext 2) #12
  %11 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %call, label %if.end.if.else_crit_edge [
    i32 0, label %lor.lhs.false
    i32 259, label %if.then6
  ]

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %mb to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mb, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp1.not = icmp eq i16 %13, 16384
  br i1 %cmp1.not, label %if.else22, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %mgmt_svr_loop_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mgmt_svr_loop_id, align 2
  %conv8 = zext i16 %15 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8325, ptr noundef nonnull @.str.18, i32 noundef %conv8, i32 noundef 259) #12
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end.if.else_crit_edge
  %16 = ptrtoint ptr %mgmt_svr_loop_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mgmt_svr_loop_id, align 2
  %conv10 = zext i16 %17 to i32
  %18 = ptrtoint ptr %mb to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mb, align 2
  %conv12 = zext i16 %19 to i32
  %arrayidx13 = getelementptr inbounds [32 x i16], ptr %mb, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %21 to i32
  %arrayidx15 = getelementptr inbounds [32 x i16], ptr %mb, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %23 to i32
  %arrayidx17 = getelementptr inbounds [32 x i16], ptr %mb, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %25 to i32
  %arrayidx19 = getelementptr inbounds [32 x i16], ptr %mb, i32 0, i32 7
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %27 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8228, ptr noundef nonnull @.str.19, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20) #12
  br label %cleanup

if.else22:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load24 = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load24, 268435456
  store volatile i32 %bf.set, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else22, %if.else, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else22 ], [ 258, %if.else ], [ 258, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mb) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qla2x00_prep_ms_fdmi_iocb(ptr nocapture noundef readonly %vha, i32 noundef %req_size, i32 noundef %rsp_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ms_iocb, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 64)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 41, ptr %3, align 4
  %entry_count = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %entry_count, align 1
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %7 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not = icmp sgt i32 %8, -1
  %mgmt_svr_loop_id1 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 19
  %9 = ptrtoint ptr %mgmt_svr_loop_id1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mgmt_svr_loop_id1, align 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %loop_id = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %loop_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %loop_id, align 4
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i16 %10 to i8
  %loop_id2 = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 5
  %standard = getelementptr inbounds %struct.anon.82, ptr %loop_id2, i32 0, i32 1
  %13 = ptrtoint ptr %standard to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %standard, align 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %control_flags = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 8704, ptr %control_flags, align 4
  %r_a_tov = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 68
  %15 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %r_a_tov, align 8
  %17 = udiv i16 %16, 10
  %18 = shl nuw nsw i16 %17, 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %timeout = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %timeout, align 4
  %cmd_dsd_count = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %cmd_dsd_count to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 256, ptr %cmd_dsd_count, align 2
  %total_dsd_count = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %total_dsd_count to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 512, ptr %total_dsd_count, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %rsp_size)
  %rsp_bytecount = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 17
  %24 = ptrtoint ptr %rsp_bytecount to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rsp_bytecount, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %req_size)
  %req_bytecount = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 18
  %26 = ptrtoint ptr %req_bytecount to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %req_bytecount, align 4
  %ct_sns_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 80
  %27 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ct_sns_dma, align 4
  %conv5 = zext i32 %28 to i64
  %req_dsd = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 19
  %29 = tail call i64 @llvm.bswap.i64(i64 %conv5) #12
  %30 = ptrtoint ptr %req_dsd to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %req_dsd, align 1
  %length = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 19, i32 1
  %31 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %25, ptr %length, align 4
  %32 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ct_sns_dma, align 4
  %conv9 = zext i32 %33 to i64
  %rsp_dsd = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 20
  %34 = tail call i64 @llvm.bswap.i64(i64 %conv9) #12
  %35 = ptrtoint ptr %rsp_dsd to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %rsp_dsd, align 1
  %length13 = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %3, i32 0, i32 20, i32 1
  %36 = ptrtoint ptr %length13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %23, ptr %length13, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qla24xx_prep_ms_fdmi_iocb(ptr nocapture noundef readonly %vha, i32 noundef %req_size, i32 noundef %rsp_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ms_iocb, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 64)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 41, ptr %3, align 4
  %entry_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %entry_count, align 1
  %mgmt_svr_loop_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 19
  %7 = ptrtoint ptr %mgmt_svr_loop_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mgmt_svr_loop_id, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %nport_handle = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %nport_handle, align 2
  %r_a_tov = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 68
  %11 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %r_a_tov, align 8
  %13 = udiv i16 %12, 10
  %14 = shl nuw nsw i16 %13, 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %timeout = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %timeout, align 4
  %cmd_dsd_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %cmd_dsd_count to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 256, ptr %cmd_dsd_count, align 4
  %rsp_dsd_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %rsp_dsd_count to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 256, ptr %rsp_dsd_count, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %rsp_size)
  %rsp_byte_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 14
  %20 = ptrtoint ptr %rsp_byte_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rsp_byte_count, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %req_size)
  %cmd_byte_count = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 15
  %22 = ptrtoint ptr %cmd_byte_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cmd_byte_count, align 4
  %ct_sns_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 80
  %23 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ct_sns_dma, align 4
  %conv2 = zext i32 %24 to i64
  %dsd = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 16
  %25 = tail call i64 @llvm.bswap.i64(i64 %conv2) #12
  %26 = ptrtoint ptr %dsd to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %dsd, align 1
  %length = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 16, i32 0, i32 1
  %27 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %21, ptr %length, align 4
  %28 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ct_sns_dma, align 4
  %conv7 = zext i32 %29 to i64
  %arrayidx9 = getelementptr %struct.ct_entry_24xx, ptr %3, i32 0, i32 16, i32 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %conv7) #12
  %31 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %arrayidx9, align 1
  %length14 = getelementptr %struct.ct_entry_24xx, ptr %3, i32 0, i32 16, i32 1, i32 1
  %32 = ptrtoint ptr %length14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %19, ptr %length14, align 4
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %33 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vp_idx, align 8
  %conv15 = trunc i16 %34 to i8
  %vp_index = getelementptr inbounds %struct.ct_entry_24xx, ptr %3, i32 0, i32 8
  %35 = ptrtoint ptr %vp_index to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv15, ptr %vp_index, align 2
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qla25xx_fdmi_port_speed_capability(ptr nocapture noundef readonly %ha) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 54
  %0 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isp_type, align 8
  %2 = and i32 %1, 352256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i32 %1, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end121, label %if.then40

if.then40:                                        ; preds = %if.end
  %max_supported_speed = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 285
  %6 = ptrtoint ptr %max_supported_speed to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_supported_speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp = icmp eq i16 %7, 2
  br i1 %cmp, label %if.end48.thread, label %if.end48

if.end48.thread:                                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %min_supported_speed = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 284
  %8 = ptrtoint ptr %min_supported_speed to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %min_supported_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %9)
  %cmp44 = icmp ult i16 %9, 7
  %spec.select = select i1 %cmp44, i32 128, i32 0
  br label %if.end89

if.end48:                                         ; preds = %if.then40
  %.off = add i16 %7, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.end48.if.end89_crit_edge, label %if.end66

if.end48.if.end89_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.end66:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %switch269 = icmp ult i16 %7, 3
  br i1 %switch269, label %if.then112, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end89:                                         ; preds = %if.end48.if.end89_crit_edge, %if.end48.thread
  %speeds.0275 = phi i32 [ %spec.select, %if.end48.thread ], [ 0, %if.end48.if.end89_crit_edge ]
  %min_supported_speed59 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 284
  %10 = ptrtoint ptr %min_supported_speed59 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %min_supported_speed59, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %11)
  %cmp61 = icmp ult i16 %11, 6
  %or64 = or i32 %speeds.0275, 64
  %spec.select256 = select i1 %cmp61, i32 %or64, i32 %speeds.0275
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %11)
  %cmp84 = icmp ult i16 %11, 5
  %or87 = or i32 %spec.select256, 32
  %spec.select257 = select i1 %cmp84, i32 %or87, i32 %spec.select256
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %switch270 = icmp ult i16 %7, 2
  br i1 %switch270, label %if.end107, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end107:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %min_supported_speed59 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %min_supported_speed59, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp102 = icmp ult i16 %13, 4
  %or105 = or i32 %spec.select257, 16
  %spec.select258 = select i1 %cmp102, i32 %or105, i32 %spec.select257
  br label %cleanup

if.then112:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %min_supported_speed82283 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 284
  %14 = ptrtoint ptr %min_supported_speed82283 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %min_supported_speed82283, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %15)
  %cmp84284 = icmp ult i16 %15, 5
  %spec.select257286 = select i1 %cmp84284, i32 32, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %15)
  %cmp102294 = icmp ult i16 %15, 4
  %or105295 = or i32 %spec.select257286, 16
  %spec.select258296 = select i1 %cmp102294, i32 %or105295, i32 %spec.select257286
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %15)
  %cmp115 = icmp ult i16 %15, 3
  %or118 = or i32 %spec.select258296, 8
  %spec.select259 = select i1 %cmp115, i32 %or118, i32 %spec.select258296
  br label %cleanup

if.end121:                                        ; preds = %if.end
  %and124 = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end142, label %if.then126

if.then126:                                       ; preds = %if.end121
  %16 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ha, align 128
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4156, i16 %19)
  %cmp128 = icmp eq i16 %19, 4156
  br i1 %cmp128, label %land.lhs.true, label %if.then126.cleanup_crit_edge

if.then126.cleanup_crit_edge:                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #14
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 10
  %20 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32766, i16 %21)
  %switch.selectcmp.case1 = icmp eq i16 %21, -32766
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %21)
  %switch.selectcmp.case2 = icmp eq i16 %21, -32634
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %22 = select i1 %switch.selectcmp, i32 32, i32 56
  br label %cleanup

if.end142:                                        ; preds = %if.end121
  %23 = and i32 %1, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.end153, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end153:                                        ; preds = %if.end142
  %25 = and i32 %1, 6016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %if.end179, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end179:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  %27 = and i32 %1, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %28 = icmp eq i32 %27, 0
  %spec.select271 = select i1 %28, i32 1, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end179, %if.end153.cleanup_crit_edge, %if.end142.cleanup_crit_edge, %land.lhs.true, %if.then126.cleanup_crit_edge, %if.then112, %if.end107, %if.end89.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ %spec.select258, %if.end107 ], [ %spec.select259, %if.then112 ], [ 27, %if.end142.cleanup_crit_edge ], [ 11, %if.end153.cleanup_crit_edge ], [ %22, %land.lhs.true ], [ 56, %if.then126.cleanup_crit_edge ], [ %spec.select271, %if.end179 ], [ %spec.select257, %if.end89.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qla25xx_fdmi_port_speed_currently(ptr nocapture noundef readonly %ha) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link_data_rate = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 47
  %0 = ptrtoint ptr %link_data_rate to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %link_data_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %1)
  %2 = icmp ult i16 %1, 20
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = sext i16 %1 to i32
  %switch.gep = getelementptr inbounds [20 x i32], ptr @switch.table.qla25xx_fdmi_port_speed_currently, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 32768, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_fdmi_register(ptr noundef %vha) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 131075
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @qla2x00_mgmt_svr_login(ptr noundef %vha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %6 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vp_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool14.not = icmp eq i16 %7, 0
  br i1 %tobool14.not, label %if.end30, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xsmartsan to i32))
  %8 = load i32, ptr @ql2xsmartsan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.then15.if.then23_crit_edge, label %if.then17

if.then15.if.then23_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

if.then17:                                        ; preds = %if.then15
  %call18 = tail call fastcc i32 @qla2x00_fdmi_rprt(ptr noundef %vha, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %phi.cmp112 = icmp eq i32 %call18, 0
  br i1 %phi.cmp112, label %lor.lhs.false21, label %if.then17.if.then23_crit_edge

if.then17.if.then23_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

lor.lhs.false21:                                  ; preds = %if.then17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xsmartsan to i32))
  %.pr = load i32, ptr @ql2xsmartsan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool22.not = icmp eq i32 %.pr, 0
  br i1 %tobool22.not, label %lor.lhs.false21.if.then23_crit_edge, label %lor.lhs.false21.cleanup_crit_edge

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false21.if.then23_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false21.if.then23_crit_edge, %if.then17.if.then23_crit_edge, %if.then15.if.then23_crit_edge
  %call24 = tail call fastcc i32 @qla2x00_fdmi_rprt(ptr noundef %vha, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %phi.cmp113 = icmp eq i32 %call24, 0
  br i1 %phi.cmp113, label %if.then23.cleanup_crit_edge, label %if.then27

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call fastcc i32 @qla2x00_fdmi_rprt(ptr noundef %vha, i32 noundef 0)
  br label %cleanup

if.end30:                                         ; preds = %if.end13
  %call31 = tail call fastcc i32 @qla2x00_fdmi_rhba(ptr noundef %vha, i32 noundef 1)
  %9 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %call31, label %if.end30.try_fdmi_crit_edge [
    i32 0, label %if.end30.if.end44_crit_edge
    i32 265, label %if.end35
  ]

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end30.try_fdmi_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_fdmi

if.end35:                                         ; preds = %if.end30
  %call36 = tail call fastcc i32 @qla2x00_fdmi_dhba(ptr noundef %vha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.try_fdmi_crit_edge

if.end35.try_fdmi_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_fdmi

if.end39:                                         ; preds = %if.end35
  %call40 = tail call fastcc i32 @qla2x00_fdmi_rhba(ptr noundef %vha, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.if.end44_crit_edge, label %if.end39.try_fdmi_crit_edge

if.end39.try_fdmi_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_fdmi

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end44:                                         ; preds = %if.end39.if.end44_crit_edge, %if.end30.if.end44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xsmartsan to i32))
  %10 = load i32, ptr @ql2xsmartsan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool45.not = icmp eq i32 %10, 0
  br i1 %tobool45.not, label %if.end44.if.then52_crit_edge, label %if.then46

if.end44.if.then52_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

if.then46:                                        ; preds = %if.end44
  %call47 = tail call fastcc i32 @qla2x00_fdmi_rpa(ptr noundef %vha, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %phi.cmp = icmp eq i32 %call47, 0
  br i1 %phi.cmp, label %lor.lhs.false50, label %if.then46.if.then52_crit_edge

if.then46.if.then52_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

lor.lhs.false50:                                  ; preds = %if.then46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xsmartsan to i32))
  %.pr116 = load i32, ptr @ql2xsmartsan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr116)
  %tobool51.not = icmp eq i32 %.pr116, 0
  br i1 %tobool51.not, label %lor.lhs.false50.if.then52_crit_edge, label %lor.lhs.false50.cleanup_crit_edge

lor.lhs.false50.cleanup_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false50.if.then52_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false50.if.then52_crit_edge, %if.then46.if.then52_crit_edge, %if.end44.if.then52_crit_edge
  %call53 = tail call fastcc i32 @qla2x00_fdmi_rpa(ptr noundef %vha, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %phi.cmp111 = icmp eq i32 %call53, 0
  br i1 %phi.cmp111, label %if.then52.cleanup_crit_edge, label %if.then52.try_fdmi_crit_edge

if.then52.try_fdmi_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_fdmi

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

try_fdmi:                                         ; preds = %if.then52.try_fdmi_crit_edge, %if.end39.try_fdmi_crit_edge, %if.end35.try_fdmi_crit_edge, %if.end30.try_fdmi_crit_edge
  %call58 = tail call fastcc i32 @qla2x00_fdmi_rhba(ptr noundef %vha, i32 noundef 0)
  %11 = zext i32 %call58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %call58, label %try_fdmi.cleanup_crit_edge [
    i32 0, label %try_fdmi.if.end72_crit_edge
    i32 265, label %if.end63
  ]

try_fdmi.if.end72_crit_edge:                      ; preds = %try_fdmi
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

try_fdmi.cleanup_crit_edge:                       ; preds = %try_fdmi
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end63:                                         ; preds = %try_fdmi
  %call64 = tail call fastcc i32 @qla2x00_fdmi_dhba(ptr noundef %vha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %call68 = tail call fastcc i32 @qla2x00_fdmi_rhba(ptr noundef %vha, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end67.if.end72_crit_edge, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end67.if.end72_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.end72:                                         ; preds = %if.end67.if.end72_crit_edge, %try_fdmi.if.end72_crit_edge
  %call73 = tail call fastcc i32 @qla2x00_fdmi_rpa(ptr noundef %vha, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end67.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %try_fdmi.cleanup_crit_edge, %if.then52.cleanup_crit_edge, %lor.lhs.false50.cleanup_crit_edge, %if.then27, %if.then23.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call73, %if.end72 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call28, %if.then27 ], [ 0, %if.then23.cleanup_crit_edge ], [ 0, %lor.lhs.false21.cleanup_crit_edge ], [ 0, %if.then52.cleanup_crit_edge ], [ %call58, %try_fdmi.cleanup_crit_edge ], [ %call64, %if.end63.cleanup_crit_edge ], [ %call68, %if.end67.cleanup_crit_edge ], [ 0, %lor.lhs.false50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla2x00_fdmi_rprt(ptr noundef %vha, i32 noundef %callopt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %callopt)
  %cmp = icmp eq i32 %callopt, 2
  br i1 %cmp, label %land.lhs.true, label %entry.cond.false_crit_edge

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xsmartsan to i32))
  %6 = load i32, ptr @ql2xsmartsan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %callopt)
  %cmp2.not = icmp eq i32 %callopt, 0
  %cond = select i1 %cmp2.not, i32 6, i32 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond3 = phi i32 [ %cond, %cond.false ], [ 23, %land.lhs.true.cond.end_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8424, ptr noundef nonnull @.str.94, i32 noundef %callopt, i32 noundef %cond3, i32 noundef 24) #12
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %7 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp_ops, align 4
  %prep_ms_fdmi_iocb = getelementptr inbounds %struct.isp_operations, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %prep_ms_fdmi_iocb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prep_ms_fdmi_iocb, align 4
  %call4 = tail call ptr %10(ptr noundef %vha, i32 noundef 0, i32 noundef 24) #12
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %11 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ct_sns, align 16
  %13 = call ptr @memset(ptr %12, i32 0, i32 8208)
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %12, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -6, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %12, i32 0, i32 3
  %16 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 528, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %12, i32 0, i32 2
  %18 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %max_rsp_size.i, align 2
  %19 = load ptr, ptr %ct_sns, align 16
  %req = getelementptr inbounds %struct.ct_sns_req, ptr %12, i32 0, i32 5
  %port_name = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 26
  %20 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %port_name, align 8
  %22 = ptrtoint ptr %req to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %req, align 4
  %port_name9 = getelementptr inbounds %struct.ct_sns_req, ptr %12, i32 0, i32 5, i32 0, i32 1
  %port_name11 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 26
  %23 = ptrtoint ptr %port_name11 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %port_name11, align 8
  %25 = ptrtoint ptr %port_name9 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %port_name9, align 4
  %attrs = getelementptr inbounds %struct.ct_sns_req, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond3, ptr %attrs, align 4
  %entry19 = getelementptr inbounds %struct.ct_sns_req, ptr %12, i32 0, i32 5, i32 0, i32 3
  %call21 = tail call fastcc i32 @qla2x00_port_attributes(ptr noundef %vha, ptr noundef %entry19, i32 noundef %callopt)
  %add22 = add i32 %call21, 44
  %add23 = add i32 %call21, 60
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %ms_iocb.i = getelementptr inbounds %struct.qla_hw_data, ptr %28, i32 0, i32 77
  %29 = ptrtoint ptr %ms_iocb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ms_iocb.i, align 8
  %device_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %28, i32 0, i32 55
  %31 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %device_type.i, align 4
  %and.i = and i32 %32, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %add23) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %cmd_byte_count.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %30, i32 0, i32 15
  %34 = ptrtoint ptr %cmd_byte_count.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %cmd_byte_count.i, align 4
  %length.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %30, i32 0, i32 16, i32 0, i32 1
  br label %qla2x00_update_ms_fdmi_iocb.exit

if.else.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %req_bytecount.i = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %30, i32 0, i32 18
  %35 = ptrtoint ptr %req_bytecount.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %req_bytecount.i, align 4
  %length4.i = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %30, i32 0, i32 19, i32 1
  br label %qla2x00_update_ms_fdmi_iocb.exit

qla2x00_update_ms_fdmi_iocb.exit:                 ; preds = %if.else.i, %if.then.i
  %length4.sink.i = phi ptr [ %length4.i, %if.else.i ], [ %length.i, %if.then.i ]
  %36 = ptrtoint ptr %length4.sink.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %length4.sink.i, align 4
  %37 = ptrtoint ptr %port_name9 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %port_name9, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8425, ptr noundef nonnull @.str.95, i64 noundef %38, i64 noundef %38) #12
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8426, ptr noundef %entry19, i32 noundef %add22) #12
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %39 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ms_iocb, align 8
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  %41 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ms_iocb_dma, align 4
  %call32 = tail call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %40, i32 noundef %42, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end, label %if.then

if.then:                                          ; preds = %qla2x00_update_ms_fdmi_iocb.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8427, ptr noundef nonnull @.str.96, i32 noundef %call32) #12
  br label %cleanup

if.end:                                           ; preds = %qla2x00_update_ms_fdmi_iocb.exit
  %call34 = tail call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %call4, ptr noundef %19, ptr noundef nonnull @.str.97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end53, label %if.then36

if.then36:                                        ; preds = %if.end
  %reason_code = getelementptr inbounds %struct.ct_rsp_hdr, ptr %19, i32 0, i32 4
  %43 = ptrtoint ptr %reason_code to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reason_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %44)
  %cmp38 = icmp eq i8 %44, 9
  br i1 %cmp38, label %land.lhs.true40, label %if.then36.if.end46_crit_edge

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true40:                                  ; preds = %if.then36
  %explanation_code = getelementptr inbounds %struct.ct_rsp_hdr, ptr %19, i32 0, i32 5
  %45 = ptrtoint ptr %explanation_code to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %explanation_code, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %46)
  %cmp43 = icmp eq i8 %46, 16
  br i1 %cmp43, label %if.then45, label %land.lhs.true40.if.end46_crit_edge

land.lhs.true40.if.end46_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then45:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8428, ptr noundef nonnull @.str.98) #12
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true40.if.end46_crit_edge, %if.then36.if.end46_crit_edge
  %conv49 = zext i8 %44 to i32
  %explanation_code51 = getelementptr inbounds %struct.ct_rsp_hdr, ptr %19, i32 0, i32 5
  %47 = ptrtoint ptr %explanation_code51 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %explanation_code51, align 2
  %conv52 = zext i8 %48 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8429, ptr noundef nonnull @.str.99, i32 noundef %conv49, i32 noundef %conv52) #12
  br label %cleanup

if.end53:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8430, ptr noundef nonnull @.str.100) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end46, %if.then45, %if.then
  %retval.0 = phi i32 [ %call32, %if.then ], [ 265, %if.then45 ], [ %call34, %if.end46 ], [ 0, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla2x00_fdmi_rhba(ptr noundef %vha, i32 noundef %callopt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %callopt)
  %cmp.not = icmp eq i32 %callopt, 0
  %cond = select i1 %cmp.not, i32 10, i32 17
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8416, ptr noundef nonnull @.str.132, i32 noundef %callopt, i32 noundef %cond, i32 noundef 16) #12
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %2 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp_ops, align 4
  %prep_ms_fdmi_iocb = getelementptr inbounds %struct.isp_operations, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %prep_ms_fdmi_iocb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prep_ms_fdmi_iocb, align 4
  %call = tail call ptr %5(ptr noundef %vha, i32 noundef 0, i32 noundef 16) #12
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %6 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ct_sns, align 16
  %8 = call ptr @memset(ptr %7, i32 0, i32 8208)
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %7, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -6, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 512, ptr %command.i, align 4
  %13 = load ptr, ptr %ct_sns, align 16
  %req = getelementptr inbounds %struct.ct_sns_req, ptr %7, i32 0, i32 5
  %port_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 26
  %14 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %port_name, align 8
  %16 = ptrtoint ptr %req to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %req, align 4
  %entry_count = getelementptr inbounds %struct.ct_sns_req, ptr %7, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %entry_count, align 4
  %port_name7 = getelementptr inbounds %struct.ct_sns_req, ptr %7, i32 0, i32 5, i32 0, i32 2
  %18 = load i64, ptr %port_name, align 8
  %19 = ptrtoint ptr %port_name7 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %port_name7, align 4
  %attrs = getelementptr inbounds %struct.ct_sns_req, ptr %7, i32 0, i32 5, i32 0, i32 3
  %20 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %attrs, align 4
  %entry17 = getelementptr inbounds %struct.ct_sns_req, ptr %7, i32 0, i32 5, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %init_cb.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 98
  %23 = ptrtoint ptr %init_cb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_cb.i, align 4
  %25 = tail call i32 @llvm.read_register.i32(metadata !426) #12
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 110
  %29 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nsproxy.i.i, align 4
  %uts_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %uts_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %uts_ns.i.i, align 4
  %33 = ptrtoint ptr %entry17 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %entry17, align 4
  %a.i = getelementptr inbounds %struct.ct_sns_req, ptr %7, i32 0, i32 5, i32 0, i32 3, i32 1, i32 0, i32 2
  %node_name.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 25
  %34 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %node_name.i, align 8
  %36 = ptrtoint ptr %a.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %a.i, align 4
  %len.i = getelementptr inbounds %struct.ct_sns_req, ptr %7, i32 0, i32 5, i32 0, i32 3, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 12, ptr %len.i, align 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8352, ptr noundef nonnull @.str.113, i64 noundef %35) #12
  %add.ptr8.i = getelementptr %struct.ct_sns_req, ptr %7, i32 0, i32 5, i32 0, i32 3, i32 1, i32 0, i32 2, i32 1, i32 4
  %38 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 2, ptr %add.ptr8.i, align 4
  %a10.i = getelementptr %struct.ct_sns_req, ptr %7, i32 0, i32 5, i32 0, i32 3, i32 1, i32 0, i32 2, i32 1, i32 8
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a10.i, i32 noundef 64, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.139) #12
  %39 = trunc i32 %call12.i to i16
  %40 = add i16 %39, 8
  %conv20.i = and i16 %40, -4
  %len21.i = getelementptr %struct.ct_sns_req, ptr %7, i32 0, i32 5, i32 0, i32 3, i32 1, i32 0, i32 2, i32 1, i32 6
  %41 = ptrtoint ptr %len21.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv20.i, ptr %len21.i, align 2
  %conv22.i = zext i16 %conv20.i to i32
  %add23.i = add nuw nsw i32 %conv22.i, 12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8353, ptr noundef nonnull @.str.140, ptr noundef %a10.i) #12
  %add.ptr26.i = getelementptr i8, ptr %entry17, i32 %add23.i
  %42 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 3, ptr %add.ptr26.i, align 4
  %device_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 55
  %43 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %device_type.i, align 4
  %and28.i = and i32 %44, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool.not.i, label %entry.if.then34.i_crit_edge, label %if.end.i

entry.if.then34.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i

if.end.i:                                         ; preds = %entry
  %a29.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr26.i, i32 0, i32 2
  %call31.i = tail call i32 @qla2xxx_get_vpd_field(ptr noundef %vha, ptr noundef nonnull @.str.141, ptr noundef %a29.i, i32 noundef 32) #12
  %conv32.i = trunc i32 %call31.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv32.i)
  %tobool33.not.i = icmp eq i16 %conv32.i, 0
  br i1 %tobool33.not.i, label %if.end.i.if.then34.i_crit_edge, label %if.end.i.if.end46.i_crit_edge

if.end.i.if.end46.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

if.end.i.if.then34.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i

if.then34.i:                                      ; preds = %if.end.i.if.then34.i_crit_edge, %entry.if.then34.i_crit_edge
  %serial0.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 56
  %45 = ptrtoint ptr %serial0.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %serial0.i, align 16
  %47 = and i8 %46, 31
  %and36.i = zext i8 %47 to i32
  %shl.i = shl nuw nsw i32 %and36.i, 16
  %serial2.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 58
  %48 = ptrtoint ptr %serial2.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %serial2.i, align 2
  %conv37.i = zext i8 %49 to i32
  %shl38.i = shl nuw nsw i32 %conv37.i, 8
  %or.i = or i32 %shl.i, %shl38.i
  %serial1.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 57
  %50 = ptrtoint ptr %serial1.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %serial1.i, align 1
  %conv39.i = zext i8 %51 to i32
  %or40.i = or i32 %or.i, %conv39.i
  %a41.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr26.i, i32 0, i32 2
  %or40.i.frozen = freeze i32 %or40.i
  %div.i = udiv i32 %or40.i.frozen, 100000
  %add43.i = add nuw nsw i32 %div.i, 65
  %52 = mul i32 %div.i, 100000
  %rem.i.decomposed = sub i32 %or40.i.frozen, %52
  %call44.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a41.i, i32 noundef 32, ptr noundef nonnull @.str.142, i32 noundef %add43.i, i32 noundef %rem.i.decomposed) #12
  %conv45.i = trunc i32 %call44.i to i16
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then34.i, %if.end.i.if.end46.i_crit_edge
  %alen.1.i = phi i16 [ %conv32.i, %if.end.i.if.end46.i_crit_edge ], [ %conv45.i, %if.then34.i ]
  %add51.i = add i16 %alen.1.i, 8
  %add54.i = and i16 %add51.i, -4
  %len56.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr26.i, i32 0, i32 1
  %53 = ptrtoint ptr %len56.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %add54.i, ptr %len56.i, align 2
  %conv57.i = zext i16 %add54.i to i32
  %add58.i = add nuw nsw i32 %add23.i, %conv57.i
  %a59.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr26.i, i32 0, i32 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8354, ptr noundef nonnull @.str.143, ptr noundef %a59.i) #12
  %add.ptr61.i = getelementptr i8, ptr %entry17, i32 %add58.i
  %54 = ptrtoint ptr %add.ptr61.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 4, ptr %add.ptr61.i, align 4
  %a63.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr61.i, i32 0, i32 2
  %model_number.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 195
  %call66.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a63.i, i32 noundef 17, ptr noundef nonnull @.str.111, ptr noundef %model_number.i) #12
  %55 = trunc i32 %call66.i to i16
  %56 = add i16 %55, 8
  %conv76.i = and i16 %56, -4
  %len77.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr61.i, i32 0, i32 1
  %57 = ptrtoint ptr %len77.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv76.i, ptr %len77.i, align 2
  %conv78.i = zext i16 %conv76.i to i32
  %add79.i = add nuw nsw i32 %add58.i, %conv78.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8355, ptr noundef nonnull @.str.144, ptr noundef %a63.i) #12
  %add.ptr82.i = getelementptr i8, ptr %entry17, i32 %add79.i
  %58 = ptrtoint ptr %add.ptr82.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 5, ptr %add.ptr82.i, align 4
  %a84.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr82.i, i32 0, i32 2
  %model_desc.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 196
  %call87.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a84.i, i32 noundef 80, ptr noundef nonnull @.str.111, ptr noundef %model_desc.i) #12
  %59 = trunc i32 %call87.i to i16
  %60 = add i16 %59, 8
  %conv97.i = and i16 %60, -4
  %len98.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr82.i, i32 0, i32 1
  %61 = ptrtoint ptr %len98.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv97.i, ptr %len98.i, align 2
  %conv99.i = zext i16 %conv97.i to i32
  %add100.i = add nuw nsw i32 %add79.i, %conv99.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8356, ptr noundef nonnull @.str.145, ptr noundef %a84.i) #12
  %add.ptr103.i = getelementptr i8, ptr %entry17, i32 %add100.i
  %62 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 6, ptr %add.ptr103.i, align 4
  %63 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %device_type.i, align 4
  %and106.i = and i32 %64, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %if.end46.i.if.then125.i_crit_edge, label %if.then110.i

if.end46.i.if.then125.i_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then125.i

if.then110.i:                                     ; preds = %if.end46.i
  %a111.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr103.i, i32 0, i32 2
  %call113.i = tail call i32 @qla2xxx_get_vpd_field(ptr noundef %vha, ptr noundef nonnull @.str.146, ptr noundef %a111.i, i32 noundef 32) #12
  %conv114.i = trunc i32 %call113.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv114.i)
  %tobool116.not.i = icmp eq i16 %conv114.i, 0
  br i1 %tobool116.not.i, label %if.end123.i, label %if.then110.i.if.end131.i_crit_edge

if.then110.i.if.end131.i_crit_edge:               ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131.i

if.end123.i:                                      ; preds = %if.then110.i
  %call120.i = tail call i32 @qla2xxx_get_vpd_field(ptr noundef %vha, ptr noundef nonnull @.str.147, ptr noundef %a111.i, i32 noundef 32) #12
  %conv121.i = trunc i32 %call120.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv121.i)
  %tobool124.not.i = icmp eq i16 %conv121.i, 0
  br i1 %tobool124.not.i, label %if.end123.i.if.then125.i_crit_edge, label %if.end123.i.if.end131.i_crit_edge

if.end123.i.if.end131.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131.i

if.end123.i.if.then125.i_crit_edge:               ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then125.i

if.then125.i:                                     ; preds = %if.end123.i.if.then125.i_crit_edge, %if.end46.i.if.then125.i_crit_edge
  %a126.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr103.i, i32 0, i32 2
  %adapter_id.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 197
  %call129.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a126.i, i32 noundef 32, ptr noundef nonnull @.str.148, ptr noundef %adapter_id.i) #12
  %conv130.i = trunc i32 %call129.i to i16
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then125.i, %if.end123.i.if.end131.i_crit_edge, %if.then110.i.if.end131.i_crit_edge
  %alen.4.i = phi i16 [ %conv121.i, %if.end123.i.if.end131.i_crit_edge ], [ %conv130.i, %if.then125.i ], [ %conv114.i, %if.then110.i.if.end131.i_crit_edge ]
  %add136.i = add i16 %alen.4.i, 8
  %add139.i = and i16 %add136.i, -4
  %len141.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr103.i, i32 0, i32 1
  %65 = ptrtoint ptr %len141.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %add139.i, ptr %len141.i, align 2
  %conv142.i = zext i16 %add139.i to i32
  %add143.i = add nuw nsw i32 %add100.i, %conv142.i
  %a144.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr103.i, i32 0, i32 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8357, ptr noundef nonnull @.str.149, ptr noundef %a144.i) #12
  %add.ptr146.i = getelementptr i8, ptr %entry17, i32 %add143.i
  %66 = ptrtoint ptr %add.ptr146.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 7, ptr %add.ptr146.i, align 4
  %a148.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr146.i, i32 0, i32 2
  %call150.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a148.i, i32 noundef 32, ptr noundef nonnull @.str.111, ptr noundef nonnull @qla2x00_version_str) #12
  %67 = trunc i32 %call150.i to i16
  %68 = add i16 %67, 8
  %conv160.i = and i16 %68, -4
  %len161.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr146.i, i32 0, i32 1
  %69 = ptrtoint ptr %len161.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv160.i, ptr %len161.i, align 2
  %conv162.i = zext i16 %conv160.i to i32
  %add163.i = add nuw nsw i32 %add143.i, %conv162.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8358, ptr noundef nonnull @.str.150, ptr noundef %a148.i) #12
  %add.ptr166.i = getelementptr i8, ptr %entry17, i32 %add163.i
  %70 = ptrtoint ptr %add.ptr166.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 8, ptr %add.ptr166.i, align 4
  %a168.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr166.i, i32 0, i32 2
  %bios_revision.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 204
  %arrayidx.i = getelementptr %struct.qla_hw_data, ptr %22, i32 0, i32 204, i32 1
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i, align 1
  %conv170.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %bios_revision.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bios_revision.i, align 4
  %conv173.i = zext i8 %74 to i32
  %call174.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a168.i, i32 noundef 16, ptr noundef nonnull @.str.151, i32 noundef %conv170.i, i32 noundef %conv173.i) #12
  %75 = trunc i32 %call174.i to i16
  %76 = add i16 %75, 4
  %77 = and i16 %76, -4
  %conv184.i = add i16 %77, 4
  %len185.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr166.i, i32 0, i32 1
  %78 = ptrtoint ptr %len185.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv184.i, ptr %len185.i, align 2
  %conv186.i = zext i16 %conv184.i to i32
  %add187.i = add nuw nsw i32 %add163.i, %conv186.i
  %arrayidx189.i = getelementptr [16 x i8], ptr %a168.i, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx189.i, align 1
  %conv190.i = zext i8 %80 to i32
  %81 = ptrtoint ptr %a168.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %a168.i, align 4
  %conv193.i = zext i8 %82 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8359, ptr noundef nonnull @.str.152, i32 noundef %conv190.i, i32 noundef %conv193.i) #12
  %add.ptr194.i = getelementptr i8, ptr %entry17, i32 %add187.i
  %83 = ptrtoint ptr %add.ptr194.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 9, ptr %add.ptr194.i, align 4
  %isp_ops.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 234
  %84 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %isp_ops.i, align 4
  %fw_version_str.i = getelementptr inbounds %struct.isp_operations, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %fw_version_str.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fw_version_str.i, align 4
  %a196.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr194.i, i32 0, i32 2
  %call198.i = tail call ptr %87(ptr noundef %vha, ptr noundef %a196.i, i32 noundef 32) #12
  %88 = add i16 %77, 12
  %len208.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr194.i, i32 0, i32 1
  %89 = ptrtoint ptr %len208.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %len208.i, align 2
  %conv209.i = zext i16 %88 to i32
  %add210.i = add nuw nsw i32 %add187.i, %conv209.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8360, ptr noundef nonnull @.str.153, ptr noundef %a196.i) #12
  %add.ptr213.i = getelementptr i8, ptr %entry17, i32 %add210.i
  %90 = ptrtoint ptr %add.ptr213.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 10, ptr %add.ptr213.i, align 4
  %tobool215.not.i = icmp eq ptr %32, null
  br i1 %tobool215.not.i, label %if.end131.i.if.then226.i_crit_edge, label %if.end224.i

if.end131.i.if.then226.i_crit_edge:               ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then226.i

if.end224.i:                                      ; preds = %if.end131.i
  %a217.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr213.i, i32 0, i32 2
  %release.i = getelementptr inbounds %struct.new_utsname, ptr %32, i32 0, i32 2
  %machine.i = getelementptr inbounds %struct.new_utsname, ptr %32, i32 0, i32 4
  %call222.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a217.i, i32 noundef 128, ptr noundef nonnull @.str.154, ptr noundef nonnull %32, ptr noundef %release.i, ptr noundef %machine.i) #12
  %conv223.i = trunc i32 %call222.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv223.i)
  %tobool225.not.i = icmp eq i16 %conv223.i, 0
  br i1 %tobool225.not.i, label %if.end224.i.if.then226.i_crit_edge, label %if.end224.i.if.end232.i_crit_edge

if.end224.i.if.end232.i_crit_edge:                ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232.i

if.end224.i.if.then226.i_crit_edge:               ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then226.i

if.then226.i:                                     ; preds = %if.end224.i.if.then226.i_crit_edge, %if.end131.i.if.then226.i_crit_edge
  %a227.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr213.i, i32 0, i32 2
  %host.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %91 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %host.i, align 8
  %shost_data.i = getelementptr inbounds %struct.Scsi_Host, ptr %92, i32 0, i32 51
  %93 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %shost_data.i, align 8
  %system_hostname.i = getelementptr inbounds %struct.fc_host_attrs, ptr %94, i32 0, i32 29
  %call230.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a227.i, i32 noundef 128, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, ptr noundef %system_hostname.i) #12
  %conv231.i = trunc i32 %call230.i to i16
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.then226.i, %if.end224.i.if.end232.i_crit_edge
  %alen.6.i = phi i16 [ %conv223.i, %if.end224.i.if.end232.i_crit_edge ], [ %conv231.i, %if.then226.i ]
  %add237.i = add i16 %alen.6.i, 8
  %add240.i = and i16 %add237.i, -4
  %len242.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr213.i, i32 0, i32 1
  %95 = ptrtoint ptr %len242.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %add240.i, ptr %len242.i, align 2
  %conv243.i = zext i16 %add240.i to i32
  %add244.i = add nuw nsw i32 %add210.i, %conv243.i
  %a245.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr213.i, i32 0, i32 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8361, ptr noundef nonnull @.str.157, ptr noundef %a245.i) #12
  br i1 %cmp.not, label %if.end232.i.qla2x00_hba_attributes.exit_crit_edge, label %if.end249.i

if.end232.i.qla2x00_hba_attributes.exit_crit_edge: ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_hba_attributes.exit

if.end249.i:                                      ; preds = %if.end232.i
  %add.ptr250.i = getelementptr i8, ptr %entry17, i32 %add244.i
  %96 = ptrtoint ptr %add.ptr250.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 11, ptr %add.ptr250.i, align 4
  %97 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %device_type.i, align 4
  %and253.i = and i32 %98, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253.i)
  %tobool254.not.i = icmp eq i32 %and253.i, 0
  br i1 %tobool254.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #14
  %frame_payload_size.i = getelementptr inbounds %struct.init_cb_24xx, ptr %24, i32 0, i32 2
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %init_cb.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_cb.i, align 4
  %frame_payload_size257.i = getelementptr inbounds %struct.init_cb_t, ptr %100, i32 0, i32 3
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.in.i = phi ptr [ %frame_payload_size.i, %cond.true.i ], [ %frame_payload_size257.i, %cond.false.i ]
  %101 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %cond.in614.i = load i16, ptr %cond.in.in.i, align 2
  %102 = tail call i16 @llvm.bswap.i16(i16 %cond.in614.i) #12
  %conv260.i = zext i16 %102 to i32
  %a261.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr250.i, i32 0, i32 2
  %103 = ptrtoint ptr %a261.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv260.i, ptr %a261.i, align 4
  %len265.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr250.i, i32 0, i32 1
  %104 = ptrtoint ptr %len265.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 8, ptr %len265.i, align 2
  %add267.i = add nuw nsw i32 %add244.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8362, ptr noundef nonnull @.str.158, i32 noundef %conv260.i) #12
  %add.ptr269.i = getelementptr i8, ptr %entry17, i32 %add267.i
  %105 = ptrtoint ptr %add.ptr269.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 12, ptr %add.ptr269.i, align 4
  %a271.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr269.i, i32 0, i32 2
  %106 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw, align 4
  %isp_type.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %107, i32 0, i32 54
  %108 = ptrtoint ptr %isp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %isp_type.i.i, align 8
  %and1.i.i = and i32 %109, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  %model_number3.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %107, i32 0, i32 195
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %fw_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %107, i32 0, i32 278, i32 3
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a271.i, i32 noundef 256, ptr noundef nonnull @.str.15, ptr noundef %model_number3.i.i, ptr noundef %fw_version.i.i, ptr noundef nonnull @qla2x00_version_str) #12
  br label %qla2x00_get_sym_node_name.exit.i

if.end.i.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %fw_major_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %107, i32 0, i32 135
  %110 = ptrtoint ptr %fw_major_version.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %fw_major_version.i.i, align 4
  %conv.i.i = zext i16 %111 to i32
  %fw_minor_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %107, i32 0, i32 136
  %112 = ptrtoint ptr %fw_minor_version.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %fw_minor_version.i.i, align 2
  %conv5.i.i = zext i16 %113 to i32
  %fw_subminor_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %107, i32 0, i32 137
  %114 = ptrtoint ptr %fw_subminor_version.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %fw_subminor_version.i.i, align 8
  %conv6.i.i = zext i16 %115 to i32
  %call7.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a271.i, i32 noundef 256, ptr noundef nonnull @.str.16, ptr noundef %model_number3.i.i, i32 noundef %conv.i.i, i32 noundef %conv5.i.i, i32 noundef %conv6.i.i, ptr noundef nonnull @qla2x00_version_str) #12
  br label %qla2x00_get_sym_node_name.exit.i

qla2x00_get_sym_node_name.exit.i:                 ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call7.i.i, %if.end.i.i ]
  %116 = trunc i32 %retval.0.i.i to i16
  %117 = add i16 %116, 8
  %conv283.i = and i16 %117, -4
  %len284.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr269.i, i32 0, i32 1
  %118 = ptrtoint ptr %len284.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv283.i, ptr %len284.i, align 2
  %conv285.i = zext i16 %conv283.i to i32
  %add286.i = add nuw nsw i32 %add267.i, %conv285.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8363, ptr noundef nonnull @.str.159, ptr noundef %a271.i) #12
  %add.ptr289.i = getelementptr i8, ptr %entry17, i32 %add286.i
  %119 = ptrtoint ptr %add.ptr289.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 13, ptr %add.ptr289.i, align 4
  %a291.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr289.i, i32 0, i32 2
  %120 = ptrtoint ptr %a291.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 4215, ptr %a291.i, align 4
  %len295.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr289.i, i32 0, i32 1
  %121 = ptrtoint ptr %len295.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 8, ptr %len295.i, align 2
  %add297.i = add nuw nsw i32 %add286.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8364, ptr noundef nonnull @.str.160, i32 noundef 4215) #12
  %add.ptr299.i = getelementptr i8, ptr %entry17, i32 %add297.i
  %122 = ptrtoint ptr %add.ptr299.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 14, ptr %add.ptr299.i, align 4
  %a301.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr299.i, i32 0, i32 2
  %123 = ptrtoint ptr %a301.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %a301.i, align 4
  %len305.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr299.i, i32 0, i32 1
  %124 = ptrtoint ptr %len305.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 8, ptr %len305.i, align 2
  %add307.i = add nuw nsw i32 %add286.i, 16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8365, ptr noundef nonnull @.str.121, i32 noundef 1) #12
  %add.ptr309.i = getelementptr i8, ptr %entry17, i32 %add307.i
  %125 = ptrtoint ptr %add.ptr309.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 15, ptr %add.ptr309.i, align 4
  %a311.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr309.i, i32 0, i32 2
  %fabric_node_name.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 27
  %126 = ptrtoint ptr %fabric_node_name.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %fabric_node_name.i, align 8
  %128 = ptrtoint ptr %a311.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 8)
  store i64 %127, ptr %a311.i, align 4
  %len317.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr309.i, i32 0, i32 1
  %129 = ptrtoint ptr %len317.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 12, ptr %len317.i, align 2
  %add319.i = add nuw nsw i32 %add286.i, 28
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8366, ptr noundef nonnull @.str.118, i64 noundef %127) #12
  %add.ptr323.i = getelementptr i8, ptr %entry17, i32 %add319.i
  %130 = ptrtoint ptr %add.ptr323.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 16, ptr %add.ptr323.i, align 4
  %a325.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr323.i, i32 0, i32 2
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i, align 1
  %conv329.i = zext i8 %132 to i32
  %133 = ptrtoint ptr %bios_revision.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %bios_revision.i, align 4
  %conv332.i = zext i8 %134 to i32
  %call333.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a325.i, i32 noundef 32, ptr noundef nonnull @.str.161, i32 noundef %conv329.i, i32 noundef %conv332.i) #12
  %135 = trunc i32 %call333.i to i16
  %136 = add i16 %135, 8
  %conv343.i = and i16 %136, -4
  %len344.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr323.i, i32 0, i32 1
  %137 = ptrtoint ptr %len344.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv343.i, ptr %len344.i, align 2
  %conv345.i = zext i16 %conv343.i to i32
  %add346.i = add nuw nsw i32 %add319.i, %conv345.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8367, ptr noundef nonnull @.str.162, ptr noundef %a325.i) #12
  %add.ptr349.i = getelementptr i8, ptr %entry17, i32 %add346.i
  %138 = ptrtoint ptr %add.ptr349.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 224, ptr %add.ptr349.i, align 4
  %a351.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr349.i, i32 0, i32 2
  %call353.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a351.i, i32 noundef 8, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.163) #12
  %139 = trunc i32 %call353.i to i16
  %140 = add i16 %139, 8
  %conv363.i = and i16 %140, -4
  %len364.i = getelementptr inbounds %struct.ct_fdmi_hba_attr, ptr %add.ptr349.i, i32 0, i32 1
  %141 = ptrtoint ptr %len364.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv363.i, ptr %len364.i, align 2
  %conv365.i = zext i16 %conv363.i to i32
  %add366.i = add nuw nsw i32 %add346.i, %conv365.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8368, ptr noundef nonnull @.str.164, ptr noundef %a351.i) #12
  br label %qla2x00_hba_attributes.exit

qla2x00_hba_attributes.exit:                      ; preds = %qla2x00_get_sym_node_name.exit.i, %if.end232.i.qla2x00_hba_attributes.exit_crit_edge
  %size.0.i = phi i32 [ %add244.i, %if.end232.i.qla2x00_hba_attributes.exit_crit_edge ], [ %add366.i, %qla2x00_get_sym_node_name.exit.i ]
  %add19 = add nuw nsw i32 %size.0.i, 40
  %add20 = add nuw nsw i32 %size.0.i, 56
  %142 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw, align 4
  %ms_iocb.i = getelementptr inbounds %struct.qla_hw_data, ptr %143, i32 0, i32 77
  %144 = ptrtoint ptr %ms_iocb.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ms_iocb.i, align 8
  %device_type.i103 = getelementptr inbounds %struct.qla_hw_data, ptr %143, i32 0, i32 55
  %146 = ptrtoint ptr %device_type.i103 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %device_type.i103, align 4
  %and.i = and i32 %147, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i104 = icmp eq i32 %and.i, 0
  %148 = tail call i32 @llvm.bswap.i32(i32 %add20) #12
  br i1 %tobool.not.i104, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %qla2x00_hba_attributes.exit
  call void @__sanitizer_cov_trace_pc() #14
  %cmd_byte_count.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %145, i32 0, i32 15
  %149 = ptrtoint ptr %cmd_byte_count.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %cmd_byte_count.i, align 4
  %length.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %145, i32 0, i32 16, i32 0, i32 1
  br label %qla2x00_update_ms_fdmi_iocb.exit

if.else.i:                                        ; preds = %qla2x00_hba_attributes.exit
  call void @__sanitizer_cov_trace_pc() #14
  %req_bytecount.i = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %145, i32 0, i32 18
  %150 = ptrtoint ptr %req_bytecount.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %148, ptr %req_bytecount.i, align 4
  %length4.i = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %145, i32 0, i32 19, i32 1
  br label %qla2x00_update_ms_fdmi_iocb.exit

qla2x00_update_ms_fdmi_iocb.exit:                 ; preds = %if.else.i, %if.then.i
  %length4.sink.i = phi ptr [ %length4.i, %if.else.i ], [ %length.i, %if.then.i ]
  %151 = ptrtoint ptr %length4.sink.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %148, ptr %length4.sink.i, align 4
  %152 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %152, i32 8)
  %153 = load i64, ptr %req, align 1
  %154 = ptrtoint ptr %port_name7 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 8)
  %155 = load i64, ptr %port_name7, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8417, ptr noundef nonnull @.str.133, i64 noundef %153, i64 noundef %155) #12
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8418, ptr noundef %entry17, i32 noundef %add19) #12
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %156 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ms_iocb, align 8
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  %158 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ms_iocb_dma, align 4
  %call29 = tail call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %157, i32 noundef %159, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %qla2x00_update_ms_fdmi_iocb.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8419, ptr noundef nonnull @.str.134, i32 noundef %call29) #12
  br label %cleanup

if.end:                                           ; preds = %qla2x00_update_ms_fdmi_iocb.exit
  %call30 = tail call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %call, ptr noundef %13, ptr noundef nonnull @.str.135)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end48, label %if.then32

if.then32:                                        ; preds = %if.end
  %reason_code = getelementptr inbounds %struct.ct_rsp_hdr, ptr %13, i32 0, i32 4
  %160 = ptrtoint ptr %reason_code to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %reason_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %161)
  %cmp34 = icmp eq i8 %161, 9
  br i1 %cmp34, label %land.lhs.true, label %if.then32.if.end41_crit_edge

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true:                                    ; preds = %if.then32
  %explanation_code = getelementptr inbounds %struct.ct_rsp_hdr, ptr %13, i32 0, i32 5
  %162 = ptrtoint ptr %explanation_code to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %explanation_code, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %163)
  %cmp38 = icmp eq i8 %163, 16
  br i1 %cmp38, label %if.then40, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8420, ptr noundef nonnull @.str.136) #12
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %if.then32.if.end41_crit_edge
  %conv44 = zext i8 %161 to i32
  %explanation_code46 = getelementptr inbounds %struct.ct_rsp_hdr, ptr %13, i32 0, i32 5
  %164 = ptrtoint ptr %explanation_code46 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %explanation_code46, align 2
  %conv47 = zext i8 %165 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8421, ptr noundef nonnull @.str.137, i32 noundef %conv44, i32 noundef %conv47) #12
  br label %cleanup

if.end48:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8422, ptr noundef nonnull @.str.138) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end41, %if.then40, %if.then
  %retval.0 = phi i32 [ %call29, %if.then ], [ 265, %if.then40 ], [ %call30, %if.end41 ], [ 0, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla2x00_fdmi_dhba(ptr noundef %vha) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %2 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp_ops, align 4
  %prep_ms_fdmi_iocb = getelementptr inbounds %struct.isp_operations, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %prep_ms_fdmi_iocb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prep_ms_fdmi_iocb, align 4
  %call = tail call ptr %5(ptr noundef %vha, i32 noundef 24, i32 noundef 16) #12
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %6 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ct_sns, align 16
  %8 = call ptr @memset(ptr %7, i32 0, i32 8208)
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %7, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -6, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 768, ptr %command.i, align 4
  %13 = load ptr, ptr %ct_sns, align 16
  %req = getelementptr inbounds %struct.ct_sns_req, ptr %7, i32 0, i32 5
  %port_name3 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 26
  %14 = ptrtoint ptr %port_name3 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %port_name3, align 8
  %16 = ptrtoint ptr %req to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %req, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8246, ptr noundef nonnull @.str.165, ptr noundef %req) #12
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %17 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ms_iocb, align 8
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  %19 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ms_iocb_dma, align 4
  %call8 = tail call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %18, i32 noundef %20, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8247, ptr noundef nonnull @.str.166, i32 noundef %call8) #12
  br label %if.end13

if.else:                                          ; preds = %entry
  %call9 = tail call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %call, ptr noundef %13, ptr noundef nonnull @.str.167)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.else12, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8248, ptr noundef nonnull @.str.168) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.else.if.end13_crit_edge, %if.then
  %rval.0 = phi i32 [ %call8, %if.then ], [ 0, %if.else12 ], [ 258, %if.else.if.end13_crit_edge ]
  ret i32 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla2x00_fdmi_rpa(ptr noundef %vha, i32 noundef %callopt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %callopt)
  %cmp = icmp eq i32 %callopt, 2
  br i1 %cmp, label %land.lhs.true, label %entry.cond.false_crit_edge

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xsmartsan to i32))
  %2 = load i32, ptr @ql2xsmartsan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %callopt)
  %cmp1.not = icmp eq i32 %callopt, 0
  %cond = select i1 %cmp1.not, i32 6, i32 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond2 = phi i32 [ %cond, %cond.false ], [ 23, %land.lhs.true.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %callopt)
  %cmp3.not = icmp eq i32 %callopt, 0
  %cond4 = select i1 %cmp3.not, i32 16, i32 24
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8432, ptr noundef nonnull @.str.169, i32 noundef %callopt, i32 noundef %cond2, i32 noundef %cond4) #12
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %3 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %isp_ops, align 4
  %prep_ms_fdmi_iocb = getelementptr inbounds %struct.isp_operations, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %prep_ms_fdmi_iocb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prep_ms_fdmi_iocb, align 4
  %call = tail call ptr %6(ptr noundef %vha, i32 noundef 0, i32 noundef %cond4) #12
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %7 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ct_sns, align 16
  %9 = call ptr @memset(ptr %8, i32 0, i32 8208)
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %8, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -6, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %8, i32 0, i32 3
  %12 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 529, ptr %command.i, align 4
  %14 = trunc i32 %cond4 to i8
  %div.i94.lhs.trunc = add nsw i8 %14, -16
  %div.i949596 = lshr exact i8 %div.i94.lhs.trunc, 2
  %conv7.i = zext i8 %div.i949596 to i16
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv7.i, ptr %max_rsp_size.i, align 2
  %16 = load ptr, ptr %ct_sns, align 16
  %req = getelementptr inbounds %struct.ct_sns_req, ptr %8, i32 0, i32 5
  %port_name7 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 26
  %17 = ptrtoint ptr %port_name7 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %port_name7, align 8
  %19 = ptrtoint ptr %req to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %req, align 4
  %attrs = getelementptr inbounds %struct.ct_sns_req, ptr %8, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond2, ptr %attrs, align 4
  %add11 = add nuw nsw i32 %cond4, 12
  %entry14 = getelementptr inbounds %struct.ct_sns_req, ptr %8, i32 0, i32 5, i32 0, i32 2
  %call16 = tail call fastcc i32 @qla2x00_port_attributes(ptr noundef %vha, ptr noundef %entry14, i32 noundef %callopt)
  %add17 = add i32 %add11, %call16
  %add18 = add i32 %add17, 16
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %ms_iocb.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 77
  %23 = ptrtoint ptr %ms_iocb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ms_iocb.i, align 8
  %device_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 55
  %25 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %device_type.i, align 4
  %and.i = and i32 %26, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %add18) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %cmd_byte_count.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %24, i32 0, i32 15
  %28 = ptrtoint ptr %cmd_byte_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cmd_byte_count.i, align 4
  %length.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %24, i32 0, i32 16, i32 0, i32 1
  br label %qla2x00_update_ms_fdmi_iocb.exit

if.else.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %req_bytecount.i = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %24, i32 0, i32 18
  %29 = ptrtoint ptr %req_bytecount.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %req_bytecount.i, align 4
  %length4.i = getelementptr inbounds %struct.ms_iocb_entry_t, ptr %24, i32 0, i32 19, i32 1
  br label %qla2x00_update_ms_fdmi_iocb.exit

qla2x00_update_ms_fdmi_iocb.exit:                 ; preds = %if.else.i, %if.then.i
  %length4.sink.i = phi ptr [ %length4.i, %if.else.i ], [ %length.i, %if.then.i ]
  %30 = ptrtoint ptr %length4.sink.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %length4.sink.i, align 4
  %31 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %req, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8433, ptr noundef nonnull @.str.170, i64 noundef %32) #12
  tail call void @ql_dump_buffer(i32 noundef 268566528, ptr noundef %vha, i32 noundef 8434, ptr noundef %entry14, i32 noundef %add17) #12
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %33 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ms_iocb, align 8
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  %35 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ms_iocb_dma, align 4
  %call23 = tail call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %34, i32 noundef %36, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end, label %if.then

if.then:                                          ; preds = %qla2x00_update_ms_fdmi_iocb.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8435, ptr noundef nonnull @.str.171, i32 noundef %call23) #12
  br label %cleanup

if.end:                                           ; preds = %qla2x00_update_ms_fdmi_iocb.exit
  %call25 = tail call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %call, ptr noundef %16, ptr noundef nonnull @.str.172)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end44, label %if.then27

if.then27:                                        ; preds = %if.end
  %reason_code = getelementptr inbounds %struct.ct_rsp_hdr, ptr %16, i32 0, i32 4
  %37 = ptrtoint ptr %reason_code to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %reason_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %38)
  %cmp29 = icmp eq i8 %38, 9
  br i1 %cmp29, label %land.lhs.true31, label %if.then27.if.end37_crit_edge

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.lhs.true31:                                  ; preds = %if.then27
  %explanation_code = getelementptr inbounds %struct.ct_rsp_hdr, ptr %16, i32 0, i32 5
  %39 = ptrtoint ptr %explanation_code to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %explanation_code, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %40)
  %cmp34 = icmp eq i8 %40, 16
  br i1 %cmp34, label %if.then36, label %land.lhs.true31.if.end37_crit_edge

land.lhs.true31.if.end37_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then36:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8436, ptr noundef nonnull @.str.173) #12
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true31.if.end37_crit_edge, %if.then27.if.end37_crit_edge
  %conv40 = zext i8 %38 to i32
  %explanation_code42 = getelementptr inbounds %struct.ct_rsp_hdr, ptr %16, i32 0, i32 5
  %41 = ptrtoint ptr %explanation_code42 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %explanation_code42, align 2
  %conv43 = zext i8 %42 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8437, ptr noundef nonnull @.str.174, i32 noundef %conv40, i32 noundef %conv43) #12
  br label %cleanup

if.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8438, ptr noundef nonnull @.str.175) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end37, %if.then36, %if.then
  %retval.0 = phi i32 [ %call23, %if.then ], [ 265, %if.then36 ], [ %call25, %if.end37 ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_gfpn_id(ptr noundef %vha, ptr nocapture noundef %list) local_unnamed_addr #3 align 64 {
entry:
  %arg = alloca %struct.ct_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %arg) #12
  %2 = getelementptr inbounds i8, ptr %arg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 40)
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_type, align 4
  %and = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %6 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ms_iocb, align 8
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %arg, align 4
  %ct_sns_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 80
  %9 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ct_sns_dma, align 4
  %req_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 2
  %11 = ptrtoint ptr %req_dma to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %req_dma, align 4
  %rsp_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 3
  %12 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %rsp_dma, align 4
  %req_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 4
  %13 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 20, ptr %req_size, align 4
  %rsp_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 5
  %14 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 24, ptr %rsp_size, align 4
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 1
  %15 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2044, ptr %nport_handle, align 4
  %max_fibre_devices = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 44
  %16 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max_fibre_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp58.not = icmp eq i16 %17, 0
  br i1 %cmp58.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  br label %for.body

for.cond:                                         ; preds = %if.else16
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %18 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max_fibre_devices, align 4
  %20 = zext i16 %19 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %20
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %21 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %isp_ops, align 4
  %prep_ms_iocb = getelementptr inbounds %struct.isp_operations, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %prep_ms_iocb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prep_ms_iocb, align 4
  %call = call ptr %24(ptr noundef %vha, ptr noundef nonnull %arg) #12
  %25 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ct_sns, align 16
  %27 = call ptr @memset(ptr %26, i32 0, i32 8208)
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %26, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %26, i32 0, i32 3
  %30 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 284, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %26, i32 0, i32 2
  %32 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %max_rsp_size.i, align 2
  %33 = load ptr, ptr %ct_sns, align 16
  %port_id = getelementptr inbounds %struct.ct_sns_req, ptr %26, i32 0, i32 5, i32 0, i32 0, i32 1
  %arrayidx = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack = load i32, ptr %arrayidx, align 4
  %tmp.coerce.0.extract.shift = lshr i32 %.unpack, 8
  %tmp.coerce.0.extract.trunc = trunc i32 %tmp.coerce.0.extract.shift to i24
  %35 = ptrtoint ptr %port_id to i32
  call void @__asan_storeN_noabort(i32 %35, i32 3)
  store i24 %tmp.coerce.0.extract.trunc, ptr %port_id, align 1
  %36 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ms_iocb, align 8
  %38 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ms_iocb_dma, align 4
  %call8 = call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %37, i32 noundef %39, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8227, ptr noundef nonnull @.str.20, i32 noundef %call8) #12
  br label %cleanup

if.else:                                          ; preds = %for.body
  %call12 = call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %call, ptr noundef %33, ptr noundef nonnull @.str.21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.else16, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else16:                                        ; preds = %if.else
  %fabric_port_name = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv, i32 3
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %33, i32 0, i32 1
  %40 = ptrtoint ptr %rsp to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %rsp, align 4
  %42 = ptrtoint ptr %fabric_port_name to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %fabric_port_name, align 4
  %rsvd_1 = getelementptr inbounds %struct.anon.80, ptr %arrayidx, i32 0, i32 3
  %43 = ptrtoint ptr %rsvd_1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rsvd_1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp26.not = icmp eq i8 %44, 0
  br i1 %cmp26.not, label %for.cond, label %if.else16.cleanup_crit_edge

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.else16.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then11, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 258, %entry.cleanup_crit_edge ], [ %call8, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ], [ 258, %if.else.cleanup_crit_edge ], [ 0, %if.else16.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %arg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_gpsc(ptr noundef %vha, ptr noundef %list) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_type, align 4
  %and = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load volatile i32, ptr %flags, align 8
  %5 = and i32 %bf.load, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call i32 @qla2x00_mgmt_svr_login(ptr noundef %vha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %6 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ms_iocb, align 8
  %max_fibre_devices = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_fibre_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp100.not = icmp eq i16 %9, 0
  br i1 %cmp100.not, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %mgmt_svr_loop_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 19
  %10 = ptrtoint ptr %mgmt_svr_loop_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mgmt_svr_loop_id, align 2
  %ct_sns_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 80
  %12 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ct_sns_dma, align 4
  %entry_count.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %7, i32 0, i32 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %11) #12
  %nport_handle1.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %7, i32 0, i32 6
  %timeout.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %7, i32 0, i32 10
  %cmd_dsd_count.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %7, i32 0, i32 7
  %rsp_dsd_count.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %7, i32 0, i32 12
  %rsp_byte_count.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %7, i32 0, i32 14
  %cmd_byte_count.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %7, i32 0, i32 15
  %conv3.i = zext i32 %13 to i64
  %dsd.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %7, i32 0, i32 16
  %15 = tail call i64 @llvm.bswap.i64(i64 %conv3.i) #12
  %length.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %7, i32 0, i32 16, i32 0, i32 1
  %arrayidx9.i = getelementptr %struct.ct_entry_24xx, ptr %7, i32 0, i32 16, i32 1
  %length14.i = getelementptr %struct.ct_entry_24xx, ptr %7, i32 0, i32 16, i32 1, i32 1
  %vp_idx.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %vp_index.i = getelementptr inbounds %struct.ct_entry_24xx, ptr %7, i32 0, i32 8
  %control_requests.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58, i32 5
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  %fp_speed = getelementptr inbounds %struct.sw_info_t, ptr %list, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %if.end50
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %16 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max_fibre_devices, align 4
  %18 = zext i16 %17 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %18
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %21 = call ptr @memset(ptr %7, i32 0, i32 64)
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 41, ptr %7, align 4
  %23 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %entry_count.i, align 1
  %24 = ptrtoint ptr %nport_handle1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %14, ptr %nport_handle1.i, align 2
  %r_a_tov.i = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 68
  %25 = ptrtoint ptr %r_a_tov.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %r_a_tov.i, align 8
  %27 = udiv i16 %26, 10
  %28 = shl nuw nsw i16 %27, 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #12
  %30 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %timeout.i, align 4
  %31 = ptrtoint ptr %cmd_dsd_count.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 256, ptr %cmd_dsd_count.i, align 4
  %32 = ptrtoint ptr %rsp_dsd_count.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 256, ptr %rsp_dsd_count.i, align 4
  %33 = ptrtoint ptr %rsp_byte_count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 335544320, ptr %rsp_byte_count.i, align 4
  %34 = ptrtoint ptr %cmd_byte_count.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 402653184, ptr %cmd_byte_count.i, align 4
  %35 = ptrtoint ptr %dsd.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %15, ptr %dsd.i, align 1
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 402653184, ptr %length.i, align 4
  %37 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %15, ptr %arrayidx9.i, align 1
  %38 = ptrtoint ptr %length14.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 335544320, ptr %length14.i, align 4
  %39 = ptrtoint ptr %vp_idx.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vp_idx.i, align 8
  %conv15.i = trunc i16 %40 to i8
  %41 = ptrtoint ptr %vp_index.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv15.i, ptr %vp_index.i, align 2
  %42 = ptrtoint ptr %control_requests.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %control_requests.i, align 8
  %inc.i = add i32 %43, 1
  store i32 %inc.i, ptr %control_requests.i, align 8
  %44 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ct_sns, align 16
  %46 = call ptr @memset(ptr %45, i32 0, i32 8208)
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %45, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -6, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %45, i32 0, i32 3
  %49 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 295, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %45, i32 0, i32 2
  %51 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %max_rsp_size.i, align 2
  %52 = load ptr, ptr %ct_sns, align 16
  %req = getelementptr inbounds %struct.ct_sns_req, ptr %45, i32 0, i32 5
  %arrayidx = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv
  %fabric_port_name = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv, i32 3
  %53 = ptrtoint ptr %fabric_port_name to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %fabric_port_name, align 4
  %55 = ptrtoint ptr %req to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %req, align 4
  %56 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ms_iocb, align 8
  %58 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ms_iocb_dma, align 4
  %call15 = tail call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %57, i32 noundef %59, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8281, ptr noundef nonnull @.str.22, i32 noundef %call15) #12
  br label %if.end50

if.else:                                          ; preds = %for.body
  %call19 = tail call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %7, ptr noundef %52, ptr noundef nonnull @.str.23)
  %60 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %call19, label %if.else.if.end50_crit_edge [
    i32 0, label %if.else38
    i32 1, label %land.lhs.true
  ]

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

land.lhs.true:                                    ; preds = %if.else
  %reason_code = getelementptr inbounds %struct.ct_rsp_hdr, ptr %52, i32 0, i32 4
  %61 = ptrtoint ptr %reason_code to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %reason_code, align 1
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.204)
  switch i8 %62, label %land.lhs.true.if.end50_crit_edge [
    i8 1, label %land.lhs.true.if.then33_crit_edge
    i8 11, label %land.lhs.true.if.then33_crit_edge103
  ]

land.lhs.true.if.then33_crit_edge103:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

land.lhs.true.if.then33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then33:                                        ; preds = %land.lhs.true.if.then33_crit_edge, %land.lhs.true.if.then33_crit_edge103
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8282, ptr noundef nonnull @.str.24) #12
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load35 = load volatile i32, ptr %flags, align 8
  %bf.clear36 = and i32 %bf.load35, -1048577
  store volatile i32 %bf.clear36, ptr %flags, align 8
  br label %cleanup

if.else38:                                        ; preds = %if.else
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %52, i32 0, i32 1
  %speed = getelementptr inbounds %struct.anon.140, ptr %rsp, i32 0, i32 1
  %65 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %speed, align 2
  %67 = zext i16 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.205)
  switch i16 %66, label %sw.default.i [
    i16 -32768, label %if.else38.qla2x00_port_speed_capability.exit_crit_edge
    i16 16384, label %sw.bb1.i
    i16 8192, label %sw.bb2.i
    i16 4096, label %sw.bb3.i
    i16 2048, label %sw.bb4.i
    i16 1024, label %sw.bb5.i
    i16 256, label %sw.bb6.i
    i16 128, label %sw.bb7.i
  ]

if.else38.qla2x00_port_speed_capability.exit_crit_edge: ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb1.i:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb2.i:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb3.i:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb4.i:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb5.i:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb6.i:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb7.i:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.default.i:                                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

qla2x00_port_speed_capability.exit:               ; preds = %sw.default.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.else38.qla2x00_port_speed_capability.exit_crit_edge
  %retval.0.i = phi i16 [ -1, %sw.default.i ], [ 7, %sw.bb7.i ], [ 6, %sw.bb6.i ], [ 5, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 19, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.else38.qla2x00_port_speed_capability.exit_crit_edge ]
  %68 = ptrtoint ptr %fp_speed to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %retval.0.i, ptr %fp_speed, align 4
  %69 = ptrtoint ptr %rsp to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rsp, align 4
  %conv45 = zext i16 %70 to i32
  %71 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %speed, align 2
  %conv48 = zext i16 %72 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8283, ptr noundef nonnull @.str.25, ptr noundef %fabric_port_name, i32 noundef %conv45, i32 noundef %conv48) #12
  br label %if.end50

if.end50:                                         ; preds = %qla2x00_port_speed_capability.exit, %land.lhs.true.if.end50_crit_edge, %if.else.if.end50_crit_edge, %if.then18
  %rval.1 = phi i32 [ %call15, %if.then18 ], [ 0, %qla2x00_port_speed_capability.exit ], [ 258, %land.lhs.true.if.end50_crit_edge ], [ 258, %if.else.if.end50_crit_edge ]
  %rsvd_1 = getelementptr inbounds %struct.anon.80, ptr %arrayidx, i32 0, i32 3
  %73 = ptrtoint ptr %rsvd_1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rsvd_1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp54.not = icmp eq i8 %74, 0
  br i1 %cmp54.not, label %for.cond, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end50.cleanup_crit_edge, %if.then33, %for.cond.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 258, %entry.cleanup_crit_edge ], [ 258, %if.end.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ], [ 258, %if.then33 ], [ 0, %if.end6.cleanup_crit_edge ], [ %rval.1, %for.cond.cleanup_crit_edge ], [ %rval.1, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_gff_id(ptr noundef %vha, ptr nocapture noundef %list) local_unnamed_addr #3 align 64 {
entry:
  %arg = alloca %struct.ct_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %arg) #12
  %2 = getelementptr inbounds i8, ptr %arg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 40)
  %max_fibre_devices = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_fibre_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp94.not = icmp eq i16 %5, 0
  br i1 %cmp94.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %ms_iocb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 77
  %ct_sns_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 80
  %req_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 2
  %rsp_dma = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 3
  %req_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 4
  %rsp_size = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 5
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %arg, i32 0, i32 1
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %ct_sns = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 79
  %ms_iocb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 78
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv
  %fc4_type = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv, i32 5
  %6 = ptrtoint ptr %fc4_type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %fc4_type, align 2
  %7 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_type, align 4
  %and = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ms_iocb, align 8
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arg, align 4
  %12 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ct_sns_dma, align 4
  %14 = ptrtoint ptr %req_dma to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %req_dma, align 4
  %15 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %rsp_dma, align 4
  %16 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 20, ptr %req_size, align 4
  %17 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 144, ptr %rsp_size, align 4
  %18 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2044, ptr %nport_handle, align 4
  %19 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %isp_ops, align 4
  %prep_ms_iocb = getelementptr inbounds %struct.isp_operations, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %prep_ms_iocb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prep_ms_iocb, align 4
  %call = call ptr %22(ptr noundef %vha, ptr noundef nonnull %arg) #12
  %23 = ptrtoint ptr %ct_sns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ct_sns, align 16
  %25 = call ptr @memset(ptr %24, i32 0, i32 8208)
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %24, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %24, i32 0, i32 3
  %28 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 287, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %24, i32 0, i32 2
  %30 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 32, ptr %max_rsp_size.i, align 2
  %31 = load ptr, ptr %ct_sns, align 16
  %port_id = getelementptr inbounds %struct.ct_sns_req, ptr %24, i32 0, i32 5, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack = load i32, ptr %arrayidx, align 4
  %tmp.coerce.0.extract.shift = lshr i32 %.unpack, 8
  %tmp.coerce.0.extract.trunc = trunc i32 %tmp.coerce.0.extract.shift to i24
  %33 = ptrtoint ptr %port_id to i32
  call void @__asan_storeN_noabort(i32 %33, i32 3)
  store i24 %tmp.coerce.0.extract.trunc, ptr %port_id, align 1
  %34 = ptrtoint ptr %ms_iocb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ms_iocb, align 8
  %36 = ptrtoint ptr %ms_iocb_dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ms_iocb_dma, align 4
  %call10 = call i32 @qla2x00_issue_iocb(ptr noundef %vha, ptr noundef %35, i32 noundef %37, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8284, ptr noundef nonnull @.str.26, i32 noundef %call10) #12
  br label %if.end50

if.else:                                          ; preds = %if.end
  %call14 = call i32 @qla2x00_chk_ms_status(ptr noundef %vha, ptr noundef %call, ptr noundef %31, ptr noundef nonnull @.str.27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8285, ptr noundef nonnull @.str.28) #12
  br label %if.end50

if.else18:                                        ; preds = %if.else
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %31, i32 0, i32 1
  %arrayidx19 = getelementptr %struct.ct_sns_rsp, ptr %31, i32 0, i32 1, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx19, align 1
  %40 = and i8 %39, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool23.not = icmp eq i8 %40, 0
  br i1 %tobool23.not, label %if.else18.if.end31_crit_edge, label %if.then24

if.else18.if.end31_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then24:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %fc4_type to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %fc4_type, align 2
  %fc4_features30 = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv, i32 6
  %42 = ptrtoint ptr %fc4_features30 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %40, ptr %fc4_features30, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %if.else18.if.end31_crit_edge
  %arrayidx34 = getelementptr [128 x i8], ptr %rsp, i32 0, i32 23
  %43 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx34, align 1
  %45 = and i8 %44, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool38.not = icmp eq i8 %45, 0
  br i1 %tobool38.not, label %if.end31.if.end50_crit_edge, label %if.then39

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %fc4_type to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fc4_type, align 2
  %48 = or i8 %47, 2
  store i8 %48, ptr %fc4_type, align 2
  %fc4_features47 = getelementptr %struct.sw_info_t, ptr %list, i32 %indvars.iv, i32 6
  %49 = ptrtoint ptr %fc4_features47 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %45, ptr %fc4_features47, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then39, %if.end31.if.end50_crit_edge, %if.then17, %if.then13
  %rsvd_1 = getelementptr inbounds %struct.anon.80, ptr %arrayidx, i32 0, i32 3
  %50 = ptrtoint ptr %rsvd_1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rsvd_1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp55.not = icmp eq i8 %51, 0
  br i1 %cmp55.not, label %if.end50.for.inc_crit_edge, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %52 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %max_fibre_devices, align 4
  %54 = zext i16 %53 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %54
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end50.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %arg) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_post_gpsc_work(ptr noundef %vha, ptr noundef %fcport) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qla2x00_alloc_work(ptr noundef %vha, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %u = getelementptr inbounds %struct.qla_work_evt, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fcport, ptr %u, align 4
  %call2 = tail call i32 @qla2x00_post_work(ptr noundef %vha, ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 258, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_alloc_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_post_work(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_handle_gpsc_event(ptr noundef %vha, ptr nocapture noundef readonly %ea) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ea, align 4
  %port_name = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 5
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disc_state, align 8
  %fw_login_state = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 53
  %4 = ptrtoint ptr %fw_login_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_login_state, align 4
  %rc = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 4
  %6 = ptrtoint ptr %rc to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rc, align 4
  %conv = zext i16 %7 to i32
  %sp = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 1
  %8 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sp, align 4
  %gen2 = getelementptr inbounds %struct.srb, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %gen2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gen2, align 4
  %login_gen = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 56
  %12 = ptrtoint ptr %login_gen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %login_gen, align 8
  %rscn_gen = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 58
  %14 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rscn_gen, align 8
  %gen1 = getelementptr inbounds %struct.srb, ptr %9, i32 0, i32 17
  %16 = ptrtoint ptr %gen1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gen1, align 8
  %or = or i32 %17, %15
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %loop_id, align 4
  %conv5 = zext i16 %19 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8408, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.qla24xx_handle_gpsc_event, ptr noundef %port_name, i32 noundef %3, i32 noundef %5, i32 noundef %conv, i32 noundef %11, i32 noundef %13, i32 noundef %11, i32 noundef %or, i32 noundef %conv5) #12
  %20 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %disc_state, align 8
  %.off = add i32 %21, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %entry
  %22 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sp, align 4
  %gen214 = getelementptr inbounds %struct.srb, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %gen214 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gen214, align 4
  %26 = ptrtoint ptr %login_gen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %login_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp16.not = icmp eq i32 %25, %27
  br i1 %cmp16.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8403, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.qla24xx_handle_gpsc_event, ptr noundef %port_name) #12
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %gen122 = getelementptr inbounds %struct.srb, ptr %23, i32 0, i32 17
  %28 = ptrtoint ptr %gen122 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gen122, align 8
  %30 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rscn_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp24.not = icmp eq i32 %29, %31
  br i1 %cmp24.not, label %if.end28, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @qla_post_iidma_work(ptr noundef %vha, ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.else.cleanup_crit_edge, %if.then18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla_post_iidma_work(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_async_gpsc(ptr noundef %vha, ptr noundef %fcport) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags, align 8
  %1 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags1 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 35
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef %fcport, i32 noundef 3264)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 15, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 12
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.31, ptr %name, align 8
  %rscn_gen = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 58
  %6 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rscn_gen, align 8
  %gen1 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %gen1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %gen1, align 8
  %login_gen = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 56
  %9 = ptrtoint ptr %login_gen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %login_gen, align 8
  %gen2 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 18
  %11 = ptrtoint ptr %gen2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %gen2, align 4
  %call6 = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add = add i32 %call6, 2
  tail call void @qla2x00_init_timer(ptr noundef nonnull %call, i32 noundef %add) #12
  %ct_desc = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 49
  %12 = ptrtoint ptr %ct_desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ct_desc, align 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 8208)
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %13, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -6, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %13, i32 0, i32 3
  %17 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 295, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %13, i32 0, i32 2
  %19 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %max_rsp_size.i, align 2
  %req = getelementptr inbounds %struct.ct_sns_req, ptr %13, i32 0, i32 5
  %fabric_port_name = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 31
  %20 = ptrtoint ptr %fabric_port_name to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %fabric_port_name, align 1
  %22 = ptrtoint ptr %req to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %req, align 4
  %23 = load ptr, ptr %ct_desc, align 8
  %u = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22
  %req12 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %req12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %req12, align 8
  %ct_sns_dma = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 49, i32 1
  %25 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ct_sns_dma, align 4
  %req_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %req_dma to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %req_dma, align 8
  %28 = load ptr, ptr %ct_desc, align 8
  %rsp = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %rsp, align 4
  %30 = load i32, ptr %ct_sns_dma, align 4
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rsp_dma, align 4
  %req_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 24, ptr %req_size, align 8
  %rsp_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 20, ptr %rsp_size, align 4
  %mgmt_svr_loop_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 19
  %34 = ptrtoint ptr %mgmt_svr_loop_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mgmt_svr_loop_id, align 2
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %u, i32 0, i32 1
  %36 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %nport_handle, align 4
  %timeout = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 2
  %37 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout, align 8
  %done = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 24
  %38 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @qla24xx_async_gpsc_sp_done, ptr %done, align 4
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 8
  %port_name32 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 5
  %handle = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 9
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %handle, align 8
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 7
  %43 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %loop_id, align 4
  %conv = zext i16 %44 to i32
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 6
  %45 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %d_id, align 8
  %conv34 = zext i8 %46 to i32
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %47 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %area, align 1
  %conv36 = zext i8 %48 to i32
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %49 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %al_pa, align 2
  %conv38 = zext i8 %50 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8286, ptr noundef nonnull @.str.32, ptr noundef %40, ptr noundef %port_name32, i32 noundef %42, i32 noundef %conv, i32 noundef %conv34, i32 noundef %conv36, i32 noundef %conv38) #12
  %call39 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp.not = icmp eq i32 %call39, 0
  br i1 %cmp.not, label %if.end5.cleanup_crit_edge, label %done_free_sp

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

done_free_sp:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %free = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 25
  %51 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %free, align 8
  tail call void %52(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %done_free_sp, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 258, %lor.lhs.false.cleanup_crit_edge ], [ 258, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call39, %done_free_sp ], [ 258, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef %fcport, i32 noundef %flag) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %vref_count = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 60
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #12, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !437
  tail call void @arm_heavy_mb() #12
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load volatile i32, ptr %flags, align 8
  %2 = and i32 %bf.load, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #12, !srcloc !438
  %vref_waitq = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_qpair, align 4
  %ref_count.i = getelementptr inbounds %struct.qla_qpair, ptr %7, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #12, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !439
  tail call void @arm_heavy_mb() #12
  %delete_in_progress.i = getelementptr inbounds %struct.qla_qpair, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %delete_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %delete_in_progress.i, align 64
  %10 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i23.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #12, !srcloc !438
  br label %do.body16.critedge

if.end9.i:                                        ; preds = %if.end9
  %srb_mempool.i = getelementptr inbounds %struct.qla_qpair, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %srb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srb_mempool.i, align 8
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %13, i32 noundef %flag) #12
  %tobool10.not.i = icmp eq ptr %call.i, null
  br i1 %tobool10.not.i, label %if.else12.i, label %if.end12

if.else12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i24.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #12, !srcloc !438
  br label %do.body16.critedge

if.end12:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = call ptr @memset(ptr %call.i, i32 0, i32 424)
  %fcport1.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %fcport1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fcport, ptr %fcport1.i.i, align 4
  %iocbs.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 13
  %17 = ptrtoint ptr %iocbs.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %iocbs.i.i, align 4
  %vha2.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 7
  %qpair3.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 14
  %18 = ptrtoint ptr %qpair3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %qpair3.i.i, align 8
  %elem.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 16
  %19 = ptrtoint ptr %elem.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %elem.i.i, ptr %elem.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 16, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %elem.i.i, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %vha2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vha, ptr %vha2.i.i, align 8
  br label %cleanup

do.body16.critedge:                               ; preds = %if.else12.i, %if.then.i
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %vref_count, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count, ptr %vref_count, i32 1, ptr elementtype(i32) %vref_count) #12, !srcloc !438
  %vref_waitq18 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq18, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body16.critedge, %if.end12, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call.i, %if.end12 ], [ null, %do.body16.critedge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_init_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_async_timeout(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_async_iocb_timeout(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla24xx_async_gpsc_sp_done(ptr noundef %sp, i32 noundef %res) #3 align 64 {
entry:
  %ea = alloca %struct.event_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %fcport2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %4 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcport2, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ea) #12
  %ct_desc = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %ct_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ct_desc, align 8
  %name = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %port_name = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 8275, ptr noundef nonnull @.str.176, ptr noundef %9, i32 noundef %res, ptr noundef %port_name) #12
  %flags = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 35
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, -41
  store i32 %and, ptr %flags, align 8
  %12 = zext i32 %res to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %res, label %if.then5 [
    i32 256, label %entry.done_crit_edge
    i32 458752, label %entry.done_crit_edge52
    i32 0, label %if.else16
  ]

entry.done_crit_edge52:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then5:                                         ; preds = %entry
  %reason_code = getelementptr inbounds %struct.ct_rsp_hdr, ptr %7, i32 0, i32 4
  %13 = ptrtoint ptr %reason_code to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reason_code, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.207)
  switch i8 %14, label %if.then5.if.end25_crit_edge [
    i8 1, label %if.then5.if.then13_crit_edge
    i8 11, label %if.then5.if.then13_crit_edge53
  ]

if.then5.if.then13_crit_edge53:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then5.if.then13_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then5.if.end25_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then13:                                        ; preds = %if.then5.if.then13_crit_edge, %if.then5.if.then13_crit_edge53
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 8217, ptr noundef nonnull @.str.24) #12
  %flags14 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load volatile i32, ptr %flags14, align 8
  %bf.clear = and i32 %bf.load, -1048577
  store volatile i32 %bf.clear, ptr %flags14, align 8
  br label %done

if.else16:                                        ; preds = %entry
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %7, i32 0, i32 1
  %speed = getelementptr inbounds %struct.anon.140, ptr %rsp, i32 0, i32 1
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %speed, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.208)
  switch i16 %18, label %sw.default.i [
    i16 -32768, label %if.else16.qla2x00_port_speed_capability.exit_crit_edge
    i16 16384, label %sw.bb1.i
    i16 8192, label %sw.bb2.i
    i16 4096, label %sw.bb3.i
    i16 2048, label %sw.bb4.i
    i16 1024, label %sw.bb5.i
    i16 256, label %sw.bb6.i
    i16 128, label %sw.bb7.i
  ]

if.else16.qla2x00_port_speed_capability.exit_crit_edge: ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb1.i:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb2.i:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb3.i:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb4.i:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb5.i:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb6.i:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.bb7.i:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

sw.default.i:                                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_port_speed_capability.exit

qla2x00_port_speed_capability.exit:               ; preds = %sw.default.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.else16.qla2x00_port_speed_capability.exit_crit_edge
  %retval.0.i = phi i16 [ -1, %sw.default.i ], [ 7, %sw.bb7.i ], [ 6, %sw.bb6.i ], [ 5, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 19, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.else16.qla2x00_port_speed_capability.exit_crit_edge ]
  %fp_speed = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 32
  %20 = ptrtoint ptr %fp_speed to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %retval.0.i, ptr %fp_speed, align 4
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 8
  %fabric_port_name = getelementptr inbounds %struct.fc_port, ptr %5, i32 0, i32 31
  %23 = ptrtoint ptr %rsp to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rsp, align 4
  %conv20 = zext i16 %24 to i32
  %25 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %speed, align 2
  %conv23 = zext i16 %26 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 8276, ptr noundef nonnull @.str.177, ptr noundef %22, ptr noundef %fabric_port_name, i32 noundef %conv20, i32 noundef %conv23) #12
  br label %if.end25

if.end25:                                         ; preds = %qla2x00_port_speed_capability.exit, %if.then5.if.end25_crit_edge
  %27 = getelementptr inbounds i8, ptr %ea, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 28)
  %conv26 = trunc i32 %res to i16
  %rc = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 4
  %29 = ptrtoint ptr %rc to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv26, ptr %rc, align 4
  %30 = ptrtoint ptr %ea to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %5, ptr %ea, align 4
  %sp28 = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 1
  %31 = ptrtoint ptr %sp28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %sp, ptr %sp28, align 4
  call void @qla24xx_handle_gpsc_event(ptr noundef %1, ptr noundef nonnull %ea)
  br label %done

done:                                             ; preds = %if.end25, %if.then13, %entry.done_crit_edge, %entry.done_crit_edge52
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %32 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %free, align 8
  tail call void %33(ptr noundef %sp) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ea) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_start_sp(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_post_gpnid_work(ptr noundef %vha, ptr nocapture noundef readonly %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %0 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dpc_flags, align 4
  %2 = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %3 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vp_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool1.not = icmp eq i16 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr %struct.scsi_qla_host, ptr %vha, i32 0, i32 12
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call5 = tail call ptr @qla2x00_alloc_work(ptr noundef %vha, i32 noundef 7) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %u = getelementptr inbounds %struct.qla_work_evt, ptr %call5, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %u, align 4
  %call10 = tail call i32 @qla2x00_post_work(ptr noundef %vha, ptr noundef nonnull %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 258, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_sp_unmap(ptr noundef %vha, ptr noundef %sp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %1)
  %cond = icmp eq i16 %1, 13
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  tail call void @qla2x00_els_dcmd2_free(ptr noundef %vha, ptr noundef %u) #12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %req = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sw.default.if.end_crit_edge, label %if.then

sw.default.if.end_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %req_allocated_size = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %req_allocated_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %req_allocated_size, align 8
  %req_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %req_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull %3, i32 noundef %11, i32 noundef 0) #12
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %req, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default.if.end_crit_edge
  %rsp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rsp, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %if.end.sw.epilog_crit_edge, label %if.then18

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %hw19 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %15 = ptrtoint ptr %hw19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw19, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %rsp_allocated_size = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %rsp_allocated_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rsp_allocated_size, align 4
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rsp_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21, i32 noundef %20, ptr noundef nonnull %14, i32 noundef %22, i32 noundef 0) #12
  %23 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rsp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then18, %if.end.sw.epilog_crit_edge, %sw.bb
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %24 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %free, align 8
  tail call void %25(ptr noundef %sp) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_els_dcmd2_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_handle_gpnid_event(ptr noundef %vha, ptr noundef %ea) local_unnamed_addr #3 align 64 {
entry:
  %data = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #12
  %0 = getelementptr inbounds [2 x i16], ptr %data, i32 0, i32 1
  %id = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %id, align 4
  %bf.lshr = lshr i32 %bf.load, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.qla24xx_handle_gpnid_event, i32 noundef 3009, i32 noundef %bf.lshr) #12
  %rc = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 4
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %4 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp_fcports, align 8
  %cmp.not195 = icmp eq ptr %5, %vp_fcports
  br i1 %cmp.not195, label %if.then.if.end126_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end126_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end126

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then.for.body_crit_edge
  %fcport.0196 = phi ptr [ %t.0197, %if.end.for.body_crit_edge ], [ %5, %if.then.for.body_crit_edge ]
  %6 = ptrtoint ptr %fcport.0196 to i32
  call void @__asan_load4_noabort(i32 %6)
  %t.0197 = load ptr, ptr %fcport.0196, align 8
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport.0196, i32 0, i32 6
  %7 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load7 = load i32, ptr %d_id, align 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load10 = load i32, ptr %id, align 4
  %cmp12.unshifted = xor i32 %bf.load10, %bf.load7
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp12.unshifted)
  %cmp12 = icmp ult i32 %cmp12.unshifted, 256
  br i1 %cmp12, label %if.then13, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %scan_state = getelementptr inbounds %struct.fc_port, ptr %fcport.0196, i32 0, i32 42
  %9 = ptrtoint ptr %scan_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %scan_state, align 2
  br label %if.end

if.end:                                           ; preds = %if.then13, %for.body.if.end_crit_edge
  tail call void @qlt_schedule_sess_for_deletion(ptr noundef %fcport.0196) #12
  %cmp.not = icmp eq ptr %t.0197, %vp_fcports
  br i1 %cmp.not, label %if.end.if.end126_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.if.end126_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end126

if.else:                                          ; preds = %entry
  %port_name = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 5
  %call = tail call ptr @qla2x00_find_fcport_by_wwpn(ptr noundef %vha, ptr noundef %port_name, i8 noundef zeroext 1) #12
  %tobool19.not = icmp eq ptr %call, null
  %vp_fcports82 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %10 = ptrtoint ptr %vp_fcports82 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vp_fcports82, align 8
  %cmp94.not204 = icmp eq ptr %11, %vp_fcports82
  br i1 %tobool19.not, label %if.else80, label %if.then20

if.then20:                                        ; preds = %if.else
  br i1 %cmp94.not204, label %if.then20.for.end54_crit_edge, label %if.then20.for.body36_crit_edge

if.then20.for.body36_crit_edge:                   ; preds = %if.then20
  br label %for.body36

if.then20.for.end54_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end54

for.body36:                                       ; preds = %if.end47.for.body36_crit_edge, %if.then20.for.body36_crit_edge
  %conflict.0200 = phi ptr [ %t.1202, %if.end47.for.body36_crit_edge ], [ %11, %if.then20.for.body36_crit_edge ]
  %12 = ptrtoint ptr %conflict.0200 to i32
  call void @__asan_load4_noabort(i32 %12)
  %t.1202 = load ptr, ptr %conflict.0200, align 8
  %d_id37 = getelementptr inbounds %struct.fc_port, ptr %conflict.0200, i32 0, i32 6
  %13 = ptrtoint ptr %d_id37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load38 = load i32, ptr %d_id37, align 8
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load41 = load i32, ptr %id, align 4
  %cmp43.unshifted = xor i32 %bf.load41, %bf.load38
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %cmp43.unshifted)
  %cmp43 = icmp ugt i32 %cmp43.unshifted, 255
  %cmp44.not = icmp eq ptr %call, %conflict.0200
  %or.cond = select i1 %cmp43, i1 true, i1 %cmp44.not
  br i1 %or.cond, label %for.body36.if.end47_crit_edge, label %if.then45

for.body36.if.end47_crit_edge:                    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then45:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #14
  %scan_state46 = getelementptr inbounds %struct.fc_port, ptr %conflict.0200, i32 0, i32 42
  %15 = ptrtoint ptr %scan_state46 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %scan_state46, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.body36.if.end47_crit_edge
  tail call void @qlt_schedule_sess_for_deletion(ptr noundef %conflict.0200) #12
  %cmp34.not = icmp eq ptr %t.1202, %vp_fcports82
  br i1 %cmp34.not, label %if.end47.for.end54_crit_edge, label %if.end47.for.body36_crit_edge

if.end47.for.body36_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body36

if.end47.for.end54_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end54

for.end54:                                        ; preds = %if.end47.for.end54_crit_edge, %if.then20.for.end54_crit_edge
  %scan_needed = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %scan_needed to i32
  call void @__asan_loadN_noabort(i32 %16, i32 3)
  %bf.load55 = load i24, ptr %scan_needed, align 4
  %bf.clear = and i24 %bf.load55, -1025
  store i24 %bf.clear, ptr %scan_needed, align 4
  %rscn_gen = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 58
  %17 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rscn_gen, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %rscn_gen, align 8
  %scan_state56 = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 42
  %19 = ptrtoint ptr %scan_state56 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %scan_state56, align 2
  %flags = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 35
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %or = or i32 %21, 1
  store i32 %or, ptr %flags, align 8
  %login_retry = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 36
  %22 = ptrtoint ptr %login_retry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %login_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp57 = icmp eq i32 %23, 0
  br i1 %cmp57, label %if.then58, label %for.end54.if.end63_crit_edge

for.end54.if.end63_crit_edge:                     ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then58:                                        ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #14
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %login_retry_count = getelementptr inbounds %struct.qla_hw_data, ptr %25, i32 0, i32 76
  %26 = ptrtoint ptr %login_retry_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %login_retry_count, align 4
  %28 = ptrtoint ptr %login_retry to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %login_retry, align 4
  %port_name60 = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 5
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 7
  %29 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %loop_id, align 4
  %conv = zext i16 %30 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.34, ptr noundef %port_name60, i32 noundef %conv, i32 noundef %27) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %for.end54.if.end63_crit_edge
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 50
  %31 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %disc_state, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %32, label %sw.default [
    i32 7, label %sw.bb
    i32 0, label %sw.bb69
    i32 9, label %sw.bb75
  ]

sw.bb:                                            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %port_name64 = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8461, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.qla24xx_handle_gpnid_event, i32 noundef 3055, ptr noundef %port_name64) #12
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %0, align 2
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %data, align 2
  %call68 = call i32 @qla2x00_post_async_adisc_work(ptr noundef %vha, ptr noundef nonnull %call, ptr noundef nonnull %data) #12
  br label %if.end126

sw.bb69:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %port_name70 = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8461, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.qla24xx_handle_gpnid_event, i32 noundef 3062, ptr noundef %port_name70) #12
  %d_id72 = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 6
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 4
  %38 = ptrtoint ptr %d_id72 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %d_id72, align 8
  %call74 = tail call i32 @qla24xx_fcport_handle_login(ptr noundef %vha, ptr noundef nonnull %call) #12
  br label %if.end126

sw.bb75:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %d_id76 = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 6
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  %41 = ptrtoint ptr %d_id76 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %d_id76, align 8
  br label %if.end126

sw.default:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %d_id78 = getelementptr inbounds %struct.fc_port, ptr %call, i32 0, i32 6
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 4
  %44 = ptrtoint ptr %d_id78 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %d_id78, align 8
  br label %if.end126

if.else80:                                        ; preds = %if.else
  br i1 %cmp94.not204, label %if.else80.for.end118_crit_edge, label %if.else80.for.body97_crit_edge

if.else80.for.body97_crit_edge:                   ; preds = %if.else80
  br label %for.body97

if.else80.for.end118_crit_edge:                   ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end118

for.body97:                                       ; preds = %for.inc112.for.body97_crit_edge, %if.else80.for.body97_crit_edge
  %conflict.1205 = phi ptr [ %t.2206, %for.inc112.for.body97_crit_edge ], [ %11, %if.else80.for.body97_crit_edge ]
  %45 = ptrtoint ptr %conflict.1205 to i32
  call void @__asan_load4_noabort(i32 %45)
  %t.2206 = load ptr, ptr %conflict.1205, align 8
  %d_id98 = getelementptr inbounds %struct.fc_port, ptr %conflict.1205, i32 0, i32 6
  %46 = ptrtoint ptr %d_id98 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load99 = load i32, ptr %d_id98, align 8
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load102 = load i32, ptr %id, align 4
  %cmp104.unshifted = xor i32 %bf.load102, %bf.load99
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp104.unshifted)
  %cmp104 = icmp ult i32 %cmp104.unshifted, 256
  br i1 %cmp104, label %if.then106, label %for.body97.for.inc112_crit_edge

for.body97.for.inc112_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112

if.then106:                                       ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #14
  %port_name107 = getelementptr inbounds %struct.fc_port, ptr %conflict.1205, i32 0, i32 5
  %disc_state109 = getelementptr inbounds %struct.fc_port, ptr %conflict.1205, i32 0, i32 50
  %48 = ptrtoint ptr %disc_state109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %disc_state109, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.qla24xx_handle_gpnid_event, i32 noundef 3084, ptr noundef %port_name107, i32 noundef %49) #12
  %scan_state110 = getelementptr inbounds %struct.fc_port, ptr %conflict.1205, i32 0, i32 42
  %50 = ptrtoint ptr %scan_state110 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %scan_state110, align 2
  tail call void @qlt_schedule_sess_for_deletion(ptr noundef %conflict.1205) #12
  br label %for.inc112

for.inc112:                                       ; preds = %if.then106, %for.body97.for.inc112_crit_edge
  %cmp94.not = icmp eq ptr %t.2206, %vp_fcports82
  br i1 %cmp94.not, label %for.inc112.for.end118_crit_edge, label %for.inc112.for.body97_crit_edge

for.inc112.for.body97_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body97

for.inc112.for.end118_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end118

for.end118:                                       ; preds = %for.inc112.for.end118_crit_edge, %if.else80.for.end118_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8293, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.qla24xx_handle_gpnid_event, i32 noundef 3096, ptr noundef %port_name) #12
  %call124 = tail call i32 @qla24xx_post_newsess_work(ptr noundef %vha, ptr noundef %id, ptr noundef %port_name, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #12
  br label %if.end126

if.end126:                                        ; preds = %for.end118, %sw.default, %sw.bb75, %sw.bb69, %sw.bb, %if.end.if.end126_crit_edge, %if.then.if.end126_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_schedule_sess_for_deletion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_find_fcport_by_wwpn(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_post_async_adisc_work(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_fcport_handle_login(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_post_newsess_work(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_async_gpnid(ptr noundef %vha, ptr nocapture noundef readonly %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags1, align 8
  %1 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef null, i32 noundef 3264)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 15, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 12
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.39, ptr %name, align 8
  %u = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22
  %id6 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id6, align 8
  %gen1 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 17
  %7 = ptrtoint ptr %gen1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %gen1, align 8
  %call7 = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add = add i32 %call7, 2
  tail call void @qla2x00_init_timer(ptr noundef nonnull %call, i32 noundef %add) #12
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %sess_lock = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 281, i32 27
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sess_lock) #12
  %gpnid_list = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 80
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end4
  %.pn.in = phi ptr [ %gpnid_list, %if.end4 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp15.not = icmp eq ptr %.pn, %gpnid_list
  br i1 %cmp15.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %id19 = getelementptr i8, ptr %.pn, i32 72
  %11 = ptrtoint ptr %id19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load20 = load i32, ptr %id19, align 8
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load22 = load i32, ptr %id, align 4
  %cmp24.unshifted = xor i32 %bf.load22, %bf.load20
  %cmp24 = icmp ult i32 %cmp24.unshifted, 256
  br i1 %cmp24, label %if.then26, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %gen127 = getelementptr i8, ptr %.pn, i32 8
  %13 = ptrtoint ptr %gen127 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gen127, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %gen127, align 8
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %sess_lock30 = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 281, i32 27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sess_lock30, i32 noundef %call10) #12
  %free = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 25
  %17 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %free, align 8
  tail call void %18(ptr noundef %call) #12
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %elem37 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 80, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %elem37, ptr noundef %20, ptr noundef %gpnid_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %elem37, ptr %prev.i, align 4
  %22 = ptrtoint ptr %elem37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %gpnid_list, ptr %elem37, align 4
  %prev3.i.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 16, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %elem37, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %sess_lock41 = getelementptr inbounds %struct.qla_hw_data, ptr %26, i32 0, i32 281, i32 27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sess_lock41, i32 noundef %call10) #12
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %req_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8208, ptr noundef %req_dma, i32 noundef 3264, i32 noundef 0) #12
  %req = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %req, align 8
  %req_allocated_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %req_allocated_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8208, ptr %req_allocated_size, align 8
  %tobool53.not = icmp eq ptr %call.i, null
  br i1 %tobool53.not, label %list_add_tail.exit.do.body98.sink.split_crit_edge, label %if.end55

list_add_tail.exit.do.body98.sink.split_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body98.sink.split

if.end55:                                         ; preds = %list_add_tail.exit
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 128
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %call.i224 = tail call ptr @dma_alloc_attrs(ptr noundef %dev58, i32 noundef 8208, ptr noundef %rsp_dma, i32 noundef 3264, i32 noundef 0) #12
  %rsp = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i224, ptr %rsp, align 4
  %rsp_allocated_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %38 = ptrtoint ptr %rsp_allocated_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8208, ptr %rsp_allocated_size, align 4
  %tobool69.not = icmp eq ptr %call.i224, null
  br i1 %tobool69.not, label %if.end55.do.body98.sink.split_crit_edge, label %if.end71

if.end55.do.body98.sink.split_crit_edge:          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body98.sink.split

if.end71:                                         ; preds = %if.end55
  %39 = call ptr @memset(ptr %call.i224, i32 0, i32 8208)
  %40 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %req, align 8
  %42 = call ptr @memset(ptr %41, i32 0, i32 8208)
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %41, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %41, i32 0, i32 2
  %44 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %41, i32 0, i32 3
  %45 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 274, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %41, i32 0, i32 2
  %47 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 2, ptr %max_rsp_size.i, align 2
  %port_id = getelementptr inbounds %struct.ct_sns_req, ptr %41, i32 0, i32 5, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack = load i32, ptr %id, align 4
  %tmp.coerce.0.extract.shift = lshr i32 %.unpack, 8
  %tmp.coerce.0.extract.trunc = trunc i32 %tmp.coerce.0.extract.shift to i24
  %49 = ptrtoint ptr %port_id to i32
  call void @__asan_storeN_noabort(i32 %49, i32 3)
  store i24 %tmp.coerce.0.extract.trunc, ptr %port_id, align 1
  %req_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %50 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 20, ptr %req_size, align 8
  %rsp_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 24, ptr %rsp_size, align 4
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %u, i32 0, i32 1
  %52 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 2044, ptr %nport_handle, align 4
  %timeout = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 2
  %53 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout, align 8
  %done = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 24
  %54 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @qla2x00_async_gpnid_sp_done, ptr %done, align 4
  %55 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 9
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8295, ptr noundef nonnull @.str.41, ptr noundef %56, i32 noundef %58, ptr noundef %port_id) #12
  %call92 = tail call i32 @qla2x00_start_sp(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93.not = icmp eq i32 %call92, 0
  br i1 %cmp93.not, label %if.end71.cleanup_crit_edge, label %if.end71.do.body98_crit_edge

if.end71.do.body98_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body98

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body98.sink.split:                             ; preds = %if.end55.do.body98.sink.split_crit_edge, %list_add_tail.exit.do.body98.sink.split_crit_edge
  %.sink = phi i32 [ 53313, %list_add_tail.exit.do.body98.sink.split_crit_edge ], [ 53314, %if.end55.do.body98.sink.split_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef %.sink, ptr noundef nonnull @.str.40) #12
  br label %do.body98

do.body98:                                        ; preds = %do.body98.sink.split, %if.end71.do.body98_crit_edge
  %rval.0 = phi i32 [ %call92, %if.end71.do.body98_crit_edge ], [ 258, %do.body98.sink.split ]
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %vport_slock = getelementptr inbounds %struct.qla_hw_data, ptr %60, i32 0, i32 126
  %call106 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_slock) #12
  %call.i.i225 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %elem37) #12
  br i1 %call.i.i225, label %if.end.i.i226, label %do.body98.list_del.exit_crit_edge

do.body98.list_del.exit_crit_edge:                ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i226:                                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 16, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %elem37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %elem37, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i226, %do.body98.list_del.exit_crit_edge
  %67 = ptrtoint ptr %elem37 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 256 to ptr), ptr %elem37, align 4
  %prev.i227 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 16, i32 1
  %68 = ptrtoint ptr %prev.i227 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i227, align 4
  %69 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw, align 4
  %vport_slock113 = getelementptr inbounds %struct.qla_hw_data, ptr %70, i32 0, i32 126
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock113, i32 noundef %call106) #12
  %71 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %req, align 8
  %tobool117.not = icmp eq ptr %72, null
  br i1 %tobool117.not, label %list_del.exit.if.end131_crit_edge, label %if.then118

list_del.exit.if.end131_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then118:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 128
  %dev121 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %77 = ptrtoint ptr %req_dma to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %req_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev121, i32 noundef 8208, ptr noundef nonnull %72, i32 noundef %78, i32 noundef 0) #12
  %79 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %req, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then118, %list_del.exit.if.end131_crit_edge
  %rsp134 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %80 = ptrtoint ptr %rsp134 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rsp134, align 4
  %tobool135.not = icmp eq ptr %81, null
  br i1 %tobool135.not, label %if.end131.if.end149_crit_edge, label %if.then136

if.end131.if.end149_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then136:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 128
  %dev139 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %rsp_dma145 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %86 = ptrtoint ptr %rsp_dma145 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rsp_dma145, align 4
  tail call void @dma_free_attrs(ptr noundef %dev139, i32 noundef 8208, ptr noundef nonnull %81, i32 noundef %87, i32 noundef 0) #12
  %88 = ptrtoint ptr %rsp134 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %rsp134, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then136, %if.end131.if.end149_crit_edge
  %free150 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 25
  %89 = ptrtoint ptr %free150 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %free150, align 8
  tail call void %90(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end149, %if.end71.cleanup_crit_edge, %if.then26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71.cleanup_crit_edge ], [ 258, %if.then26 ], [ %rval.0, %if.end149 ], [ 258, %if.end.cleanup_crit_edge ], [ 258, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_async_gpnid_sp_done(ptr noundef %sp, i32 noundef %res) #3 align 64 {
entry:
  %ea = alloca %struct.event_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %req = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %rsp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsp, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ea) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res)
  %tobool.not = icmp eq i32 %res, 0
  %name7 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %6 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name7, align 8
  %gen18 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 17
  %8 = ptrtoint ptr %gen18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gen18, align 8
  %port_id10 = getelementptr inbounds %struct.ct_sns_req, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 1
  %rsp11 = getelementptr inbounds %struct.ct_sns_rsp, ptr %5, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 8294, ptr noundef nonnull @.str.178, ptr noundef %7, i32 noundef %res, i32 noundef %9, ptr noundef %port_id10, ptr noundef %rsp11) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 8294, ptr noundef nonnull @.str.179, ptr noundef %7, i32 noundef %9, ptr noundef %port_id10, ptr noundef %rsp11) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = call ptr @memset(ptr %ea, i32 0, i32 36)
  %port_name14 = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 5
  %rsp16 = getelementptr inbounds %struct.ct_sns_rsp, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %rsp16 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %rsp16, align 4
  %13 = ptrtoint ptr %port_name14 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %port_name14, align 2
  %sp19 = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 1
  %14 = ptrtoint ptr %sp19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sp, ptr %sp19, align 4
  %id = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 2
  %port_id21 = getelementptr inbounds %struct.ct_sns_req, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %port_id21 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 3)
  %port_id21.coerce.sroa.0.0.copyload = load i24, ptr %port_id21, align 1
  %port_id21.coerce.sroa.0.0.insert.ext = zext i24 %port_id21.coerce.sroa.0.0.copyload to i32
  %port_id21.coerce.sroa.0.0.insert.shift = shl nuw i32 %port_id21.coerce.sroa.0.0.insert.ext, 8
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %port_id21.coerce.sroa.0.0.insert.shift, ptr %id, align 4
  %conv = trunc i32 %res to i16
  %rc = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 4
  %17 = ptrtoint ptr %rc to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %rc, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %sess_lock = getelementptr inbounds %struct.qla_hw_data, ptr %19, i32 0, i32 281, i32 27
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sess_lock) #12
  %elem = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %elem) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 16, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %elem, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %26 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %elem, align 4
  %prev.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 16, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %sess_lock31 = getelementptr inbounds %struct.qla_hw_data, ptr %29, i32 0, i32 281, i32 27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sess_lock31, i32 noundef %call26) #12
  br i1 %tobool.not, label %if.else41, label %if.then33

if.then33:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %res)
  %cmp34 = icmp eq i32 %res, 256
  br i1 %cmp34, label %if.then36, label %if.then33.if.end50_crit_edge

if.then33.if.end50_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then36:                                        ; preds = %if.then33
  %30 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vha1, align 8
  %dpc_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %dpc_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %dpc_flags.i, align 4
  %34 = and i32 %33, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then36.qla24xx_post_gpnid_work.exit_crit_edge

if.then36.qla24xx_post_gpnid_work.exit_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_post_gpnid_work.exit

lor.lhs.false.i:                                  ; preds = %if.then36
  %vp_idx.i = getelementptr inbounds %struct.scsi_qla_host, ptr %31, i32 0, i32 46
  %35 = ptrtoint ptr %vp_idx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vp_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool1.not.i = icmp eq i16 %36, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %arrayidx.i.i = getelementptr %struct.scsi_qla_host, ptr %31, i32 0, i32 12
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i.i, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.i = icmp eq i32 %39, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.qla24xx_post_gpnid_work.exit_crit_edge

land.lhs.true.i.qla24xx_post_gpnid_work.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_post_gpnid_work.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %call5.i = tail call ptr @qla2x00_alloc_work(ptr noundef %31, i32 noundef 7) #12
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i.qla24xx_post_gpnid_work.exit_crit_edge, label %if.end8.i

if.end.i.qla24xx_post_gpnid_work.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_post_gpnid_work.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %u.i = getelementptr inbounds %struct.qla_work_evt, ptr %call5.i, i32 0, i32 3
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  %42 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %u.i, align 4
  %call10.i = tail call i32 @qla2x00_post_work(ptr noundef %31, ptr noundef nonnull %call5.i) #12
  br label %qla24xx_post_gpnid_work.exit

qla24xx_post_gpnid_work.exit:                     ; preds = %if.end8.i, %if.end.i.qla24xx_post_gpnid_work.exit_crit_edge, %land.lhs.true.i.qla24xx_post_gpnid_work.exit_crit_edge, %if.then36.qla24xx_post_gpnid_work.exit_crit_edge
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %43 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %free, align 8
  tail call void %44(ptr noundef %sp) #12
  br label %cleanup

if.else41:                                        ; preds = %list_del.exit
  %gen142 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 17
  %45 = ptrtoint ptr %gen142 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gen142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool43.not = icmp eq i32 %46, 0
  br i1 %tobool43.not, label %if.else41.if.end50_crit_edge, label %if.then44

if.else41.if.end50_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then44:                                        ; preds = %if.else41
  %47 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vha1, align 8
  %dpc_flags.i132 = getelementptr inbounds %struct.scsi_qla_host, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %dpc_flags.i132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %dpc_flags.i132, align 4
  %51 = and i32 %50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i133 = icmp eq i32 %51, 0
  br i1 %tobool.not.i133, label %lor.lhs.false.i136, label %if.then44.qla24xx_post_gpnid_work.exit147_crit_edge

if.then44.qla24xx_post_gpnid_work.exit147_crit_edge: ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_post_gpnid_work.exit147

lor.lhs.false.i136:                               ; preds = %if.then44
  %vp_idx.i134 = getelementptr inbounds %struct.scsi_qla_host, ptr %48, i32 0, i32 46
  %52 = ptrtoint ptr %vp_idx.i134 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vp_idx.i134, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool1.not.i135 = icmp eq i16 %53, 0
  br i1 %tobool1.not.i135, label %lor.lhs.false.i136.if.end.i142_crit_edge, label %land.lhs.true.i139

lor.lhs.false.i136.if.end.i142_crit_edge:         ; preds = %lor.lhs.false.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i142

land.lhs.true.i139:                               ; preds = %lor.lhs.false.i136
  %arrayidx.i.i137 = getelementptr %struct.scsi_qla_host, ptr %48, i32 0, i32 12
  %54 = ptrtoint ptr %arrayidx.i.i137 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i.i137, align 4
  %56 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool4.not.i138 = icmp eq i32 %56, 0
  br i1 %tobool4.not.i138, label %land.lhs.true.i139.if.end.i142_crit_edge, label %land.lhs.true.i139.qla24xx_post_gpnid_work.exit147_crit_edge

land.lhs.true.i139.qla24xx_post_gpnid_work.exit147_crit_edge: ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_post_gpnid_work.exit147

land.lhs.true.i139.if.end.i142_crit_edge:         ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i142

if.end.i142:                                      ; preds = %land.lhs.true.i139.if.end.i142_crit_edge, %lor.lhs.false.i136.if.end.i142_crit_edge
  %call5.i140 = tail call ptr @qla2x00_alloc_work(ptr noundef %48, i32 noundef 7) #12
  %tobool6.not.i141 = icmp eq ptr %call5.i140, null
  br i1 %tobool6.not.i141, label %if.end.i142.qla24xx_post_gpnid_work.exit147_crit_edge, label %if.end8.i145

if.end.i142.qla24xx_post_gpnid_work.exit147_crit_edge: ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_post_gpnid_work.exit147

if.end8.i145:                                     ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #14
  %u.i143 = getelementptr inbounds %struct.qla_work_evt, ptr %call5.i140, i32 0, i32 3
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id, align 4
  %59 = ptrtoint ptr %u.i143 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %u.i143, align 4
  %call10.i144 = tail call i32 @qla2x00_post_work(ptr noundef %48, ptr noundef nonnull %call5.i140) #12
  br label %qla24xx_post_gpnid_work.exit147

qla24xx_post_gpnid_work.exit147:                  ; preds = %if.end8.i145, %if.end.i142.qla24xx_post_gpnid_work.exit147_crit_edge, %land.lhs.true.i139.qla24xx_post_gpnid_work.exit147_crit_edge, %if.then44.qla24xx_post_gpnid_work.exit147_crit_edge
  %free48 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %60 = ptrtoint ptr %free48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %free48, align 8
  tail call void %61(ptr noundef %sp) #12
  br label %cleanup

if.end50:                                         ; preds = %if.else41.if.end50_crit_edge, %if.then33.if.end50_crit_edge
  call void @qla24xx_handle_gpnid_event(ptr noundef %1, ptr noundef nonnull %ea)
  %call51 = call ptr @qla2x00_alloc_work(ptr noundef %1, i32 noundef 8) #12
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.then53, label %if.end79

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %req_allocated_size = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %req_allocated_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %req_allocated_size, align 8
  %68 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %req, align 8
  %req_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %70 = ptrtoint ptr %req_dma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %req_dma, align 8
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %67, ptr noundef %69, i32 noundef %71, i32 noundef 0) #12
  %72 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %req, align 8
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 128
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %rsp_allocated_size = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %77 = ptrtoint ptr %rsp_allocated_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rsp_allocated_size, align 4
  %79 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rsp, align 4
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %81 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rsp_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev67, i32 noundef %78, ptr noundef %80, i32 noundef %82, i32 noundef 0) #12
  %83 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %rsp, align 4
  %free78 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %84 = ptrtoint ptr %free78 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %free78, align 8
  call void %85(ptr noundef %sp) #12
  br label %cleanup

if.end79:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %u80 = getelementptr inbounds %struct.qla_work_evt, ptr %call51, i32 0, i32 3
  %86 = ptrtoint ptr %u80 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %sp, ptr %u80, align 4
  %call82 = call i32 @qla2x00_post_work(ptr noundef %1, ptr noundef nonnull %call51) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then53, %qla24xx_post_gpnid_work.exit147, %qla24xx_post_gpnid_work.exit
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ea) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_handle_gffid_event(ptr noundef %vha, ptr nocapture noundef readonly %ea) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ea, align 4
  %call = tail call i32 @qla24xx_post_gnl_work(ptr noundef %vha, ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_post_gnl_work(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_async_gffid_sp_done(ptr noundef %sp, i32 noundef %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %fcport2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %2 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport2, align 4
  %name = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %d_id = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %d_id, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %port_name = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 8499, ptr noundef nonnull @.str.42, ptr noundef %5, i32 noundef %res, i32 noundef %bf.lshr, ptr noundef %port_name) #12
  %flags = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 35
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, -9
  store i32 %and, ptr %flags, align 8
  %ct_desc = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 49
  %9 = ptrtoint ptr %ct_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ct_desc, align 8
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %10, i32 0, i32 1
  %arrayidx5 = getelementptr [128 x i8], ptr %rsp, i32 0, i32 23
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res)
  %tobool.not = icmp eq i32 %res, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.ct_sns_rsp, ptr %10, i32 0, i32 1, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = and i8 %14, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %fc4_type = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 40
  %16 = ptrtoint ptr %fc4_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %fc4_type, align 4
  %fc4_features12 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 41
  %17 = ptrtoint ptr %fc4_features12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %15, ptr %fc4_features12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %18 = and i8 %12, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %if.end.if.end25_crit_edge, label %if.then16

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fc4_type17 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 40
  %19 = ptrtoint ptr %fc4_type17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fc4_type17, align 4
  %21 = or i8 %20, 2
  store i8 %21, ptr %fc4_type17, align 4
  %fc4_features23 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 41
  %22 = ptrtoint ptr %fc4_features23 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %18, ptr %fc4_features23, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %if.end.if.end25_crit_edge, %entry.if.end25_crit_edge
  %23 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fcport2, align 4
  %call.i = tail call i32 @qla24xx_post_gnl_work(ptr noundef %1, ptr noundef %24) #12
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %25 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %free, align 8
  tail call void %26(ptr noundef %sp) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_async_gffid(ptr noundef %vha, ptr noundef %fcport) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags, align 8
  %1 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags1 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 35
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef %fcport, i32 noundef 3264)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1, align 8
  %or = or i32 %5, 8
  store i32 %or, ptr %flags1, align 8
  %type = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 15, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 12
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.43, ptr %name, align 8
  %rscn_gen = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 58
  %8 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rscn_gen, align 8
  %gen1 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 17
  %10 = ptrtoint ptr %gen1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %gen1, align 8
  %login_gen = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 56
  %11 = ptrtoint ptr %login_gen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %login_gen, align 8
  %gen2 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 18
  %13 = ptrtoint ptr %gen2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %gen2, align 4
  %u = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22
  %timeout = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 2
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout, align 8
  %call7 = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add = add i32 %call7, 2
  tail call void @qla2x00_init_timer(ptr noundef nonnull %call, i32 noundef %add) #12
  %ct_desc = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 49
  %15 = ptrtoint ptr %ct_desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ct_desc, align 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 8208)
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %16, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %16, i32 0, i32 3
  %20 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 287, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %16, i32 0, i32 2
  %22 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 32, ptr %max_rsp_size.i, align 2
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 6
  %23 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %d_id, align 8
  %port_id = getelementptr inbounds %struct.ct_sns_req, ptr %16, i32 0, i32 5, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %port_id, align 1
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %26 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %area, align 1
  %arrayidx12 = getelementptr %struct.ct_sns_req, ptr %16, i32 0, i32 5, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx12, align 1
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %29 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %al_pa, align 2
  %arrayidx16 = getelementptr %struct.ct_sns_req, ptr %16, i32 0, i32 5, i32 0, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx16, align 1
  %32 = load ptr, ptr %ct_desc, align 8
  %req21 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %req21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %req21, align 8
  %ct_sns_dma = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 49, i32 1
  %34 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ct_sns_dma, align 4
  %req_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %req_dma to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %req_dma, align 8
  %37 = load ptr, ptr %ct_desc, align 8
  %rsp = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %rsp, align 4
  %39 = load i32, ptr %ct_sns_dma, align 4
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rsp_dma, align 4
  %req_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 20, ptr %req_size, align 8
  %rsp_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 144, ptr %rsp_size, align 4
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %u, i32 0, i32 1
  %43 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2044, ptr %nport_handle, align 4
  %done = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 24
  %44 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @qla24xx_async_gffid_sp_done, ptr %done, align 4
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 9
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 8
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8498, ptr noundef nonnull @.str.44, ptr noundef %46, i32 noundef %48, ptr noundef %port_name) #12
  %call40 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp.not = icmp eq i32 %call40, 0
  br i1 %cmp.not, label %if.end5.cleanup_crit_edge, label %done_free_sp

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

done_free_sp:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %free = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 25
  %49 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %free, align 8
  tail call void %50(ptr noundef nonnull %call) #12
  %51 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags1, align 8
  %and44 = and i32 %52, -9
  store i32 %and44, ptr %flags1, align 8
  br label %cleanup

cleanup:                                          ; preds = %done_free_sp, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %done_free_sp ], [ 258, %lor.lhs.false.cleanup_crit_edge ], [ 258, %entry.cleanup_crit_edge ], [ 258, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_async_gnnft_done(ptr noundef %vha, ptr noundef %sp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268468224, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.qla24xx_async_gnnft_done) #12
  %gen1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 17
  %0 = ptrtoint ptr %gen1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gen1, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_qpair, align 4
  %chip_reset = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %chip_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_reset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp.not = icmp eq i32 %1, %7
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.46, ptr noundef %9, i32 noundef %1, i32 noundef %7) #12
  %type.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %11)
  %cond.i = icmp eq i16 %11, 13
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %u.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  tail call void @qla2x00_els_dcmd2_free(ptr noundef %vha, ptr noundef %u.i) #12
  br label %qla24xx_sp_unmap.exit

sw.default.i:                                     ; preds = %if.then
  %req.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %sw.default.i.if.end.i_crit_edge, label %if.then.i

sw.default.i.if.end.i_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %req_allocated_size.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %req_allocated_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req_allocated_size.i, align 8
  %req_dma.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %req_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %19, ptr noundef nonnull %13, i32 noundef %21, i32 noundef 0) #12
  %22 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %req.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.default.i.if.end.i_crit_edge
  %rsp.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rsp.i, align 4
  %tobool17.not.i = icmp eq ptr %24, null
  br i1 %tobool17.not.i, label %if.end.i.qla24xx_sp_unmap.exit_crit_edge, label %if.then18.i

if.end.i.qla24xx_sp_unmap.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_sp_unmap.exit

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 128
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %rsp_allocated_size.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %rsp_allocated_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rsp_allocated_size.i, align 4
  %rsp_dma.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %rsp_dma.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rsp_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21.i, i32 noundef %30, ptr noundef nonnull %24, i32 noundef %32, i32 noundef 0) #12
  %33 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rsp.i, align 4
  br label %qla24xx_sp_unmap.exit

qla24xx_sp_unmap.exit:                            ; preds = %if.then18.i, %if.end.i.qla24xx_sp_unmap.exit_crit_edge, %sw.bb.i
  %free.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %34 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %free.i, align 8
  tail call void %35(ptr noundef %sp) #12
  %work_lock.c533 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 3
  %call362.c535 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock.c533) #12
  %scan_flags.c536 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 3
  %36 = ptrtoint ptr %scan_flags.c536 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scan_flags.c536, align 4
  %and366.c537 = and i32 %37, -2
  store i32 %and366.c537, ptr %scan_flags.c536, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock.c533, i32 noundef %call362.c535) #12
  br label %if.end399

if.end:                                           ; preds = %entry
  %rc5 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 19
  %38 = ptrtoint ptr %rc5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rc5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %if.end39, label %if.then6

if.then6:                                         ; preds = %if.end
  %scan_retry = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 2
  %40 = ptrtoint ptr %scan_retry to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %scan_retry, align 4
  %inc = add i16 %41, 1
  store i16 %inc, ptr %scan_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %inc)
  %cmp9 = icmp ult i16 %inc, 5
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then6
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dpc_flags) #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags) #12
  %type.i538 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %42 = ptrtoint ptr %type.i538 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %type.i538, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %43)
  %cond.i539 = icmp eq i16 %43, 13
  br i1 %cond.i539, label %sw.bb.i541, label %sw.default.i544

sw.bb.i541:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %u.i540 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  tail call void @qla2x00_els_dcmd2_free(ptr noundef %vha, ptr noundef %u.i540) #12
  br label %qla24xx_sp_unmap.exit559

sw.default.i544:                                  ; preds = %if.then11
  %req.i542 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %req.i542 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %req.i542, align 8
  %tobool.not.i543 = icmp eq ptr %45, null
  br i1 %tobool.not.i543, label %sw.default.i544.if.end.i552_crit_edge, label %if.then.i549

sw.default.i544.if.end.i552_crit_edge:            ; preds = %sw.default.i544
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i552

if.then.i549:                                     ; preds = %sw.default.i544
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 128
  %dev.i546 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %req_allocated_size.i547 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %req_allocated_size.i547 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %req_allocated_size.i547, align 8
  %req_dma.i548 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %52 = ptrtoint ptr %req_dma.i548 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %req_dma.i548, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i546, i32 noundef %51, ptr noundef nonnull %45, i32 noundef %53, i32 noundef 0) #12
  %54 = ptrtoint ptr %req.i542 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %req.i542, align 8
  br label %if.end.i552

if.end.i552:                                      ; preds = %if.then.i549, %sw.default.i544.if.end.i552_crit_edge
  %rsp.i550 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %55 = ptrtoint ptr %rsp.i550 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rsp.i550, align 4
  %tobool17.not.i551 = icmp eq ptr %56, null
  br i1 %tobool17.not.i551, label %if.end.i552.qla24xx_sp_unmap.exit559_crit_edge, label %if.then18.i557

if.end.i552.qla24xx_sp_unmap.exit559_crit_edge:   ; preds = %if.end.i552
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_sp_unmap.exit559

if.then18.i557:                                   ; preds = %if.end.i552
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 128
  %dev21.i554 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %rsp_allocated_size.i555 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %61 = ptrtoint ptr %rsp_allocated_size.i555 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rsp_allocated_size.i555, align 4
  %rsp_dma.i556 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %63 = ptrtoint ptr %rsp_dma.i556 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rsp_dma.i556, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21.i554, i32 noundef %62, ptr noundef nonnull %56, i32 noundef %64, i32 noundef 0) #12
  %65 = ptrtoint ptr %rsp.i550 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %rsp.i550, align 4
  br label %qla24xx_sp_unmap.exit559

qla24xx_sp_unmap.exit559:                         ; preds = %if.then18.i557, %if.end.i552.qla24xx_sp_unmap.exit559_crit_edge, %sw.bb.i541
  %free.i558 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %66 = ptrtoint ptr %free.i558 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %free.i558, align 8
  tail call void %67(ptr noundef %sp) #12
  %work_lock.c = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 3
  %call362.c = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock.c) #12
  %scan_flags.c = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 3
  %68 = ptrtoint ptr %scan_flags.c to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %scan_flags.c, align 4
  %and366.c = and i32 %69, -2
  store i32 %and366.c, ptr %scan_flags.c, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock.c, i32 noundef %call362.c) #12
  br label %if.end399

if.else:                                          ; preds = %if.then6
  %conv = zext i16 %inc to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.qla24xx_async_gnnft_done, i32 noundef %conv) #12
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %70 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %70)
  %fcport.0591 = load ptr, ptr %vp_fcports, align 8
  %cmp17.not592 = icmp eq ptr %fcport.0591, %vp_fcports
  br i1 %cmp17.not592, label %if.else.login_logout_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.login_logout_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %login_logout

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %fcport.0593 = phi ptr [ %fcport.0, %for.inc.for.body_crit_edge ], [ %fcport.0591, %if.else.for.body_crit_edge ]
  %flags19 = getelementptr inbounds %struct.fc_port, ptr %fcport.0593, i32 0, i32 35
  %71 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags19, align 8
  %and = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp20.not = icmp eq i32 %and, 0
  br i1 %cmp20.not, label %for.body.for.inc_crit_edge, label %if.then22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %scan_state = getelementptr inbounds %struct.fc_port, ptr %fcport.0593, i32 0, i32 42
  %73 = ptrtoint ptr %scan_state to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %scan_state, align 2
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %fcport.0593, i32 0, i32 7
  %74 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %loop_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %75)
  %cmp24 = icmp eq i16 %75, 4096
  %logout_on_delete = getelementptr inbounds %struct.fc_port, ptr %fcport.0593, i32 0, i32 2
  %76 = ptrtoint ptr %logout_on_delete to i32
  call void @__asan_loadN_noabort(i32 %76, i32 3)
  %bf.load = load i24, ptr %logout_on_delete, align 4
  %bf.clear = and i24 %bf.load, -262145
  %masksel = select i1 %cmp24, i24 0, i24 262144
  %bf.set31.sink = or i24 %bf.clear, %masksel
  store i24 %bf.set31.sink, ptr %logout_on_delete, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body.for.inc_crit_edge
  %77 = ptrtoint ptr %fcport.0593 to i32
  call void @__asan_load4_noabort(i32 %77)
  %fcport.0 = load ptr, ptr %fcport.0593, align 8
  %cmp17.not = icmp eq ptr %fcport.0, %vp_fcports
  br i1 %cmp17.not, label %for.inc.login_logout_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.login_logout_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %login_logout

if.end39:                                         ; preds = %if.end
  %scan40 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81
  %scan_retry41 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 2
  %78 = ptrtoint ptr %scan_retry41 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %scan_retry41, align 4
  %vp_fcports43 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %79 = ptrtoint ptr %vp_fcports43 to i32
  call void @__asan_load4_noabort(i32 %79)
  %fcport.1594 = load ptr, ptr %vp_fcports43, align 8
  %cmp50.not595 = icmp eq ptr %fcport.1594, %vp_fcports43
  br i1 %cmp50.not595, label %if.end39.for.cond62.preheader_crit_edge, label %if.end39.for.body53_crit_edge

if.end39.for.body53_crit_edge:                    ; preds = %if.end39
  br label %for.body53

if.end39.for.cond62.preheader_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %for.body53.for.cond62.preheader_crit_edge, %if.end39.for.cond62.preheader_crit_edge
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 4
  %max_fibre_devices606 = getelementptr inbounds %struct.qla_hw_data, ptr %81, i32 0, i32 44
  %82 = ptrtoint ptr %max_fibre_devices606 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %max_fibre_devices606, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp65608.not = icmp eq i16 %83, 0
  br i1 %cmp65608.not, label %for.cond62.preheader.login_logout_crit_edge, label %for.body67.lr.ph

for.cond62.preheader.login_logout_crit_edge:      ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %login_logout

for.body67.lr.ph:                                 ; preds = %for.cond62.preheader
  %port_name104 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 26
  br label %for.body67

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %if.end39.for.body53_crit_edge
  %fcport.1596 = phi ptr [ %fcport.1, %for.body53.for.body53_crit_edge ], [ %fcport.1594, %if.end39.for.body53_crit_edge ]
  %scan_state54 = getelementptr inbounds %struct.fc_port, ptr %fcport.1596, i32 0, i32 42
  %84 = ptrtoint ptr %scan_state54 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %scan_state54, align 2
  %85 = ptrtoint ptr %fcport.1596 to i32
  call void @__asan_load4_noabort(i32 %85)
  %fcport.1 = load ptr, ptr %fcport.1596, align 8
  %cmp50.not = icmp eq ptr %fcport.1, %vp_fcports43
  br i1 %cmp50.not, label %for.body53.for.cond62.preheader_crit_edge, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

for.body53.for.cond62.preheader_crit_edge:        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond62.preheader

for.body67:                                       ; preds = %cleanup.for.body67_crit_edge, %for.body67.lr.ph
  %i.0611 = phi i32 [ 0, %for.body67.lr.ph ], [ %.pre, %cleanup.for.body67_crit_edge ]
  %dup.0610 = phi i16 [ 0, %for.body67.lr.ph ], [ %dup.3, %cleanup.for.body67_crit_edge ]
  %dup_cnt.0609 = phi i16 [ 0, %for.body67.lr.ph ], [ %dup_cnt.3, %cleanup.for.body67_crit_edge ]
  %86 = ptrtoint ptr %scan40 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %scan40, align 4
  %arrayidx = getelementptr %struct.fab_scan_rp, ptr %87, i32 %i.0611
  %port_name = getelementptr %struct.fab_scan_rp, ptr %87, i32 %i.0611, i32 2
  %88 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %port_name, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %cmp69 = icmp eq i64 %89, 0
  %.pre = add nuw nsw i32 %i.0611, 1
  br i1 %cmp69, label %for.body67.cleanup_crit_edge, label %for.cond73.preheader

for.body67.cleanup_crit_edge:                     ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond73.preheader:                             ; preds = %for.body67
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 4
  %max_fibre_devices75598 = getelementptr inbounds %struct.qla_hw_data, ptr %91, i32 0, i32 44
  %92 = ptrtoint ptr %max_fibre_devices75598 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %max_fibre_devices75598, align 4
  %conv76599 = zext i16 %93 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre, i32 %conv76599)
  %cmp77600 = icmp ult i32 %.pre, %conv76599
  br i1 %cmp77600, label %for.cond73.preheader.for.body79_crit_edge, label %for.cond73.preheader.for.end101_crit_edge

for.cond73.preheader.for.end101_crit_edge:        ; preds = %for.cond73.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end101

for.cond73.preheader.for.body79_crit_edge:        ; preds = %for.cond73.preheader
  br label %for.body79

for.body79:                                       ; preds = %for.inc99.for.body79_crit_edge, %for.cond73.preheader.for.body79_crit_edge
  %k.0603 = phi i32 [ %k.0, %for.inc99.for.body79_crit_edge ], [ %.pre, %for.cond73.preheader.for.body79_crit_edge ]
  %dup.1602 = phi i16 [ %dup.2, %for.inc99.for.body79_crit_edge ], [ %dup.0610, %for.cond73.preheader.for.body79_crit_edge ]
  %dup_cnt.1601 = phi i16 [ %dup_cnt.2, %for.inc99.for.body79_crit_edge ], [ %dup_cnt.0609, %for.cond73.preheader.for.body79_crit_edge ]
  %94 = ptrtoint ptr %scan40 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %scan40, align 4
  %arrayidx82 = getelementptr %struct.fab_scan_rp, ptr %95, i32 %k.0603
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %96)
  %bf.load83 = load i32, ptr %arrayidx, align 4
  %bf.lshr = lshr i32 %bf.load83, 8
  %97 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %97)
  %bf.load85 = load i32, ptr %arrayidx82, align 4
  %bf.lshr86 = lshr i32 %bf.load85, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr, i32 %bf.lshr86)
  %cmp87 = icmp eq i32 %bf.lshr, %bf.lshr86
  br i1 %cmp87, label %if.then89, label %for.body79.for.inc99_crit_edge

for.body79.for.inc99_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc99

if.then89:                                        ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #14
  %inc90 = add i16 %dup_cnt.1601, 1
  %port_name96 = getelementptr %struct.fab_scan_rp, ptr %95, i32 %k.0603, i32 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268468224, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.48, i32 noundef %bf.lshr, ptr noundef %port_name, ptr noundef %port_name96) #12
  %98 = call ptr @memset(ptr %arrayidx82, i32 0, i32 24)
  br label %for.inc99

for.inc99:                                        ; preds = %if.then89, %for.body79.for.inc99_crit_edge
  %dup_cnt.2 = phi i16 [ %inc90, %if.then89 ], [ %dup_cnt.1601, %for.body79.for.inc99_crit_edge ]
  %dup.2 = phi i16 [ 1, %if.then89 ], [ %dup.1602, %for.body79.for.inc99_crit_edge ]
  %k.0 = add nuw nsw i32 %k.0603, 1
  %99 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw, align 4
  %max_fibre_devices75 = getelementptr inbounds %struct.qla_hw_data, ptr %100, i32 0, i32 44
  %101 = ptrtoint ptr %max_fibre_devices75 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %max_fibre_devices75, align 4
  %conv76 = zext i16 %102 to i32
  %cmp77 = icmp ult i32 %k.0, %conv76
  br i1 %cmp77, label %for.inc99.for.body79_crit_edge, label %for.inc99.for.end101_crit_edge

for.inc99.for.end101_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end101

for.inc99.for.body79_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body79

for.end101:                                       ; preds = %for.inc99.for.end101_crit_edge, %for.cond73.preheader.for.end101_crit_edge
  %dup_cnt.1.lcssa = phi i16 [ %dup_cnt.0609, %for.cond73.preheader.for.end101_crit_edge ], [ %dup_cnt.2, %for.inc99.for.end101_crit_edge ]
  %dup.1.lcssa = phi i16 [ %dup.0610, %for.cond73.preheader.for.end101_crit_edge ], [ %dup.2, %for.inc99.for.end101_crit_edge ]
  %.lcssa = phi ptr [ %91, %for.cond73.preheader.for.end101_crit_edge ], [ %100, %for.inc99.for.end101_crit_edge ]
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %port_name, ptr noundef dereferenceable(8) %port_name104, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool107.not = icmp eq i32 %bcmp, 0
  br i1 %tobool107.not, label %for.end101.cleanup_crit_edge, label %if.end109

for.end101.cleanup_crit_edge:                     ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end109:                                        ; preds = %for.end101
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %104)
  %cmp113 = icmp ugt i8 %104, -17
  br i1 %cmp113, label %if.end109.cleanup_crit_edge, label %if.end116

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end116:                                        ; preds = %if.end109
  %num_vhosts.i = getelementptr inbounds %struct.qla_hw_data, ptr %.lcssa, i32 0, i32 229
  %105 = ptrtoint ptr %num_vhosts.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %num_vhosts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool.not.i561 = icmp eq i16 %106, 0
  br i1 %tobool.not.i561, label %if.end116.for.cond126.preheader_crit_edge, label %do.body1.i

if.end116.for.cond126.preheader_crit_edge:        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond126.preheader

do.body1.i:                                       ; preds = %if.end116
  %vport_slock.i = getelementptr inbounds %struct.qla_hw_data, ptr %.lcssa, i32 0, i32 126
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_slock.i) #12
  %vp_list.i = getelementptr inbounds %struct.qla_hw_data, ptr %.lcssa, i32 0, i32 227
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body1.i
  %vp.0.in.i = phi ptr [ %vp_list.i, %do.body1.i ], [ %vp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %107 = ptrtoint ptr %vp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %vp.0.i = load ptr, ptr %vp.0.in.i, align 4
  %cmp7.not.i = icmp eq ptr %vp.0.i, %vp_list.i
  br i1 %cmp7.not.i, label %qla2x00_is_a_vp.exit.thread623, label %for.body.i

qla2x00_is_a_vp.exit.thread623:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock.i, i32 noundef %call2.i) #12
  br label %for.cond126.preheader

for.cond126.preheader:                            ; preds = %qla2x00_is_a_vp.exit.thread623, %if.end116.for.cond126.preheader_crit_edge
  br label %for.cond126

for.body.i:                                       ; preds = %for.cond.i
  %port_name.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vp.0.i, i32 0, i32 26
  %108 = ptrtoint ptr %port_name.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 8)
  %109 = load i64, ptr %port_name.i, align 1
  %cmp10.i = icmp eq i64 %109, %89
  br i1 %cmp10.i, label %qla2x00_is_a_vp.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

qla2x00_is_a_vp.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_slock.i, i32 noundef %call2.i) #12
  br label %cleanup

for.cond126:                                      ; preds = %for.body132.for.cond126_crit_edge, %for.cond126.preheader
  %fcport.2.in = phi ptr [ %fcport.2, %for.body132.for.cond126_crit_edge ], [ %vp_fcports43, %for.cond126.preheader ]
  %110 = ptrtoint ptr %fcport.2.in to i32
  call void @__asan_load4_noabort(i32 %110)
  %fcport.2 = load ptr, ptr %fcport.2.in, align 8
  %cmp129.not = icmp eq ptr %fcport.2, %vp_fcports43
  br i1 %cmp129.not, label %if.then221, label %for.body132

for.body132:                                      ; preds = %for.cond126
  %port_name135 = getelementptr inbounds %struct.fc_port, ptr %fcport.2, i32 0, i32 5
  %bcmp531 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %port_name, ptr noundef dereferenceable(8) %port_name135, i32 8) #16
  %tobool138.not = icmp eq i32 %bcmp531, 0
  br i1 %tobool138.not, label %if.end140, label %for.body132.for.cond126_crit_edge

for.body132.for.cond126_crit_edge:                ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond126

if.end140:                                        ; preds = %for.body132
  %scan_state141 = getelementptr inbounds %struct.fc_port, ptr %fcport.2, i32 0, i32 42
  %111 = ptrtoint ptr %scan_state141 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 2, ptr %scan_state141, align 2
  %rscn_gen = getelementptr inbounds %struct.fc_port, ptr %fcport.2, i32 0, i32 58
  %112 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rscn_gen, align 8
  %last_rscn_gen = getelementptr inbounds %struct.fc_port, ptr %fcport.2, i32 0, i32 59
  %114 = ptrtoint ptr %last_rscn_gen to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %last_rscn_gen, align 4
  %fc4type = getelementptr %struct.fab_scan_rp, ptr %87, i32 %i.0611, i32 1
  %115 = ptrtoint ptr %fc4type to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fc4type, align 4
  %conv142 = trunc i32 %116 to i8
  %fc4_type = getelementptr inbounds %struct.fc_port, ptr %fcport.2, i32 0, i32 40
  %117 = ptrtoint ptr %fc4_type to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv142, ptr %fc4_type, align 4
  %scan_needed = getelementptr inbounds %struct.fc_port, ptr %fcport.2, i32 0, i32 2
  %118 = ptrtoint ptr %scan_needed to i32
  call void @__asan_loadN_noabort(i32 %118, i32 3)
  %bf.load143 = load i24, ptr %scan_needed, align 4
  %119 = and i24 %bf.load143, 1024
  %tobool146.not = icmp eq i24 %119, 0
  br i1 %tobool146.not, label %if.end140.if.end171_crit_edge, label %if.then147

if.end140.if.end171_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

if.then147:                                       ; preds = %if.end140
  %120 = and i32 %116, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %120)
  %.not = icmp eq i32 %120, 3
  br i1 %.not, label %land.lhs.true156, label %if.then147.if.else165_crit_edge

if.then147.if.else165_crit_edge:                  ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else165

land.lhs.true156:                                 ; preds = %if.then147
  %121 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw, align 4
  %fc4_type_priority = getelementptr inbounds %struct.qla_hw_data, ptr %122, i32 0, i32 295
  %123 = ptrtoint ptr %fc4_type_priority to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %fc4_type_priority, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %124)
  %cmp159 = icmp eq i8 %124, 1
  br i1 %cmp159, label %if.then161, label %land.lhs.true156.if.else165_crit_edge

land.lhs.true156.if.else165_crit_edge:            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else165

if.then161:                                       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set164 = or i24 %bf.load143, 64
  br label %if.end171.sink.split

if.else165:                                       ; preds = %land.lhs.true156.if.else165_crit_edge, %if.then147.if.else165_crit_edge
  %bf.clear168 = and i24 %bf.load143, -65
  br label %if.end171.sink.split

if.end171.sink.split:                             ; preds = %if.else165, %if.then161
  %bf.set164.sink = phi i24 [ %bf.set164, %if.then161 ], [ %bf.clear168, %if.else165 ]
  %125 = ptrtoint ptr %scan_needed to i32
  call void @__asan_storeN_noabort(i32 %125, i32 3)
  store i24 %bf.set164.sink, ptr %scan_needed, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.end171.sink.split, %if.end140.if.end171_crit_edge
  %flags172 = getelementptr inbounds %struct.fc_port, ptr %fcport.2, i32 0, i32 35
  %126 = ptrtoint ptr %flags172 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags172, align 8
  %and173 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %cmp174 = icmp eq i32 %and173, 0
  br i1 %cmp174, label %if.then176, label %if.else178

if.then176:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qla2x00_clear_loop_id(ptr noundef %fcport.2) #12
  %128 = ptrtoint ptr %flags172 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %flags172, align 8
  %or = or i32 %129, 1
  store i32 %or, ptr %flags172, align 8
  br label %if.end201

if.else178:                                       ; preds = %if.end171
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport.2, i32 0, i32 6
  %130 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %130)
  %bf.load179 = load i32, ptr %d_id, align 8
  %131 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %131)
  %bf.load182 = load i32, ptr %arrayidx, align 4
  %cmp184.not.unshifted = xor i32 %bf.load182, %bf.load179
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp184.not.unshifted)
  %cmp184.not = icmp ult i32 %cmp184.not.unshifted, 256
  br i1 %cmp184.not, label %lor.lhs.false, label %if.else178.if.then199_crit_edge

if.else178.if.then199_crit_edge:                  ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then199

lor.lhs.false:                                    ; preds = %if.else178
  %132 = ptrtoint ptr %scan_needed to i32
  call void @__asan_loadN_noabort(i32 %132, i32 3)
  %bf.load187 = load i24, ptr %scan_needed, align 4
  %133 = and i24 %bf.load187, 1024
  %tobool191.not = icmp eq i24 %133, 0
  br i1 %tobool191.not, label %lor.lhs.false.if.end201_crit_edge, label %land.lhs.true192

lor.lhs.false.if.end201_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end201

land.lhs.true192:                                 ; preds = %lor.lhs.false
  %port_type = getelementptr inbounds %struct.fc_port, ptr %fcport.2, i32 0, i32 33
  %134 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %port_type, align 8
  %136 = zext i32 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %135, label %land.lhs.true192.if.then199_crit_edge [
    i32 2, label %land.lhs.true192.if.end201_crit_edge
    i32 16, label %land.lhs.true192.if.end201_crit_edge637
  ]

land.lhs.true192.if.end201_crit_edge637:          ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end201

land.lhs.true192.if.end201_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end201

land.lhs.true192.if.then199_crit_edge:            ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then199

if.then199:                                       ; preds = %land.lhs.true192.if.then199_crit_edge, %if.else178.if.then199_crit_edge
  tail call void @qlt_schedule_sess_for_deletion(ptr noundef %fcport.2) #12
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %land.lhs.true192.if.end201_crit_edge, %land.lhs.true192.if.end201_crit_edge637, %lor.lhs.false.if.end201_crit_edge, %if.then176
  %137 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %137)
  %bf.load203 = load i32, ptr %arrayidx, align 4
  %bf.lshr204 = and i32 %bf.load203, -256
  %d_id205 = getelementptr inbounds %struct.fc_port, ptr %fcport.2, i32 0, i32 6
  %138 = ptrtoint ptr %d_id205 to i32
  call void @__asan_load4_noabort(i32 %138)
  %bf.load206 = load i32, ptr %d_id205, align 8
  %bf.clear207 = and i32 %bf.load206, 255
  %bf.set208 = or i32 %bf.clear207, %bf.lshr204
  store i32 %bf.set208, ptr %d_id205, align 8
  %139 = ptrtoint ptr %scan_needed to i32
  call void @__asan_loadN_noabort(i32 %139, i32 3)
  %bf.load210 = load i24, ptr %scan_needed, align 4
  %bf.clear211 = and i24 %bf.load210, -1025
  store i24 %bf.clear211, ptr %scan_needed, align 4
  br label %cleanup

if.then221:                                       ; preds = %for.cond126
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.qla24xx_async_gnnft_done, i32 noundef 3536, ptr noundef %port_name) #12
  %node_name = getelementptr %struct.fab_scan_rp, ptr %87, i32 %i.0611, i32 3
  %fc4type228 = getelementptr %struct.fab_scan_rp, ptr %87, i32 %i.0611, i32 1
  %140 = ptrtoint ptr %fc4type228 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %fc4type228, align 4
  %conv229 = trunc i32 %141 to i8
  %call230 = tail call i32 @qla24xx_post_newsess_work(ptr noundef %vha, ptr noundef %arrayidx, ptr noundef %port_name, ptr noundef %node_name, ptr noundef null, i8 noundef zeroext %conv229) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then221, %if.end201, %qla2x00_is_a_vp.exit, %if.end109.cleanup_crit_edge, %for.end101.cleanup_crit_edge, %for.body67.cleanup_crit_edge
  %dup_cnt.3 = phi i16 [ %dup_cnt.1.lcssa, %if.end201 ], [ %dup_cnt.1.lcssa, %if.then221 ], [ %dup_cnt.1.lcssa, %qla2x00_is_a_vp.exit ], [ %dup_cnt.1.lcssa, %if.end109.cleanup_crit_edge ], [ %dup_cnt.1.lcssa, %for.end101.cleanup_crit_edge ], [ %dup_cnt.0609, %for.body67.cleanup_crit_edge ]
  %dup.3 = phi i16 [ %dup.1.lcssa, %if.end201 ], [ %dup.1.lcssa, %if.then221 ], [ %dup.1.lcssa, %qla2x00_is_a_vp.exit ], [ %dup.1.lcssa, %if.end109.cleanup_crit_edge ], [ %dup.1.lcssa, %for.end101.cleanup_crit_edge ], [ %dup.0610, %for.body67.cleanup_crit_edge ]
  %142 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw, align 4
  %max_fibre_devices = getelementptr inbounds %struct.qla_hw_data, ptr %143, i32 0, i32 44
  %144 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %max_fibre_devices, align 4
  %conv64 = zext i16 %145 to i32
  %cmp65 = icmp ult i32 %.pre, %conv64
  br i1 %cmp65, label %cleanup.for.body67_crit_edge, label %for.end235

cleanup.for.body67_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body67

for.end235:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dup.3)
  %tobool236.not = icmp eq i16 %dup.3, 0
  br i1 %tobool236.not, label %for.end235.login_logout_crit_edge, label %if.then237

for.end235.login_logout_crit_edge:                ; preds = %for.end235
  call void @__sanitizer_cov_trace_pc() #14
  br label %login_logout

if.then237:                                       ; preds = %for.end235
  call void @__sanitizer_cov_trace_pc() #14
  %conv238 = zext i16 %dup_cnt.3 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.49, i32 noundef %conv238) #12
  br label %login_logout

login_logout:                                     ; preds = %if.then237, %for.end235.login_logout_crit_edge, %for.cond62.preheader.login_logout_crit_edge, %for.inc.login_logout_crit_edge, %if.else.login_logout_crit_edge
  %vp_fcports241 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %146 = ptrtoint ptr %vp_fcports241 to i32
  call void @__asan_load4_noabort(i32 %146)
  %fcport.3615 = load ptr, ptr %vp_fcports241, align 8
  %cmp248.not616 = icmp eq ptr %fcport.3615, %vp_fcports241
  br i1 %cmp248.not616, label %login_logout.out_crit_edge, label %for.body251.lr.ph

login_logout.out_crit_edge:                       ; preds = %login_logout
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body251.lr.ph:                                ; preds = %login_logout
  %host.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  br label %for.body251

for.body251:                                      ; preds = %for.inc350.for.body251_crit_edge, %for.body251.lr.ph
  %fcport.3617 = phi ptr [ %fcport.3615, %for.body251.lr.ph ], [ %fcport.3, %for.inc350.for.body251_crit_edge ]
  %flags252 = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 35
  %147 = ptrtoint ptr %flags252 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags252, align 8
  %and253 = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253)
  %cmp254 = icmp eq i32 %and253, 0
  br i1 %cmp254, label %if.then256, label %if.end261

if.then256:                                       ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #14
  %scan_needed257 = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 2
  %149 = ptrtoint ptr %scan_needed257 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 3)
  %bf.load258 = load i24, ptr %scan_needed257, align 4
  %bf.clear259 = and i24 %bf.load258, -1025
  store i24 %bf.clear259, ptr %scan_needed257, align 4
  br label %for.inc350

if.end261:                                        ; preds = %for.body251
  %scan_state262 = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 42
  %150 = ptrtoint ptr %scan_state262 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %scan_state262, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %151)
  %cmp264.not = icmp eq i8 %151, 2
  %scan_needed321 = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 2
  %152 = ptrtoint ptr %scan_needed321 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 3)
  %bf.load322 = load i24, ptr %scan_needed321, align 4
  %153 = and i24 %bf.load322, 1024
  %tobool326.not = icmp eq i24 %153, 0
  br i1 %cmp264.not, label %if.else320, label %if.then266

if.then266:                                       ; preds = %if.end261
  br i1 %tobool326.not, label %if.then266.if.end281_crit_edge, label %land.lhs.true273

if.then266.if.end281_crit_edge:                   ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end281

land.lhs.true273:                                 ; preds = %if.then266
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 50
  %154 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %disc_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %155)
  %cmp274 = icmp eq i32 %155, 3
  br i1 %cmp274, label %if.then276, label %land.lhs.true273.if.end281_crit_edge

land.lhs.true273.if.end281_crit_edge:             ; preds = %land.lhs.true273
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end281

if.then276:                                       ; preds = %land.lhs.true273
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set280 = or i24 %bf.load322, 262144
  %156 = ptrtoint ptr %scan_needed321 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 3)
  store i24 %bf.set280, ptr %scan_needed321, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.then276, %land.lhs.true273.if.end281_crit_edge, %if.then266.if.end281_crit_edge
  %do_delete.0.off0 = phi i1 [ true, %if.then276 ], [ false, %land.lhs.true273.if.end281_crit_edge ], [ false, %if.then266.if.end281_crit_edge ]
  %157 = ptrtoint ptr %scan_needed321 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 3)
  %bf.load283 = load i24, ptr %scan_needed321, align 4
  %bf.clear284 = and i24 %bf.load283, -1025
  store i24 %bf.clear284, ptr %scan_needed321, align 4
  %158 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %host.i, align 8
  %active_mode.i = getelementptr inbounds %struct.Scsi_Host, ptr %159, i32 0, i32 36
  %160 = ptrtoint ptr %active_mode.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %bf.load.i = load i16, ptr %active_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %bf.load.i)
  %cmp.i = icmp ugt i16 %bf.load.i, -16385
  %bf.lshr.mask.i = and i16 %bf.load.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i)
  %cmp.i565 = icmp eq i16 %bf.lshr.mask.i, 16384
  %or.cond588 = or i1 %cmp.i, %cmp.i565
  br i1 %or.cond588, label %land.lhs.true291, label %lor.lhs.false295

land.lhs.true291:                                 ; preds = %if.end281
  %state = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #12
  %161 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %162)
  %cmp293 = icmp eq i32 %162, 4
  %brmerge = or i1 %do_delete.0.off0, %cmp293
  br i1 %brmerge, label %land.lhs.true291.if.then298_crit_edge, label %land.lhs.true291.for.inc350_crit_edge

land.lhs.true291.for.inc350_crit_edge:            ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc350

land.lhs.true291.if.then298_crit_edge:            ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then298

lor.lhs.false295:                                 ; preds = %if.end281
  br i1 %do_delete.0.off0, label %lor.lhs.false295.if.then298_crit_edge, label %lor.lhs.false295.for.inc350_crit_edge

lor.lhs.false295.for.inc350_crit_edge:            ; preds = %lor.lhs.false295
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc350

lor.lhs.false295.if.then298_crit_edge:            ; preds = %lor.lhs.false295
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then298

if.then298:                                       ; preds = %lor.lhs.false295.if.then298_crit_edge, %land.lhs.true291.if.then298_crit_edge
  %loop_id299 = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 7
  %163 = ptrtoint ptr %loop_id299 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %loop_id299, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %164)
  %cmp301.not = icmp eq i16 %164, 4096
  br i1 %cmp301.not, label %if.then298.for.inc350_crit_edge, label %if.then303

if.then298.for.inc350_crit_edge:                  ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc350

if.then303:                                       ; preds = %if.then298
  %165 = ptrtoint ptr %flags252 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flags252, align 8
  %and305 = and i32 %166, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %if.then303.if.end312_crit_edge, label %if.then307

if.then303.if.end312_crit_edge:                   ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end312

if.then307:                                       ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %scan_needed321 to i32
  call void @__asan_loadN_noabort(i32 %167, i32 3)
  %bf.load309 = load i24, ptr %scan_needed321, align 4
  %bf.clear310 = and i24 %bf.load309, -262145
  store i24 %bf.clear310, ptr %scan_needed321, align 4
  br label %if.end312

if.end312:                                        ; preds = %if.then307, %if.then303.if.end312_crit_edge
  %port_name313 = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 8432, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.qla24xx_async_gnnft_done, i32 noundef 3581, ptr noundef %port_name313) #12
  %tgt_link_down_time = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 70
  %168 = ptrtoint ptr %tgt_link_down_time to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 0, ptr %tgt_link_down_time, align 8
  tail call void @qlt_schedule_sess_for_deletion(ptr noundef %fcport.3617) #12
  br label %for.inc350

if.else320:                                       ; preds = %if.end261
  br i1 %tobool326.not, label %lor.lhs.false327, label %if.else320.if.then331_crit_edge

if.else320.if.then331_crit_edge:                  ; preds = %if.else320
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then331

lor.lhs.false327:                                 ; preds = %if.else320
  %disc_state328 = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 50
  %169 = ptrtoint ptr %disc_state328 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %disc_state328, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %170)
  %cmp329.not = icmp eq i32 %170, 7
  br i1 %cmp329.not, label %lor.lhs.false327.for.inc350_crit_edge, label %lor.lhs.false327.if.then331_crit_edge

lor.lhs.false327.if.then331_crit_edge:            ; preds = %lor.lhs.false327
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then331

lor.lhs.false327.for.inc350_crit_edge:            ; preds = %lor.lhs.false327
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc350

if.then331:                                       ; preds = %lor.lhs.false327.if.then331_crit_edge, %if.else320.if.then331_crit_edge
  %login_retry = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 36
  %171 = ptrtoint ptr %login_retry to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %login_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp332 = icmp eq i32 %172, 0
  br i1 %cmp332, label %if.then334, label %if.then331.if.end342_crit_edge

if.then331.if.end342_crit_edge:                   ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end342

if.then334:                                       ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #14
  %173 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hw, align 4
  %login_retry_count = getelementptr inbounds %struct.qla_hw_data, ptr %174, i32 0, i32 76
  %175 = ptrtoint ptr %login_retry_count to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %login_retry_count, align 4
  %177 = ptrtoint ptr %login_retry to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %login_retry, align 4
  %port_name337 = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 5
  %loop_id339 = getelementptr inbounds %struct.fc_port, ptr %fcport.3617, i32 0, i32 7
  %178 = ptrtoint ptr %loop_id339 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %loop_id339, align 4
  %conv340 = zext i16 %179 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8355, ptr noundef nonnull @.str.51, ptr noundef %port_name337, i32 noundef %conv340, i32 noundef %176) #12
  br label %if.end342

if.end342:                                        ; preds = %if.then334, %if.then331.if.end342_crit_edge
  %180 = ptrtoint ptr %scan_needed321 to i32
  call void @__asan_loadN_noabort(i32 %180, i32 3)
  %bf.load344 = load i24, ptr %scan_needed321, align 4
  %bf.clear345 = and i24 %bf.load344, -1025
  store i24 %bf.clear345, ptr %scan_needed321, align 4
  %call347 = tail call i32 @qla24xx_fcport_handle_login(ptr noundef %vha, ptr noundef %fcport.3617) #12
  br label %for.inc350

for.inc350:                                       ; preds = %if.end342, %lor.lhs.false327.for.inc350_crit_edge, %if.end312, %if.then298.for.inc350_crit_edge, %lor.lhs.false295.for.inc350_crit_edge, %land.lhs.true291.for.inc350_crit_edge, %if.then256
  %181 = ptrtoint ptr %fcport.3617 to i32
  call void @__asan_load4_noabort(i32 %181)
  %fcport.3 = load ptr, ptr %fcport.3617, align 8
  %cmp248.not = icmp eq ptr %fcport.3, %vp_fcports241
  br i1 %cmp248.not, label %for.inc350.out_crit_edge, label %for.inc350.for.body251_crit_edge

for.inc350.for.body251_crit_edge:                 ; preds = %for.inc350
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body251

for.inc350.out_crit_edge:                         ; preds = %for.inc350
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %for.inc350.out_crit_edge, %login_logout.out_crit_edge
  %type.i566 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %182 = ptrtoint ptr %type.i566 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %type.i566, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %183)
  %cond.i567 = icmp eq i16 %183, 13
  br i1 %cond.i567, label %sw.bb.i569, label %sw.default.i572

sw.bb.i569:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %u.i568 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  tail call void @qla2x00_els_dcmd2_free(ptr noundef %vha, ptr noundef %u.i568) #12
  br label %qla24xx_sp_unmap.exit587

sw.default.i572:                                  ; preds = %out
  %req.i570 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %184 = ptrtoint ptr %req.i570 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %req.i570, align 8
  %tobool.not.i571 = icmp eq ptr %185, null
  br i1 %tobool.not.i571, label %sw.default.i572.if.end.i580_crit_edge, label %if.then.i577

sw.default.i572.if.end.i580_crit_edge:            ; preds = %sw.default.i572
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i580

if.then.i577:                                     ; preds = %sw.default.i572
  call void @__sanitizer_cov_trace_pc() #14
  %186 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hw, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 128
  %dev.i574 = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 44
  %req_allocated_size.i575 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %190 = ptrtoint ptr %req_allocated_size.i575 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %req_allocated_size.i575, align 8
  %req_dma.i576 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %192 = ptrtoint ptr %req_dma.i576 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %req_dma.i576, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i574, i32 noundef %191, ptr noundef nonnull %185, i32 noundef %193, i32 noundef 0) #12
  %194 = ptrtoint ptr %req.i570 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %req.i570, align 8
  br label %if.end.i580

if.end.i580:                                      ; preds = %if.then.i577, %sw.default.i572.if.end.i580_crit_edge
  %rsp.i578 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %195 = ptrtoint ptr %rsp.i578 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rsp.i578, align 4
  %tobool17.not.i579 = icmp eq ptr %196, null
  br i1 %tobool17.not.i579, label %if.end.i580.qla24xx_sp_unmap.exit587_crit_edge, label %if.then18.i585

if.end.i580.qla24xx_sp_unmap.exit587_crit_edge:   ; preds = %if.end.i580
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_sp_unmap.exit587

if.then18.i585:                                   ; preds = %if.end.i580
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hw, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 128
  %dev21.i582 = getelementptr inbounds %struct.pci_dev, ptr %200, i32 0, i32 44
  %rsp_allocated_size.i583 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %201 = ptrtoint ptr %rsp_allocated_size.i583 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %rsp_allocated_size.i583, align 4
  %rsp_dma.i584 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %203 = ptrtoint ptr %rsp_dma.i584 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %rsp_dma.i584, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21.i582, i32 noundef %202, ptr noundef nonnull %196, i32 noundef %204, i32 noundef 0) #12
  %205 = ptrtoint ptr %rsp.i578 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %rsp.i578, align 4
  br label %qla24xx_sp_unmap.exit587

qla24xx_sp_unmap.exit587:                         ; preds = %if.then18.i585, %if.end.i580.qla24xx_sp_unmap.exit587_crit_edge, %sw.bb.i569
  %free.i586 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %206 = ptrtoint ptr %free.i586 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %free.i586, align 8
  tail call void %207(ptr noundef %sp) #12
  %work_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 3
  %call362 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock) #12
  %scan_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 3
  %208 = ptrtoint ptr %scan_flags to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %scan_flags, align 4
  %and366 = and i32 %209, -2
  store i32 %and366, ptr %scan_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock, i32 noundef %call362) #12
  br label %for.cond375

for.cond375:                                      ; preds = %for.body381.for.cond375_crit_edge, %qla24xx_sp_unmap.exit587
  %fcport.4.in = phi ptr [ %vp_fcports241, %qla24xx_sp_unmap.exit587 ], [ %fcport.4, %for.body381.for.cond375_crit_edge ]
  %210 = ptrtoint ptr %fcport.4.in to i32
  call void @__asan_load4_noabort(i32 %210)
  %fcport.4 = load ptr, ptr %fcport.4.in, align 8
  %cmp378.not = icmp eq ptr %fcport.4, %vp_fcports241
  br i1 %cmp378.not, label %for.cond375.if.end399_crit_edge, label %for.body381

for.cond375.if.end399_crit_edge:                  ; preds = %for.cond375
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end399

for.body381:                                      ; preds = %for.cond375
  %scan_needed382 = getelementptr inbounds %struct.fc_port, ptr %fcport.4, i32 0, i32 2
  %211 = ptrtoint ptr %scan_needed382 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 3)
  %bf.load383 = load i24, ptr %scan_needed382, align 4
  %212 = and i24 %bf.load383, 1024
  %tobool387.not = icmp eq i24 %212, 0
  br i1 %tobool387.not, label %for.body381.for.cond375_crit_edge, label %if.then388

for.body381.for.cond375_crit_edge:                ; preds = %for.body381
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond375

if.then388:                                       ; preds = %for.body381
  call void @__sanitizer_cov_trace_pc() #14
  %dpc_flags389 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dpc_flags389) #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags389) #12
  br label %if.end399

if.end399:                                        ; preds = %if.then388, %for.cond375.if.end399_crit_edge, %qla24xx_sp_unmap.exit559, %qla24xx_sp_unmap.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_clear_loop_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_async_gpnft_done(ptr noundef %vha, ptr noundef %sp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268468224, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.qla24xx_async_gpnft_done) #12
  %gen2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 18
  %0 = ptrtoint ptr %gen2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gen2, align 4
  %conv = trunc i32 %1 to i8
  %flags1.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %2 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load volatile i32, ptr %flags1.i, align 8
  %3 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body2.i, label %if.end.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %work_lock.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock.i) #12
  %scan_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 3
  %4 = ptrtoint ptr %scan_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_flags.i, align 4
  %and.i = and i32 %5, -2
  store i32 %and.i, ptr %scan_flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock.i, i32 noundef %call3.i) #12
  br label %done_free_sp.i

if.end.i:                                         ; preds = %entry
  %u.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %req.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req.i, align 8
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool8.not.i, label %if.end.i.if.then12.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %rsp.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsp.i, align 4
  %tobool11.not.i = icmp eq ptr %9, null
  br i1 %tobool11.not.i, label %lor.lhs.false.i.if.then12.i_crit_edge, label %if.end59.i

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

if.then12.i:                                      ; preds = %lor.lhs.false.i.if.then12.i_crit_edge, %if.end.i.if.then12.i_crit_edge
  %rsp18.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %rsp18.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rsp18.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.180, ptr noundef nonnull @__func__.qla24xx_async_gnnft, ptr noundef %7, ptr noundef %11) #12
  %work_lock26.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 3
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock26.i) #12
  %scan_flags34.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 3
  %12 = ptrtoint ptr %scan_flags34.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_flags34.i, align 4
  %and35.i = and i32 %13, -2
  store i32 %and35.i, ptr %scan_flags34.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock26.i, i32 noundef %call28.i) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.181, i32 noundef 3880, i32 noundef 9, ptr noundef null) #12
  %dpc_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dpc_flags.i) #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags.i) #12
  br label %done_free_sp.i

if.end59.i:                                       ; preds = %lor.lhs.false.i
  %conv60.i = and i32 %1, 255
  %name.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 8
  %rsp_size.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %rsp_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rsp_size.i, align 4
  %req_size.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %req_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req_size.i, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 1048575, ptr noundef nonnull @.str.182, ptr noundef nonnull @__func__.qla24xx_async_gnnft, i32 noundef %conv60.i, ptr noundef %15, i32 noundef %17, i32 noundef %19) #12
  %type.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 15, ptr %type.i, align 2
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.183, ptr %name.i, align 8
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 4
  %base_qpair.i = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 34
  %24 = ptrtoint ptr %base_qpair.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_qpair.i, align 4
  %chip_reset.i = getelementptr inbounds %struct.qla_qpair, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %chip_reset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chip_reset.i, align 4
  %gen1.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 17
  %28 = ptrtoint ptr %gen1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %gen1.i, align 8
  %29 = ptrtoint ptr %gen2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv60.i, ptr %gen2, align 4
  %timeout.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 2
  %30 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout.i, align 8
  %call68.i = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add.i = add i32 %call68.i, 2
  tail call void @qla2x00_init_timer(ptr noundef %sp, i32 noundef %add.i) #12
  %31 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rsp.i, align 4
  %33 = ptrtoint ptr %rsp_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rsp_size.i, align 4
  %35 = call ptr @memset(ptr %32, i32 0, i32 %34)
  %36 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %req.i, align 8
  %38 = ptrtoint ptr %req_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %req_size.i, align 8
  %40 = call ptr @memset(ptr %37, i32 0, i32 %39)
  %41 = load ptr, ptr %req.i, align 8
  %42 = load i32, ptr %rsp_size.i, align 4
  %43 = call ptr @memset(ptr %41, i32 0, i32 8208)
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %41, align 4
  %gs_type.i.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %41, i32 0, i32 2
  %45 = ptrtoint ptr %gs_type.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -4, ptr %gs_type.i.i, align 4
  %gs_subtype.i.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %41, i32 0, i32 3
  %46 = ptrtoint ptr %gs_subtype.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %gs_subtype.i.i, align 1
  %command.i.i = getelementptr inbounds %struct.ct_sns_req, ptr %41, i32 0, i32 1
  %47 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 371, ptr %command.i.i, align 4
  %conv.i.i = and i32 %42, 65535
  %sub.i.i = add nsw i32 %conv.i.i, -16
  %div.i.i = sdiv i32 %sub.i.i, 4
  %conv7.i.i = trunc i32 %div.i.i to i16
  %max_rsp_size.i.i = getelementptr inbounds %struct.ct_sns_req, ptr %41, i32 0, i32 2
  %48 = ptrtoint ptr %max_rsp_size.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv7.i.i, ptr %max_rsp_size.i.i, align 2
  %port_type.i = getelementptr inbounds %struct.ct_sns_req, ptr %41, i32 0, i32 5, i32 0, i32 0, i32 3
  %49 = ptrtoint ptr %port_type.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv, ptr %port_type.i, align 1
  store i32 20, ptr %req_size.i, align 8
  %nport_handle.i = getelementptr inbounds %struct.ct_arg, ptr %u.i, i32 0, i32 1
  %50 = ptrtoint ptr %nport_handle.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2044, ptr %nport_handle.i, align 4
  %done.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 24
  %51 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @qla2x00_async_gpnft_gnnft_sp_done, ptr %done.i, align 4
  %52 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name.i, align 8
  %handle.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %54 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %handle.i, align 8
  %56 = load i8, ptr %port_type.i, align 1
  %conv98.i = zext i8 %56 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.57, ptr noundef %53, i32 noundef %55, i32 noundef %conv98.i) #12
  %call99.i = tail call i32 @qla2x00_start_sp(ptr noundef %sp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %cmp100.not.i = icmp eq i32 %call99.i, 0
  br i1 %cmp100.not.i, label %if.end59.i.qla24xx_async_gnnft.exit_crit_edge, label %if.end59.i.done_free_sp.i_crit_edge

if.end59.i.done_free_sp.i_crit_edge:              ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done_free_sp.i

if.end59.i.qla24xx_async_gnnft.exit_crit_edge:    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_async_gnnft.exit

done_free_sp.i:                                   ; preds = %if.end59.i.done_free_sp.i_crit_edge, %if.then12.i, %do.body2.i
  %req106.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %57 = ptrtoint ptr %req106.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %req106.i, align 8
  %tobool107.not.i = icmp eq ptr %58, null
  br i1 %tobool107.not.i, label %done_free_sp.i.if.end120.i_crit_edge, label %if.then108.i

done_free_sp.i.if.end120.i_crit_edge:             ; preds = %done_free_sp.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120.i

if.then108.i:                                     ; preds = %done_free_sp.i
  call void @__sanitizer_cov_trace_pc() #14
  %hw109.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %59 = ptrtoint ptr %hw109.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw109.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %req_allocated_size.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %req_allocated_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %req_allocated_size.i, align 8
  %req_dma.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %req_dma.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %req_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %64, ptr noundef nonnull %58, i32 noundef %66, i32 noundef 0) #12
  %67 = ptrtoint ptr %req106.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %req106.i, align 8
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then108.i, %done_free_sp.i.if.end120.i_crit_edge
  %rsp123.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %68 = ptrtoint ptr %rsp123.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rsp123.i, align 4
  %tobool124.not.i = icmp eq ptr %69, null
  br i1 %tobool124.not.i, label %if.end120.i.if.end139.i_crit_edge, label %if.then125.i

if.end120.i.if.end139.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i

if.then125.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #14
  %hw126.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %70 = ptrtoint ptr %hw126.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw126.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 128
  %dev128.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %rsp_allocated_size.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %74 = ptrtoint ptr %rsp_allocated_size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rsp_allocated_size.i, align 4
  %rsp_dma.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %76 = ptrtoint ptr %rsp_dma.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rsp_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev128.i, i32 noundef %75, ptr noundef nonnull %69, i32 noundef %77, i32 noundef 0) #12
  %78 = ptrtoint ptr %rsp123.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %rsp123.i, align 4
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then125.i, %if.end120.i.if.end139.i_crit_edge
  %free.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %79 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %free.i, align 8
  tail call void %80(ptr noundef %sp) #12
  %work_lock147.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 3
  %call149.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock147.i) #12
  %scan_flags155.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 3
  %81 = ptrtoint ptr %scan_flags155.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %scan_flags155.i, align 4
  %and156.i = and i32 %82, -2
  store i32 %and156.i, ptr %scan_flags155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i)
  %cmp159.i = icmp eq i32 %and156.i, 0
  br i1 %cmp159.i, label %if.then161.i, label %if.end139.i.if.end166.i_crit_edge

if.end139.i.if.end166.i_crit_edge:                ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166.i

if.then161.i:                                     ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.184, ptr noundef nonnull @__func__.qla24xx_async_gnnft) #12
  %83 = ptrtoint ptr %scan_flags155.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %scan_flags155.i, align 4
  %or.i = or i32 %84, 2
  store i32 %or.i, ptr %scan_flags155.i, align 4
  %scan_work.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %85 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %85, ptr noundef %scan_work.i, i32 noundef 5) #12
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.then161.i, %if.end139.i.if.end166.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock147.i, i32 noundef %call149.i) #12
  br label %qla24xx_async_gnnft.exit

qla24xx_async_gnnft.exit:                         ; preds = %if.end166.i, %if.end59.i.qla24xx_async_gnnft.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_async_gpnft(ptr noundef %vha, i8 noundef zeroext %fc4_type, ptr noundef %sp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268468224, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.qla24xx_async_gpnft) #12
  %flags1 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags1, align 8
  %1 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body2:                                         ; preds = %entry
  %work_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock) #12
  %scan = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81
  %scan_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 3
  %2 = ptrtoint ptr %scan_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock, i32 noundef %call3) #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268468224, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.qla24xx_async_gpnft) #12
  br label %cleanup

if.end9:                                          ; preds = %do.body2
  %or = or i32 %3, 1
  %4 = ptrtoint ptr %scan_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %scan_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock, i32 noundef %call3) #12
  %conv13 = zext i8 %fc4_type to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %fc4_type)
  %cmp14 = icmp eq i8 %fc4_type, 8
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end9
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268468224, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.qla24xx_async_gpnft) #12
  %tobool17.not = icmp eq ptr %sp, null
  br i1 %tobool17.not, label %if.then16.if.end19_crit_edge, label %if.then18

if.then16.if.end19_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %5 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %free, align 8
  tail call void %6(ptr noundef nonnull %sp) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16.if.end19_crit_edge
  %call20 = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef null, i32 noundef 3264)
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.body24, label %if.end41

do.body24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock) #12
  %7 = ptrtoint ptr %scan_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_flags, align 4
  %and39 = and i32 %8, -2
  store i32 %and39, ptr %scan_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock, i32 noundef %call32) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end19
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %req_dma = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8208, ptr noundef %req_dma, i32 noundef 3264, i32 noundef 0) #12
  %req = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %req, align 8
  %req_allocated_size = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %req_allocated_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8208, ptr %req_allocated_size, align 8
  %tobool51.not = icmp eq ptr %call.i, null
  br i1 %tobool51.not, label %if.then52, label %if.end71

if.then52:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.40) #12
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock) #12
  %15 = ptrtoint ptr %scan_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_flags, align 4
  %and69 = and i32 %16, -2
  store i32 %and69, ptr %scan_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock, i32 noundef %call62) #12
  %vha.i = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 7
  %17 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vha.i, align 8
  %vref_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %18, i32 0, i32 60
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #12, !srcloc !438
  %20 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vha.i, align 8
  %vref_waitq.i = getelementptr inbounds %struct.scsi_qla_host, ptr %21, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %qpair.i = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 14
  %22 = ptrtoint ptr %qpair.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qpair.i, align 8
  store ptr null, ptr %qpair.i, align 8
  %done.i.i = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 24
  %24 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @qla2xxx_rel_done_warning, ptr %done.i.i, align 4
  %free.i.i = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 25
  %25 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @qla2xxx_rel_free_warning, ptr %free.i.i, align 8
  %srb_mempool.i.i = getelementptr inbounds %struct.qla_qpair, ptr %23, i32 0, i32 9
  %26 = ptrtoint ptr %srb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %srb_mempool.i.i, align 8
  tail call void @mempool_free(ptr noundef nonnull %call20, ptr noundef %27) #12
  %ref_count.i.i = getelementptr inbounds %struct.qla_qpair, ptr %23, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #12
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #12, !srcloc !438
  br label %cleanup

if.end71:                                         ; preds = %if.end41
  %req_size = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 20, ptr %req_size, align 8
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %max_fibre_devices = getelementptr inbounds %struct.qla_hw_data, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %max_fibre_devices to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_fibre_devices, align 4
  %conv75 = zext i16 %33 to i32
  %sub = shl nuw nsw i32 %conv75, 4
  %add = add nuw nsw i32 %sub, 16
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 128
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %call.i358 = tail call ptr @dma_alloc_attrs(ptr noundef %dev78, i32 noundef %add, ptr noundef %rsp_dma, i32 noundef 3264, i32 noundef 0) #12
  %rsp = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i358, ptr %rsp, align 4
  %rsp_allocated_size = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %rsp_allocated_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %rsp_allocated_size, align 4
  %tobool89.not = icmp eq ptr %call.i358, null
  br i1 %tobool89.not, label %if.then90, label %if.end124

if.then90:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.40) #12
  %call100 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock) #12
  %38 = ptrtoint ptr %scan_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scan_flags, align 4
  %and107 = and i32 %39, -2
  store i32 %and107, ptr %scan_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock, i32 noundef %call100) #12
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 128
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %req_allocated_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %req_allocated_size, align 8
  %46 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %req, align 8
  %48 = ptrtoint ptr %req_dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %req_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev111, i32 noundef %45, ptr noundef %47, i32 noundef %49, i32 noundef 0) #12
  %50 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %req, align 8
  %vha.i359 = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 7
  %51 = ptrtoint ptr %vha.i359 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vha.i359, align 8
  %vref_count.i360 = getelementptr inbounds %struct.scsi_qla_host, ptr %52, i32 0, i32 60
  %call.i.i.i361 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i360, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %vref_count.i360, i32 1, i32 3, i32 1) #12
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i360, ptr %vref_count.i360, i32 1, ptr elementtype(i32) %vref_count.i360) #12, !srcloc !438
  %54 = ptrtoint ptr %vha.i359 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vha.i359, align 8
  %vref_waitq.i362 = getelementptr inbounds %struct.scsi_qla_host, ptr %55, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq.i362, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %qpair.i363 = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 14
  %56 = ptrtoint ptr %qpair.i363 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %qpair.i363, align 8
  store ptr null, ptr %qpair.i363, align 8
  %done.i.i364 = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 24
  %58 = ptrtoint ptr %done.i.i364 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @qla2xxx_rel_done_warning, ptr %done.i.i364, align 4
  %free.i.i365 = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 25
  %59 = ptrtoint ptr %free.i.i365 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @qla2xxx_rel_free_warning, ptr %free.i.i365, align 8
  %srb_mempool.i.i366 = getelementptr inbounds %struct.qla_qpair, ptr %57, i32 0, i32 9
  %60 = ptrtoint ptr %srb_mempool.i.i366 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %srb_mempool.i.i366, align 8
  tail call void @mempool_free(ptr noundef nonnull %call20, ptr noundef %61) #12
  %ref_count.i.i367 = getelementptr inbounds %struct.qla_qpair, ptr %57, i32 0, i32 1
  %call.i.i.i.i368 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i367, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i367, i32 1, i32 3, i32 1) #12
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i367, ptr %ref_count.i.i367, i32 1, ptr elementtype(i32) %ref_count.i.i367) #12, !srcloc !438
  br label %cleanup

if.end124:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %rsp_size = getelementptr inbounds %struct.srb, ptr %call20, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add, ptr %rsp_size, align 4
  %size = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 1
  %64 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268468224, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.qla24xx_async_gpnft, i32 noundef %65) #12
  %66 = ptrtoint ptr %scan to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %scan, align 4
  %68 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size, align 4
  %70 = call ptr @memset(ptr %67, i32 0, i32 %69)
  br label %if.end134

if.else:                                          ; preds = %if.end9
  %tobool131.not = icmp eq ptr %sp, null
  br i1 %tobool131.not, label %if.then132, label %if.else.if.end134_crit_edge

if.else.if.end134_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then132:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.55) #12
  br label %cleanup

if.end134:                                        ; preds = %if.else.if.end134_crit_edge, %if.end124
  %sp.addr.0 = phi ptr [ %call20, %if.end124 ], [ %sp, %if.else.if.end134_crit_edge ]
  %type = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 11
  %71 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 15, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 12
  %72 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.56, ptr %name, align 8
  %hw135 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %73 = ptrtoint ptr %hw135 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw135, align 4
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %74, i32 0, i32 34
  %75 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base_qpair, align 4
  %chip_reset = getelementptr inbounds %struct.qla_qpair, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %chip_reset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chip_reset, align 4
  %gen1 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 17
  %79 = ptrtoint ptr %gen1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %gen1, align 8
  %gen2 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 18
  %80 = ptrtoint ptr %gen2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv13, ptr %gen2, align 4
  %u137 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 22
  %timeout = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 22, i32 0, i32 2
  %81 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout, align 8
  %call138 = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add139 = add i32 %call138, 2
  tail call void @qla2x00_init_timer(ptr noundef nonnull %sp.addr.0, i32 noundef %add139) #12
  %rsp_size142 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %rsp_size142 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rsp_size142, align 4
  %rsp145 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %84 = ptrtoint ptr %rsp145 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rsp145, align 4
  %86 = call ptr @memset(ptr %85, i32 0, i32 %83)
  %req151 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %87 = ptrtoint ptr %req151 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %req151, align 8
  %req_size154 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %89 = ptrtoint ptr %req_size154 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %req_size154, align 8
  %91 = call ptr @memset(ptr %88, i32 0, i32 %90)
  %92 = load ptr, ptr %req151, align 8
  %93 = call ptr @memset(ptr %92, i32 0, i32 8208)
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %92, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %92, i32 0, i32 2
  %95 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %92, i32 0, i32 3
  %96 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %92, i32 0, i32 1
  %97 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 370, ptr %command.i, align 4
  %conv.i = and i32 %83, 65535
  %sub.i = add nsw i32 %conv.i, -16
  %div.i = sdiv i32 %sub.i, 4
  %conv7.i = trunc i32 %div.i to i16
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %92, i32 0, i32 2
  %98 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv7.i, ptr %max_rsp_size.i, align 2
  %port_type = getelementptr inbounds %struct.ct_sns_req, ptr %92, i32 0, i32 5, i32 0, i32 0, i32 3
  %99 = ptrtoint ptr %port_type to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %fc4_type, ptr %port_type, align 1
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %u137, i32 0, i32 1
  %100 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 2044, ptr %nport_handle, align 4
  %done = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 24
  %101 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @qla2x00_async_gpnft_gnnft_sp_done, ptr %done, align 4
  %102 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 9
  %104 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %handle, align 8
  %106 = load i8, ptr %port_type, align 1
  %conv166 = zext i8 %106 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.57, ptr noundef %103, i32 noundef %105, i32 noundef %conv166) #12
  %call167 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %sp.addr.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168.not = icmp eq i32 %call167, 0
  br i1 %cmp168.not, label %if.end134.cleanup_crit_edge, label %done_free_sp

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

done_free_sp:                                     ; preds = %if.end134
  %107 = ptrtoint ptr %req151 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %req151, align 8
  %tobool175.not = icmp eq ptr %108, null
  br i1 %tobool175.not, label %done_free_sp.if.end192_crit_edge, label %if.then176

done_free_sp.if.end192_crit_edge:                 ; preds = %done_free_sp
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.then176:                                       ; preds = %done_free_sp
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %hw135 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw135, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 128
  %dev179 = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %req_allocated_size182 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %113 = ptrtoint ptr %req_allocated_size182 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %req_allocated_size182, align 8
  %req_dma188 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %115 = ptrtoint ptr %req_dma188 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %req_dma188, align 8
  tail call void @dma_free_attrs(ptr noundef %dev179, i32 noundef %114, ptr noundef nonnull %108, i32 noundef %116, i32 noundef 0) #12
  %117 = ptrtoint ptr %req151 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %req151, align 8
  br label %if.end192

if.end192:                                        ; preds = %if.then176, %done_free_sp.if.end192_crit_edge
  %118 = ptrtoint ptr %rsp145 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rsp145, align 4
  %tobool196.not = icmp eq ptr %119, null
  br i1 %tobool196.not, label %if.end192.if.end213_crit_edge, label %if.then197

if.end192.if.end213_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end213

if.then197:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %hw135 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw135, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 128
  %dev200 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %rsp_allocated_size203 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %124 = ptrtoint ptr %rsp_allocated_size203 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rsp_allocated_size203, align 4
  %rsp_dma209 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %126 = ptrtoint ptr %rsp_dma209 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rsp_dma209, align 4
  tail call void @dma_free_attrs(ptr noundef %dev200, i32 noundef %125, ptr noundef nonnull %119, i32 noundef %127, i32 noundef 0) #12
  %128 = ptrtoint ptr %rsp145 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %rsp145, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.then197, %if.end192.if.end213_crit_edge
  %free214 = getelementptr inbounds %struct.srb, ptr %sp.addr.0, i32 0, i32 25
  %129 = ptrtoint ptr %free214 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %free214, align 8
  tail call void %130(ptr noundef nonnull %sp.addr.0) #12
  %call224 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock) #12
  %131 = ptrtoint ptr %scan_flags to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %scan_flags, align 4
  %and231 = and i32 %132, -2
  store i32 %and231, ptr %scan_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %cmp234 = icmp eq i32 %and231, 0
  br i1 %cmp234, label %if.then236, label %if.end213.if.end242_crit_edge

if.end213.if.end242_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end242

if.then236:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268468224, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.qla24xx_async_gpnft) #12
  %133 = ptrtoint ptr %scan_flags to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %scan_flags, align 4
  %or239 = or i32 %134, 2
  store i32 %or239, ptr %scan_flags, align 4
  %scan_work = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 81, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %135 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %135, ptr noundef %scan_work, i32 noundef 5) #12
  br label %if.end242

if.end242:                                        ; preds = %if.then236, %if.end213.if.end242_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock, i32 noundef %call224) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end242, %if.end134.cleanup_crit_edge, %if.then132, %if.then90, %if.then52, %do.body24, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 258, %if.then7 ], [ %call167, %if.end242 ], [ 258, %if.then90 ], [ 258, %if.then52 ], [ 258, %do.body24 ], [ 258, %if.then132 ], [ 258, %entry.cleanup_crit_edge ], [ 0, %if.end134.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_async_gpnft_gnnft_sp_done(ptr noundef %sp, i32 noundef %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %req = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %command = getelementptr inbounds %struct.ct_sns_req, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %command, align 4
  %gen2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 18
  %6 = ptrtoint ptr %gen2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gen2, align 4
  %name = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 65535, ptr noundef nonnull @.str.185, ptr noundef %9, i32 noundef %res, i32 noundef %7) #12
  %timer = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 1
  %call = tail call i32 @del_timer(ptr noundef %timer) #12
  %rc5 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 19
  %10 = ptrtoint ptr %rc5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %res, ptr %rc5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res)
  %tobool.not = icmp eq i32 %res, 0
  br i1 %tobool.not, label %if.end32, label %if.then

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 266, i32 %res)
  %cmp = icmp eq i32 %res, 266
  br i1 %cmp, label %if.then10, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 65535, ptr noundef nonnull @.str.186, ptr noundef %12) #12
  tail call void @qla2x00_mark_all_devices_lost(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %call.i = tail call ptr @qla2x00_alloc_work(ptr noundef %1, i32 noundef 20) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.then13_crit_edge, label %qla2x00_post_gnnft_gpnft_done_work.exit

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

qla2x00_post_gnnft_gpnft_done_work.exit:          ; preds = %if.end
  %u.i = getelementptr inbounds %struct.qla_work_evt, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sp, ptr %u.i, align 4
  %call5.i = tail call i32 @qla2x00_post_work(ptr noundef %1, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool12.not = icmp eq i32 %call5.i, 0
  br i1 %tobool12.not, label %qla2x00_post_gnnft_gpnft_done_work.exit.cleanup_crit_edge, label %qla2x00_post_gnnft_gpnft_done_work.exit.if.then13_crit_edge

qla2x00_post_gnnft_gpnft_done_work.exit.if.then13_crit_edge: ; preds = %qla2x00_post_gnnft_gpnft_done_work.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

qla2x00_post_gnnft_gpnft_done_work.exit.cleanup_crit_edge: ; preds = %qla2x00_post_gnnft_gpnft_done_work.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %qla2x00_post_gnnft_gpnft_done_work.exit.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %type.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %15)
  %cond.i = icmp eq i16 %15, 13
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %u.i138 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  tail call void @qla2x00_els_dcmd2_free(ptr noundef %1, ptr noundef %u.i138) #12
  br label %qla24xx_sp_unmap.exit

sw.default.i:                                     ; preds = %if.then13
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 8
  %tobool.not.i139 = icmp eq ptr %17, null
  br i1 %tobool.not.i139, label %sw.default.i.if.end.i_crit_edge, label %if.then.i

sw.default.i.if.end.i_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %req_allocated_size.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %req_allocated_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req_allocated_size.i, align 8
  %req_dma.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %req_dma.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %23, ptr noundef nonnull %17, i32 noundef %25, i32 noundef 0) #12
  %26 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %req, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.default.i.if.end.i_crit_edge
  %rsp.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rsp.i, align 4
  %tobool17.not.i = icmp eq ptr %28, null
  br i1 %tobool17.not.i, label %if.end.i.qla24xx_sp_unmap.exit_crit_edge, label %if.then18.i

if.end.i.qla24xx_sp_unmap.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_sp_unmap.exit

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %hw19.i = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %29 = ptrtoint ptr %hw19.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw19.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 128
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %rsp_allocated_size.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %rsp_allocated_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rsp_allocated_size.i, align 4
  %rsp_dma.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %35 = ptrtoint ptr %rsp_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rsp_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21.i, i32 noundef %34, ptr noundef nonnull %28, i32 noundef %36, i32 noundef 0) #12
  %37 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rsp.i, align 4
  br label %qla24xx_sp_unmap.exit

qla24xx_sp_unmap.exit:                            ; preds = %if.then18.i, %if.end.i.qla24xx_sp_unmap.exit_crit_edge, %sw.bb.i
  %free.i = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %38 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %free.i, align 8
  tail call void %39(ptr noundef %sp) #12
  %work_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 3
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock) #12
  %scan_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 81, i32 3
  %40 = ptrtoint ptr %scan_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_flags, align 4
  %and = and i32 %41, -2
  store i32 %and, ptr %scan_flags, align 4
  %scan_retry = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 81, i32 2
  %42 = ptrtoint ptr %scan_retry to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %scan_retry, align 4
  %inc = add i16 %43, 1
  store i16 %inc, ptr %scan_retry, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock, i32 noundef %call18) #12
  %44 = ptrtoint ptr %scan_retry to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %scan_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %45)
  %cmp26 = icmp ult i16 %45, 5
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %qla24xx_sp_unmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dpc_flags) #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags) #12
  tail call void @qla2xxx_wake_dpc(ptr noundef %1) #12
  br label %cleanup

if.else:                                          ; preds = %qla24xx_sp_unmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 65535, ptr noundef nonnull @.str.187, ptr noundef %12) #12
  br label %cleanup

if.end32:                                         ; preds = %entry
  %hw.i140 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %46 = ptrtoint ptr %hw.i140 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw.i140, align 4
  %max_fibre_devices.i = getelementptr inbounds %struct.qla_hw_data, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %max_fibre_devices.i, align 4
  %conv.i = zext i16 %49 to i32
  %rsp.i141 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %50 = ptrtoint ptr %rsp.i141 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rsp.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp250.not.i = icmp eq i16 %49, 0
  br i1 %cmp250.not.i, label %if.end32.qla2x00_find_free_fcp_nvme_slot.exit_crit_edge, label %for.body.lr.ph.i

if.end32.qla2x00_find_free_fcp_nvme_slot.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_find_free_fcp_nvme_slot.exit

for.body.lr.ph.i:                                 ; preds = %if.end32
  %52 = ptrtoint ptr %gen2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gen2, align 4
  %54 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req, align 8
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %command.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %command.i, align 4
  %conv15.i = and i32 %53, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv15.i)
  %cmp16.i = icmp eq i32 %conv15.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 370, i16 %57)
  %cmp52.i = icmp eq i16 %57, 370
  %scan103.i = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 81
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc124.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.0252.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %j.1.i, %for.inc124.i.for.body.i_crit_edge ]
  %i.0251.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc125.i, %for.inc124.i.for.body.i_crit_edge ]
  %port_id.i = getelementptr %struct.ct_sns_gpnft_rsp, ptr %51, i32 0, i32 1, i32 %i.0251.i, i32 1
  %58 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port_id.i, align 1
  %arrayidx8.i = getelementptr %struct.ct_sns_gpnft_rsp, ptr %51, i32 0, i32 1, i32 %i.0251.i, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr %struct.ct_sns_gpnft_rsp, ptr %51, i32 0, i32 1, i32 %i.0251.i, i32 1, i32 2
  %62 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx10.i, align 1
  %port_name.i = getelementptr %struct.ct_sns_gpnft_rsp, ptr %51, i32 0, i32 1, i32 %i.0251.i, i32 3
  %64 = ptrtoint ptr %port_name.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %65 = load i64, ptr %port_name.i, align 1
  %id.sroa.0.sroa.10.0.insert.ext.i = zext i8 %63 to i24
  %id.sroa.0.sroa.9.0.insert.ext.i = zext i8 %61 to i24
  %id.sroa.0.sroa.9.0.insert.shift.i = shl nuw nsw i24 %id.sroa.0.sroa.9.0.insert.ext.i, 8
  %id.sroa.0.sroa.0.0.insert.ext.i = zext i8 %59 to i24
  %id.sroa.0.sroa.0.0.insert.shift.i = shl nuw i24 %id.sroa.0.sroa.0.0.insert.ext.i, 16
  %id.sroa.0.sroa.9.0.insert.insert.i = or i24 %id.sroa.0.sroa.0.0.insert.shift.i, %id.sroa.0.sroa.10.0.insert.ext.i
  %id.sroa.0.sroa.0.0.insert.insert.i = or i24 %id.sroa.0.sroa.9.0.insert.insert.i, %id.sroa.0.sroa.9.0.insert.shift.i
  %id.sroa.0.0.insert.ext.i = zext i24 %id.sroa.0.sroa.0.0.insert.insert.i to i32
  %cmp11.i = icmp eq i24 %id.sroa.0.sroa.0.0.insert.insert.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %cmp13.i = icmp eq i64 %65, 0
  %or.cond.i = select i1 %cmp11.i, i1 true, i1 %cmp13.i
  br i1 %or.cond.i, label %for.body.i.for.inc124.i_crit_edge, label %if.end.i143

for.body.i.for.inc124.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc124.i

if.end.i143:                                      ; preds = %for.body.i
  %66 = ptrtoint ptr %scan103.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %scan103.i, align 4
  br i1 %cmp16.i, label %if.then18.i144, label %if.else50.i

if.then18.i144:                                   ; preds = %if.end.i143
  br i1 %cmp52.i, label %if.then22.i, label %if.then18.i144.for.body32.i_crit_edge

if.then18.i144.for.body32.i_crit_edge:            ; preds = %if.then18.i144
  br label %for.body32.i

if.then22.i:                                      ; preds = %if.then18.i144
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %j.0252.i
  %68 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 3)
  store i24 %id.sroa.0.sroa.0.0.insert.insert.i, ptr %arrayidx23.i, align 4
  %id.sroa.11.0.id24.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx23.i, i32 3
  %69 = ptrtoint ptr %id.sroa.11.0.id24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %id.sroa.11.0.id24.sroa_idx.i, align 1
  %port_name25.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %j.0252.i, i32 2
  %70 = ptrtoint ptr %port_name.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %port_name.i, align 4
  %72 = ptrtoint ptr %port_name25.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %71, ptr %port_name25.i, align 4
  %inc.i = add i32 %j.0252.i, 1
  %fc4type.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %j.0252.i, i32 1
  %73 = ptrtoint ptr %fc4type.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %fc4type.i, align 4
  br label %for.inc124.i

for.body32.i:                                     ; preds = %for.inc.i.for.body32.i_crit_edge, %if.then18.i144.for.body32.i_crit_edge
  %k.0249.i = phi i32 [ %inc48.i, %for.inc.i.for.body32.i_crit_edge ], [ 0, %if.then18.i144.for.body32.i_crit_edge ]
  %arrayidx35.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %k.0249.i
  %74 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load39.i = load i32, ptr %arrayidx35.i, align 4
  %bf.lshr40.i = lshr i32 %bf.load39.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr40.i, i32 %id.sroa.0.0.insert.ext.i)
  %cmp41.i = icmp eq i32 %bf.lshr40.i, %id.sroa.0.0.insert.ext.i
  br i1 %cmp41.i, label %if.then43.i, label %for.inc.i

if.then43.i:                                      ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  %node_name.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %k.0249.i, i32 3
  %75 = ptrtoint ptr %node_name.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 %65, ptr %node_name.i, align 4
  br label %for.inc124.i

for.inc.i:                                        ; preds = %for.body32.i
  %inc48.i = add nuw nsw i32 %k.0249.i, 1
  %exitcond262.not.i = icmp eq i32 %inc48.i, %conv.i
  br i1 %exitcond262.not.i, label %for.inc.i.for.inc124.i_crit_edge, label %for.inc.i.for.body32.i_crit_edge

for.inc.i.for.body32.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.i

for.inc.i.for.inc124.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc124.i

if.else50.i:                                      ; preds = %if.end.i143
  br i1 %cmp52.i, label %if.else50.i.for.body58.i_crit_edge, label %if.else50.i.for.body102.i_crit_edge

if.else50.i.for.body102.i_crit_edge:              ; preds = %if.else50.i
  br label %for.body102.i

if.else50.i.for.body58.i_crit_edge:               ; preds = %if.else50.i
  br label %for.body58.i

for.body58.i:                                     ; preds = %for.inc70.i.for.body58.i_crit_edge, %if.else50.i.for.body58.i_crit_edge
  %k.1245.i = phi i32 [ %inc71.i, %for.inc70.i.for.body58.i_crit_edge ], [ 0, %if.else50.i.for.body58.i_crit_edge ]
  %port_name62.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %k.1245.i, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %port_name62.i, ptr noundef dereferenceable(8) %port_name.i, i32 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i145 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i145, label %if.then67.i, label %for.inc70.i

if.then67.i:                                      ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #14
  %fc4type68.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %k.1245.i, i32 1
  %76 = ptrtoint ptr %fc4type68.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fc4type68.i, align 4
  %or.i = or i32 %77, 2
  store i32 %or.i, ptr %fc4type68.i, align 4
  br label %for.inc124.i

for.inc70.i:                                      ; preds = %for.body58.i
  %inc71.i = add nuw nsw i32 %k.1245.i, 1
  %exitcond260.not.i = icmp eq i32 %inc71.i, %conv.i
  br i1 %exitcond260.not.i, label %for.inc70.i.for.body78.i_crit_edge, label %for.inc70.i.for.body58.i_crit_edge

for.inc70.i.for.body58.i_crit_edge:               ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body58.i

for.inc70.i.for.body78.i_crit_edge:               ; preds = %for.inc70.i
  br label %for.body78.i

for.body78.i:                                     ; preds = %for.inc94.i.for.body78.i_crit_edge, %for.inc70.i.for.body78.i_crit_edge
  %k.2247.i = phi i32 [ %inc95.i, %for.inc94.i.for.body78.i_crit_edge ], [ 0, %for.inc70.i.for.body78.i_crit_edge ]
  %port_name82.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %k.2247.i, i32 2
  %78 = ptrtoint ptr %port_name82.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %port_name82.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %tobool85.not.i = icmp eq i64 %79, 0
  br i1 %tobool85.not.i, label %if.else87.i, label %for.inc94.i

if.else87.i:                                      ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx81.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %k.2247.i
  %80 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 3)
  store i24 %id.sroa.0.sroa.0.0.insert.insert.i, ptr %arrayidx81.i, align 4
  %id.sroa.11.0.id88.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx81.i, i32 3
  %81 = ptrtoint ptr %id.sroa.11.0.id88.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %id.sroa.11.0.id88.sroa_idx.i, align 1
  %82 = ptrtoint ptr %port_name.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %83 = load i64, ptr %port_name.i, align 4
  %84 = ptrtoint ptr %port_name82.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 %83, ptr %port_name82.i, align 4
  %fc4type93.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %k.2247.i, i32 1
  %85 = ptrtoint ptr %fc4type93.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %fc4type93.i, align 4
  br label %for.inc124.i

for.inc94.i:                                      ; preds = %for.body78.i
  %inc95.i = add nuw nsw i32 %k.2247.i, 1
  %exitcond261.not.i = icmp eq i32 %inc95.i, %conv.i
  br i1 %exitcond261.not.i, label %for.inc94.i.for.inc124.i_crit_edge, label %for.inc94.i.for.body78.i_crit_edge

for.inc94.i.for.body78.i_crit_edge:               ; preds = %for.inc94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body78.i

for.inc94.i.for.inc124.i_crit_edge:               ; preds = %for.inc94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc124.i

for.body102.i:                                    ; preds = %for.inc119.i.for.body102.i_crit_edge, %if.else50.i.for.body102.i_crit_edge
  %k.3243.i = phi i32 [ %inc120.i, %for.inc119.i.for.body102.i_crit_edge ], [ 0, %if.else50.i.for.body102.i_crit_edge ]
  %arrayidx105.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %k.3243.i
  %86 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load109.i = load i32, ptr %arrayidx105.i, align 4
  %bf.lshr110.i = lshr i32 %bf.load109.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr110.i, i32 %id.sroa.0.0.insert.ext.i)
  %cmp111.i = icmp eq i32 %bf.lshr110.i, %id.sroa.0.0.insert.ext.i
  br i1 %cmp111.i, label %if.then113.i, label %for.inc119.i

if.then113.i:                                     ; preds = %for.body102.i
  call void @__sanitizer_cov_trace_pc() #14
  %node_name114.i = getelementptr %struct.fab_scan_rp, ptr %67, i32 %k.3243.i, i32 3
  %87 = ptrtoint ptr %node_name114.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 %65, ptr %node_name114.i, align 4
  br label %for.inc124.i

for.inc119.i:                                     ; preds = %for.body102.i
  %inc120.i = add nuw nsw i32 %k.3243.i, 1
  %exitcond.not.i = icmp eq i32 %inc120.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc119.i.for.inc124.i_crit_edge, label %for.inc119.i.for.body102.i_crit_edge

for.inc119.i.for.body102.i_crit_edge:             ; preds = %for.inc119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body102.i

for.inc119.i.for.inc124.i_crit_edge:              ; preds = %for.inc119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc124.i

for.inc124.i:                                     ; preds = %for.inc119.i.for.inc124.i_crit_edge, %if.then113.i, %for.inc94.i.for.inc124.i_crit_edge, %if.else87.i, %if.then67.i, %for.inc.i.for.inc124.i_crit_edge, %if.then43.i, %if.then22.i, %for.body.i.for.inc124.i_crit_edge
  %j.1.i = phi i32 [ %j.0252.i, %for.body.i.for.inc124.i_crit_edge ], [ %inc.i, %if.then22.i ], [ %j.0252.i, %if.then43.i ], [ %j.0252.i, %if.else87.i ], [ %j.0252.i, %if.then113.i ], [ %j.0252.i, %if.then67.i ], [ %j.0252.i, %for.inc.i.for.inc124.i_crit_edge ], [ %j.0252.i, %for.inc94.i.for.inc124.i_crit_edge ], [ %j.0252.i, %for.inc119.i.for.inc124.i_crit_edge ]
  %inc125.i = add nuw nsw i32 %i.0251.i, 1
  %exitcond263.not.i = icmp eq i32 %inc125.i, %conv.i
  br i1 %exitcond263.not.i, label %for.inc124.i.qla2x00_find_free_fcp_nvme_slot.exit_crit_edge, label %for.inc124.i.for.body.i_crit_edge

for.inc124.i.for.body.i_crit_edge:                ; preds = %for.inc124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc124.i.qla2x00_find_free_fcp_nvme_slot.exit_crit_edge: ; preds = %for.inc124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla2x00_find_free_fcp_nvme_slot.exit

qla2x00_find_free_fcp_nvme_slot.exit:             ; preds = %for.inc124.i.qla2x00_find_free_fcp_nvme_slot.exit_crit_edge, %if.end32.qla2x00_find_free_fcp_nvme_slot.exit_crit_edge
  %conv33 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv33)
  %cmp34 = icmp eq i32 %conv33, 8
  br i1 %cmp34, label %land.lhs.true, label %qla2x00_find_free_fcp_nvme_slot.exit.if.end68_crit_edge

qla2x00_find_free_fcp_nvme_slot.exit.if.end68_crit_edge: ; preds = %qla2x00_find_free_fcp_nvme_slot.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

land.lhs.true:                                    ; preds = %qla2x00_find_free_fcp_nvme_slot.exit
  %flags36 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 8
  %88 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %88)
  %bf.load = load volatile i32, ptr %flags36, align 8
  %89 = and i32 %bf.load, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool37.not = icmp ne i32 %89, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 371, i16 %5)
  %cmp40 = icmp eq i16 %5, 371
  %or.cond = select i1 %tobool37.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %do.body44, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

do.body44:                                        ; preds = %land.lhs.true
  %work_lock50 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 3
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock50) #12
  %scan_flags58 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 81, i32 3
  %90 = ptrtoint ptr %scan_flags58 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %scan_flags58, align 4
  %and59 = and i32 %91, -2
  store i32 %and59, ptr %scan_flags58, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock50, i32 noundef %call52) #12
  %92 = ptrtoint ptr %rc5 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %rc5, align 8
  %call.i146 = tail call ptr @qla2x00_alloc_work(ptr noundef %1, i32 noundef 18) #12
  %tobool.not.i147 = icmp eq ptr %call.i146, null
  br i1 %tobool.not.i147, label %do.body44.if.then64_crit_edge, label %qla2x00_post_nvme_gpnft_work.exit

do.body44.if.then64_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

qla2x00_post_nvme_gpnft_work.exit:                ; preds = %do.body44
  %u.i148 = getelementptr inbounds %struct.qla_work_evt, ptr %call.i146, i32 0, i32 3
  %93 = ptrtoint ptr %u.i148 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 40, ptr %u.i148, align 4
  %sp4.i = getelementptr inbounds %struct.qla_work_evt, ptr %call.i146, i32 0, i32 3, i32 0, i32 1
  %94 = ptrtoint ptr %sp4.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %sp, ptr %sp4.i, align 4
  %call5.i149 = tail call i32 @qla2x00_post_work(ptr noundef %1, ptr noundef nonnull %call.i146) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i149)
  %tobool63.not = icmp eq i32 %call5.i149, 0
  br i1 %tobool63.not, label %qla2x00_post_nvme_gpnft_work.exit.cleanup_crit_edge, label %qla2x00_post_nvme_gpnft_work.exit.if.then64_crit_edge

qla2x00_post_nvme_gpnft_work.exit.if.then64_crit_edge: ; preds = %qla2x00_post_nvme_gpnft_work.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

qla2x00_post_nvme_gpnft_work.exit.cleanup_crit_edge: ; preds = %qla2x00_post_nvme_gpnft_work.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then64:                                        ; preds = %qla2x00_post_nvme_gpnft_work.exit.if.then64_crit_edge, %do.body44.if.then64_crit_edge
  %type.i151 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %95 = ptrtoint ptr %type.i151 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %type.i151, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %96)
  %cond.i152 = icmp eq i16 %96, 13
  br i1 %cond.i152, label %sw.bb.i154, label %sw.default.i157

sw.bb.i154:                                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %u.i153 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  tail call void @qla2x00_els_dcmd2_free(ptr noundef %1, ptr noundef %u.i153) #12
  br label %qla24xx_sp_unmap.exit172

sw.default.i157:                                  ; preds = %if.then64
  %97 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %req, align 8
  %tobool.not.i156 = icmp eq ptr %98, null
  br i1 %tobool.not.i156, label %sw.default.i157.if.end.i165_crit_edge, label %if.then.i162

sw.default.i157.if.end.i165_crit_edge:            ; preds = %sw.default.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i165

if.then.i162:                                     ; preds = %sw.default.i157
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %hw.i140 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw.i140, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 128
  %dev.i159 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %req_allocated_size.i160 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %103 = ptrtoint ptr %req_allocated_size.i160 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %req_allocated_size.i160, align 8
  %req_dma.i161 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %105 = ptrtoint ptr %req_dma.i161 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %req_dma.i161, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i159, i32 noundef %104, ptr noundef nonnull %98, i32 noundef %106, i32 noundef 0) #12
  %107 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %req, align 8
  br label %if.end.i165

if.end.i165:                                      ; preds = %if.then.i162, %sw.default.i157.if.end.i165_crit_edge
  %108 = ptrtoint ptr %rsp.i141 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rsp.i141, align 4
  %tobool17.not.i164 = icmp eq ptr %109, null
  br i1 %tobool17.not.i164, label %if.end.i165.qla24xx_sp_unmap.exit172_crit_edge, label %if.then18.i170

if.end.i165.qla24xx_sp_unmap.exit172_crit_edge:   ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_sp_unmap.exit172

if.then18.i170:                                   ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %hw.i140 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw.i140, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 128
  %dev21.i167 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %rsp_allocated_size.i168 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %114 = ptrtoint ptr %rsp_allocated_size.i168 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rsp_allocated_size.i168, align 4
  %rsp_dma.i169 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %116 = ptrtoint ptr %rsp_dma.i169 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rsp_dma.i169, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21.i167, i32 noundef %115, ptr noundef nonnull %109, i32 noundef %117, i32 noundef 0) #12
  %118 = ptrtoint ptr %rsp.i141 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %rsp.i141, align 4
  br label %qla24xx_sp_unmap.exit172

qla24xx_sp_unmap.exit172:                         ; preds = %if.then18.i170, %if.end.i165.qla24xx_sp_unmap.exit172_crit_edge, %sw.bb.i154
  %free.i171 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %119 = ptrtoint ptr %free.i171 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %free.i171, align 8
  tail call void %120(ptr noundef %sp) #12
  %dpc_flags65 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dpc_flags65) #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags65) #12
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %qla2x00_find_free_fcp_nvme_slot.exit.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 370, i16 %5)
  %cmp70 = icmp eq i16 %5, 370
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.end68
  %call.i173 = tail call ptr @qla2x00_alloc_work(ptr noundef %1, i32 noundef 19) #12
  %tobool.not.i174 = icmp eq ptr %call.i173, null
  br i1 %tobool.not.i174, label %if.then72.if.then78_crit_edge, label %if.then72.if.end76_crit_edge

if.then72.if.end76_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then72.if.then78_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.else74:                                        ; preds = %if.end68
  %call.i180 = tail call ptr @qla2x00_alloc_work(ptr noundef %1, i32 noundef 20) #12
  %tobool.not.i181 = icmp eq ptr %call.i180, null
  br i1 %tobool.not.i181, label %if.else74.if.then78_crit_edge, label %if.else74.if.end76_crit_edge

if.else74.if.end76_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.else74.if.then78_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.end76:                                         ; preds = %if.else74.if.end76_crit_edge, %if.then72.if.end76_crit_edge
  %call.i180.sink236 = phi ptr [ %call.i173, %if.then72.if.end76_crit_edge ], [ %call.i180, %if.else74.if.end76_crit_edge ]
  %u.i182 = getelementptr inbounds %struct.qla_work_evt, ptr %call.i180.sink236, i32 0, i32 3
  %121 = ptrtoint ptr %u.i182 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %sp, ptr %u.i182, align 4
  %call5.i183 = tail call i32 @qla2x00_post_work(ptr noundef %1, ptr noundef nonnull %call.i180.sink236) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i183)
  %tobool77.not = icmp eq i32 %call5.i183, 0
  br i1 %tobool77.not, label %if.end76.cleanup_crit_edge, label %if.end76.if.then78_crit_edge

if.end76.if.then78_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then78:                                        ; preds = %if.end76.if.then78_crit_edge, %if.else74.if.then78_crit_edge, %if.then72.if.then78_crit_edge
  %type.i187 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %122 = ptrtoint ptr %type.i187 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %type.i187, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %123)
  %cond.i188 = icmp eq i16 %123, 13
  br i1 %cond.i188, label %sw.bb.i190, label %sw.default.i193

sw.bb.i190:                                       ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %u.i189 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  tail call void @qla2x00_els_dcmd2_free(ptr noundef %1, ptr noundef %u.i189) #12
  br label %qla24xx_sp_unmap.exit208

sw.default.i193:                                  ; preds = %if.then78
  %124 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %req, align 8
  %tobool.not.i192 = icmp eq ptr %125, null
  br i1 %tobool.not.i192, label %sw.default.i193.if.end.i201_crit_edge, label %if.then.i198

sw.default.i193.if.end.i201_crit_edge:            ; preds = %sw.default.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i201

if.then.i198:                                     ; preds = %sw.default.i193
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %hw.i140 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw.i140, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 128
  %dev.i195 = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %req_allocated_size.i196 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %130 = ptrtoint ptr %req_allocated_size.i196 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %req_allocated_size.i196, align 8
  %req_dma.i197 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %132 = ptrtoint ptr %req_dma.i197 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %req_dma.i197, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i195, i32 noundef %131, ptr noundef nonnull %125, i32 noundef %133, i32 noundef 0) #12
  %134 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %req, align 8
  br label %if.end.i201

if.end.i201:                                      ; preds = %if.then.i198, %sw.default.i193.if.end.i201_crit_edge
  %135 = ptrtoint ptr %rsp.i141 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rsp.i141, align 4
  %tobool17.not.i200 = icmp eq ptr %136, null
  br i1 %tobool17.not.i200, label %if.end.i201.qla24xx_sp_unmap.exit208_crit_edge, label %if.then18.i206

if.end.i201.qla24xx_sp_unmap.exit208_crit_edge:   ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla24xx_sp_unmap.exit208

if.then18.i206:                                   ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %hw.i140 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw.i140, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 128
  %dev21.i203 = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44
  %rsp_allocated_size.i204 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %141 = ptrtoint ptr %rsp_allocated_size.i204 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rsp_allocated_size.i204, align 4
  %rsp_dma.i205 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %143 = ptrtoint ptr %rsp_dma.i205 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rsp_dma.i205, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21.i203, i32 noundef %142, ptr noundef nonnull %136, i32 noundef %144, i32 noundef 0) #12
  %145 = ptrtoint ptr %rsp.i141 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %rsp.i141, align 4
  br label %qla24xx_sp_unmap.exit208

qla24xx_sp_unmap.exit208:                         ; preds = %if.then18.i206, %if.end.i201.qla24xx_sp_unmap.exit208_crit_edge, %sw.bb.i190
  %free.i207 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %146 = ptrtoint ptr %free.i207 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %free.i207, align 8
  tail call void %147(ptr noundef %sp) #12
  %dpc_flags79 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dpc_flags79) #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags79) #12
  br label %cleanup

cleanup:                                          ; preds = %qla24xx_sp_unmap.exit208, %if.end76.cleanup_crit_edge, %qla24xx_sp_unmap.exit172, %qla2x00_post_nvme_gpnft_work.exit.cleanup_crit_edge, %if.else, %if.then28, %qla2x00_post_gnnft_gpnft_done_work.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla_scan_work_fn(ptr noundef %work) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -2348
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %add.ptr3, i32 noundef 65535, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.qla_scan_work_fn) #12
  %dpc_flags = getelementptr i8, ptr %work, i32 -2200
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dpc_flags) #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags) #12
  tail call void @qla2xxx_wake_dpc(ptr noundef %add.ptr3) #12
  %work_lock = getelementptr i8, ptr %work, i32 -2324
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %work_lock) #12
  %scan_flags = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %scan_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scan_flags, align 4
  %and = and i32 %1, -3
  store i32 %and, ptr %scan_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %work_lock, i32 noundef %call8) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_wake_dpc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_handle_gnnid_event(ptr noundef %vha, ptr nocapture noundef readonly %ea) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ea, align 4
  %call = tail call i32 @qla24xx_post_gnl_work(ptr noundef %vha, ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_async_gnnid(ptr noundef %vha, ptr noundef %fcport) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags, align 8
  %1 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags1 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 35
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %disc_state.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 50
  %4 = ptrtoint ptr %disc_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %disc_state.i, align 8
  %shadow_disc_state.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 51
  br label %while.cond.i

while.cond.i:                                     ; preds = %atomic_cmpxchg.exit.i.while.cond.i_crit_edge, %if.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shadow_disc_state.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %shadow_disc_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %shadow_disc_state.i, align 4
  %shl4.i = shl i32 %6, 4
  %or.i = or i32 %shl4.i, 1
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %shadow_disc_state.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @llvm.prefetch.p0(ptr %shadow_disc_state.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %while.cond.i
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %shadow_disc_state.i, ptr %shadow_disc_state.i, i32 %6, i32 %or.i, ptr elementtype(i32) %shadow_disc_state.i) #12, !srcloc !441
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !442
  %cmp.i = icmp eq i32 %6, %asmresult3.i.i.i.i
  br i1 %cmp.i, label %qla2x00_set_fcport_disc_state.exit, label %atomic_cmpxchg.exit.i.while.cond.i_crit_edge

atomic_cmpxchg.exit.i.while.cond.i_crit_edge:     ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

qla2x00_set_fcport_disc_state.exit:               ; preds = %atomic_cmpxchg.exit.i
  %vha.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 1
  %8 = ptrtoint ptr %vha.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vha.i, align 8
  %port_name.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 5
  %and.i = and i32 %6, 15
  %arrayidx.i = getelementptr [11 x ptr], ptr @port_dstate_str, i32 0, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %d_id.i = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 6
  %12 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i = load i32, ptr %d_id.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %9, i32 noundef 8500, ptr noundef nonnull @.str.188, ptr noundef %port_name.i, ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef %bf.lshr.i) #12
  %call = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef %fcport, i32 noundef 2592)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %qla2x00_set_fcport_disc_state.exit.cleanup_crit_edge, label %if.end5

qla2x00_set_fcport_disc_state.exit.cleanup_crit_edge: ; preds = %qla2x00_set_fcport_disc_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %qla2x00_set_fcport_disc_state.exit
  %13 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags1, align 8
  %or = or i32 %14, 8
  store i32 %or, ptr %flags1, align 8
  %type = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 11
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 15, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 12
  %16 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.60, ptr %name, align 8
  %rscn_gen = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 58
  %17 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rscn_gen, align 8
  %gen1 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 17
  %19 = ptrtoint ptr %gen1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %gen1, align 8
  %login_gen = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 56
  %20 = ptrtoint ptr %login_gen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %login_gen, align 8
  %gen2 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 18
  %22 = ptrtoint ptr %gen2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %gen2, align 4
  %u = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22
  %timeout = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 2
  %23 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout, align 8
  %call7 = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add = add i32 %call7, 2
  tail call void @qla2x00_init_timer(ptr noundef nonnull %call, i32 noundef %add) #12
  %ct_desc = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 49
  %24 = ptrtoint ptr %ct_desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ct_desc, align 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 8208)
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %25, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %25, i32 0, i32 3
  %29 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 275, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %max_rsp_size.i, align 2
  %port_id = getelementptr inbounds %struct.ct_sns_req, ptr %25, i32 0, i32 5, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack = load i32, ptr %d_id.i, align 8
  %tmp.coerce.0.extract.shift = lshr i32 %.unpack, 8
  %tmp.coerce.0.extract.trunc = trunc i32 %tmp.coerce.0.extract.shift to i24
  %33 = ptrtoint ptr %port_id to i32
  call void @__asan_storeN_noabort(i32 %33, i32 3)
  store i24 %tmp.coerce.0.extract.trunc, ptr %port_id, align 1
  %34 = load ptr, ptr %ct_desc, align 8
  %req14 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %req14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %req14, align 8
  %ct_sns_dma = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 49, i32 1
  %36 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ct_sns_dma, align 4
  %req_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %req_dma to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %req_dma, align 8
  %39 = load ptr, ptr %ct_desc, align 8
  %rsp = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %40 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %rsp, align 4
  %41 = load i32, ptr %ct_sns_dma, align 4
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rsp_dma, align 4
  %req_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 20, ptr %req_size, align 8
  %rsp_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 24, ptr %rsp_size, align 4
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %u, i32 0, i32 1
  %45 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2044, ptr %nport_handle, align 4
  %done = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 24
  %46 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @qla2x00_async_gnnid_sp_done, ptr %done, align 4
  %47 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 9
  %49 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %handle, align 8
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 7
  %51 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %loop_id, align 4
  %conv = zext i16 %52 to i32
  %bf.load34 = load i32, ptr %d_id.i, align 8
  %bf.lshr35 = lshr i32 %bf.load34, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.61, ptr noundef %48, ptr noundef %port_name.i, i32 noundef %50, i32 noundef %conv, i32 noundef %bf.lshr35) #12
  %call36 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp.not = icmp eq i32 %call36, 0
  br i1 %cmp.not, label %if.end5.cleanup_crit_edge, label %done_free_sp

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

done_free_sp:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %free = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 25
  %53 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %free, align 8
  tail call void %54(ptr noundef nonnull %call) #12
  %55 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags1, align 8
  %and41 = and i32 %56, -9
  store i32 %and41, ptr %flags1, align 8
  br label %cleanup

cleanup:                                          ; preds = %done_free_sp, %if.end5.cleanup_crit_edge, %qla2x00_set_fcport_disc_state.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 258, %lor.lhs.false.cleanup_crit_edge ], [ 258, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call36, %done_free_sp ], [ 258, %qla2x00_set_fcport_disc_state.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_async_gnnid_sp_done(ptr noundef %sp, i32 noundef %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %fcport2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %2 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport2, align 4
  %ct_desc = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %ct_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ct_desc, align 8
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %5, i32 0, i32 1
  %flags = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 35
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, -9
  store i32 %and, ptr %flags, align 8
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %rsp, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %node_name4 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %node_name4 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %node_name4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %name = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 8
  %port_name = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 5
  %node_name9 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 8271, ptr noundef nonnull @.str.199, ptr noundef %12, i32 noundef %res, ptr noundef %port_name, ptr noundef %node_name9) #12
  %call.i = tail call i32 @qla24xx_post_gnl_work(ptr noundef %1, ptr noundef %3) #12
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %13 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %free, align 8
  tail call void %14(ptr noundef %sp) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_post_gnnid_work(ptr noundef %vha, ptr noundef %fcport) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #12
  %0 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %loop_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 5, label %entry.lor.lhs.false_crit_edge
    i32 3, label %entry.lor.lhs.false_crit_edge16
  ]

entry.lor.lhs.false_crit_edge16:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge16
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %3 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dpc_flags, align 4
  %5 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @qla2x00_alloc_work(ptr noundef %vha, i32 noundef 21) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %u = getelementptr inbounds %struct.qla_work_evt, ptr %call3, i32 0, i32 3
  %6 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fcport, ptr %u, align 4
  %call8 = tail call i32 @qla2x00_post_work(ptr noundef %vha, ptr noundef nonnull %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 258, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_handle_gfpnid_event(ptr noundef %vha, ptr nocapture noundef readonly %ea) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ea, align 4
  %port_name = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 5
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disc_state, align 8
  %fw_login_state = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 53
  %4 = ptrtoint ptr %fw_login_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_login_state, align 4
  %rc = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 4
  %6 = ptrtoint ptr %rc to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rc, align 4
  %conv = zext i16 %7 to i32
  %login_gen = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 56
  %8 = ptrtoint ptr %login_gen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %login_gen, align 8
  %sp = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 1
  %10 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sp, align 4
  %gen2 = getelementptr inbounds %struct.srb, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %gen2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gen2, align 4
  %rscn_gen = getelementptr inbounds %struct.fc_port, ptr %1, i32 0, i32 58
  %14 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rscn_gen, align 8
  %gen1 = getelementptr inbounds %struct.srb, ptr %11, i32 0, i32 17
  %16 = ptrtoint ptr %gen1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gen1, align 8
  %fcport_count = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 72
  %18 = ptrtoint ptr %fcport_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fcport_count, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.qla24xx_handle_gfpnid_event, ptr noundef %port_name, i32 noundef %3, i32 noundef %5, i32 noundef %conv, i32 noundef %9, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #12
  %20 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %disc_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %cmp = icmp eq i32 %21, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sp, align 4
  %gen26 = getelementptr inbounds %struct.srb, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %gen26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gen26, align 4
  %26 = ptrtoint ptr %login_gen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %login_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp8.not = icmp eq i32 %25, %27
  br i1 %cmp8.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8403, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.qla24xx_handle_gfpnid_event, ptr noundef %port_name) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %gen114 = getelementptr inbounds %struct.srb, ptr %23, i32 0, i32 17
  %28 = ptrtoint ptr %gen114 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gen114, align 8
  %30 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rscn_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp16.not = icmp eq i32 %29, %31
  br i1 %cmp16.not, label %if.end20, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.else
  %call.i = tail call ptr @qla2x00_alloc_work(ptr noundef %vha, i32 noundef 12) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end20.cleanup_crit_edge, label %if.end.i

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %u.i = getelementptr inbounds %struct.qla_work_evt, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %u.i, align 4
  %call2.i = tail call i32 @qla2x00_post_work(ptr noundef %vha, ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end20.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_async_gfpnid(ptr noundef %vha, ptr noundef %fcport) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags, align 8
  %1 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags1 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 35
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc ptr @qla2x00_get_sp(ptr noundef %vha, ptr noundef %fcport, i32 noundef 2592)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 15, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 12
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.63, ptr %name, align 8
  %rscn_gen = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 58
  %6 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rscn_gen, align 8
  %gen1 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %gen1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %gen1, align 8
  %login_gen = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 56
  %9 = ptrtoint ptr %login_gen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %login_gen, align 8
  %gen2 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 18
  %11 = ptrtoint ptr %gen2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %gen2, align 4
  %u = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22
  %timeout = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 2
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @qla2x00_async_iocb_timeout, ptr %timeout, align 8
  %call6 = tail call i32 @qla2x00_get_async_timeout(ptr noundef %vha) #12
  %add = add i32 %call6, 2
  tail call void @qla2x00_init_timer(ptr noundef nonnull %call, i32 noundef %add) #12
  %ct_desc = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 49
  %13 = ptrtoint ptr %ct_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ct_desc, align 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 8208)
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %14, align 4
  %gs_type.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %gs_type.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -4, ptr %gs_type.i, align 4
  %gs_subtype.i = getelementptr inbounds %struct.ct_cmd_hdr, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %gs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %gs_subtype.i, align 1
  %command.i = getelementptr inbounds %struct.ct_sns_req, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 284, ptr %command.i, align 4
  %max_rsp_size.i = getelementptr inbounds %struct.ct_sns_req, ptr %14, i32 0, i32 2
  %20 = ptrtoint ptr %max_rsp_size.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %max_rsp_size.i, align 2
  %port_id = getelementptr inbounds %struct.ct_sns_req, ptr %14, i32 0, i32 5, i32 0, i32 0, i32 1
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 6
  %21 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %d_id, align 8
  %tmp.coerce.0.extract.shift = lshr i32 %.unpack, 8
  %tmp.coerce.0.extract.trunc = trunc i32 %tmp.coerce.0.extract.shift to i24
  %22 = ptrtoint ptr %port_id to i32
  call void @__asan_storeN_noabort(i32 %22, i32 3)
  store i24 %tmp.coerce.0.extract.trunc, ptr %port_id, align 1
  %23 = load ptr, ptr %ct_desc, align 8
  %req13 = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %req13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %req13, align 8
  %ct_sns_dma = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 49, i32 1
  %25 = ptrtoint ptr %ct_sns_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ct_sns_dma, align 4
  %req_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %req_dma to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %req_dma, align 8
  %28 = load ptr, ptr %ct_desc, align 8
  %rsp = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %rsp, align 4
  %30 = load i32, ptr %ct_sns_dma, align 4
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rsp_dma, align 4
  %req_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 20, ptr %req_size, align 8
  %rsp_size = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 24, ptr %rsp_size, align 4
  %nport_handle = getelementptr inbounds %struct.ct_arg, ptr %u, i32 0, i32 1
  %34 = ptrtoint ptr %nport_handle to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2044, ptr %nport_handle, align 4
  %done = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 24
  %35 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @qla2x00_async_gfpnid_sp_done, ptr %done, align 4
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 8
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 5
  %handle = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 9
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %handle, align 8
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 7
  %40 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %loop_id, align 4
  %conv = zext i16 %41 to i32
  %bf.load33 = load i32, ptr %d_id, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.61, ptr noundef %37, ptr noundef %port_name, i32 noundef %39, i32 noundef %conv, i32 noundef %bf.lshr34) #12
  %call35 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp.not = icmp eq i32 %call35, 0
  br i1 %cmp.not, label %if.end5.cleanup_crit_edge, label %done_free_sp

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

done_free_sp:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %free = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 25
  %42 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %free, align 8
  tail call void %43(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %done_free_sp, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 258, %lor.lhs.false.cleanup_crit_edge ], [ 258, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call35, %done_free_sp ], [ 258, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_async_gfpnid_sp_done(ptr noundef %sp, i32 noundef %res) #3 align 64 {
entry:
  %ea = alloca %struct.event_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %fcport2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %2 = ptrtoint ptr %fcport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport2, align 4
  %ct_desc = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %ct_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ct_desc, align 8
  %rsp = getelementptr inbounds %struct.ct_sns_rsp, ptr %5, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ea) #12
  %6 = ptrtoint ptr %rsp to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %rsp, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_port_name = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %fabric_port_name to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %fabric_port_name, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = getelementptr inbounds i8, ptr %ea, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 28)
  %11 = ptrtoint ptr %ea to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %ea, align 4
  %sp5 = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 1
  %12 = ptrtoint ptr %sp5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sp, ptr %sp5, align 4
  %conv = trunc i32 %res to i16
  %rc = getelementptr inbounds %struct.event_arg, ptr %ea, i32 0, i32 4
  %13 = ptrtoint ptr %rc to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %rc, align 4
  %name = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  %port_name6 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 5
  %fabric_port_name8 = getelementptr inbounds %struct.fc_port, ptr %3, i32 0, i32 31
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 8271, ptr noundef nonnull @.str.199, ptr noundef %15, i32 noundef %res, ptr noundef %port_name6, ptr noundef %fabric_port_name8) #12
  call void @qla24xx_handle_gfpnid_event(ptr noundef %1, ptr noundef nonnull %ea)
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %16 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free, align 8
  tail call void %17(ptr noundef %sp) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ea) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_post_gfpnid_work(ptr noundef %vha, ptr noundef %fcport) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #12
  %0 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %loop_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 5, label %entry.lor.lhs.false_crit_edge
    i32 3, label %entry.lor.lhs.false_crit_edge16
  ]

entry.lor.lhs.false_crit_edge16:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge16
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %3 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dpc_flags, align 4
  %5 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @qla2x00_alloc_work(ptr noundef %vha, i32 noundef 22) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %u = getelementptr inbounds %struct.qla_work_evt, ptr %call3, i32 0, i32 3
  %6 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fcport, ptr %u, align 4
  %call8 = tail call i32 @qla2x00_post_work(ptr noundef %vha, ptr noundef nonnull %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 258, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_async_sns_sp_done(ptr noundef %sp, i32 noundef %rc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %rc2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 19
  %2 = ptrtoint ptr %rc2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rc, ptr %rc2, align 8
  %3 = zext i32 %rc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %rc, label %if.else6 [
    i32 0, label %entry.err2.sink.split_crit_edge
    i32 256, label %if.then4
  ]

entry.err2.sink.split_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2.sink.split

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2.sink.split

if.else6:                                         ; preds = %entry
  %rsp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsp, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 8208)
  %retry_count = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 20
  %7 = ptrtoint ptr %retry_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retry_count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %retry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp9 = icmp sgt i32 %inc, 3
  br i1 %cmp9, label %if.else6.err2_crit_edge, label %if.end

if.else6.err2_crit_edge:                          ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end:                                           ; preds = %if.else6
  %name11 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %9 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name11, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 8271, ptr noundef nonnull @.str.70, ptr noundef %10, i32 noundef %rc, i32 noundef %inc) #12
  %call = tail call ptr @qla2x00_alloc_work(ptr noundef %1, i32 noundef 23) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.if.then24_crit_edge, label %if.end14

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 1
  %call16 = tail call i32 @del_timer(ptr noundef %timer) #12
  %u17 = getelementptr inbounds %struct.qla_work_evt, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %u17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sp, ptr %u17, align 4
  %call19 = tail call i32 @qla2x00_post_work(ptr noundef %1, ptr noundef nonnull %call) #12
  br label %cleanup

err2.sink.split:                                  ; preds = %if.then4, %entry.err2.sink.split_crit_edge
  %.str.69.sink = phi ptr [ @.str.69, %if.then4 ], [ @.str.68, %entry.err2.sink.split_crit_edge ]
  %name5 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 12
  %12 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name5, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %1, i32 noundef 8271, ptr noundef nonnull %.str.69.sink, ptr noundef %13) #12
  br label %err2

err2:                                             ; preds = %err2.sink.split, %if.else6.err2_crit_edge
  %call22 = tail call ptr @qla2x00_alloc_work(ptr noundef %1, i32 noundef 8) #12
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %err2.if.then24_crit_edge, label %if.end59

err2.if.then24_crit_edge:                         ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then24:                                        ; preds = %err2.if.then24_crit_edge, %if.end.if.then24_crit_edge
  %req = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 8
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %if.then24.if.end39_crit_edge, label %if.then28

if.then24.if.end39_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %req_allocated_size = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %req_allocated_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req_allocated_size, align 8
  %req_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %req_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull %15, i32 noundef %23, i32 noundef 0) #12
  %24 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %req, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %if.then24.if.end39_crit_edge
  %rsp42 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %rsp42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rsp42, align 4
  %tobool43.not = icmp eq ptr %26, null
  br i1 %tobool43.not, label %if.end39.if.end58_crit_edge, label %if.then44

if.end39.if.end58_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %hw45 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %27 = ptrtoint ptr %hw45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw45, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 128
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %rsp_allocated_size = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %rsp_allocated_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rsp_allocated_size, align 4
  %rsp_dma = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %33 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rsp_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev47, i32 noundef %32, ptr noundef nonnull %26, i32 noundef %34, i32 noundef 0) #12
  %35 = ptrtoint ptr %rsp42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rsp42, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then44, %if.end39.if.end58_crit_edge
  %free = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 25
  %36 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free, align 8
  tail call void %37(ptr noundef %sp) #12
  br label %cleanup

if.end59:                                         ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #14
  %u60 = getelementptr inbounds %struct.qla_work_evt, ptr %call22, i32 0, i32 3
  %38 = ptrtoint ptr %u60 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sp, ptr %u60, align 4
  %call62 = tail call i32 @qla2x00_post_work(ptr noundef %1, ptr noundef nonnull %call22) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end58, %if.end14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_send_sns(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla2x00_port_attributes(ptr noundef %vha, ptr noundef %entries, i32 noundef %callopt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %init_cb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 98
  %2 = ptrtoint ptr %init_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_cb, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !426) #12
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 110
  %8 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uts_ns.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nodename = getelementptr inbounds %struct.new_utsname, ptr %11, i32 0, i32 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 51
  %14 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost_data, align 8
  %system_hostname = getelementptr inbounds %struct.fc_host_attrs, ptr %15, i32 0, i32 29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %nodename, %cond.true ], [ %system_hostname, %cond.false ]
  %16 = ptrtoint ptr %entries to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %entries, align 4
  %a = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %entries, i32 0, i32 2
  %17 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %a, align 4
  %arrayidx3 = getelementptr [32 x i8], ptr %a, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr [32 x i8], ptr %a, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %arrayidx5, align 2
  %arrayidx7 = getelementptr [32 x i8], ptr %a, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx7, align 1
  %len = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %entries, i32 0, i32 1
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 36, ptr %len, align 2
  %22 = load i64, ptr %a, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8384, ptr noundef nonnull @.str.101, i64 noundef %22) #12
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load = load volatile i32, ptr %flags, align 8
  %24 = and i32 %bf.load, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not = icmp eq i32 %24, 0
  br i1 %tobool13.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx15 = getelementptr %struct.ct_fdmi_port_attr, ptr %entries, i32 0, i32 2, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayidx15, align 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8479, ptr noundef nonnull @.str.102, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %add.ptr19 = getelementptr i8, ptr %entries, i32 36
  %26 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %add.ptr19, align 4
  %call21 = tail call i32 @qla25xx_fdmi_port_speed_capability(ptr noundef %1)
  %a22 = getelementptr i8, ptr %entries, i32 40
  %27 = ptrtoint ptr %a22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call21, ptr %a22, align 4
  %len26 = getelementptr i8, ptr %entries, i32 38
  %28 = ptrtoint ptr %len26 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 8, ptr %len26, align 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8385, ptr noundef nonnull @.str.103, i32 noundef %call21) #12
  %add.ptr30 = getelementptr i8, ptr %entries, i32 44
  %29 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 3, ptr %add.ptr30, align 4
  %link_data_rate.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 47
  %30 = ptrtoint ptr %link_data_rate.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %link_data_rate.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %31)
  %32 = icmp ult i16 %31, 20
  br i1 %32, label %switch.lookup, label %if.end.qla25xx_fdmi_port_speed_currently.exit_crit_edge

if.end.qla25xx_fdmi_port_speed_currently.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %qla25xx_fdmi_port_speed_currently.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %33 = sext i16 %31 to i32
  %switch.gep = getelementptr inbounds [20 x i32], ptr @switch.table.qla2x00_port_attributes, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %qla25xx_fdmi_port_speed_currently.exit

qla25xx_fdmi_port_speed_currently.exit:           ; preds = %switch.lookup, %if.end.qla25xx_fdmi_port_speed_currently.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 32768, %if.end.qla25xx_fdmi_port_speed_currently.exit_crit_edge ]
  %a33 = getelementptr i8, ptr %entries, i32 48
  %35 = ptrtoint ptr %a33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i, ptr %a33, align 4
  %len37 = getelementptr i8, ptr %entries, i32 46
  %36 = ptrtoint ptr %len37 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 8, ptr %len37, align 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8386, ptr noundef nonnull @.str.104, i32 noundef %retval.0.i) #12
  %add.ptr41 = getelementptr i8, ptr %entries, i32 52
  %37 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 4, ptr %add.ptr41, align 4
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %38 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %device_type, align 4
  %and = and i32 %39, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %cond.false46, label %cond.true44

cond.true44:                                      ; preds = %qla25xx_fdmi_port_speed_currently.exit
  call void @__sanitizer_cov_trace_pc() #14
  %frame_payload_size = getelementptr inbounds %struct.init_cb_24xx, ptr %3, i32 0, i32 2
  br label %cond.end50

cond.false46:                                     ; preds = %qla25xx_fdmi_port_speed_currently.exit
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %init_cb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_cb, align 4
  %frame_payload_size48 = getelementptr inbounds %struct.init_cb_t, ptr %41, i32 0, i32 3
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false46, %cond.true44
  %cond51.in.in = phi ptr [ %frame_payload_size, %cond.true44 ], [ %frame_payload_size48, %cond.false46 ]
  %42 = ptrtoint ptr %cond51.in.in to i32
  call void @__asan_load2_noabort(i32 %42)
  %cond51.in637 = load i16, ptr %cond51.in.in, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %cond51.in637)
  %conv53 = zext i16 %43 to i32
  %a54 = getelementptr i8, ptr %entries, i32 56
  %44 = ptrtoint ptr %a54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv53, ptr %a54, align 4
  %len58 = getelementptr i8, ptr %entries, i32 54
  %45 = ptrtoint ptr %len58 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 8, ptr %len58, align 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8387, ptr noundef nonnull @.str.105, i32 noundef %conv53) #12
  %add.ptr62 = getelementptr i8, ptr %entries, i32 60
  %46 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 5, ptr %add.ptr62, align 4
  %a64 = getelementptr i8, ptr %entries, i32 64
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %47 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %host_no, align 4
  %call66 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a64, i32 noundef 32, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef %48) #12
  %49 = trunc i32 %call66 to i16
  %50 = add i16 %49, 8
  %conv75 = and i16 %50, -4
  %len76 = getelementptr i8, ptr %entries, i32 62
  %51 = ptrtoint ptr %len76 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv75, ptr %len76, align 2
  %conv77 = zext i16 %conv75 to i32
  %add78 = add nuw nsw i32 %conv77, 60
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8388, ptr noundef nonnull @.str.108, ptr noundef %a64) #12
  %add.ptr81 = getelementptr i8, ptr %entries, i32 %add78
  %52 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 6, ptr %add.ptr81, align 4
  %53 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cond, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool83.not = icmp eq i8 %54, 0
  br i1 %tobool83.not, label %cond.end50.if.then86_crit_edge, label %lor.lhs.false

cond.end50.if.then86_crit_edge:                   ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then86

lor.lhs.false:                                    ; preds = %cond.end50
  %call84 = tail call i32 @strncmp(ptr noundef %cond, ptr noundef nonnull dereferenceable(7) @.str.109, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %lor.lhs.false.if.then86_crit_edge, label %lor.lhs.false.if.end87_crit_edge

lor.lhs.false.if.end87_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

lor.lhs.false.if.then86_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then86

if.then86:                                        ; preds = %lor.lhs.false.if.then86_crit_edge, %cond.end50.if.then86_crit_edge
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %lor.lhs.false.if.end87_crit_edge
  %hostname.0 = phi ptr [ %cond, %lor.lhs.false.if.end87_crit_edge ], [ @.str.110, %if.then86 ]
  %a88 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr81, i32 0, i32 2
  %call90 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a88, i32 noundef 256, ptr noundef nonnull @.str.111, ptr noundef %hostname.0) #12
  %55 = trunc i32 %call90 to i16
  %56 = add i16 %55, 8
  %conv100 = and i16 %56, -4
  %len101 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr81, i32 0, i32 1
  %57 = ptrtoint ptr %len101 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv100, ptr %len101, align 2
  %conv102 = zext i16 %conv100 to i32
  %add103 = add nuw nsw i32 %add78, %conv102
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8389, ptr noundef nonnull @.str.112, ptr noundef %a88) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %callopt)
  %cmp = icmp eq i32 %callopt, 0
  br i1 %cmp, label %if.end87.done_crit_edge, label %if.end108

if.end87.done_crit_edge:                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end108:                                        ; preds = %if.end87
  %add.ptr109 = getelementptr i8, ptr %entries, i32 %add103
  %58 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 7, ptr %add.ptr109, align 4
  %a111 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr109, i32 0, i32 2
  %node_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 25
  %59 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %node_name, align 8
  %61 = ptrtoint ptr %a111 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %60, ptr %a111, align 4
  %len117 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr109, i32 0, i32 1
  %62 = ptrtoint ptr %len117 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 12, ptr %len117, align 2
  %add119 = add nuw nsw i32 %add103, 12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8390, ptr noundef nonnull @.str.113, i64 noundef %60) #12
  %add.ptr123 = getelementptr i8, ptr %entries, i32 %add119
  %63 = ptrtoint ptr %add.ptr123 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 8, ptr %add.ptr123, align 4
  %a125 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr123, i32 0, i32 2
  %port_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 26
  %64 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %port_name, align 8
  %66 = ptrtoint ptr %a125 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %65, ptr %a125, align 4
  %len131 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr123, i32 0, i32 1
  %67 = ptrtoint ptr %len131 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 12, ptr %len131, align 2
  %add133 = add nuw nsw i32 %add103, 24
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8391, ptr noundef nonnull @.str.114, i64 noundef %65) #12
  %add.ptr137 = getelementptr i8, ptr %entries, i32 %add133
  %68 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 9, ptr %add.ptr137, align 4
  %a139 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr137, i32 0, i32 2
  %69 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw, align 4
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %70, i32 0, i32 54
  %71 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %isp_type.i, align 8
  %and1.i = and i32 %72, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %model_number3.i = getelementptr inbounds %struct.qla_hw_data, ptr %70, i32 0, i32 195
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %fw_version.i = getelementptr inbounds %struct.qla_hw_data, ptr %70, i32 0, i32 278, i32 3
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a139, i32 noundef 128, ptr noundef nonnull @.str.15, ptr noundef %model_number3.i, ptr noundef %fw_version.i, ptr noundef nonnull @qla2x00_version_str) #12
  br label %qla2x00_get_sym_node_name.exit

if.end.i:                                         ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %fw_major_version.i = getelementptr inbounds %struct.qla_hw_data, ptr %70, i32 0, i32 135
  %73 = ptrtoint ptr %fw_major_version.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %fw_major_version.i, align 4
  %conv.i = zext i16 %74 to i32
  %fw_minor_version.i = getelementptr inbounds %struct.qla_hw_data, ptr %70, i32 0, i32 136
  %75 = ptrtoint ptr %fw_minor_version.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %fw_minor_version.i, align 2
  %conv5.i = zext i16 %76 to i32
  %fw_subminor_version.i = getelementptr inbounds %struct.qla_hw_data, ptr %70, i32 0, i32 137
  %77 = ptrtoint ptr %fw_subminor_version.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %fw_subminor_version.i, align 8
  %conv6.i = zext i16 %78 to i32
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a139, i32 noundef 128, ptr noundef nonnull @.str.16, ptr noundef %model_number3.i, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, ptr noundef nonnull @qla2x00_version_str) #12
  br label %qla2x00_get_sym_node_name.exit

qla2x00_get_sym_node_name.exit:                   ; preds = %if.end.i, %if.then.i
  %retval.0.i638 = phi i32 [ %call.i, %if.then.i ], [ %call7.i, %if.end.i ]
  %79 = trunc i32 %retval.0.i638 to i16
  %80 = add i16 %79, 8
  %conv151 = and i16 %80, -4
  %len152 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr137, i32 0, i32 1
  %81 = ptrtoint ptr %len152 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv151, ptr %len152, align 2
  %conv153 = zext i16 %conv151 to i32
  %add154 = add nuw nsw i32 %add133, %conv153
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8392, ptr noundef nonnull @.str.115, ptr noundef %a139) #12
  %add.ptr157 = getelementptr i8, ptr %entries, i32 %add154
  %82 = ptrtoint ptr %add.ptr157 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 10, ptr %add.ptr157, align 4
  %a159 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr157, i32 0, i32 2
  %83 = ptrtoint ptr %a159 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 127, ptr %a159, align 4
  %len163 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr157, i32 0, i32 1
  %84 = ptrtoint ptr %len163 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 8, ptr %len163, align 2
  %add165 = add nuw nsw i32 %add154, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8393, ptr noundef nonnull @.str.116, i32 noundef 127) #12
  %add.ptr167 = getelementptr i8, ptr %entries, i32 %add165
  %85 = ptrtoint ptr %add.ptr167 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 11, ptr %add.ptr167, align 4
  %a169 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr167, i32 0, i32 2
  %86 = ptrtoint ptr %a169 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 8, ptr %a169, align 4
  %len173 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr167, i32 0, i32 1
  %87 = ptrtoint ptr %len173 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 8, ptr %len173, align 2
  %add175 = add nuw nsw i32 %add154, 16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8394, ptr noundef nonnull @.str.117, i32 noundef 8) #12
  %add.ptr177 = getelementptr i8, ptr %entries, i32 %add175
  %88 = ptrtoint ptr %add.ptr177 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 12, ptr %add.ptr177, align 4
  %a179 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr177, i32 0, i32 2
  %fabric_node_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 27
  %89 = ptrtoint ptr %fabric_node_name to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %fabric_node_name, align 8
  %91 = ptrtoint ptr %a179 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %90, ptr %a179, align 4
  %len185 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr177, i32 0, i32 1
  %92 = ptrtoint ptr %len185 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 12, ptr %len185, align 2
  %add187 = add nuw nsw i32 %add154, 28
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8395, ptr noundef nonnull @.str.118, i64 noundef %90) #12
  %add.ptr191 = getelementptr i8, ptr %entries, i32 %add187
  %93 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 13, ptr %add.ptr191, align 4
  %a193 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr191, i32 0, i32 2
  %94 = ptrtoint ptr %a193 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %a193, align 4
  %arrayidx196 = getelementptr [32 x i8], ptr %a193, i32 0, i32 1
  %95 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %arrayidx196, align 1
  %arrayidx198 = getelementptr [32 x i8], ptr %a193, i32 0, i32 2
  %96 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %arrayidx198, align 2
  %arrayidx200 = getelementptr [32 x i8], ptr %a193, i32 0, i32 3
  %97 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx200, align 1
  %len204 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr191, i32 0, i32 1
  %98 = ptrtoint ptr %len204 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 36, ptr %len204, align 2
  %add206 = add nuw nsw i32 %add154, 64
  %99 = load i64, ptr %a193, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8396, ptr noundef nonnull @.str.119, i64 noundef %99) #12
  %add.ptr209 = getelementptr i8, ptr %entries, i32 %add206
  %100 = ptrtoint ptr %add.ptr209 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 257, ptr %add.ptr209, align 4
  %a211 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr209, i32 0, i32 2
  %101 = ptrtoint ptr %a211 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %a211, align 4
  %len215 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr209, i32 0, i32 1
  %102 = ptrtoint ptr %len215 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 8, ptr %len215, align 2
  %add217 = add nuw nsw i32 %add154, 72
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8397, ptr noundef nonnull @.str.120, i32 noundef 2) #12
  %add.ptr219 = getelementptr i8, ptr %entries, i32 %add217
  %103 = ptrtoint ptr %add.ptr219 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 258, ptr %add.ptr219, align 4
  %a221 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr219, i32 0, i32 2
  %104 = ptrtoint ptr %a221 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %a221, align 4
  %len225 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr219, i32 0, i32 1
  %105 = ptrtoint ptr %len225 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 8, ptr %len225, align 2
  %add227 = add nuw nsw i32 %add154, 80
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8398, ptr noundef nonnull @.str.121, i32 noundef 1) #12
  %add.ptr229 = getelementptr i8, ptr %entries, i32 %add227
  %106 = ptrtoint ptr %add.ptr229 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 259, ptr %add.ptr229, align 4
  %d_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %107 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %107)
  %bf.load231 = load i32, ptr %d_id, align 8
  %bf.lshr232 = lshr i32 %bf.load231, 8
  %a233 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr229, i32 0, i32 2
  %108 = ptrtoint ptr %a233 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %bf.lshr232, ptr %a233, align 4
  %len237 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr229, i32 0, i32 1
  %109 = ptrtoint ptr %len237 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 8, ptr %len237, align 2
  %add239 = add nuw nsw i32 %add154, 88
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8399, ptr noundef nonnull @.str.122, i32 noundef %bf.lshr232) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %callopt)
  %cmp241 = icmp eq i32 %callopt, 1
  br i1 %cmp241, label %qla2x00_get_sym_node_name.exit.done_crit_edge, label %lor.lhs.false243

qla2x00_get_sym_node_name.exit.done_crit_edge:    ; preds = %qla2x00_get_sym_node_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

lor.lhs.false243:                                 ; preds = %qla2x00_get_sym_node_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xsmartsan to i32))
  %110 = load i32, ptr @ql2xsmartsan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool244.not = icmp eq i32 %110, 0
  br i1 %tobool244.not, label %lor.lhs.false243.done_crit_edge, label %if.end246

lor.lhs.false243.done_crit_edge:                  ; preds = %lor.lhs.false243
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end246:                                        ; preds = %lor.lhs.false243
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr247 = getelementptr i8, ptr %entries, i32 %add239
  %111 = ptrtoint ptr %add.ptr247 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -3840, ptr %add.ptr247, align 4
  %a249 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr247, i32 0, i32 2
  %call251 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a249, i32 noundef 24, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.123) #12
  %112 = trunc i32 %call251 to i16
  %113 = add i16 %112, 8
  %conv261 = and i16 %113, -4
  %len262 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr247, i32 0, i32 1
  %114 = ptrtoint ptr %len262 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv261, ptr %len262, align 2
  %conv263 = zext i16 %conv261 to i32
  %add264 = add nuw nsw i32 %add239, %conv263
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8400, ptr noundef nonnull @.str.124, ptr noundef %a249) #12
  %add.ptr267 = getelementptr i8, ptr %entries, i32 %add264
  %115 = ptrtoint ptr %add.ptr267 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -3839, ptr %add.ptr267, align 4
  %a269 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr267, i32 0, i32 2
  %116 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %node_name, align 8
  %118 = ptrtoint ptr %a269 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 8)
  store i64 %117, ptr %a269, align 4
  %add.ptr275 = getelementptr i8, ptr %a269, i32 8
  %119 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %port_name, align 8
  %121 = ptrtoint ptr %add.ptr275 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 %120, ptr %add.ptr275, align 1
  %len281 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr267, i32 0, i32 1
  %122 = ptrtoint ptr %len281 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 20, ptr %len281, align 2
  %add283 = add nuw nsw i32 %add264, 20
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8401, ptr noundef nonnull @.str.125, i64 noundef %117, i64 noundef %120) #12
  %add.ptr291 = getelementptr i8, ptr %entries, i32 %add283
  %123 = ptrtoint ptr %add.ptr291 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 -3838, ptr %add.ptr291, align 4
  %a293 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr291, i32 0, i32 2
  %call295 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a293, i32 noundef 24, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.126) #12
  %124 = trunc i32 %call295 to i16
  %125 = add i16 %124, 8
  %conv305 = and i16 %125, -4
  %len306 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr291, i32 0, i32 1
  %126 = ptrtoint ptr %len306 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv305, ptr %len306, align 2
  %conv307 = zext i16 %conv305 to i32
  %add308 = add nuw nsw i32 %add283, %conv307
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8402, ptr noundef nonnull @.str.127, ptr noundef %a293) #12
  %add.ptr311 = getelementptr i8, ptr %entries, i32 %add308
  %127 = ptrtoint ptr %add.ptr311 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -3837, ptr %add.ptr311, align 4
  %a313 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr311, i32 0, i32 2
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 8
  %130 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %device, align 2
  %conv315 = zext i16 %131 to i32
  %call316 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %a313, i32 noundef 16, ptr noundef nonnull @.str.128, i32 noundef %conv315) #12
  %132 = trunc i32 %call316 to i16
  %133 = add i16 %132, 8
  %conv326 = and i16 %133, -4
  %len327 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr311, i32 0, i32 1
  %134 = ptrtoint ptr %len327 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv326, ptr %len327, align 2
  %conv328 = zext i16 %conv326 to i32
  %add329 = add nuw nsw i32 %add308, %conv328
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8403, ptr noundef nonnull @.str.129, ptr noundef %a313) #12
  %add.ptr332 = getelementptr i8, ptr %entries, i32 %add329
  %135 = ptrtoint ptr %add.ptr332 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 -3836, ptr %add.ptr332, align 4
  %vp_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 46
  %136 = ptrtoint ptr %vp_idx to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %vp_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %tobool335.not = icmp eq i16 %137, 0
  %cond336 = select i1 %tobool335.not, i32 1, i32 2
  %a337 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr332, i32 0, i32 2
  %138 = ptrtoint ptr %a337 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %cond336, ptr %a337, align 4
  %len341 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr332, i32 0, i32 1
  %139 = ptrtoint ptr %len341 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 8, ptr %len341, align 2
  %add343 = add nuw nsw i32 %add329, 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8404, ptr noundef nonnull @.str.130, i32 noundef %cond336) #12
  %add.ptr345 = getelementptr i8, ptr %entries, i32 %add343
  %140 = ptrtoint ptr %add.ptr345 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 -3834, ptr %add.ptr345, align 4
  %a347 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr345, i32 0, i32 2
  %141 = ptrtoint ptr %a347 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %a347, align 4
  %len351 = getelementptr inbounds %struct.ct_fdmi_port_attr, ptr %add.ptr345, i32 0, i32 1
  %142 = ptrtoint ptr %len351 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 8, ptr %len351, align 2
  %add353 = add nuw nsw i32 %add329, 16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8406, ptr noundef nonnull @.str.131, i32 noundef 1) #12
  br label %done

done:                                             ; preds = %if.end246, %lor.lhs.false243.done_crit_edge, %qla2x00_get_sym_node_name.exit.done_crit_edge, %if.end87.done_crit_edge
  %size.0 = phi i32 [ %add103, %if.end87.done_crit_edge ], [ %add239, %qla2x00_get_sym_node_name.exit.done_crit_edge ], [ %add353, %if.end246 ], [ %add239, %lor.lhs.false243.done_crit_edge ]
  ret i32 %size.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_get_vpd_field(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_rel_done_warning(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_rel_free_warning(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_mark_all_devices_lost(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 203)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 203)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424}
!llvm.named.register.sp = !{!426}
!llvm.module.flags = !{!427, !428, !429, !430, !431, !432, !433, !434}
!llvm.ident = !{!435}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 131, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 147, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 170, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 182, i32 8}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 238, i32 7}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 239, i32 56}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 259, i32 7}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 329, i32 7}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 330, i32 56}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 409, i32 8}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 412, i32 7}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 476, i32 8}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 479, i32 7}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 488, i32 8}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 675, i32 7}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 854, i32 31}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 857, i32 30}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 875, i32 7}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1376, i32 8}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1380, i32 8}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2570, i32 8}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2573, i32 7}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2685, i32 8}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2687, i32 7}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2695, i32 9}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2706, i32 8}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2774, i32 8}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2776, i32 11}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2778, i32 8}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2822, i32 6}
!60 = !{ptr @__func__.qla24xx_handle_gpsc_event, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2823, i32 6}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2837, i32 7}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2913, i32 13}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2939, i32 6}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3008, i32 6}
!70 = !{ptr @__func__.qla24xx_handle_gpnid_event, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3009, i32 6}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3046, i32 9}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3054, i32 9}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3062, i32 9}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3083, i32 10}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3095, i32 8}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3190, i32 13}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3213, i32 7}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3245, i32 6}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3296, i32 9}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3348, i32 13}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3374, i32 6}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3424, i32 6}
!96 = !{ptr @__func__.qla24xx_async_gnnft_done, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3424, i32 20}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3428, i32 7}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3442, i32 8}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3484, i32 9}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3544, i32 7}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3580, i32 13}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3596, i32 10}
!110 = !{ptr @__func__.qla24xx_async_gpnft_done, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3961, i32 20}
!112 = !{ptr @__func__.qla24xx_async_gpnft, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3975, i32 20}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3984, i32 7}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3992, i32 7}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4047, i32 7}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4052, i32 7}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4057, i32 13}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4080, i32 6}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4112, i32 7}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4131, i32 6}
!130 = !{ptr @__func__.qla_scan_work_fn, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4131, i32 36}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4189, i32 13}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4216, i32 6}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4256, i32 6}
!138 = !{ptr @__func__.qla24xx_handle_gfpnid_event, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4257, i32 6}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4317, i32 13}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 600, i32 13}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 609, i32 7}
!146 = !{ptr @__func__.qla_async_rftid, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 610, i32 7}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 645, i32 6}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 651, i32 7}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 512, i32 7}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 516, i32 7}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 525, i32 7}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 696, i32 13}
!160 = !{ptr @__func__.qla_async_rffid, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 706, i32 7}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 739, i32 6}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 745, i32 7}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 787, i32 13}
!168 = !{ptr @__func__.qla_async_rnnid, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 797, i32 7}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 830, i32 6}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 836, i32 7}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 894, i32 13}
!176 = !{ptr @__func__.qla_async_rsnn_nn, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 904, i32 7}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 943, i32 6}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1025, i32 7}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1029, i32 7}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1094, i32 7}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1098, i32 7}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1164, i32 8}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1168, i32 8}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1220, i32 8}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1224, i32 8}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1234, i32 8}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1282, i32 7}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1286, i32 7}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1292, i32 7}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1338, i32 7}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1342, i32 7}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1348, i32 7}
!210 = !{ptr @.str.94, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2301, i32 6}
!212 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2323, i32 6}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2333, i32 7}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2336, i32 52}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2342, i32 8}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2347, i32 7}
!222 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2352, i32 35}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1874, i32 6}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1878, i32 7}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1891, i32 6}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1902, i32 6}
!232 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1913, i32 6}
!234 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1919, i32 3}
!236 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1919, i32 17}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1925, i32 6}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1929, i32 39}
!242 = !{ptr @.str.110, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1930, i32 14}
!244 = !{ptr @.str.111, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1933, i32 3}
!246 = !{ptr @.str.112, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1939, i32 6}
!248 = !{ptr @.str.113, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1953, i32 6}
!250 = !{ptr @.str.114, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1964, i32 6}
!252 = !{ptr @.str.115, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1976, i32 6}
!254 = !{ptr @.str.116, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1987, i32 6}
!256 = !{ptr @.str.117, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1998, i32 6}
!258 = !{ptr @.str.118, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2010, i32 6}
!260 = !{ptr @.str.119, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2024, i32 6}
!262 = !{ptr @.str.120, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2036, i32 6}
!264 = !{ptr @.str.121, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2047, i32 6}
!266 = !{ptr @.str.122, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2058, i32 6}
!268 = !{ptr @.str.123, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2068, i32 9}
!270 = !{ptr @.str.124, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2074, i32 6}
!272 = !{ptr @.str.125, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2086, i32 6}
!274 = !{ptr @.str.126, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2095, i32 9}
!276 = !{ptr @.str.127, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2101, i32 6}
!278 = !{ptr @.str.128, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2108, i32 3}
!280 = !{ptr @.str.129, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2114, i32 6}
!282 = !{ptr @.str.130, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2125, i32 6}
!284 = !{ptr @.str.131, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2136, i32 6}
!286 = !{ptr @.str.132, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2167, i32 6}
!288 = !{ptr @.str.133, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2201, i32 6}
!290 = !{ptr @.str.134, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2213, i32 7}
!292 = !{ptr @.str.135, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2217, i32 52}
!294 = !{ptr @.str.136, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2223, i32 8}
!296 = !{ptr @.str.137, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2228, i32 7}
!298 = !{ptr @.str.138, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2234, i32 35}
!300 = !{ptr @.str.139, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1620, i32 9}
!302 = !{ptr @.str.140, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1626, i32 6}
!304 = !{ptr @.str.141, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1632, i32 37}
!306 = !{ptr @.str.142, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1640, i32 4}
!308 = !{ptr @.str.143, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1647, i32 6}
!310 = !{ptr @.str.144, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1659, i32 6}
!312 = !{ptr @.str.145, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1671, i32 6}
!314 = !{ptr @.str.146, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1678, i32 38}
!316 = !{ptr @.str.147, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1682, i32 38}
!318 = !{ptr @.str.148, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1689, i32 4}
!320 = !{ptr @.str.149, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1696, i32 6}
!322 = !{ptr @.str.150, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1708, i32 6}
!324 = !{ptr @.str.151, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1714, i32 3}
!326 = !{ptr @.str.152, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1721, i32 6}
!328 = !{ptr @.str.153, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1733, i32 6}
!330 = !{ptr @.str.154, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1741, i32 4}
!332 = !{ptr @.str.155, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1747, i32 4}
!334 = !{ptr @.str.156, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1748, i32 4}
!336 = !{ptr @.str.157, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1755, i32 6}
!338 = !{ptr @.str.158, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1768, i32 6}
!340 = !{ptr @.str.159, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1779, i32 6}
!342 = !{ptr @.str.160, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1789, i32 6}
!344 = !{ptr @.str.161, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1817, i32 3}
!346 = !{ptr @.str.162, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1823, i32 6}
!348 = !{ptr @.str.163, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1829, i32 9}
!350 = !{ptr @.str.164, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 1835, i32 6}
!352 = !{ptr @.str.165, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2257, i32 6}
!354 = !{ptr @.str.166, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2264, i32 7}
!356 = !{ptr @.str.167, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2265, i32 56}
!358 = !{ptr @.str.168, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2270, i32 7}
!360 = !{ptr @.str.169, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2385, i32 6}
!362 = !{ptr @.str.170, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2412, i32 6}
!364 = !{ptr @.str.171, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2422, i32 7}
!366 = !{ptr @.str.172, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2426, i32 52}
!368 = !{ptr @.str.173, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2432, i32 8}
!370 = !{ptr @.str.174, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2437, i32 7}
!372 = !{ptr @.str.175, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2443, i32 35}
!374 = !{ptr @.str.176, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2858, i32 6}
!376 = !{ptr @.str.177, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 2884, i32 7}
!378 = !{ptr @.str.178, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3116, i32 7}
!380 = !{ptr @.str.179, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3121, i32 7}
!382 = !{ptr @.str.180, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3874, i32 7}
!384 = !{ptr @__func__.qla24xx_async_gnnft, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3875, i32 7}
!386 = !{ptr @.str.181, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3880, i32 3}
!388 = !{ptr @.str.182, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3887, i32 6}
!390 = !{ptr @.str.183, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3892, i32 13}
!392 = !{ptr @.str.184, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3948, i32 7}
!394 = !{ptr @.str.185, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3767, i32 6}
!396 = !{ptr @.str.186, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3783, i32 11}
!398 = !{ptr @.str.187, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 3810, i32 9}
!400 = !{ptr @.str.188, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/scsi/qla2xxx/qla_inline.h", i32 123, i32 8}
!402 = !{ptr @.str.189, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2677, i32 2}
!404 = !{ptr @.str.190, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2679, i32 2}
!406 = !{ptr @.str.191, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2680, i32 2}
!408 = !{ptr @.str.192, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2681, i32 2}
!410 = !{ptr @.str.193, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2682, i32 2}
!412 = !{ptr @.str.194, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2683, i32 2}
!414 = !{ptr @.str.195, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2684, i32 2}
!416 = !{ptr @.str.196, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2685, i32 2}
!418 = !{ptr @.str.197, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2686, i32 2}
!420 = !{ptr @.str.198, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2687, i32 2}
!422 = !{ptr @port_dstate_str, !423, !"port_dstate_str", i1 false, i1 false}
!423 = !{!"../drivers/scsi/qla2xxx/qla_def.h", i32 2676, i32 27}
!424 = !{ptr @.str.199, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/scsi/qla2xxx/qla_gs.c", i32 4165, i32 6}
!426 = !{!"sp"}
!427 = !{i32 1, !"wchar_size", i32 2}
!428 = !{i32 1, !"min_enum_size", i32 4}
!429 = !{i32 8, !"branch-target-enforcement", i32 0}
!430 = !{i32 8, !"sign-return-address", i32 0}
!431 = !{i32 8, !"sign-return-address-all", i32 0}
!432 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!433 = !{i32 7, !"uwtable", i32 1}
!434 = !{i32 7, !"frame-pointer", i32 2}
!435 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!436 = !{i64 2148474215, i64 2148474241, i64 2148474270, i64 2148474304, i64 2148474335, i64 2148474358}
!437 = !{i64 2156886521}
!438 = !{i64 2148476680, i64 2148476706, i64 2148476735, i64 2148476769, i64 2148476800, i64 2148476823}
!439 = !{i64 2156885624}
!440 = !{i64 2148576038}
!441 = !{i64 957951, i64 957975, i64 957996, i64 958013, i64 958030}
!442 = !{i64 2148576264}
