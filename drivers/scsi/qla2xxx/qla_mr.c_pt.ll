; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_mr.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_mr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mbx_cmd_32 = type { i32, i32, [32 x i32], i32, ptr, i32, i8 }
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
%struct.rsp_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, [64 x i8] }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.req_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i16, i32, i32, ptr, i16, [64 x i8] }
%struct.device_reg_fx00 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.response_t = type { i8, i8, i8, i8, i32, [52 x i8], i32 }
%struct.qla_qpair = type { %struct.spinlock, %struct.atomic_t, i32, ptr, ptr, i32, i8, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.qla_counters, %struct.list_head, %struct.list_head, i16, i32, i64, %struct.qla_tgt_counters, i16, [94 x i8], %struct.qla_fw_resources, i32, i32, i32, [108 x i8] }
%struct.qla_counters = type { i64, i64, i64, i64 }
%struct.qla_tgt_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_fw_resources = type { i16, i16, i16, i16 }
%struct.srb = type { i8, [3 x i8], %struct.iocb_resource, %struct.kref, ptr, %struct.wait_queue_head, ptr, ptr, i8, i32, i16, i16, ptr, i32, ptr, ptr, %struct.list_head, i32, i32, i32, i32, ptr, %union.anon.83, %struct.anon.106, ptr, ptr, ptr }
%struct.iocb_resource = type { i8, i8, i16 }
%union.anon.83 = type { %struct.srb_iocb }
%struct.srb_iocb = type { %union.anon.84, %struct.timer_list, ptr }
%union.anon.84 = type { %struct.anon.87, [112 x i8] }
%struct.anon.87 = type { i64, i32, i32, %struct.completion, i16 }
%struct.anon.106 = type { i8, %struct.anon.107, %struct.anon.108 }
%struct.anon.107 = type { i32, ptr, i32 }
%struct.anon.108 = type { i32, ptr, i32 }
%struct.anon.88 = type { i8, i32, i32, ptr, ptr, i32, i32, i32, i32, i16, i32, i32, i32, i32, i16, %struct.completion, i32, i8 }
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
%struct.host_system_info = type { i32, [128 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i32] }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.register_host_info = type <{ %struct.host_system_info, i64, [64 x i32] }>
%struct.config_info_data = type <{ [16 x i8], [80 x i8], [160 x i8], [64 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], i8, i8, [2 x i8], i8, i8, [2 x i8], i32, i8, i8, i8, i64, i32, [16 x i8], i64, i64, i8, i32, i32 }>
%struct.port_info_data = type <{ i8, i8, i16, i32, [32 x i8], i8, i16, i8, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8, [8 x i8], [3 x i8], i8, i8, i32, i16, i8, i8, [8 x i8], i16, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, [48 x i32] }>
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qlafx00_tgt_node_info = type <{ [8 x i8], [8 x i8], i32, [128 x i8], [8 x i32], [4 x i64] }>
%struct.qla_work_evt = type { %struct.list_head, i32, i32, %union.anon.171 }
%union.anon.171 = type { %struct.anon.181 }
%struct.anon.181 = type { ptr, [64 x i8], i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.srb_cmd = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.anon.89 = type { i32, i16, i16, %struct.completion }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.fc_bsg_reply = type { i32, i32, %union.anon.186 }
%union.anon.186 = type { %struct.fc_bsg_ctels_reply }
%struct.fc_bsg_ctels_reply = type { i32, %struct.anon.187 }
%struct.anon.187 = type { i8, i8, i8, i8 }
%struct.cont_a64_entry_t = type { i8, i8, i8, i8, [5 x %struct.dsd64] }
%struct.dsd64 = type <{ i64, i32 }>
%struct.cmd_type_7_fx00 = type { i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i8, i8, %struct.scsi_lun, i8, i8, i8, i8, [16 x i8], i32, %struct.dsd64 }
%struct.scsi_lun = type { [8 x i8] }
%struct.cmd_a64_entry_t = type { i8, i8, i8, i8, i32, %union.target_id_t, i16, i16, i16, i16, i16, [16 x i8], i32, [2 x %struct.dsd64] }
%union.target_id_t = type { i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.fxdisc_entry_fx00 = type { i8, i8, i8, i8, i32, i32, i16, i16, i16, i16, i16, i8, i8, [1 x %struct.dsd64], [1 x %struct.dsd64], i32, i32, i32, i32 }
%struct.fc_bsg_request = type <{ i32, %union.anon.184 }>
%union.anon.184 = type { %struct.fc_bsg_host_vendor, [8 x i8] }
%struct.fc_bsg_host_vendor = type { i64, [0 x i32] }
%struct.qla_mt_iocb_rqst_fx00 = type { i32, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i16 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Entered %s.\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.qlafx00_driver_shutdown = private unnamed_addr constant [24 x i8] c"qlafx00_driver_shutdown\00", align 1
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Failed=%x.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Done %s.\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.qlafx00_init_firmware = private unnamed_addr constant [22 x i8] c"qlafx00_init_firmware\00", align 1
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed=%x mb[0]=%x.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed mailbox send register test\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCIe iSA\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla2xxx\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to reserve PIO/MMIO regions (%s), aborting.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid pci I/O region size (%s).\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid PCI mem BAR0 region size (%s), aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot remap MMIO (%s), aborting\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"region #2 not an MMIO resource (%s), aborting\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid PCI mem BAR2 region size (%s), aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Bars 0x%x, iobase0 0x%p, iobase2 0x%p\0A\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Waiting for init to complete...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_state=%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fw_state=%x curr time=%lx.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Firmware ready **** FAILED ****.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Firmware ready **** SUCCESS ****.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Configure devices -- dpc flags =0x%lx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Device Ready\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s *** FAILED ***.\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qlafx00_configure_devices = private unnamed_addr constant [26 x i8] c"qlafx00_configure_devices\00", align 1
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: exiting normally.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"fw returned mbx_intr_code: 0x%x, rqstq_intr_code: 0x%x  Req que offset 0x%x Rsp que offset 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register host info\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ISPFx00(%s): Critical temp timer, current SOC temperature: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qlafx00_timer_routine = private unnamed_addr constant [22 x i8] c"qlafx00_timer_routine\00", align 1
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device in failed state\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(%s): succeeded.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.qlafx00_reset_initialize = private unnamed_addr constant [25 x i8] c"qlafx00_reset_initialize\00", align 1
@__func__.qlafx00_abort_isp = private unnamed_addr constant [18 x i8] c"qlafx00_abort_isp\00", align 1
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Process critical temperature event aenmb[0]: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fxdisc\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Not able to get the system information\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"10.02.07.200-k\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ISP%04X: Host registration with firmware\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"os_type = '%d', sysname = '%s', nodname = '%s'\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"release = '%s', version = '%s'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"machine = '%s' domainname = '%s', hostdriver = '%s'\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Configuring PCI space...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to configure PCI space.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ISPFx00(%s): Critical temp timer, current SOC temperature: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qlafx00_initialize_adapter = private unnamed_addr constant [27 x i8] c"qlafx00_initialize_adapter\00", align 1
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ISP reset active.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: NULL response queue pointer.\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qlafx00_intr_handler = private unnamed_addr constant [21 x i8] c"qlafx00_intr_handler\00", align 1
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PCI channel failed permanently, exiting.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device in failed state, exiting.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Perm failure on EEH timeout MBX, exiting.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FW hung = %d.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cmd access timeout, cmd=0x%x, Exiting.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Prepare to issue mbox cmd=0x%x.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Going to unlock irq & waiting for interrupts. jiffies=%lx.\0A\00", [36 x i8] zeroinitializer }, align 32
@qlafx00_mailbox_command.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/qla2xxx/qla_mr.c\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cmd=%x Polling Mode.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Waited %d sec.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cmd=%x completed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"checking for additional resp interrupt.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Timeout, schedule isp_abort_needed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Mailbox cmd timeout occurred, cmd=0x%x, mb[0]=0x%x, eeh_busy=0x%x. Scheduling ISP abort.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout, calling abort_isp.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Mailbox cmd timeout occurred, cmd=0x%x, mb[0]=0x%x. Scheduling ISP abort \00", [54 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Finished abort_isp.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"**** Failed=%x mbx[0]=%x, mb[1]=%x, mb[2]=%x, mb[3]=%x, cmd=%x ****.\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.qlafx00_mailbox_command = private unnamed_addr constant [24 x i8] c"qlafx00_mailbox_command\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.qlafx00_mbx_reg_test = private unnamed_addr constant [21 x i8] c"qlafx00_mbx_reg_test\00", align 1
@__func__.qlafx00_get_firmware_state = private unnamed_addr constant [27 x i8] c"qlafx00_get_firmware_state\00", align 1
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Attach new target id 0x%x wwnn = %llx wwpn = %llx.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Listing Target bit map...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Target info scan failed -- assuming zero-entry result...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"TGT-ID Change(%s): Present tgt id: 0x%x state: 0x%x wwnn = %llx wwpn = %llx.\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.qlafx00_find_all_targets = private unnamed_addr constant [25 x i8] c"qlafx00_find_all_targets\00", align 1
@.str.65 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"TGT-ID Announce(%s): Discovered tgt id 0x%x wwnn = %llx wwpn = %llx.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TGT-ID: New fcport Added: %p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c" Existing TGT-ID %x did not get  offline event from firmware.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Performing ISP error recovery - ha = %p.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s Done done - ha=%p.\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.qlafx00_abort_isp_cleanup = private unnamed_addr constant [26 x i8] c"qlafx00_abort_isp_cleanup\00", align 1
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Detach TGT-ID: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Matching fcport(%p) found with TGT-ID: 0x%x and Remote TGT_ID: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aenmbx: 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"f/w returned mbx_intr_code: 0x%x, rqstq_intr_code: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Sending Driver shutdown fw_state 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Init f/w failed: aen[7]: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s **** FAILED ****.\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.qlafx00_init_fw_ready = private unnamed_addr constant [22 x i8] c"qlafx00_init_fw_ready\00", align 1
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s **** SUCCESS ****.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"req: %p, ring_fx00: %p, length_fx00: 0x%x,req->dma_fx00: 0x%llx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"rsp: %p, ring_fx00: %p, length_fx00: 0x%x,rsp->dma_fx00: 0x%llx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate memory for req_ring\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"req: %p req_ring pointer %p req len 0x%x req off 0x%x\0A, req->dma: 0x%llx\00", [55 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate memory for rsp_ring\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"rsp: %p rsp_ring pointer %p rsp len 0x%x rsp off 0x%x, rsp->dma: 0x%llx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MBX pointer ERROR.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ISP System Error - mbx1=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Asynchronous FW shutdown requested.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Asynchronous port Update received aenmb[0]: %x, aenmb[1]: %x, aenmb[2]: %x, aenmb[3]: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Asynchronous over temperature event received aenmb[0]: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Asynchronous normal temperature event received aenmb[0]: %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Asynchronous critical temperature event received aenmb[0]: %x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"AEN:%04x %04x %04x %04x :%04x %04x %04x %04x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"type of error status in response: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Received unknown response pkt type %x entry status=%x.\0A\00", [40 x i8] zeroinitializer }, align 32
@__const.qlafx00_error_entry.func = private unnamed_addr constant [11 x i8] c"ERROR-IOCB\00", align 1
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid status handle (0x%x).\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Command already returned (0x%x/%p).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Mid-layer underflow detected (0x%x of 0x%x bytes).\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"QUEUE FULL detected.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Dropped frame(s) detected (0x%x of 0x%x bytes).\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Mid-layer underflow detected (0x%x of 0x%x bytes, cp->underflow: 0x%x).\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"scsi_status: 0x%x, lscsi_status: 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Port down status: port-state=0x%x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [199 x i8], [57 x i8] } { [199 x i8] c"FCP command status: 0x%x-0x%x (0x%x) nexus=%ld:%d:%llu tgt_id: 0x%x lscsi_status: 0x%x cdb=%10phN len=0x%x rsp_info=%p resid=0x%x fw_resid=0x%x sense_len=0x%x, par_sense_len=0x%x, rsp_info_len=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@qlafx00_status_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.103 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sense_len=0x%x par_sense_len=0x%x track_sense_len=0x%x.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Check condition Sense data, nexus%ld:%d:%llu cmd=%p.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no SP, sp = %p\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no fw sense data, sp = %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cmd is NULL: already returned to OS (sp=%p).\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no sense data, sp = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sp=%p sense_len=0x%x sense_ptr=%p.\0A\00", [60 x i8] zeroinitializer }, align 32
@qlafx00_status_cont_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid handle count (0x%x).\0A\00", [34 x i8] zeroinitializer }, align 32
@__const.qlafx00_abort_iocb_entry.func = private unnamed_addr constant [9 x i8] c"ABT_IOCB\00", align 1
@__const.qlafx00_ioctl_iosb_entry.func = private unnamed_addr constant [10 x i8] c"IOSB_IOCB\00", align 1
@switch.table.qlafx00_get_host_speed = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 2, i32 0, i32 8, i32 0, i32 0, i32 0, i32 16, i32 0, i32 4], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 128, i64 129, i64 153]
@__sancov_gen_cov_switch_values.111 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 128, i64 129, i64 255]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 32849, i64 32864]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 32, i64 32775, i64 32785, i64 32786, i64 32788]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [9 x i64] [i64 7, i64 32, i64 32770, i64 32771, i64 32772, i64 32848, i64 32849, i64 32864, i64 33793]
@__sancov_gen_cov_switch_values.119 = internal global [8 x i64] [i64 6, i64 32, i64 32770, i64 32773, i64 32774, i64 32775, i64 32788, i64 32866]
@__sancov_gen_cov_switch_values.120 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 4, i64 8, i64 12, i64 13]
@__sancov_gen_cov_switch_values.121 = internal global [13 x i64] [i64 11, i64 16, i64 0, i64 1, i64 4, i64 5, i64 6, i64 21, i64 28, i64 40, i64 41, i64 42, i64 43]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 10240]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 10240]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 10240]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 305, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 319, i32 7 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 322, i32 7 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 416, i32 7 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 664, i32 7 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 694, i32 16 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 703, i32 22 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 745, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 747, i32 7 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 755, i32 7 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 761, i32 7 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 770, i32 7 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 776, i32 7 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 782, i32 7 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 799, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1057, i32 7 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1065, i32 9 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1079, i32 7 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1085, i32 7 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1088, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1305, i32 6 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1315, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1321, i32 7 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1324, i32 7 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1432, i32 6 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1451, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1547, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1597, i32 7 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1609, i32 6 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1731, i32 7 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1795, i32 13 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1830, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1856, i32 38 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1866, i32 36 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1870, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1873, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1878, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1882, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2017, i32 6 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2022, i32 7 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2049, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2065, i32 7 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2893, i32 7 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 57, i32 7 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 63, i32 7 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 75, i32 7 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 83, i32 7 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 96, i32 7 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 106, i32 6 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 139, i32 6 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 149, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 153, i32 7 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 172, i32 7 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 181, i32 7 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 214, i32 7 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 226, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 233, i32 9 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 243, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 250, i32 9 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 263, i32 9 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 274, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1266, i32 7 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1116, i32 6 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1134, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1160, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1169, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1181, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1185, i32 9 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1343, i32 7 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1383, i32 6 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1678, i32 6 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1663, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 907, i32 7 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 933, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 995, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1012, i32 9 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1025, i32 7 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1028, i32 7 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 824, i32 6 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 829, i32 6 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 847, i32 7 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 852, i32 6 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 862, i32 7 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 867, i32 6 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2853, i32 37 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2778, i32 7 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2784, i32 7 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2794, i32 7 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2802, i32 7 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2809, i32 7 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2816, i32 7 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2830, i32 7 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2719, i32 11 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2751, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2287, i32 7 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2311, i32 7 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2357, i32 9 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2370, i32 8 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2396, i32 9 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2409, i32 9 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2434, i32 8 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2484, i32 7 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2502, i32 7 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2130, i32 6 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2139, i32 7 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2538, i32 7 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2544, i32 7 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2550, i32 7 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2558, i32 7 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2563, i32 7 }
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.457 = private constant [33 x i8] c"../drivers/scsi/qla2xxx/qla_mr.c\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2622, i32 7 }
@___asan_gen_.459 = private unnamed_addr constant [36 x i8] c"switch.table.qlafx00_get_host_speed\00", align 1
@llvm.compiler.used = appending global [112 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @switch.table.qlafx00_get_host_speed], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 199, i32 256, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qlafx00_get_host_speed to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_driver_shutdown(ptr noundef %vha, i32 noundef %tmo) local_unnamed_addr #0 align 64 {
entry:
  %mc = alloca %struct.mbx_cmd_32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mc) #13
  %0 = getelementptr inbounds i8, ptr %mc, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 140)
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4454, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qlafx00_driver_shutdown) #13
  %mb = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 2
  %2 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 106, ptr %mb, align 4
  %3 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %mc, align 4
  %in_mb = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 1
  %4 = ptrtoint ptr %in_mb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %in_mb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmo)
  %tobool.not = icmp eq i32 %tmo, 0
  %spec.select = select i1 %tobool.not, i32 30, i32 %tmo
  %5 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  %flags = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %flags, align 4
  %call = call fastcc i32 @qlafx00_mailbox_command(ptr noundef %vha, ptr noundef nonnull %mc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.else3, label %if.then2

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4455, ptr noundef nonnull @.str.1, i32 noundef %call) #13
  br label %if.end4

if.else3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4456, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qlafx00_driver_shutdown) #13
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mc) #13
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlafx00_mailbox_command(ptr noundef %vha, ptr noundef %mcp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %error_state = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43
  %6 = ptrtoint ptr %error_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 4444, ptr noundef nonnull @.str.43) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 13
  %8 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_flags, align 4
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 4447, ptr noundef nonnull @.str.44) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase, align 4
  %flags4 = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load volatile i32, ptr %flags4, align 8
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %5, i32 0, i32 11
  %13 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dpc_flags, align 4
  %shr.i = lshr i32 %14, 3
  %and1.i = and i32 %shr.i, 1
  %flags7 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load8 = load volatile i32, ptr %flags7, align 8
  %16 = and i32 %bf.load8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 4469, ptr noundef nonnull @.str.45) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %17 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load14 = load volatile i32, ptr %flags7, align 8
  %18 = and i32 %bf.load14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %mb = getelementptr inbounds %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 2
  %19 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16395, ptr %mb, align 4
  %20 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load20 = load volatile i32, ptr %flags7, align 8
  %bf.lshr21 = lshr i32 %bf.load20, 10
  %bf.clear22 = and i32 %bf.lshr21, 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 4470, ptr noundef nonnull @.str.46, i32 noundef %bf.clear22) #13
  br label %premature_exit.thread

if.end23:                                         ; preds = %if.end12
  %mbx_cmd_comp = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 128
  %tov = getelementptr inbounds %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 5
  %21 = ptrtoint ptr %tov to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tov, align 4
  %mul = mul i32 %22, 100
  %call24 = tail call i32 @wait_for_completion_timeout(ptr noundef %mbx_cmd_comp, i32 noundef %mul) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %mb27 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 2
  %23 = ptrtoint ptr %mb27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mb27, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 4471, ptr noundef nonnull @.str.47, i32 noundef %24) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %25 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load31 = load volatile i32, ptr %flags7, align 8
  %bf.set = or i32 %bf.load31, 1073741824
  store volatile i32 %bf.set, ptr %flags7, align 8
  %mcp32 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 123
  %26 = ptrtoint ptr %mcp32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mcp, ptr %mcp32, align 4
  %mb33 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 2
  %27 = ptrtoint ptr %mb33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mb33, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4472, ptr noundef nonnull @.str.48, i32 noundef %28) #13
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #13
  %29 = ptrtoint ptr %mb33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mb33, align 4
  %mbx_count = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 70
  %31 = ptrtoint ptr %mbx_count to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mbx_count, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp47475.not = icmp eq i8 %32, 0
  br i1 %cmp47475.not, label %if.end29.for.end_crit_edge, label %for.body.preheader

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %if.end29
  %33 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mcp, align 4
  br label %for.body

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %for.body.preheader
  %mboxes.0480 = phi i32 [ %shr, %if.end52.for.body_crit_edge ], [ %34, %for.body.preheader ]
  %cnt.0479 = phi i32 [ %inc, %if.end52.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %optr.0477 = phi ptr [ %incdec.ptr, %if.end52.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %iptr.0476 = phi ptr [ %incdec.ptr53, %if.end52.for.body_crit_edge ], [ %mb33, %for.body.preheader ]
  %and49 = and i32 %mboxes.0480, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %for.body.if.end52_crit_edge, label %if.then51

for.body.if.end52_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %iptr.0476 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iptr.0476, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %optr.0477, i32 %37) #13, !srcloc !266
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %for.body.if.end52_crit_edge
  %shr = lshr i32 %mboxes.0480, 1
  %incdec.ptr = getelementptr i32, ptr %optr.0477, i32 1
  %incdec.ptr53 = getelementptr i32, ptr %iptr.0476, i32 1
  %inc = add nuw nsw i32 %cnt.0479, 1
  %38 = ptrtoint ptr %mbx_count to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mbx_count, align 16
  %conv46 = zext i8 %39 to i32
  %cmp47 = icmp ult i32 %inc, %conv46
  br i1 %cmp47, label %if.end52.for.body_crit_edge, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end52.for.end_crit_edge, %if.end29.for.end_crit_edge
  %40 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load55 = load volatile i32, ptr %flags7, align 8
  %bf.clear56 = and i32 %bf.load55, 2147483647
  store volatile i32 %bf.clear56, ptr %flags7, align 8
  %mbx_cmd_flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 124
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %mbx_cmd_flags) #13
  tail call void @ql_dump_buffer(i32 noundef 537001984, ptr noundef %vha, i32 noundef 4466, ptr noundef %mb33, i32 noundef 16) #13
  %add.ptr = getelementptr %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 2, i32 4
  tail call void @ql_dump_buffer(i32 noundef 537001984, ptr noundef %vha, i32 noundef 4467, ptr noundef %add.ptr, i32 noundef 16) #13
  %add.ptr64 = getelementptr %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 2, i32 8
  tail call void @ql_dump_buffer(i32 noundef 537001984, ptr noundef %vha, i32 noundef 4468, ptr noundef %add.ptr64, i32 noundef 8) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4473, ptr noundef nonnull @.str.49, i32 noundef %41) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool65.not = icmp eq i32 %and1.i, 0
  %tobool65.not.not = xor i1 %tobool65.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool67.not = icmp sgt i32 %bf.load, -1
  %or.cond = select i1 %tobool65.not.not, i1 true, i1 %tobool67.not
  br i1 %or.cond, label %lor.lhs.false, label %for.end.if.then77_crit_edge

for.end.if.then77_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

lor.lhs.false:                                    ; preds = %for.end
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %42 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %isp_type, align 8
  %and69 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %lor.lhs.false.if.else_crit_edge, label %land.lhs.true71

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true71:                                  ; preds = %lor.lhs.false
  %44 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load73 = load volatile i32, ptr %flags7, align 8
  %45 = and i32 %bf.load73, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool76.not = icmp eq i32 %45, 0
  br i1 %tobool76.not, label %land.lhs.true71.if.else_crit_edge, label %land.lhs.true71.if.then77_crit_edge

land.lhs.true71.if.then77_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

land.lhs.true71.if.else_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then77:                                        ; preds = %land.lhs.true71.if.then77_crit_edge, %for.end.if.then77_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef %mbx_cmd_flags) #13
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 12
  %46 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cregbase, align 64
  %add.ptr79 = getelementptr i8, ptr %47, i32 133636
  %mbx_intr_code = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 15
  %48 = ptrtoint ptr %mbx_intr_code to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mbx_intr_code, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %50) #13, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call39) #13
  %mbx_intr_comp = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 129
  %51 = ptrtoint ptr %tov to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tov, align 4
  %mul82 = mul i32 %52, 100
  %call83 = tail call i32 @wait_for_completion_timeout(ptr noundef %mbx_intr_comp, i32 noundef %mul82) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84.not = icmp eq i32 %call83, 0
  br i1 %cmp84.not, label %if.then77.if.end165_crit_edge, label %land.rhs

if.then77.if.end165_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end165

land.rhs:                                         ; preds = %if.then77
  %.b453 = load i1, ptr @qlafx00_mailbox_command.__already_done, align 1
  br i1 %.b453, label %land.rhs.if.end165_crit_edge, label %if.then94, !prof !267

land.rhs.if.end165_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end165

if.then94:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qlafx00_mailbox_command.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 150, i32 noundef 9, ptr noundef null) #13
  br label %if.end165

if.else:                                          ; preds = %land.lhs.true71.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %conv128 = and i32 %30, 65535
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4396, ptr noundef nonnull @.str.51, i32 noundef %conv128) #13
  %cregbase129 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 12
  %53 = ptrtoint ptr %cregbase129 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cregbase129, align 64
  %add.ptr130 = getelementptr i8, ptr %54, i32 133636
  %mbx_intr_code131 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 15
  %55 = ptrtoint ptr %mbx_intr_code131 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mbx_intr_code131, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %57) #13, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call39) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %59 = ptrtoint ptr %tov to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tov, align 4
  %mul134 = mul i32 %60, 100
  %add = add i32 %mul134, %58
  %61 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load136481 = load volatile i32, ptr %flags7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load136481)
  %tobool138.not482 = icmp sgt i32 %bf.load136481, -1
  br i1 %tobool138.not482, label %while.body.lr.ph, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.else
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %conv128)
  %cmp157 = icmp eq i32 %conv128, 11
  br label %while.body

while.body:                                       ; preds = %if.end160.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp141 = icmp slt i32 %sub, 0
  br i1 %cmp141, label %while.body.while.end_crit_edge, label %if.end144

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end144:                                        ; preds = %while.body
  %63 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rsp_q_map, align 16
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %hw.i = getelementptr inbounds %struct.rsp_que, ptr %66, i32 0, i32 13
  %67 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw.i, align 4
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %68, i32 0, i32 54
  %69 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %isp_type.i, align 8
  %71 = and i32 %70, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla82xx_poll(i32 noundef 0, ptr noundef %66) #13
  br label %qla2x00_poll.exit

if.else.i:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  %isp_ops.i = getelementptr inbounds %struct.qla_hw_data, ptr %68, i32 0, i32 234
  %73 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %isp_ops.i, align 4
  %intr_handler.i = getelementptr inbounds %struct.isp_operations, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %intr_handler.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %intr_handler.i, align 4
  %call.i = tail call i32 %76(i32 noundef 0, ptr noundef %66) #13
  br label %qla2x00_poll.exit

qla2x00_poll.exit:                                ; preds = %if.else.i, %if.then.i
  %77 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load147 = load volatile i32, ptr %flags7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load147)
  %tobool149.not = icmp sgt i32 %bf.load147, -1
  br i1 %tobool149.not, label %land.lhs.true150, label %qla2x00_poll.exit.if.end160_crit_edge

qla2x00_poll.exit.if.end160_crit_edge:            ; preds = %qla2x00_poll.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160

land.lhs.true150:                                 ; preds = %qla2x00_poll.exit
  %78 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %isp_type, align 8
  %and153 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp ne i32 %and153, 0
  %or.cond454 = and i1 %cmp157, %tobool154.not
  br i1 %or.cond454, label %land.lhs.true150.if.end160_crit_edge, label %if.then159

land.lhs.true150.if.end160_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160

if.then159:                                       ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #13
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %land.lhs.true150.if.end160_crit_edge, %qla2x00_poll.exit.if.end160_crit_edge
  %80 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load136 = load volatile i32, ptr %flags7, align 8
  %tobool138.not = icmp sgt i32 %bf.load136, -1
  br i1 %tobool138.not, label %if.end160.while.body_crit_edge, label %if.end160.while.end_crit_edge

if.end160.while.end_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end160.while.body_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end160.while.end_crit_edge, %while.body.while.end_crit_edge, %if.else.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %82 = ptrtoint ptr %tov to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tov, align 4
  %mul162.neg.neg = mul i32 %83, 100
  %sub163.neg = sub i32 %81, %add
  %sub164 = add i32 %sub163.neg, %mul162.neg.neg
  %div = udiv i32 %sub164, 100
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4397, ptr noundef nonnull @.str.52, i32 noundef %div) #13
  br label %if.end165

if.end165:                                        ; preds = %while.end, %if.then94, %land.rhs.if.end165_crit_edge, %if.then77.if.end165_crit_edge
  %84 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %bf.load167 = load volatile i32, ptr %flags7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load167)
  %tobool169.not = icmp sgt i32 %bf.load167, -1
  br i1 %tobool169.not, label %if.end165.if.end203_crit_edge, label %if.then170

if.end165.if.end203_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end203

if.then170:                                       ; preds = %if.end165
  %conv171 = and i32 %30, 65535
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4398, ptr noundef nonnull @.str.53, i32 noundef %conv171) #13
  %85 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %bf.load173 = load volatile i32, ptr %flags7, align 8
  %bf.clear174 = and i32 %bf.load173, 2147483647
  store volatile i32 %bf.clear174, ptr %flags7, align 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %mbx_cmd_flags) #13
  %mailbox_out32 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 120
  %86 = ptrtoint ptr %mailbox_out32 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mailbox_out32, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %87)
  %cmp178.not = icmp eq i32 %87, 16384
  %spec.select = select i1 %cmp178.not, i32 0, i32 258
  %88 = ptrtoint ptr %mbx_count to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %mbx_count, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp189484.not = icmp eq i8 %89, 0
  br i1 %cmp189484.not, label %if.then170.if.end203_crit_edge, label %for.body191.preheader

if.then170.if.end203_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end203

for.body191.preheader:                            ; preds = %if.then170
  %in_mb = getelementptr inbounds %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 1
  %90 = ptrtoint ptr %in_mb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %in_mb, align 4
  br label %for.body191

for.body191:                                      ; preds = %if.end195.for.body191_crit_edge, %for.body191.preheader
  %iptr2.0488 = phi ptr [ %incdec.ptr197, %if.end195.for.body191_crit_edge ], [ %mb33, %for.body191.preheader ]
  %mboxes.1487 = phi i32 [ %shr196, %if.end195.for.body191_crit_edge ], [ %91, %for.body191.preheader ]
  %cnt.1486 = phi i32 [ %inc200, %if.end195.for.body191_crit_edge ], [ 0, %for.body191.preheader ]
  %iptr.1485 = phi ptr [ %incdec.ptr198, %if.end195.for.body191_crit_edge ], [ %mailbox_out32, %for.body191.preheader ]
  %and192 = and i32 %mboxes.1487, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %for.body191.if.end195_crit_edge, label %if.then194

for.body191.if.end195_crit_edge:                  ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end195

if.then194:                                       ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %iptr.1485 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %iptr.1485, align 4
  %94 = ptrtoint ptr %iptr2.0488 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %iptr2.0488, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %for.body191.if.end195_crit_edge
  %shr196 = lshr i32 %mboxes.1487, 1
  %incdec.ptr197 = getelementptr i32, ptr %iptr2.0488, i32 1
  %incdec.ptr198 = getelementptr i32, ptr %iptr.1485, i32 1
  %inc200 = add nuw nsw i32 %cnt.1486, 1
  %95 = ptrtoint ptr %mbx_count to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %mbx_count, align 16
  %conv188 = zext i8 %96 to i32
  %cmp189 = icmp ult i32 %inc200, %conv188
  br i1 %cmp189, label %if.end195.for.body191_crit_edge, label %if.end195.if.end203_crit_edge

if.end195.if.end203_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end203

if.end195.for.body191_crit_edge:                  ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body191

if.end203:                                        ; preds = %if.end195.if.end203_crit_edge, %if.then170.if.end203_crit_edge, %if.end165.if.end203_crit_edge
  %rval.1 = phi i32 [ 256, %if.end165.if.end203_crit_edge ], [ %spec.select, %if.then170.if.end203_crit_edge ], [ %spec.select, %if.end195.if.end203_crit_edge ]
  %97 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %97)
  %bf.load205 = load volatile i32, ptr %flags7, align 8
  %bf.clear206 = and i32 %bf.load205, -1073741825
  store volatile i32 %bf.clear206, ptr %flags7, align 8
  %98 = ptrtoint ptr %mcp32 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %mcp32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool210.not = icmp ne i32 %and1.i, 0
  %or.cond455 = select i1 %tobool210.not, i1 true, i1 %tobool67.not
  br i1 %or.cond455, label %land.lhs.true213, label %if.end203.if.end227_crit_edge

if.end203.if.end227_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end227

land.lhs.true213:                                 ; preds = %if.end203
  %isp_type214 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %99 = ptrtoint ptr %isp_type214 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %isp_type214, align 8
  %and216 = and i32 %100, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %land.lhs.true213.if.then224_crit_edge, label %land.lhs.true218

land.lhs.true213.if.then224_crit_edge:            ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then224

land.lhs.true218:                                 ; preds = %land.lhs.true213
  %101 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %bf.load220 = load volatile i32, ptr %flags7, align 8
  %102 = and i32 %bf.load220, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool223.not = icmp eq i32 %102, 0
  br i1 %tobool223.not, label %land.lhs.true218.if.then224_crit_edge, label %land.lhs.true218.if.end227_crit_edge

land.lhs.true218.if.end227_crit_edge:             ; preds = %land.lhs.true218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end227

land.lhs.true218.if.then224_crit_edge:            ; preds = %land.lhs.true218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then224

if.then224:                                       ; preds = %land.lhs.true218.if.then224_crit_edge, %land.lhs.true213.if.then224_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4410, ptr noundef nonnull @.str.54) #13
  %rsp_q_map225 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 25
  %103 = ptrtoint ptr %rsp_q_map225 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rsp_q_map225, align 16
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  tail call fastcc void @qla2x00_poll(ptr noundef %106)
  br label %if.end227

if.end227:                                        ; preds = %if.then224, %land.lhs.true218.if.end227_crit_edge, %if.end203.if.end227_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %rval.1)
  %cmp228 = icmp eq i32 %rval.1, 256
  br i1 %cmp228, label %land.lhs.true230, label %premature_exit

land.lhs.true230:                                 ; preds = %if.end227
  %107 = ptrtoint ptr %mb33 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mb33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %108)
  %cmp233.not = icmp eq i32 %108, 42
  br i1 %cmp233.not, label %land.lhs.true230.premature_exit.thread_crit_edge, label %if.then235

land.lhs.true230.premature_exit.thread_crit_edge: ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #15
  br label %premature_exit.thread

if.then235:                                       ; preds = %land.lhs.true230
  br i1 %tobool67.not, label %if.then235.if.then248_crit_edge, label %lor.lhs.false237

if.then235.if.then248_crit_edge:                  ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then248

lor.lhs.false237:                                 ; preds = %if.then235
  %flags238 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 6
  %109 = ptrtoint ptr %flags238 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %flags238, align 4
  %111 = and i8 %110, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool241.not = icmp eq i8 %111, 0
  br i1 %tobool241.not, label %lor.lhs.false242, label %lor.lhs.false237.if.then248_crit_edge

lor.lhs.false237.if.then248_crit_edge:            ; preds = %lor.lhs.false237
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then248

lor.lhs.false242:                                 ; preds = %lor.lhs.false237
  %112 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load244 = load volatile i32, ptr %flags7, align 8
  %113 = and i32 %bf.load244, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool247.not = icmp eq i32 %113, 0
  br i1 %tobool247.not, label %if.else270, label %lor.lhs.false242.if.then248_crit_edge

lor.lhs.false242.if.then248_crit_edge:            ; preds = %lor.lhs.false242
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then248

if.then248:                                       ; preds = %lor.lhs.false242.if.then248_crit_edge, %lor.lhs.false237.if.then248_crit_edge, %if.then235.if.then248_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4445, ptr noundef nonnull @.str.55) #13
  %dpc_flags249 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %114 = ptrtoint ptr %dpc_flags249 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %dpc_flags249, align 4
  %116 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool251.not = icmp eq i32 %116, 0
  br i1 %tobool251.not, label %land.lhs.true252, label %if.then248.premature_exit.thread_crit_edge

if.then248.premature_exit.thread_crit_edge:       ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #15
  br label %premature_exit.thread

land.lhs.true252:                                 ; preds = %if.then248
  %117 = ptrtoint ptr %dpc_flags249 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %dpc_flags249, align 4
  %119 = and i32 %118, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool255.not = icmp eq i32 %119, 0
  br i1 %tobool255.not, label %land.lhs.true256, label %land.lhs.true252.premature_exit.thread_crit_edge

land.lhs.true252.premature_exit.thread_crit_edge: ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #15
  br label %premature_exit.thread

land.lhs.true256:                                 ; preds = %land.lhs.true252
  %120 = ptrtoint ptr %dpc_flags249 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %dpc_flags249, align 4
  %122 = and i32 %121, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool259.not = icmp eq i32 %122, 0
  br i1 %tobool259.not, label %if.then260, label %land.lhs.true256.premature_exit.thread_crit_edge

land.lhs.true256.premature_exit.thread_crit_edge: ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #15
  br label %premature_exit.thread

if.then260:                                       ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #15
  %conv261 = and i32 %30, 65535
  %123 = ptrtoint ptr %mb33 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mb33, align 4
  %125 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %125)
  %bf.load265 = load volatile i32, ptr %flags7, align 8
  %bf.lshr266 = lshr i32 %bf.load265, 13
  %bf.clear267 = and i32 %bf.lshr266, 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %5, i32 noundef 4446, ptr noundef nonnull @.str.56, i32 noundef %conv261, i32 noundef %124, i32 noundef %bf.clear267) #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags249) #13
  tail call void @qla2xxx_wake_dpc(ptr noundef %vha) #13
  br label %premature_exit.thread

if.else270:                                       ; preds = %lor.lhs.false242
  br i1 %tobool65.not, label %if.then272, label %if.else270.premature_exit.thread_crit_edge

if.else270.premature_exit.thread_crit_edge:       ; preds = %if.else270
  call void @__sanitizer_cov_trace_pc() #15
  br label %premature_exit.thread

if.then272:                                       ; preds = %if.else270
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4448, ptr noundef nonnull @.str.57) #13
  %dpc_flags273 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %126 = ptrtoint ptr %dpc_flags273 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %dpc_flags273, align 4
  %128 = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool275.not = icmp eq i32 %128, 0
  br i1 %tobool275.not, label %land.lhs.true276, label %if.then272.premature_exit.thread_crit_edge

if.then272.premature_exit.thread_crit_edge:       ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #15
  br label %premature_exit.thread

land.lhs.true276:                                 ; preds = %if.then272
  %129 = ptrtoint ptr %dpc_flags273 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %dpc_flags273, align 4
  %131 = and i32 %130, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool279.not = icmp eq i32 %131, 0
  br i1 %tobool279.not, label %land.lhs.true280, label %land.lhs.true276.premature_exit.thread_crit_edge

land.lhs.true276.premature_exit.thread_crit_edge: ; preds = %land.lhs.true276
  call void @__sanitizer_cov_trace_pc() #15
  br label %premature_exit.thread

land.lhs.true280:                                 ; preds = %land.lhs.true276
  %132 = ptrtoint ptr %dpc_flags273 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %dpc_flags273, align 4
  %134 = and i32 %133, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool283.not = icmp eq i32 %134, 0
  br i1 %tobool283.not, label %if.then284, label %land.lhs.true280.premature_exit.thread_crit_edge

land.lhs.true280.premature_exit.thread_crit_edge: ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #15
  br label %premature_exit.thread

if.then284:                                       ; preds = %land.lhs.true280
  %conv285 = and i32 %30, 65535
  %135 = ptrtoint ptr %mb33 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mb33, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %5, i32 noundef 4449, ptr noundef nonnull @.str.58, i32 noundef %conv285, i32 noundef %136) #13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %dpc_flags273) #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %dpc_flags273) #13
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %137 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %isp_ops, align 4
  %abort_isp = getelementptr inbounds %struct.isp_operations, ptr %138, i32 0, i32 34
  %139 = ptrtoint ptr %abort_isp to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %abort_isp, align 4
  %call290 = tail call i32 %140(ptr noundef %vha) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %if.then284.if.end294_crit_edge, label %if.then292

if.then284.if.end294_crit_edge:                   ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end294

if.then292:                                       ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags273) #13
  br label %if.end294

if.end294:                                        ; preds = %if.then292, %if.then284.if.end294_crit_edge
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %dpc_flags273) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4450, ptr noundef nonnull @.str.59) #13
  br label %premature_exit.thread

premature_exit.thread:                            ; preds = %if.end294, %land.lhs.true280.premature_exit.thread_crit_edge, %land.lhs.true276.premature_exit.thread_crit_edge, %if.then272.premature_exit.thread_crit_edge, %if.else270.premature_exit.thread_crit_edge, %if.then260, %land.lhs.true256.premature_exit.thread_crit_edge, %land.lhs.true252.premature_exit.thread_crit_edge, %if.then248.premature_exit.thread_crit_edge, %land.lhs.true230.premature_exit.thread_crit_edge, %if.then18
  %command.0.ph = phi i32 [ %30, %land.lhs.true230.premature_exit.thread_crit_edge ], [ %30, %if.end294 ], [ %30, %land.lhs.true280.premature_exit.thread_crit_edge ], [ %30, %land.lhs.true276.premature_exit.thread_crit_edge ], [ %30, %if.then272.premature_exit.thread_crit_edge ], [ %30, %if.else270.premature_exit.thread_crit_edge ], [ %30, %if.then260 ], [ %30, %land.lhs.true256.premature_exit.thread_crit_edge ], [ %30, %land.lhs.true252.premature_exit.thread_crit_edge ], [ %30, %if.then248.premature_exit.thread_crit_edge ], [ 0, %if.then18 ]
  %rval.2.ph = phi i32 [ 256, %land.lhs.true230.premature_exit.thread_crit_edge ], [ 256, %if.end294 ], [ 256, %land.lhs.true280.premature_exit.thread_crit_edge ], [ 256, %land.lhs.true276.premature_exit.thread_crit_edge ], [ 256, %if.then272.premature_exit.thread_crit_edge ], [ 256, %if.else270.premature_exit.thread_crit_edge ], [ 256, %if.then260 ], [ 256, %land.lhs.true256.premature_exit.thread_crit_edge ], [ 256, %land.lhs.true252.premature_exit.thread_crit_edge ], [ 256, %if.then248.premature_exit.thread_crit_edge ], [ 258, %if.then18 ]
  %mbx_cmd_comp300470 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 128
  tail call void @complete(ptr noundef %mbx_cmd_comp300470) #13
  br label %if.then302

premature_exit:                                   ; preds = %if.end227
  tail call void @complete(ptr noundef %mbx_cmd_comp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.1)
  %tobool301.not = icmp eq i32 %rval.1, 0
  br i1 %tobool301.not, label %if.else312, label %premature_exit.if.then302_crit_edge

premature_exit.if.then302_crit_edge:              ; preds = %premature_exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then302

if.then302:                                       ; preds = %premature_exit.if.then302_crit_edge, %premature_exit.thread
  %rval.2473 = phi i32 [ %rval.2.ph, %premature_exit.thread ], [ %rval.1, %premature_exit.if.then302_crit_edge ]
  %command.0472 = phi i32 [ %command.0.ph, %premature_exit.thread ], [ %30, %premature_exit.if.then302_crit_edge ]
  %mb303 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 2
  %141 = ptrtoint ptr %mb303 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %mb303, align 4
  %arrayidx306 = getelementptr %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 2, i32 1
  %143 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx306, align 4
  %arrayidx308 = getelementptr %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 2, i32 2
  %145 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx308, align 4
  %arrayidx310 = getelementptr %struct.mbx_cmd_32, ptr %mcp, i32 0, i32 2, i32 3
  %147 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx310, align 4
  %conv311 = and i32 %command.0472, 65535
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %5, i32 noundef 4451, ptr noundef nonnull @.str.60, i32 noundef %rval.2473, i32 noundef %142, i32 noundef %144, i32 noundef %146, i32 noundef %148, i32 noundef %conv311) #13
  br label %cleanup

if.else312:                                       ; preds = %premature_exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %5, i32 noundef 4452, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qlafx00_mailbox_command) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else312, %if.then302, %if.then26, %if.then11, %if.then2, %if.then
  %retval.0 = phi i32 [ 256, %if.then ], [ 256, %if.then2 ], [ 256, %if.then11 ], [ 256, %if.then26 ], [ 0, %if.else312 ], [ %rval.2473, %if.then302 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_init_firmware(ptr noundef %vha, i16 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  %mc = alloca %struct.mbx_cmd_32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mc) #13
  %0 = getelementptr inbounds i8, ptr %mc, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 128)
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4460, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qlafx00_init_firmware) #13
  %mb = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 2
  %4 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 96, ptr %mb, align 4
  %arrayidx2 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2, align 4
  %init_cb_dma = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 97
  %arrayidx6 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx6, align 4
  %7 = ptrtoint ptr %init_cb_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %init_cb_dma, align 8
  %arrayidx11 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx11, align 4
  %10 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 15, ptr %mc, align 4
  %in_mb = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 1
  %11 = ptrtoint ptr %in_mb to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %in_mb, align 4
  %conv12 = zext i16 %size to i32
  %buf_size = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 3
  %12 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv12, ptr %buf_size, align 4
  %flags = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %flags, align 4
  %tov = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 5
  %14 = ptrtoint ptr %tov to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 30, ptr %tov, align 4
  %call = call fastcc i32 @qlafx00_mailbox_command(ptr noundef %vha, ptr noundef nonnull %mc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %mb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mb, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4461, ptr noundef nonnull @.str.3, i32 noundef %call, i32 noundef %16) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4462, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qlafx00_init_firmware) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mc) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_pci_config(ptr nocapture noundef readonly %vha) local_unnamed_addr #0 align 64 {
entry:
  %w = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w) #13
  %0 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %w, align 2, !annotation !268
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  tail call void @pci_set_master(ptr noundef %4) #13
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 128
  %call = tail call i32 @pci_try_set_mwi(ptr noundef %6) #13
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 128
  %call3 = call i32 @pci_read_config_word(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %w) #13
  %9 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %w, align 2
  %11 = and i16 %10, -1345
  %12 = or i16 %11, 320
  store i16 %12, ptr %w, align 2
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 128
  %call8 = call i32 @pci_write_config_word(ptr noundef %14, i32 noundef 4, i16 noundef zeroext %12) #13
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 128
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.not = icmp eq i8 %18, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = call i32 @pcie_set_readrq(ptr noundef %16, i32 noundef 2048) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 128
  %revision = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %revision, align 4
  %conv14 = zext i8 %22 to i16
  %chip_revision = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 193
  %23 = ptrtoint ptr %chip_revision to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv14, ptr %chip_revision, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_soft_reset(ptr nocapture noundef readonly %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 1
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load volatile i32, ptr %flags, align 8
  %7 = and i32 %bf.load, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %land.rhs.if.end_crit_edge, label %land.rhs.cleanup_crit_edge, !prof !267

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %8 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %isp_ops, align 4
  %disable_intrs = getelementptr inbounds %struct.isp_operations, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %disable_intrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable_intrs, align 4
  tail call void %11(ptr noundef %1) #13
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %hardware_lock.i = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock.i) #13
  %cregbase.i = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cregbase.i, align 64
  %add.ptr.i = getelementptr i8, ptr %15, i32 524292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !266
  %16 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cregbase.i, align 64
  %add.ptr6.i = getelementptr i8, ptr %17, i32 532484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #13, !srcloc !266
  %18 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cregbase.i, align 64
  %add.ptr8.i = getelementptr i8, ptr %19, i32 395552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 33554432) #13, !srcloc !266
  %20 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cregbase.i, align 64
  %add.ptr10.i = getelementptr i8, ptr %21, i32 395556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 33554432) #13, !srcloc !266
  %22 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cregbase.i, align 64
  %add.ptr12.i = getelementptr i8, ptr %23, i32 985376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 33554432) #13, !srcloc !266
  %24 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cregbase.i, align 64
  %add.ptr14.i = getelementptr i8, ptr %25, i32 985380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 33554432) #13, !srcloc !266
  %26 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cregbase.i, align 64
  %add.ptr16.i = getelementptr i8, ptr %27, i32 395328
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %29 = and i32 %28, -1048577
  %30 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cregbase.i, align 64
  %add.ptr19.i = getelementptr i8, ptr %31, i32 395328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %29) #13, !srcloc !266
  %32 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cregbase.i, align 64
  %add.ptr21.i = getelementptr i8, ptr %33, i32 395332
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %35 = and i32 %34, -1048577
  %36 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cregbase.i, align 64
  %add.ptr25.i = getelementptr i8, ptr %37, i32 395332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %35) #13, !srcloc !266
  %38 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cregbase.i, align 64
  %add.ptr27.i = getelementptr i8, ptr %39, i32 395336
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %41 = and i32 %40, -1048577
  %42 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cregbase.i, align 64
  %add.ptr31.i = getelementptr i8, ptr %43, i32 395336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %41) #13, !srcloc !266
  %44 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cregbase.i, align 64
  %add.ptr33.i = getelementptr i8, ptr %45, i32 395340
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %47 = and i32 %46, -1048577
  %48 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cregbase.i, align 64
  %add.ptr37.i = getelementptr i8, ptr %49, i32 395340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %47) #13, !srcloc !266
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %i.0194.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cregbase.i, align 64
  %add.ptr41.i = getelementptr i8, ptr %51, i32 851968
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %53 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp44.i = icmp eq i32 %53, 0
  br i1 %cmp44.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %54 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cregbase.i, align 64
  %add.ptr47.i = getelementptr i8, ptr %55, i32 67072
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %57 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp50.i = icmp eq i32 %57, 0
  br i1 %cmp50.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 21474800) #13
  %inc.i = add nuw nsw i32 %i.0194.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge
  %59 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cregbase.i, align 64
  %add.ptr57.i = getelementptr i8, ptr %60, i32 133120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 17760256) #13, !srcloc !266
  %61 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cregbase.i, align 64
  %add.ptr61.i = getelementptr i8, ptr %62, i32 133124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 16843009) #13, !srcloc !266
  %63 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cregbase.i, align 64
  %add.ptr57.1.i = getelementptr i8, ptr %64, i32 133128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.1.i, i32 17760256) #13, !srcloc !266
  %65 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cregbase.i, align 64
  %add.ptr61.1.i = getelementptr i8, ptr %66, i32 133132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.1.i, i32 16843009) #13, !srcloc !266
  %67 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cregbase.i, align 64
  %add.ptr57.2.i = getelementptr i8, ptr %68, i32 133136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.2.i, i32 17760256) #13, !srcloc !266
  %69 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cregbase.i, align 64
  %add.ptr61.2.i = getelementptr i8, ptr %70, i32 133140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.2.i, i32 16843009) #13, !srcloc !266
  %71 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cregbase.i, align 64
  %add.ptr57.3.i = getelementptr i8, ptr %72, i32 133144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.3.i, i32 17760256) #13, !srcloc !266
  %73 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cregbase.i, align 64
  %add.ptr61.3.i = getelementptr i8, ptr %74, i32 133148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.3.i, i32 16843009) #13, !srcloc !266
  %75 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cregbase.i, align 64
  %add.ptr66.i = getelementptr i8, ptr %76, i32 133184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 16850689) #13, !srcloc !266
  %77 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cregbase.i, align 64
  %add.ptr68.i = getelementptr i8, ptr %78, i32 67088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 16777216) #13, !srcloc !266
  %79 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cregbase.i, align 64
  %add.ptr70.i = getelementptr i8, ptr %80, i32 67072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 0) #13, !srcloc !266
  %81 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cregbase.i, align 64
  %add.ptr78.i = getelementptr i8, ptr %82, i32 98828
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 0) #13, !srcloc !266
  %83 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cregbase.i, align 64
  %add.ptr78.1.i = getelementptr i8, ptr %84, i32 98832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.1.i, i32 0) #13, !srcloc !266
  %85 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cregbase.i, align 64
  %add.ptr78.2.i = getelementptr i8, ptr %86, i32 98836
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.2.i, i32 0) #13, !srcloc !266
  %87 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cregbase.i, align 64
  %add.ptr78.3.i = getelementptr i8, ptr %88, i32 98840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.3.i, i32 0) #13, !srcloc !266
  %89 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cregbase.i, align 64
  %add.ptr78.4.i = getelementptr i8, ptr %90, i32 98844
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.4.i, i32 0) #13, !srcloc !266
  br label %for.body85.i

for.body85.i:                                     ; preds = %for.body85.i.for.body85.i_crit_edge, %for.end.i
  %i.3197.i = phi i32 [ %inc91.i, %for.body85.i.for.body85.i_crit_edge ], [ 0, %for.end.i ]
  %91 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cregbase.i, align 64
  %mul87.i = shl i32 %i.3197.i, 2
  %add88.i = add nuw nsw i32 %mul87.i, 133888
  %add.ptr89.i = getelementptr i8, ptr %92, i32 %add88.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i, i32 0) #13, !srcloc !266
  %inc91.i = add nuw nsw i32 %i.3197.i, 1
  %exitcond204.not.i = icmp eq i32 %inc91.i, 115
  br i1 %exitcond204.not.i, label %for.body85.i.for.cond97.preheader.i_crit_edge, label %for.body85.i.for.body85.i_crit_edge

for.body85.i.for.body85.i_crit_edge:              ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body85.i

for.body85.i.for.cond97.preheader.i_crit_edge:    ; preds = %for.body85.i
  br label %for.cond97.preheader.i

for.cond97.preheader.i:                           ; preds = %for.cond97.preheader.i.for.cond97.preheader.i_crit_edge, %for.body85.i.for.cond97.preheader.i_crit_edge
  %core.0199.i = phi i32 [ %inc111.i, %for.cond97.preheader.i.for.cond97.preheader.i_crit_edge ], [ 0, %for.body85.i.for.cond97.preheader.i_crit_edge ]
  %mul102.i = shl i32 %core.0199.i, 8
  %add103.i = add nuw nsw i32 %mul102.i, 137296
  %93 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cregbase.i, align 64
  %add.ptr106.i = getelementptr i8, ptr %94, i32 %add103.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 0) #13, !srcloc !266
  %95 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cregbase.i, align 64
  %add105.1.i = add nuw nsw i32 %mul102.i, 137300
  %add.ptr106.1.i = getelementptr i8, ptr %96, i32 %add105.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.1.i, i32 0) #13, !srcloc !266
  %97 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cregbase.i, align 64
  %add105.2.i = add nuw nsw i32 %mul102.i, 137304
  %add.ptr106.2.i = getelementptr i8, ptr %98, i32 %add105.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.2.i, i32 0) #13, !srcloc !266
  %99 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cregbase.i, align 64
  %add105.3.i = add nuw nsw i32 %mul102.i, 137308
  %add.ptr106.3.i = getelementptr i8, ptr %100, i32 %add105.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.3.i, i32 0) #13, !srcloc !266
  %101 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cregbase.i, align 64
  %add105.4.i = add nuw nsw i32 %mul102.i, 137312
  %add.ptr106.4.i = getelementptr i8, ptr %102, i32 %add105.4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.4.i, i32 0) #13, !srcloc !266
  %103 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cregbase.i, align 64
  %add105.5.i = add nuw nsw i32 %mul102.i, 137316
  %add.ptr106.5.i = getelementptr i8, ptr %104, i32 %add105.5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.5.i, i32 0) #13, !srcloc !266
  %105 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cregbase.i, align 64
  %add105.6.i = add nuw nsw i32 %mul102.i, 137320
  %add.ptr106.6.i = getelementptr i8, ptr %106, i32 %add105.6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.6.i, i32 0) #13, !srcloc !266
  %107 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cregbase.i, align 64
  %add105.7.i = add nuw nsw i32 %mul102.i, 137324
  %add.ptr106.7.i = getelementptr i8, ptr %108, i32 %add105.7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.7.i, i32 0) #13, !srcloc !266
  %inc111.i = add nuw nsw i32 %core.0199.i, 1
  %exitcond206.not.i = icmp eq i32 %inc111.i, 4
  br i1 %exitcond206.not.i, label %qlafx00_soc_cpu_reset.exit, label %for.cond97.preheader.i.for.cond97.preheader.i_crit_edge

for.cond97.preheader.i.for.cond97.preheader.i_crit_edge: ; preds = %for.cond97.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond97.preheader.i

qlafx00_soc_cpu_reset.exit:                       ; preds = %for.cond97.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cregbase.i, align 64
  %add.ptr120.i = getelementptr i8, ptr %110, i32 137396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.i, i32 -16580608) #13, !srcloc !266
  %111 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cregbase.i, align 64
  %add.ptr120.1.i = getelementptr i8, ptr %112, i32 137652
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.1.i, i32 -16580608) #13, !srcloc !266
  %113 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cregbase.i, align 64
  %add.ptr120.2.i = getelementptr i8, ptr %114, i32 137908
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.2.i, i32 -16580608) #13, !srcloc !266
  %115 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cregbase.i, align 64
  %add.ptr120.3.i = getelementptr i8, ptr %116, i32 138164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.3.i, i32 -16580608) #13, !srcloc !266
  %117 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cregbase.i, align 64
  %add.ptr125.i = getelementptr i8, ptr %118, i32 131584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125.i, i32 33554432) #13, !srcloc !266
  %119 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cregbase.i, align 64
  %add.ptr127.i = getelementptr i8, ptr %120, i32 131588
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127.i, i32 50331648) #13, !srcloc !266
  %121 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cregbase.i, align 64
  %add.ptr129.i = getelementptr i8, ptr %122, i32 133184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129.i, i32 0) #13, !srcloc !266
  %123 = ptrtoint ptr %cregbase.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cregbase.i, align 64
  %add.ptr131.i = getelementptr i8, ptr %124, i32 133120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131.i, i32 983040) #13, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock.i, i32 noundef %call2.i) #13
  tail call void @msleep(i32 noundef 1000) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  tail call void @msleep(i32 noundef 1000) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  tail call void @msleep(i32 noundef 1000) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  tail call void @msleep(i32 noundef 1000) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  tail call void @msleep(i32 noundef 1000) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  tail call void @msleep(i32 noundef 1000) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  tail call void @msleep(i32 noundef 1000) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  tail call void @msleep(i32 noundef 1000) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  tail call void @msleep(i32 noundef 1000) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  tail call void @msleep(i32 noundef 1000) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  br label %cleanup

cleanup:                                          ; preds = %qlafx00_soc_cpu_reset.exit, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qlafx00_soc_cpu_reset.exit ], [ 258, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_chip_diag(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  %mc.i = alloca %struct.mbx_cmd_32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req_q_map, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %length = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length, align 2
  %conv = zext i16 %7 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %fw_transfer_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 142
  %8 = ptrtoint ptr %fw_transfer_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %fw_transfer_size, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mc.i) #13
  %9 = getelementptr inbounds i8, ptr %mc.i, i32 72
  %10 = call ptr @memset(ptr %9, i32 255, i32 80)
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4463, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qlafx00_mbx_reg_test) #13
  %mb.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2
  %11 = ptrtoint ptr %mb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %mb.i, align 4
  %arrayidx2.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 43690, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 21845, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 43605, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 21930, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 42405, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 23130, ptr %arrayidx12.i, align 4
  %arrayidx14.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 9509, ptr %arrayidx14.i, align 4
  %arrayidx16.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 8
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 48059, ptr %arrayidx16.i, align 4
  %arrayidx18.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 9
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 26214, ptr %arrayidx18.i, align 4
  %arrayidx20.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 10
  %21 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 47974, ptr %arrayidx20.i, align 4
  %arrayidx22.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 11
  %22 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 26299, ptr %arrayidx22.i, align 4
  %arrayidx24.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 12
  %23 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 46774, ptr %arrayidx24.i, align 4
  %arrayidx26.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 13
  %24 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 27499, ptr %arrayidx26.i, align 4
  %arrayidx28.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 14
  %25 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 13878, ptr %arrayidx28.i, align 4
  %arrayidx30.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 15
  %26 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 52428, ptr %arrayidx30.i, align 4
  %27 = ptrtoint ptr %mc.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 65535, ptr %mc.i, align 4
  %in_mb.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 1
  %28 = ptrtoint ptr %in_mb.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65535, ptr %in_mb.i, align 4
  %buf_size.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %buf_size.i, align 4
  %flags.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 6
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %flags.i, align 4
  %tov.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 5
  %31 = ptrtoint ptr %tov.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 30, ptr %tov.i, align 4
  %call.i = call fastcc i32 @qlafx00_mailbox_command(ptr noundef %vha, ptr noundef nonnull %mc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then.i:                                        ; preds = %entry
  %arrayidx32.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 17
  %32 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43690, i32 %33)
  %cmp33.not.i = icmp eq i32 %33, 43690
  br i1 %cmp33.not.i, label %lor.lhs.false.i, label %if.then.i.if.then45.i_crit_edge

if.then.i.if.then45.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %arrayidx35.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 18
  %34 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21845, i32 %35)
  %cmp36.not.i = icmp eq i32 %35, 21845
  br i1 %cmp36.not.i, label %lor.lhs.false37.i, label %lor.lhs.false.i.if.then45.i_crit_edge

lor.lhs.false.i.if.then45.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.i

lor.lhs.false37.i:                                ; preds = %lor.lhs.false.i
  %arrayidx39.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 19
  %36 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43605, i32 %37)
  %cmp40.not.i = icmp eq i32 %37, 43605
  br i1 %cmp40.not.i, label %lor.lhs.false41.i, label %lor.lhs.false37.i.if.then45.i_crit_edge

lor.lhs.false37.i.if.then45.i_crit_edge:          ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.i

lor.lhs.false41.i:                                ; preds = %lor.lhs.false37.i
  %arrayidx43.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 20
  %38 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21930, i32 %39)
  %cmp44.not.i = icmp eq i32 %39, 21930
  br i1 %cmp44.not.i, label %lor.lhs.false41.i.if.end.i_crit_edge, label %lor.lhs.false41.i.if.then45.i_crit_edge

lor.lhs.false41.i.if.then45.i_crit_edge:          ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.i

lor.lhs.false41.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then45.i:                                      ; preds = %lor.lhs.false41.i.if.then45.i_crit_edge, %lor.lhs.false37.i.if.then45.i_crit_edge, %lor.lhs.false.i.if.then45.i_crit_edge, %if.then.i.if.then45.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then45.i, %lor.lhs.false41.i.if.end.i_crit_edge
  %rval.0.i = phi i32 [ 258, %if.then45.i ], [ 0, %lor.lhs.false41.i.if.end.i_crit_edge ]
  %arrayidx47.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 21
  %40 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42405, i32 %41)
  %cmp48.not.i = icmp eq i32 %41, 42405
  br i1 %cmp48.not.i, label %lor.lhs.false49.i, label %if.end.i.if.then61.i_crit_edge

if.end.i.if.then61.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61.i

lor.lhs.false49.i:                                ; preds = %if.end.i
  %arrayidx51.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 22
  %42 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23130, i32 %43)
  %cmp52.not.i = icmp eq i32 %43, 23130
  br i1 %cmp52.not.i, label %lor.lhs.false53.i, label %lor.lhs.false49.i.if.then61.i_crit_edge

lor.lhs.false49.i.if.then61.i_crit_edge:          ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61.i

lor.lhs.false53.i:                                ; preds = %lor.lhs.false49.i
  %arrayidx55.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 23
  %44 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9509, i32 %45)
  %cmp56.not.i = icmp eq i32 %45, 9509
  br i1 %cmp56.not.i, label %lor.lhs.false57.i, label %lor.lhs.false53.i.if.then61.i_crit_edge

lor.lhs.false53.i.if.then61.i_crit_edge:          ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61.i

lor.lhs.false57.i:                                ; preds = %lor.lhs.false53.i
  %arrayidx59.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 24
  %46 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48059, i32 %47)
  %cmp60.not.i = icmp eq i32 %47, 48059
  br i1 %cmp60.not.i, label %lor.lhs.false57.i.if.end62.i_crit_edge, label %lor.lhs.false57.i.if.then61.i_crit_edge

lor.lhs.false57.i.if.then61.i_crit_edge:          ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61.i

lor.lhs.false57.i.if.end62.i_crit_edge:           ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.i

if.then61.i:                                      ; preds = %lor.lhs.false57.i.if.then61.i_crit_edge, %lor.lhs.false53.i.if.then61.i_crit_edge, %lor.lhs.false49.i.if.then61.i_crit_edge, %if.end.i.if.then61.i_crit_edge
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then61.i, %lor.lhs.false57.i.if.end62.i_crit_edge
  %rval.1.i = phi i32 [ 258, %if.then61.i ], [ %rval.0.i, %lor.lhs.false57.i.if.end62.i_crit_edge ]
  %arrayidx64.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 25
  %48 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26214, i32 %49)
  %cmp65.not.i = icmp eq i32 %49, 26214
  br i1 %cmp65.not.i, label %lor.lhs.false66.i, label %if.end62.i.if.then78.i_crit_edge

if.end62.i.if.then78.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then78.i

lor.lhs.false66.i:                                ; preds = %if.end62.i
  %arrayidx68.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 26
  %50 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47974, i32 %51)
  %cmp69.not.i = icmp eq i32 %51, 47974
  br i1 %cmp69.not.i, label %lor.lhs.false70.i, label %lor.lhs.false66.i.if.then78.i_crit_edge

lor.lhs.false66.i.if.then78.i_crit_edge:          ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then78.i

lor.lhs.false70.i:                                ; preds = %lor.lhs.false66.i
  %arrayidx72.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 27
  %52 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26299, i32 %53)
  %cmp73.not.i = icmp eq i32 %53, 26299
  br i1 %cmp73.not.i, label %lor.lhs.false74.i, label %lor.lhs.false70.i.if.then78.i_crit_edge

lor.lhs.false70.i.if.then78.i_crit_edge:          ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then78.i

lor.lhs.false74.i:                                ; preds = %lor.lhs.false70.i
  %arrayidx76.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 28
  %54 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46774, i32 %55)
  %cmp77.not.i = icmp eq i32 %55, 46774
  br i1 %cmp77.not.i, label %lor.lhs.false74.i.if.end79.i_crit_edge, label %lor.lhs.false74.i.if.then78.i_crit_edge

lor.lhs.false74.i.if.then78.i_crit_edge:          ; preds = %lor.lhs.false74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then78.i

lor.lhs.false74.i.if.end79.i_crit_edge:           ; preds = %lor.lhs.false74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79.i

if.then78.i:                                      ; preds = %lor.lhs.false74.i.if.then78.i_crit_edge, %lor.lhs.false70.i.if.then78.i_crit_edge, %lor.lhs.false66.i.if.then78.i_crit_edge, %if.end62.i.if.then78.i_crit_edge
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then78.i, %lor.lhs.false74.i.if.end79.i_crit_edge
  %rval.2.i = phi i32 [ 258, %if.then78.i ], [ %rval.1.i, %lor.lhs.false74.i.if.end79.i_crit_edge ]
  %arrayidx81.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 29
  %56 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27499, i32 %57)
  %cmp82.not.i = icmp eq i32 %57, 27499
  br i1 %cmp82.not.i, label %lor.lhs.false83.i, label %if.end79.i.if.then_crit_edge

if.end79.i.if.then_crit_edge:                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false83.i:                                ; preds = %if.end79.i
  %arrayidx85.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 30
  %58 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13878, i32 %59)
  %cmp86.not.i = icmp eq i32 %59, 13878
  br i1 %cmp86.not.i, label %lor.lhs.false87.i, label %lor.lhs.false83.i.if.then_crit_edge

lor.lhs.false83.i.if.then_crit_edge:              ; preds = %lor.lhs.false83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false87.i:                                ; preds = %lor.lhs.false83.i
  %arrayidx89.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i, i32 0, i32 2, i32 31
  %60 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52428, i32 %61)
  %cmp90.not.i = icmp eq i32 %61, 52428
  br i1 %cmp90.not.i, label %if.end93.i, label %lor.lhs.false87.i.if.then_crit_edge

lor.lhs.false87.i.if.then_crit_edge:              ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end93.i:                                       ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.2.i)
  %cmp94.not.i = icmp eq i32 %rval.2.i, 0
  br i1 %cmp94.not.i, label %qlafx00_mbx_reg_test.exit.thread, label %if.end93.i.if.then_crit_edge

if.end93.i.if.then_crit_edge:                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

qlafx00_mbx_reg_test.exit.thread:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4465, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qlafx00_mbx_reg_test) #13
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mc.i) #13
  br label %if.end

if.then:                                          ; preds = %if.end93.i.if.then_crit_edge, %lor.lhs.false87.i.if.then_crit_edge, %lor.lhs.false83.i.if.then_crit_edge, %if.end79.i.if.then_crit_edge, %entry.if.then_crit_edge
  %rval.3145.i = phi i32 [ %rval.2.i, %if.end93.i.if.then_crit_edge ], [ %call.i, %entry.if.then_crit_edge ], [ 258, %lor.lhs.false87.i.if.then_crit_edge ], [ 258, %lor.lhs.false83.i.if.then_crit_edge ], [ 258, %if.end79.i.if.then_crit_edge ]
  %62 = ptrtoint ptr %mb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mb.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4464, ptr noundef nonnull @.str.3, i32 noundef %rval.3145.i, i32 noundef %63) #13
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mc.i) #13
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 4453, ptr noundef nonnull @.str.4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %qlafx00_mbx_reg_test.exit.thread
  %rval.0 = phi i32 [ %rval.3145.i, %if.then ], [ 0, %qlafx00_mbx_reg_test.exit.thread ]
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlafx00_config_rings(ptr nocapture noundef readonly %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %req_q_in = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_q_in, i32 0) #13, !srcloc !266
  %req_q_out = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_q_out, i32 0) #13, !srcloc !266
  %rsp_q_in = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_in, i32 0) #13, !srcloc !266
  %rsp_q_out = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_out, i32 0) #13, !srcloc !266
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rsp_q_out) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qlafx00_pci_info_str(ptr nocapture noundef readonly %vha, ptr noundef returned %str, i32 noundef %str_len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @strlcpy(ptr noundef %str, ptr noundef nonnull @.str.5, i32 noundef %str_len) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %str
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qlafx00_fw_version_str(ptr nocapture noundef readonly %vha, ptr noundef returned writeonly %str, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %fw_version = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 3
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.6, ptr noundef %fw_version)
  ret ptr %str
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlafx00_enable_intrs(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #13
  %interrupts_on = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 52
  %0 = ptrtoint ptr %interrupts_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %interrupts_on, align 1
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 12
  %1 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cregbase, align 64
  %add.ptr = getelementptr i8, ptr %2, i32 133896
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %4 = or i32 %3, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #13, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlafx00_disable_intrs(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #13
  %interrupts_on = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 52
  %0 = ptrtoint ptr %interrupts_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %interrupts_on, align 1
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 12
  %1 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cregbase, align 64
  %add.ptr = getelementptr i8, ptr %2, i32 133896
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %4 = and i32 %3, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #13, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_abort_target(ptr noundef %fcport, i64 noundef %l, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %l to i32
  %call = tail call i32 @qla2x00_async_tm_cmd(ptr noundef %fcport, i32 noundef 2, i32 noundef %conv, i32 noundef %tag) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_async_tm_cmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_lun_reset(ptr noundef %fcport, i64 noundef %l, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %l to i32
  %call = tail call i32 @qla2x00_async_tm_cmd(ptr noundef %fcport, i32 noundef 16, i32 noundef %conv, i32 noundef %tag) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_iospace_config(ptr nocapture noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %bars = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %bars to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bars, align 4
  %call = tail call i32 @pci_request_selected_regions(ptr noundef %1, i32 noundef %3, ptr noundef nonnull @.str.7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %4 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha, align 128
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.pci_name.exit_crit_edge

if.then.pci_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.pci_name.exit_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 0, ptr noundef %5, i32 noundef 334, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i) #13
  br label %return

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 47, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %init_name.i.i128 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i128 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i128, align 8
  %tobool.not.i.i129 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i129, label %if.end.i.i131, label %if.then6.pci_name.exit133_crit_edge

if.then6.pci_name.exit133_crit_edge:              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit133

if.end.i.i131:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i130 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %14 = ptrtoint ptr %dev.i130 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i130, align 4
  br label %pci_name.exit133

pci_name.exit133:                                 ; preds = %if.end.i.i131, %if.then6.pci_name.exit133_crit_edge
  %retval.0.i.i132 = phi ptr [ %15, %if.end.i.i131 ], [ %13, %if.then6.pci_name.exit133_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 1, ptr noundef %5, i32 noundef 335, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i.i132) #13
  br label %return

if.end10:                                         ; preds = %if.end
  %end = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 47, i32 0, i32 1
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.end10.if.then22_crit_edge, label %cond.false

if.end10.if.then22_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

cond.false:                                       ; preds = %if.end10
  %18 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resource, align 8
  %sub = add i32 %17, 1
  %add = sub i32 %sub, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %add)
  %phi.cmp = icmp ult i32 %add, 1048576
  br i1 %phi.cmp, label %cond.false.if.then22_crit_edge, label %if.end26

cond.false.if.then22_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

if.then22:                                        ; preds = %cond.false.if.then22_crit_edge, %if.end10.if.then22_crit_edge
  %init_name.i.i134 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i.i134 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i134, align 8
  %tobool.not.i.i135 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i135, label %if.end.i.i137, label %if.then22.pci_name.exit139_crit_edge

if.then22.pci_name.exit139_crit_edge:             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit139

if.end.i.i137:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i136 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %22 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i136, align 4
  br label %pci_name.exit139

pci_name.exit139:                                 ; preds = %if.end.i.i137, %if.then22.pci_name.exit139_crit_edge
  %retval.0.i.i138 = phi ptr [ %23, %if.end.i.i137 ], [ %21, %if.then22.pci_name.exit139_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 1, ptr noundef %5, i32 noundef 295, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i.i138) #13
  br label %return

if.end26:                                         ; preds = %cond.false
  %call31 = tail call ptr @ioremap(i32 noundef %19, i32 noundef 1048576) #13
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 12
  %24 = ptrtoint ptr %cregbase to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call31, ptr %cregbase, align 64
  %tobool33.not = icmp eq ptr %call31, null
  %25 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ha, align 128
  br i1 %tobool33.not, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end26
  %init_name.i.i140 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 3
  %27 = ptrtoint ptr %init_name.i.i140 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i140, align 8
  %tobool.not.i.i141 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i141, label %if.end.i.i143, label %if.then34.pci_name.exit145_crit_edge

if.then34.pci_name.exit145_crit_edge:             ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit145

if.end.i.i143:                                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i142 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %29 = ptrtoint ptr %dev.i142 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i142, align 4
  br label %pci_name.exit145

pci_name.exit145:                                 ; preds = %if.end.i.i143, %if.then34.pci_name.exit145_crit_edge
  %retval.0.i.i144 = phi ptr [ %30, %if.end.i.i143 ], [ %28, %if.then34.pci_name.exit145_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 0, ptr noundef %26, i32 noundef 296, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i144) #13
  br label %return

if.end38:                                         ; preds = %if.end26
  %arrayidx41 = getelementptr %struct.pci_dev, ptr %26, i32 0, i32 47, i32 2
  %flags42 = getelementptr %struct.pci_dev, ptr %26, i32 0, i32 47, i32 2, i32 3
  %31 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags42, align 4
  %and43 = and i32 %32, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end49

if.then45:                                        ; preds = %if.end38
  %init_name.i.i146 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 3
  %33 = ptrtoint ptr %init_name.i.i146 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i146, align 8
  %tobool.not.i.i147 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i147, label %if.end.i.i149, label %if.then45.pci_name.exit151_crit_edge

if.then45.pci_name.exit151_crit_edge:             ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit151

if.end.i.i149:                                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i148 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %35 = ptrtoint ptr %dev.i148 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i148, align 4
  br label %pci_name.exit151

pci_name.exit151:                                 ; preds = %if.end.i.i149, %if.then45.pci_name.exit151_crit_edge
  %retval.0.i.i150 = phi ptr [ %36, %if.end.i.i149 ], [ %34, %if.then45.pci_name.exit151_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 1, ptr noundef %26, i32 noundef 297, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i150) #13
  br label %return

if.end49:                                         ; preds = %if.end38
  %end53 = getelementptr %struct.pci_dev, ptr %26, i32 0, i32 47, i32 2, i32 1
  %37 = ptrtoint ptr %end53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp54 = icmp eq i32 %38, 0
  br i1 %cmp54, label %if.end49.if.then70_crit_edge, label %cond.false56

if.end49.if.then70_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70

cond.false56:                                     ; preds = %if.end49
  %39 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx41, align 8
  %sub65 = add i32 %38, 1
  %add66 = sub i32 %sub65, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %add66)
  %phi.cmp127 = icmp ult i32 %add66, 131072
  br i1 %phi.cmp127, label %cond.false56.if.then70_crit_edge, label %if.end74

cond.false56.if.then70_crit_edge:                 ; preds = %cond.false56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70

if.then70:                                        ; preds = %cond.false56.if.then70_crit_edge, %if.end49.if.then70_crit_edge
  %init_name.i.i152 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 3
  %41 = ptrtoint ptr %init_name.i.i152 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i152, align 8
  %tobool.not.i.i153 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i153, label %if.end.i.i155, label %if.then70.pci_name.exit157_crit_edge

if.then70.pci_name.exit157_crit_edge:             ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit157

if.end.i.i155:                                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i154 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %43 = ptrtoint ptr %dev.i154 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i154, align 4
  br label %pci_name.exit157

pci_name.exit157:                                 ; preds = %if.end.i.i155, %if.then70.pci_name.exit157_crit_edge
  %retval.0.i.i156 = phi ptr [ %44, %if.end.i.i155 ], [ %42, %if.then70.pci_name.exit157_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 1, ptr noundef %26, i32 noundef 298, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i156) #13
  br label %return

if.end74:                                         ; preds = %cond.false56
  %call79 = tail call ptr @ioremap(i32 noundef %40, i32 noundef 131072) #13
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %45 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call79, ptr %iobase, align 4
  %tobool81.not = icmp eq ptr %call79, null
  br i1 %tobool81.not, label %if.then82, label %if.end86

if.then82:                                        ; preds = %if.end74
  %46 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ha, align 128
  %init_name.i.i158 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44, i32 3
  %48 = ptrtoint ptr %init_name.i.i158 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i158, align 8
  %tobool.not.i.i159 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i159, label %if.end.i.i161, label %if.then82.pci_name.exit163_crit_edge

if.then82.pci_name.exit163_crit_edge:             ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit163

if.end.i.i161:                                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i160 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %50 = ptrtoint ptr %dev.i160 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i160, align 4
  br label %pci_name.exit163

pci_name.exit163:                                 ; preds = %if.end.i.i161, %if.then82.pci_name.exit163_crit_edge
  %retval.0.i.i162 = phi ptr [ %51, %if.end.i.i161 ], [ %49, %if.then82.pci_name.exit163_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 0, ptr noundef %47, i32 noundef 299, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i162) #13
  br label %return

if.end86:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %max_rsp_queues = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 31
  %52 = ptrtoint ptr %max_rsp_queues to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %max_rsp_queues, align 1
  %max_req_queues = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 30
  %53 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %max_req_queues, align 8
  %54 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ha, align 128
  %56 = ptrtoint ptr %bars to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bars, align 4
  %58 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cregbase, align 64
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 2, ptr noundef %55, i32 noundef 300, ptr noundef nonnull @.str.14, i32 noundef %57, ptr noundef %59, ptr noundef nonnull %call79) #13
  br label %return

return:                                           ; preds = %if.end86, %pci_name.exit163, %pci_name.exit157, %pci_name.exit151, %pci_name.exit145, %pci_name.exit139, %pci_name.exit133, %pci_name.exit
  %retval.0 = phi i32 [ 0, %if.end86 ], [ -12, %pci_name.exit163 ], [ -12, %pci_name.exit157 ], [ -12, %pci_name.exit151 ], [ -12, %pci_name.exit145 ], [ -12, %pci_name.exit139 ], [ -12, %pci_name.exit133 ], [ -12, %pci_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log_pci(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_fw_ready(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  %state = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %state) #13
  %0 = call ptr @memset(ptr %state, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load volatile i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 314, ptr noundef nonnull @.str.15) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.neg = sub i32 -1000, %1
  br label %do.body

do.body:                                          ; preds = %if.end12, %if.end
  %call = call fastcc i32 @qlafx00_get_firmware_state(ptr noundef %vha, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then2, label %do.body.if.end8_crit_edge

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then2:                                         ; preds = %do.body
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %4)
  %cmp3 = icmp eq i32 %4, 4096
  br i1 %cmp3, label %if.else, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %do.body.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %5
  %cmp9 = icmp sgt i32 %sub, -1
  br i1 %cmp9, label %if.then15, label %if.end12

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 500) #13
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 316, ptr noundef nonnull @.str.17, i32 noundef %7, i32 noundef %8) #13
  br label %do.body

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 317, ptr noundef nonnull @.str.18) #13
  br label %if.end16

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 315, ptr noundef nonnull @.str.16, i32 noundef 4096) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 318, ptr noundef nonnull @.str.19) #13
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %rval.027 = phi i32 [ 0, %if.else ], [ 258, %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %state) #13
  ret i32 %rval.027
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlafx00_get_firmware_state(ptr noundef %vha, ptr nocapture noundef writeonly %states) unnamed_addr #0 align 64 {
entry:
  %mc = alloca %struct.mbx_cmd_32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mc) #13
  %0 = getelementptr inbounds i8, ptr %mc, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 140)
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4457, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qlafx00_get_firmware_state) #13
  %mb = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 2
  %2 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 105, ptr %mb, align 4
  %3 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %mc, align 4
  %in_mb = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 1
  %4 = ptrtoint ptr %in_mb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %in_mb, align 4
  %tov = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 5
  %5 = ptrtoint ptr %tov to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 30, ptr %tov, align 4
  %flags = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %flags, align 4
  %call = call fastcc i32 @qlafx00_mailbox_command(ptr noundef %vha, ptr noundef nonnull %mc)
  %arrayidx2 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %9 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %mb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mb, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4458, ptr noundef nonnull @.str.3, i32 noundef %call, i32 noundef %11) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4459, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qlafx00_get_firmware_state) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mc) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_configure_devices(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  %new_fcports.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %0 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpc_flags, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8336, ptr noundef nonnull @.str.20, i32 noundef %1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_fcports.i) #13
  %2 = getelementptr inbounds %struct.list_head, ptr %new_fcports.i, i32 0, i32 1
  %3 = ptrtoint ptr %new_fcports.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %new_fcports.i, ptr %new_fcports.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %new_fcports.i, ptr %2, align 4
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 4
  %fcport1.i = getelementptr inbounds %struct.qla_hw_data, ptr %6, i32 0, i32 278, i32 6
  %call.i = call i32 @qlafx00_fx_disc(ptr noundef %vha, ptr noundef %fcport1.i, i16 noundef zeroext 129) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.qlafx00_configure_all_targets.exit_crit_edge

entry.qlafx00_configure_all_targets.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_configure_all_targets.exit

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw.i, align 4
  %9 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dpc_flags, align 4
  %11 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.qlafx00_configure_all_targets.exit_crit_edge, label %if.end.i.i

if.end.i.qlafx00_configure_all_targets.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_configure_all_targets.exit

if.end.i.i:                                       ; preds = %if.end.i
  %loop_down_timer.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 21
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %loop_down_timer.i.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %loop_down_timer.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %loop_down_timer.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.if.then10.i.i_crit_edge

if.end.i.i.if.then10.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %14 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dpc_flags, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false.i.i.if.then10.i.i_crit_edge

lor.lhs.false.i.i.if.then10.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10.i.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false.i.i
  %17 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dpc_flags, align 4
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool9.not.i.i, label %if.end13.i.i, label %lor.lhs.false6.i.i.if.then10.i.i_crit_edge

lor.lhs.false6.i.i.if.then10.i.i_crit_edge:       ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %lor.lhs.false6.i.i.if.then10.i.i_crit_edge, %lor.lhs.false.i.i.if.then10.i.i_crit_edge, %if.end.i.i.if.then10.i.i_crit_edge
  %call.i.i165.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %loop_down_timer.i.i, i32 noundef 4) #13
  %20 = ptrtoint ptr %loop_down_timer.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %loop_down_timer.i.i, align 4
  call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags) #13
  br label %qlafx00_configure_all_targets.exit

if.end13.i.i:                                     ; preds = %lor.lhs.false6.i.i
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1342177280, ptr noundef %vha, i32 noundef 8328, ptr noundef nonnull @.str.62) #13
  %gid_list.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 94
  %21 = ptrtoint ptr %gid_list.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gid_list.i.i, align 4
  call void @ql_dump_buffer(i32 noundef 1342177280, ptr noundef %vha, i32 noundef 8329, ptr noundef %22, i32 noundef 32) #13
  %call14.i.i = call ptr @qla2x00_alloc_fcport(ptr noundef %vha, i32 noundef 3264) #13
  %cmp.i.i = icmp eq ptr %call14.i.i, null
  br i1 %cmp.i.i, label %if.end13.i.i.qlafx00_configure_all_targets.exit_crit_edge, label %if.end16.i.i

if.end13.i.i.qlafx00_configure_all_targets.exit_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_configure_all_targets.exit

if.end16.i.i:                                     ; preds = %if.end13.i.i
  %23 = ptrtoint ptr %gid_list.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gid_list.i.i, align 4
  %call18.i.i = call i32 @_find_next_bit_be(ptr noundef %24, i32 noundef 128, i32 noundef 0) #13
  %conv19176.i.i = and i32 %call18.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv19176.i.i)
  %cmp20177.i.i = icmp ult i32 %conv19176.i.i, 128
  br i1 %cmp20177.i.i, label %for.body.lr.ph.i.i, label %qlafx00_find_all_targets.exit.thread136.i

qlafx00_find_all_targets.exit.thread136.i:        ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @qla2x00_free_fcport(ptr noundef nonnull %call14.i.i) #13
  br label %if.end6.i

for.body.lr.ph.i.i:                               ; preds = %if.end16.i.i
  %vp_fcports.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc93.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %conv19180.i.i = phi i32 [ %conv19176.i.i, %for.body.lr.ph.i.i ], [ %conv19.i.i, %for.inc93.i.i.for.body.i.i_crit_edge ]
  %tgt_id.0.in179.i.i = phi i32 [ %call18.i.i, %for.body.lr.ph.i.i ], [ %call96.i.i, %for.inc93.i.i.for.body.i.i_crit_edge ]
  %new_fcport.0178.i.i = phi ptr [ %call14.i.i, %for.body.lr.ph.i.i ], [ %new_fcport.1.i.i, %for.inc93.i.i.for.body.i.i_crit_edge ]
  %tgt_id.0.i.i = trunc i32 %tgt_id.0.in179.i.i to i16
  %tgt_id22.i.i = getelementptr inbounds %struct.fc_port, ptr %new_fcport.0178.i.i, i32 0, i32 27
  %25 = ptrtoint ptr %tgt_id22.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %tgt_id.0.i.i, ptr %tgt_id22.i.i, align 4
  %call23.i.i = call i32 @qlafx00_fx_disc(ptr noundef %vha, ptr noundef %new_fcport.0178.i.i, i16 noundef zeroext 128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %cmp24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %cmp24.not.i.i, label %if.end27.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 8330, ptr noundef nonnull @.str.63) #13
  br label %for.inc93.i.i

if.end27.i.i:                                     ; preds = %for.body.i.i
  %port_name.i.i = getelementptr inbounds %struct.fc_port, ptr %new_fcport.0178.i.i, i32 0, i32 5
  br label %for.cond28.i.i

for.cond28.i.i:                                   ; preds = %for.body32.i.i.for.cond28.i.i_crit_edge, %if.end27.i.i
  %fcport.0.in.i.i = phi ptr [ %vp_fcports.i.i, %if.end27.i.i ], [ %fcport.0.i.i, %for.body32.i.i.for.cond28.i.i_crit_edge ]
  %26 = ptrtoint ptr %fcport.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %fcport.0.i.i = load ptr, ptr %fcport.0.in.i.i, align 8
  %cmp30.not.i.i = icmp eq ptr %fcport.0.i.i, %vp_fcports.i.i
  br i1 %cmp30.not.i.i, label %if.end86.critedge.i.i, label %for.body32.i.i

for.body32.i.i:                                   ; preds = %for.cond28.i.i
  %port_name33.i.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0.i.i, i32 0, i32 5
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %port_name.i.i, ptr noundef dereferenceable(8) %port_name33.i.i, i32 8) #16
  %tobool36.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end38.i.i, label %for.body32.i.i.for.cond28.i.i_crit_edge

for.body32.i.i.for.cond28.i.i_crit_edge:          ; preds = %for.body32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond28.i.i

if.end38.i.i:                                     ; preds = %for.body32.i.i
  %tgt_id39.i.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0.i.i, i32 0, i32 27
  %27 = ptrtoint ptr %tgt_id39.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tgt_id39.i.i, align 4
  %29 = ptrtoint ptr %tgt_id22.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tgt_id22.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp43.i.i = icmp eq i16 %28, %30
  br i1 %cmp43.i.i, label %land.lhs.true.i.i, label %if.end38.i.i.if.end49.i.i_crit_edge

if.end38.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i.i

land.lhs.true.i.i:                                ; preds = %if.end38.i.i
  %state.i.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0.i.i, i32 0, i32 34
  %call.i.i166.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state.i.i, i32 noundef 4) #13
  %31 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp46.i.i = icmp eq i32 %32, 4
  br i1 %cmp46.i.i, label %land.lhs.true.i.i.for.inc93.i.i_crit_edge, label %land.lhs.true.i.i.if.end49.i.i_crit_edge

land.lhs.true.i.i.if.end49.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i.i

land.lhs.true.i.i.for.inc93.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc93.i.i

if.end49.i.i:                                     ; preds = %land.lhs.true.i.i.if.end49.i.i_crit_edge, %if.end38.i.i.if.end49.i.i_crit_edge
  %33 = ptrtoint ptr %tgt_id39.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tgt_id39.i.i, align 4
  %conv51.i.i = zext i16 %34 to i32
  %state52.i.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0.i.i, i32 0, i32 34
  %call.i.i167.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state52.i.i, i32 noundef 4) #13
  %35 = ptrtoint ptr %state52.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state52.i.i, align 4
  %node_name.i.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %node_name.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %node_name.i.i, align 1
  %39 = ptrtoint ptr %port_name33.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %port_name33.i.i, align 1
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1342177280, ptr noundef %vha, i32 noundef 8331, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.qlafx00_find_all_targets, i32 noundef %conv51.i.i, i32 noundef %36, i64 noundef %38, i64 noundef %40) #13
  %41 = ptrtoint ptr %tgt_id22.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tgt_id22.i.i, align 4
  %conv60.i.i = zext i16 %42 to i32
  %node_name61.i.i = getelementptr inbounds %struct.fc_port, ptr %new_fcport.0178.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %node_name61.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %node_name61.i.i, align 1
  %45 = ptrtoint ptr %port_name.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %port_name.i.i, align 1
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8332, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.qlafx00_find_all_targets, i32 noundef %conv60.i.i, i64 noundef %44, i64 noundef %46) #13
  %call.i.i168.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state52.i.i, i32 noundef 4) #13
  %47 = ptrtoint ptr %state52.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %state52.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp69.not.i.i = icmp eq i32 %48, 4
  br i1 %cmp69.not.i.i, label %qlafx00_find_all_targets.exit.thread133.i, label %if.then71.i.i

if.then71.i.i:                                    ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %tgt_id39.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tgt_id39.i.i, align 4
  %old_tgt_id.i.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0.i.i, i32 0, i32 28
  %51 = ptrtoint ptr %old_tgt_id.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %old_tgt_id.i.i, align 2
  %52 = ptrtoint ptr %tgt_id22.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %tgt_id22.i.i, align 4
  store i16 %53, ptr %tgt_id39.i.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8333, ptr noundef nonnull @.str.66, ptr noundef %fcport.0.i.i) #13
  call void @qla2x00_update_fcport(ptr noundef %vha, ptr noundef %fcport.0.i.i) #13
  br label %for.inc93.i.i

qlafx00_find_all_targets.exit.thread133.i:        ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %old_tgt_id75.i.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0.i.i, i32 0, i32 28
  %54 = ptrtoint ptr %old_tgt_id75.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %old_tgt_id75.i.i, align 2
  %conv76.i.i = zext i16 %55 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8334, ptr noundef nonnull @.str.67, i32 noundef %conv76.i.i) #13
  call void @qla2x00_mark_device_lost(ptr noundef %vha, ptr noundef %fcport.0.i.i, i32 noundef 0) #13
  call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags) #13
  call void @qla2x00_free_fcport(ptr noundef %new_fcport.0178.i.i) #13
  br label %if.end6.i

if.end86.critedge.i.i:                            ; preds = %for.cond28.i.i
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %2, align 4
  %call.i.i169.i.i = call zeroext i1 @__list_add_valid(ptr noundef %new_fcport.0178.i.i, ptr noundef %57, ptr noundef nonnull %new_fcports.i) #13
  br i1 %call.i.i169.i.i, label %if.end.i.i.i.i, label %if.end86.critedge.i.i.list_add_tail.exit.i.i_crit_edge

if.end86.critedge.i.i.list_add_tail.exit.i.i_crit_edge: ; preds = %if.end86.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end86.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %new_fcport.0178.i.i, ptr %2, align 4
  %59 = ptrtoint ptr %new_fcport.0178.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %new_fcports.i, ptr %new_fcport.0178.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %new_fcport.0178.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %new_fcport.0178.i.i, ptr %57, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end86.critedge.i.i.list_add_tail.exit.i.i_crit_edge
  %call88.i.i = call ptr @qla2x00_alloc_fcport(ptr noundef %vha, i32 noundef 3264) #13
  %cmp89.i.i = icmp eq ptr %call88.i.i, null
  br i1 %cmp89.i.i, label %list_add_tail.exit.i.i.qlafx00_configure_all_targets.exit_crit_edge, label %list_add_tail.exit.i.i.for.inc93.i.i_crit_edge

list_add_tail.exit.i.i.for.inc93.i.i_crit_edge:   ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc93.i.i

list_add_tail.exit.i.i.qlafx00_configure_all_targets.exit_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_configure_all_targets.exit

for.inc93.i.i:                                    ; preds = %list_add_tail.exit.i.i.for.inc93.i.i_crit_edge, %if.then71.i.i, %land.lhs.true.i.i.for.inc93.i.i_crit_edge, %if.then26.i.i
  %new_fcport.1.i.i = phi ptr [ %new_fcport.0178.i.i, %if.then26.i.i ], [ %call88.i.i, %list_add_tail.exit.i.i.for.inc93.i.i_crit_edge ], [ %new_fcport.0178.i.i, %if.then71.i.i ], [ %new_fcport.0178.i.i, %land.lhs.true.i.i.for.inc93.i.i_crit_edge ]
  %62 = ptrtoint ptr %gid_list.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gid_list.i.i, align 4
  %add.i.i = add nuw nsw i32 %conv19180.i.i, 1
  %call96.i.i = call i32 @_find_next_bit_be(ptr noundef %63, i32 noundef 128, i32 noundef %add.i.i) #13
  %conv19.i.i = and i32 %call96.i.i, 65535
  %cmp20.i.i = icmp ult i32 %conv19.i.i, 128
  br i1 %cmp20.i.i, label %for.inc93.i.i.for.body.i.i_crit_edge, label %qlafx00_find_all_targets.exit.i

for.inc93.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc93.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

qlafx00_find_all_targets.exit.i:                  ; preds = %for.inc93.i.i
  call void @qla2x00_free_fcport(ptr noundef %new_fcport.1.i.i) #13
  br i1 %cmp24.not.i.i, label %qlafx00_find_all_targets.exit.i.if.end6.i_crit_edge, label %qlafx00_find_all_targets.exit.i.qlafx00_configure_all_targets.exit_crit_edge

qlafx00_find_all_targets.exit.i.qlafx00_configure_all_targets.exit_crit_edge: ; preds = %qlafx00_find_all_targets.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_configure_all_targets.exit

qlafx00_find_all_targets.exit.i.if.end6.i_crit_edge: ; preds = %qlafx00_find_all_targets.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.end6.i:                                        ; preds = %qlafx00_find_all_targets.exit.i.if.end6.i_crit_edge, %qlafx00_find_all_targets.exit.thread133.i, %qlafx00_find_all_targets.exit.thread136.i
  %vp_fcports.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %64 = ptrtoint ptr %vp_fcports.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %fcport.0146.i = load ptr, ptr %vp_fcports.i, align 8
  %cmp9.not147.i = icmp eq ptr %fcport.0146.i, %vp_fcports.i
  br i1 %cmp9.not147.i, label %if.end6.i.for.end.i_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %fcport.0148.i = phi ptr [ %fcport.0.i, %for.inc.i.for.body.i_crit_edge ], [ %fcport.0146.i, %if.end6.i.for.body.i_crit_edge ]
  %65 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %dpc_flags, align 4
  %67 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i, label %if.end13.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end13.i:                                       ; preds = %for.body.i
  %state.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0148.i, i32 0, i32 34
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #13
  %68 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp15.i = icmp eq i32 %69, 3
  br i1 %cmp15.i, label %if.then16.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.end13.i
  %port_type.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0148.i, i32 0, i32 33
  %70 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp17.not.i = icmp eq i32 %71, 2
  br i1 %cmp17.not.i, label %if.then16.i.for.inc.i_crit_edge, label %if.then18.i

if.then16.i.for.inc.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then18.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @qla2x00_mark_device_lost(ptr noundef %vha, ptr noundef %fcport.0148.i, i32 noundef 0) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then18.i, %if.then16.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge
  %72 = ptrtoint ptr %fcport.0148.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %fcport.0.i = load ptr, ptr %fcport.0148.i, align 8
  %cmp9.not.i = icmp eq ptr %fcport.0.i, %vp_fcports.i
  br i1 %cmp9.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end6.i.for.end.i_crit_edge
  %73 = ptrtoint ptr %new_fcports.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %new_fcports.i, align 4
  %cmp37.not150.i = icmp eq ptr %74, %new_fcports.i
  br i1 %cmp37.not150.i, label %for.end.i.for.end56.i_crit_edge, label %for.body39.lr.ph.i

for.end.i.for.end56.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end56.i

for.body39.lr.ph.i:                               ; preds = %for.end.i
  %prev.i2.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1, i32 1
  br label %for.body39.i

for.body39.i:                                     ; preds = %list_move_tail.exit.i.for.body39.i_crit_edge, %for.body39.lr.ph.i
  %fcport.1151.i = phi ptr [ %74, %for.body39.lr.ph.i ], [ %rmptemp.0154.i, %list_move_tail.exit.i.for.body39.i_crit_edge ]
  %75 = ptrtoint ptr %fcport.1151.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %rmptemp.0154.i = load ptr, ptr %fcport.1151.i, align 8
  %76 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %dpc_flags, align 4
  %78 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool42.not.i = icmp eq i32 %78, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %for.body39.i.for.end56.i_crit_edge

for.body39.i.for.end56.i_crit_edge:               ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end56.i

if.end44.i:                                       ; preds = %for.body39.i
  call void @qla2x00_update_fcport(ptr noundef %vha, ptr noundef %fcport.1151.i) #13
  %call.i.i119.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %fcport.1151.i) #13
  br i1 %call.i.i119.i, label %if.end.i.i.i, label %if.end44.i.__list_del_entry.exit.i.i_crit_edge

if.end44.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i120.i = getelementptr inbounds %struct.list_head, ptr %fcport.1151.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i120.i, align 4
  %81 = ptrtoint ptr %fcport.1151.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fcport.1151.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end44.i.__list_del_entry.exit.i.i_crit_edge
  %85 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i121.i = call zeroext i1 @__list_add_valid(ptr noundef %fcport.1151.i, ptr noundef %86, ptr noundef %vp_fcports.i) #13
  br i1 %call.i.i.i121.i, label %if.end.i.i.i123.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move_tail.exit.i

if.end.i.i.i123.i:                                ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %fcport.1151.i, ptr %prev.i2.i.i, align 4
  %88 = ptrtoint ptr %fcport.1151.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %vp_fcports.i, ptr %fcport.1151.i, align 4
  %prev3.i.i.i122.i = getelementptr inbounds %struct.list_head, ptr %fcport.1151.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i122.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev3.i.i.i122.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %fcport.1151.i, ptr %86, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i123.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %tgt_id.i = getelementptr inbounds %struct.fc_port, ptr %fcport.1151.i, i32 0, i32 27
  %91 = ptrtoint ptr %tgt_id.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %tgt_id.i, align 4
  %conv.i = zext i16 %92 to i32
  %node_name.i = getelementptr inbounds %struct.fc_port, ptr %fcport.1151.i, i32 0, i32 4
  %93 = ptrtoint ptr %node_name.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 8)
  %94 = load i64, ptr %node_name.i, align 1
  %port_name.i = getelementptr inbounds %struct.fc_port, ptr %fcport.1151.i, i32 0, i32 5
  %95 = ptrtoint ptr %port_name.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 8)
  %96 = load i64, ptr %port_name.i, align 1
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8335, ptr noundef nonnull @.str.61, i32 noundef %conv.i, i64 noundef %94, i64 noundef %96) #13
  %cmp37.not.i = icmp eq ptr %rmptemp.0154.i, %new_fcports.i
  br i1 %cmp37.not.i, label %list_move_tail.exit.i.for.end56.i_crit_edge, label %list_move_tail.exit.i.for.body39.i_crit_edge

list_move_tail.exit.i.for.body39.i_crit_edge:     ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body39.i

list_move_tail.exit.i.for.end56.i_crit_edge:      ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end56.i

for.end56.i:                                      ; preds = %list_move_tail.exit.i.for.end56.i_crit_edge, %for.body39.i.for.end56.i_crit_edge, %for.end.i.for.end56.i_crit_edge
  %97 = ptrtoint ptr %new_fcports.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %new_fcports.i, align 4
  %cmp68.not155.i = icmp eq ptr %98, %new_fcports.i
  br i1 %cmp68.not155.i, label %for.end56.i.if.then_crit_edge, label %for.end56.i.for.body71.i_crit_edge

for.end56.i.for.body71.i_crit_edge:               ; preds = %for.end56.i
  br label %for.body71.i

for.end56.i.if.then_crit_edge:                    ; preds = %for.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.body71.i:                                     ; preds = %list_del.exit.i.for.body71.i_crit_edge, %for.end56.i.for.body71.i_crit_edge
  %fcport.2156.i = phi ptr [ %rmptemp.1.i, %list_del.exit.i.for.body71.i_crit_edge ], [ %98, %for.end56.i.for.body71.i_crit_edge ]
  %99 = ptrtoint ptr %fcport.2156.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %rmptemp.1.i = load ptr, ptr %fcport.2156.i, align 8
  %call.i.i125.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %fcport.2156.i) #13
  br i1 %call.i.i125.i, label %if.end.i.i128.i, label %for.body71.i.list_del.exit.i_crit_edge

for.body71.i.list_del.exit.i_crit_edge:           ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i128.i:                                  ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i126.i = getelementptr inbounds %struct.list_head, ptr %fcport.2156.i, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i126.i, align 4
  %102 = ptrtoint ptr %fcport.2156.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fcport.2156.i, align 4
  %prev1.i.i.i127.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i127.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i128.i, %for.body71.i.list_del.exit.i_crit_edge
  %106 = ptrtoint ptr %fcport.2156.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %fcport.2156.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fcport.2156.i, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @qla2x00_free_fcport(ptr noundef %fcport.2156.i) #13
  %cmp68.not.i = icmp eq ptr %rmptemp.1.i, %new_fcports.i
  br i1 %cmp68.not.i, label %list_del.exit.i.if.then_crit_edge, label %list_del.exit.i.for.body71.i_crit_edge

list_del.exit.i.for.body71.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body71.i

list_del.exit.i.if.then_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

qlafx00_configure_all_targets.exit:               ; preds = %qlafx00_find_all_targets.exit.i.qlafx00_configure_all_targets.exit_crit_edge, %list_add_tail.exit.i.i.qlafx00_configure_all_targets.exit_crit_edge, %if.end13.i.i.qlafx00_configure_all_targets.exit_crit_edge, %if.then10.i.i, %if.end.i.qlafx00_configure_all_targets.exit_crit_edge, %entry.qlafx00_configure_all_targets.exit_crit_edge
  %retval.0.ph.i = phi i32 [ 259, %if.end13.i.i.qlafx00_configure_all_targets.exit_crit_edge ], [ 258, %if.end.i.qlafx00_configure_all_targets.exit_crit_edge ], [ 258, %if.then10.i.i ], [ %call23.i.i, %qlafx00_find_all_targets.exit.i.qlafx00_configure_all_targets.exit_crit_edge ], [ %call.i, %entry.qlafx00_configure_all_targets.exit_crit_edge ], [ 259, %list_add_tail.exit.i.i.qlafx00_configure_all_targets.exit_crit_edge ]
  call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_fcports.i) #13
  br label %if.then6

if.then:                                          ; preds = %list_del.exit.i.if.then_crit_edge, %for.end56.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_fcports.i) #13
  %108 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %dpc_flags, align 4
  %110 = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not = icmp eq i32 %110, 0
  br i1 %tobool.not, label %if.else7, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %if.then.if.then6_crit_edge, %qlafx00_configure_all_targets.exit
  %rval.0.ph = phi i32 [ 258, %if.then.if.then6_crit_edge ], [ %retval.0.ph.i, %qlafx00_configure_all_targets.exit ]
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8338, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.qlafx00_configure_devices) #13
  br label %if.end8

if.else7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %loop_state, i32 noundef 4) #13
  %111 = ptrtoint ptr %loop_state to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 5, ptr %loop_state, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 8337, ptr noundef nonnull @.str.21) #13
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8339, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.qlafx00_configure_devices) #13
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  %rval.022 = phi i32 [ 0, %if.else7 ], [ %rval.0.ph, %if.then6 ]
  ret i32 %rval.022
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlafx00_init_response_q_entries(ptr nocapture noundef %rsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ring = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 1
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %ring_ptr = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 2
  %2 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %ring_ptr, align 4
  %ring_index = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 5
  %3 = ptrtoint ptr %ring_index to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %ring_index, align 4
  %status_srb = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 16
  %4 = ptrtoint ptr %status_srb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %status_srb, align 4
  %length = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 8
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp13.not = icmp eq i16 %6, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pkt.015 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %cnt.014 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %signature = getelementptr inbounds %struct.response_t, ptr %pkt.015, i32 0, i32 6
  %7 = ptrtoint ptr %signature to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -559030611, ptr %signature, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %signature, i32 -1377915426) #13, !srcloc !266
  %incdec.ptr = getelementptr %struct.response_t, ptr %pkt.015, i32 1
  %inc = add nuw i16 %cnt.014, 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length, align 4
  %cmp = icmp ult i16 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_rescan_isp(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsp_q_map, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 @qla2x00_request_irqs(ptr noundef %1, ptr noundef %7) #13
  %aenmailbox7 = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 39
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox7) #13, !srcloc !269
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %shr = lshr i32 %9, 16
  %mbx_intr_code = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %mbx_intr_code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %mbx_intr_code, align 4
  %conv4 = and i32 %9, 65535
  %rqstq_intr_code = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %rqstq_intr_code to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv4, ptr %rqstq_intr_code, align 8
  %aenmailbox1 = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 33
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox1) #13, !srcloc !269
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %req_que_off = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %req_que_off to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %req_que_off, align 8
  %aenmailbox3 = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 35
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox3) #13, !srcloc !269
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %rsp_que_off = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %rsp_que_off to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rsp_que_off, align 4
  %aenmailbox5 = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 37
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox5) #13, !srcloc !269
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %req_que_len = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %req_que_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %req_que_len, align 16
  %aenmailbox6 = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 38
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox6) #13, !srcloc !269
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %rsp_que_len = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %rsp_que_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rsp_que_len, align 4
  %24 = ptrtoint ptr %mbx_intr_code to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mbx_intr_code, align 4
  %26 = ptrtoint ptr %rqstq_intr_code to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rqstq_intr_code, align 8
  %28 = ptrtoint ptr %req_que_off to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %req_que_off, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8340, ptr noundef nonnull @.str.24, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %22) #13
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cregbase, align 64
  %add.ptr = getelementptr i8, ptr %31, i32 138096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -117440513) #13, !srcloc !266
  %call13 = tail call i32 @qla2x00_init_rings(ptr noundef %vha) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, 1073741824
  store volatile i32 %bf.set, ptr %flags, align 8
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %fcport = getelementptr inbounds %struct.qla_hw_data, ptr %34, i32 0, i32 278, i32 6
  %call17 = tail call i32 @qlafx00_fx_disc(ptr noundef %vha, ptr noundef %fcport, i16 noundef zeroext 153)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then.if.end21_crit_edge, label %if.then19

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 268435456, ptr noundef %vha, i32 noundef 8341, ptr noundef nonnull @.str.25) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %35 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host, align 8
  tail call void @scsi_unblock_requests(ptr noundef %36) #13
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_request_irqs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_init_rings(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_fx_disc(ptr noundef %vha, ptr noundef %fcport, i16 noundef zeroext %fx_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %vref_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 60
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #13, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !273
  tail call void @arm_heavy_mb() #13
  %flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %4 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #13, !srcloc !274
  %vref_waitq.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %done267

if.end9.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %base_qpair.i = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 34
  %8 = ptrtoint ptr %base_qpair.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_qpair.i, align 4
  %ref_count.i.i = getelementptr inbounds %struct.qla_qpair, ptr %9, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #13, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %delete_in_progress.i.i = getelementptr inbounds %struct.qla_qpair, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %delete_in_progress.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %delete_in_progress.i.i, align 64
  %12 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.end9.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #13, !srcloc !274
  br label %do.body16.critedge.i

if.end9.i.i:                                      ; preds = %if.end9.i
  %srb_mempool.i.i = getelementptr inbounds %struct.qla_qpair, ptr %9, i32 0, i32 9
  %14 = ptrtoint ptr %srb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %srb_mempool.i.i, align 8
  %call.i.i = tail call noalias ptr @mempool_alloc(ptr noundef %15, i32 noundef 3264) #13
  %tobool10.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i.i, label %if.else12.i.i, label %if.end

if.else12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #13, !srcloc !274
  br label %do.body16.critedge.i

do.body16.critedge.i:                             ; preds = %if.else12.i.i, %if.then.i.i
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vref_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %vref_count.i, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vref_count.i, ptr %vref_count.i, i32 1, ptr elementtype(i32) %vref_count.i) #13, !srcloc !274
  %vref_waitq18.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %vref_waitq18.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %done267

if.end:                                           ; preds = %if.end9.i.i
  %18 = call ptr @memset(ptr %call.i.i, i32 0, i32 424)
  %fcport1.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %fcport1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %fcport, ptr %fcport1.i.i.i, align 4
  %iocbs.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 13
  %20 = ptrtoint ptr %iocbs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %iocbs.i.i.i, align 4
  %vha2.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 7
  %qpair3.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 14
  %21 = ptrtoint ptr %qpair3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %9, ptr %qpair3.i.i.i, align 8
  %elem.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %elem.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %elem.i.i.i, ptr %elem.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 16, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %elem.i.i.i, ptr %prev.i.i.i.i, align 4
  %24 = ptrtoint ptr %vha2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vha, ptr %vha2.i.i.i, align 8
  %type = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 11
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 10, ptr %type, align 2
  %name = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 12
  %26 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.30, ptr %name, align 8
  %u = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22
  %timeout = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 2
  %27 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @qla2x00_fxdisc_iocb_timeout, ptr %timeout, align 8
  tail call void @qla2x00_init_timer(ptr noundef nonnull %call.i.i, i32 noundef 20) #13
  %28 = zext i16 %fx_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i16 %fx_type, label %if.end.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb3
    i16 128, label %sw.bb10
    i16 129, label %sw.bb18
    i16 153, label %sw.bb23
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %u, align 8
  %rsp_len = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %rsp_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 500, ptr %rsp_len, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %u, align 8
  %rsp_len7 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %rsp_len7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 304, ptr %rsp_len7, align 8
  %port_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 45
  %33 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %port_id, align 8
  %conv8 = zext i16 %34 to i32
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv8)
  %req_data = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %req_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %req_data, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 6, ptr %u, align 8
  %rsp_len14 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %rsp_len14 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 212, ptr %rsp_len14, align 8
  %tgt_id = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 27
  %39 = ptrtoint ptr %tgt_id to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tgt_id, align 4
  %conv15 = zext i16 %40 to i32
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv15)
  %req_data17 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %req_data17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %req_data17, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 6, ptr %u, align 8
  %rsp_len22 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %rsp_len22 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %rsp_len22, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %45 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %u, align 8
  %req_len = getelementptr inbounds %struct.anon.88, ptr %u, i32 0, i32 1
  %46 = ptrtoint ptr %req_len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1036, ptr %req_len, align 4
  %47 = tail call i32 @llvm.read_register.i32(metadata !255) #13
  %and.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 110
  %51 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %uts_ns.i, align 4
  %tobool28.not = icmp eq ptr %54, null
  br i1 %tobool28.not, label %if.then29, label %sw.bb23.sw.epilog_crit_edge

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then29:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 12348, ptr noundef nonnull @.str.31) #13
  br label %done_free_sp

sw.epilog:                                        ; preds = %sw.bb23.sw.epilog_crit_edge, %sw.bb18, %sw.bb10, %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  %p_sysid.0 = phi ptr [ null, %if.end.sw.epilog_crit_edge ], [ %54, %sw.bb23.sw.epilog_crit_edge ], [ null, %sw.bb18 ], [ null, %sw.bb10 ], [ null, %sw.bb3 ], [ null, %sw.bb ]
  %55 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %u, align 8
  %57 = and i8 %56, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool35.not = icmp eq i8 %57, 0
  br i1 %tobool35.not, label %sw.epilog.if.end102_crit_edge, label %if.then36

sw.epilog.if.end102_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then36:                                        ; preds = %sw.epilog
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %req_len38 = getelementptr inbounds %struct.anon.88, ptr %u, i32 0, i32 1
  %60 = ptrtoint ptr %req_len38 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %req_len38, align 4
  %req_dma_handle = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %61, ptr noundef %req_dma_handle, i32 noundef 3264, i32 noundef 0) #13
  %req_addr = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %62 = ptrtoint ptr %req_addr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %req_addr, align 4
  %tobool44.not = icmp eq ptr %call.i, null
  br i1 %tobool44.not, label %if.then36.done_free_sp_crit_edge, label %if.end46

if.then36.done_free_sp_crit_edge:                 ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_free_sp

if.end46:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp2(i16 153, i16 %fx_type)
  %cmp = icmp eq i16 %fx_type, 153
  br i1 %cmp, label %if.then49, label %if.end46.if.end102_crit_edge

if.end46.if.end102_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then49:                                        ; preds = %if.end46
  %63 = getelementptr inbounds i8, ptr %call.i, i32 4
  %64 = call ptr @memset(ptr %63, i32 0, i32 1032)
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 2, ptr %call.i, align 1
  %sysname = getelementptr inbounds %struct.host_system_info, ptr %call.i, i32 0, i32 1
  %call54 = tail call i32 @strlcpy(ptr noundef %sysname, ptr noundef %p_sysid.0, i32 noundef 128) #13
  %nodename = getelementptr inbounds %struct.host_system_info, ptr %call.i, i32 0, i32 2
  %nodename56 = getelementptr inbounds %struct.new_utsname, ptr %p_sysid.0, i32 0, i32 1
  %call58 = tail call i32 @strlcpy(ptr noundef %nodename, ptr noundef %nodename56, i32 noundef 64) #13
  %call61 = tail call i32 @strcmp(ptr noundef %nodename, ptr noundef nonnull dereferenceable(7) @.str.32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %if.then49.if.end64_crit_edge

if.then49.if.end64_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then63:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  %host_info_resend = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 17
  %66 = ptrtoint ptr %host_info_resend to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %host_info_resend, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.then49.if.end64_crit_edge
  %release = getelementptr inbounds %struct.host_system_info, ptr %call.i, i32 0, i32 3
  %release66 = getelementptr inbounds %struct.new_utsname, ptr %p_sysid.0, i32 0, i32 2
  %call68 = tail call i32 @strlcpy(ptr noundef %release, ptr noundef %release66, i32 noundef 64) #13
  %version = getelementptr inbounds %struct.host_system_info, ptr %call.i, i32 0, i32 4
  %version70 = getelementptr inbounds %struct.new_utsname, ptr %p_sysid.0, i32 0, i32 3
  %call72 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef %version70, i32 noundef 64) #13
  %machine = getelementptr inbounds %struct.host_system_info, ptr %call.i, i32 0, i32 5
  %machine74 = getelementptr inbounds %struct.new_utsname, ptr %p_sysid.0, i32 0, i32 4
  %call76 = tail call i32 @strlcpy(ptr noundef %machine, ptr noundef %machine74, i32 noundef 64) #13
  %domainname = getelementptr inbounds %struct.host_system_info, ptr %call.i, i32 0, i32 6
  %domainname78 = getelementptr inbounds %struct.new_utsname, ptr %p_sysid.0, i32 0, i32 5
  %call80 = tail call i32 @strlcpy(ptr noundef %domainname, ptr noundef %domainname78, i32 noundef 64) #13
  %hostdriver = getelementptr inbounds %struct.host_system_info, ptr %call.i, i32 0, i32 7
  %call82 = tail call i32 @strlcpy(ptr noundef %hostdriver, ptr noundef nonnull @.str.33, i32 noundef 64) #13
  %call83 = tail call i64 @ktime_get_real_seconds() #13
  %utc = getelementptr inbounds %struct.register_host_info, ptr %call.i, i32 0, i32 1
  %67 = ptrtoint ptr %utc to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 %call83, ptr %utc, align 1
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %device, align 2
  %conv85 = zext i16 %71 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 329, ptr noundef nonnull @.str.34, i32 noundef %conv85) #13
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %call.i, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 330, ptr noundef nonnull @.str.35, i32 noundef %73, ptr noundef %sysname, ptr noundef %nodename) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 331, ptr noundef nonnull @.str.36, ptr noundef %release, ptr noundef %version) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 332, ptr noundef nonnull @.str.37, ptr noundef %machine, ptr noundef %domainname, ptr noundef %hostdriver) #13
  tail call void @ql_dump_buffer(i32 noundef 1342177280, ptr noundef %vha, i32 noundef 333, ptr noundef nonnull %call.i, i32 noundef 772) #13
  br label %if.end102

if.end102:                                        ; preds = %if.end64, %if.end46.if.end102_crit_edge, %sw.epilog.if.end102_crit_edge
  %74 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %u, align 8
  %76 = and i8 %75, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool107.not = icmp eq i8 %76, 0
  br i1 %tobool107.not, label %if.end102.if.end121_crit_edge, label %if.then108

if.end102.if.end121_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then108:                                       ; preds = %if.end102
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 128
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %rsp_len112 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %rsp_len112 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rsp_len112, align 8
  %rsp_dma_handle = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %call.i408 = tail call ptr @dma_alloc_attrs(ptr noundef %dev110, i32 noundef %80, ptr noundef %rsp_dma_handle, i32 noundef 3264, i32 noundef 0) #13
  %rsp_addr = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %81 = ptrtoint ptr %rsp_addr to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i408, ptr %rsp_addr, align 8
  %tobool118.not = icmp eq ptr %call.i408, null
  br i1 %tobool118.not, label %if.then108.done_unmap_req_crit_edge, label %if.then108.if.end121_crit_edge

if.then108.if.end121_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then108.done_unmap_req_crit_edge:              ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_unmap_req

if.end121:                                        ; preds = %if.then108.if.end121_crit_edge, %if.end102.if.end121_crit_edge
  %82 = tail call i16 @llvm.bswap.i16(i16 %fx_type)
  %req_func_type = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %83 = ptrtoint ptr %req_func_type to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %req_func_type, align 4
  %done = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 24
  %84 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @qla2x00_fxdisc_sp_done, ptr %done, align 4
  %call123 = tail call i32 @qla2x00_start_sp(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124.not = icmp eq i32 %call123, 0
  br i1 %cmp124.not, label %if.end127, label %if.end121.done_unmap_dma_crit_edge

if.end121.done_unmap_dma_crit_edge:               ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_unmap_dma

if.end127:                                        ; preds = %if.end121
  %fxiocb_comp = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 7
  tail call void @wait_for_completion(ptr noundef %fxiocb_comp) #13
  %85 = zext i16 %fx_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %fx_type, label %if.end127.if.end238_crit_edge [
    i16 1, label %if.then132
    i16 2, label %if.then183
    i16 128, label %if.then204
    i16 129, label %if.then218
    i16 255, label %if.then227
  ]

if.end127.if.end238_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end238

if.then132:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  %rsp_addr134 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %86 = ptrtoint ptr %rsp_addr134 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rsp_addr134, align 8
  %88 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw, align 4
  %model_number = getelementptr inbounds %struct.qla_hw_data, ptr %89, i32 0, i32 195
  %call138 = tail call i32 @strlcpy(ptr noundef %model_number, ptr noundef %87, i32 noundef 17) #13
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 4
  %model_desc = getelementptr inbounds %struct.qla_hw_data, ptr %91, i32 0, i32 196
  %model_description = getelementptr inbounds %struct.config_info_data, ptr %87, i32 0, i32 1
  %call142 = tail call i32 @strlcpy(ptr noundef %model_desc, ptr noundef %model_description, i32 noundef 80) #13
  %92 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw, align 4
  %mr144 = getelementptr inbounds %struct.qla_hw_data, ptr %93, i32 0, i32 278
  %symbolic_name145 = getelementptr inbounds %struct.config_info_data, ptr %87, i32 0, i32 3
  %94 = call ptr @memcpy(ptr %mr144, ptr %symbolic_name145, i32 64)
  %95 = load ptr, ptr %hw, align 4
  %serial_num = getelementptr inbounds %struct.qla_hw_data, ptr %95, i32 0, i32 278, i32 1
  %serial_num149 = getelementptr inbounds %struct.config_info_data, ptr %87, i32 0, i32 4
  %96 = call ptr @memcpy(ptr %serial_num, ptr %serial_num149, i32 32)
  %97 = load ptr, ptr %hw, align 4
  %hw_version = getelementptr inbounds %struct.qla_hw_data, ptr %97, i32 0, i32 278, i32 2
  %hw_version153 = getelementptr inbounds %struct.config_info_data, ptr %87, i32 0, i32 5
  %98 = call ptr @memcpy(ptr %hw_version, ptr %hw_version153, i32 16)
  %99 = load ptr, ptr %hw, align 4
  %fw_version = getelementptr inbounds %struct.qla_hw_data, ptr %99, i32 0, i32 278, i32 3
  %fw_version157 = getelementptr inbounds %struct.config_info_data, ptr %87, i32 0, i32 6
  %100 = call ptr @memcpy(ptr %fw_version, ptr %fw_version157, i32 16)
  %101 = load ptr, ptr %hw, align 4
  %fw_version161 = getelementptr inbounds %struct.qla_hw_data, ptr %101, i32 0, i32 278, i32 3
  %call163 = tail call ptr @strim(ptr noundef %fw_version161) #13
  %102 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw, align 4
  %uboot_version = getelementptr inbounds %struct.qla_hw_data, ptr %103, i32 0, i32 278, i32 4
  %uboot_version166 = getelementptr inbounds %struct.config_info_data, ptr %87, i32 0, i32 7
  %104 = call ptr @memcpy(ptr %uboot_version, ptr %uboot_version166, i32 16)
  %105 = load ptr, ptr %hw, align 4
  %fru_serial_num = getelementptr inbounds %struct.qla_hw_data, ptr %105, i32 0, i32 278, i32 5
  %fru_serial_num170 = getelementptr inbounds %struct.config_info_data, ptr %87, i32 0, i32 8
  %106 = call ptr @memcpy(ptr %fru_serial_num, ptr %fru_serial_num170, i32 32)
  %nominal_temp_value = getelementptr inbounds %struct.config_info_data, ptr %87, i32 0, i32 26
  %107 = ptrtoint ptr %nominal_temp_value to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %nominal_temp_value, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool172.not = icmp eq i32 %108, 0
  %spec.select = select i1 %tobool172.not, i32 80, i32 %108
  %109 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw, align 4
  %critical_temperature = getelementptr inbounds %struct.qla_hw_data, ptr %110, i32 0, i32 278, i32 15
  %111 = ptrtoint ptr %critical_temperature to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %spec.select, ptr %critical_temperature, align 4
  %enabled_capabilities = getelementptr inbounds %struct.config_info_data, ptr %87, i32 0, i32 25
  %112 = ptrtoint ptr %enabled_capabilities to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %enabled_capabilities, align 1
  %extended_io_enabled = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 16
  %114 = trunc i32 %113 to i8
  %115 = lshr i8 %114, 5
  %116 = and i8 %115, 1
  %117 = ptrtoint ptr %extended_io_enabled to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %extended_io_enabled, align 8
  br label %if.end238

if.then183:                                       ; preds = %if.end127
  %rsp_addr186 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %118 = ptrtoint ptr %rsp_addr186 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rsp_addr186, align 8
  %node_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 25
  %node_name188 = getelementptr inbounds %struct.port_info_data, ptr %119, i32 0, i32 26
  %120 = ptrtoint ptr %node_name188 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 8)
  %121 = load i64, ptr %node_name188, align 1
  %122 = ptrtoint ptr %node_name to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %node_name, align 8
  %port_name = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 26
  %port_name191 = getelementptr inbounds %struct.port_info_data, ptr %119, i32 0, i32 18
  %123 = ptrtoint ptr %port_name191 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 8)
  %124 = load i64, ptr %port_name191, align 1
  %125 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %port_name, align 8
  %port_id193 = getelementptr inbounds %struct.port_info_data, ptr %119, i32 0, i32 19
  %126 = ptrtoint ptr %port_id193 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %port_id193, align 1
  %d_id = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 17
  %128 = ptrtoint ptr %d_id to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %d_id, align 8
  %arrayidx195 = getelementptr %struct.port_info_data, ptr %119, i32 0, i32 19, i32 1
  %129 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx195, align 1
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %131 = ptrtoint ptr %area to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %area, align 1
  %arrayidx198 = getelementptr %struct.port_info_data, ptr %119, i32 0, i32 19, i32 2
  %132 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx198, align 1
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %134 = ptrtoint ptr %al_pa to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %al_pa, align 2
  %135 = load i64, ptr %port_name191, align 1
  %136 = load i64, ptr %node_name188, align 1
  %host.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %137 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %host.i, align 8
  %shost_data.i = getelementptr inbounds %struct.Scsi_Host, ptr %138, i32 0, i32 51
  %139 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %shost_data.i, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %136, ptr %140, align 8
  %142 = load ptr, ptr %host.i, align 8
  %shost_data7.i = getelementptr inbounds %struct.Scsi_Host, ptr %142, i32 0, i32 51
  %143 = ptrtoint ptr %shost_data7.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %shost_data7.i, align 8
  %port_name8.i = getelementptr inbounds %struct.fc_host_attrs, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %port_name8.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %135, ptr %port_name8.i, align 8
  %port_type.i = getelementptr inbounds %struct.port_info_data, ptr %119, i32 0, i32 1
  %146 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %port_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i409 = icmp eq i8 %147, 0
  br i1 %tobool.not.i409, label %if.then.i411, label %if.then183.if.end.i_crit_edge

if.then183.if.end.i_crit_edge:                    ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i411:                                     ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw, align 4
  %current_topology.i = getelementptr inbounds %struct.qla_hw_data, ptr %149, i32 0, i32 49
  %150 = ptrtoint ptr %current_topology.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 8, ptr %current_topology.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i411, %if.then183.if.end.i_crit_edge
  %link_status.i = getelementptr inbounds %struct.port_info_data, ptr %119, i32 0, i32 20
  %151 = ptrtoint ptr %link_status.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %link_status.i, align 1
  %153 = zext i8 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %152, label %if.end.i.qlafx00_update_host_attr.exit_crit_edge [
    i8 17, label %if.then10.i
    i8 16, label %if.then15.i
  ]

if.end.i.qlafx00_update_host_attr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_update_host_attr.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %loop_state.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  %call.i.i.i412 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_state.i, i32 noundef 4) #13
  %154 = ptrtoint ptr %loop_state.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 5, ptr %loop_state.i, align 4
  br label %qlafx00_update_host_attr.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %loop_state16.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  %call.i.i31.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_state16.i, i32 noundef 4) #13
  %155 = ptrtoint ptr %loop_state16.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile i32 2, ptr %loop_state16.i, align 4
  br label %qlafx00_update_host_attr.exit

qlafx00_update_host_attr.exit:                    ; preds = %if.then15.i, %if.then10.i, %if.end.i.qlafx00_update_host_attr.exit_crit_edge
  %link_config.i = getelementptr inbounds %struct.port_info_data, ptr %119, i32 0, i32 22
  %156 = ptrtoint ptr %link_config.i to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %link_config.i, align 1
  %conv19.i = trunc i32 %157 to i16
  %158 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw, align 4
  %link_data_rate.i = getelementptr inbounds %struct.qla_hw_data, ptr %159, i32 0, i32 47
  %160 = ptrtoint ptr %link_data_rate.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv19.i, ptr %link_data_rate.i, align 2
  tail call void @ql_dump_buffer(i32 noundef 1073872896, ptr noundef %vha, i32 noundef 321, ptr noundef %119, i32 noundef 16) #13
  br label %if.end238

if.then204:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  %rsp_addr207 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %161 = ptrtoint ptr %rsp_addr207 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rsp_addr207, align 8
  %node_name208 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 4
  %tgt_node_wwnn = getelementptr inbounds %struct.qlafx00_tgt_node_info, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %tgt_node_wwnn to i32
  call void @__asan_loadN_noabort(i32 %163, i32 8)
  %164 = load i64, ptr %tgt_node_wwnn, align 1
  %165 = ptrtoint ptr %node_name208 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %node_name208, align 8
  %port_name211 = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 5
  %166 = ptrtoint ptr %162 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 8)
  %167 = load i64, ptr %162, align 1
  %168 = ptrtoint ptr %port_name211 to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %167, ptr %port_name211, align 8
  %port_type = getelementptr inbounds %struct.fc_port, ptr %fcport, i32 0, i32 33
  %169 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 4, ptr %port_type, align 8
  tail call void @ql_dump_buffer(i32 noundef 1073872896, ptr noundef %vha, i32 noundef 324, ptr noundef %162, i32 noundef 16) #13
  br label %if.end238

if.then218:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  %rsp_addr221 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %170 = ptrtoint ptr %rsp_addr221 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rsp_addr221, align 8
  tail call void @ql_dump_buffer(i32 noundef 1073872896, ptr noundef %vha, i32 noundef 326, ptr noundef %171, i32 noundef 16) #13
  %172 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hw, align 4
  %gid_list = getelementptr inbounds %struct.qla_hw_data, ptr %173, i32 0, i32 94
  %174 = ptrtoint ptr %gid_list to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %gid_list, align 4
  %176 = call ptr @memcpy(ptr %175, ptr %171, i32 128)
  br label %if.end238

if.then227:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  %result = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 2
  %177 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %result, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1744830464, i32 %178)
  %cmp229 = icmp eq i32 %178, 1744830464
  %cond231 = select i1 %cmp229, i32 0, i32 33619968
  %179 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %cond231, ptr %result, align 8
  br label %if.end238

if.end238:                                        ; preds = %if.then227, %if.then218, %if.then204, %qlafx00_update_host_attr.exit, %if.then132, %if.end127.if.end238_crit_edge
  %result240 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 2
  %180 = ptrtoint ptr %result240 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %result240, align 8
  %182 = tail call i32 @llvm.bswap.i32(i32 %181)
  br label %done_unmap_dma

done_unmap_dma:                                   ; preds = %if.end238, %if.end121.done_unmap_dma_crit_edge
  %rval.0 = phi i32 [ %call123, %if.end121.done_unmap_dma_crit_edge ], [ %182, %if.end238 ]
  %rsp_addr242 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3
  %183 = ptrtoint ptr %rsp_addr242 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %rsp_addr242, align 8
  %tobool243.not = icmp eq ptr %184, null
  br i1 %tobool243.not, label %done_unmap_dma.done_unmap_req_crit_edge, label %if.then244

done_unmap_dma.done_unmap_req_crit_edge:          ; preds = %done_unmap_dma
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_unmap_req

if.then244:                                       ; preds = %done_unmap_dma
  call void @__sanitizer_cov_trace_pc() #15
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 128
  %dev246 = getelementptr inbounds %struct.pci_dev, ptr %186, i32 0, i32 44
  %rsp_len248 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %187 = ptrtoint ptr %rsp_len248 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %rsp_len248, align 8
  %rsp_dma_handle252 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %189 = ptrtoint ptr %rsp_dma_handle252 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %rsp_dma_handle252, align 8
  tail call void @dma_free_attrs(ptr noundef %dev246, i32 noundef %188, ptr noundef nonnull %184, i32 noundef %190, i32 noundef 0) #13
  br label %done_unmap_req

done_unmap_req:                                   ; preds = %if.then244, %done_unmap_dma.done_unmap_req_crit_edge, %if.then108.done_unmap_req_crit_edge
  %rval.1 = phi i32 [ %rval.0, %if.then244 ], [ %rval.0, %done_unmap_dma.done_unmap_req_crit_edge ], [ 258, %if.then108.done_unmap_req_crit_edge ]
  %req_addr255 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %191 = ptrtoint ptr %req_addr255 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %req_addr255, align 4
  %tobool256.not = icmp eq ptr %192, null
  br i1 %tobool256.not, label %done_unmap_req.done_free_sp_crit_edge, label %if.then257

done_unmap_req.done_free_sp_crit_edge:            ; preds = %done_unmap_req
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_free_sp

if.then257:                                       ; preds = %done_unmap_req
  call void @__sanitizer_cov_trace_pc() #15
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 128
  %dev259 = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44
  %req_len261 = getelementptr inbounds %struct.anon.88, ptr %u, i32 0, i32 1
  %195 = ptrtoint ptr %req_len261 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %req_len261, align 4
  %req_dma_handle265 = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %197 = ptrtoint ptr %req_dma_handle265 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %req_dma_handle265, align 4
  tail call void @dma_free_attrs(ptr noundef %dev259, i32 noundef %196, ptr noundef nonnull %192, i32 noundef %198, i32 noundef 0) #13
  br label %done_free_sp

done_free_sp:                                     ; preds = %if.then257, %done_unmap_req.done_free_sp_crit_edge, %if.then36.done_free_sp_crit_edge, %if.then29
  %rval.2 = phi i32 [ %rval.1, %if.then257 ], [ %rval.1, %done_unmap_req.done_free_sp_crit_edge ], [ 258, %if.then36.done_free_sp_crit_edge ], [ 258, %if.then29 ]
  %free = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 25
  %199 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %free, align 8
  tail call void %200(ptr noundef nonnull %call.i.i) #13
  br label %done267

done267:                                          ; preds = %done_free_sp, %do.body16.critedge.i, %if.then.i
  %rval.3 = phi i32 [ %rval.2, %done_free_sp ], [ 258, %if.then.i ], [ 258, %do.body16.critedge.i ]
  ret i32 %rval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlafx00_timer_routine(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %fw_hbt_cnt = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 8
  %4 = ptrtoint ptr %fw_hbt_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_hbt_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i8 %5, -1
  br label %if.end36

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load volatile i32, ptr %flags, align 8
  %7 = and i32 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true:                                    ; preds = %if.else
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %8 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dpc_flags, align 4
  %10 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true5:                                   ; preds = %land.lhs.true
  %11 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dpc_flags, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %fw_hbt_en = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 7
  %14 = ptrtoint ptr %fw_hbt_en to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fw_hbt_en, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end36_crit_edge, label %if.then12

land.lhs.true9.if.end36_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then12:                                        ; preds = %land.lhs.true9
  %fwheartbeat = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 52
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fwheartbeat) #13, !srcloc !269
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %old_fw_hbt_cnt = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 10
  %18 = ptrtoint ptr %old_fw_hbt_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old_fw_hbt_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not = icmp eq i32 %17, %19
  br i1 %cmp.not, label %if.else20, label %if.then16

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %old_fw_hbt_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %old_fw_hbt_cnt, align 4
  %fw_hbt_miss_cnt = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 9
  %21 = ptrtoint ptr %fw_hbt_miss_cnt to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %fw_hbt_miss_cnt, align 2
  br label %if.end36

if.else20:                                        ; preds = %if.then12
  %fw_hbt_miss_cnt22 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 9
  %22 = ptrtoint ptr %fw_hbt_miss_cnt22 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fw_hbt_miss_cnt22, align 2
  %inc = add i8 %23, 1
  store i8 %inc, ptr %fw_hbt_miss_cnt22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %inc)
  %cmp26 = icmp eq i8 %inc, 3
  br i1 %cmp26, label %if.then28, label %if.else20.if.end36_crit_edge

if.else20.if.end36_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then28:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags) #13
  tail call void @qla2xxx_wake_dpc(ptr noundef %vha) #13
  %24 = ptrtoint ptr %fw_hbt_miss_cnt22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %fw_hbt_miss_cnt22, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %if.else20.if.end36_crit_edge, %if.then16, %land.lhs.true9.if.end36_crit_edge, %land.lhs.true5.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.else.if.end36_crit_edge, %if.then
  %storemerge = phi i8 [ %dec, %if.then ], [ 6, %if.then16 ], [ 6, %if.then28 ], [ 6, %if.else20.if.end36_crit_edge ], [ 6, %land.lhs.true9.if.end36_crit_edge ], [ 6, %land.lhs.true5.if.end36_crit_edge ], [ 6, %land.lhs.true.if.end36_crit_edge ], [ 6, %if.else.if.end36_crit_edge ]
  %25 = ptrtoint ptr %fw_hbt_cnt to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %storemerge, ptr %fw_hbt_cnt, align 1
  %dpc_flags37 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %26 = ptrtoint ptr %dpc_flags37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %dpc_flags37, align 4
  %28 = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not = icmp eq i32 %28, 0
  br i1 %tobool39.not, label %if.end36.if.end123_crit_edge, label %if.then40

if.end36.if.end123_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.then40:                                        ; preds = %if.end36
  %aenmailbox0 = getelementptr inbounds %struct.device_reg_fx00, ptr %3, i32 0, i32 32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox0) #13, !srcloc !269
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %fw_reset_timer_exp = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 12
  %31 = ptrtoint ptr %fw_reset_timer_exp to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fw_reset_timer_exp, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool43.not = icmp eq i8 %32, 0
  br i1 %tobool43.not, label %if.else48, label %if.then44

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags37) #13
  tail call void @qla2xxx_wake_dpc(ptr noundef %vha) #13
  %33 = ptrtoint ptr %fw_reset_timer_exp to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %fw_reset_timer_exp, align 2
  br label %if.end109

if.else48:                                        ; preds = %if.then40
  %34 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %30, label %if.else65 [
    i32 32864, label %if.then51
    i32 32849, label %land.lhs.true58
  ]

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 24, ptr noundef %dpc_flags37) #13
  tail call void @_clear_bit(i32 noundef 23, ptr noundef %dpc_flags37) #13
  tail call void @qla2xxx_wake_dpc(ptr noundef %vha) #13
  %fw_reset_timer_tick = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 11
  %35 = ptrtoint ptr %fw_reset_timer_tick to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 120, ptr %fw_reset_timer_tick, align 8
  br label %if.end109

land.lhs.true58:                                  ; preds = %if.else48
  %fw_hbt_en60 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 7
  %36 = ptrtoint ptr %fw_hbt_en60 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fw_hbt_en60, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool61.not = icmp eq i8 %37, 0
  br i1 %tobool61.not, label %if.then62, label %if.else65.thread

if.then62:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %fw_hbt_en60 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %fw_hbt_en60, align 8
  br label %if.end109

if.else65:                                        ; preds = %if.else48
  %fw_reset_timer_tick67 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 11
  %39 = ptrtoint ptr %fw_reset_timer_tick67 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %fw_reset_timer_tick67, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool68.not = icmp eq i16 %40, 0
  br i1 %tobool68.not, label %if.else65.if.then69_crit_edge, label %if.else79

if.else65.if.then69_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then69

if.else65.thread:                                 ; preds = %land.lhs.true58
  %fw_reset_timer_tick67245 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 11
  %41 = ptrtoint ptr %fw_reset_timer_tick67245 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %fw_reset_timer_tick67245, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool68.not246 = icmp eq i16 %42, 0
  br i1 %tobool68.not246, label %if.else65.thread.if.then69_crit_edge, label %if.else65.thread.if.end109_crit_edge

if.else65.thread.if.end109_crit_edge:             ; preds = %if.else65.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.else65.thread.if.then69_crit_edge:             ; preds = %if.else65.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then69

if.then69:                                        ; preds = %if.else65.thread.if.then69_crit_edge, %if.else65.if.then69_crit_edge
  %fw_reset_timer_tick67247 = phi ptr [ %fw_reset_timer_tick67245, %if.else65.thread.if.then69_crit_edge ], [ %fw_reset_timer_tick67, %if.else65.if.then69_crit_edge ]
  %old_aenmbx0_state = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 14
  %43 = ptrtoint ptr %old_aenmbx0_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %old_aenmbx0_state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %44)
  %cmp71 = icmp eq i32 %30, %44
  br i1 %cmp71, label %if.then73, label %if.then69.if.end76_crit_edge

if.then69.if.end76_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.then73:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %fw_reset_timer_exp to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %fw_reset_timer_exp, align 2
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.then69.if.end76_crit_edge
  %46 = ptrtoint ptr %fw_reset_timer_tick67247 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 120, ptr %fw_reset_timer_tick67247, align 8
  br label %if.end109

if.else79:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp80 = icmp eq i32 %29, -1
  br i1 %cmp80, label %if.then82, label %if.else90

if.then82:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #15
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 12
  %47 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cregbase, align 64
  %add.ptr = getelementptr i8, ptr %48, i32 262168
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %50 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cregbase, align 64
  %add.ptr85 = getelementptr i8, ptr %51, i32 268324
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %53 = and i32 %49, 65535
  %54 = and i32 %52, -65536
  %55 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cregbase, align 64
  %add.ptr89 = getelementptr i8, ptr %56, i32 268324
  %57 = or i32 %54, %53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %57) #13, !srcloc !266
  br label %if.end109

if.else90:                                        ; preds = %if.else79
  %and91 = and i32 %30, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 34304, i32 %and91)
  %cmp92 = icmp eq i32 %and91, 34304
  br i1 %cmp92, label %if.then94, label %if.else97

if.then94:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %fw_reset_timer_tick67 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 600, ptr %fw_reset_timer_tick67, align 8
  br label %if.end109

if.else97:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_const_cmp4(i32 42270720, i32 %29)
  %cmp98 = icmp eq i32 %29, 42270720
  br i1 %cmp98, label %if.then100, label %if.else97.if.end109_crit_edge

if.else97.if.end109_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then100:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %fw_reset_timer_tick67 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 600, ptr %fw_reset_timer_tick67, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then100, %if.else97.if.end109_crit_edge, %if.then94, %if.then82, %if.end76, %if.else65.thread.if.end109_crit_edge, %if.then62, %if.then51, %if.then44
  %old_aenmbx0_state111 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 14
  %60 = ptrtoint ptr %old_aenmbx0_state111 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %old_aenmbx0_state111, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %30)
  %cmp112.not = icmp eq i32 %61, %30
  br i1 %cmp112.not, label %if.end109.if.end119_crit_edge, label %if.then114

if.end109.if.end119_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

if.then114:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %old_aenmbx0_state111 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %30, ptr %old_aenmbx0_state111, align 8
  %fw_reset_timer_tick118 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 11
  %63 = ptrtoint ptr %fw_reset_timer_tick118 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 120, ptr %fw_reset_timer_tick118, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end109.if.end119_crit_edge
  %fw_reset_timer_tick121 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 11
  %64 = ptrtoint ptr %fw_reset_timer_tick121 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %fw_reset_timer_tick121, align 8
  %dec122 = add i16 %65, -1
  store i16 %dec122, ptr %fw_reset_timer_tick121, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.end119, %if.end36.if.end123_crit_edge
  %66 = ptrtoint ptr %dpc_flags37 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %dpc_flags37, align 4
  %68 = and i32 %67, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool126.not = icmp eq i32 %68, 0
  br i1 %tobool126.not, label %if.end123.if.end151_crit_edge, label %if.then127

if.end123.if.end151_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

if.then127:                                       ; preds = %if.end123
  %fw_critemp_timer_tick = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 13
  %69 = ptrtoint ptr %fw_critemp_timer_tick to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %fw_critemp_timer_tick, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp130 = icmp eq i16 %70, 0
  br i1 %cmp130, label %if.then132, label %if.else146

if.then132:                                       ; preds = %if.then127
  %cregbase133 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 12
  %71 = ptrtoint ptr %cregbase133 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cregbase133, align 64
  %add.ptr134 = getelementptr i8, ptr %72, i32 99524
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #13, !srcloc !269
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %and136 = lshr i32 %74, 1
  %shr = and i32 %and136, 511
  %mul.neg = mul nsw i32 %shr, -10000
  %sub = add nsw i32 %mul.neg, 3153000
  %div = udiv i32 %sub, 13825
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16777216, ptr noundef %vha, i32 noundef 24594, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.qlafx00_timer_routine, i32 noundef %div) #13
  %critical_temperature = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 15
  %75 = ptrtoint ptr %critical_temperature to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %critical_temperature, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %76)
  %cmp138 = icmp ult i32 %div, %76
  br i1 %cmp138, label %if.then140, label %if.then132.if.end151.sink.split_crit_edge

if.then132.if.end151.sink.split_crit_edge:        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151.sink.split

if.then140:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags37) #13
  tail call void @_clear_bit(i32 noundef 25, ptr noundef %dpc_flags37) #13
  tail call void @qla2xxx_wake_dpc(ptr noundef %vha) #13
  br label %if.end151.sink.split

if.else146:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  %dec149 = add i16 %70, -1
  br label %if.end151.sink.split

if.end151.sink.split:                             ; preds = %if.else146, %if.then140, %if.then132.if.end151.sink.split_crit_edge
  %.sink = phi i16 [ %dec149, %if.else146 ], [ 60, %if.then140 ], [ 60, %if.then132.if.end151.sink.split_crit_edge ]
  %77 = ptrtoint ptr %fw_critemp_timer_tick to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %.sink, ptr %fw_critemp_timer_tick, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.end151.sink.split, %if.end123.if.end151_crit_edge
  %host_info_resend = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 17
  %78 = ptrtoint ptr %host_info_resend to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %host_info_resend, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool153.not = icmp eq i8 %79, 0
  br i1 %tobool153.not, label %if.end151.if.end170_crit_edge, label %if.then154

if.end151.if.end170_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170

if.then154:                                       ; preds = %if.end151
  %hinfo_resend_timer_tick = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 18
  %80 = ptrtoint ptr %hinfo_resend_timer_tick to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %hinfo_resend_timer_tick, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp157 = icmp eq i8 %81, 0
  br i1 %cmp157, label %if.then159, label %if.else165

if.then159:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %host_info_resend to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %host_info_resend, align 1
  tail call void @_set_bit(i32 noundef 26, ptr noundef %dpc_flags37) #13
  %83 = ptrtoint ptr %hinfo_resend_timer_tick to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 60, ptr %hinfo_resend_timer_tick, align 2
  tail call void @qla2xxx_wake_dpc(ptr noundef %vha) #13
  br label %if.end170

if.else165:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #15
  %dec168 = add i8 %81, -1
  %84 = ptrtoint ptr %hinfo_resend_timer_tick to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %dec168, ptr %hinfo_resend_timer_tick, align 2
  br label %if.end170

if.end170:                                        ; preds = %if.else165, %if.then159, %if.end151.if.end170_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_wake_dpc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_reset_initialize(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 13
  %0 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 322, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, 4
  store volatile i32 %bf.set, ptr %flags, align 8
  %flags1 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %5 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load2 = load volatile i32, ptr %flags1, align 8
  %6 = and i32 %bf.load2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %8) #13
  tail call fastcc void @qlafx00_abort_isp_cleanup(ptr noundef %vha, i1 noundef zeroext false)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 323, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.qlafx00_reset_initialize) #13
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8 = load volatile i32, ptr %flags, align 8
  %bf.clear9 = and i32 %bf.load8, -5
  store volatile i32 %bf.clear9, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlafx00_abort_isp_cleanup(ptr noundef %vha, i1 noundef zeroext %critemp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.clear = and i32 %bf.load, -1073741825
  store volatile i32 %bf.clear, ptr %flags, align 8
  %fw_hbt_en = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 278, i32 7
  %3 = ptrtoint ptr %fw_hbt_en to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fw_hbt_en, align 8
  br i1 %critemp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags1 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load2 = load volatile i32, ptr %flags1, align 8
  %bf.clear3 = and i32 %bf.load2, -32769
  store volatile i32 %bf.clear3, ptr %flags1, align 8
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %dpc_flags) #13
  %qla_stats = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58
  %5 = ptrtoint ptr %qla_stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qla_stats, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %qla_stats, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 319, ptr noundef nonnull @.str.68, ptr noundef %1) #13
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %7 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp_ops, align 4
  %reset_chip = getelementptr inbounds %struct.isp_operations, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %reset_chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_chip, align 4
  %call = tail call i32 %10(ptr noundef %vha) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_state, i32 noundef 4) #13
  %11 = ptrtoint ptr %loop_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %loop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.not = icmp eq i32 %12, 2
  br i1 %cmp.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_state, i32 noundef 4) #13
  %13 = ptrtoint ptr %loop_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 2, ptr %loop_state, align 4
  %loop_down_timer = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 21
  br label %if.end14.sink.split

if.else:                                          ; preds = %if.end
  %loop_down_timer8 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 21
  %call.i.i76 = tail call zeroext i1 @__kasan_check_read(ptr noundef %loop_down_timer8, i32 noundef 4) #13
  %14 = ptrtoint ptr %loop_down_timer8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %loop_down_timer8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.else.if.end14.sink.split_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.else.if.end14.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.else.if.end14.sink.split_crit_edge, %if.then6
  %loop_down_timer8.sink82 = phi ptr [ %loop_down_timer, %if.then6 ], [ %loop_down_timer8, %if.else.if.end14.sink.split_crit_edge ]
  %call.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_down_timer8.sink82, i32 noundef 4) #13
  %16 = ptrtoint ptr %loop_down_timer8.sink82 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 615, ptr %loop_down_timer8.sink82, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else.if.end14_crit_edge
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  %17 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %17)
  %fcport.079 = load ptr, ptr %vp_fcports, align 8
  %cmp16.not80 = icmp eq ptr %fcport.079, %vp_fcports
  br i1 %cmp16.not80, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end14.for.body_crit_edge
  %fcport.081 = phi ptr [ %fcport.0, %for.inc.for.body_crit_edge ], [ %fcport.079, %if.end14.for.body_crit_edge ]
  %flags17 = getelementptr inbounds %struct.fc_port, ptr %fcport.081, i32 0, i32 35
  %18 = ptrtoint ptr %flags17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags17, align 8
  %state = getelementptr inbounds %struct.fc_port, ptr %fcport.081, i32 0, i32 34
  %call.i.i78 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #13
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp19 = icmp eq i32 %20, 4
  br i1 %cmp19, label %if.then20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla2x00_set_fcport_state(ptr noundef %fcport.081, i32 noundef 3) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %fcport.081 to i32
  call void @__asan_load4_noabort(i32 %21)
  %fcport.0 = load ptr, ptr %fcport.081, align 8
  %cmp16.not = icmp eq ptr %fcport.0, %vp_fcports
  br i1 %cmp16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end14.for.end_crit_edge
  %flags27 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load28 = load volatile i32, ptr %flags27, align 8
  %23 = and i32 %bf.load28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool30.not = icmp eq i32 %23, 0
  br i1 %tobool30.not, label %if.then31, label %if.end36

if.then31:                                        ; preds = %for.end
  br i1 %critemp, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla2x00_abort_all_cmds(ptr noundef %vha, i32 noundef 65536) #13
  tail call void @qla2x00_free_irqs(ptr noundef %vha) #13
  br label %if.end42

if.else34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla2x00_abort_all_cmds(ptr noundef %vha, i32 noundef 524288) #13
  tail call void @qla2x00_free_irqs(ptr noundef %vha) #13
  br label %if.else40

if.end36:                                         ; preds = %for.end
  tail call void @qla2x00_free_irqs(ptr noundef %vha) #13
  br i1 %critemp, label %if.end36.if.end42_crit_edge, label %if.end36.if.else40_crit_edge

if.end36.if.else40_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else40

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.else40:                                        ; preds = %if.end36.if.else40_crit_edge, %if.else34
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.end36.if.end42_crit_edge, %if.then33
  %.sink = phi i32 [ 23, %if.else40 ], [ 25, %if.then33 ], [ 25, %if.end36.if.end42_crit_edge ]
  %dpc_flags41 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %dpc_flags41) #13
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cregbase, align 64
  %add.ptr43 = getelementptr i8, ptr %25, i32 138096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 -117440513) #13, !srcloc !266
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 320, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.qlafx00_abort_isp_cleanup, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_abort_isp(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load volatile i32, ptr %flags, align 8
  %3 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 1
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %land.rhs

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %if.then
  %flags2 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load3 = load volatile i32, ptr %flags2, align 8
  %9 = and i32 %bf.load3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %land.rhs.if.end_crit_edge, label %if.then9, !prof !267

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %dpc_flags) #13
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %if.then.if.end_crit_edge
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %11) #13
  tail call fastcc void @qlafx00_abort_isp_cleanup(ptr noundef %vha, i1 noundef zeroext false)
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %host10 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %12 = ptrtoint ptr %host10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host10, align 8
  tail call void @scsi_block_requests(ptr noundef %13) #13
  %dpc_flags11 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %dpc_flags11) #13
  %qla_stats = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 58
  %14 = ptrtoint ptr %qla_stats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qla_stats, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %qla_stats, align 8
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %16 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %isp_ops, align 4
  %reset_chip = getelementptr inbounds %struct.isp_operations, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %reset_chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset_chip, align 4
  %call12 = tail call i32 %19(ptr noundef %vha) #13
  tail call void @_set_bit(i32 noundef 23, ptr noundef %dpc_flags11) #13
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cregbase, align 64
  %add.ptr = getelementptr i8, ptr %21, i32 138096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -117440513) #13, !srcloc !266
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 325, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.qlafx00_abort_isp) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlafx00_process_aen(ptr noundef %vha, ptr nocapture noundef readonly %evt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.qla_work_evt, ptr %evt, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 32788, label %sw.bb
    i32 32785, label %sw.bb56
    i32 32786, label %sw.bb57
    i32 32775, label %sw.bb58
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr %struct.qla_work_evt, ptr %evt, i32 0, i32 3, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %4, label %sw.bb.sw.epilog_crit_edge [
    i32 0, label %if.then
    i32 65535, label %if.then28
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %arrayidx6 = getelementptr %struct.qla_work_evt, ptr %evt, i32 0, i32 3, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %7, label %if.then.sw.epilog_crit_edge [
    i32 1, label %if.then8
    i32 2, label %if.then17
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then8:                                         ; preds = %if.then
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load volatile i32, ptr %flags, align 8
  %10 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then9, label %if.then8.if.end_crit_edge

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then9:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load11 = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load11, 16777216
  store volatile i32 %bf.set, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then8.if.end_crit_edge
  %loop_down_timer = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_down_timer, i32 noundef 4) #13
  %12 = ptrtoint ptr %loop_down_timer to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %loop_down_timer, align 4
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  %call.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_state, i32 noundef 4) #13
  %13 = ptrtoint ptr %loop_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 3, ptr %loop_state, align 4
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags) #13
  tail call void @qla2xxx_wake_dpc(ptr noundef %vha) #13
  br label %sw.epilog

if.then17:                                        ; preds = %if.then
  %arrayidx20 = getelementptr %struct.qla_work_evt, ptr %evt, i32 0, i32 3, i32 0, i32 1, i32 12
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 20595, ptr noundef nonnull @.str.70, i32 noundef %15) #13
  %vp_fcports.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then17
  %fcport.0.in.i.i = phi ptr [ %vp_fcports.i.i, %if.then17 ], [ %fcport.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %16 = ptrtoint ptr %fcport.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %fcport.0.i.i = load ptr, ptr %fcport.0.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %fcport.0.i.i, %vp_fcports.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.sw.epilog_crit_edge, label %for.body.i.i

for.cond.i.i.sw.epilog_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body.i.i:                                     ; preds = %for.cond.i.i
  %tgt_id2.i.i = getelementptr inbounds %struct.fc_port, ptr %fcport.0.i.i, i32 0, i32 27
  %17 = ptrtoint ptr %tgt_id2.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tgt_id2.i.i, align 4
  %conv.i.i = zext i16 %18 to i32
  %cmp3.i.i = icmp eq i32 %15, %conv.i.i
  br i1 %cmp3.i.i, label %qlafx00_get_fcport.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

qlafx00_get_fcport.exit.i:                        ; preds = %for.body.i.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %vha, i32 noundef 20594, ptr noundef nonnull @.str.71, ptr noundef %fcport.0.i.i, i32 noundef %15, i32 noundef %15) #13
  %tobool.not.i = icmp eq ptr %fcport.0.i.i, null
  br i1 %tobool.not.i, label %qlafx00_get_fcport.exit.i.sw.epilog_crit_edge, label %if.end.i

qlafx00_get_fcport.exit.i.sw.epilog_crit_edge:    ; preds = %qlafx00_get_fcport.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.i:                                         ; preds = %qlafx00_get_fcport.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla2x00_mark_device_lost(ptr noundef %vha, ptr noundef nonnull %fcport.0.i.i, i32 noundef 0) #13
  br label %sw.epilog

if.then28:                                        ; preds = %sw.bb
  %arrayidx31 = getelementptr %struct.qla_work_evt, ptr %evt, i32 0, i32 3, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx31, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %20, label %if.then28.sw.epilog_crit_edge [
    i32 1, label %if.then33
    i32 2, label %if.then51
  ]

if.then28.sw.epilog_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then33:                                        ; preds = %if.then28
  %flags34 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %22 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load35 = load volatile i32, ptr %flags34, align 8
  %23 = and i32 %bf.load35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool38.not = icmp eq i32 %23, 0
  br i1 %tobool38.not, label %if.then39, label %if.then33.if.end44_crit_edge

if.then33.if.end44_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load41 = load volatile i32, ptr %flags34, align 8
  %bf.set43 = or i32 %bf.load41, 16777216
  store volatile i32 %bf.set43, ptr %flags34, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.then33.if.end44_crit_edge
  %dpc_flags45 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags45) #13
  br label %sw.epilog

if.then51:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  %device_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 13
  %25 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %device_flags, align 4
  %or = or i32 %26, 2
  store i32 %or, ptr %device_flags, align 4
  tail call void @qla2x00_mark_all_devices_lost(ptr noundef %vha) #13
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 20610, ptr noundef nonnull @.str.29, i32 noundef 32775) #13
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %27 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %28) #13
  tail call fastcc void @qlafx00_abort_isp_cleanup(ptr noundef %vha, i1 noundef zeroext true)
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 8
  tail call void @scsi_unblock_requests(ptr noundef %30) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb58, %sw.bb57, %sw.bb56, %if.then51, %if.end44, %if.then28.sw.epilog_crit_edge, %if.end.i, %qlafx00_get_fcport.exit.i.sw.epilog_crit_edge, %for.cond.i.i.sw.epilog_crit_edge, %if.end, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %aen_code.0 = phi i32 [ 65535, %entry.sw.epilog_crit_edge ], [ 65535, %sw.bb58 ], [ 3, %sw.bb57 ], [ 2, %sw.bb56 ], [ 65535, %if.end ], [ 65535, %if.end44 ], [ 65535, %if.then51 ], [ 65535, %if.then.sw.epilog_crit_edge ], [ 65535, %sw.bb.sw.epilog_crit_edge ], [ 65535, %if.then28.sw.epilog_crit_edge ], [ 65535, %qlafx00_get_fcport.exit.i.sw.epilog_crit_edge ], [ 65535, %if.end.i ], [ 65535, %for.cond.i.i.sw.epilog_crit_edge ]
  %aen_data.0 = phi i32 [ %1, %entry.sw.epilog_crit_edge ], [ 32775, %sw.bb58 ], [ 0, %sw.bb57 ], [ 0, %sw.bb56 ], [ 32788, %if.end ], [ 32788, %if.end44 ], [ 32788, %if.then51 ], [ 32788, %if.then.sw.epilog_crit_edge ], [ 32788, %sw.bb.sw.epilog_crit_edge ], [ 32788, %if.then28.sw.epilog_crit_edge ], [ 32788, %qlafx00_get_fcport.exit.i.sw.epilog_crit_edge ], [ 32788, %if.end.i ], [ 32788, %for.cond.i.i.sw.epilog_crit_edge ]
  %host62 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %31 = ptrtoint ptr %host62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host62, align 8
  %call = tail call i32 @fc_get_event_number() #13
  tail call void @fc_host_post_event(ptr noundef %32, i32 noundef %call, i32 noundef %aen_code.0, i32 noundef %aen_data.0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_mark_all_devices_lost(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_host_post_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_get_event_number() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_fxdisc_iocb_timeout(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fxiocb_comp = getelementptr inbounds %struct.srb, ptr %data, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 7
  tail call void @complete(ptr noundef %fxiocb_comp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_init_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dump_buffer(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla2x00_fxdisc_sp_done(ptr noundef %sp, i32 noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fxiocb_comp = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 7
  tail call void @complete(ptr noundef %fxiocb_comp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_start_sp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_initialize_adapter(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  %mc.i154.i = alloca %struct.mbx_cmd_32, align 4
  %mc.i.i = alloca %struct.mbx_cmd_32, align 4
  %state.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.clear = and i32 %bf.load, -1073741825
  store volatile i32 %bf.clear, ptr %flags, align 8
  %flags1 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load2 = load volatile i32, ptr %flags1, align 8
  %bf.clear3 = and i32 %bf.load2, -32769
  store volatile i32 %bf.clear3, ptr %flags1, align 8
  %bf.load6 = load volatile i32, ptr %flags, align 8
  %bf.clear7 = and i32 %bf.load6, -536870913
  store volatile i32 %bf.clear7, ptr %flags, align 8
  %bf.load10 = load volatile i32, ptr %flags1, align 8
  %bf.clear11 = and i32 %bf.load10, -262145
  store volatile i32 %bf.clear11, ptr %flags1, align 8
  %bf.load14 = load volatile i32, ptr %flags1, align 8
  %bf.clear15 = and i32 %bf.load14, -8193
  store volatile i32 %bf.clear15, ptr %flags1, align 8
  %loop_down_timer = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_down_timer, i32 noundef 4) #13
  %4 = ptrtoint ptr %loop_down_timer to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 255, ptr %loop_down_timer, align 4
  %loop_state = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 9
  %call.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loop_state, i32 noundef 4) #13
  %5 = ptrtoint ptr %loop_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 2, ptr %loop_state, align 4
  %device_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 13
  %6 = ptrtoint ptr %device_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %device_flags, align 4
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %7 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dpc_flags, align 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load18 = load volatile i32, ptr %flags, align 8
  %bf.clear19 = and i32 %bf.load18, -268435457
  store volatile i32 %bf.clear19, ptr %flags, align 8
  %isp_abort_cnt = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 53
  %9 = ptrtoint ptr %isp_abort_cnt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %isp_abort_cnt, align 4
  %beacon_blink_led = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 222
  %10 = ptrtoint ptr %beacon_blink_led to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %beacon_blink_led, align 2
  %req_qid_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 27
  tail call void @_set_bit(i32 noundef 0, ptr noundef %req_qid_map) #13
  %rsp_qid_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 0, ptr noundef %rsp_qid_map) #13
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 327, ptr noundef nonnull @.str.38) #13
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %11 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %isp_ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call = tail call i32 %14(ptr noundef %vha) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 328, ptr noundef nonnull @.str.39) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %iobase.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %state.i) #13
  %pseudoaen.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 53
  %19 = call ptr @memset(ptr %state.i, i32 255, i32 20)
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pseudoaen.i) #13, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp.i = icmp eq i32 %20, 16777216
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end10.i_crit_edge

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end
  %initval7.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 51
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initval7.i) #13, !srcloc !269
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %shr.i = lshr i32 %22, 16
  %mbx_intr_code.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 15
  %23 = ptrtoint ptr %mbx_intr_code.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr.i, ptr %mbx_intr_code.i, align 4
  %conv4.i = and i32 %22, 65535
  %rqstq_intr_code.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 14
  %24 = ptrtoint ptr %rqstq_intr_code.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv4.i, ptr %rqstq_intr_code.i, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mc.i.i) #13
  %25 = getelementptr inbounds i8, ptr %mc.i.i, i32 12
  %26 = call ptr @memset(ptr %25, i32 255, i32 140)
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4454, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qlafx00_driver_shutdown) #13
  %mb.i.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 106, ptr %mb.i.i, align 4
  %28 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %mc.i.i, align 4
  %in_mb.i.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %in_mb.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %in_mb.i.i, align 4
  %30 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 10, ptr %30, align 4
  %flags.i.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %flags.i.i, align 4
  %call.i.i76 = call fastcc i32 @qlafx00_mailbox_command(ptr noundef %vha, ptr noundef nonnull %mc.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %cmp.not.i.i = icmp eq i32 %call.i.i76, 0
  br i1 %cmp.not.i.i, label %qlafx00_driver_shutdown.exit.thread.i, label %if.then8.i

qlafx00_driver_shutdown.exit.thread.i:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4456, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qlafx00_driver_shutdown) #13
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mc.i.i) #13
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4455, ptr noundef nonnull @.str.1, i32 noundef %call.i.i76) #13
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mc.i.i) #13
  %call9.i = call i32 @qlafx00_soft_reset(ptr noundef %vha) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %qlafx00_driver_shutdown.exit.thread.i, %if.end.if.end10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %33, 3000
  %aenmailbox0.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 32
  %initval737.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 51
  %mbx_intr_code42.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 15
  %rqstq_intr_code45.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 14
  %initval1.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 45
  %req_que_off47.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 18
  %initval3.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 47
  %rsp_que_off49.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 19
  %initval5.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 49
  %req_que_len51.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 16
  %initval6.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 50
  %rsp_que_len53.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 17
  %cregbase56.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 12
  %34 = getelementptr inbounds i8, ptr %mc.i154.i, i32 12
  %mb.i155.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i154.i, i32 0, i32 2
  %in_mb.i156.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i154.i, i32 0, i32 1
  %35 = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i154.i, i32 0, i32 5
  %flags.i157.i = getelementptr inbounds %struct.mbx_cmd_32, ptr %mc.i154.i, i32 0, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %if.end82.i, %if.end10.i
  %wtime.0.i = phi i32 [ %add.i, %if.end10.i ], [ %wtime.1.ph.i, %if.end82.i ]
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox0.i) #13, !srcloc !269
  %37 = call i32 @llvm.bswap.i32(i32 %36) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !277
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 307, ptr noundef nonnull @.str.72, i32 noundef %37) #13
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %37, label %sw.default.i [
    i32 32848, label %do.body.i.if.then76.i_crit_edge
    i32 32849, label %do.body.i.if.then76.i_crit_edge94
    i32 32770, label %do.body.i.sw.bb13.i_crit_edge
    i32 32771, label %do.body.i.sw.bb13.i_crit_edge95
    i32 32772, label %do.body.i.sw.bb13.i_crit_edge96
    i32 33793, label %do.body.i.sw.bb13.i_crit_edge97
    i32 32864, label %sw.bb15.i
  ]

do.body.i.sw.bb13.i_crit_edge97:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb13.i

do.body.i.sw.bb13.i_crit_edge96:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb13.i

do.body.i.sw.bb13.i_crit_edge95:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb13.i

do.body.i.sw.bb13.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb13.i

do.body.i.if.then76.i_crit_edge94:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.i

do.body.i.if.then76.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.i

sw.bb13.i:                                        ; preds = %do.body.i.sw.bb13.i_crit_edge, %do.body.i.sw.bb13.i_crit_edge95, %do.body.i.sw.bb13.i_crit_edge96, %do.body.i.sw.bb13.i_crit_edge97
  %call14.i = call i32 @qlafx00_soft_reset(ptr noundef %vha) #13
  br label %if.then76.i

sw.bb15.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %aenmailbox7.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 39
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox7.i) #13, !srcloc !269
  %40 = call i32 @llvm.bswap.i32(i32 %39) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %shr17.i = lshr i32 %40, 16
  %41 = ptrtoint ptr %mbx_intr_code42.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr17.i, ptr %mbx_intr_code42.i, align 4
  %conv22.i = and i32 %40, 65535
  %42 = ptrtoint ptr %rqstq_intr_code45.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv22.i, ptr %rqstq_intr_code45.i, align 8
  %aenmailbox1.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 33
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox1.i) #13, !srcloc !269
  %44 = call i32 @llvm.bswap.i32(i32 %43) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %45 = ptrtoint ptr %req_que_off47.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %req_que_off47.i, align 8
  %aenmailbox3.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 35
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox3.i) #13, !srcloc !269
  %47 = call i32 @llvm.bswap.i32(i32 %46) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %48 = ptrtoint ptr %rsp_que_off49.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %rsp_que_off49.i, align 4
  %aenmailbox5.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 37
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox5.i) #13, !srcloc !269
  %50 = call i32 @llvm.bswap.i32(i32 %49) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %51 = ptrtoint ptr %req_que_len51.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %req_que_len51.i, align 16
  %aenmailbox6.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 38
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox6.i) #13, !srcloc !269
  %53 = call i32 @llvm.bswap.i32(i32 %52) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %54 = ptrtoint ptr %rsp_que_len53.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %rsp_que_len53.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %aenmailbox0.i, i32 0) #13, !srcloc !266
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox0.i) #13, !srcloc !269
  %56 = ptrtoint ptr %mbx_intr_code42.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mbx_intr_code42.i, align 4
  %58 = ptrtoint ptr %rqstq_intr_code45.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rqstq_intr_code45.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 308, ptr noundef nonnull @.str.73, i32 noundef %57, i32 noundef %59) #13
  %60 = ptrtoint ptr %cregbase56.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cregbase56.i, align 64
  %add.ptr.i = getelementptr i8, ptr %61, i32 138096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -117440513) #13, !srcloc !266
  br label %if.end24

sw.default.i:                                     ; preds = %do.body.i
  %and.i = and i32 %37, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 34048, i32 %and.i)
  %cmp33.i = icmp eq i32 %and.i, 34048
  br i1 %cmp33.i, label %sw.default.i.if.then76.i_crit_edge, label %if.end36.i

sw.default.i.if.then76.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.i

if.end36.i:                                       ; preds = %sw.default.i
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initval737.i) #13, !srcloc !269
  %63 = call i32 @llvm.bswap.i32(i32 %62) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %shr39.i = lshr i32 %63, 16
  %64 = ptrtoint ptr %mbx_intr_code42.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shr39.i, ptr %mbx_intr_code42.i, align 4
  %conv44.i = and i32 %63, 65535
  %65 = ptrtoint ptr %rqstq_intr_code45.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv44.i, ptr %rqstq_intr_code45.i, align 8
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initval1.i) #13, !srcloc !269
  %67 = call i32 @llvm.bswap.i32(i32 %66) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %68 = ptrtoint ptr %req_que_off47.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %req_que_off47.i, align 8
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initval3.i) #13, !srcloc !269
  %70 = call i32 @llvm.bswap.i32(i32 %69) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %71 = ptrtoint ptr %rsp_que_off49.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %rsp_que_off49.i, align 4
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initval5.i) #13, !srcloc !269
  %73 = call i32 @llvm.bswap.i32(i32 %72) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %74 = ptrtoint ptr %req_que_len51.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %req_que_len51.i, align 16
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initval6.i) #13, !srcloc !269
  %76 = call i32 @llvm.bswap.i32(i32 %75) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %77 = ptrtoint ptr %rsp_que_len53.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %rsp_que_len53.i, align 4
  %78 = ptrtoint ptr %mbx_intr_code42.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mbx_intr_code42.i, align 4
  %80 = ptrtoint ptr %rqstq_intr_code45.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rqstq_intr_code45.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 309, ptr noundef nonnull @.str.73, i32 noundef %79, i32 noundef %81) #13
  %82 = ptrtoint ptr %cregbase56.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cregbase56.i, align 64
  %add.ptr57.i = getelementptr i8, ptr %83, i32 138096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 -117440513) #13, !srcloc !266
  %call58.i = call fastcc i32 @qlafx00_get_firmware_state(ptr noundef %vha, ptr noundef nonnull %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %cmp59.not.i = icmp eq i32 %call58.i, 0
  br i1 %cmp59.not.i, label %if.end62.i, label %if.end36.i.if.then76.i_crit_edge

if.end36.i.if.then76.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.i

if.end62.i:                                       ; preds = %if.end36.i
  %84 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp63.i = icmp eq i32 %85, 0
  br i1 %cmp63.i, label %if.end62.i.if.end24_crit_edge, label %if.end66.i

if.end62.i.if.end24_crit_edge:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.end66.i:                                       ; preds = %if.end62.i
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 310, ptr noundef nonnull @.str.74, i32 noundef %85) #13
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mc.i154.i) #13
  %86 = call ptr @memset(ptr %34, i32 255, i32 140)
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4454, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qlafx00_driver_shutdown) #13
  %87 = ptrtoint ptr %mb.i155.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 106, ptr %mb.i155.i, align 4
  %88 = ptrtoint ptr %mc.i154.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %mc.i154.i, align 4
  %89 = ptrtoint ptr %in_mb.i156.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %in_mb.i156.i, align 4
  %90 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 10, ptr %35, align 4
  %91 = ptrtoint ptr %flags.i157.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %flags.i157.i, align 4
  %call.i158.i = call fastcc i32 @qlafx00_mailbox_command(ptr noundef %vha, ptr noundef nonnull %mc.i154.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158.i)
  %cmp.not.i159.i = icmp eq i32 %call.i158.i, 0
  br i1 %cmp.not.i159.i, label %if.end72.i, label %qlafx00_driver_shutdown.exit162.i

qlafx00_driver_shutdown.exit162.i:                ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536870912, ptr noundef %vha, i32 noundef 4455, ptr noundef nonnull @.str.1, i32 noundef %call.i158.i) #13
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mc.i154.i) #13
  br label %if.then76.i

if.end72.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 536903680, ptr noundef %vha, i32 noundef 4456, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qlafx00_driver_shutdown) #13
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mc.i154.i) #13
  call void @msleep(i32 noundef 500) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %add75.i = add i32 %92, 3000
  br label %if.then76.i

if.then76.i:                                      ; preds = %if.end72.i, %qlafx00_driver_shutdown.exit162.i, %if.end36.i.if.then76.i_crit_edge, %sw.default.i.if.then76.i_crit_edge, %sw.bb13.i, %do.body.i.if.then76.i_crit_edge, %do.body.i.if.then76.i_crit_edge94
  %wtime.1.ph.i = phi i32 [ %wtime.0.i, %qlafx00_driver_shutdown.exit162.i ], [ %wtime.0.i, %do.body.i.if.then76.i_crit_edge ], [ %wtime.0.i, %do.body.i.if.then76.i_crit_edge94 ], [ %wtime.0.i, %sw.bb13.i ], [ %add75.i, %if.end72.i ], [ %wtime.0.i, %if.end36.i.if.then76.i_crit_edge ], [ %wtime.0.i, %sw.default.i.if.then76.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %93, %wtime.1.ph.i
  %cmp77.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp77.i, label %qlafx00_init_fw_ready.exit, label %if.end82.i

if.end82.i:                                       ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @msleep(i32 noundef 500) #13
  br label %do.body.i

qlafx00_init_fw_ready.exit:                       ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #15
  %aenmailbox780.i = getelementptr inbounds %struct.device_reg_fx00, ptr %18, i32 0, i32 39
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox780.i) #13, !srcloc !269
  %95 = call i32 @llvm.bswap.i32(i32 %94) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 311, ptr noundef nonnull @.str.75, i32 noundef %95) #13
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 312, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.qlafx00_init_fw_ready) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %state.i) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end62.i.if.end24_crit_edge, %sw.bb15.i
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 313, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.qlafx00_init_fw_ready) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %state.i) #13
  %96 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw, align 4
  %req_q_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %97, i32 0, i32 24
  %98 = ptrtoint ptr %req_q_map.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %req_q_map.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %rsp_q_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %97, i32 0, i32 25
  %102 = ptrtoint ptr %rsp_q_map.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rsp_q_map.i, align 16
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %length.i = getelementptr inbounds %struct.req_que, ptr %101, i32 0, i32 9
  %106 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %length.i, align 2
  %length_fx00.i = getelementptr inbounds %struct.req_que, ptr %101, i32 0, i32 22
  %108 = ptrtoint ptr %length_fx00.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %length_fx00.i, align 4
  %ring.i = getelementptr inbounds %struct.req_que, ptr %101, i32 0, i32 1
  %109 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ring.i, align 4
  %ring_fx00.i = getelementptr inbounds %struct.req_que, ptr %101, i32 0, i32 21
  %111 = ptrtoint ptr %ring_fx00.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %ring_fx00.i, align 4
  %112 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %101, align 4
  %dma_fx00.i = getelementptr inbounds %struct.req_que, ptr %101, i32 0, i32 20
  %114 = ptrtoint ptr %dma_fx00.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %dma_fx00.i, align 4
  %length2.i = getelementptr inbounds %struct.rsp_que, ptr %105, i32 0, i32 8
  %115 = ptrtoint ptr %length2.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %length2.i, align 4
  %length_fx003.i = getelementptr inbounds %struct.rsp_que, ptr %105, i32 0, i32 20
  %117 = ptrtoint ptr %length_fx003.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %length_fx003.i, align 4
  %ring4.i = getelementptr inbounds %struct.rsp_que, ptr %105, i32 0, i32 1
  %118 = ptrtoint ptr %ring4.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ring4.i, align 4
  %ring_fx005.i = getelementptr inbounds %struct.rsp_que, ptr %105, i32 0, i32 19
  %120 = ptrtoint ptr %ring_fx005.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %ring_fx005.i, align 4
  %121 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %105, align 4
  %dma_fx007.i = getelementptr inbounds %struct.rsp_que, ptr %105, i32 0, i32 18
  %123 = ptrtoint ptr %dma_fx007.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %dma_fx007.i, align 4
  %124 = load ptr, ptr %ring_fx00.i, align 4
  %125 = load i16, ptr %length_fx00.i, align 4
  %conv.i = zext i16 %125 to i32
  %126 = load i32, ptr %dma_fx00.i, align 4
  %conv11.i = zext i32 %126 to i64
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 301, ptr noundef nonnull @.str.78, ptr noundef %101, ptr noundef %124, i32 noundef %conv.i, i64 noundef %conv11.i) #13
  %127 = ptrtoint ptr %ring_fx005.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ring_fx005.i, align 4
  %129 = ptrtoint ptr %length_fx003.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %length_fx003.i, align 4
  %conv14.i = zext i16 %130 to i32
  %131 = ptrtoint ptr %dma_fx007.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma_fx007.i, align 4
  %conv16.i = zext i32 %132 to i64
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 302, ptr noundef nonnull @.str.79, ptr noundef %105, ptr noundef %128, i32 noundef %conv14.i, i64 noundef %conv16.i) #13
  %133 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw, align 4
  %req_q_map.i79 = getelementptr inbounds %struct.qla_hw_data, ptr %134, i32 0, i32 24
  %135 = ptrtoint ptr %req_q_map.i79 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %req_q_map.i79, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %rsp_q_map.i80 = getelementptr inbounds %struct.qla_hw_data, ptr %134, i32 0, i32 25
  %139 = ptrtoint ptr %rsp_q_map.i80 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rsp_q_map.i80, align 16
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %143 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %134, align 128
  %arrayidx2.i = getelementptr %struct.pci_dev, ptr %144, i32 0, i32 47, i32 2
  %145 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx2.i, align 8
  %req_que_len.i = getelementptr inbounds %struct.qla_hw_data, ptr %134, i32 0, i32 16
  %147 = ptrtoint ptr %req_que_len.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %req_que_len.i, align 16
  %conv.i81 = trunc i32 %148 to i16
  %length.i82 = getelementptr inbounds %struct.req_que, ptr %138, i32 0, i32 9
  %149 = ptrtoint ptr %length.i82 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv.i81, ptr %length.i82, align 2
  %iobase.i83 = getelementptr inbounds %struct.qla_hw_data, ptr %134, i32 0, i32 9
  %150 = ptrtoint ptr %iobase.i83 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %iobase.i83, align 4
  %req_que_off.i = getelementptr inbounds %struct.qla_hw_data, ptr %134, i32 0, i32 18
  %152 = ptrtoint ptr %req_que_off.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %req_que_off.i, align 8
  %add.ptr.i84 = getelementptr i8, ptr %151, i32 %153
  %ring.i85 = getelementptr inbounds %struct.req_que, ptr %138, i32 0, i32 1
  %154 = ptrtoint ptr %ring.i85 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %add.ptr.i84, ptr %ring.i85, align 4
  %155 = load i32, ptr %req_que_off.i, align 8
  %add.i86 = add i32 %155, %146
  %156 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add.i86, ptr %138, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i84, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i81)
  %cmp.i87 = icmp eq i16 %conv.i81, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i87
  br i1 %or.cond.i, label %if.then.i88, label %if.end.i

if.then.i88:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %157 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %134, align 128
  call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 2, ptr noundef %158, i32 noundef 303, ptr noundef nonnull @.str.80) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  %conv6.i = and i32 %148, 65535
  %159 = ptrtoint ptr %req_que_off.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %req_que_off.i, align 8
  %conv14.i89 = zext i32 %add.i86 to i64
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 304, ptr noundef nonnull @.str.81, ptr noundef %138, ptr noundef nonnull %add.ptr.i84, i32 noundef %conv6.i, i32 noundef %160, i64 noundef %conv14.i89) #13
  %rsp_que_len.i = getelementptr inbounds %struct.qla_hw_data, ptr %134, i32 0, i32 17
  %161 = ptrtoint ptr %rsp_que_len.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %rsp_que_len.i, align 4
  %conv15.i = trunc i32 %162 to i16
  %length16.i = getelementptr inbounds %struct.rsp_que, ptr %142, i32 0, i32 8
  %163 = ptrtoint ptr %length16.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv15.i, ptr %length16.i, align 4
  %164 = ptrtoint ptr %iobase.i83 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %iobase.i83, align 4
  %rsp_que_off.i = getelementptr inbounds %struct.qla_hw_data, ptr %134, i32 0, i32 19
  %166 = ptrtoint ptr %rsp_que_off.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rsp_que_off.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %165, i32 %167
  %ring19.i = getelementptr inbounds %struct.rsp_que, ptr %142, i32 0, i32 1
  %168 = ptrtoint ptr %ring19.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %add.ptr18.i, ptr %ring19.i, align 4
  %169 = load i32, ptr %rsp_que_off.i, align 4
  %add21.i = add i32 %169, %146
  %170 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %add21.i, ptr %142, align 4
  %tobool24.not.i = icmp eq ptr %add.ptr18.i, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv15.i)
  %cmp28.i = icmp eq i16 %conv15.i, 0
  %or.cond76.i = select i1 %tobool24.not.i, i1 true, i1 %cmp28.i
  br i1 %or.cond76.i, label %if.then30.i, label %if.end28

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %171 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %134, align 128
  call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 2, ptr noundef %172, i32 noundef 305, ptr noundef nonnull @.str.82) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end.i
  %conv27.i = and i32 %162, 65535
  %173 = ptrtoint ptr %rsp_que_off.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rsp_que_off.i, align 4
  %conv38.i = zext i32 %add21.i to i64
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 306, ptr noundef nonnull @.str.83, ptr noundef %142, ptr noundef nonnull %add.ptr18.i, i32 noundef %conv27.i, i32 noundef %174, i64 noundef %conv38.i) #13
  %req = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 54
  %175 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %req, align 8
  %call29 = call i32 @qla2x00_alloc_outstanding_cmds(ptr noundef %1, ptr noundef %176) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %call33 = call i32 @qla2x00_init_rings(ptr noundef %vha) #13
  %177 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %bf.load35 = load volatile i32, ptr %flags1, align 8
  %bf.set37 = or i32 %bf.load35, 32768
  store volatile i32 %bf.set37, ptr %flags1, align 8
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 12
  %178 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cregbase, align 64
  %add.ptr = getelementptr i8, ptr %179, i32 99524
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !269
  %181 = call i32 @llvm.bswap.i32(i32 %180) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %and = lshr i32 %181, 1
  %shr = and i32 %and, 511
  %mul.neg = mul nsw i32 %shr, -10000
  %sub = add nsw i32 %mul.neg, 3153000
  %div = udiv i32 %sub, 13825
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 338, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.qlafx00_initialize_adapter, i32 noundef %div) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end28.cleanup_crit_edge, %if.then30.i, %if.then.i88, %qlafx00_init_fw_ready.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call33, %if.end32 ], [ 258, %qlafx00_init_fw_ready.exit ], [ %call29, %if.end28.cleanup_crit_edge ], [ 258, %if.then.i88 ], [ 258, %if.then30.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_alloc_outstanding_cmds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_fw_state_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf) local_unnamed_addr #0 align 64 {
entry:
  %state = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #13
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !268
  %hw.i = getelementptr i8, ptr %dev, i32 2244
  %1 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %dpc_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %dpc_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dpc_flags.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %10 = ptrtoint ptr %dpc_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dpc_flags.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %dpc_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dpc_flags.i, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not.i = icmp eq i32 %15, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false5.i.if.then_crit_edge

lor.lhs.false5.i.if.then_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false5.i
  %dpc_flags10.i = getelementptr i8, ptr %dev, i32 1084
  %16 = ptrtoint ptr %dpc_flags10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dpc_flags10.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not.i = icmp eq i32 %18, 0
  br i1 %tobool12.not.i, label %qla2x00_reset_active.exit, label %lor.lhs.false9.i.if.then_crit_edge

lor.lhs.false9.i.if.then_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

qla2x00_reset_active.exit:                        ; preds = %lor.lhs.false9.i
  %19 = ptrtoint ptr %dpc_flags10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dpc_flags10.i, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.else, label %qla2x00_reset_active.exit.if.then_crit_edge

qla2x00_reset_active.exit.if.then_crit_edge:      ; preds = %qla2x00_reset_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %qla2x00_reset_active.exit.if.then_crit_edge, %lor.lhs.false9.i.if.then_crit_edge, %lor.lhs.false5.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %hostdata.i, i32 noundef 28878, ptr noundef nonnull @.str.41) #13
  br label %if.then6

if.else:                                          ; preds = %qla2x00_reset_active.exit
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load = load volatile i32, ptr %flags, align 8
  %23 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not = icmp eq i32 %23, 0
  br i1 %tobool2.not, label %if.then3, label %if.else.if.then6_crit_edge

if.else.if.then6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then3:                                         ; preds = %if.else
  %call4 = call fastcc i32 @qlafx00_get_firmware_state(ptr noundef %hostdata.i, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %phi.cmp = icmp eq i32 %call4, 0
  br i1 %phi.cmp, label %if.then3.if.end8_crit_edge, label %if.then3.if.then6_crit_edge

if.then3.if.then6_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.then3.if.then6_crit_edge, %if.else.if.then6_crit_edge, %if.then
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %state, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3.if.end8_crit_edge
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #13
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qlafx00_get_host_speed(ptr nocapture noundef readonly %shost) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %link_data_rate = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %link_data_rate to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %link_data_rate, align 2
  %switch.tableidx = add i16 %3, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %switch.tableidx)
  %4 = icmp ult i16 %switch.tableidx, 9
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.qlafx00_get_host_speed, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %speed.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %7 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shost_data, align 8
  %speed4 = getelementptr inbounds %struct.fc_host_attrs, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %speed4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %speed.0, ptr %speed4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_intr_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  %func.i109.i = alloca [10 x i8], align 1
  %fstatus.sroa.12.i.i = alloca [20 x i8], align 4
  %func.i103.i = alloca [9 x i8], align 1
  %func.i.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef null, i32 noundef 20605, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.qlafx00_intr_handler) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 13
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 1
  br i1 %cmp.i.not, label %do.body6, label %if.end.cleanup_crit_edge, !prof !267

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 12
  %mailbox16 = getelementptr inbounds %struct.device_reg_fx00, ptr %7, i32 0, i32 16
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %11, i32 0, i32 52
  %aenmailbox0 = getelementptr inbounds %struct.device_reg_fx00, ptr %7, i32 0, i32 32
  %aenmb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 121
  %dpc_flags4.i = getelementptr inbounds %struct.scsi_qla_host, ptr %11, i32 0, i32 11
  %rsp_q_in.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 3
  %ring_index.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 5
  %ring_ptr.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 2
  %rsp_pkt.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21
  %length.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 8
  %ring.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 1
  %entry_status.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 3
  %req32.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 15
  %reserved_0.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 8
  %comp_func_num.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 12
  %fw_iotcl_flags13.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 14
  %dataword_r14.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 16
  %adapid.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 20
  %dataword_r_extra.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 24
  %residuallen.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 52
  %status16.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 56
  %seq_no18.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 28
  %reserved_221.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 32
  %handle_count1.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 2
  %handles.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 4
  %status_srb.i83.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 16
  %scsi_status2.i.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 21, i32 26
  %host_no.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %11, i32 0, i32 6
  %rsp_q_out.i = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end39.for.body_crit_edge, %do.body6
  %dec95 = phi i32 [ 49, %do.body6 ], [ %dec, %if.end39.for.body_crit_edge ]
  %status.094 = phi i32 [ 0, %do.body6 ], [ %status.1, %if.end39.for.body_crit_edge ]
  %12 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cregbase, align 64
  %add.ptr = getelementptr i8, ptr %13, i32 138096
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !269
  %15 = call i32 @llvm.bswap.i32(i32 %14) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %call15 = call zeroext i1 @qla2x00_check_reg32_for_disconnect(ptr noundef %11, i32 noundef %15) #13
  %and = and i32 %15, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %or.cond = or i1 %call15, %tobool18.not
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %if.end20

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end20:                                         ; preds = %for.body
  %and21 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end27_crit_edge, label %if.then23

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then23:                                        ; preds = %if.end20
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mailbox16) #13, !srcloc !269
  %17 = call i32 @llvm.bswap.i32(i32 %16) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %iobase.i = getelementptr inbounds %struct.qla_hw_data, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %mcp32.i = getelementptr inbounds %struct.qla_hw_data, ptr %19, i32 0, i32 123
  %22 = ptrtoint ptr %mcp32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mcp32.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then23.if.end.i_crit_edge

if.then23.if.end.i_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %11, i32 noundef 20606, ptr noundef nonnull @.str.84) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then23.if.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store volatile i32 %bf.set.i, ptr %flags.i, align 8
  %mailbox_out32.i = getelementptr inbounds %struct.qla_hw_data, ptr %19, i32 0, i32 120
  %25 = ptrtoint ptr %mailbox_out32.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %17, ptr %mailbox_out32.i, align 32
  %mbx_count.i = getelementptr inbounds %struct.qla_hw_data, ptr %19, i32 0, i32 70
  %26 = ptrtoint ptr %mbx_count.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mbx_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp14.i = icmp ugt i8 %27, 1
  br i1 %cmp14.i, label %for.body.preheader.i, label %if.end.i.if.end27_crit_edge

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.preheader.i:                             ; preds = %if.end.i
  %mailbox17.i = getelementptr inbounds %struct.device_reg_fx00, ptr %21, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %wptr.016.i = phi ptr [ %mailbox17.i, %for.body.preheader.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wptr.016.i) #13, !srcloc !269
  %29 = call i32 @llvm.bswap.i32(i32 %28) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx4.i = getelementptr %struct.qla_hw_data, ptr %19, i32 0, i32 120, i32 %indvars.iv.i
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx4.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %wptr.016.i, i32 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %31 = ptrtoint ptr %mbx_count.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mbx_count.i, align 16
  %33 = zext i8 %32 to i32
  %cmp.i79 = icmp ult i32 %indvars.iv.next.i, %33
  br i1 %cmp.i79, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end27_crit_edge

for.body.i.if.end27_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end27:                                         ; preds = %for.body.i.if.end27_crit_edge, %if.end.i.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %status.1 = phi i32 [ %status.094, %if.end20.if.end27_crit_edge ], [ 1, %if.end.i.if.end27_crit_edge ], [ 1, %for.body.i.if.end27_crit_edge ]
  %clr_intr.1 = phi i32 [ 0, %if.end20.if.end27_crit_edge ], [ 1, %if.end.i.if.end27_crit_edge ], [ 1, %for.body.i.if.end27_crit_edge ]
  %and28 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox0) #13, !srcloc !269
  %35 = call i32 @llvm.bswap.i32(i32 %34) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %36 = ptrtoint ptr %aenmb to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %aenmb, align 32
  %37 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw.i, align 4
  %iobase.i81 = getelementptr inbounds %struct.qla_hw_data, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %iobase.i81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i81, align 4
  %aenmb.i = getelementptr inbounds %struct.qla_hw_data, ptr %38, i32 0, i32 121
  %41 = ptrtoint ptr %aenmb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %aenmb.i, align 32
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %42, label %sw.default.i [
    i32 32770, label %sw.bb.i
    i32 32866, label %sw.bb3.i
    i32 32788, label %sw.bb5.i
    i32 32773, label %sw.bb22.i
    i32 32774, label %sw.bb25.i
    i32 32775, label %sw.bb28.i
  ]

sw.bb.i:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %11, i32 noundef 20601, ptr noundef nonnull @.str.85, i32 noundef 32770) #13
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags4.i) #13
  br label %qlafx00_async_event.exit

sw.bb3.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %11, i32 noundef 20598, ptr noundef nonnull @.str.86) #13
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags4.i) #13
  call void @qla2xxx_wake_dpc(ptr noundef %11) #13
  br label %qlafx00_async_event.exit

sw.bb5.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %aenmailbox1.i = getelementptr inbounds %struct.device_reg_fx00, ptr %40, i32 0, i32 33
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox1.i) #13, !srcloc !269
  %45 = call i32 @llvm.bswap.i32(i32 %44) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx7.i = getelementptr %struct.qla_hw_data, ptr %38, i32 0, i32 121, i32 1
  %46 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx7.i, align 4
  %aenmailbox2.i = getelementptr inbounds %struct.device_reg_fx00, ptr %40, i32 0, i32 34
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox2.i) #13, !srcloc !269
  %48 = call i32 @llvm.bswap.i32(i32 %47) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx10.i = getelementptr %struct.qla_hw_data, ptr %38, i32 0, i32 121, i32 2
  %49 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx10.i, align 8
  %aenmailbox3.i = getelementptr inbounds %struct.device_reg_fx00, ptr %40, i32 0, i32 35
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox3.i) #13, !srcloc !269
  %51 = call i32 @llvm.bswap.i32(i32 %50) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx13.i = getelementptr %struct.qla_hw_data, ptr %38, i32 0, i32 121, i32 3
  %52 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx13.i, align 4
  %53 = ptrtoint ptr %aenmb.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %aenmb.i, align 32
  %55 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx7.i, align 4
  %57 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx10.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %11, i32 noundef 20599, ptr noundef nonnull @.str.87, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %51) #13
  br label %qlafx00_async_event.exit

sw.bb22.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %11, i32 noundef 20613, ptr noundef nonnull @.str.88, i32 noundef 32773) #13
  br label %qlafx00_async_event.exit

sw.bb25.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %11, i32 noundef 20614, ptr noundef nonnull @.str.89, i32 noundef 32774) #13
  br label %qlafx00_async_event.exit

sw.bb28.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %11, i32 noundef 20611, ptr noundef nonnull @.str.90, i32 noundef 32775) #13
  br label %qlafx00_async_event.exit

sw.default.i:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %aenmailbox131.i = getelementptr inbounds %struct.device_reg_fx00, ptr %40, i32 0, i32 33
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox131.i) #13, !srcloc !269
  %60 = call i32 @llvm.bswap.i32(i32 %59) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx34.i = getelementptr %struct.qla_hw_data, ptr %38, i32 0, i32 121, i32 1
  %61 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx34.i, align 4
  %aenmailbox235.i = getelementptr inbounds %struct.device_reg_fx00, ptr %40, i32 0, i32 34
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox235.i) #13, !srcloc !269
  %63 = call i32 @llvm.bswap.i32(i32 %62) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx38.i = getelementptr %struct.qla_hw_data, ptr %38, i32 0, i32 121, i32 2
  %64 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx38.i, align 8
  %aenmailbox339.i = getelementptr inbounds %struct.device_reg_fx00, ptr %40, i32 0, i32 35
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox339.i) #13, !srcloc !269
  %66 = call i32 @llvm.bswap.i32(i32 %65) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx42.i = getelementptr %struct.qla_hw_data, ptr %38, i32 0, i32 121, i32 3
  %67 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx42.i, align 4
  %aenmailbox4.i = getelementptr inbounds %struct.device_reg_fx00, ptr %40, i32 0, i32 36
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox4.i) #13, !srcloc !269
  %69 = call i32 @llvm.bswap.i32(i32 %68) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx45.i = getelementptr %struct.qla_hw_data, ptr %38, i32 0, i32 121, i32 4
  %70 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx45.i, align 16
  %aenmailbox5.i = getelementptr inbounds %struct.device_reg_fx00, ptr %40, i32 0, i32 37
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox5.i) #13, !srcloc !269
  %72 = call i32 @llvm.bswap.i32(i32 %71) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx48.i = getelementptr %struct.qla_hw_data, ptr %38, i32 0, i32 121, i32 5
  %73 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx48.i, align 4
  %aenmailbox6.i = getelementptr inbounds %struct.device_reg_fx00, ptr %40, i32 0, i32 38
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox6.i) #13, !srcloc !269
  %75 = call i32 @llvm.bswap.i32(i32 %74) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx51.i = getelementptr %struct.qla_hw_data, ptr %38, i32 0, i32 121, i32 6
  %76 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx51.i, align 8
  %aenmailbox7.i = getelementptr inbounds %struct.device_reg_fx00, ptr %40, i32 0, i32 39
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aenmailbox7.i) #13, !srcloc !269
  %78 = call i32 @llvm.bswap.i32(i32 %77) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %arrayidx54.i = getelementptr %struct.qla_hw_data, ptr %38, i32 0, i32 121, i32 7
  %79 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx54.i, align 4
  %80 = ptrtoint ptr %aenmb.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %aenmb.i, align 32
  %82 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx34.i, align 4
  %84 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx38.i, align 8
  %86 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx42.i, align 4
  %88 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx45.i, align 16
  %90 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx48.i, align 4
  %92 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx51.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %11, i32 noundef 20600, ptr noundef nonnull @.str.91, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %78) #13
  br label %qlafx00_async_event.exit

qlafx00_async_event.exit:                         ; preds = %sw.default.i, %sw.bb28.i, %sw.bb25.i, %sw.bb22.i, %sw.bb5.i, %sw.bb3.i, %sw.bb.i
  %data_size.0.i = phi i32 [ 1, %sw.default.i ], [ 1, %sw.bb28.i ], [ 1, %sw.bb25.i ], [ 1, %sw.bb22.i ], [ 4, %sw.bb5.i ], [ 1, %sw.bb3.i ], [ 1, %sw.bb.i ]
  %94 = ptrtoint ptr %aenmb.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %aenmb.i, align 32
  %call74.i = call i32 @qlafx00_post_aenfx_work(ptr noundef %11, i32 noundef %95, ptr noundef %aenmb.i, i32 noundef %data_size.0.i) #13
  %or33 = or i32 %clr_intr.1, 4
  br label %if.end34

if.end34:                                         ; preds = %qlafx00_async_event.exit, %if.end27.if.end34_crit_edge
  %clr_intr.2 = phi i32 [ %or33, %qlafx00_async_event.exit ], [ %clr_intr.1, %if.end27.if.end34_crit_edge ]
  %and35 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end39_crit_edge, label %if.then37

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  %96 = ptrtoint ptr %rsp_q_in.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rsp_q_in.i, align 4
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #13, !srcloc !269
  %99 = call i32 @llvm.bswap.i32(i32 %98) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %100 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %ring_index.i, align 4
  %102 = trunc i32 %99 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %101, i16 %102)
  %cmp.not157.i = icmp eq i16 %101, %102
  br i1 %cmp.not157.i, label %if.then37.qlafx00_process_response_queue.exit_crit_edge, label %if.then37.while.body.i_crit_edge

if.then37.while.body.i_crit_edge:                 ; preds = %if.then37
  br label %while.body.i

if.then37.qlafx00_process_response_queue.exit_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_process_response_queue.exit

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.then37.while.body.i_crit_edge
  %lreq_q_out.0158.i = phi i16 [ %lreq_q_out.1.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %101, %if.then37.while.body.i_crit_edge ]
  %103 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ring_ptr.i, align 4
  call void @mmiocpy(ptr noundef %rsp_pkt.i, ptr noundef %104, i32 noundef 64) #13
  %105 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %ring_index.i, align 4
  %inc.i = add i16 %106, 1
  store i16 %inc.i, ptr %ring_index.i, align 4
  %107 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %108)
  %cmp11.i = icmp eq i16 %inc.i, %108
  br i1 %cmp11.i, label %if.then.i82, label %if.else.i

if.then.i82:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %ring_index.i, align 4
  %110 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ring.i, align 4
  br label %if.end.i84

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc7.i = add i16 %lreq_q_out.0158.i, 1
  %112 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ring_ptr.i, align 4
  %incdec.ptr.i83 = getelementptr %struct.response_t, ptr %113, i32 1
  br label %if.end.i84

if.end.i84:                                       ; preds = %if.else.i, %if.then.i82
  %storemerge.i = phi ptr [ %incdec.ptr.i83, %if.else.i ], [ %111, %if.then.i82 ]
  %lreq_q_out.1.i = phi i16 [ %inc7.i, %if.else.i ], [ 0, %if.then.i82 ]
  %114 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %storemerge.i, ptr %ring_ptr.i, align 4
  %115 = ptrtoint ptr %entry_status.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %entry_status.i, align 1
  %conv16.i = zext i8 %116 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp17.not.i = icmp eq i8 %116, 0
  %117 = ptrtoint ptr %rsp_pkt.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %.pr.i = load i8, ptr %rsp_pkt.i, align 4
  br i1 %cmp17.not.i, label %if.end25.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %.pr.i)
  %cmp20.not.i = icmp eq i8 %.pr.i, 12
  br i1 %cmp20.not.i, label %land.lhs.true.i.sw.bb31.i_crit_edge, label %if.then22.i

land.lhs.true.i.sw.bb31.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb31.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %11, i32 noundef 20607, ptr noundef nonnull @.str.92, i32 noundef %conv16.i) #13
  %118 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw.i, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %func.i.i) #13
  %120 = call ptr @memcpy(ptr %func.i.i, ptr @__const.qlafx00_error_entry.func, i32 11)
  %req_q_map.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %119, i32 0, i32 24
  %121 = ptrtoint ptr %req_q_map.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %req_q_map.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %call.i.i = call ptr @qla2x00_get_sp_from_handle(ptr noundef %11, ptr noundef nonnull %func.i.i, ptr noundef %124, ptr noundef %rsp_pkt.i) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  %done.i.i = getelementptr inbounds %struct.srb, ptr %call.i.i, i32 0, i32 24
  %125 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %done.i.i, align 4
  call void %126(ptr noundef nonnull %call.i.i, i32 noundef 458752) #13
  br label %qlafx00_error_entry.exit.i

if.end.i.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags4.i) #13
  call void @qla2xxx_wake_dpc(ptr noundef %11) #13
  br label %qlafx00_error_entry.exit.i

qlafx00_error_entry.exit.i:                       ; preds = %if.end.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %func.i.i) #13
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %sw.default.i87, %qlafx00_ioctl_iosb_entry.exit.i, %qlafx00_abort_iocb_entry.exit.i, %cleanup.sink.split.i.i, %if.end19.i.i.while.cond.backedge.i_crit_edge, %if.end.i96.i.while.cond.backedge.i_crit_edge, %if.then45.i.i, %land.end.i92.i.while.cond.backedge.i_crit_edge, %if.then36.i.i, %if.then5.i.i, %if.then2.i.i, %if.then.i85.i, %if.then217.i.i, %land.end.i.i.while.cond.backedge.i_crit_edge, %if.then209.i.i, %if.then34.i.i, %if.then28.i.i, %if.then18.i.i, %if.then13.i.i, %qlafx00_error_entry.exit.i
  %cmp.not.i = icmp eq i16 %lreq_q_out.1.i, %102
  br i1 %cmp.not.i, label %while.cond.backedge.i.qlafx00_process_response_queue.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.backedge.i.qlafx00_process_response_queue.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_process_response_queue.exit

if.end25.i:                                       ; preds = %if.end.i84
  %127 = zext i8 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %.pr.i, label %sw.default.i87 [
    i8 1, label %sw.bb.i85
    i8 4, label %sw.bb28.i86
    i8 13, label %sw.bb29.i
    i8 8, label %sw.bb30.i
    i8 12, label %if.end25.i.sw.bb31.i_crit_edge
  ]

if.end25.i.sw.bb31.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb31.i

sw.bb.i85:                                        ; preds = %if.end25.i
  %128 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw.i, align 4
  %130 = ptrtoint ptr %comp_func_num.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %comp_func_num.i.i, align 4
  %132 = ptrtoint ptr %scsi_status2.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %scsi_status2.i.i, align 2
  %134 = and i16 %133, -241
  %135 = ptrtoint ptr %handles.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %handles.i.i, align 4
  %conv6.i.i = and i32 %136, 65535
  %shr.i.i = lshr i32 %136, 16
  %req_q_map.i77.i = getelementptr inbounds %struct.qla_hw_data, ptr %129, i32 0, i32 24
  %137 = ptrtoint ptr %req_q_map.i77.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %req_q_map.i77.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %138, i32 %shr.i.i
  %139 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx.i.i, align 4
  %num_outstanding_cmds.i.i = getelementptr inbounds %struct.req_que, ptr %140, i32 0, i32 18
  %141 = ptrtoint ptr %num_outstanding_cmds.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %num_outstanding_cmds.i.i, align 4
  %conv8.i.i = zext i16 %142 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i.i, i32 %conv8.i.i)
  %cmp.i.i = icmp ult i32 %conv6.i.i, %conv8.i.i
  br i1 %cmp.i.i, label %if.end.i78.i, label %sw.bb.i85.if.then13.i.i_crit_edge

sw.bb.i85.if.then13.i.i_crit_edge:                ; preds = %sw.bb.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.i

if.end.i78.i:                                     ; preds = %sw.bb.i85
  %outstanding_cmds.i.i = getelementptr inbounds %struct.req_que, ptr %140, i32 0, i32 16
  %143 = ptrtoint ptr %outstanding_cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %outstanding_cmds.i.i, align 4
  %arrayidx10.i.i = getelementptr ptr, ptr %144, i32 %conv6.i.i
  %145 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx10.i.i, align 4
  %cmp11.i.i = icmp eq ptr %146, null
  br i1 %cmp11.i.i, label %if.end.i78.i.if.then13.i.i_crit_edge, label %if.end14.i.i

if.end.i78.i.if.then13.i.i_crit_edge:             ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end.i78.i.if.then13.i.i_crit_edge, %sw.bb.i85.if.then13.i.i_crit_edge
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %11, i32 noundef 12340, ptr noundef nonnull @.str.94, i32 noundef %conv6.i.i) #13
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags4.i) #13
  call void @qla2xxx_wake_dpc(ptr noundef %11) #13
  br label %while.cond.backedge.i

if.end14.i.i:                                     ; preds = %if.end.i78.i
  %type.i.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 11
  %147 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %148)
  %cmp16.i.i = icmp eq i16 %148, 7
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end21.i.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %149 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %arrayidx10.i.i, align 4
  %150 = and i16 %133, 1
  %151 = or i16 %150, %131
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %152 = icmp eq i16 %151, 0
  %cpstatus.addr.0.i.i.i = select i1 %152, i16 %131, i16 256
  %comp_status.i.i.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 22, i32 0, i32 0, i32 0, i32 4
  %153 = ptrtoint ptr %comp_status.i.i.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %cpstatus.addr.0.i.i.i, ptr %comp_status.i.i.i, align 8
  %done.i.i.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 24
  %154 = ptrtoint ptr %done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %done.i.i.i, align 4
  call void %155(ptr noundef nonnull %146, i32 noundef 0) #13
  br label %while.cond.backedge.i

if.end21.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp23.i.i = icmp eq i16 %131, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %cmp26.i.i = icmp eq i16 %134, 0
  %or.cond.i.i = select i1 %cmp23.i.i, i1 %cmp26.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then28.i.i, label %if.end29.i.i

if.then28.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @qla2x00_process_completed_request(ptr noundef %11, ptr noundef %140, i32 noundef %conv6.i.i) #13
  br label %while.cond.backedge.i

if.end29.i.i:                                     ; preds = %if.end21.i.i
  %156 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %arrayidx10.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 22
  %157 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %u.i.i, align 8
  %cmp32.i.i = icmp eq ptr %158, null
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.end35.i.i

if.then34.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %11, i32 noundef 12360, ptr noundef nonnull @.str.95, i32 noundef %conv6.i.i, ptr noundef nonnull %146) #13
  br label %while.cond.backedge.i

if.end35.i.i:                                     ; preds = %if.end29.i.i
  %conv36.i.i = zext i16 %134 to i32
  %and37.i.i = and i16 %133, -512
  %fcport39.i.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 6
  %159 = ptrtoint ptr %fcport39.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %fcport39.i.i, align 4
  %and41.i.i = and i32 %conv36.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool.not.i80.i = icmp eq i32 %and41.i.i, 0
  br i1 %tobool.not.i80.i, label %if.end35.i.i.if.end44.i.i_crit_edge, label %if.then42.i.i

if.end35.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i.i

if.then42.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %161 = ptrtoint ptr %seq_no18.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %seq_no18.i.i, align 4
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then42.i.i, %if.end35.i.i.if.end44.i.i_crit_edge
  %sense_len.0.i.i = phi i32 [ %162, %if.then42.i.i ], [ 0, %if.end35.i.i.if.end44.i.i_crit_edge ]
  %and46.i.i = and i32 %conv36.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %tobool47.not.i.i = icmp eq i32 %and46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.end44.i.i.if.end49.i.i_crit_edge, label %if.then48.i.i

if.end44.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i.i

if.then48.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %163 = ptrtoint ptr %dataword_r14.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %dataword_r14.i.i, align 4
  %165 = call i32 @llvm.bswap.i32(i32 %164) #13
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then48.i.i, %if.end44.i.i.if.end49.i.i_crit_edge
  %resid_len.0.i.i = phi i32 [ %165, %if.then48.i.i ], [ 0, %if.end44.i.i.if.end49.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 5376, i16 %131)
  %cmp51.i.i = icmp eq i16 %131, 5376
  br i1 %cmp51.i.i, label %if.then53.i.i, label %if.end49.i.i.if.end55.i.i_crit_edge

if.end49.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i.i

if.then53.i.i:                                    ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %166 = ptrtoint ptr %dataword_r14.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dataword_r14.i.i, align 4
  %168 = call i32 @llvm.bswap.i32(i32 %167) #13
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then53.i.i, %if.end49.i.i.if.end55.i.i_crit_edge
  %fw_resid_len.0.i.i = phi i32 [ %168, %if.then53.i.i ], [ 0, %if.end49.i.i.if.end55.i.i_crit_edge ]
  %cmp23.not.i.i = xor i1 %cmp23.i.i, true
  %and61.i.i = and i32 %conv36.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  %or.cond394.i.i = select i1 %cmp23.not.i.i, i1 true, i1 %tobool62.not.i.i
  %comp_status.0.i.i = select i1 %or.cond394.i.i, i16 %131, i16 1792
  %169 = call i16 @llvm.bswap.i16(i16 %comp_status.0.i.i) #13
  %170 = zext i16 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.121)
  switch i16 %169, label %sw.default.i.i [
    i16 0, label %if.end55.i.i.sw.bb.i.i_crit_edge
    i16 28, label %if.end55.i.i.sw.bb.i.i_crit_edge101
    i16 21, label %sw.bb101.i.i
    i16 41, label %if.end55.i.i.sw.bb186.i.i_crit_edge
    i16 42, label %if.end55.i.i.sw.bb186.i.i_crit_edge102
    i16 43, label %if.end55.i.i.sw.bb186.i.i_crit_edge103
    i16 1, label %if.end55.i.i.sw.bb186.i.i_crit_edge104
    i16 40, label %if.end55.i.i.sw.bb186.i.i_crit_edge105
    i16 6, label %if.end55.i.i.sw.bb186.i.i_crit_edge106
    i16 4, label %if.end55.i.i.sw.bb186.i.i_crit_edge107
    i16 5, label %if.end55.i.i.if.then198.i.i_crit_edge
  ]

if.end55.i.i.if.then198.i.i_crit_edge:            ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then198.i.i

if.end55.i.i.sw.bb186.i.i_crit_edge107:           ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb186.i.i

if.end55.i.i.sw.bb186.i.i_crit_edge106:           ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb186.i.i

if.end55.i.i.sw.bb186.i.i_crit_edge105:           ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb186.i.i

if.end55.i.i.sw.bb186.i.i_crit_edge104:           ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb186.i.i

if.end55.i.i.sw.bb186.i.i_crit_edge103:           ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb186.i.i

if.end55.i.i.sw.bb186.i.i_crit_edge102:           ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb186.i.i

if.end55.i.i.sw.bb186.i.i_crit_edge:              ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb186.i.i

if.end55.i.i.sw.bb.i.i_crit_edge101:              ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

if.end55.i.i.sw.bb.i.i_crit_edge:                 ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end55.i.i.sw.bb.i.i_crit_edge, %if.end55.i.i.sw.bb.i.i_crit_edge101
  br i1 %cmp26.i.i, label %sw.bb.i.i.if.then198.i.i_crit_edge, label %if.end70.i.i

sw.bb.i.i.if.then198.i.i_crit_edge:               ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then198.i.i

if.end70.i.i:                                     ; preds = %sw.bb.i.i
  br i1 %tobool47.not.i.i, label %if.end70.i.i.if.end83.i.i_crit_edge, label %if.then74.i.i

if.end70.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83.i.i

if.then74.i.i:                                    ; preds = %if.end70.i.i
  %resid_len.i.i.i = getelementptr inbounds %struct.scsi_request, ptr %158, i32 0, i32 5
  %171 = ptrtoint ptr %resid_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %resid_len.0.i.i, ptr %resid_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and37.i.i)
  %tobool75.not.i.i = icmp eq i16 %and37.i.i, 0
  br i1 %tobool75.not.i.i, label %land.lhs.true76.i.i, label %if.then74.i.i.if.end83.i.i_crit_edge

if.then74.i.i.if.end83.i.i_crit_edge:             ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83.i.i

land.lhs.true76.i.i:                              ; preds = %if.then74.i.i
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 17, i32 1
  %172 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %length.i.i.i, align 4
  %sub.i.i = sub i32 %173, %resid_len.0.i.i
  %underflow.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 19
  %174 = ptrtoint ptr %underflow.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %underflow.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %175)
  %cmp77.i.i = icmp ult i32 %sub.i.i, %175
  br i1 %cmp77.i.i, label %if.then79.i.i, label %land.lhs.true76.i.i.if.end206.i.i_crit_edge

land.lhs.true76.i.i.if.end206.i.i_crit_edge:      ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206.i.i

if.then79.i.i:                                    ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vha80.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 1
  %176 = ptrtoint ptr %vha80.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %vha80.i.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %177, i32 noundef 12368, ptr noundef nonnull @.str.96, i32 noundef %resid_len.0.i.i, i32 noundef %173) #13
  br label %if.then198.i.i

if.end83.i.i:                                     ; preds = %if.then74.i.i.if.end83.i.i_crit_edge, %if.end70.i.i.if.end83.i.i_crit_edge
  %178 = lshr exact i16 %and37.i.i, 8
  %conv84.i.i = zext i16 %178 to i32
  %179 = zext i16 %and37.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.122)
  switch i16 %and37.i.i, label %if.end83.i.i.if.end206.i.i_crit_edge [
    i16 10240, label %if.then88.i.i
    i16 512, label %if.end95.i.i
  ]

if.end83.i.i.if.end206.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206.i.i

if.then88.i.i:                                    ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vha89.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 1
  %180 = ptrtoint ptr %vha89.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %vha89.i.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %181, i32 noundef 12369, ptr noundef nonnull @.str.97) #13
  br label %if.then198.i.i

if.end95.i.i:                                     ; preds = %if.end83.i.i
  %sense_buffer.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 21
  %182 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %sense_buffer.i.i, align 4
  %184 = call ptr @memset(ptr %183, i32 0, i32 96)
  br i1 %tobool.not.i80.i, label %if.end95.i.i.if.end206.i.i_crit_edge, label %if.end100.i.i

if.end95.i.i.if.end206.i.i_crit_edge:             ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206.i.i

if.end100.i.i:                                    ; preds = %if.end95.i.i
  %vha1.i135.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 7
  %185 = ptrtoint ptr %vha1.i135.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %vha1.i135.i, align 8
  %187 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %u.i.i, align 8
  %fw_sense_length.i137.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %189 = ptrtoint ptr %fw_sense_length.i137.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %sense_len.0.i.i, ptr %fw_sense_length.i137.i, align 8
  %190 = call i32 @llvm.umin.i32(i32 %sense_len.0.i.i, i32 96) #13
  %request_sense_length.i138.i = getelementptr inbounds %struct.srb_cmd, ptr %u.i.i, i32 0, i32 1
  %191 = ptrtoint ptr %request_sense_length.i138.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %request_sense_length.i138.i, align 4
  %sense_buffer.i139.i = getelementptr inbounds %struct.scsi_cmnd, ptr %188, i32 0, i32 21
  %192 = ptrtoint ptr %sense_buffer.i139.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sense_buffer.i139.i, align 4
  %request_sense_ptr.i140.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %194 = ptrtoint ptr %request_sense_ptr.i140.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %193, ptr %request_sense_ptr.i140.i, align 4
  %195 = call i32 @llvm.umin.i32(i32 %sense_len.0.i.i, i32 32) #13
  %196 = ptrtoint ptr %sense_buffer.i139.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sense_buffer.i139.i, align 4
  %198 = call ptr @memcpy(ptr %197, ptr %reserved_221.i.i, i32 %195)
  %199 = ptrtoint ptr %fw_sense_length.i137.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %fw_sense_length.i137.i, align 8
  %sub.i141.i = sub i32 %200, %195
  store i32 %sub.i141.i, ptr %fw_sense_length.i137.i, align 8
  %201 = load ptr, ptr %sense_buffer.i139.i, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %201, i32 %195
  %202 = ptrtoint ptr %request_sense_ptr.i140.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %add.ptr.i142.i, ptr %request_sense_ptr.i140.i, align 4
  %sub16.i143.i = sub nsw i32 %190, %195
  %203 = ptrtoint ptr %request_sense_length.i138.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %sub16.i143.i, ptr %request_sense_length.i138.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %186, i32 noundef 12365, ptr noundef nonnull @.str.103, i32 noundef %195, i32 noundef 32, i32 noundef %sub16.i143.i) #13
  %204 = ptrtoint ptr %fw_sense_length.i137.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %fw_sense_length.i137.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp21.not.i144.i = icmp eq i32 %205, 0
  br i1 %cmp21.not.i144.i, label %if.end100.i.i.if.end23.i149.i_crit_edge, label %if.then22.i147.i

if.end100.i.i.if.end23.i149.i_crit_edge:          ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i149.i

if.then22.i147.i:                                 ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %206 = ptrtoint ptr %status_srb.i83.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %146, ptr %status_srb.i83.i, align 4
  %result.i146.i = getelementptr inbounds %struct.scsi_cmnd, ptr %188, i32 0, i32 24
  %207 = ptrtoint ptr %result.i146.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %conv84.i.i, ptr %result.i146.i, align 4
  br label %if.end23.i149.i

if.end23.i149.i:                                  ; preds = %if.then22.i147.i, %if.end100.i.i.if.end23.i149.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool.not.i148.i = icmp eq i32 %195, 0
  br i1 %tobool.not.i148.i, label %if.end23.i149.i.if.end206.i.i_crit_edge, label %if.then24.i154.i

if.end23.i149.i.if.end206.i.i_crit_edge:          ; preds = %if.end23.i149.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206.i.i

if.then24.i154.i:                                 ; preds = %if.end23.i149.i
  call void @__sanitizer_cov_trace_pc() #15
  %208 = ptrtoint ptr %vha1.i135.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %vha1.i135.i, align 8
  %host_no.i150.i = getelementptr inbounds %struct.scsi_qla_host, ptr %209, i32 0, i32 6
  %210 = ptrtoint ptr %host_no.i150.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %host_no.i150.i, align 4
  %device.i151.i = getelementptr inbounds %struct.scsi_cmnd, ptr %188, i32 0, i32 1
  %212 = ptrtoint ptr %device.i151.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %device.i151.i, align 4
  %id.i152.i = getelementptr inbounds %struct.scsi_device, ptr %213, i32 0, i32 16
  %214 = ptrtoint ptr %id.i152.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %id.i152.i, align 8
  %lun.i153.i = getelementptr inbounds %struct.scsi_device, ptr %213, i32 0, i32 18
  %216 = ptrtoint ptr %lun.i153.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %lun.i153.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134348800, ptr noundef %186, i32 noundef 12345, ptr noundef nonnull @.str.104, i32 noundef %211, i32 noundef %215, i64 noundef %217, ptr noundef %188) #13
  %218 = ptrtoint ptr %sense_buffer.i139.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %sense_buffer.i139.i, align 4
  call void @ql_dump_buffer(i32 noundef 134348800, ptr noundef %186, i32 noundef 12361, ptr noundef %219, i32 noundef %195) #13
  br label %if.end206.i.i

sw.bb101.i.i:                                     ; preds = %if.end55.i.i
  %device_type.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %129, i32 0, i32 55
  %220 = ptrtoint ptr %device_type.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %device_type.i.i, align 4
  %and102.i.i = and i32 %221, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i.i)
  %tobool103.not.i.i = icmp eq i32 %and102.i.i, 0
  br i1 %tobool103.not.i.i, label %lor.lhs.false.i.i, label %sw.bb101.i.i.if.end109.i.i_crit_edge

sw.bb101.i.i.if.end109.i.i_crit_edge:             ; preds = %sw.bb101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109.i.i

lor.lhs.false.i.i:                                ; preds = %sw.bb101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %isp_type.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %129, i32 0, i32 54
  %222 = ptrtoint ptr %isp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %isp_type.i.i, align 8
  %and105.i.i = and i32 %223, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i.i)
  %tobool106.not.i.i = icmp eq i32 %and105.i.i, 0
  %spec.select.i.i = select i1 %tobool106.not.i.i, i32 %resid_len.0.i.i, i32 %fw_resid_len.0.i.i
  br label %if.end109.i.i

if.end109.i.i:                                    ; preds = %lor.lhs.false.i.i, %sw.bb101.i.i.if.end109.i.i_crit_edge
  %resid.0.i.i = phi i32 [ %fw_resid_len.0.i.i, %sw.bb101.i.i.if.end109.i.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %resid_len.i398.i.i = getelementptr inbounds %struct.scsi_request, ptr %158, i32 0, i32 5
  %224 = ptrtoint ptr %resid_len.i398.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %resid.0.i.i, ptr %resid_len.i398.i.i, align 4
  %and111.i.i = and i32 %conv36.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i.i)
  %tobool112.not.i.i = icmp eq i32 %and111.i.i, 0
  br i1 %tobool112.not.i.i, label %if.else143.i.i, label %if.then113.i.i

if.then113.i.i:                                   ; preds = %if.end109.i.i
  %225 = ptrtoint ptr %device_type.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %device_type.i.i, align 4
  %and115.i.i = and i32 %226, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i.i)
  %tobool116.not.i.i = icmp eq i32 %and115.i.i, 0
  br i1 %tobool116.not.i.i, label %lor.lhs.false117.i.i, label %land.lhs.true122.i.i

lor.lhs.false117.i.i:                             ; preds = %if.then113.i.i
  %isp_type118.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %129, i32 0, i32 54
  %227 = ptrtoint ptr %isp_type118.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %isp_type118.i.i, align 8
  %and120.i.i = and i32 %228, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i.i)
  %tobool121.not.i.i = icmp eq i32 %and120.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %fw_resid_len.0.i.i, i32 %resid_len.0.i.i)
  %cmp123.not.i.i = icmp eq i32 %fw_resid_len.0.i.i, %resid_len.0.i.i
  %or.cond395.i.i = select i1 %tobool121.not.i.i, i1 true, i1 %cmp123.not.i.i
  br i1 %or.cond395.i.i, label %lor.lhs.false117.i.i.if.end130.i.i_crit_edge, label %lor.lhs.false117.i.i.if.then125.i.i_crit_edge

lor.lhs.false117.i.i.if.then125.i.i_crit_edge:    ; preds = %lor.lhs.false117.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then125.i.i

lor.lhs.false117.i.i.if.end130.i.i_crit_edge:     ; preds = %lor.lhs.false117.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130.i.i

land.lhs.true122.i.i:                             ; preds = %if.then113.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %fw_resid_len.0.i.i, i32 %resid_len.0.i.i)
  %cmp123.not.old.i.i = icmp eq i32 %fw_resid_len.0.i.i, %resid_len.0.i.i
  br i1 %cmp123.not.old.i.i, label %land.lhs.true122.i.i.if.end130.i.i_crit_edge, label %land.lhs.true122.i.i.if.then125.i.i_crit_edge

land.lhs.true122.i.i.if.then125.i.i_crit_edge:    ; preds = %land.lhs.true122.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then125.i.i

land.lhs.true122.i.i.if.end130.i.i_crit_edge:     ; preds = %land.lhs.true122.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130.i.i

if.then125.i.i:                                   ; preds = %land.lhs.true122.i.i.if.then125.i.i_crit_edge, %lor.lhs.false117.i.i.if.then125.i.i_crit_edge
  %vha126.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 1
  %229 = ptrtoint ptr %vha126.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %vha126.i.i, align 8
  %length.i399.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 17, i32 1
  %231 = ptrtoint ptr %length.i399.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %length.i399.i.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %230, i32 noundef 12370, ptr noundef nonnull @.str.98, i32 noundef %resid.0.i.i, i32 noundef %232) #13
  %233 = lshr exact i16 %and37.i.i, 8
  %conv128.i.i = zext i16 %233 to i32
  %or129.i.i = or i32 %conv128.i.i, 458752
  br label %check_scsi_status.i.i

if.end130.i.i:                                    ; preds = %land.lhs.true122.i.i.if.end130.i.i_crit_edge, %lor.lhs.false117.i.i.if.end130.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and37.i.i)
  %tobool131.not.i.i = icmp eq i16 %and37.i.i, 0
  br i1 %tobool131.not.i.i, label %land.lhs.true132.i.i, label %if.end130.i.i.if.end161.i.i_crit_edge

if.end130.i.i.if.end161.i.i_crit_edge:            ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161.i.i

land.lhs.true132.i.i:                             ; preds = %if.end130.i.i
  %length.i400.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 17, i32 1
  %234 = ptrtoint ptr %length.i400.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %length.i400.i.i, align 4
  %sub134.i.i = sub i32 %235, %resid.0.i.i
  %underflow135.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 19
  %236 = ptrtoint ptr %underflow135.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %underflow135.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub134.i.i, i32 %237)
  %cmp136.i.i = icmp ult i32 %sub134.i.i, %237
  br i1 %cmp136.i.i, label %if.then138.i.i, label %land.lhs.true132.i.i.if.end161.i.i_crit_edge

land.lhs.true132.i.i.if.end161.i.i_crit_edge:     ; preds = %land.lhs.true132.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161.i.i

if.then138.i.i:                                   ; preds = %land.lhs.true132.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vha139.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 1
  %238 = ptrtoint ptr %vha139.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %vha139.i.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %239, i32 noundef 12371, ptr noundef nonnull @.str.99, i32 noundef %resid.0.i.i, i32 noundef %235, i32 noundef %237) #13
  br label %if.then198.i.i

if.else143.i.i:                                   ; preds = %if.end109.i.i
  %240 = zext i16 %and37.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.123)
  switch i16 %and37.i.i, label %if.then151.i.i [
    i16 10240, label %if.else143.i.i.if.else156.i.i_crit_edge
    i16 2048, label %if.else143.i.i.if.else156.i.i_crit_edge108
  ]

if.else143.i.i.if.else156.i.i_crit_edge108:       ; preds = %if.else143.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else156.i.i

if.else143.i.i.if.else156.i.i_crit_edge:          ; preds = %if.else143.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else156.i.i

if.then151.i.i:                                   ; preds = %if.else143.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vha152.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 1
  %241 = ptrtoint ptr %vha152.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %vha152.i.i, align 8
  %length.i402.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 17, i32 1
  %243 = ptrtoint ptr %length.i402.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %length.i402.i.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %242, i32 noundef 12372, ptr noundef nonnull @.str.98, i32 noundef %resid.0.i.i, i32 noundef %244) #13
  %245 = lshr exact i16 %and37.i.i, 8
  %conv154.i.i = zext i16 %245 to i32
  %or155.i.i = or i32 %conv154.i.i, 458752
  br label %check_scsi_status.i.i

if.else156.i.i:                                   ; preds = %if.else143.i.i.if.else156.i.i_crit_edge, %if.else143.i.i.if.else156.i.i_crit_edge108
  %conv144.i.i = zext i16 %and37.i.i to i32
  %vha157.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 1
  %246 = ptrtoint ptr %vha157.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %vha157.i.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %247, i32 noundef 12373, ptr noundef nonnull @.str.100, i32 noundef %conv36.i.i, i32 noundef %conv144.i.i) #13
  br label %if.end161.i.i

if.end161.i.i:                                    ; preds = %if.else156.i.i, %land.lhs.true132.i.i.if.end161.i.i_crit_edge, %if.end130.i.i.if.end161.i.i_crit_edge
  %248 = lshr exact i16 %and37.i.i, 8
  %conv162.i.i = zext i16 %248 to i32
  br label %check_scsi_status.i.i

check_scsi_status.i.i:                            ; preds = %if.end161.i.i, %if.then151.i.i, %if.then125.i.i
  %tobool197.not.i.i = phi i1 [ true, %if.end161.i.i ], [ false, %if.then151.i.i ], [ false, %if.then125.i.i ]
  %res.0.i.i = phi i32 [ %conv162.i.i, %if.end161.i.i ], [ %or155.i.i, %if.then151.i.i ], [ %or129.i.i, %if.then125.i.i ]
  %249 = zext i16 %and37.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.124)
  switch i16 %and37.i.i, label %check_scsi_status.i.i.sw.epilog.i.i_crit_edge [
    i16 512, label %if.end178.i.i
    i16 10240, label %if.then171.i.i
  ]

check_scsi_status.i.i.sw.epilog.i.i_crit_edge:    ; preds = %check_scsi_status.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

if.then171.i.i:                                   ; preds = %check_scsi_status.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vha172.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 1
  %250 = ptrtoint ptr %vha172.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %vha172.i.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %251, i32 noundef 12374, ptr noundef nonnull @.str.97) #13
  br label %if.then198.i.i

if.end178.i.i:                                    ; preds = %check_scsi_status.i.i
  %sense_buffer179.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 21
  %252 = ptrtoint ptr %sense_buffer179.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %sense_buffer179.i.i, align 4
  %254 = call ptr @memset(ptr %253, i32 0, i32 96)
  br i1 %tobool.not.i80.i, label %if.end178.i.i.sw.epilog.i.i_crit_edge, label %if.end184.i.i

if.end178.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.end178.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

if.end184.i.i:                                    ; preds = %if.end178.i.i
  %vha1.i.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 7
  %255 = ptrtoint ptr %vha1.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %vha1.i.i, align 8
  %257 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %u.i.i, align 8
  %fw_sense_length.i122.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %259 = ptrtoint ptr %fw_sense_length.i122.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %sense_len.0.i.i, ptr %fw_sense_length.i122.i, align 8
  %260 = call i32 @llvm.umin.i32(i32 %sense_len.0.i.i, i32 96) #13
  %request_sense_length.i123.i = getelementptr inbounds %struct.srb_cmd, ptr %u.i.i, i32 0, i32 1
  %261 = ptrtoint ptr %request_sense_length.i123.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %request_sense_length.i123.i, align 4
  %sense_buffer.i124.i = getelementptr inbounds %struct.scsi_cmnd, ptr %258, i32 0, i32 21
  %262 = ptrtoint ptr %sense_buffer.i124.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %sense_buffer.i124.i, align 4
  %request_sense_ptr.i125.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %264 = ptrtoint ptr %request_sense_ptr.i125.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %263, ptr %request_sense_ptr.i125.i, align 4
  %265 = call i32 @llvm.umin.i32(i32 %sense_len.0.i.i, i32 32) #13
  %266 = ptrtoint ptr %sense_buffer.i124.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %sense_buffer.i124.i, align 4
  %268 = call ptr @memcpy(ptr %267, ptr %reserved_221.i.i, i32 %265)
  %269 = ptrtoint ptr %fw_sense_length.i122.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %fw_sense_length.i122.i, align 8
  %sub.i126.i = sub i32 %270, %265
  store i32 %sub.i126.i, ptr %fw_sense_length.i122.i, align 8
  %271 = load ptr, ptr %sense_buffer.i124.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %271, i32 %265
  %272 = ptrtoint ptr %request_sense_ptr.i125.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %add.ptr.i127.i, ptr %request_sense_ptr.i125.i, align 4
  %sub16.i.i = sub nsw i32 %260, %265
  %273 = ptrtoint ptr %request_sense_length.i123.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %sub16.i.i, ptr %request_sense_length.i123.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %256, i32 noundef 12365, ptr noundef nonnull @.str.103, i32 noundef %265, i32 noundef 32, i32 noundef %sub16.i.i) #13
  %274 = ptrtoint ptr %fw_sense_length.i122.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %fw_sense_length.i122.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %cmp21.not.i.i = icmp eq i32 %275, 0
  br i1 %cmp21.not.i.i, label %if.end184.i.i.if.end23.i.i_crit_edge, label %if.then22.i.i

if.end184.i.i.if.end23.i.i_crit_edge:             ; preds = %if.end184.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i.i

if.then22.i.i:                                    ; preds = %if.end184.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %276 = ptrtoint ptr %status_srb.i83.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %146, ptr %status_srb.i83.i, align 4
  %result.i129.i = getelementptr inbounds %struct.scsi_cmnd, ptr %258, i32 0, i32 24
  %277 = ptrtoint ptr %result.i129.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %res.0.i.i, ptr %result.i129.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then22.i.i, %if.end184.i.i.if.end23.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool.not.i130.i = icmp eq i32 %265, 0
  br i1 %tobool.not.i130.i, label %if.end23.i.i.sw.epilog.i.i_crit_edge, label %if.then24.i.i

if.end23.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

if.then24.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %278 = ptrtoint ptr %vha1.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %vha1.i.i, align 8
  %host_no.i131.i = getelementptr inbounds %struct.scsi_qla_host, ptr %279, i32 0, i32 6
  %280 = ptrtoint ptr %host_no.i131.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %host_no.i131.i, align 4
  %device.i132.i = getelementptr inbounds %struct.scsi_cmnd, ptr %258, i32 0, i32 1
  %282 = ptrtoint ptr %device.i132.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %device.i132.i, align 4
  %id.i133.i = getelementptr inbounds %struct.scsi_device, ptr %283, i32 0, i32 16
  %284 = ptrtoint ptr %id.i133.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %id.i133.i, align 8
  %lun.i134.i = getelementptr inbounds %struct.scsi_device, ptr %283, i32 0, i32 18
  %286 = ptrtoint ptr %lun.i134.i to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %lun.i134.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134348800, ptr noundef %256, i32 noundef 12345, ptr noundef nonnull @.str.104, i32 noundef %281, i32 noundef %285, i64 noundef %287, ptr noundef %258) #13
  %288 = ptrtoint ptr %sense_buffer.i124.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %sense_buffer.i124.i, align 4
  call void @ql_dump_buffer(i32 noundef 134348800, ptr noundef %256, i32 noundef 12361, ptr noundef %289, i32 noundef %265) #13
  br label %sw.epilog.i.i

sw.bb186.i.i:                                     ; preds = %if.end55.i.i.sw.bb186.i.i_crit_edge, %if.end55.i.i.sw.bb186.i.i_crit_edge102, %if.end55.i.i.sw.bb186.i.i_crit_edge103, %if.end55.i.i.sw.bb186.i.i_crit_edge104, %if.end55.i.i.sw.bb186.i.i_crit_edge105, %if.end55.i.i.sw.bb186.i.i_crit_edge106, %if.end55.i.i.sw.bb186.i.i_crit_edge107
  %vha187.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 1
  %290 = ptrtoint ptr %vha187.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %vha187.i.i, align 8
  %state.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 34
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state.i.i, i32 noundef 4) #13
  %292 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load volatile i32, ptr %state.i.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %291, i32 noundef 12375, ptr noundef nonnull @.str.101, i32 noundef %293) #13
  %call.i.i396.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state.i.i, i32 noundef 4) #13
  %294 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load volatile i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %295)
  %cmp191.i.i = icmp eq i32 %295, 4
  br i1 %cmp191.i.i, label %if.then193.i.i, label %sw.bb186.i.i.if.then198.i.i_crit_edge

sw.bb186.i.i.if.then198.i.i_crit_edge:            ; preds = %sw.bb186.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then198.i.i

if.then193.i.i:                                   ; preds = %sw.bb186.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %296 = ptrtoint ptr %vha187.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %vha187.i.i, align 8
  call void @qla2x00_mark_device_lost(ptr noundef %297, ptr noundef %160, i32 noundef 1) #13
  br label %if.then198.i.i

sw.default.i.i:                                   ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then198.i.i

sw.epilog.i.i:                                    ; preds = %if.then24.i.i, %if.end23.i.i.sw.epilog.i.i_crit_edge, %if.end178.i.i.sw.epilog.i.i_crit_edge, %check_scsi_status.i.i.sw.epilog.i.i_crit_edge
  br i1 %tobool197.not.i.i, label %sw.epilog.i.i.if.end206.i.i_crit_edge, label %sw.epilog.i.i.if.then198.i.i_crit_edge

sw.epilog.i.i.if.then198.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then198.i.i

sw.epilog.i.i.if.end206.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206.i.i

if.then198.i.i:                                   ; preds = %sw.epilog.i.i.if.then198.i.i_crit_edge, %sw.default.i.i, %if.then193.i.i, %sw.bb186.i.i.if.then198.i.i_crit_edge, %if.then171.i.i, %if.then138.i.i, %if.then88.i.i, %if.then79.i.i, %sw.bb.i.i.if.then198.i.i_crit_edge, %if.end55.i.i.if.then198.i.i_crit_edge
  %res.1410.i.i = phi i32 [ %res.0.i.i, %sw.epilog.i.i.if.then198.i.i_crit_edge ], [ 524288, %if.end55.i.i.if.then198.i.i_crit_edge ], [ 0, %sw.bb.i.i.if.then198.i.i_crit_edge ], [ 458752, %if.then79.i.i ], [ %conv84.i.i, %if.then88.i.i ], [ 458752, %if.then138.i.i ], [ %res.0.i.i, %if.then171.i.i ], [ 917504, %sw.bb186.i.i.if.then198.i.i_crit_edge ], [ 917504, %if.then193.i.i ], [ 458752, %sw.default.i.i ]
  %vha199.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 1
  %298 = ptrtoint ptr %vha199.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %vha199.i.i, align 8
  %conv200.i.i = zext i16 %comp_status.0.i.i to i32
  %300 = ptrtoint ptr %host_no.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %host_no.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 1
  %302 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %device.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %303, i32 0, i32 16
  %304 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %id.i.i, align 8
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %303, i32 0, i32 18
  %306 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %lun.i.i, align 8
  %tgt_id.i.i = getelementptr inbounds %struct.fc_port, ptr %160, i32 0, i32 27
  %308 = ptrtoint ptr %tgt_id.i.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %tgt_id.i.i, align 4
  %conv203.i.i = zext i16 %309 to i32
  %conv204.i.i = zext i16 %and37.i.i to i32
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 16
  %310 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %cmnd.i.i, align 4
  %length.i403.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %158, i32 0, i32 17, i32 1
  %312 = ptrtoint ptr %length.i403.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %length.i403.i.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %299, i32 noundef 12376, ptr noundef nonnull @.str.102, i32 noundef %conv200.i.i, i32 noundef %conv36.i.i, i32 noundef %res.1410.i.i, i32 noundef %301, i32 noundef %305, i64 noundef %307, i32 noundef %conv203.i.i, i32 noundef %conv204.i.i, ptr noundef %311, i32 noundef %313, ptr noundef %reserved_221.i.i, i32 noundef %resid_len.0.i.i, i32 noundef %fw_resid_len.0.i.i, i32 noundef %sense_len.0.i.i, i32 noundef 32, i32 noundef 0) #13
  br label %if.end206.i.i

if.end206.i.i:                                    ; preds = %if.then198.i.i, %sw.epilog.i.i.if.end206.i.i_crit_edge, %if.then24.i154.i, %if.end23.i149.i.if.end206.i.i_crit_edge, %if.end95.i.i.if.end206.i.i_crit_edge, %if.end83.i.i.if.end206.i.i_crit_edge, %land.lhs.true76.i.i.if.end206.i.i_crit_edge
  %res.1411.i.i = phi i32 [ %res.1410.i.i, %if.then198.i.i ], [ %res.0.i.i, %sw.epilog.i.i.if.end206.i.i_crit_edge ], [ %conv84.i.i, %if.end83.i.i.if.end206.i.i_crit_edge ], [ %conv84.i.i, %if.end95.i.i.if.end206.i.i_crit_edge ], [ 0, %land.lhs.true76.i.i.if.end206.i.i_crit_edge ], [ %conv84.i.i, %if.end23.i149.i.if.end206.i.i_crit_edge ], [ %conv84.i.i, %if.then24.i154.i ]
  %314 = ptrtoint ptr %status_srb.i83.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %status_srb.i83.i, align 4
  %cmp207.i.i = icmp eq ptr %315, null
  br i1 %cmp207.i.i, label %if.then209.i.i, label %land.end.i.i

if.then209.i.i:                                   ; preds = %if.end206.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %done.i81.i = getelementptr inbounds %struct.srb, ptr %146, i32 0, i32 24
  %316 = ptrtoint ptr %done.i81.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %done.i81.i, align 4
  call void %317(ptr noundef nonnull %146, i32 noundef %res.1411.i.i) #13
  br label %while.cond.backedge.i

land.end.i.i:                                     ; preds = %if.end206.i.i
  %.b393.i.i = load i1, ptr @qlafx00_status_entry.__already_done, align 1
  br i1 %.b393.i.i, label %land.end.i.i.while.cond.backedge.i_crit_edge, label %if.then217.i.i, !prof !267

land.end.i.i.while.cond.backedge.i_crit_edge:     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.i

if.then217.i.i:                                   ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qlafx00_status_entry.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 2515, i32 noundef 9, ptr noundef null) #13
  br label %while.cond.backedge.i

sw.bb28.i86:                                      ; preds = %if.end25.i
  %318 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %hw, align 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %319, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %321, i32 0, i32 44, i32 8
  %322 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %324 = ptrtoint ptr %status_srb.i83.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %status_srb.i83.i, align 4
  %tobool.not.i84.i = icmp eq ptr %325, null
  br i1 %tobool.not.i84.i, label %if.then.i85.i, label %if.end.i87.i

if.then.i85.i:                                    ; preds = %sw.bb28.i86
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %323, i32 noundef 12343, ptr noundef nonnull @.str.105, ptr noundef null) #13
  br label %while.cond.backedge.i

if.end.i87.i:                                     ; preds = %sw.bb28.i86
  %u.i86.i = getelementptr inbounds %struct.srb, ptr %325, i32 0, i32 22
  %fw_sense_length.i.i = getelementptr inbounds %struct.srb, ptr %325, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %326 = ptrtoint ptr %fw_sense_length.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %fw_sense_length.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool1.not.i.i = icmp eq i32 %327, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i87.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %323, i32 noundef 12363, ptr noundef nonnull @.str.106, ptr noundef nonnull %325) #13
  br label %while.cond.backedge.i

if.end3.i.i:                                      ; preds = %if.end.i87.i
  %328 = ptrtoint ptr %u.i86.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %u.i86.i, align 8
  %cmp.i88.i = icmp eq ptr %329, null
  br i1 %cmp.i88.i, label %if.then5.i.i, label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %323, i32 noundef 12347, ptr noundef nonnull @.str.107, ptr noundef nonnull %325) #13
  %330 = ptrtoint ptr %status_srb.i83.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr null, ptr %status_srb.i83.i, align 4
  br label %while.cond.backedge.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %request_sense_length.i.i = getelementptr inbounds %struct.srb_cmd, ptr %u.i86.i, i32 0, i32 1
  %331 = ptrtoint ptr %request_sense_length.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %request_sense_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %tobool9.not.i.i = icmp eq i32 %332, 0
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.else.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %323, i32 noundef 12364, ptr noundef nonnull @.str.108, ptr noundef nonnull %325) #13
  br label %if.end26.i.i

if.else.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %request_sense_ptr.i.i = getelementptr inbounds %struct.srb, ptr %325, i32 0, i32 22, i32 0, i32 0, i32 0, i32 2
  %333 = ptrtoint ptr %request_sense_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %request_sense_ptr.i.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %323, i32 noundef 12367, ptr noundef nonnull @.str.109, ptr noundef nonnull %325, i32 noundef %332, ptr noundef %334) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %332)
  %cmp14.i.i = icmp ugt i32 %332, 60
  %phi.cast.i.i = and i32 %332, 255
  %sense_sz.0.i.i = select i1 %cmp14.i.i, i32 60, i32 %phi.cast.i.i
  call void @ql_dump_buffer(i32 noundef 134348800, ptr noundef %323, i32 noundef 12366, ptr noundef %rsp_pkt.i, i32 noundef 64) #13
  %335 = call ptr @memcpy(ptr %334, ptr %handles.i.i, i32 %sense_sz.0.i.i)
  call void @ql_dump_buffer(i32 noundef 134348800, ptr noundef %323, i32 noundef 12362, ptr noundef %334, i32 noundef %sense_sz.0.i.i) #13
  %sub.i90.i = sub i32 %332, %sense_sz.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %334, i32 %sense_sz.0.i.i
  %336 = ptrtoint ptr %request_sense_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %add.ptr.i.i, ptr %request_sense_ptr.i.i, align 4
  %337 = ptrtoint ptr %request_sense_length.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %sub.i90.i, ptr %request_sense_length.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.else.i.i, %if.then10.i.i
  %338 = ptrtoint ptr %fw_sense_length.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %fw_sense_length.i.i, align 8
  %340 = call i32 @llvm.usub.sat.i32(i32 %339, i32 60) #13
  %341 = ptrtoint ptr %fw_sense_length.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %fw_sense_length.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %339)
  %cmp34.i.i = icmp ult i32 %339, 61
  br i1 %cmp34.i.i, label %if.then36.i.i, label %land.end.i92.i

if.then36.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %342 = ptrtoint ptr %status_srb.i83.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr null, ptr %status_srb.i83.i, align 4
  %done.i91.i = getelementptr inbounds %struct.srb, ptr %325, i32 0, i32 24
  %343 = ptrtoint ptr %done.i91.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %done.i91.i, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %329, i32 0, i32 24
  %345 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %result.i.i, align 4
  call void %344(ptr noundef nonnull %325, i32 noundef %346) #13
  br label %while.cond.backedge.i

land.end.i92.i:                                   ; preds = %if.end26.i.i
  %.b129.i.i = load i1, ptr @qlafx00_status_cont_entry.__already_done, align 1
  br i1 %.b129.i.i, label %land.end.i92.i.while.cond.backedge.i_crit_edge, label %if.then45.i.i, !prof !267

land.end.i92.i.while.cond.backedge.i_crit_edge:   ; preds = %land.end.i92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.i

if.then45.i.i:                                    ; preds = %land.end.i92.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qlafx00_status_cont_entry.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 2594, i32 noundef 9, ptr noundef null) #13
  br label %while.cond.backedge.i

sw.bb29.i:                                        ; preds = %if.end25.i
  %347 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %hw.i, align 4
  %349 = ptrtoint ptr %handle_count1.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %handle_count1.i.i, align 2
  %conv.i.i = zext i8 %350 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %350)
  %cmp.i94.i = icmp ugt i8 %350, 15
  br i1 %cmp.i94.i, label %if.then.i95.i, label %if.end.i96.i

if.then.i95.i:                                    ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %11, i32 noundef 12341, ptr noundef nonnull @.str.110, i32 noundef %conv.i.i) #13
  br label %cleanup.sink.split.i.i

if.end.i96.i:                                     ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %350)
  %cmp33.not.i.i = icmp eq i8 %350, 0
  br i1 %cmp33.not.i.i, label %if.end.i96.i.while.cond.backedge.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i96.i.while.cond.backedge.i_crit_edge:     ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i96.i
  %req_q_map.i97.i = getelementptr inbounds %struct.qla_hw_data, ptr %348, i32 0, i32 24
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end19.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %handle_ptr.05.i.i = phi ptr [ %handles.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end19.i.i.for.body.i.i_crit_edge ]
  %i.04.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end19.i.i.for.body.i.i_crit_edge ]
  %351 = ptrtoint ptr %handle_ptr.05.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %handle_ptr.05.i.i, align 4
  %353 = call i32 @llvm.bswap.i32(i32 %352) #13
  %conv6.i98.i = and i32 %353, 65535
  %shr.i99.i = lshr i32 %353, 16
  %354 = ptrtoint ptr %req_q_map.i97.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %req_q_map.i97.i, align 4
  %arrayidx8.i.i = getelementptr ptr, ptr %355, i32 %shr.i99.i
  %356 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %arrayidx8.i.i, align 4
  %num_outstanding_cmds.i100.i = getelementptr inbounds %struct.req_que, ptr %357, i32 0, i32 18
  %358 = ptrtoint ptr %num_outstanding_cmds.i100.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %num_outstanding_cmds.i100.i, align 4
  %conv9.i.i = zext i16 %359 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i98.i, i32 %conv9.i.i)
  %cmp10.i.i = icmp ult i32 %conv6.i98.i, %conv9.i.i
  br i1 %cmp10.i.i, label %if.end14.i102.i, label %for.body.i.i.if.then17.i.i_crit_edge

for.body.i.i.if.then17.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i.i

if.end14.i102.i:                                  ; preds = %for.body.i.i
  %outstanding_cmds.i101.i = getelementptr inbounds %struct.req_que, ptr %357, i32 0, i32 16
  %360 = ptrtoint ptr %outstanding_cmds.i101.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %outstanding_cmds.i101.i, align 4
  %arrayidx13.i.i = getelementptr ptr, ptr %361, i32 %conv6.i98.i
  %362 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %arrayidx13.i.i, align 4
  %cmp15.i.i = icmp eq ptr %363, null
  br i1 %cmp15.i.i, label %if.end14.i102.i.if.then17.i.i_crit_edge, label %if.end19.i.i

if.end14.i102.i.if.then17.i.i_crit_edge:          ; preds = %if.end14.i102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end14.i102.i.if.then17.i.i_crit_edge, %for.body.i.i.if.then17.i.i_crit_edge
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 134217728, ptr noundef %11, i32 noundef 12356, ptr noundef nonnull @.str.94, i32 noundef %conv6.i98.i) #13
  br label %cleanup.sink.split.i.i

if.end19.i.i:                                     ; preds = %if.end14.i102.i
  call void @qla2x00_process_completed_request(ptr noundef %11, ptr noundef %357, i32 noundef %conv6.i98.i) #13
  %incdec.ptr.i.i = getelementptr i32, ptr %handle_ptr.05.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %if.end19.i.i.while.cond.backedge.i_crit_edge, label %if.end19.i.i.for.body.i.i_crit_edge

if.end19.i.i.for.body.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.end19.i.i.while.cond.backedge.i_crit_edge:     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.i

cleanup.sink.split.i.i:                           ; preds = %if.then17.i.i, %if.then.i95.i
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags4.i) #13
  call void @qla2xxx_wake_dpc(ptr noundef %11) #13
  br label %while.cond.backedge.i

sw.bb30.i:                                        ; preds = %if.end25.i
  %364 = ptrtoint ptr %req32.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %req32.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %func.i103.i) #13
  %366 = call ptr @memcpy(ptr %func.i103.i, ptr @__const.qlafx00_abort_iocb_entry.func, i32 9)
  %call.i104.i = call ptr @qla2x00_get_sp_from_handle(ptr noundef %11, ptr noundef nonnull %func.i103.i, ptr noundef %365, ptr noundef %rsp_pkt.i) #13
  %tobool.not.i105.i = icmp eq ptr %call.i104.i, null
  br i1 %tobool.not.i105.i, label %sw.bb30.i.qlafx00_abort_iocb_entry.exit.i_crit_edge, label %if.end.i108.i

sw.bb30.i.qlafx00_abort_iocb_entry.exit.i_crit_edge: ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_abort_iocb_entry.exit.i

if.end.i108.i:                                    ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #15
  %u.i106.i = getelementptr inbounds %struct.srb, ptr %call.i104.i, i32 0, i32 22
  %367 = ptrtoint ptr %comp_func_num.i.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %comp_func_num.i.i, align 4
  %comp_status.i.i = getelementptr inbounds %struct.anon.89, ptr %u.i106.i, i32 0, i32 1
  %369 = ptrtoint ptr %comp_status.i.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %368, ptr %comp_status.i.i, align 4
  %done.i107.i = getelementptr inbounds %struct.srb, ptr %call.i104.i, i32 0, i32 24
  %370 = ptrtoint ptr %done.i107.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %done.i107.i, align 4
  call void %371(ptr noundef nonnull %call.i104.i, i32 noundef 0) #13
  br label %qlafx00_abort_iocb_entry.exit.i

qlafx00_abort_iocb_entry.exit.i:                  ; preds = %if.end.i108.i, %sw.bb30.i.qlafx00_abort_iocb_entry.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %func.i103.i) #13
  br label %while.cond.backedge.i

sw.bb31.i:                                        ; preds = %if.end25.i.sw.bb31.i_crit_edge, %land.lhs.true.i.sw.bb31.i_crit_edge
  %372 = ptrtoint ptr %req32.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %req32.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %func.i109.i) #13
  %374 = call ptr @memcpy(ptr %func.i109.i, ptr @__const.qlafx00_ioctl_iosb_entry.func, i32 10)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fstatus.sroa.12.i.i)
  %call.i110.i = call ptr @qla2x00_get_sp_from_handle(ptr noundef %11, ptr noundef nonnull %func.i109.i, ptr noundef %373, ptr noundef %rsp_pkt.i) #13
  %tobool.not.i111.i = icmp eq ptr %call.i110.i, null
  br i1 %tobool.not.i111.i, label %sw.bb31.i.qlafx00_ioctl_iosb_entry.exit.i_crit_edge, label %if.end.i115.i

sw.bb31.i.qlafx00_ioctl_iosb_entry.exit.i_crit_edge: ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_ioctl_iosb_entry.exit.i

if.end.i115.i:                                    ; preds = %sw.bb31.i
  %type.i112.i = getelementptr inbounds %struct.srb, ptr %call.i110.i, i32 0, i32 11
  %375 = ptrtoint ptr %type.i112.i to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %type.i112.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %376)
  %cmp.i113.i = icmp eq i16 %376, 10
  %u.i114.i = getelementptr inbounds %struct.srb, ptr %call.i110.i, i32 0, i32 22
  br i1 %cmp.i113.i, label %if.then2.i117.i, label %if.else.i119.i

if.then2.i117.i:                                  ; preds = %if.end.i115.i
  %377 = ptrtoint ptr %seq_no18.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %seq_no18.i.i, align 4
  %seq_number.i.i = getelementptr inbounds %struct.srb, ptr %call.i110.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 3
  %379 = ptrtoint ptr %seq_number.i.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %378, ptr %seq_number.i.i, align 4
  %380 = ptrtoint ptr %fw_iotcl_flags13.i.i to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %fw_iotcl_flags13.i.i, align 2
  %fw_flags.i.i = getelementptr inbounds %struct.srb, ptr %call.i110.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %382 = ptrtoint ptr %fw_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 %381, ptr %fw_flags.i.i, align 8
  %383 = ptrtoint ptr %status16.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %status16.i.i, align 4
  %result.i116.i = getelementptr inbounds %struct.srb, ptr %call.i110.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 2
  %385 = ptrtoint ptr %result.i116.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %384, ptr %result.i116.i, align 8
  %386 = ptrtoint ptr %u.i114.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %u.i114.i, align 8
  %388 = and i8 %387, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %388)
  %tobool8.not.i.i = icmp eq i8 %388, 0
  br i1 %tobool8.not.i.i, label %if.then2.i117.i.if.end27.i.i_crit_edge, label %if.then9.i.i

if.then2.i117.i.if.end27.i.i_crit_edge:           ; preds = %if.then2.i117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i.i

if.then9.i.i:                                     ; preds = %if.then2.i117.i
  call void @__sanitizer_cov_trace_pc() #15
  %389 = ptrtoint ptr %dataword_r14.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %dataword_r14.i.i, align 4
  %req_data.i.i = getelementptr inbounds %struct.srb, ptr %call.i110.i, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1
  %391 = ptrtoint ptr %req_data.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %req_data.i.i, align 8
  br label %if.end27.i.i

if.else.i119.i:                                   ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #15
  %392 = ptrtoint ptr %u.i114.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %u.i114.i, align 8
  %reply.i.i = getelementptr inbounds %struct.bsg_job, ptr %393, i32 0, i32 4
  %394 = ptrtoint ptr %reply.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %reply.i.i, align 4
  %396 = ptrtoint ptr %reserved_0.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %reserved_0.i.i, align 4
  %398 = ptrtoint ptr %comp_func_num.i.i to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %comp_func_num.i.i, align 4
  %400 = ptrtoint ptr %fw_iotcl_flags13.i.i to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %fw_iotcl_flags13.i.i, align 2
  %402 = ptrtoint ptr %dataword_r14.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %dataword_r14.i.i, align 4
  %404 = ptrtoint ptr %adapid.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %adapid.i.i, align 4
  %406 = ptrtoint ptr %dataword_r_extra.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %dataword_r_extra.i.i, align 4
  %408 = ptrtoint ptr %residuallen.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %residuallen.i.i, align 4
  %410 = ptrtoint ptr %status16.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %status16.i.i, align 4
  %412 = ptrtoint ptr %seq_no18.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %seq_no18.i.i, align 4
  %414 = call ptr @memcpy(ptr %fstatus.sroa.12.i.i, ptr %reserved_221.i.i, i32 20)
  %add.ptr.i118.i = getelementptr i8, ptr %395, i32 16
  %415 = ptrtoint ptr %add.ptr.i118.i to i32
  call void @__asan_storeN_noabort(i32 %415, i32 4)
  store i32 %397, ptr %add.ptr.i118.i, align 1
  %fstatus.sroa.6.0.fw_sts_ptr.0..sroa_idx.i.i = getelementptr i8, ptr %395, i32 20
  %416 = ptrtoint ptr %fstatus.sroa.6.0.fw_sts_ptr.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %416, i32 2)
  store i16 %399, ptr %fstatus.sroa.6.0.fw_sts_ptr.0..sroa_idx.i.i, align 1
  %fstatus.sroa.7.0.fw_sts_ptr.0..sroa_idx.i.i = getelementptr i8, ptr %395, i32 22
  %417 = ptrtoint ptr %fstatus.sroa.7.0.fw_sts_ptr.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %417, i32 2)
  store i16 %401, ptr %fstatus.sroa.7.0.fw_sts_ptr.0..sroa_idx.i.i, align 1
  %fstatus.sroa.8.0.fw_sts_ptr.0..sroa_idx.i.i = getelementptr i8, ptr %395, i32 24
  %418 = ptrtoint ptr %fstatus.sroa.8.0.fw_sts_ptr.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %418, i32 4)
  store i32 %403, ptr %fstatus.sroa.8.0.fw_sts_ptr.0..sroa_idx.i.i, align 1
  %fstatus.sroa.9.0.fw_sts_ptr.0..sroa_idx.i.i = getelementptr i8, ptr %395, i32 28
  %419 = ptrtoint ptr %fstatus.sroa.9.0.fw_sts_ptr.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %419, i32 4)
  store i32 %405, ptr %fstatus.sroa.9.0.fw_sts_ptr.0..sroa_idx.i.i, align 1
  %fstatus.sroa.10.0.fw_sts_ptr.0..sroa_idx.i.i = getelementptr i8, ptr %395, i32 32
  %420 = ptrtoint ptr %fstatus.sroa.10.0.fw_sts_ptr.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %420, i32 4)
  store i32 0, ptr %fstatus.sroa.10.0.fw_sts_ptr.0..sroa_idx.i.i, align 1
  %fstatus.sroa.1036.0.fw_sts_ptr.0..sroa_idx.i.i = getelementptr i8, ptr %395, i32 36
  %421 = ptrtoint ptr %fstatus.sroa.1036.0.fw_sts_ptr.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %421, i32 4)
  store i32 %407, ptr %fstatus.sroa.1036.0.fw_sts_ptr.0..sroa_idx.i.i, align 1
  %fstatus.sroa.11.0.fw_sts_ptr.0..sroa_idx.i.i = getelementptr i8, ptr %395, i32 40
  %422 = ptrtoint ptr %fstatus.sroa.11.0.fw_sts_ptr.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %422, i32 4)
  store i32 %413, ptr %fstatus.sroa.11.0.fw_sts_ptr.0..sroa_idx.i.i, align 1
  %fstatus.sroa.12.0.fw_sts_ptr.0..sroa_idx.i.i = getelementptr i8, ptr %395, i32 44
  %423 = call ptr @memcpy(ptr %fstatus.sroa.12.0.fw_sts_ptr.0..sroa_idx.i.i, ptr %fstatus.sroa.12.i.i, i32 20)
  %fstatus.sroa.13.0.fw_sts_ptr.0..sroa_idx.i.i = getelementptr i8, ptr %395, i32 64
  %424 = ptrtoint ptr %fstatus.sroa.13.0.fw_sts_ptr.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %424, i32 4)
  store i32 %409, ptr %fstatus.sroa.13.0.fw_sts_ptr.0..sroa_idx.i.i, align 1
  %fstatus.sroa.14.0.fw_sts_ptr.0..sroa_idx.i.i = getelementptr i8, ptr %395, i32 68
  %425 = ptrtoint ptr %fstatus.sroa.14.0.fw_sts_ptr.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %425, i32 4)
  store i32 %411, ptr %fstatus.sroa.14.0.fw_sts_ptr.0..sroa_idx.i.i, align 1
  %reply_len.i.i = getelementptr inbounds %struct.bsg_job, ptr %393, i32 0, i32 6
  %426 = ptrtoint ptr %reply_len.i.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 73, ptr %reply_len.i.i, align 4
  %vha24.i.i = getelementptr inbounds %struct.srb, ptr %call.i110.i, i32 0, i32 7
  %427 = ptrtoint ptr %vha24.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %vha24.i.i, align 8
  call void @ql_dump_buffer(i32 noundef 8421376, ptr noundef %428, i32 noundef 20608, ptr noundef %rsp_pkt.i, i32 noundef 60) #13
  %429 = ptrtoint ptr %vha24.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %vha24.i.i, align 8
  call void @ql_dump_buffer(i32 noundef 8421376, ptr noundef %430, i32 noundef 20596, ptr noundef %add.ptr.i118.i, i32 noundef 56) #13
  %431 = ptrtoint ptr %395 to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 0, ptr %395, align 4
  %reply_payload.i.i = getelementptr inbounds %struct.bsg_job, ptr %393, i32 0, i32 8
  %432 = ptrtoint ptr %reply_payload.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %reply_payload.i.i, align 4
  %reply_payload_rcv_len.i.i = getelementptr inbounds %struct.fc_bsg_reply, ptr %395, i32 0, i32 1
  %434 = ptrtoint ptr %reply_payload_rcv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 %433, ptr %reply_payload_rcv_len.i.i, align 4
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.else.i119.i, %if.then9.i.i, %if.then2.i117.i.if.end27.i.i_crit_edge
  %done.i120.i = getelementptr inbounds %struct.srb, ptr %call.i110.i, i32 0, i32 24
  %435 = ptrtoint ptr %done.i120.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %done.i120.i, align 4
  call void %436(ptr noundef nonnull %call.i110.i, i32 noundef 0) #13
  br label %qlafx00_ioctl_iosb_entry.exit.i

qlafx00_ioctl_iosb_entry.exit.i:                  ; preds = %if.end27.i.i, %sw.bb31.i.qlafx00_ioctl_iosb_entry.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fstatus.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %func.i109.i) #13
  br label %while.cond.backedge.i

sw.default.i87:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv27.i = zext i8 %.pr.i to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %11, i32 noundef 20609, ptr noundef nonnull @.str.93, i32 noundef %conv27.i, i32 noundef %conv16.i) #13
  br label %while.cond.backedge.i

qlafx00_process_response_queue.exit:              ; preds = %while.cond.backedge.i.qlafx00_process_response_queue.exit_crit_edge, %if.then37.qlafx00_process_response_queue.exit_crit_edge
  %437 = ptrtoint ptr %rsp_q_out.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %rsp_q_out.i, align 4
  %439 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %439)
  %440 = load i16, ptr %ring_index.i, align 4
  %conv38.i = zext i16 %440 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  call void @arm_heavy_mb() #13
  %441 = call i32 @llvm.bswap.i32(i32 %conv38.i) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %438, i32 %441) #13, !srcloc !266
  %or38 = or i32 %clr_intr.2, 2
  br label %if.end39

if.end39:                                         ; preds = %qlafx00_process_response_queue.exit, %if.end34.if.end39_crit_edge
  %clr_intr.3 = phi i32 [ %or38, %qlafx00_process_response_queue.exit ], [ %clr_intr.2, %if.end34.if.end39_crit_edge ]
  %442 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %cregbase, align 64
  %add.ptr41 = getelementptr i8, ptr %443, i32 138096
  %neg = xor i32 %clr_intr.3, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  call void @arm_heavy_mb() #13
  %444 = call i32 @llvm.bswap.i32(i32 %neg) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %444) #13, !srcloc !266
  %445 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %cregbase, align 64
  %add.ptr43 = getelementptr i8, ptr %446, i32 138096
  %447 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #13, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  %dec = add nsw i32 %dec95, -1
  %tobool13.not = icmp eq i32 %dec95, 0
  br i1 %tobool13.not, label %if.end39.for.end_crit_edge, label %if.end39.for.body_crit_edge

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end39.for.end_crit_edge, %for.body.for.end_crit_edge
  %status.0.lcssa = phi i32 [ %status.094, %for.body.for.end_crit_edge ], [ %status.1, %if.end39.for.end_crit_edge ]
  %mbx_cmd_flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 124
  %448 = ptrtoint ptr %mbx_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load volatile i32, ptr %mbx_cmd_flags.i, align 4
  %450 = and i32 %449, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %450)
  %tobool.not.i88 = icmp eq i32 %450, 0
  %and.i = and i32 %status.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i88
  br i1 %or.cond.i, label %for.end.qla2x00_handle_mbx_completion.exit_crit_edge, label %land.lhs.true2.i

for.end.qla2x00_handle_mbx_completion.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %qla2x00_handle_mbx_completion.exit

land.lhs.true2.i:                                 ; preds = %for.end
  %flags.i89 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %451 = ptrtoint ptr %flags.i89 to i32
  call void @__asan_load4_noabort(i32 %451)
  %bf.load.i90 = load volatile i32, ptr %flags.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i90)
  %tobool3.not.i = icmp sgt i32 %bf.load.i90, -1
  br i1 %tobool3.not.i, label %land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge, label %if.then.i91

land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qla2x00_handle_mbx_completion.exit

if.then.i91:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 1, ptr noundef %mbx_cmd_flags.i) #13
  call void @_clear_bit(i32 noundef 2, ptr noundef %mbx_cmd_flags.i) #13
  %mbx_intr_comp.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 129
  call void @complete(ptr noundef %mbx_intr_comp.i) #13
  br label %qla2x00_handle_mbx_completion.exit

qla2x00_handle_mbx_completion.exit:               ; preds = %if.then.i91, %land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge, %for.end.qla2x00_handle_mbx_completion.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call8) #13
  br label %cleanup

cleanup:                                          ; preds = %qla2x00_handle_mbx_completion.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %qla2x00_handle_mbx_completion.exit ], [ 0, %if.then ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qla2x00_check_reg32_for_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlafx00_start_scsi(ptr noundef %sp) local_unnamed_addr #0 align 64 {
entry:
  %lcont_pkt.i = alloca %struct.cont_a64_entry_t, align 1
  %lcmd_pkt = alloca %struct.cmd_type_7_fx00, align 4
  %llun = alloca %struct.scsi_lun, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %vha2 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %2 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vha2, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lcmd_pkt) #13
  %6 = call ptr @memset(ptr %lcmd_pkt, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %llun) #13
  %7 = getelementptr inbounds [8 x i8], ptr %llun, i32 0, i32 4
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %llun to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %llun, align 8
  %9 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rsp_q_map, align 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %req3 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 54
  %13 = ptrtoint ptr %req3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req3, align 8
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #13
  %call8 = tail call i32 @qla2xxx_get_next_handle(ptr noundef %14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %entry.if.end104_crit_edge, label %if.end

entry.if.end104_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.end:                                           ; preds = %entry
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %15 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.qla24xx_calc_iocbs.exit_crit_edge, label %if.then12

if.end.qla24xx_calc_iocbs.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %qla24xx_calc_iocbs.exit

if.then12:                                        ; preds = %if.end
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdb.i, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sc_data_direction, align 4
  %call15 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %20, i32 noundef %16, i32 noundef %22, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then12.if.end104_crit_edge, label %if.end22, !prof !278

if.then12.if.end104_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.end22:                                         ; preds = %if.then12
  %conv23 = trunc i32 %call15 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv23)
  %cmp.i = icmp ugt i16 %conv23, 1
  br i1 %cmp.i, label %if.then.i, label %if.end22.qla24xx_calc_iocbs.exit_crit_edge

if.end22.qla24xx_calc_iocbs.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %qla24xx_calc_iocbs.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i16 %conv23, -1
  %sub.i.frozen = freeze i16 %sub.i
  %div12.i = udiv i16 %sub.i.frozen, 5
  %23 = mul i16 %div12.i, 5
  %rem34.i.decomposed = sub i16 %sub.i.frozen, %23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem34.i.decomposed)
  %tobool.not.i = icmp eq i16 %rem34.i.decomposed, 0
  %spec.select.v.i = select i1 %tobool.not.i, i16 1, i16 2
  %spec.select.i = add nuw nsw i16 %spec.select.v.i, %div12.i
  br label %qla24xx_calc_iocbs.exit

qla24xx_calc_iocbs.exit:                          ; preds = %if.then.i, %if.end22.qla24xx_calc_iocbs.exit_crit_edge, %if.end.qla24xx_calc_iocbs.exit_crit_edge
  %conv23203 = phi i16 [ %conv23, %if.end22.qla24xx_calc_iocbs.exit_crit_edge ], [ %conv23, %if.then.i ], [ 0, %if.end.qla24xx_calc_iocbs.exit_crit_edge ]
  %iocbs.0.i = phi i16 [ 1, %if.end22.qla24xx_calc_iocbs.exit_crit_edge ], [ %spec.select.i, %if.then.i ], [ 1, %if.end.qla24xx_calc_iocbs.exit_crit_edge ]
  %cnt25 = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 8
  %24 = ptrtoint ptr %cnt25 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cnt25, align 4
  %conv26 = zext i16 %25 to i32
  %conv27 = zext i16 %iocbs.0.i to i32
  %add = add nuw nsw i32 %conv27, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv26)
  %cmp28 = icmp ugt i32 %add, %conv26
  br i1 %cmp28, label %if.then30, label %qla24xx_calc_iocbs.exit.if.end61_crit_edge

qla24xx_calc_iocbs.exit.if.end61_crit_edge:       ; preds = %qla24xx_calc_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then30:                                        ; preds = %qla24xx_calc_iocbs.exit
  %req_q_out = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 4
  %26 = ptrtoint ptr %req_q_out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %req_q_out, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #13, !srcloc !269
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  %ring_index = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 5
  %30 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ring_index, align 4
  %conv33 = zext i16 %31 to i32
  %conv34 = and i32 %29, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv34, i32 %conv33)
  %cmp35 = icmp ugt i32 %conv34, %conv33
  br i1 %cmp35, label %if.then37, label %if.else43

if.then37:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %32 = trunc i32 %29 to i16
  %conv41 = sub i16 %32, %31
  br label %if.end52

if.else43:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %length = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 9
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %length, align 2
  %35 = trunc i32 %29 to i16
  %36 = sub i16 %35, %31
  %conv50 = add i16 %36, %34
  br label %if.end52

if.end52:                                         ; preds = %if.else43, %if.then37
  %storemerge184 = phi i16 [ %conv50, %if.else43 ], [ %conv41, %if.then37 ]
  %37 = ptrtoint ptr %cnt25 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %storemerge184, ptr %cnt25, align 4
  %conv54 = zext i16 %storemerge184 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv54)
  %cmp57 = icmp ugt i32 %add, %conv54
  br i1 %cmp57, label %queuing_error, label %if.end52.if.end61_crit_edge

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.end61:                                         ; preds = %if.end52.if.end61_crit_edge, %qla24xx_calc_iocbs.exit.if.end61_crit_edge
  %current_outstanding_cmd = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 17
  %38 = ptrtoint ptr %current_outstanding_cmd to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call8, ptr %current_outstanding_cmd, align 4
  %outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 16
  %39 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %outstanding_cmds, align 4
  %arrayidx62 = getelementptr ptr, ptr %40, i32 %call8
  %41 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sp, ptr %arrayidx62, align 4
  %handle63 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %42 = ptrtoint ptr %handle63 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call8, ptr %handle63, align 8
  %43 = inttoptr i32 %call8 to ptr
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 23
  %44 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %host_scribble, align 4
  %45 = ptrtoint ptr %cnt25 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cnt25, align 4
  %sub67 = sub i16 %46, %iocbs.0.i
  store i16 %sub67, ptr %cnt25, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 2
  %47 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring_ptr, align 4
  %49 = call ptr @memset(ptr %lcmd_pkt, i32 0, i32 64)
  %id = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 12
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %id, align 4
  %52 = load i32, ptr %handle63, align 8
  %conv.i = zext i16 %51 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = and i32 %52, 65535
  %or.i = or i32 %shl.i, %conv1.i
  %handle72 = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 4
  %53 = ptrtoint ptr %handle72 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i, ptr %handle72, align 4
  %reserved_0 = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 5
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv23203)
  %dseg_count = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 10
  %55 = ptrtoint ptr %reserved_0 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %reserved_0, align 4
  %56 = ptrtoint ptr %dseg_count to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %54, ptr %dseg_count, align 4
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %57 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fcport, align 4
  %tgt_id = getelementptr inbounds %struct.fc_port, ptr %58, i32 0, i32 27
  %59 = ptrtoint ptr %tgt_id to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tgt_id, align 4
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %tgt_idx = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 8
  %62 = ptrtoint ptr %tgt_idx to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %tgt_idx, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %64, i32 0, i32 18
  %65 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %lun, align 8
  call void @int_to_scsilun(i64 noundef %66, ptr noundef nonnull %llun) #13
  %lun73 = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 13
  %67 = ptrtoint ptr %llun to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %llun, align 8
  %69 = call i32 @llvm.bswap.i32(i32 %68) #13
  %incdec.ptr.i = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 13, i32 0, i32 4
  %70 = ptrtoint ptr %lun73 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %lun73, align 4
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %7, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72) #13
  %74 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %incdec.ptr.i, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %75 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cmnd, align 4
  %fcp_cdb = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 18
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #13
  %incdec.ptr.i191 = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 18, i32 4
  %80 = ptrtoint ptr %fcp_cdb to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %fcp_cdb, align 4
  %incdec.ptr1.i192 = getelementptr i32, ptr %76, i32 1
  %81 = ptrtoint ptr %incdec.ptr1.i192 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %incdec.ptr1.i192, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82) #13
  %incdec.ptr.i191.1 = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 18, i32 8
  %84 = ptrtoint ptr %incdec.ptr.i191 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %incdec.ptr.i191, align 4
  %incdec.ptr1.i192.1 = getelementptr i32, ptr %76, i32 2
  %85 = ptrtoint ptr %incdec.ptr1.i192.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %incdec.ptr1.i192.1, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #13
  %incdec.ptr.i191.2 = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 18, i32 12
  %88 = ptrtoint ptr %incdec.ptr.i191.1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %incdec.ptr.i191.1, align 4
  %incdec.ptr1.i192.2 = getelementptr i32, ptr %76, i32 3
  %89 = ptrtoint ptr %incdec.ptr1.i192.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %incdec.ptr1.i192.2, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90) #13
  %92 = ptrtoint ptr %incdec.ptr.i191.2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %incdec.ptr.i191.2, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %93 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %length.i, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  %byte_count = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 19
  %96 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %byte_count, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lcont_pkt.i) #13
  %97 = call ptr @memset(ptr %lcont_pkt.i, i32 255, i32 64)
  %98 = ptrtoint ptr %vha2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vha2, align 8
  %req2.i = getelementptr inbounds %struct.scsi_qla_host, ptr %99, i32 0, i32 54
  %100 = ptrtoint ptr %req2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %req2.i, align 8
  %102 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %u, align 8
  %104 = ptrtoint ptr %lcmd_pkt to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 7, ptr %lcmd_pkt, align 4
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %103, i32 0, i32 17, i32 1
  %105 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i196 = icmp eq i32 %106, 0
  br i1 %tobool.not.i196, label %if.end61.if.then.i197_crit_edge, label %lor.lhs.false.i

if.end61.if.then.i197_crit_edge:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i197

lor.lhs.false.i:                                  ; preds = %if.end61
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %103, i32 0, i32 15
  %107 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sc_data_direction.i, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %108, label %lor.lhs.false.i.if.end18.i_crit_edge [
    i32 3, label %lor.lhs.false.i.if.then.i197_crit_edge
    i32 1, label %if.then6.i
    i32 2, label %if.then11.i
  ]

lor.lhs.false.i.if.then.i197_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i197

lor.lhs.false.i.if.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then.i197:                                     ; preds = %lor.lhs.false.i.if.then.i197_crit_edge, %if.end61.if.then.i197_crit_edge
  %110 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %byte_count, align 4
  br label %qlafx00_build_scsi_iocbs.exit

if.then6.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %cntrl_flags.i = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 14
  %111 = ptrtoint ptr %cntrl_flags.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %cntrl_flags.i, align 4
  %output_bytes.i = getelementptr inbounds %struct.scsi_qla_host, ptr %99, i32 0, i32 58, i32 2
  br label %if.end18.sink.split.i

if.then11.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %cntrl_flags12.i = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 14
  %112 = ptrtoint ptr %cntrl_flags12.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 2, ptr %cntrl_flags12.i, align 4
  %input_bytes.i = getelementptr inbounds %struct.scsi_qla_host, ptr %99, i32 0, i32 58, i32 1
  br label %if.end18.sink.split.i

if.end18.sink.split.i:                            ; preds = %if.then11.i, %if.then6.i
  %input_bytes.sink22.i = phi ptr [ %input_bytes.i, %if.then11.i ], [ %output_bytes.i, %if.then6.i ]
  %113 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %conv14.sink.in.i = load i32, ptr %length.i.i, align 4
  %conv14.sink.i = zext i32 %conv14.sink.in.i to i64
  %114 = ptrtoint ptr %input_bytes.sink22.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %input_bytes.sink22.i, align 8
  %add16.i = add i64 %115, %conv14.sink.i
  store i64 %add16.i, ptr %input_bytes.sink22.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18.sink.split.i, %lor.lhs.false.i.if.end18.i_crit_edge
  %conv20.i = zext i16 %conv23203 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv23203)
  %cmp218.not.i = icmp eq i16 %conv23203, 0
  br i1 %cmp218.not.i, label %if.end18.i.qlafx00_build_scsi_iocbs.exit_crit_edge, label %for.body.lr.ph.i

if.end18.i.qlafx00_build_scsi_iocbs.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_build_scsi_iocbs.exit

for.body.lr.ph.i:                                 ; preds = %if.end18.i
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %103, i32 0, i32 17
  %116 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sdb.i.i, align 4
  %dsd.i = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 20
  %ring_index.i.i = getelementptr inbounds %struct.req_que, ptr %101, i32 0, i32 5
  %length.i3.i = getelementptr inbounds %struct.req_que, ptr %101, i32 0, i32 9
  %ring_ptr5.i.i = getelementptr inbounds %struct.req_que, ptr %101, i32 0, i32 2
  %ring.i.i = getelementptr inbounds %struct.req_que, ptr %101, i32 0, i32 1
  %dsd28.i = getelementptr inbounds %struct.cont_a64_entry_t, ptr %lcont_pkt.i, i32 0, i32 4
  %118 = getelementptr inbounds i8, ptr %lcont_pkt.i, i32 1
  br label %for.body.i198

for.body.i198:                                    ; preds = %for.inc.i.for.body.i198_crit_edge, %for.body.lr.ph.i
  %cont_pkt.014.i = phi ptr [ null, %for.body.lr.ph.i ], [ %cont_pkt.1.i, %for.inc.i.for.body.i198_crit_edge ]
  %cont.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %cont.2.i, %for.inc.i.for.body.i198_crit_edge ]
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i198_crit_edge ]
  %sg.011.i = phi ptr [ %117, %for.body.lr.ph.i ], [ %call37.i, %for.inc.i.for.body.i198_crit_edge ]
  %avail_dsds.010.i = phi i16 [ 1, %for.body.lr.ph.i ], [ %dec.i199, %for.inc.i.for.body.i198_crit_edge ]
  %cur_dsd.09.i = phi ptr [ %dsd.i, %for.body.lr.ph.i ], [ %incdec.ptr.i5.i, %for.inc.i.for.body.i198_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.010.i)
  %cmp24.i = icmp eq i16 %avail_dsds.010.i, 0
  br i1 %cmp24.i, label %if.then26.i, label %for.body.i198.if.end29.i_crit_edge

for.body.i198.if.end29.i_crit_edge:               ; preds = %for.body.i198
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then26.i:                                      ; preds = %for.body.i198
  %119 = call ptr @memset(ptr %118, i32 0, i32 63)
  %120 = ptrtoint ptr %ring_index.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %ring_index.i.i, align 4
  %inc.i.i = add i16 %121, 1
  store i16 %inc.i.i, ptr %ring_index.i.i, align 4
  %122 = ptrtoint ptr %length.i3.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %length.i3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %123)
  %cmp.i.i = icmp eq i16 %inc.i.i, %123
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %ring_index.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %ring_index.i.i, align 4
  %125 = ptrtoint ptr %ring.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ring.i.i, align 4
  br label %qlafx00_prep_cont_type1_iocb.exit.i

if.else.i.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  %127 = ptrtoint ptr %ring_ptr5.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ring_ptr5.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.cmd_a64_entry_t, ptr %128, i32 1
  br label %qlafx00_prep_cont_type1_iocb.exit.i

qlafx00_prep_cont_type1_iocb.exit.i:              ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i = phi ptr [ %incdec.ptr.i.i, %if.else.i.i ], [ %126, %if.then.i.i ]
  %129 = ptrtoint ptr %ring_ptr5.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %storemerge.i, ptr %ring_ptr5.i.i, align 4
  %130 = ptrtoint ptr %lcont_pkt.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 3, ptr %lcont_pkt.i, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %qlafx00_prep_cont_type1_iocb.exit.i, %for.body.i198.if.end29.i_crit_edge
  %cur_dsd.1.i = phi ptr [ %dsd28.i, %qlafx00_prep_cont_type1_iocb.exit.i ], [ %cur_dsd.09.i, %for.body.i198.if.end29.i_crit_edge ]
  %avail_dsds.1.i = phi i16 [ 5, %qlafx00_prep_cont_type1_iocb.exit.i ], [ %avail_dsds.010.i, %for.body.i198.if.end29.i_crit_edge ]
  %cont.1.i = phi i32 [ 1, %qlafx00_prep_cont_type1_iocb.exit.i ], [ %cont.013.i, %for.body.i198.if.end29.i_crit_edge ]
  %cont_pkt.1.i = phi ptr [ %storemerge.i, %qlafx00_prep_cont_type1_iocb.exit.i ], [ %cont_pkt.014.i, %for.body.i198.if.end29.i_crit_edge ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.011.i, i32 0, i32 3
  %131 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma_address.i.i, align 4
  %conv.i.i = zext i32 %132 to i64
  %133 = call i64 @llvm.bswap.i64(i64 %conv.i.i) #13
  %134 = ptrtoint ptr %cur_dsd.1.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 8)
  store i64 %133, ptr %cur_dsd.1.i, align 1
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.011.i, i32 0, i32 4
  %135 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dma_length.i.i, align 4
  %length.i4.i = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1.i, i32 0, i32 1
  %137 = call i32 @llvm.bswap.i32(i32 %136) #13
  %138 = ptrtoint ptr %length.i4.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %137, ptr %length.i4.i, align 1
  %incdec.ptr.i5.i = getelementptr %struct.dsd64, ptr %cur_dsd.1.i, i32 1
  %dec.i199 = add i16 %avail_dsds.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i199)
  %cmp31.i = icmp eq i16 %dec.i199, 0
  br i1 %cmp31.i, label %land.lhs.true.i, label %if.end29.i.for.inc.i_crit_edge

if.end29.i.for.inc.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cont.1.i)
  %cmp33.i = icmp eq i32 %cont.1.i, 1
  br i1 %cmp33.i, label %if.then35.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmiocpy(ptr noundef %cont_pkt.1.i, ptr noundef nonnull %lcont_pkt.i, i32 noundef 64) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then35.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.end29.i.for.inc.i_crit_edge
  %cont.2.i = phi i32 [ 0, %if.then35.i ], [ 0, %land.lhs.true.i.for.inc.i_crit_edge ], [ %cont.1.i, %if.end29.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %call37.i = call ptr @sg_next(ptr noundef %sg.011.i) #13
  %exitcond.not.i = icmp eq i32 %inc.i, %conv20.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i198_crit_edge

for.inc.i.for.body.i198_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i198

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i199)
  %phi.cmp.i = icmp ne i16 %dec.i199, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cont.2.i)
  %cmp42.i = icmp eq i32 %cont.2.i, 1
  %or.cond.i = select i1 %phi.cmp.i, i1 %cmp42.i, i1 false
  br i1 %or.cond.i, label %if.then44.i, label %for.end.i.qlafx00_build_scsi_iocbs.exit_crit_edge

for.end.i.qlafx00_build_scsi_iocbs.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlafx00_build_scsi_iocbs.exit

if.then44.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmiocpy(ptr noundef %cont_pkt.1.i, ptr noundef nonnull %lcont_pkt.i, i32 noundef 64) #13
  br label %qlafx00_build_scsi_iocbs.exit

qlafx00_build_scsi_iocbs.exit:                    ; preds = %if.then44.i, %for.end.i.qlafx00_build_scsi_iocbs.exit_crit_edge, %if.end18.i.qlafx00_build_scsi_iocbs.exit_crit_edge, %if.then.i197
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lcont_pkt.i) #13
  %conv75 = trunc i16 %iocbs.0.i to i8
  %entry_count = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 1
  %139 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv75, ptr %entry_count, align 1
  %id76 = getelementptr inbounds %struct.rsp_que, ptr %12, i32 0, i32 11
  %140 = ptrtoint ptr %id76 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %id76, align 2
  %conv77 = trunc i16 %141 to i8
  %entry_status = getelementptr inbounds %struct.cmd_type_7_fx00, ptr %lcmd_pkt, i32 0, i32 3
  %142 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv77, ptr %entry_status, align 1
  %143 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cmnd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %145 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %cmd_len, align 4
  %conv79 = zext i16 %146 to i32
  call void @ql_dump_buffer(i32 noundef 134348800, ptr noundef %3, i32 noundef 12334, ptr noundef %144, i32 noundef %conv79) #13
  call void @ql_dump_buffer(i32 noundef 134348800, ptr noundef %3, i32 noundef 12338, ptr noundef nonnull %lcmd_pkt, i32 noundef 64) #13
  call void @mmiocpy(ptr noundef %48, ptr noundef nonnull %lcmd_pkt, i32 noundef 64) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !279
  call void @arm_heavy_mb() #13
  %ring_index83 = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 5
  %147 = ptrtoint ptr %ring_index83 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %ring_index83, align 4
  %inc = add i16 %148, 1
  store i16 %inc, ptr %ring_index83, align 4
  %length86 = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 9
  %149 = ptrtoint ptr %length86 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %length86, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %150)
  %cmp88 = icmp eq i16 %inc, %150
  br i1 %cmp88, label %if.then90, label %if.else93

if.then90:                                        ; preds = %qlafx00_build_scsi_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %151 = ptrtoint ptr %ring_index83 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %ring_index83, align 4
  %ring = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 1
  %152 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ring, align 4
  br label %if.end95

if.else93:                                        ; preds = %qlafx00_build_scsi_iocbs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %154 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ring_ptr, align 4
  %incdec.ptr = getelementptr %struct.cmd_a64_entry_t, ptr %155, i32 1
  br label %if.end95

if.end95:                                         ; preds = %if.else93, %if.then90
  %storemerge = phi ptr [ %incdec.ptr, %if.else93 ], [ %153, %if.then90 ]
  %156 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %storemerge, ptr %ring_ptr, align 4
  %flags96 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 10
  %157 = ptrtoint ptr %flags96 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %flags96, align 4
  %159 = or i16 %158, 1
  store i16 %159, ptr %flags96, align 4
  %req_q_in = getelementptr inbounds %struct.req_que, ptr %14, i32 0, i32 3
  %160 = ptrtoint ptr %req_q_in to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %req_q_in, align 4
  %162 = ptrtoint ptr %ring_index83 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %ring_index83, align 4
  %conv100 = zext i16 %163 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  call void @arm_heavy_mb() #13
  %164 = call i32 @llvm.bswap.i32(i32 %conv100) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %164) #13, !srcloc !266
  %cregbase = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 12
  %165 = ptrtoint ptr %cregbase to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cregbase, align 64
  %add.ptr = getelementptr i8, ptr %166, i32 133636
  %rqstq_intr_code = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 14
  %167 = ptrtoint ptr %rqstq_intr_code to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %rqstq_intr_code, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  call void @arm_heavy_mb() #13
  %169 = call i32 @llvm.bswap.i32(i32 %168) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %169) #13, !srcloc !266
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call5) #13
  br label %cleanup

queuing_error:                                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv23203)
  %tobool102.not = icmp eq i16 %conv23203, 0
  br i1 %tobool102.not, label %queuing_error.if.end104_crit_edge, label %if.then103

queuing_error.if.end104_crit_edge:                ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then103:                                       ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_dma_unmap(ptr noundef %1) #13
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %queuing_error.if.end104_crit_edge, %if.then12.if.end104_crit_edge, %entry.if.end104_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.end95
  %retval.0 = phi i32 [ 258, %if.end104 ], [ 0, %if.end95 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %llun) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lcmd_pkt) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_get_next_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlafx00_tm_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef writeonly %ptm_iocb) local_unnamed_addr #0 align 64 {
entry:
  %tm_iocb.sroa.7 = alloca { i8, i8 }, align 2
  %llun = alloca %struct.scsi_lun, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %req2 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req2, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tm_iocb.sroa.7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %llun) #13
  %4 = ptrtoint ptr %llun to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %llun, align 8
  %5 = ptrtoint ptr %tm_iocb.sroa.7 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %tm_iocb.sroa.7, align 2
  %id = getelementptr inbounds %struct.req_que, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id, align 4
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle, align 8
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %10 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fcport, align 4
  %tgt_id = getelementptr inbounds %struct.fc_port, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %tgt_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tgt_id, align 4
  %flags = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp = icmp eq i32 %15, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %16 = getelementptr inbounds [8 x i8], ptr %llun, i32 0, i32 4
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %17 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %u, align 8
  call void @int_to_scsilun(i64 noundef %18, ptr noundef nonnull %llun) #13
  %19 = ptrtoint ptr %llun to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %llun, align 8
  %21 = call i32 @llvm.bswap.i32(i32 %20) #13
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %16, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tm_iocb.sroa.1015.0 = phi i32 [ %21, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %tm_iocb.sroa.11.0 = phi i32 [ %24, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %25 = tail call i32 @llvm.bswap.i32(i32 %15)
  %26 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv.i = zext i16 %7 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = and i32 %9, 65535
  %or.i = or i32 %shl.i, %conv1.i
  %27 = ptrtoint ptr %ptm_iocb to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 5, ptr %ptm_iocb, align 4
  %tm_iocb.sroa.6.0.ptm_iocb.sroa_idx = getelementptr inbounds i8, ptr %ptm_iocb, i32 1
  %28 = ptrtoint ptr %tm_iocb.sroa.6.0.ptm_iocb.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %tm_iocb.sroa.6.0.ptm_iocb.sroa_idx, align 1
  %tm_iocb.sroa.7.0.ptm_iocb.sroa_idx = getelementptr inbounds i8, ptr %ptm_iocb, i32 2
  %29 = ptrtoint ptr %tm_iocb.sroa.7 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tm_iocb.sroa.7, align 2
  %31 = ptrtoint ptr %tm_iocb.sroa.7.0.ptm_iocb.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %tm_iocb.sroa.7.0.ptm_iocb.sroa_idx, align 2
  %tm_iocb.sroa.714.0.ptm_iocb.sroa_idx = getelementptr inbounds i8, ptr %ptm_iocb, i32 4
  %32 = ptrtoint ptr %tm_iocb.sroa.714.0.ptm_iocb.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i, ptr %tm_iocb.sroa.714.0.ptm_iocb.sroa_idx, align 4
  %tm_iocb.sroa.8.0.ptm_iocb.sroa_idx = getelementptr inbounds i8, ptr %ptm_iocb, i32 8
  %33 = ptrtoint ptr %tm_iocb.sroa.8.0.ptm_iocb.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %tm_iocb.sroa.8.0.ptm_iocb.sroa_idx, align 4
  %tm_iocb.sroa.9.0.ptm_iocb.sroa_idx = getelementptr inbounds i8, ptr %ptm_iocb, i32 12
  %34 = ptrtoint ptr %tm_iocb.sroa.9.0.ptm_iocb.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %26, ptr %tm_iocb.sroa.9.0.ptm_iocb.sroa_idx, align 4
  %tm_iocb.sroa.10.0.ptm_iocb.sroa_idx = getelementptr inbounds i8, ptr %ptm_iocb, i32 14
  %35 = call ptr @memset(ptr %tm_iocb.sroa.10.0.ptm_iocb.sroa_idx, i32 0, i32 6)
  %tm_iocb.sroa.1015.0.ptm_iocb.sroa_idx = getelementptr inbounds i8, ptr %ptm_iocb, i32 20
  %36 = ptrtoint ptr %tm_iocb.sroa.1015.0.ptm_iocb.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %tm_iocb.sroa.1015.0, ptr %tm_iocb.sroa.1015.0.ptm_iocb.sroa_idx, align 4
  %tm_iocb.sroa.11.0.ptm_iocb.sroa_idx = getelementptr inbounds i8, ptr %ptm_iocb, i32 24
  %37 = ptrtoint ptr %tm_iocb.sroa.11.0.ptm_iocb.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %tm_iocb.sroa.11.0, ptr %tm_iocb.sroa.11.0.ptm_iocb.sroa_idx, align 4
  %tm_iocb.sroa.12.0.ptm_iocb.sroa_idx = getelementptr inbounds i8, ptr %ptm_iocb, i32 28
  %38 = ptrtoint ptr %tm_iocb.sroa.12.0.ptm_iocb.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %25, ptr %tm_iocb.sroa.12.0.ptm_iocb.sroa_idx, align 4
  %tm_iocb.sroa.13.0.ptm_iocb.sroa_idx = getelementptr inbounds i8, ptr %ptm_iocb, i32 32
  %39 = call ptr @memset(ptr %tm_iocb.sroa.13.0.ptm_iocb.sroa_idx, i32 0, i32 32)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !280
  call void @arm_heavy_mb() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %llun) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tm_iocb.sroa.7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlafx00_abort_iocb(ptr nocapture noundef readonly %sp, ptr nocapture noundef writeonly %pabt_iocb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  %vha1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %vha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vha1, align 8
  %req2 = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req2, align 8
  %id = getelementptr inbounds %struct.req_que, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 4
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %conv.i = zext i16 %5 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = and i32 %7, 65535
  %or.i = or i32 %shl.i, %conv1.i
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %u, align 8
  %conv1.i29 = and i32 %9, 65535
  %or.i30 = or i32 %conv1.i29, %shl.i
  %fcport = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 6
  %10 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fcport, align 4
  %tgt_id = getelementptr inbounds %struct.fc_port, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %tgt_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tgt_id, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = tail call i16 @llvm.bswap.i16(i16 %5)
  %16 = ptrtoint ptr %pabt_iocb to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %pabt_iocb, align 4
  %abt_iocb.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %pabt_iocb, i32 1
  %17 = ptrtoint ptr %abt_iocb.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %abt_iocb.sroa.6.0..sroa_idx, align 1
  %abt_iocb.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %pabt_iocb, i32 2
  %18 = ptrtoint ptr %abt_iocb.sroa.7.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %abt_iocb.sroa.7.0..sroa_idx, align 2
  %abt_iocb.sroa.79.0..sroa_idx = getelementptr inbounds i8, ptr %pabt_iocb, i32 4
  %19 = ptrtoint ptr %abt_iocb.sroa.79.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %abt_iocb.sroa.79.0..sroa_idx, align 4
  %abt_iocb.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %pabt_iocb, i32 8
  %20 = ptrtoint ptr %abt_iocb.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %abt_iocb.sroa.8.0..sroa_idx, align 4
  %abt_iocb.sroa.810.0..sroa_idx = getelementptr inbounds i8, ptr %pabt_iocb, i32 12
  %21 = ptrtoint ptr %abt_iocb.sroa.810.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %14, ptr %abt_iocb.sroa.810.0..sroa_idx, align 4
  %abt_iocb.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %pabt_iocb, i32 14
  %22 = ptrtoint ptr %abt_iocb.sroa.9.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %abt_iocb.sroa.9.0..sroa_idx, align 2
  %abt_iocb.sroa.911.0..sroa_idx = getelementptr inbounds i8, ptr %pabt_iocb, i32 16
  %23 = ptrtoint ptr %abt_iocb.sroa.911.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i30, ptr %abt_iocb.sroa.911.0..sroa_idx, align 4
  %abt_iocb.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %pabt_iocb, i32 20
  %24 = ptrtoint ptr %abt_iocb.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %abt_iocb.sroa.10.0..sroa_idx, align 4
  %abt_iocb.sroa.1012.0..sroa_idx = getelementptr inbounds i8, ptr %pabt_iocb, i32 24
  %25 = ptrtoint ptr %abt_iocb.sroa.1012.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %15, ptr %abt_iocb.sroa.1012.0..sroa_idx, align 4
  %abt_iocb.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %pabt_iocb, i32 26
  %26 = call ptr @memset(ptr %abt_iocb.sroa.11.0..sroa_idx, i32 0, i32 38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  tail call void @arm_heavy_mb() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlafx00_fxdisc_iocb(ptr nocapture noundef readonly %sp, ptr noundef %pfxiocb) local_unnamed_addr #0 align 64 {
entry:
  %fx_iocb = alloca %struct.fxdisc_entry_fx00, align 4
  %lcont_pkt = alloca %struct.cont_a64_entry_t, align 1
  %lcont_pkt114 = alloca %struct.cont_a64_entry_t, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fx_iocb) #13
  %0 = call ptr @memset(ptr %fx_iocb, i32 0, i32 64)
  %1 = ptrtoint ptr %fx_iocb to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 11, ptr %fx_iocb, align 4
  %handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 9
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 8
  %handle1 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 4
  %4 = ptrtoint ptr %handle1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %handle1, align 4
  %entry_count = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 1
  %5 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %entry_count, align 1
  %type = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 11
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp = icmp eq i16 %7, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %req_func_type = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %req_func_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %req_func_type, align 4
  %func_num = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 6
  %10 = ptrtoint ptr %func_num to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %func_num, align 4
  %adapter_id = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %adapter_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %adapter_id, align 4
  %adapid = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 16
  %13 = ptrtoint ptr %adapid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %adapid, align 4
  %adapter_id_hi = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %adapter_id_hi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %adapter_id_hi, align 8
  %adapid_hi = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 17
  %16 = ptrtoint ptr %adapid_hi to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %adapid_hi, align 4
  %reserved_0 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 36
  %17 = ptrtoint ptr %reserved_0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reserved_0, align 4
  %reserved_08 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 5
  %19 = ptrtoint ptr %reserved_08 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reserved_08, align 4
  %reserved_1 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 1, i32 40
  %20 = ptrtoint ptr %reserved_1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reserved_1, align 8
  %reserved_110 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 12
  %22 = ptrtoint ptr %reserved_110 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %reserved_110, align 1
  %req_data_extra = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1, i32 1
  %23 = ptrtoint ptr %req_data_extra to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %req_data_extra, align 4
  %dataword_extra = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 18
  %25 = ptrtoint ptr %dataword_extra to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dataword_extra, align 4
  %26 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %u, align 8
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then14

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %req_dsdcnt = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 8
  %29 = ptrtoint ptr %req_dsdcnt to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 256, ptr %req_dsdcnt, align 4
  %req_len = getelementptr inbounds %struct.anon.88, ptr %u, i32 0, i32 1
  %30 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %req_len, align 4
  %conv16 = trunc i32 %31 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %req_xfrcnt = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 7
  %33 = ptrtoint ptr %req_xfrcnt to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %req_xfrcnt, align 2
  %req_dma_handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %req_dma_handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %req_dma_handle, align 4
  %conv18 = zext i32 %35 to i64
  %dseg_rq = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 13
  %36 = tail call i64 @llvm.bswap.i64(i64 %conv18) #13
  %37 = ptrtoint ptr %dseg_rq to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %dseg_rq, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %31)
  %length = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 13, i32 0, i32 1
  %39 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then.if.end_crit_edge
  %40 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool27.not = icmp eq i8 %40, 0
  br i1 %tobool27.not, label %if.end.if.end40_crit_edge, label %if.then28

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %rsp_dsdcnt = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 10
  %41 = ptrtoint ptr %rsp_dsdcnt to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 256, ptr %rsp_dsdcnt, align 4
  %rsp_len = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %rsp_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rsp_len, align 8
  %conv30 = trunc i32 %43 to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv30)
  %rsp_xfrcnt = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 9
  %45 = ptrtoint ptr %rsp_xfrcnt to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %rsp_xfrcnt, align 2
  %rsp_dma_handle = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %rsp_dma_handle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rsp_dma_handle, align 8
  %conv32 = zext i32 %47 to i64
  %dseg_rsp = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 14
  %48 = tail call i64 @llvm.bswap.i64(i64 %conv32) #13
  %49 = ptrtoint ptr %dseg_rsp to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %dseg_rsp, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %43)
  %length39 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 14, i32 0, i32 1
  %51 = ptrtoint ptr %length39 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %length39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then28, %if.end.if.end40_crit_edge
  %52 = and i8 %27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool45.not = icmp eq i8 %52, 0
  br i1 %tobool45.not, label %if.end40.if.end48_crit_edge, label %if.then46

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %req_data = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %req_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %req_data, align 8
  %dataword = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 15
  %55 = ptrtoint ptr %dataword to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %dataword, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end40.if.end48_crit_edge
  %flags51 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 11
  %56 = ptrtoint ptr %flags51 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %27, ptr %flags51, align 2
  br label %if.end175

if.else:                                          ; preds = %entry
  %57 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %u, align 8
  %request = getelementptr inbounds %struct.bsg_job, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %request, align 4
  %arrayidx53 = getelementptr %struct.fc_bsg_request, ptr %60, i32 0, i32 1, i32 1, i32 4
  %func_type = getelementptr %struct.fc_bsg_request, ptr %60, i32 1
  %61 = ptrtoint ptr %func_type to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %func_type, align 4
  %func_num54 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 6
  %63 = ptrtoint ptr %func_num54 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %func_num54, align 4
  %adapid55 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, ptr %arrayidx53, i32 0, i32 5
  %64 = ptrtoint ptr %adapid55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %adapid55, align 4
  %adapid56 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 16
  %66 = ptrtoint ptr %adapid56 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %adapid56, align 4
  %adapid_hi57 = getelementptr %struct.fc_bsg_request, ptr %60, i32 1, i32 1, i32 1
  %67 = ptrtoint ptr %adapid_hi57 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %adapid_hi57, align 4
  %adapid_hi58 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 17
  %69 = ptrtoint ptr %adapid_hi58 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %adapid_hi58, align 4
  %70 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx53, align 4
  %reserved_060 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 5
  %72 = ptrtoint ptr %reserved_060 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %reserved_060, align 4
  %reserved_161 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, ptr %arrayidx53, i32 0, i32 3
  %73 = ptrtoint ptr %reserved_161 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %reserved_161, align 1
  %reserved_162 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 12
  %75 = ptrtoint ptr %reserved_162 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %reserved_162, align 1
  %dataword_extra63 = getelementptr %struct.fc_bsg_request, ptr %60, i32 1, i32 1, i32 1, i32 4
  %76 = ptrtoint ptr %dataword_extra63 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dataword_extra63, align 4
  %dataword_extra64 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 18
  %78 = ptrtoint ptr %dataword_extra64 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %dataword_extra64, align 4
  %dataword65 = getelementptr %struct.fc_bsg_request, ptr %60, i32 1, i32 1
  %79 = ptrtoint ptr %dataword65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dataword65, align 4
  %dataword66 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 15
  %81 = ptrtoint ptr %dataword66 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %dataword66, align 4
  %req_len67 = getelementptr %struct.fc_bsg_request, ptr %60, i32 2
  %82 = ptrtoint ptr %req_len67 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %req_len67, align 4
  %req_xfrcnt68 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 7
  %84 = ptrtoint ptr %req_xfrcnt68 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %req_xfrcnt68, align 2
  %rsp_len69 = getelementptr %struct.fc_bsg_request, ptr %60, i32 2, i32 1
  %85 = ptrtoint ptr %rsp_len69 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %rsp_len69, align 4
  %rsp_xfrcnt70 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 9
  %87 = ptrtoint ptr %rsp_xfrcnt70 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %rsp_xfrcnt70, align 2
  %flags71 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, ptr %arrayidx53, i32 0, i32 2
  %88 = ptrtoint ptr %flags71 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %flags71, align 2
  %90 = and i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool74.not = icmp eq i8 %90, 0
  br i1 %tobool74.not, label %if.else.if.end106_crit_edge, label %if.then75

if.else.if.end106_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.then75:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lcont_pkt) #13
  %91 = call ptr @memset(ptr %lcont_pkt, i32 255, i32 64)
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %58, i32 0, i32 7, i32 1
  %92 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sg_cnt, align 4
  %conv76 = trunc i32 %93 to i16
  %94 = tail call i16 @llvm.bswap.i16(i16 %conv76)
  %req_dsdcnt77 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 8
  %95 = ptrtoint ptr %req_dsdcnt77 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %req_dsdcnt77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp83264 = icmp sgt i32 %93, 0
  br i1 %cmp83264, label %for.body.lr.ph, label %if.then75.if.end105_crit_edge

if.then75.if.end105_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

for.body.lr.ph:                                   ; preds = %if.then75
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %58, i32 0, i32 7, i32 2
  %96 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sg_list, align 4
  %dseg_rq80 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 13
  %vha = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %dsd = getelementptr inbounds %struct.cont_a64_entry_t, ptr %lcont_pkt, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cont.0271 = phi i32 [ 0, %for.body.lr.ph ], [ %cont.2, %for.inc.for.body_crit_edge ]
  %index.0270 = phi i32 [ 0, %for.body.lr.ph ], [ %inc96, %for.inc.for.body_crit_edge ]
  %cont_pkt.0269 = phi ptr [ null, %for.body.lr.ph ], [ %cont_pkt.1, %for.inc.for.body_crit_edge ]
  %avail_dsds.0268 = phi i32 [ 1, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %sg.0267 = phi ptr [ %97, %for.body.lr.ph ], [ %call97, %for.inc.for.body_crit_edge ]
  %entry_cnt.0266 = phi i8 [ 1, %for.body.lr.ph ], [ %entry_cnt.1, %for.inc.for.body_crit_edge ]
  %cur_dsd.0265 = phi ptr [ %dseg_rq80, %for.body.lr.ph ], [ %incdec.ptr.i242, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail_dsds.0268)
  %cmp85 = icmp eq i32 %avail_dsds.0268, 0
  br i1 %cmp85, label %if.then87, label %for.body.if.end88_crit_edge

for.body.if.end88_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then87:                                        ; preds = %for.body
  %98 = call ptr @memset(ptr %lcont_pkt, i32 0, i32 64)
  %99 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vha, align 8
  %req = getelementptr inbounds %struct.scsi_qla_host, ptr %100, i32 0, i32 54
  %101 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %req, align 8
  %ring_index.i = getelementptr inbounds %struct.req_que, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %ring_index.i, align 4
  %inc.i = add i16 %104, 1
  store i16 %inc.i, ptr %ring_index.i, align 4
  %length.i = getelementptr inbounds %struct.req_que, ptr %102, i32 0, i32 9
  %105 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %106)
  %cmp.i = icmp eq i16 %inc.i, %106
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %ring_index.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %ring_index.i, align 4
  %ring.i = getelementptr inbounds %struct.req_que, ptr %102, i32 0, i32 1
  %108 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ring.i, align 4
  %ring_ptr.i = getelementptr inbounds %struct.req_que, ptr %102, i32 0, i32 2
  %110 = ptrtoint ptr %ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %ring_ptr.i, align 4
  br label %qlafx00_prep_cont_type1_iocb.exit

if.else.i:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #15
  %ring_ptr5.i = getelementptr inbounds %struct.req_que, ptr %102, i32 0, i32 2
  %111 = ptrtoint ptr %ring_ptr5.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ring_ptr5.i, align 4
  %incdec.ptr.i = getelementptr %struct.cmd_a64_entry_t, ptr %112, i32 1
  store ptr %incdec.ptr.i, ptr %ring_ptr5.i, align 4
  br label %qlafx00_prep_cont_type1_iocb.exit

qlafx00_prep_cont_type1_iocb.exit:                ; preds = %if.else.i, %if.then.i
  %ring_ptr6.i = getelementptr inbounds %struct.req_que, ptr %102, i32 0, i32 2
  %113 = ptrtoint ptr %ring_ptr6.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ring_ptr6.i, align 4
  %115 = ptrtoint ptr %lcont_pkt to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 3, ptr %lcont_pkt, align 1
  %inc = add i8 %entry_cnt.0266, 1
  br label %if.end88

if.end88:                                         ; preds = %qlafx00_prep_cont_type1_iocb.exit, %for.body.if.end88_crit_edge
  %cur_dsd.1 = phi ptr [ %dsd, %qlafx00_prep_cont_type1_iocb.exit ], [ %cur_dsd.0265, %for.body.if.end88_crit_edge ]
  %entry_cnt.1 = phi i8 [ %inc, %qlafx00_prep_cont_type1_iocb.exit ], [ %entry_cnt.0266, %for.body.if.end88_crit_edge ]
  %avail_dsds.1 = phi i32 [ 5, %qlafx00_prep_cont_type1_iocb.exit ], [ %avail_dsds.0268, %for.body.if.end88_crit_edge ]
  %cont_pkt.1 = phi ptr [ %114, %qlafx00_prep_cont_type1_iocb.exit ], [ %cont_pkt.0269, %for.body.if.end88_crit_edge ]
  %cont.1 = phi i32 [ 1, %qlafx00_prep_cont_type1_iocb.exit ], [ %cont.0271, %for.body.if.end88_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0267, i32 0, i32 3
  %116 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %117 to i64
  %118 = call i64 @llvm.bswap.i64(i64 %conv.i) #13
  %119 = ptrtoint ptr %cur_dsd.1 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 8)
  store i64 %118, ptr %cur_dsd.1, align 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0267, i32 0, i32 4
  %120 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dma_length.i, align 4
  %length.i241 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd.1, i32 0, i32 1
  %122 = call i32 @llvm.bswap.i32(i32 %121) #13
  %123 = ptrtoint ptr %length.i241 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 %122, ptr %length.i241, align 1
  %incdec.ptr.i242 = getelementptr %struct.dsd64, ptr %cur_dsd.1, i32 1
  %dec = add i32 %avail_dsds.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp89 = icmp eq i32 %dec, 0
  br i1 %cmp89, label %land.lhs.true, label %if.end88.for.inc_crit_edge

if.end88.for.inc_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cont.1)
  %cmp91 = icmp eq i32 %cont.1, 1
  br i1 %cmp91, label %if.then93, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then93:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmiocpy(ptr noundef %cont_pkt.1, ptr noundef nonnull %lcont_pkt, i32 noundef 64) #13
  %124 = ptrtoint ptr %vha to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vha, align 8
  call void @ql_dump_buffer(i32 noundef 8421376, ptr noundef %125, i32 noundef 12354, ptr noundef nonnull %lcont_pkt, i32 noundef 64) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then93, %land.lhs.true.for.inc_crit_edge, %if.end88.for.inc_crit_edge
  %cont.2 = phi i32 [ 0, %if.then93 ], [ 0, %land.lhs.true.for.inc_crit_edge ], [ %cont.1, %if.end88.for.inc_crit_edge ]
  %inc96 = add nuw nsw i32 %index.0270, 1
  %call97 = call ptr @sg_next(ptr noundef %sg.0267) #13
  %exitcond.not = icmp eq i32 %inc96, %93
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %phi.cmp = icmp ne i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cont.2)
  %cmp101 = icmp eq i32 %cont.2, 1
  %or.cond = select i1 %phi.cmp, i1 %cmp101, i1 false
  br i1 %or.cond, label %if.then103, label %for.end.if.end105_crit_edge

for.end.if.end105_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then103:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmiocpy(ptr noundef %cont_pkt.1, ptr noundef nonnull %lcont_pkt, i32 noundef 64) #13
  %vha104 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %126 = ptrtoint ptr %vha104 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %vha104, align 8
  call void @ql_dump_buffer(i32 noundef 8421376, ptr noundef %127, i32 noundef 12355, ptr noundef nonnull %lcont_pkt, i32 noundef 64) #13
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %for.end.if.end105_crit_edge, %if.then75.if.end105_crit_edge
  %entry_cnt.0.lcssa295 = phi i8 [ %entry_cnt.1, %if.then103 ], [ %entry_cnt.1, %for.end.if.end105_crit_edge ], [ 1, %if.then75.if.end105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lcont_pkt) #13
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.else.if.end106_crit_edge
  %entry_cnt.2 = phi i8 [ %entry_cnt.0.lcssa295, %if.end105 ], [ 1, %if.else.if.end106_crit_edge ]
  %128 = ptrtoint ptr %flags71 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %flags71, align 2
  %130 = and i8 %129, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool110.not = icmp eq i8 %130, 0
  br i1 %tobool110.not, label %if.end106.if.end163_crit_edge, label %if.then111

if.end106.if.end163_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end163

if.then111:                                       ; preds = %if.end106
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lcont_pkt114) #13
  %131 = call ptr @memset(ptr %lcont_pkt114, i32 255, i32 64)
  %sg_cnt119 = getelementptr inbounds %struct.bsg_job, ptr %58, i32 0, i32 8, i32 1
  %132 = ptrtoint ptr %sg_cnt119 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sg_cnt119, align 4
  %conv120 = trunc i32 %133 to i16
  %134 = call i16 @llvm.bswap.i16(i16 %conv120)
  %rsp_dsdcnt121 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 10
  %135 = ptrtoint ptr %rsp_dsdcnt121 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %rsp_dsdcnt121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp129275 = icmp sgt i32 %133, 0
  br i1 %cmp129275, label %for.body131.lr.ph, label %if.then111.if.end162_crit_edge

if.then111.if.end162_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end162

for.body131.lr.ph:                                ; preds = %if.then111
  %sg_list127 = getelementptr inbounds %struct.bsg_job, ptr %58, i32 0, i32 8, i32 2
  %136 = ptrtoint ptr %sg_list127 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sg_list127, align 4
  %dseg_rsp124 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 14
  %vha135 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %dsd138 = getelementptr inbounds %struct.cont_a64_entry_t, ptr %lcont_pkt114, i32 0, i32 4
  br label %for.body131

for.body131:                                      ; preds = %for.inc151.for.body131_crit_edge, %for.body131.lr.ph
  %cont118.0282 = phi i32 [ 0, %for.body131.lr.ph ], [ %cont118.2, %for.inc151.for.body131_crit_edge ]
  %index117.0281 = phi i32 [ 0, %for.body131.lr.ph ], [ %inc152, %for.inc151.for.body131_crit_edge ]
  %cont_pkt115.0280 = phi ptr [ null, %for.body131.lr.ph ], [ %cont_pkt115.1, %for.inc151.for.body131_crit_edge ]
  %avail_dsds112.0279 = phi i32 [ 1, %for.body131.lr.ph ], [ %dec142, %for.inc151.for.body131_crit_edge ]
  %sg.1278 = phi ptr [ %137, %for.body131.lr.ph ], [ %call153, %for.inc151.for.body131_crit_edge ]
  %entry_cnt.3277 = phi i8 [ %entry_cnt.2, %for.body131.lr.ph ], [ %entry_cnt.4, %for.inc151.for.body131_crit_edge ]
  %cur_dsd116.0276 = phi ptr [ %dseg_rsp124, %for.body131.lr.ph ], [ %incdec.ptr.i259, %for.inc151.for.body131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail_dsds112.0279)
  %cmp132 = icmp eq i32 %avail_dsds112.0279, 0
  br i1 %cmp132, label %if.then134, label %for.body131.if.end141_crit_edge

for.body131.if.end141_crit_edge:                  ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then134:                                       ; preds = %for.body131
  %138 = call ptr @memset(ptr %lcont_pkt114, i32 0, i32 64)
  %139 = ptrtoint ptr %vha135 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %vha135, align 8
  %req136 = getelementptr inbounds %struct.scsi_qla_host, ptr %140, i32 0, i32 54
  %141 = ptrtoint ptr %req136 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %req136, align 8
  %ring_index.i243 = getelementptr inbounds %struct.req_que, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %ring_index.i243 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %ring_index.i243, align 4
  %inc.i244 = add i16 %144, 1
  store i16 %inc.i244, ptr %ring_index.i243, align 4
  %length.i245 = getelementptr inbounds %struct.req_que, ptr %142, i32 0, i32 9
  %145 = ptrtoint ptr %length.i245 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %length.i245, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i244, i16 %146)
  %cmp.i246 = icmp eq i16 %inc.i244, %146
  br i1 %cmp.i246, label %if.then.i249, label %if.else.i252

if.then.i249:                                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #15
  %147 = ptrtoint ptr %ring_index.i243 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %ring_index.i243, align 4
  %ring.i247 = getelementptr inbounds %struct.req_que, ptr %142, i32 0, i32 1
  %148 = ptrtoint ptr %ring.i247 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ring.i247, align 4
  %ring_ptr.i248 = getelementptr inbounds %struct.req_que, ptr %142, i32 0, i32 2
  %150 = ptrtoint ptr %ring_ptr.i248 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %149, ptr %ring_ptr.i248, align 4
  br label %qlafx00_prep_cont_type1_iocb.exit254

if.else.i252:                                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #15
  %ring_ptr5.i250 = getelementptr inbounds %struct.req_que, ptr %142, i32 0, i32 2
  %151 = ptrtoint ptr %ring_ptr5.i250 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ring_ptr5.i250, align 4
  %incdec.ptr.i251 = getelementptr %struct.cmd_a64_entry_t, ptr %152, i32 1
  store ptr %incdec.ptr.i251, ptr %ring_ptr5.i250, align 4
  br label %qlafx00_prep_cont_type1_iocb.exit254

qlafx00_prep_cont_type1_iocb.exit254:             ; preds = %if.else.i252, %if.then.i249
  %ring_ptr6.i253 = getelementptr inbounds %struct.req_que, ptr %142, i32 0, i32 2
  %153 = ptrtoint ptr %ring_ptr6.i253 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ring_ptr6.i253, align 4
  %155 = ptrtoint ptr %lcont_pkt114 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 3, ptr %lcont_pkt114, align 1
  %inc140 = add i8 %entry_cnt.3277, 1
  br label %if.end141

if.end141:                                        ; preds = %qlafx00_prep_cont_type1_iocb.exit254, %for.body131.if.end141_crit_edge
  %cur_dsd116.1 = phi ptr [ %dsd138, %qlafx00_prep_cont_type1_iocb.exit254 ], [ %cur_dsd116.0276, %for.body131.if.end141_crit_edge ]
  %entry_cnt.4 = phi i8 [ %inc140, %qlafx00_prep_cont_type1_iocb.exit254 ], [ %entry_cnt.3277, %for.body131.if.end141_crit_edge ]
  %avail_dsds112.1 = phi i32 [ 5, %qlafx00_prep_cont_type1_iocb.exit254 ], [ %avail_dsds112.0279, %for.body131.if.end141_crit_edge ]
  %cont_pkt115.1 = phi ptr [ %154, %qlafx00_prep_cont_type1_iocb.exit254 ], [ %cont_pkt115.0280, %for.body131.if.end141_crit_edge ]
  %cont118.1 = phi i32 [ 1, %qlafx00_prep_cont_type1_iocb.exit254 ], [ %cont118.0282, %for.body131.if.end141_crit_edge ]
  %dma_address.i255 = getelementptr inbounds %struct.scatterlist, ptr %sg.1278, i32 0, i32 3
  %156 = ptrtoint ptr %dma_address.i255 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %dma_address.i255, align 4
  %conv.i256 = zext i32 %157 to i64
  %158 = call i64 @llvm.bswap.i64(i64 %conv.i256) #13
  %159 = ptrtoint ptr %cur_dsd116.1 to i32
  call void @__asan_storeN_noabort(i32 %159, i32 8)
  store i64 %158, ptr %cur_dsd116.1, align 1
  %dma_length.i257 = getelementptr inbounds %struct.scatterlist, ptr %sg.1278, i32 0, i32 4
  %160 = ptrtoint ptr %dma_length.i257 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dma_length.i257, align 4
  %length.i258 = getelementptr inbounds %struct.dsd64, ptr %cur_dsd116.1, i32 0, i32 1
  %162 = call i32 @llvm.bswap.i32(i32 %161) #13
  %163 = ptrtoint ptr %length.i258 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 4)
  store i32 %162, ptr %length.i258, align 1
  %incdec.ptr.i259 = getelementptr %struct.dsd64, ptr %cur_dsd116.1, i32 1
  %dec142 = add i32 %avail_dsds112.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec142)
  %cmp143 = icmp eq i32 %dec142, 0
  br i1 %cmp143, label %land.lhs.true145, label %if.end141.for.inc151_crit_edge

if.end141.for.inc151_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc151

land.lhs.true145:                                 ; preds = %if.end141
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cont118.1)
  %cmp146 = icmp eq i32 %cont118.1, 1
  br i1 %cmp146, label %if.then148, label %land.lhs.true145.for.inc151_crit_edge

land.lhs.true145.for.inc151_crit_edge:            ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc151

if.then148:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmiocpy(ptr noundef %cont_pkt115.1, ptr noundef nonnull %lcont_pkt114, i32 noundef 64) #13
  %164 = ptrtoint ptr %vha135 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %vha135, align 8
  call void @ql_dump_buffer(i32 noundef 8421376, ptr noundef %165, i32 noundef 12357, ptr noundef nonnull %lcont_pkt114, i32 noundef 64) #13
  br label %for.inc151

for.inc151:                                       ; preds = %if.then148, %land.lhs.true145.for.inc151_crit_edge, %if.end141.for.inc151_crit_edge
  %cont118.2 = phi i32 [ 0, %if.then148 ], [ 0, %land.lhs.true145.for.inc151_crit_edge ], [ %cont118.1, %if.end141.for.inc151_crit_edge ]
  %inc152 = add nuw nsw i32 %index117.0281, 1
  %call153 = call ptr @sg_next(ptr noundef %sg.1278) #13
  %exitcond287.not = icmp eq i32 %inc152, %133
  br i1 %exitcond287.not, label %for.end154, label %for.inc151.for.body131_crit_edge

for.inc151.for.body131_crit_edge:                 ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body131

for.end154:                                       ; preds = %for.inc151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec142)
  %phi.cmp288 = icmp ne i32 %dec142, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cont118.2)
  %cmp158 = icmp eq i32 %cont118.2, 1
  %or.cond240 = select i1 %phi.cmp288, i1 %cmp158, i1 false
  br i1 %or.cond240, label %if.then160, label %for.end154.if.end162_crit_edge

for.end154.if.end162_crit_edge:                   ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end162

if.then160:                                       ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmiocpy(ptr noundef %cont_pkt115.1, ptr noundef nonnull %lcont_pkt114, i32 noundef 64) #13
  %vha161 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %166 = ptrtoint ptr %vha161 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %vha161, align 8
  call void @ql_dump_buffer(i32 noundef 8421376, ptr noundef %167, i32 noundef 12358, ptr noundef nonnull %lcont_pkt114, i32 noundef 64) #13
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %for.end154.if.end162_crit_edge, %if.then111.if.end162_crit_edge
  %entry_cnt.3.lcssa302 = phi i8 [ %entry_cnt.4, %if.then160 ], [ %entry_cnt.4, %for.end154.if.end162_crit_edge ], [ %entry_cnt.2, %if.then111.if.end162_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lcont_pkt114) #13
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.end106.if.end163_crit_edge
  %entry_cnt.5 = phi i8 [ %entry_cnt.3.lcssa302, %if.end162 ], [ %entry_cnt.2, %if.end106.if.end163_crit_edge ]
  %168 = ptrtoint ptr %flags71 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %flags71, align 2
  %170 = and i8 %169, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool167.not = icmp eq i8 %170, 0
  br i1 %tobool167.not, label %if.end163.if.end171_crit_edge, label %if.then168

if.end163.if.end171_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.then168:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  %171 = ptrtoint ptr %dataword65 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %dataword65, align 4
  %173 = ptrtoint ptr %dataword66 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %dataword66, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.end163.if.end171_crit_edge
  %174 = ptrtoint ptr %flags71 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %flags71, align 2
  %flags173 = getelementptr inbounds %struct.fxdisc_entry_fx00, ptr %fx_iocb, i32 0, i32 11
  %176 = ptrtoint ptr %flags173 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %flags173, align 2
  %177 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %entry_cnt.5, ptr %entry_count, align 1
  br label %if.end175

if.end175:                                        ; preds = %if.end171, %if.end48
  %vha176 = getelementptr inbounds %struct.srb, ptr %sp, i32 0, i32 7
  %178 = ptrtoint ptr %vha176 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %vha176, align 8
  call void @ql_dump_buffer(i32 noundef 8421376, ptr noundef %179, i32 noundef 12359, ptr noundef nonnull %fx_iocb, i32 noundef 64) #13
  call void @mmiocpy(ptr noundef %pfxiocb, ptr noundef nonnull %fx_iocb, i32 noundef 64) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  call void @arm_heavy_mb() #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fx_iocb) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla2x00_poll(ptr noundef %rsp) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.rsp_que, ptr %rsp, i32 0, i32 13
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qla82xx_poll(i32 noundef 0, ptr noundef %rsp) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %6 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp_ops, align 4
  %intr_handler = getelementptr inbounds %struct.isp_operations, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %intr_handler to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intr_handler, align 4
  %call = tail call i32 %9(i32 noundef 0, ptr noundef %rsp) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla82xx_poll(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_mark_device_lost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_update_fcport(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_free_fcport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_alloc_fcport(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_set_fcport_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_abort_all_cmds(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_free_irqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlafx00_post_aenfx_work(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_get_sp_from_handle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_process_completed_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253}
!llvm.named.register.sp = !{!255}
!llvm.module.flags = !{!256, !257, !258, !259, !260, !261, !262, !263}
!llvm.ident = !{!264}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 305, i32 6}
!2 = !{ptr @__func__.qlafx00_driver_shutdown, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 305, i32 23}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 319, i32 7}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 322, i32 7}
!8 = !{ptr @__func__.qlafx00_init_firmware, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 399, i32 23}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 416, i32 7}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 664, i32 7}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 694, i32 16}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 703, i32 22}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 745, i32 6}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 747, i32 7}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 755, i32 7}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 761, i32 7}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 770, i32 7}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 776, i32 7}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 782, i32 7}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 799, i32 6}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1057, i32 7}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1065, i32 9}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1079, i32 7}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1085, i32 7}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1088, i32 7}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1305, i32 6}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1315, i32 8}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1321, i32 7}
!50 = !{ptr @__func__.qlafx00_configure_devices, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1321, i32 31}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1324, i32 7}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1432, i32 6}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1451, i32 8}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1547, i32 8}
!60 = !{ptr @__func__.qlafx00_timer_routine, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1549, i32 8}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1597, i32 7}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1609, i32 6}
!66 = !{ptr @__func__.qlafx00_reset_initialize, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1609, i32 28}
!68 = !{ptr @__func__.qlafx00_abort_isp, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1649, i32 28}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1731, i32 7}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1795, i32 13}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1830, i32 8}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1856, i32 38}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1866, i32 36}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1870, i32 8}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1873, i32 8}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1878, i32 8}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1882, i32 8}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2017, i32 6}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2022, i32 7}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2049, i32 6}
!94 = !{ptr @__func__.qlafx00_initialize_adapter, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2050, i32 6}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2065, i32 7}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2893, i32 7}
!100 = !{ptr @__func__.qlafx00_intr_handler, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2893, i32 45}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 57, i32 7}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 63, i32 7}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 75, i32 7}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 83, i32 7}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 96, i32 7}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 106, i32 6}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 139, i32 6}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 149, i32 3}
!118 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 153, i32 7}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 172, i32 7}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 181, i32 7}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 214, i32 7}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 226, i32 8}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 233, i32 9}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 243, i32 8}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 250, i32 9}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 263, i32 9}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 274, i32 10}
!139 = !{ptr @__func__.qlafx00_mailbox_command, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 278, i32 54}
!141 = !{ptr @__func__.qlafx00_mbx_reg_test, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 435, i32 23}
!143 = !{ptr @__func__.qlafx00_get_firmware_state, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 351, i32 23}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1266, i32 7}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1116, i32 6}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1134, i32 8}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1160, i32 8}
!153 = !{ptr @__func__.qlafx00_find_all_targets, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1163, i32 8}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1169, i32 8}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1181, i32 8}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1185, i32 9}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1343, i32 7}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1383, i32 6}
!165 = !{ptr @__func__.qlafx00_abort_isp_cleanup, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1383, i32 33}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1678, i32 6}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1663, i32 8}
!171 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 907, i32 7}
!173 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 933, i32 8}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 995, i32 8}
!177 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1012, i32 9}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1025, i32 7}
!181 = !{ptr @__func__.qlafx00_init_fw_ready, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1025, i32 33}
!183 = !{ptr @.str.77, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 1028, i32 7}
!185 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 824, i32 6}
!187 = !{ptr @.str.79, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 829, i32 6}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 847, i32 7}
!191 = !{ptr @.str.81, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 852, i32 6}
!193 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 862, i32 7}
!195 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 867, i32 6}
!197 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2853, i32 37}
!199 = !{ptr @.str.85, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2778, i32 7}
!201 = !{ptr @.str.86, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2784, i32 7}
!203 = !{ptr @.str.87, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2794, i32 7}
!205 = !{ptr @.str.88, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2802, i32 7}
!207 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2809, i32 7}
!209 = !{ptr @.str.90, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2816, i32 7}
!211 = !{ptr @.str.91, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2830, i32 7}
!213 = !{ptr @.str.92, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2719, i32 11}
!215 = !{ptr @.str.93, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2751, i32 8}
!217 = !{ptr @.str.94, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2287, i32 7}
!219 = !{ptr @.str.95, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2311, i32 7}
!221 = !{ptr @.str.96, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2357, i32 9}
!223 = !{ptr @.str.97, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2370, i32 8}
!225 = !{ptr @.str.98, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2396, i32 9}
!227 = !{ptr @.str.99, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2409, i32 9}
!229 = !{ptr @.str.100, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2434, i32 8}
!231 = !{ptr @.str.101, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2484, i32 7}
!233 = !{ptr @.str.102, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2502, i32 7}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2515, i32 3}
!237 = !{ptr @.str.103, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2130, i32 6}
!239 = !{ptr @.str.104, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2139, i32 7}
!241 = !{ptr @.str.105, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2538, i32 7}
!243 = !{ptr @.str.106, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2544, i32 7}
!245 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2550, i32 7}
!247 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2558, i32 7}
!249 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2563, i32 7}
!251 = distinct !{null, !252, !"__already_done", i1 false, i1 false}
!252 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2594, i32 3}
!253 = !{ptr @.str.110, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/qla2xxx/qla_mr.c", i32 2622, i32 7}
!255 = !{!"sp"}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 1, !"min_enum_size", i32 4}
!258 = !{i32 8, !"branch-target-enforcement", i32 0}
!259 = !{i32 8, !"sign-return-address", i32 0}
!260 = !{i32 8, !"sign-return-address-all", i32 0}
!261 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!262 = !{i32 7, !"uwtable", i32 1}
!263 = !{i32 7, !"frame-pointer", i32 2}
!264 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!265 = !{i64 2156271279}
!266 = !{i64 5212553}
!267 = !{!"branch_weights", i32 2000, i32 1}
!268 = !{!"auto-init"}
!269 = !{i64 5212971}
!270 = !{i64 2156268835}
!271 = !{i64 2156884521}
!272 = !{i64 2148442436, i64 2148442462, i64 2148442491, i64 2148442525, i64 2148442556, i64 2148442579}
!273 = !{i64 2156854742}
!274 = !{i64 2148444901, i64 2148444927, i64 2148444956, i64 2148444990, i64 2148445021, i64 2148445044}
!275 = !{i64 2156853845}
!276 = !{i8 0, i8 2}
!277 = !{i64 2156887180}
!278 = !{!"branch_weights", i32 1, i32 2000}
!279 = !{i64 2156937531}
!280 = !{i64 2156938222}
!281 = !{i64 2156938603}
!282 = !{i64 2156940841}
