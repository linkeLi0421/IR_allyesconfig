; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_nx.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_nx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qla82xx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.crb_128M_2M_sub_block_map = type { i32, i32, i32, i32 }
%struct.crb_128M_2M_block_map = type { [16 x %struct.crb_128M_2M_sub_block_map] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qla_hw_data = type { ptr, ptr, %struct.anon.79, i16, i16, [108 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i8, ptr, ptr, ptr, [8 x i32], [8 x i32], [8 x i32], i8, i8, i8, i8, ptr, ptr, i16, i16, i8, i8, i8, %struct.atomic_t, i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i16, i16, ptr, i16, i16, ptr, i16, i8, i8, i16, i32, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i64, i8, i8, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, %struct.fc_els_flogi, ptr, [32 x i16], [32 x i32], [8 x i32], ptr, ptr, i32, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, i32, %struct.mutex, i16, i16, i16, i16, i16, [2 x i16], i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, [16 x i16], [4 x i8], [4 x i16], [3 x i8], [3 x i8], i32, [3 x i8], [3 x i8], [2 x %struct.fwdt], ptr, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [8 x i16], i64, i64, %struct.mutex, i32, i16, [4 x i16], [17 x i8], [80 x i8], [17 x i8], ptr, i32, i32, i32, i32, %struct.mutex, [2 x i8], [2 x i8], [16 x i8], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.161, i8, i16, i8, i16, i16, ptr, %struct.list_head, [8 x i32], i16, i16, i16, i32, ptr, ptr, ptr, %struct.work_struct, %struct.qlfc_fw, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, ptr, %struct.qla82xx_legacy_intr_set, i16, i16, %struct.list_head, i8, i32, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mr_data_fx00, i32, [36 x i8], %struct.qlt_hw_data, i32, i32, i16, i16, ptr, %struct.anon.168, i64, i64, i64, i64, i64, %struct.atomic_t, i16, i8, %struct.atomic_t, i16, %struct.qla_hw_data_stat, i32, ptr, %struct.btree_head32, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.els_reject, i8 }
%struct.anon.79 = type { i56 }
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.157, i32 }
%union.anon.157 = type { %struct.anon.159 }
%struct.anon.159 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fwdt = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.161 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlfc_fw = type { ptr, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mr_data_fx00 = type { [64 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], %struct.fc_port, i8, i8, i8, i32, i16, i8, i16, i32, i32, i8, i8, i8 }
%struct.fc_port = type { %struct.list_head, ptr, [3 x i8], i8, [8 x i8], [8 x i8], %union.port_id_t, i16, i16, %struct.completion, i32, i32, ptr, i8, i32, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, i32, %struct.list_head, %struct.work_struct, %struct.work_struct, i64, i32, [2 x ptr], i16, i16, i16, i8, [8 x i8], i16, i32, %struct.atomic_t, i32, i32, ptr, ptr, i32, i8, i8, i8, i32, i32, i16, ptr, i32, ptr, %struct.ct_sns_desc, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, [64 x i8], i8, i8, i16, i16, ptr, i64, i64, i64, %struct.anon.133 }
%union.port_id_t = type { i24 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ct_sns_desc = type { ptr, i32 }
%struct.anon.133 = type { i16, i32, i32, i64, i64, i8, i8, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.qlt_hw_data = type { i8, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr, i32, i16, i32, i32, i32, [2 x i8], [2 x i8], [8 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, i32, %struct.spinlock, i32, %struct.spinlock, i32, [60 x i8], %struct.spinlock, [84 x i8] }
%struct.anon.168 = type { %struct.anon.169, %struct.anon.170 }
%struct.anon.169 = type { %struct.list_head, i32 }
%struct.anon.170 = type { %struct.list_head, i32 }
%struct.atomic_t = type { i32 }
%struct.qla_hw_data_stat = type { i32, i32 }
%struct.btree_head32 = type { %struct.btree_head }
%struct.btree_head = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.els_reject = type { ptr, i32, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.scsi_qla_host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, i32, [16 x i8], %struct.anon.134, %struct.atomic_t, i32, i32, i32, i32, i16, i16, %struct.fc_port, %union.port_id_t, i8, i16, i8, %struct.atomic_t, i8, i32, %struct.timer_list, [8 x i8], [8 x i8], [8 x i8], [8 x i8], ptr, %struct.completion, i16, i16, [6 x i8], %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i16, ptr, i32, %struct.atomic_t, i16, i16, ptr, %struct.scsi_qlt_host, ptr, i32, i32, %struct.fc_host_statistics, %struct.qla_statistics, %struct.bidi_statistics, %struct.atomic_t, %struct.qla8044_reset_template, i16, i16, i16, i16, i16, i16, ptr, %struct.purex_list, %struct.purex_item, %struct.name_list_extended, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, [8 x i8], [8 x i8], i16, [4 x i16], %struct.list_head, %struct.fab_scan, i8, i32, i64, i64, i64, i64, i64, i64, %struct.edif_dbell, %struct.pur_core }
%struct.anon.134 = type { i16, [2 x i8] }
%struct.scsi_qlt_host = type { ptr, %struct.mutex, %struct.mutex, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_statistics = type { i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.qla_dif_statistics }
%struct.qla_dif_statistics = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.bidi_statistics = type { i64, i64 }
%struct.qla8044_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.purex_list = type { %struct.list_head, %struct.spinlock }
%struct.purex_item = type { %struct.list_head, ptr, ptr, %struct.atomic_t, i16, %struct.anon.135 }
%struct.anon.135 = type { [64 x i8] }
%struct.name_list_extended = type { ptr, i32, %struct.list_head, i32, i8 }
%struct.fab_scan = type { ptr, i32, i16, i32, %struct.delayed_work }
%struct.edif_dbell = type { i32, %struct.spinlock, %struct.list_head, %struct.completion }
%struct.pur_core = type { i32, %struct.spinlock, %struct.list_head }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.init_cb_81xx = type <{ i16, i16, i16, i16, i16, i16, [8 x i8], [8 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i64, i64, i64, [8 x i8], i16, i16, i64, i16, i16, i32, i32, i32, [8 x i8], [6 x i8], [10 x i8] }>
%struct.req_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i16, i32, i32, ptr, i16, [64 x i8] }
%struct.rsp_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, [64 x i8] }
%struct.device_reg_82xx = type { [64 x i32], [64 x i32], [64 x i32], [32 x i16], [32 x i16], i32, [62 x i16], [32 x i16], [48 x i32], i32, i32 }
%struct.crb_addr_pair = type { i32, i32 }
%struct.fw_blob = type { ptr, [4 x i32], ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.qla82xx_uri_table_desc = type { i32, i32, i32, [5 x i32] }
%struct.qla82xx_uri_data_desc = type { i32, i32, [5 x i32] }
%struct.cmd_a64_entry_t = type { i8, i8, i8, i8, i32, %union.target_id_t, i16, i16, i16, i16, i16, [16 x i8], i32, [2 x %struct.dsd64] }
%union.target_id_t = type { i16 }
%struct.dsd64 = type <{ i64, i32 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.srb = type { i8, [3 x i8], %struct.iocb_resource, %struct.kref, ptr, %struct.wait_queue_head, ptr, ptr, i8, i32, i16, i16, ptr, i32, ptr, ptr, %struct.list_head, i32, i32, i32, i32, ptr, %union.anon.136, %struct.anon.152, ptr, ptr, ptr }
%struct.iocb_resource = type { i8, i8, i16 }
%union.anon.136 = type { %struct.srb_iocb }
%struct.srb_iocb = type { %union.anon.137, %struct.timer_list, ptr }
%union.anon.137 = type { %struct.anon.140, [112 x i8] }
%struct.anon.140 = type { i64, i32, i32, %struct.completion, i16 }
%struct.anon.152 = type { i8, %struct.anon.153, %struct.anon.154 }
%struct.anon.153 = type { i32, ptr, i32 }
%struct.anon.154 = type { i32, ptr, i32 }
%struct.qla82xx_md_template_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [16 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32 }
%struct.qla82xx_md_entry_hdr = type { i32, i32, i32, %struct.anon.171 }
%struct.anon.171 = type { i8, i8, i8, i8 }
%struct.qla82xx_md_entry_rdocm = type { %struct.qla82xx_md_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla82xx_md_entry_crb = type { %struct.qla82xx_md_entry_hdr, i32, %struct.anon.174, i32, i32, %struct.anon.175, i32, i32, i32 }
%struct.anon.174 = type { i8, i8, i16 }
%struct.anon.175 = type { i8, i8, i8, i8 }
%struct.qla82xx_md_entry_rdmem = type { %struct.qla82xx_md_entry_hdr, [6 x i32], i32, i32 }
%struct.qla82xx_md_entry_rdrom = type { %struct.qla82xx_md_entry_hdr, [6 x i32], i32, i32 }
%struct.qla82xx_md_entry_cache = type { %struct.qla82xx_md_entry_hdr, i32, %struct.anon.176, i32, i32, i32, %struct.anon.177, i32, %struct.anon.178 }
%struct.anon.176 = type { i16, i16 }
%struct.anon.177 = type { i16, i8, i8 }
%struct.anon.178 = type { i8, i8, i16 }
%struct.qla82xx_md_entry_mux = type { %struct.qla82xx_md_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla82xx_md_entry_queue = type { %struct.qla82xx_md_entry_hdr, i32, %struct.anon.179, i32, i32, i32, i32, i32, %struct.anon.180 }
%struct.anon.179 = type { i16, i16 }
%struct.anon.180 = type { i8, i8, i16 }

@MD_MIU_TEST_AGT_RDDATA = dso_local constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1090519208, i32 1090519212, i32 1090519224, i32 1090519228], [16 x i8] zeroinitializer }, align 32
@q_dev_state = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.25, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/qla2xxx/qla_nx.c\00", [34 x i8] zeroinitializer }, align 32
@qla82xx_idc_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.qla82xx_pci_mem_read_2M = private unnamed_addr constant [24 x i8] c"qla82xx_pci_mem_read_2M\00", align 1
@qla82xx_pci_mem_read_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.qla82xx_pci_mem_read_2M, ptr @.str, i32 1469, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read through agent.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qla82xx_pci_mem_read_2M._entry_ptr = internal global ptr @qla82xx_pci_mem_read_2M._entry, section ".printk_index", align 4
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla2xxx\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to reserver selected regions.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Region #0 not an MMIO resource, aborting.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot remap pcibase MMIO, aborting.\0A\00", [58 x i8] zeroinitializer }, align 32
@ql2xdbwr = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot remap MMIO, aborting.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"nx_pci_base=%p iobase=%p max_req_queues=%d msix_count=%d.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Chip revision:%d; pci_set_mwi() returned %d.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MBX pointer ERROR.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: NULL response queue pointer.\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qla82xx_intr_handler = private unnamed_addr constant [21 x i8] c"qla82xx_intr_handler\00", align 1
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unrecognized interrupt type (%d).\0A\00", [61 x i8] zeroinitializer }, align 32
@qla82xx_msix_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 2081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s(): NULL response queue pointer.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla82xx_msix_default\00", [43 x i8] zeroinitializer }, align 32
@qla82xx_msix_default._entry_ptr = internal global ptr @qla82xx_msix_default._entry, section ".printk_index", align 4
@qla82xx_msix_rsp_q._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str, i32 2144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla82xx_msix_rsp_q\00", [45 x i8] zeroinitializer }, align 32
@qla82xx_msix_rsp_q._entry_ptr = internal global ptr @qla82xx_msix_rsp_q._entry, section ".printk_index", align 4
@qla82xx_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.17, ptr @.str, i32 2177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qla82xx_poll\00", [19 x i8] zeroinitializer }, align 32
@qla82xx_poll._entry_ptr = internal global ptr @qla82xx_poll._entry, section ".printk_index", align 4
@qla82xx_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ha->hw_lock\00", [19 x i8] zeroinitializer }, align 32
@legacy_intr = internal constant { [8 x %struct.qla82xx_legacy_intr_set], [32 x i8] } { [8 x %struct.qla82xx_legacy_intr_set] [%struct.qla82xx_legacy_intr_set { i32 128, i32 101777688, i32 101777704, i32 101789696 }, %struct.qla82xx_legacy_intr_set { i32 256, i32 101777760, i32 101777776, i32 101789700 }, %struct.qla82xx_legacy_intr_set { i32 512, i32 101777764, i32 101777780, i32 101789704 }, %struct.qla82xx_legacy_intr_set { i32 1024, i32 101777768, i32 101777784, i32 101789708 }, %struct.qla82xx_legacy_intr_set { i32 2048, i32 101778272, i32 101778288, i32 101789712 }, %struct.qla82xx_legacy_intr_set { i32 4096, i32 101778276, i32 101778292, i32 101789716 }, %struct.qla82xx_legacy_intr_set { i32 8192, i32 101778280, i32 101778296, i32 101789720 }, %struct.qla82xx_legacy_intr_set { i32 16384, i32 101778284, i32 101778300, i32 101789724 }], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error trying to start fw.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error during card handshake.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disabling the board.\0A\00", [42 x i8] zeroinitializer }, align 32
@ql2xmdenable = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"Firmware version differs Previous version: %d:%d:%d - New version: %d:%d:%d, prev_minidump_failed: %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware dump available to retrieve\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Device state is 0x%x = %s.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device init failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@ql2xdontresethba = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Doing premature completion of mbx command.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Adapter reset needed.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Quiescent needed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adapter state is failed. Offlining.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"disabling pause transmit on port 0 & 1.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [186 x i8], [38 x i8] } { [186 x i8] c"dumping hw/fw registers:.\0A  PEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,.\0A  PEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,.\0A  PEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,.\0A  PEG_NET_4_PC: 0x%x.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Firmware aborted with error code 0x00006700. Device is being reset.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Detect abort  needed.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Firmware hung.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HW State: NEED RESET\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reset_owner is 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device in failed state, exiting.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ISP error recover failed - board disabled.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ISP abort - retry remaining %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ISP error recovery - retrying (%d) more times.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: status=%d.\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.qla2x00_wait_for_fcoe_ctx_reset = private unnamed_addr constant [32 x i8] c"qla2x00_wait_for_fcoe_ctx_reset\00", align 1
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Entered %s fw_hung=%d.\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.qla82xx_chip_reset_cleanup = private unnamed_addr constant [27 x i8] c"qla82xx_chip_reset_cleanup\00", align 1
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mbx abort failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mbx abort success.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Done wait for pending commands.\0A\00", [63 x i8] zeroinitializer }, align 32
@qla82xx_chip_reset_cleanup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Firmware has been previously dumped (%p) -- ignoring request.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Memory not allocated for minidump capture\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Forced reset from application, ignore minidump capture\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Template checksum validation error\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No of entry headers in Template: 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Capture Mask obtained: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Minimum required capture mask[0x%x] level not set\0A\00", [45 x i8] zeroinitializer }, align 32
@ql2xmdcapmask = external dso_local local_unnamed_addr global i32, align 4
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Total minidump data_size 0x%x to be captured\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Bad template header entry type: 0x%x obtained\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"More MiniDump data collected: [0x%x]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Skipping entry[%d]: ETYPE[0x%x]-ELEVEL[0x%x]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"[%s]: data ptr[%d]: %p, entry_hdr: %p\0Aentry_type: 0x%x, capture_mask: 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.qla82xx_md_collect = private unnamed_addr constant [19 x i8] c"qla82xx_md_collect\00", align 1
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Data collected: [0x%x], Dump size left:[0x%x]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s]: data ptr[%d]: %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"MiniDump data mismatch: Data collected: [0x%x],total_data_size:[0x%x]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Firmware dump saved to temp buffer (%ld/%p %ld/%p).\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Forcing driver capture mask to firmware default capture mask: 0x%x.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware dump previously allocated.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Unable to allocate memory for Minidump size (0x%x).\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Free MiniDump template: %p, size (%d KB)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Free MiniDump memory: %p, size (%d KB)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MiniDump Template size obtained (%d KB)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MiniDump Template obtained\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MiniDump memory allocated (%d KB)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Free MiniDump template: %p, size: (%d KB)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mbx set led config failed in %s\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qla82xx_beacon_on = private unnamed_addr constant [18 x i8] c"qla82xx_beacon_on\00", align 1
@__func__.qla82xx_beacon_off = private unnamed_addr constant [19 x i8] c"qla82xx_beacon_off\00", align 1
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Cold\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Initializing\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ready\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Need Reset\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Need Quiescent\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Quiescent\00", [22 x i8] zeroinitializer }, align 32
@crb_128M_2M_map = internal constant { <{ %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } }>, [4096 x i8] } { <{ %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } }> <{ %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 1048576, i32 1056768, i32 1179648 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1114112, i32 1179648, i32 1245184 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1179648, i32 1187840, i32 1196032 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1245184, i32 1253376, i32 1204224 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1310720, i32 1318912, i32 1212416 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1376256, i32 1384448, i32 1220608 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1441792, i32 1507328, i32 1114112 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1507328, i32 1515520, i32 1236992 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1966080, i32 1968128, i32 1187840 }, %struct.crb_128M_2M_sub_block_map zeroinitializer] }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 2097152, i32 2162688, i32 1572864 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 4194304, i32 4198400, i32 1478656 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 5242880, i32 5308416, i32 1310720 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 6291456, i32 6356992, i32 1835008 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 7340032, i32 7356416, i32 1802240 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 8388608, i32 8396800, i32 1507328 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 9371648, i32 9379840, i32 1515520 }] }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 9437184, i32 9445376, i32 1523712 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 10420224, i32 10428416, i32 1531904 }] }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 0, i32 10485760, i32 10493952, i32 1540096 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 11468800, i32 11476992, i32 1548288 }] }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 0, i32 11534336, i32 11542528, i32 1556480 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 12517376, i32 12525568, i32 1564672 }] }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 12582912, i32 12599296, i32 1916928 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 13631488, i32 13647872, i32 1720320 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 14680064, i32 14696448, i32 1703936 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 15728640, i32 15732736, i32 1458176 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 0, i32 16777216, i32 16793600, i32 1736704 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 17825792, i32 17829888, i32 1441792 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 18874368, i32 18878464, i32 1445888 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 19922944, i32 19927040, i32 1449984 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 20971520, i32 20975616, i32 1454080 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 22020096, i32 22024192, i32 1462272 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 23068672, i32 23072768, i32 1466368 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 30408704, i32 30474240, i32 1638400 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 31457280, i32 31461376, i32 1482752 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 32505856, i32 32571392, i32 1376256 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> } { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> <{ [8 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 34603008, i32 34611200, i32 1179648 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34668544, i32 34734080, i32 1245184 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34734080, i32 34742272, i32 1196032 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34799616, i32 34807808, i32 1204224 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34865152, i32 34873344, i32 1212416 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34930688, i32 34938880, i32 1220608 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34996224, i32 35061760, i32 1114112 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 35061760, i32 35069952, i32 1236992 }], [8 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 35651584, i32 35667968, i32 1769472 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 41943040, i32 41959424, i32 1720320 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 42991616, i32 42995712, i32 1486848 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 44040192, i32 44041216, i32 1754112 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 45088768, i32 45089792, i32 1755136 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 46137344, i32 46138368, i32 1756160 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 47185920, i32 47186944, i32 1757184 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 48234496, i32 48235520, i32 1758208 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 49283072, i32 49284096, i32 1759232 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 50331648, i32 50332672, i32 1760256 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 0, i32 51380224, i32 51396608, i32 1736704 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 52428800, i32 52445184, i32 1916928 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 53477376, i32 53493760, i32 1703936 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 55574528, i32 55575552, i32 1753088 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 56623104, i32 56624128, i32 1761280 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 57671680, i32 57672704, i32 1762304 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 58720256, i32 58736640, i32 1900544 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 59768832, i32 59785216, i32 1785856 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 60817408, i32 60833792, i32 1933312 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 63963136, i32 63979520, i32 1949696 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 65011712, i32 65015808, i32 1470464 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 66060288, i32 66064384, i32 1474560 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> } }>, [4096 x i8] zeroinitializer }, align 32
@qla82xx_crb_hub_agt = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 1907, i32 661, i32 677, i32 0, i32 208, i32 433, i32 230, i32 224, i32 225, i32 226, i32 227, i32 1056, i32 1047, i32 1057, i32 843, i32 1029, i32 832, i32 833, i32 834, i32 835, i32 837, i32 836, i32 960, i32 961, i32 962, i32 963, i32 0, i32 964, i32 1040, i32 0, i32 209, i32 0, i32 1907, i32 1046, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1047, i32 0, i32 137, i32 1802, i32 1803, i32 1804, i32 141, i32 142, i32 1807, i32 1029, i32 1056, i32 1057, i32 0, i32 136, i32 145, i32 1810, i32 1030, i32 0, i32 1816, i32 409, i32 425, i32 0, i32 838, i32 0], [64 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: Written crbwin (0x%x) != Read crbwin (0x%x), off=0x%lx.\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qla82xx_pci_set_crbwindow_2M = private unnamed_addr constant [29 x i8] c"qla82xx_pci_set_crbwindow_2M\00", align 1
@.str.82 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s out of bound pci memory access, offset is 0x%llx.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Written MNwin (0x%x) != Read MNwin (0x%x).\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.qla82xx_pci_set_window = private unnamed_addr constant [23 x i8] c"qla82xx_pci_set_window\00", align 1
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: QM access not handled.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Written OCMwin (0x%x) != Read OCMwin (0x%x).\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Written MSwin (0x%x) != Read MSwin (0x%x).\0A\00", [48 x i8] zeroinitializer }, align 32
@qla82xx_pci_set_window_warning_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Warning:%s Unknown address range!.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error during CRB initialization.\0A\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ql2xfwloadbin = external dso_local local_unnamed_addr global i32, align 4
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Attempting to load firmware from flash.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Firmware loaded successfully from flash.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Firmware load from flash failed.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Attempting to load firmware from blob.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Firmware image not present.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No valid firmware image found.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Firmware loaded successfully from binary blob.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Firmware load failed for binary blob.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error Reading crb_init area: n: %08x.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Card flash not initialized:n=0x%x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d CRB init values found in ROM.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to allocate memory.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown addr: 0x%08lx.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s: Simultaneous flash access by following ports, active port = %d: accessing port = %d\00", [40 x i8] zeroinitializer }, align 32
@__func__.qla82xx_rom_lock = private unnamed_addr constant [17 x i8] c"qla82xx_rom_lock\00", align 1
@.str.103 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to acquire SEM2 lock, Lock Owner %u.\0A\00", [51 x i8] zeroinitializer }, align 32
@qla82xx_crb_table_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@crb_addr_xform = internal global { [60 x i32], [48 x i8] } zeroinitializer, align 32
@__func__.qla82xx_pci_mem_write_2M = private unnamed_addr constant [25 x i8] c"qla82xx_pci_mem_write_2M\00", align 1
@qla82xx_pci_mem_write_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @__func__.qla82xx_pci_mem_write_2M, ptr @.str, i32 1378, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to write through agent.\0A\00", [32 x i8] zeroinitializer }, align 32
@qla82xx_pci_mem_write_2M._entry_ptr = internal global ptr @qla82xx_pci_mem_write_2M._entry, section ".printk_index", align 4
@.str.105 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s out of bound memory access, offset is 0x%llx.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CRB_CMDPEG_STATE: 0x%x and retries:0x%x.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cmd Peg initialization failed: 0x%x.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CRB_RCVPEG_STATE: 0x%x and retries: 0x%x.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Rcv Peg initialization failed: 0x%x.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Do ROM fast read failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to unprotect flash for update.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to erase sector: address=%x.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to program flash address=%x data=%x.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to protect flash after update.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ROM Lock failed.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Write disable failed.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ROM lock failed, Lock Owner %u.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error waiting for rom done.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Timeout reached waiting for rom busy.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Timeout reached waiting for rom done.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Timeout reached waiting for write finish.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ROM lock failed.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Write status register failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IDC version updated to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"qla2xxx driver IDC version %d is not compatible with IDC version %d of the other drivers\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HW State: INITIALIZING.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HW State: FAILED.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HW State: READY.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Resetting rom_lock, Lock Owner %u.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reset_acknowledged by 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"active_mask: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"drv_state: 0x%08x, drv_active: 0x%08x, dev_state: 0x%08x, active_mask: 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Reset timeout.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HW State: COLD/RE-INIT.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Minidump not collected.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Minidump disabled.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drv_state = 0x%08x.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s : QUIESCENT TIMEOUT DRV_ACTIVE:%d DRV_STATE:%d.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HW State: DEV_READY.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HW State: DEV_QUIESCENT.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Device temperature %d degrees C exceeds  maximum allowed. Hardware has been shut down.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Device temperature %d degrees C exceeds operating range. Immediate action needed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FW heartbeat counter is 0xffffffff, returning status=%d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Returning status=%d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Read addr 0x%x not 16 bytes aligned\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Read data[0x%x] not multiple of 16 bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s]: rdmem_addr: 0x%x, read_data_size: 0x%x, loop_cnt: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.qla82xx_minidump_process_rdmem = private unnamed_addr constant [31 x i8] c"qla82xx_minidump_process_rdmem\00", align 1
@qla82xx_minidump_process_rdmem._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.151, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@qla82xx_minidump_process_rdmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @__func__.qla82xx_minidump_process_rdmem, ptr @.str, i32 4066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to read through agent\0A\00", [32 x i8] zeroinitializer }, align 32
@qla82xx_minidump_process_rdmem._entry_ptr = internal global ptr @qla82xx_minidump_process_rdmem._entry, section ".printk_index", align 4
@.str.153 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"c_value_r: 0x%x, poll_mask: 0x%lx, w_time: 0x%lx\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.155 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.156 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.157 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.158 = internal global [7 x i64] [i64 5, i64 32, i64 1122368, i64 1122376, i64 35660284, i64 53477564, i64 53477576]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 102760448, i64 161480704]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 61455, i64 65281]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 61455, i64 65281]
@__sancov_gen_cov_switch_values.162 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.165 = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 11, i64 12, i64 21, i64 22, i64 23, i64 24, i64 71, i64 72, i64 98, i64 255]
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"MD_MIU_TEST_AGT_RDDATA\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 45, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant [12 x i8] c"q_dev_state\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 338, i32 14 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 500, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1468, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1622, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1624, i32 7 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1631, i32 7 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1639, i32 7 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1655, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1673, i32 6 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1708, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1969, i32 7 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1997, i32 7 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2048, i32 9 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2080, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2143, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2176, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2257, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [12 x i8] c"legacy_intr\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1940, i32 39 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2484, i32 7 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2491, i32 7 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2970, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3106, i32 9 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3120, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3187, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3189, i32 55 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3198, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3316, i32 7 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3337, i32 8 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3342, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3348, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3355, i32 9 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3361, i32 9 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3379, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3387, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3392, i32 38 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3429, i32 7 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3435, i32 8 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3464, i32 7 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3498, i32 9 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3512, i32 9 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3519, i32 8 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3593, i32 9 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3624, i32 6 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3650, i32 12 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3654, i32 12 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3667, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4126, i32 7 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4135, i32 7 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4141, i32 7 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4149, i32 7 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4155, i32 6 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4158, i32 6 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4165, i32 7 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4179, i32 6 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4184, i32 7 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4197, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4207, i32 8 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4215, i32 7 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4222, i32 7 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4291, i32 7 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4302, i32 7 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4309, i32 6 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4330, i32 7 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4341, i32 7 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4348, i32 7 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4363, i32 7 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4373, i32 7 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4391, i32 7 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4402, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4408, i32 9 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4412, i32 9 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4437, i32 7 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 340, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 341, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 342, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 343, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 344, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 345, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 346, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [16 x i8] c"crb_128M_2M_map\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 110, i32 37 }
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c"qla82xx_crb_hub_agt\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 270, i32 17 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 375, i32 7 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 670, i32 7 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 560, i32 8 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 570, i32 8 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 583, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 599, i32 8 }
@___asan_gen_.454 = private unnamed_addr constant [37 x i8] c"qla82xx_pci_set_window_warning_count\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 540, i32 12 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 611, i32 8 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2394, i32 7 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2413, i32 6 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2417, i32 7 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2421, i32 7 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2426, i32 6 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2432, i32 7 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2443, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2450, i32 7 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2455, i32 9 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1171, i32 7 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1184, i32 7 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1189, i32 6 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1194, i32 7 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1246, i32 8 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 831, i32 8 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 937, i32 7 }
@___asan_gen_.508 = private unnamed_addr constant [30 x i8] c"qla82xx_crb_table_initialized\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [15 x i8] c"crb_addr_xform\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 38, i32 22 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1377, i32 5 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 742, i32 7 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1885, i32 7 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1893, i32 6 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1924, i32 7 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1932, i32 6 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2515, i32 8 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2666, i32 7 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2677, i32 9 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2715, i32 8 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2724, i32 7 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2534, i32 7 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2551, i32 7 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1046, i32 7 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 955, i32 7 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 861, i32 8 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 882, i32 8 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 978, i32 9 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1062, i32 7 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2581, i32 7 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2281, i32 7 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2286, i32 8 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2842, i32 6 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2851, i32 7 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2859, i32 6 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2791, i32 7 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3019, i32 7 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3025, i32 7 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3036, i32 6 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3044, i32 8 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3071, i32 7 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3077, i32 9 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3080, i32 8 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2350, i32 6 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2905, i32 8 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2911, i32 8 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2932, i32 7 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3287, i32 7 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3293, i32 7 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3137, i32 7 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3153, i32 7 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4032, i32 7 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4038, i32 7 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4044, i32 6 }
@___asan_gen_.647 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4065, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.660 = private constant [33 x i8] c"../drivers/scsi/qla2xxx/qla_nx.c\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 3903, i32 10 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @qla82xx_minidump_process_rdmem._entry, ptr @qla82xx_minidump_process_rdmem._entry_ptr, ptr @qla82xx_msix_default._entry, ptr @qla82xx_msix_default._entry_ptr, ptr @qla82xx_msix_rsp_q._entry, ptr @qla82xx_msix_rsp_q._entry_ptr, ptr @qla82xx_pci_mem_read_2M._entry, ptr @qla82xx_pci_mem_read_2M._entry_ptr, ptr @qla82xx_pci_mem_write_2M._entry, ptr @qla82xx_pci_mem_write_2M._entry_ptr, ptr @qla82xx_poll._entry, ptr @qla82xx_poll._entry_ptr, ptr @MD_MIU_TEST_AGT_RDDATA, ptr @q_dev_state, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @qla82xx_init_flags.__key, ptr @.str.18, ptr @legacy_intr, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @crb_128M_2M_map, ptr @qla82xx_crb_hub_agt, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @qla82xx_pci_set_window_warning_count, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @qla82xx_crb_table_initialized, ptr @crb_addr_xform, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @qla82xx_minidump_process_rdmem._rs, ptr @.str.151, ptr @.str.152, ptr @.str.153], section "llvm.metadata"
@0 = internal global [166 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MD_MIU_TEST_AGT_RDDATA to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q_dev_state to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_pci_mem_read_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_msix_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_msix_rsp_q._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_intr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 186, i32 224, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crb_128M_2M_map to i32), i32 16384, i32 20480, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_crb_hub_agt to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_pci_set_window_warning_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_crb_table_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crb_addr_xform to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_pci_mem_write_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_minidump_process_rdmem._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla82xx_minidump_process_rdmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qdev_state(i32 noundef %dev_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x ptr], ptr @q_dev_state, i32 0, i32 %dev_state
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef %off_in, i32 noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772159, i32 %off_in)
  %cmp.i = icmp ugt i32 %off_in, 167772159
  br i1 %cmp.i, label %entry.do.body2_crit_edge, label %if.end.i

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.end.i:                                         ; preds = %entry
  %0 = and i32 %off_in, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 75497472, i32 %0)
  %1 = icmp eq i32 %0, 75497472
  br i1 %1, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %off_in, -74450944
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  br label %do.body17

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %off_in)
  %cmp5.i = icmp ult i32 %off_in, 100663296
  br i1 %cmp5.i, label %if.end4.i.do.body2_crit_edge, label %if.end7.i

if.end4.i.do.body2_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.end7.i:                                        ; preds = %if.end4.i
  %sub8.i = add nsw i32 %off_in, -100663296
  %shr.i = lshr i32 %sub8.i, 20
  %arrayidx.i = getelementptr [64 x %struct.crb_128M_2M_block_map], ptr @crb_128M_2M_map, i32 0, i32 %shr.i
  %shr9.i = lshr i32 %sub8.i, 16
  %and10.i = and i32 %shr9.i, 15
  %arrayidx11.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and10.i
  %2 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end7.i.do.body10_crit_edge, label %land.lhs.true12.i

if.end7.i.do.body10_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

land.lhs.true12.i:                                ; preds = %if.end7.i
  %start_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and10.i, i32 1
  %4 = ptrtoint ptr %start_128M.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i, i32 %5)
  %cmp13.not.i = icmp ult i32 %sub8.i, %5
  br i1 %cmp13.not.i, label %land.lhs.true12.i.do.body10_crit_edge, label %land.lhs.true14.i

land.lhs.true12.i.do.body10_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

land.lhs.true14.i:                                ; preds = %land.lhs.true12.i
  %end_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and10.i, i32 2
  %6 = ptrtoint ptr %end_128M.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub8.i)
  %cmp15.i = icmp ugt i32 %7, %sub8.i
  br i1 %cmp15.i, label %if.then16.i, label %land.lhs.true14.i.do.body10_crit_edge

land.lhs.true14.i.do.body10_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  %start_2M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and10.i, i32 3
  %8 = ptrtoint ptr %start_2M.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_2M.i, align 4
  %add17.i = sub i32 %sub8.i, %5
  %sub19.i = add i32 %add17.i, %9
  %nx_pcibase20.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  br label %do.body17

do.body2:                                         ; preds = %if.end4.i.do.body2_crit_edge, %entry.do.body2_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla2xxx/qla_nx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 441, 0\0A.popsection", ""() #10, !srcloc !376
  unreachable

do.body10:                                        ; preds = %land.lhs.true14.i.do.body10_crit_edge, %land.lhs.true12.i.do.body10_crit_edge, %if.end7.i.do.body10_crit_edge
  %hw_lock = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 253
  %call12 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock) #10
  br label %while.body.i

while.cond.i:                                     ; preds = %if.end.i44
  %inc.i = add nuw nsw i32 %timeout.0.i59, 1
  %tobool.not.i42 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i42, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %do.body10
  %timeout.0.i59 = phi i32 [ 0, %do.body10 ], [ %inc.i, %while.cond.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 101826616) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i43 = icmp eq i32 %call.i, 1
  br i1 %cmp.i43, label %while.body.i.while.end.i_crit_edge, label %if.end.i44

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i44:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %timeout.0.i59)
  %exitcond = icmp eq i32 %timeout.0.i59, 100000000
  br i1 %exitcond, label %if.end.i44.qla82xx_crb_win_lock.exit_crit_edge, label %while.cond.i

if.end.i44.qla82xx_crb_win_lock.exit_crit_edge:   ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_crb_win_lock.exit

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 254
  %10 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %11 to i32
  %call4.i = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 136323364, i32 noundef %conv.i) #10
  br label %qla82xx_crb_win_lock.exit

qla82xx_crb_win_lock.exit:                        ; preds = %while.end.i, %if.end.i44.qla82xx_crb_win_lock.exit_crit_edge
  %12 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %shr.i45 = lshr i32 %off_in, 20
  %and.i = and i32 %shr.i45, 63
  %arrayidx.i46 = getelementptr [64 x i32], ptr @qla82xx_crb_hub_agt, i32 0, i32 %and.i
  %16 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i46, align 4
  %shl.i = shl i32 %17, 20
  %and1.i = and i32 %off_in, 983040
  %or.i = or i32 %shl.i, %and1.i
  %crb_win.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 245
  %18 = ptrtoint ptr %crb_win.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %crb_win.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !377
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %crb_win.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crb_win.i, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  %nx_pcibase.i47 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  %22 = ptrtoint ptr %nx_pcibase.i47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nx_pcibase.i47, align 4
  %add.ptr.i48 = getelementptr i8, ptr %23, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %21) #10, !srcloc !378
  %24 = ptrtoint ptr %nx_pcibase.i47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nx_pcibase.i47, align 4
  %add.ptr4.i = getelementptr i8, ptr %25, i32 1245280
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !379
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %28 = ptrtoint ptr %crb_win.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crb_win.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.not.i = icmp eq i32 %27, %29
  br i1 %cmp.not.i, label %qla82xx_crb_win_lock.exit.qla82xx_pci_set_crbwindow_2M.exit_crit_edge, label %if.then.i

qla82xx_crb_win_lock.exit.qla82xx_pci_set_crbwindow_2M.exit_crit_edge: ; preds = %qla82xx_crb_win_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_pci_set_crbwindow_2M.exit

if.then.i:                                        ; preds = %qla82xx_crb_win_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %15, i32 noundef 45056, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.qla82xx_pci_set_crbwindow_2M, i32 noundef %29, i32 noundef %27, i32 noundef %off_in) #10
  br label %qla82xx_pci_set_crbwindow_2M.exit

qla82xx_pci_set_crbwindow_2M.exit:                ; preds = %if.then.i, %qla82xx_crb_win_lock.exit.qla82xx_pci_set_crbwindow_2M.exit_crit_edge
  %30 = and i32 %off_in, 65535
  %31 = or i32 %30, 1966080
  br label %do.body17

do.body17:                                        ; preds = %qla82xx_pci_set_crbwindow_2M.exit, %if.then16.i, %if.then3.i
  %nx_pcibase20.i.sink = phi ptr [ %nx_pcibase20.i, %if.then16.i ], [ %nx_pcibase.i, %if.then3.i ], [ %nx_pcibase.i47, %qla82xx_pci_set_crbwindow_2M.exit ]
  %sub19.i.sink = phi i32 [ %sub19.i, %if.then16.i ], [ %add.i, %if.then3.i ], [ %31, %qla82xx_pci_set_crbwindow_2M.exit ]
  %cmp858 = phi i1 [ false, %if.then16.i ], [ false, %if.then3.i ], [ true, %qla82xx_pci_set_crbwindow_2M.exit ]
  %flags.0 = phi i32 [ 0, %if.then16.i ], [ 0, %if.then3.i ], [ %call12, %qla82xx_pci_set_crbwindow_2M.exit ]
  %32 = ptrtoint ptr %nx_pcibase20.i.sink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nx_pcibase20.i.sink, align 4
  %add.ptr21.i = getelementptr i8, ptr %33, i32 %sub19.i.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !381
  tail call void @arm_heavy_mb() #10
  %34 = tail call i32 @llvm.bswap.i32(i32 %data)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %34) #10, !srcloc !378
  br i1 %cmp858, label %if.then22, label %do.body17.if.end33_crit_edge

do.body17.if.end33_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 101826620)
  %hw_lock30 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 253
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock30, i32 noundef %flags.0) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then22, %do.body17.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef %off_in) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772159, i32 %off_in)
  %cmp.i = icmp ugt i32 %off_in, 167772159
  br i1 %cmp.i, label %entry.do.body2_crit_edge, label %if.end.i

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.end.i:                                         ; preds = %entry
  %0 = and i32 %off_in, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 75497472, i32 %0)
  %1 = icmp eq i32 %0, 75497472
  br i1 %1, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %off_in, -74450944
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  br label %if.end16

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %off_in)
  %cmp5.i = icmp ult i32 %off_in, 100663296
  br i1 %cmp5.i, label %if.end4.i.do.body2_crit_edge, label %if.end7.i

if.end4.i.do.body2_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.end7.i:                                        ; preds = %if.end4.i
  %sub8.i = add nsw i32 %off_in, -100663296
  %shr.i = lshr i32 %sub8.i, 20
  %arrayidx.i = getelementptr [64 x %struct.crb_128M_2M_block_map], ptr @crb_128M_2M_map, i32 0, i32 %shr.i
  %shr9.i = lshr i32 %sub8.i, 16
  %and10.i = and i32 %shr9.i, 15
  %arrayidx11.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and10.i
  %2 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end7.i.do.body10_crit_edge, label %land.lhs.true12.i

if.end7.i.do.body10_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

land.lhs.true12.i:                                ; preds = %if.end7.i
  %start_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and10.i, i32 1
  %4 = ptrtoint ptr %start_128M.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i, i32 %5)
  %cmp13.not.i = icmp ult i32 %sub8.i, %5
  br i1 %cmp13.not.i, label %land.lhs.true12.i.do.body10_crit_edge, label %land.lhs.true14.i

land.lhs.true12.i.do.body10_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

land.lhs.true14.i:                                ; preds = %land.lhs.true12.i
  %end_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and10.i, i32 2
  %6 = ptrtoint ptr %end_128M.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub8.i)
  %cmp15.i = icmp ugt i32 %7, %sub8.i
  br i1 %cmp15.i, label %if.then16.i, label %land.lhs.true14.i.do.body10_crit_edge

land.lhs.true14.i.do.body10_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  %start_2M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and10.i, i32 3
  %8 = ptrtoint ptr %start_2M.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_2M.i, align 4
  %add17.i = sub i32 %sub8.i, %5
  %sub19.i = add i32 %add17.i, %9
  %nx_pcibase20.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  br label %if.end16

do.body2:                                         ; preds = %if.end4.i.do.body2_crit_edge, %entry.do.body2_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla2xxx/qla_nx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 472, 0\0A.popsection", ""() #10, !srcloc !382
  unreachable

do.body10:                                        ; preds = %land.lhs.true14.i.do.body10_crit_edge, %land.lhs.true12.i.do.body10_crit_edge, %if.end7.i.do.body10_crit_edge
  %hw_lock = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 253
  %call12 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock) #10
  br label %while.body.i

while.cond.i:                                     ; preds = %if.end.i42
  %inc.i = add nuw nsw i32 %timeout.0.i57, 1
  %tobool.not.i40 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i40, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %do.body10
  %timeout.0.i57 = phi i32 [ 0, %do.body10 ], [ %inc.i, %while.cond.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 101826616) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i41 = icmp eq i32 %call.i, 1
  br i1 %cmp.i41, label %while.body.i.while.end.i_crit_edge, label %if.end.i42

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i42:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %timeout.0.i57)
  %exitcond = icmp eq i32 %timeout.0.i57, 100000000
  br i1 %exitcond, label %if.end.i42.qla82xx_crb_win_lock.exit_crit_edge, label %while.cond.i

if.end.i42.qla82xx_crb_win_lock.exit_crit_edge:   ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_crb_win_lock.exit

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 254
  %10 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %11 to i32
  %call4.i = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 136323364, i32 noundef %conv.i) #10
  br label %qla82xx_crb_win_lock.exit

qla82xx_crb_win_lock.exit:                        ; preds = %while.end.i, %if.end.i42.qla82xx_crb_win_lock.exit_crit_edge
  %12 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %shr.i43 = lshr i32 %off_in, 20
  %and.i = and i32 %shr.i43, 63
  %arrayidx.i44 = getelementptr [64 x i32], ptr @qla82xx_crb_hub_agt, i32 0, i32 %and.i
  %16 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i44, align 4
  %shl.i = shl i32 %17, 20
  %and1.i = and i32 %off_in, 983040
  %or.i = or i32 %shl.i, %and1.i
  %crb_win.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 245
  %18 = ptrtoint ptr %crb_win.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %crb_win.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !377
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %crb_win.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crb_win.i, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  %nx_pcibase.i45 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  %22 = ptrtoint ptr %nx_pcibase.i45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nx_pcibase.i45, align 4
  %add.ptr.i46 = getelementptr i8, ptr %23, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %21) #10, !srcloc !378
  %24 = ptrtoint ptr %nx_pcibase.i45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nx_pcibase.i45, align 4
  %add.ptr4.i = getelementptr i8, ptr %25, i32 1245280
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !379
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %28 = ptrtoint ptr %crb_win.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crb_win.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.not.i = icmp eq i32 %27, %29
  br i1 %cmp.not.i, label %qla82xx_crb_win_lock.exit.qla82xx_pci_set_crbwindow_2M.exit_crit_edge, label %if.then.i

qla82xx_crb_win_lock.exit.qla82xx_pci_set_crbwindow_2M.exit_crit_edge: ; preds = %qla82xx_crb_win_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_pci_set_crbwindow_2M.exit

if.then.i:                                        ; preds = %qla82xx_crb_win_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %15, i32 noundef 45056, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.qla82xx_pci_set_crbwindow_2M, i32 noundef %29, i32 noundef %27, i32 noundef %off_in) #10
  br label %qla82xx_pci_set_crbwindow_2M.exit

qla82xx_pci_set_crbwindow_2M.exit:                ; preds = %if.then.i, %qla82xx_crb_win_lock.exit.qla82xx_pci_set_crbwindow_2M.exit_crit_edge
  %30 = and i32 %off_in, 65535
  %31 = or i32 %30, 1966080
  br label %if.end16

if.end16:                                         ; preds = %qla82xx_pci_set_crbwindow_2M.exit, %if.then16.i, %if.then3.i
  %nx_pcibase20.i.sink = phi ptr [ %nx_pcibase20.i, %if.then16.i ], [ %nx_pcibase.i, %if.then3.i ], [ %nx_pcibase.i45, %qla82xx_pci_set_crbwindow_2M.exit ]
  %sub19.i.sink = phi i32 [ %sub19.i, %if.then16.i ], [ %add.i, %if.then3.i ], [ %31, %qla82xx_pci_set_crbwindow_2M.exit ]
  %cmp856 = phi i1 [ false, %if.then16.i ], [ false, %if.then3.i ], [ true, %qla82xx_pci_set_crbwindow_2M.exit ]
  %flags.0 = phi i32 [ 0, %if.then16.i ], [ 0, %if.then3.i ], [ %call12, %qla82xx_pci_set_crbwindow_2M.exit ]
  %32 = ptrtoint ptr %nx_pcibase20.i.sink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nx_pcibase20.i.sink, align 4
  %add.ptr21.i = getelementptr i8, ptr %33, i32 %sub19.i.sink
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  br i1 %cmp856, label %if.then20, label %if.end16.if.end31_crit_edge

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 101826620)
  %hw_lock28 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 253
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock28, i32 noundef %flags.0) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then20, %if.end16.if.end31_crit_edge
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_idc_lock(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 101826600)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55)
  %cmp56 = icmp eq i32 %call55, 1
  br i1 %cmp56, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end46.if.end_crit_edge, %entry.if.end_crit_edge
  %total.057 = phi i32 [ %add, %if.end46.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057)
  %cmp4 = icmp ugt i32 %total.057, 1999
  br i1 %cmp4, label %land.rhs, label %if.end46

land.rhs:                                         ; preds = %if.end
  %.b53 = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53, label %land.rhs.cleanup_crit_edge, label %if.then11, !prof !383

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end
  %add = add nuw nsw i32 %total.057, 100
  tail call void @msleep(i32 noundef 100) #10
  %call = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 101826600)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.end46.cleanup_crit_edge, label %if.end46.if.end_crit_edge

if.end46.if.end_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end46.cleanup_crit_edge, %if.then11, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then11 ], [ -1, %land.rhs.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_idc_unlock(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 101826604)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_pci_mem_read_2M(ptr noundef %ha, i64 noundef %off, ptr nocapture noundef writeonly %data, i32 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  %sz = alloca [2 x i32], align 4
  %off0 = alloca [2 x i32], align 4
  %word = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sz) #10
  %0 = getelementptr inbounds [2 x i32], ptr %sz, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %off0) #10
  %1 = getelementptr inbounds [2 x i32], ptr %off0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %word) #10
  %2 = call ptr @memset(ptr %word, i32 0, i32 16)
  %3 = and i64 %off, -67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %3)
  %4 = icmp eq i64 %3, 12884901888
  br i1 %4, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %off)
  %cmp.not.i.i = icmp ult i64 %off, 268435456
  br i1 %cmp.not.i.i, label %lor.lhs.false.i, label %if.else.if.then3_crit_edge

if.else.if.then3_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false.i:                                  ; preds = %if.else
  %conv.i = sext i32 %size to i64
  %add.i = add nsw i64 %off, -1
  %sub.i = add nsw i64 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %sub.i)
  %cmp.not.i1.i = icmp ult i64 %sub.i, 268435456
  br i1 %cmp.not.i1.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then3_crit_edge

lor.lhs.false.i.if.then3_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %switch.tableidx = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 8
  br i1 %5, label %switch.hole_check, label %lor.lhs.false2.i.if.then3_crit_edge

lor.lhs.false2.i.if.then3_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %switch.hole_check.if.then3_crit_edge, %lor.lhs.false2.i.if.then3_crit_edge, %lor.lhs.false.i.if.then3_crit_edge, %if.else.if.then3_crit_edge
  %6 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %hw_lock.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 253
  %call1.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock.i) #10
  %call2.i = tail call fastcc i32 @qla82xx_pci_set_window(ptr noundef %ha, i64 noundef %off) #10
  %conv3.i = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp4.i = icmp eq i32 %call2.i, -1
  br i1 %cmp4.i, label %if.then3.do.body10.i_crit_edge, label %lor.lhs.false.i189

if.then3.do.body10.i_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i

lor.lhs.false.i189:                               ; preds = %if.then3
  %conv6.i = sext i32 %size to i64
  %add.i187 = add nsw i64 %conv6.i, -1
  %sub.i188 = add i64 %add.i187, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %sub.i188)
  %cmp.not.i.i.i = icmp ult i64 %sub.i188, 268435456
  br i1 %cmp.not.i.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i189
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla2xxx/qla_nx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 631, 0\0A.popsection", ""() #10, !srcloc !384
  unreachable

if.else.i.i:                                      ; preds = %lor.lhs.false.i189
  %10 = and i64 %sub.i188, -5242880
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934592, i64 %10)
  %11 = icmp eq i64 %10, 8589934592
  br i1 %11, label %if.else.i.i.do.body19.i_crit_edge, label %if.else9.i.i

if.else.i.i.do.body19.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i

if.else9.i.i:                                     ; preds = %if.else.i.i
  %12 = and i64 %sub.i188, -67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %12)
  %13 = icmp eq i64 %12, 12884901888
  br i1 %13, label %if.then11.i.i, label %if.else9.i.i.do.body10.i_crit_edge

if.else9.i.i.do.body10.i_crit_edge:               ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i

if.then11.i.i:                                    ; preds = %if.else9.i.i
  %14 = trunc i64 %sub.i188 to i32
  %15 = lshr i32 %14, 22
  %qdr_sn_window.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 250
  %16 = ptrtoint ptr %qdr_sn_window.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qdr_sn_window.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i.i = icmp eq i32 %17, %15
  br i1 %cmp.i.i, label %if.then11.i.i.do.body19.i_crit_edge, label %if.then11.i.i.do.body10.i_crit_edge

if.then11.i.i.do.body10.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i

if.then11.i.i.do.body19.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i

do.body10.i:                                      ; preds = %if.then11.i.i.do.body10.i_crit_edge, %if.else9.i.i.do.body10.i_crit_edge, %if.then3.do.body10.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call1.i) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %9, i32 noundef 45064, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.4, i64 noundef %off) #10
  br label %cleanup

do.body19.i:                                      ; preds = %if.then11.i.i.do.body19.i_crit_edge, %if.else.i.i.do.body19.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call1.i) #10
  %18 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ha, align 128
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 47
  %20 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resource.i, align 8
  %and.i = and i32 %call2.i, -4096
  %conv31.i = zext i32 %and.i to i64
  %sub34.i = add nsw i64 %add.i187, %conv3.i
  %and35.i = and i64 %sub34.i, -4096
  call void @__sanitizer_cov_trace_cmp8(i64 %and35.i, i64 %conv31.i)
  %cmp36.not.i = icmp eq i64 %and35.i, %conv31.i
  %add41.i = add i32 %21, %and.i
  %..i = select i1 %cmp36.not.i, i32 4096, i32 8192
  %call42.i = tail call ptr @ioremap(i32 noundef %add41.i, i32 noundef %..i) #10
  %cmp44.i = icmp eq ptr %call42.i, null
  br i1 %cmp44.i, label %if.then46.i, label %if.end47.i

if.then46.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %data, align 1
  br label %cleanup

if.end47.i:                                       ; preds = %do.body19.i
  %and48.i = and i32 %call2.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call42.i, i32 %and48.i
  %call56.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock.i) #10
  %23 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %if.end47.i.do.body76.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb62.i
    i32 4, label %sw.bb68.i
    i32 8, label %sw.bb74.i
  ]

if.end47.i.do.body76.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body76.i

sw.bb.i:                                          ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !386
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %data, align 1
  br label %do.body76.i

sw.bb62.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !387
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !388
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %data, align 2
  br label %do.body76.i

sw.bb68.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !379
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !389
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %data, align 4
  br label %do.body76.i

sw.bb74.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !390
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !391
  %34 = zext i32 %33 to i64
  %35 = zext i32 %32 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or i64 %36, %34
  %38 = tail call i64 @llvm.bswap.i64(i64 %37) #10
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %data, align 8
  br label %do.body76.i

do.body76.i:                                      ; preds = %sw.bb74.i, %sw.bb68.i, %sw.bb62.i, %sw.bb.i, %if.end47.i.do.body76.i_crit_edge
  %ret.0.i = phi i32 [ 0, %sw.bb74.i ], [ 0, %sw.bb68.i ], [ 0, %sw.bb62.i ], [ 0, %sw.bb.i ], [ -1, %if.end47.i.do.body76.i_crit_edge ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call56.i) #10
  tail call void @iounmap(ptr noundef nonnull %call42.i) #10
  br label %cleanup

switch.hole_check:                                ; preds = %lor.lhs.false2.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %40 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.lobit.not = icmp eq i8 %40, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then3_crit_edge, label %switch.hole_check.if.end5_crit_edge

switch.hole_check.if.end5_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

switch.hole_check.if.then3_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end5:                                          ; preds = %switch.hole_check.if.end5_crit_edge, %entry.if.end5_crit_edge
  %mem_crb.0 = phi i32 [ 131072000, %entry.if.end5_crit_edge ], [ 102760448, %switch.hole_check.if.end5_crit_edge ]
  %41 = trunc i64 %off to i32
  %conv = and i32 %41, 15
  %42 = ptrtoint ptr %off0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv, ptr %off0, align 4
  %sub = sub nuw nsw i32 16, %conv
  %43 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %size)
  %44 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sz, align 4
  %add = add i32 %size, -1
  %sub14 = add i32 %add, %conv
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %1, align 4
  %sub18 = sub i32 %size, %43
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub18, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %cmp20.not201 = icmp slt i32 %sub14, 0
  br i1 %cmp20.not201, label %if.end5.if.end86_crit_edge, label %for.body.lr.ph

if.end5.if.end86_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

for.body.lr.ph:                                   ; preds = %if.end5
  %shr209 = lshr i32 %sub14, 4
  %47 = and i32 %41, -16
  %conv26 = or i32 %mem_crb.0, 148
  %conv29 = or i32 %mem_crb.0, 152
  %conv32 = or i32 %mem_crb.0, 144
  %add67 = or i32 %mem_crb.0, 168
  br label %for.body

for.body:                                         ; preds = %for.inc80.for.body_crit_edge, %for.body.lr.ph
  %i.0202 = phi i32 [ 0, %for.body.lr.ph ], [ %inc81, %for.inc80.for.body_crit_edge ]
  %shl = shl i32 %i.0202, 4
  %conv24 = add i32 %shl, %47
  %call27 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef %conv26, i32 noundef %conv24)
  %call30 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef %conv29, i32 noundef 0)
  %call33 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef %conv32, i32 noundef 2)
  %call36 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef %conv32, i32 noundef 3)
  br label %for.body40

for.body40:                                       ; preds = %for.inc.for.body40_crit_edge, %for.body
  %j.1198 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body40_crit_edge ]
  %call43 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef %conv32)
  %and44 = and i32 %call43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp45 = icmp eq i32 %and44, 0
  br i1 %cmp45, label %if.end55, label %for.inc

for.inc:                                          ; preds = %for.body40
  %inc = add nuw nsw i32 %j.1198, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then51, label %for.inc.for.body40_crit_edge

for.inc.for.body40_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body40

if.then51:                                        ; preds = %for.inc
  %call52 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.qla82xx_pci_mem_read_2M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool.not = icmp eq i32 %call52, 0
  br i1 %tobool.not, label %if.then51.cleanup_crit_edge, label %do.end

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ha, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end55:                                         ; preds = %for.body40
  %arrayidx56 = getelementptr [2 x i32], ptr %off0, i32 0, i32 %i.0202
  %50 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx56, align 4
  %shr57 = ashr i32 %51, 2
  %arrayidx59 = getelementptr [2 x i32], ptr %sz, i32 0, i32 %i.0202
  %52 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx59, align 4
  %add60 = add i32 %51, -1
  %sub61 = add i32 %add60, %53
  %shr62 = ashr i32 %sub61, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr57, i32 %shr62)
  %cmp64.not199 = icmp sgt i32 %shr57, %shr62
  br i1 %cmp64.not199, label %if.end55.for.inc80_crit_edge, label %for.body66.lr.ph

if.end55.for.inc80_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc80

for.body66.lr.ph:                                 ; preds = %if.end55
  %arrayidx76 = getelementptr [2 x i64], ptr %word, i32 0, i32 %i.0202
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.body66.lr.ph
  %k.0200 = phi i32 [ %shr57, %for.body66.lr.ph ], [ %inc78, %for.body66.for.body66_crit_edge ]
  %mul = shl i32 %k.0200, 2
  %conv70 = add i32 %add67, %mul
  %call71 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef %conv70)
  %conv72 = zext i32 %call71 to i64
  %and73 = shl i32 %k.0200, 5
  %mul74 = and i32 %and73, 32
  %sh_prom = zext i32 %mul74 to i64
  %shl75 = shl nuw i64 %conv72, %sh_prom
  %54 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx76, align 8
  %or = or i64 %shl75, %55
  store i64 %or, ptr %arrayidx76, align 8
  %inc78 = add nsw i32 %k.0200, 1
  %exitcond205 = icmp eq i32 %k.0200, %shr62
  br i1 %exitcond205, label %for.body66.for.inc80_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body66

for.body66.for.inc80_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc80

for.inc80:                                        ; preds = %for.body66.for.inc80_crit_edge, %if.end55.for.inc80_crit_edge
  %inc81 = add nuw nsw i32 %i.0202, 1
  %exitcond206 = icmp eq i32 %i.0202, %shr209
  br i1 %exitcond206, label %for.end82, label %for.inc80.for.body_crit_edge

for.inc80.for.body_crit_edge:                     ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end82:                                        ; preds = %for.inc80
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %j.1198)
  %cmp83 = icmp ugt i32 %j.1198, 999
  br i1 %cmp83, label %for.end82.cleanup_crit_edge, label %for.end82.if.end86_crit_edge

for.end82.if.end86_crit_edge:                     ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

for.end82.cleanup_crit_edge:                      ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end86:                                         ; preds = %for.end82.if.end86_crit_edge, %if.end5.if.end86_crit_edge
  %and88 = and i32 %41, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %cmp89 = icmp eq i32 %and88, 0
  %56 = ptrtoint ptr %word to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %word, align 8
  br i1 %cmp89, label %if.end86.if.end116_crit_edge, label %if.else93

if.end86.if.end116_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.else93:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %mul96 = shl nuw nsw i32 %conv, 3
  %sh_prom97 = zext i32 %mul96 to i64
  %shr98 = lshr i64 %57, %sh_prom97
  %mul100 = shl i32 %43, 3
  %sh_prom101 = zext i32 %mul100 to i64
  %shl102 = shl nsw i64 -1, %sh_prom101
  %neg = xor i64 %shl102, -1
  %and103 = and i64 %shr98, %neg
  %arrayidx104 = getelementptr inbounds [2 x i64], ptr %word, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx104, align 8
  %mul106 = shl i32 %sub18, 3
  %sh_prom107 = zext i32 %mul106 to i64
  %shl108 = shl nsw i64 -1, %sh_prom107
  %neg109 = xor i64 %shl108, -1
  %and110 = and i64 %59, %neg109
  %shl114 = shl i64 %and110, %sh_prom101
  %or115 = or i64 %shl114, %and103
  br label %if.end116

if.end116:                                        ; preds = %if.else93, %if.end86.if.end116_crit_edge
  %val.0 = phi i64 [ %or115, %if.else93 ], [ %57, %if.end86.if.end116_crit_edge ]
  %60 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %size, label %if.end116.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb118
    i32 4, label %sw.bb120
    i32 8, label %sw.bb122
  ]

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %conv117 = trunc i64 %val.0 to i8
  %61 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv117, ptr %data, align 1
  br label %cleanup

sw.bb118:                                         ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %conv119 = trunc i64 %val.0 to i16
  %62 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv119, ptr %data, align 2
  br label %cleanup

sw.bb120:                                         ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %conv121 = trunc i64 %val.0 to i32
  %63 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv121, ptr %data, align 4
  br label %cleanup

sw.bb122:                                         ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %val.0, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb122, %sw.bb120, %sw.bb118, %sw.bb, %if.end116.cleanup_crit_edge, %for.end82.cleanup_crit_edge, %do.end, %if.then51.cleanup_crit_edge, %do.body76.i, %if.then46.i, %do.body10.i
  %retval.0 = phi i32 [ -1, %for.end82.cleanup_crit_edge ], [ 0, %if.end116.cleanup_crit_edge ], [ 0, %sw.bb122 ], [ 0, %sw.bb120 ], [ 0, %sw.bb118 ], [ 0, %sw.bb ], [ -1, %do.body10.i ], [ -1, %if.then46.i ], [ %ret.0.i, %do.body76.i ], [ -1, %do.end ], [ -1, %if.then51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %word) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sz) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_pci_region_offset(ptr noundef %pdev, i32 noundef %region) local_unnamed_addr #1 align 64 {
entry:
  %control = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control) #10
  %0 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %control, align 4, !annotation !392
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %region)
  %cond = icmp eq i32 %region, 1
  br i1 %cond, label %sw.bb1, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 68, ptr noundef nonnull %control) #10
  %1 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %control, align 4
  %add = add i32 %2, 8192
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ %add, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control) #10
  ret i32 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_iospace_config(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %call = tail call i32 @pci_request_regions(ptr noundef %1, ptr noundef nonnull @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 128
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 0, ptr noundef %3, i32 noundef 12, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 47, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 0, ptr noundef %3, i32 noundef 13, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %end = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end6.cond.end_crit_edge, label %cond.false

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %sub = add i32 %7, 1
  %add = sub i32 %sub, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end6.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end6.cond.end_crit_edge ]
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource, align 8
  %call21 = tail call ptr @ioremap(i32 noundef %11, i32 noundef %cond) #10
  %nx_pcibase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  %12 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21, ptr %nx_pcibase, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ha, align 128
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 0, ptr noundef %14, i32 noundef 14, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end26:                                         ; preds = %cond.end
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 54
  %15 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %isp_type, align 8
  %and28 = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else, label %if.end26.if.end42.sink.split_crit_edge

if.end26.if.end42.sink.split_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.sink.split

if.else:                                          ; preds = %if.end26
  %and34 = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else.if.end42_crit_edge, label %if.then36

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call21, i32 770048
  %17 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ha, align 128
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %devfn, align 4
  %shl = shl i32 %20, 11
  %add.ptr39 = getelementptr i8, ptr %add.ptr, i32 %shl
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.then36, %if.end26.if.end42.sink.split_crit_edge
  %add.ptr39.sink = phi ptr [ %add.ptr39, %if.then36 ], [ %call21, %if.end26.if.end42.sink.split_crit_edge ]
  %iobase40 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %21 = ptrtoint ptr %iobase40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr39.sink, ptr %iobase40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.else.if.end42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xdbwr to i32))
  %22 = load i32, ptr @ql2xdbwr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool43.not = icmp eq i32 %22, 0
  %23 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ha, align 128
  br i1 %tobool43.not, label %if.then44, label %if.else64

if.then44:                                        ; preds = %if.end42
  %arrayidx47 = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 4
  %25 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx47, align 8
  %devfn50 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %devfn50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devfn50, align 4
  %shl51 = shl i32 %28, 12
  %add52 = add i32 %shl51, %26
  %call53 = tail call ptr @ioremap(i32 noundef %add52, i32 noundef 4) #10
  %nxdb_wr_ptr = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 244
  %29 = ptrtoint ptr %nxdb_wr_ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call53, ptr %nxdb_wr_ptr, align 4
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ha, align 128
  tail call void (i32, ptr, i32, ptr, ...) @ql_log_pci(i32 noundef 0, ptr noundef %31, i32 noundef 15, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end58:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nx_pcibase, align 4
  %add.ptr60 = getelementptr i8, ptr %33, i32 524288
  %34 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ha, align 128
  %devfn62 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %devfn62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %devfn62, align 4
  %mul = shl i32 %37, 3
  %add.ptr63 = getelementptr i8, ptr %add.ptr60, i32 %mul
  %nxdb_rd_ptr = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 243
  %38 = ptrtoint ptr %nxdb_rd_ptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr63, ptr %nxdb_rd_ptr, align 32
  br label %if.end70

if.else64:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %devfn66 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 6
  %39 = ptrtoint ptr %devfn66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %devfn66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %40)
  %cmp67 = icmp eq i32 %40, 6
  %cond68 = select i1 %cmp67, i32 136323512, i32 136323516
  %41 = inttoptr i32 %cond68 to ptr
  %nxdb_wr_ptr69 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 244
  %42 = ptrtoint ptr %nxdb_wr_ptr69 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %nxdb_wr_ptr69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else64, %if.end58
  %max_rsp_queues = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 31
  %43 = ptrtoint ptr %max_rsp_queues to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %max_rsp_queues, align 1
  %max_req_queues = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 30
  %44 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %max_req_queues, align 8
  %msix_count = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 22
  %45 = ptrtoint ptr %msix_count to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2, ptr %msix_count, align 8
  %46 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ha, align 128
  %48 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nx_pcibase, align 4
  %iobase76 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %50 = ptrtoint ptr %iobase76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iobase76, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg_pci(i32 noundef 1048576, ptr noundef %47, i32 noundef 49158, ptr noundef nonnull @.str.9, ptr noundef %49, ptr noundef %51, i32 noundef 1, i32 noundef 2) #10
  %52 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ha, align 128
  %54 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nx_pcibase, align 4
  %56 = ptrtoint ptr %iobase76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iobase76, align 4
  %58 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %max_req_queues, align 8
  %conv85 = zext i8 %59 to i32
  %60 = ptrtoint ptr %msix_count to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %msix_count, align 8
  %conv87 = zext i16 %61 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg_pci(i32 noundef 1073741824, ptr noundef %53, i32 noundef 16, ptr noundef nonnull @.str.9, ptr noundef %55, ptr noundef %57, i32 noundef %conv85, i32 noundef %conv87) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then56, %if.then24, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.end70 ], [ -12, %if.then56 ], [ -12, %if.then24 ], [ -12, %if.then4 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log_pci(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg_pci(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_pci_config(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void @pci_set_master(ptr noundef %3) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call = tail call i32 @pci_set_mwi(ptr noundef %5) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %revision = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision, align 4
  %conv = zext i8 %9 to i16
  %chip_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 193
  %10 = ptrtoint ptr %chip_revision to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %chip_revision, align 8
  %conv4 = zext i8 %9 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 67, ptr noundef nonnull @.str.10, i32 noundef %conv4, i32 noundef %call) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_reset_chip(ptr nocapture noundef readonly %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %2 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp_ops, align 4
  %disable_intrs = getelementptr inbounds %struct.isp_operations, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %disable_intrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_intrs, align 4
  tail call void %5(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_config_rings(ptr nocapture noundef readonly %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req_q_map, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsp_q_map, align 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %init_cb = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 98
  %12 = ptrtoint ptr %init_cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_cb, align 4
  %request_q_outpointer = getelementptr inbounds %struct.init_cb_81xx, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %request_q_outpointer to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %request_q_outpointer, align 2
  %response_q_inpointer = getelementptr inbounds %struct.init_cb_81xx, ptr %13, i32 0, i32 8
  %15 = ptrtoint ptr %response_q_inpointer to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %response_q_inpointer, align 4
  %length = getelementptr inbounds %struct.req_que, ptr %7, i32 0, i32 9
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %request_q_length = getelementptr inbounds %struct.init_cb_81xx, ptr %13, i32 0, i32 13
  %19 = ptrtoint ptr %request_q_length to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %request_q_length, align 2
  %length2 = getelementptr inbounds %struct.rsp_que, ptr %11, i32 0, i32 8
  %20 = ptrtoint ptr %length2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length2, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %response_q_length = getelementptr inbounds %struct.init_cb_81xx, ptr %13, i32 0, i32 12
  %23 = ptrtoint ptr %response_q_length to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %response_q_length, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %conv = zext i32 %25 to i64
  %request_q_address = getelementptr inbounds %struct.init_cb_81xx, ptr %13, i32 0, i32 16
  %26 = tail call i64 @llvm.bswap.i64(i64 %conv) #10
  %27 = ptrtoint ptr %request_q_address to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %request_q_address, align 1
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %11, align 4
  %conv4 = zext i32 %29 to i64
  %response_q_address = getelementptr inbounds %struct.init_cb_81xx, ptr %13, i32 0, i32 17
  %30 = tail call i64 @llvm.bswap.i64(i64 %conv4) #10
  %31 = ptrtoint ptr %response_q_address to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %response_q_address, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #10, !srcloc !378
  %rsp_q_in = getelementptr inbounds %struct.device_reg_82xx, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_in, i32 0) #10, !srcloc !378
  %rsp_q_out = getelementptr inbounds %struct.device_reg_82xx, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_out, i32 0) #10, !srcloc !378
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_mbx_completion(ptr noundef %vha, i16 noundef zeroext %mb0) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, -2147483648
  store volatile i32 %bf.set, ptr %flags, align 8
  %mailbox_out1 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 119
  %5 = ptrtoint ptr %mailbox_out1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %mb0, ptr %mailbox_out1, align 32
  %mbx_count = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 70
  %6 = ptrtoint ptr %mbx_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mbx_count, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp16 = icmp ugt i8 %7, 1
  br i1 %cmp16, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.device_reg_82xx, ptr %3, i32 0, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %wptr.017 = phi ptr [ %arrayidx, %for.body.preheader ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %wptr.017) #10, !srcloc !387
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %arrayidx6 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 119, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %arrayidx6, align 2
  %incdec.ptr = getelementptr i16, ptr %wptr.017, i32 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %11 = ptrtoint ptr %mbx_count to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mbx_count, align 16
  %13 = zext i8 %12 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mcp = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 122
  %14 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mcp, align 64
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %vha, i32 noundef 20563, ptr noundef nonnull @.str.11) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_intr_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #1 align 64 {
entry:
  %mb = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb) #10
  %0 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 3
  %tobool.not = icmp eq ptr %dev_id, null
  %3 = call ptr @memset(ptr %mb, i32 255, i32 16)
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef null, i32 noundef 45139, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.qla82xx_intr_handler) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %flags1 = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load volatile i32, ptr %flags1, align 8
  %7 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %call = tail call i32 @qla82xx_rd_32(ptr noundef %5, i32 noundef 101777664)
  %nx_legacy_intr = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 257
  %8 = ptrtoint ptr %nx_legacy_intr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nx_legacy_intr, align 128
  %and = and i32 %9, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.end6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  %call7 = tail call i32 @qla82xx_rd_32(ptr noundef %5, i32 noundef 101785708)
  %and8 = and i32 %call7, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and8)
  %cmp = icmp eq i32 %and8, 512
  br i1 %cmp, label %if.end6.if.end11_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %if.end6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %status.0 = phi i32 [ 0, %if.end.if.end11_crit_edge ], [ %call, %if.end6.if.end11_crit_edge ]
  %tgt_status_reg = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 257, i32 1
  %10 = ptrtoint ptr %tgt_status_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tgt_status_reg, align 4
  %call13 = tail call i32 @qla82xx_wr_32(ptr noundef %5, i32 noundef %11, i32 noundef -1)
  %call14 = tail call i32 @qla82xx_rd_32(ptr noundef %5, i32 noundef 101777664)
  %call15 = tail call i32 @qla82xx_rd_32(ptr noundef %5, i32 noundef 101777664)
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase, align 4
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 6
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #10
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %host_int = getelementptr inbounds %struct.device_reg_82xx, ptr %13, i32 0, i32 10
  %arrayidx33 = getelementptr %struct.device_reg_82xx, ptr %13, i32 0, i32 7, i32 1
  %arrayidx37 = getelementptr %struct.device_reg_82xx, ptr %13, i32 0, i32 7, i32 2
  %arrayidx41 = getelementptr %struct.device_reg_82xx, ptr %13, i32 0, i32 7, i32 3
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %17, i32 0, i32 52
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_int) #10, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not = icmp eq i32 %18, 0
  br i1 %tobool25.not, label %if.end11.if.end46_crit_edge, label %if.then26

if.end11.if.end46_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then26:                                        ; preds = %if.end11
  %host_status = getelementptr inbounds %struct.device_reg_82xx, ptr %13, i32 0, i32 9
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_status) #10, !srcloc !379
  %20 = call i32 @llvm.bswap.i32(i32 %19) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %trunc = trunc i32 %20 to i8
  %21 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %trunc, label %sw.default [
    i8 1, label %if.then26.sw.bb_crit_edge
    i8 2, label %if.then26.sw.bb_crit_edge104
    i8 16, label %if.then26.sw.bb_crit_edge105
    i8 17, label %if.then26.sw.bb_crit_edge106
    i8 18, label %sw.bb30
    i8 19, label %sw.bb44
  ]

if.then26.sw.bb_crit_edge106:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then26.sw.bb_crit_edge105:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then26.sw.bb_crit_edge104:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then26.sw.bb_crit_edge:                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.then26.sw.bb_crit_edge, %if.then26.sw.bb_crit_edge104, %if.then26.sw.bb_crit_edge105, %if.then26.sw.bb_crit_edge106
  %shr = lshr i32 %20, 16
  %conv29 = trunc i32 %shr to i16
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 4
  %iobase.i = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i, align 4
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store volatile i32 %bf.set.i, ptr %flags.i, align 8
  %mailbox_out1.i = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 119
  %27 = ptrtoint ptr %mailbox_out1.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv29, ptr %mailbox_out1.i, align 32
  %mbx_count.i = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 70
  %28 = ptrtoint ptr %mbx_count.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mbx_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp16.i = icmp ugt i8 %29, 1
  br i1 %cmp16.i, label %for.body.preheader.i, label %sw.bb.for.end.i_crit_edge

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.preheader.i:                             ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.device_reg_82xx, ptr %25, i32 0, i32 7, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %wptr.017.i = phi ptr [ %arrayidx.i, %for.body.preheader.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %30 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %wptr.017.i) #10, !srcloc !387
  %31 = call i16 @llvm.bswap.i16(i16 %30) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %arrayidx6.i = getelementptr %struct.qla_hw_data, ptr %23, i32 0, i32 119, i32 %indvars.iv.i
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx6.i, align 2
  %incdec.ptr.i = getelementptr i16, ptr %wptr.017.i, i32 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %33 = ptrtoint ptr %mbx_count.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mbx_count.i, align 16
  %35 = zext i8 %34 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %35
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %mcp.i = getelementptr inbounds %struct.qla_hw_data, ptr %23, i32 0, i32 122
  %36 = ptrtoint ptr %mcp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mcp.i, align 64
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.then.i, label %for.end.i.if.end46_crit_edge

for.end.i.if.end46_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %17, i32 noundef 20563, ptr noundef nonnull @.str.11) #10
  br label %if.end46

sw.bb30:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %shr31 = lshr i32 %20, 16
  %conv32 = trunc i32 %shr31 to i16
  %38 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv32, ptr %mb, align 2
  %39 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx33) #10, !srcloc !387
  %40 = call i16 @llvm.bswap.i16(i16 %39) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %0, align 2
  %42 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx37) #10, !srcloc !387
  %43 = call i16 @llvm.bswap.i16(i16 %42) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %1, align 2
  %45 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx41) #10, !srcloc !387
  %46 = call i16 @llvm.bswap.i16(i16 %45) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %2, align 2
  call void @qla2x00_async_event(ptr noundef %17, ptr noundef nonnull %dev_id, ptr noundef nonnull %mb) #10
  br label %if.end46

sw.bb44:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  call void @qla24xx_process_response_queue(ptr noundef %17, ptr noundef nonnull %dev_id) #10
  br label %if.end46

sw.default:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %and28 = and i32 %20, 255
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %17, i32 noundef 20564, ptr noundef nonnull @.str.13, i32 noundef %and28) #10
  br label %if.end46

if.end46:                                         ; preds = %sw.default, %sw.bb44, %sw.bb30, %if.then.i, %for.end.i.if.end46_crit_edge, %if.end11.if.end46_crit_edge
  %status.2 = phi i32 [ %status.0, %sw.default ], [ %status.0, %sw.bb44 ], [ %status.0, %sw.bb30 ], [ %status.0, %if.end11.if.end46_crit_edge ], [ 1, %for.end.i.if.end46_crit_edge ], [ 1, %if.then.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int, i32 0) #10, !srcloc !378
  %mbx_cmd_flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 124
  %48 = ptrtoint ptr %mbx_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %mbx_cmd_flags.i, align 4
  %50 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i98 = icmp eq i32 %50, 0
  %and.i = and i32 %status.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i98
  br i1 %or.cond.i, label %if.end46.qla2x00_handle_mbx_completion.exit_crit_edge, label %land.lhs.true2.i

if.end46.qla2x00_handle_mbx_completion.exit_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla2x00_handle_mbx_completion.exit

land.lhs.true2.i:                                 ; preds = %if.end46
  %51 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i100 = load volatile i32, ptr %flags1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i100)
  %tobool3.not.i = icmp sgt i32 %bf.load.i100, -1
  br i1 %tobool3.not.i, label %land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge, label %if.then.i101

land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla2x00_handle_mbx_completion.exit

if.then.i101:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 1, ptr noundef %mbx_cmd_flags.i) #10
  call void @_clear_bit(i32 noundef 2, ptr noundef %mbx_cmd_flags.i) #10
  %mbx_intr_comp.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 129
  call void @complete(ptr noundef %mbx_intr_comp.i) #10
  br label %qla2x00_handle_mbx_completion.exit

qla2x00_handle_mbx_completion.exit:               ; preds = %if.then.i101, %land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge, %if.end46.qla2x00_handle_mbx_completion.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call19) #10
  %52 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load50 = load volatile i32, ptr %flags1, align 8
  %53 = and i32 %bf.load50, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool53.not = icmp eq i32 %53, 0
  br i1 %tobool53.not, label %if.then54, label %qla2x00_handle_mbx_completion.exit.cleanup_crit_edge

qla2x00_handle_mbx_completion.exit.cleanup_crit_edge: ; preds = %qla2x00_handle_mbx_completion.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then54:                                        ; preds = %qla2x00_handle_mbx_completion.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tgt_mask_reg = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 257, i32 2
  %54 = ptrtoint ptr %tgt_mask_reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tgt_mask_reg, align 8
  %call56 = call i32 @qla82xx_wr_32(ptr noundef %5, i32 noundef %55, i32 noundef 64511)
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %qla2x00_handle_mbx_completion.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 1, %if.then54 ], [ 1, %qla2x00_handle_mbx_completion.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_async_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla24xx_process_response_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_msix_default(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #1 align 64 {
entry:
  %mb = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb) #10
  %0 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 3
  %tobool.not = icmp eq ptr %dev_id, null
  %3 = call ptr @memset(ptr %mb, i32 255, i32 16)
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %host_int12 = getelementptr inbounds %struct.device_reg_82xx, ptr %7, i32 0, i32 10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_int12) #10, !srcloc !379
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %call14 = tail call zeroext i1 @qla2x00_check_reg32_for_disconnect(ptr noundef %11, i32 noundef %13) #10
  br i1 %call14, label %do.end40.thread, label %if.end16

do.end40.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mbx_cmd_flags.i76 = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 124
  %14 = ptrtoint ptr %mbx_cmd_flags.i76 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %mbx_cmd_flags.i76, align 4
  br label %qla2x00_handle_mbx_completion.exit

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not = icmp eq i32 %12, 0
  br i1 %tobool17.not, label %if.end16.do.end40_crit_edge, label %if.then18

if.end16.do.end40_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

if.then18:                                        ; preds = %if.end16
  %host_status = getelementptr inbounds %struct.device_reg_82xx, ptr %7, i32 0, i32 9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_status) #10, !srcloc !379
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %trunc = trunc i32 %17 to i8
  %18 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %trunc, label %sw.default [
    i8 1, label %if.then18.sw.bb_crit_edge
    i8 2, label %if.then18.sw.bb_crit_edge81
    i8 16, label %if.then18.sw.bb_crit_edge82
    i8 17, label %if.then18.sw.bb_crit_edge83
    i8 18, label %sw.bb21
    i8 19, label %sw.bb35
  ]

if.then18.sw.bb_crit_edge83:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then18.sw.bb_crit_edge82:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then18.sw.bb_crit_edge81:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then18.sw.bb_crit_edge:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.then18.sw.bb_crit_edge, %if.then18.sw.bb_crit_edge81, %if.then18.sw.bb_crit_edge82, %if.then18.sw.bb_crit_edge83
  %shr = lshr i32 %17, 16
  %conv20 = trunc i32 %shr to i16
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %11, i32 0, i32 52
  %19 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw.i, align 4
  %iobase.i = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i, align 4
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store volatile i32 %bf.set.i, ptr %flags.i, align 8
  %mailbox_out1.i = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 119
  %24 = ptrtoint ptr %mailbox_out1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv20, ptr %mailbox_out1.i, align 32
  %mbx_count.i = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 70
  %25 = ptrtoint ptr %mbx_count.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mbx_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp16.i = icmp ugt i8 %26, 1
  br i1 %cmp16.i, label %for.body.preheader.i, label %sw.bb.for.end.i_crit_edge

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.preheader.i:                             ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.device_reg_82xx, ptr %22, i32 0, i32 7, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %wptr.017.i = phi ptr [ %arrayidx.i, %for.body.preheader.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %wptr.017.i) #10, !srcloc !387
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %arrayidx6.i = getelementptr %struct.qla_hw_data, ptr %20, i32 0, i32 119, i32 %indvars.iv.i
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx6.i, align 2
  %incdec.ptr.i = getelementptr i16, ptr %wptr.017.i, i32 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %30 = ptrtoint ptr %mbx_count.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mbx_count.i, align 16
  %32 = zext i8 %31 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %mcp.i = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 122
  %33 = ptrtoint ptr %mcp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mcp.i, align 64
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.then.i, label %for.end.i.do.end40_crit_edge

for.end.i.do.end40_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %11, i32 noundef 20563, ptr noundef nonnull @.str.11) #10
  br label %do.end40

sw.bb21:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %shr22 = lshr i32 %17, 16
  %conv23 = trunc i32 %shr22 to i16
  %35 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv23, ptr %mb, align 2
  %arrayidx24 = getelementptr %struct.device_reg_82xx, ptr %7, i32 0, i32 7, i32 1
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx24) #10, !srcloc !387
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %0, align 2
  %arrayidx28 = getelementptr %struct.device_reg_82xx, ptr %7, i32 0, i32 7, i32 2
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx28) #10, !srcloc !387
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %1, align 2
  %arrayidx32 = getelementptr %struct.device_reg_82xx, ptr %7, i32 0, i32 7, i32 3
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx32) #10, !srcloc !387
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %2, align 2
  call void @qla2x00_async_event(ptr noundef %11, ptr noundef nonnull %dev_id, ptr noundef nonnull %mb) #10
  br label %do.end40

sw.bb35:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla24xx_process_response_queue(ptr noundef %11, ptr noundef nonnull %dev_id) #10
  br label %do.end40

sw.default:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %17, 255
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %11, i32 noundef 20545, ptr noundef nonnull @.str.13, i32 noundef %and) #10
  br label %do.end40

do.end40:                                         ; preds = %sw.default, %sw.bb35, %sw.bb21, %if.then.i, %for.end.i.do.end40_crit_edge, %if.end16.do.end40_crit_edge
  %tobool1.not.i = phi i1 [ true, %if.end16.do.end40_crit_edge ], [ true, %sw.default ], [ true, %sw.bb35 ], [ true, %sw.bb21 ], [ false, %for.end.i.do.end40_crit_edge ], [ false, %if.then.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int12, i32 0) #10, !srcloc !378
  %mbx_cmd_flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 124
  %45 = ptrtoint ptr %mbx_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %mbx_cmd_flags.i, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i71 = icmp eq i32 %47, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i71
  br i1 %or.cond.i, label %do.end40.qla2x00_handle_mbx_completion.exit_crit_edge, label %land.lhs.true2.i

do.end40.qla2x00_handle_mbx_completion.exit_crit_edge: ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla2x00_handle_mbx_completion.exit

land.lhs.true2.i:                                 ; preds = %do.end40
  %flags.i72 = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 2
  %48 = ptrtoint ptr %flags.i72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load.i73 = load volatile i32, ptr %flags.i72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i73)
  %tobool3.not.i = icmp sgt i32 %bf.load.i73, -1
  br i1 %tobool3.not.i, label %land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge, label %if.then.i74

land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla2x00_handle_mbx_completion.exit

if.then.i74:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 1, ptr noundef %mbx_cmd_flags.i) #10
  call void @_clear_bit(i32 noundef 2, ptr noundef %mbx_cmd_flags.i) #10
  %mbx_intr_comp.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 129
  call void @complete(ptr noundef %mbx_intr_comp.i) #10
  br label %qla2x00_handle_mbx_completion.exit

qla2x00_handle_mbx_completion.exit:               ; preds = %if.then.i74, %land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge, %do.end40.qla2x00_handle_mbx_completion.exit_crit_edge, %do.end40.thread
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %qla2x00_handle_mbx_completion.exit, %do.end
  %retval.0 = phi i32 [ 1, %qla2x00_handle_mbx_completion.exit ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qla2x00_check_reg32_for_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_msix_rsp_q(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 13
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %host_int11 = getelementptr inbounds %struct.device_reg_82xx, ptr %3, i32 0, i32 10
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_int11) #10, !srcloc !379
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %call13 = tail call zeroext i1 @qla2x00_check_reg32_for_disconnect(ptr noundef %7, i32 noundef %9) #10
  br i1 %call13, label %if.end.out_crit_edge, label %if.end15

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla24xx_process_response_queue(ptr noundef %7, ptr noundef nonnull %dev_id) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int11, i32 0) #10, !srcloc !378
  br label %out

out:                                              ; preds = %if.end15, %if.end.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ 1, %out ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_poll(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #1 align 64 {
entry:
  %mb = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb) #10
  %0 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 3
  %tobool.not = icmp eq ptr %dev_id, null
  %3 = call ptr @memset(ptr %mb, i32 255, i32 16)
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %host_int11 = getelementptr inbounds %struct.device_reg_82xx, ptr %7, i32 0, i32 10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_int11) #10, !srcloc !379
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %call13 = tail call zeroext i1 @qla2x00_check_reg32_for_disconnect(ptr noundef %11, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  %or.cond = or i1 %tobool16.not, %call13
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.then17

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then17:                                        ; preds = %if.end
  %host_status = getelementptr inbounds %struct.device_reg_82xx, ptr %7, i32 0, i32 9
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_status) #10, !srcloc !379
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %trunc = trunc i32 %15 to i8
  %16 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %trunc, label %sw.default [
    i8 1, label %if.then17.sw.bb_crit_edge
    i8 2, label %if.then17.sw.bb_crit_edge64
    i8 16, label %if.then17.sw.bb_crit_edge65
    i8 17, label %if.then17.sw.bb_crit_edge66
    i8 18, label %sw.bb20
    i8 19, label %sw.bb34
  ]

if.then17.sw.bb_crit_edge66:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then17.sw.bb_crit_edge65:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then17.sw.bb_crit_edge64:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then17.sw.bb_crit_edge:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.then17.sw.bb_crit_edge, %if.then17.sw.bb_crit_edge64, %if.then17.sw.bb_crit_edge65, %if.then17.sw.bb_crit_edge66
  %shr = lshr i32 %15, 16
  %conv19 = trunc i32 %shr to i16
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %11, i32 0, i32 52
  %17 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i, align 4
  %iobase.i = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store volatile i32 %bf.set.i, ptr %flags.i, align 8
  %mailbox_out1.i = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 119
  %22 = ptrtoint ptr %mailbox_out1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv19, ptr %mailbox_out1.i, align 32
  %mbx_count.i = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 70
  %23 = ptrtoint ptr %mbx_count.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mbx_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp16.i = icmp ugt i8 %24, 1
  br i1 %cmp16.i, label %for.body.preheader.i, label %sw.bb.for.end.i_crit_edge

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.preheader.i:                             ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.device_reg_82xx, ptr %20, i32 0, i32 7, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %wptr.017.i = phi ptr [ %arrayidx.i, %for.body.preheader.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %wptr.017.i) #10, !srcloc !387
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %arrayidx6.i = getelementptr %struct.qla_hw_data, ptr %18, i32 0, i32 119, i32 %indvars.iv.i
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx6.i, align 2
  %incdec.ptr.i = getelementptr i16, ptr %wptr.017.i, i32 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %28 = ptrtoint ptr %mbx_count.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mbx_count.i, align 16
  %30 = zext i8 %29 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %30
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %mcp.i = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 122
  %31 = ptrtoint ptr %mcp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mcp.i, align 64
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.then.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %11, i32 noundef 20563, ptr noundef nonnull @.str.11) #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %shr21 = lshr i32 %15, 16
  %conv22 = trunc i32 %shr21 to i16
  %33 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv22, ptr %mb, align 2
  %arrayidx23 = getelementptr %struct.device_reg_82xx, ptr %7, i32 0, i32 7, i32 1
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx23) #10, !srcloc !387
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %0, align 2
  %arrayidx27 = getelementptr %struct.device_reg_82xx, ptr %7, i32 0, i32 7, i32 2
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx27) #10, !srcloc !387
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %1, align 2
  %arrayidx31 = getelementptr %struct.device_reg_82xx, ptr %7, i32 0, i32 7, i32 3
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx31) #10, !srcloc !387
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %2, align 2
  call void @qla2x00_async_event(ptr noundef %11, ptr noundef nonnull %dev_id, ptr noundef nonnull %mb) #10
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla24xx_process_response_queue(ptr noundef %11, ptr noundef nonnull %dev_id) #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %15, 255
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %11, i32 noundef 45075, ptr noundef nonnull @.str.13, i32 noundef %mul) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb34, %sw.bb20, %if.then.i, %for.end.i.sw.epilog_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int11, i32 0) #10, !srcloc !378
  br label %out

out:                                              ; preds = %sw.epilog, %if.end.out_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_enable_intrs(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @qla82xx_mbx_intr_enable(ptr noundef %3) #10
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %hardware_lock) #10
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %and2 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla8044_wr_reg(ptr noundef %ha, i32 noundef 14536, i32 noundef 0) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tgt_mask_reg = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 257, i32 2
  %6 = ptrtoint ptr %tgt_mask_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tgt_mask_reg, align 8
  %call3 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef %7, i32 noundef 64511)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %hardware_lock) #10
  %interrupts_on = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 52
  %8 = ptrtoint ptr %interrupts_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %interrupts_on, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla82xx_mbx_intr_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla8044_wr_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_disable_intrs(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts_on = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 52
  %0 = ptrtoint ptr %interrupts_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %interrupts_on, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @qla82xx_mbx_intr_disable(ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %hardware_lock) #10
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 54
  %6 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isp_type, align 8
  %and2 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla8044_wr_reg(ptr noundef %ha, i32 noundef 14536, i32 noundef 1) #10
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tgt_mask_reg = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 257, i32 2
  %8 = ptrtoint ptr %tgt_mask_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tgt_mask_reg, align 8
  %call5 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef %9, i32 noundef 1024)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  tail call void @_raw_spin_unlock_irq(ptr noundef %hardware_lock) #10
  %10 = ptrtoint ptr %interrupts_on to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %interrupts_on, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla82xx_mbx_intr_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_init_flags(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 253
  tail call void @__rwlock_init(ptr noundef %hw_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @qla82xx_init_flags.__key) #10
  %qdr_sn_window = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 250
  %0 = ptrtoint ptr %qdr_sn_window to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %qdr_sn_window, align 4
  %ddr_mn_window = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 247
  %1 = ptrtoint ptr %ddr_mn_window to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ddr_mn_window, align 16
  %curr_window = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 246
  %2 = ptrtoint ptr %curr_window to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %curr_window, align 4
  %3 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ha, align 128
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devfn, align 4
  %7 = trunc i32 %6 to i16
  %conv = and i16 %7, 7
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 254
  %8 = ptrtoint ptr %portnum to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %portnum, align 4
  %idxprom = zext i16 %conv to i32
  %arrayidx = getelementptr [8 x %struct.qla82xx_legacy_intr_set], ptr @legacy_intr, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %nx_legacy_intr2 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 257
  %11 = ptrtoint ptr %nx_legacy_intr2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nx_legacy_intr2, align 128
  %tgt_status_reg = getelementptr [8 x %struct.qla82xx_legacy_intr_set], ptr @legacy_intr, i32 0, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %tgt_status_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tgt_status_reg, align 4
  %tgt_status_reg5 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 257, i32 1
  %14 = ptrtoint ptr %tgt_status_reg5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tgt_status_reg5, align 4
  %tgt_mask_reg = getelementptr [8 x %struct.qla82xx_legacy_intr_set], ptr @legacy_intr, i32 0, i32 %idxprom, i32 2
  %15 = ptrtoint ptr %tgt_mask_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tgt_mask_reg, align 4
  %tgt_mask_reg7 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 257, i32 2
  %17 = ptrtoint ptr %tgt_mask_reg7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tgt_mask_reg7, align 8
  %pci_int_reg = getelementptr [8 x %struct.qla82xx_legacy_intr_set], ptr @legacy_intr, i32 0, i32 %idxprom, i32 3
  %18 = ptrtoint ptr %pci_int_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pci_int_reg, align 4
  %pci_int_reg9 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 257, i32 3
  %20 = ptrtoint ptr %pci_int_reg9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pci_int_reg9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_set_drv_active(ptr nocapture noundef readonly %vha) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @qla82xx_wr_32(ptr noundef %1, i32 noundef 136323384, i32 noundef 0)
  %call2 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323384)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %drv_active.0 = phi i32 [ %call2, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %2 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portnum, align 4
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %shl = shl nuw i32 1, %mul
  %or = or i32 %shl, %drv_active.0
  %call3 = tail call i32 @qla82xx_wr_32(ptr noundef %1, i32 noundef 136323384, i32 noundef %or)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_clear_drv_active(ptr noundef %ha) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 136323384)
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 254
  %0 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %portnum, align 4
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %shl = shl nuw i32 1, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %call1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 136323384, i32 noundef %and)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_clear_qsnt_ready(ptr nocapture noundef readonly %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323396)
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %2 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portnum, align 4
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %shl = shl i32 2, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %call1 = tail call i32 @qla82xx_wr_32(ptr noundef %1, i32 noundef 136323396, i32 noundef %and)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_start_firmware(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  %data.i79.i = alloca i64, align 8
  %data.i46.i = alloca i64, align 8
  %high.i.i = alloca i32, align 4
  %low.i.i = alloca i32, align 4
  %addr.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %n.i.i = alloca i32, align 4
  %lnk = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk) #10
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %lnk, align 2, !annotation !392
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %call = tail call i32 @qla82xx_wr_32(ptr noundef %2, i32 noundef 136323788, i32 noundef 1431655765)
  %call1 = tail call i32 @qla82xx_wr_32(ptr noundef %2, i32 noundef 136323664, i32 noundef 0)
  %call2 = tail call i32 @qla82xx_wr_32(ptr noundef %2, i32 noundef 136323900, i32 noundef 0)
  %call3 = tail call i32 @qla82xx_wr_32(ptr noundef %2, i32 noundef 136323240, i32 noundef 0)
  %call4 = tail call i32 @qla82xx_wr_32(ptr noundef %2, i32 noundef 136323244, i32 noundef 0)
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #10
  %5 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %addr.i.i, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i.i) #10
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 128
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  br label %while.body.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i.i.i
  %inc.i.i.i = add nuw nsw i32 %timeout.019.i.i.i, 1
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.while.body.i.i.i_crit_edge, label %while.cond.i.i.i.while.end.i.i.i_crit_edge

while.cond.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

while.cond.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i.while.body.i.i.i_crit_edge, %entry
  %timeout.019.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i, %while.cond.i.i.i.while.body.i.i.i_crit_edge ]
  %call1.i.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %4, i32 noundef 101826576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call1.i.i.i, 1
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %if.end.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout.019.i.i.i)
  %exitcond.i.i.i = icmp eq i32 %timeout.019.i.i.i, 100
  br i1 %exitcond.i.i.i, label %if.then3.i.i.i, label %while.cond.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %4, i32 noundef 136323328) #10
  %portnum.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 254
  %10 = ptrtoint ptr %portnum.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %portnum.i.i.i, align 4
  %conv.i.i.i = zext i16 %11 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %9, i32 noundef 45399, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.qla82xx_rom_lock, i32 noundef %conv.i.i.i, i32 noundef %call4.i.i.i) #10
  br label %qla82xx_rom_lock.exit.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %while.cond.i.i.i.while.end.i.i.i_crit_edge
  %portnum6.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 254
  %12 = ptrtoint ptr %portnum6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %portnum6.i.i.i, align 4
  %conv7.i.i.i = zext i16 %13 to i32
  %call8.i.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 136323328, i32 noundef %conv7.i.i.i) #10
  br label %qla82xx_rom_lock.exit.i.i

qla82xx_rom_lock.exit.i.i:                        ; preds = %while.end.i.i.i, %if.then3.i.i.i
  %call1.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 153092112, i32 noundef 0) #10
  %call2.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 153092116, i32 noundef 0) #10
  %call3.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 153092120, i32 noundef 0) #10
  %call4.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 153092124, i32 noundef 0) #10
  %call5.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 153092128, i32 noundef 0) #10
  %call6.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 153092132, i32 noundef 0) #10
  %call7.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 106954816, i32 noundef 255) #10
  %call8.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 107413504, i32 noundef 0) #10
  %call9.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 107479040, i32 noundef 0) #10
  %call10.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 107544576, i32 noundef 0) #10
  %call11.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 107610112, i32 noundef 0) #10
  %call12.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 107675648, i32 noundef 0) #10
  %call13.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %4, i32 noundef 105910272) #10
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call13.i.i, ptr %val.i.i, align 4
  %and.i.i = and i32 %call13.i.i, -2
  %call14.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 105910272, i32 noundef %and.i.i) #10
  %call15.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 133174016, i32 noundef 1) #10
  %call16.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 142606336, i32 noundef 0) #10
  %call17.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 142606344, i32 noundef 0) #10
  %call18.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 142606352, i32 noundef 0) #10
  %call19.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 142606360, i32 noundef 0) #10
  %call20.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 142606592, i32 noundef 0) #10
  %call21.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 142606848, i32 noundef 0) #10
  %call22.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 118489148, i32 noundef 1) #10
  %call23.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 119537724, i32 noundef 1) #10
  %call24.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 120586300, i32 noundef 1) #10
  %call25.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 121634876, i32 noundef 1) #10
  %call26.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 116391996, i32 noundef 1) #10
  tail call void @msleep(i32 noundef 20) #10
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %15 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  %..i.i = select i1 %tobool.not.i.i, i32 -1, i32 -16777217
  %call29.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 154140680, i32 noundef %..i.i) #10
  %call.i.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 136323328, i32 noundef -1) #10
  %call1.i201.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %4, i32 noundef 101826580) #10
  %18 = ptrtoint ptr %n.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %n.i.i, align 4
  %call30.i.i = call fastcc i32 @qla82xx_rom_fast_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %n.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %cmp.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %qla82xx_rom_lock.exit.i.i.if.then35.i.i_crit_edge

qla82xx_rom_lock.exit.i.i.if.then35.i.i_crit_edge: ; preds = %qla82xx_rom_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i.i

lor.lhs.false.i.i:                                ; preds = %qla82xx_rom_lock.exit.i.i
  %19 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -889271554, i32 %20)
  %cmp31.not.i.i = icmp eq i32 %20, -889271554
  br i1 %cmp31.not.i.i, label %lor.lhs.false32.i.i, label %lor.lhs.false.i.i.if.then35.i.i_crit_edge

lor.lhs.false.i.i.if.then35.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i.i

lor.lhs.false32.i.i:                              ; preds = %lor.lhs.false.i.i
  %call33.i.i = call fastcc i32 @qla82xx_rom_fast_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %n.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %cmp34.not.i.i, label %if.end36.i.i, label %lor.lhs.false32.i.i.if.then35.i.i_crit_edge

lor.lhs.false32.i.i.if.then35.i.i_crit_edge:      ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i.i

if.then35.i.i:                                    ; preds = %lor.lhs.false32.i.i.if.then35.i.i_crit_edge, %lor.lhs.false.i.i.if.then35.i.i_crit_edge, %qla82xx_rom_lock.exit.i.i.if.then35.i.i_crit_edge
  %21 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n.i.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 110, ptr noundef nonnull @.str.97, i32 noundef %22) #10
  br label %if.then.i

if.end36.i.i:                                     ; preds = %lor.lhs.false32.i.i
  %23 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n.i.i, align 4
  %shr.i.i = lshr i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %24)
  %cmp39.i.i = icmp ugt i32 %24, 67108863
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i

if.then40.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 113, ptr noundef nonnull @.str.98, i32 noundef %shr.i.i) #10
  br label %if.then.i

if.end41.i.i:                                     ; preds = %if.end36.i.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 114, ptr noundef nonnull @.str.99, i32 noundef %shr.i.i) #10
  %25 = shl nuw nsw i32 %shr.i.i, 3
  %call8.i203.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #14
  %cmp43.i.i = icmp eq ptr %call8.i203.i.i, null
  br i1 %cmp43.i.i, label %if.then44.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %24)
  %cmp46220.not.i.i = icmp ult i32 %24, 65536
  br i1 %cmp46220.not.i.i, label %for.cond.preheader.i.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.end.i_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %and37.i.i = shl nuw nsw i32 %24, 2
  %mul47.i.i = and i32 %and37.i.i, 262140
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %shr.i.i, i32 1) #10
  br label %for.body.i.i

if.then44.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 268, ptr noundef nonnull @.str.100) #10
  br label %if.then.i

for.body.i.i:                                     ; preds = %if.end58.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0221.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end58.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.0221.i.i, 3
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul47.i.i
  %call48.i.i = call fastcc i32 @qla82xx_rom_fast_read(ptr noundef %4, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %cmp49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %cmp49.not.i.i, label %lor.lhs.false50.i.i, label %for.body.i.i.if.then57.i.i_crit_edge

for.body.i.i.if.then57.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57.i.i

lor.lhs.false50.i.i:                              ; preds = %for.body.i.i
  %add54.i.i = add nuw nsw i32 %add.i.i, 4
  %call55.i.i = call fastcc i32 @qla82xx_rom_fast_read(ptr noundef %4, i32 noundef %add54.i.i, ptr noundef nonnull %addr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %cmp56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %cmp56.not.i.i, label %if.end58.i.i, label %lor.lhs.false50.i.i.if.then57.i.i_crit_edge

lor.lhs.false50.i.i.if.then57.i.i_crit_edge:      ; preds = %lor.lhs.false50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57.i.i

if.then57.i.i:                                    ; preds = %lor.lhs.false50.i.i.if.then57.i.i_crit_edge, %for.body.i.i.if.then57.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i203.i.i) #10
  br label %if.then.i

if.end58.i.i:                                     ; preds = %lor.lhs.false50.i.i
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.crb_addr_pair, ptr %call8.i203.i.i, i32 %i.0221.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i.i, align 8
  %29 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i.i, align 4
  %data.i.i = getelementptr %struct.crb_addr_pair, ptr %call8.i203.i.i, i32 %i.0221.i.i, i32 1
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %data.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0221.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %if.end58.i.i.for.body63.i.i_crit_edge, label %if.end58.i.i.for.body.i.i_crit_edge

if.end58.i.i.for.body.i.i_crit_edge:              ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end58.i.i.for.body63.i.i_crit_edge:            ; preds = %if.end58.i.i
  br label %for.body63.i.i

for.body63.i.i:                                   ; preds = %for.inc102.i.i.for.body63.i.i_crit_edge, %if.end58.i.i.for.body63.i.i_crit_edge
  %i.1223.i.i = phi i32 [ %inc103.i.i, %for.inc102.i.i.for.body63.i.i_crit_edge ], [ 0, %if.end58.i.i.for.body63.i.i_crit_edge ]
  %arrayidx64.i.i = getelementptr %struct.crb_addr_pair, ptr %call8.i203.i.i, i32 %i.1223.i.i
  %32 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx64.i.i, align 8
  %.b.i.i.i = load i1, ptr @qla82xx_crb_table_initialized, align 4
  br i1 %.b.i.i.i, label %for.body63.i.i.if.end.i206.i.i_crit_edge, label %if.then.i.i.i

for.body63.i.i.if.end.i206.i.i_crit_edge:         ; preds = %for.body63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i206.i.i

if.then.i.i.i:                                    ; preds = %for.body63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1078984704, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 49), align 4
  store i32 1097859072, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 40), align 4
  store i32 218103808, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 5), align 4
  store i32 238026752, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 11), align 4
  store i32 236978176, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 10), align 4
  store i32 235929600, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 9), align 4
  store i32 234881024, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 8), align 4
  store i32 1883242496, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 16), align 4
  store i32 1882193920, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 15), align 4
  store i32 1881145344, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 14), align 4
  store i32 1880096768, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 13), align 4
  store i32 1894776832, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 48), align 4
  store i32 148897792, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 47), align 4
  store i32 147849216, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 46), align 4
  store i32 1891631104, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 45), align 4
  store i32 1890582528, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 44), align 4
  store i32 1889533952, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 43), align 4
  store i32 143654912, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 42), align 4
  store i32 142606336, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 53), align 4
  store i32 1108344832, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 51), align 4
  store i32 1090519040, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 29), align 4
  store i32 241172480, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 7), align 4
  store i32 1879048192, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 12), align 4
  store i32 876609536, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 22), align 4
  store i32 877658112, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 21), align 4
  store i32 875560960, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 20), align 4
  store i32 874512384, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 19), align 4
  store i32 873463808, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 18), align 4
  store i32 872415232, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 17), align 4
  store i32 1010827264, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 28), align 4
  store i32 1011875840, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 27), align 4
  store i32 1009778688, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 26), align 4
  store i32 1008730112, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 25), align 4
  store i32 1007681536, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 24), align 4
  store i32 1006632960, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 23), align 4
  store i32 1999634432, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 1), align 4
  store i32 698351616, ptr @crb_addr_xform, align 4
  store i32 454033408, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 6), align 4
  store i32 1107296256, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 50), align 4
  store i32 219152384, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 31), align 4
  store i32 693108736, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 2), align 4
  store i32 709885952, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 3), align 4
  store i32 209715200, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 37), align 4
  store i32 208666624, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 36), align 4
  store i32 207618048, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 35), align 4
  store i32 1096810496, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 34), align 4
  store i32 1972371456, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 39), align 4
  store i32 1971322880, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 38), align 4
  store i32 1904214016, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 58), align 4
  store i32 1080033280, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 56), align 4
  store i32 428867584, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 59), align 4
  store i1 true, ptr @qla82xx_crb_table_initialized, align 4
  br label %if.end.i206.i.i

if.end.i206.i.i:                                  ; preds = %if.then.i.i.i, %for.body63.i.i.if.end.i206.i.i_crit_edge
  %and.i.i.i = and i32 %33, -1048576
  %and1.i205.i.i = and i32 %33, 1048575
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i206.i.i
  %i.021.i.i.i = phi i32 [ 0, %if.end.i206.i.i ], [ %inc.i207.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [60 x i32], ptr @crb_addr_xform, i32 0, i32 %i.021.i.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %and.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %35, %and.i.i.i
  br i1 %cmp2.i.i.i, label %qla82xx_decode_crb_addr.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i207.i.i = add nuw nsw i32 %i.021.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i207.i.i, 60
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.end95.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.if.end95.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i.i

qla82xx_decode_crb_addr.exit.i.i:                 ; preds = %for.body.i.i.i
  %shl.i.i.i = shl i32 %i.021.i.i.i, 20
  %add.i.i.i = or i32 %shl.i.i.i, %and1.i205.i.i
  %add67.i.i = add i32 %add.i.i.i, 100663296
  %36 = zext i32 %add.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %add.i.i.i, label %if.end82.i.i [
    i32 35660284, label %qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge
    i32 53477564, label %qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge99
    i32 53477576, label %qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge100
    i32 1122368, label %qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge101
    i32 1122376, label %qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge102
  ]

qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge102: ; preds = %qla82xx_decode_crb_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc102.i.i

qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge101: ; preds = %qla82xx_decode_crb_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc102.i.i

qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge100: ; preds = %qla82xx_decode_crb_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc102.i.i

qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge99: ; preds = %qla82xx_decode_crb_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc102.i.i

qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge: ; preds = %qla82xx_decode_crb_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc102.i.i

if.end82.i.i:                                     ; preds = %qla82xx_decode_crb_addr.exit.i.i
  %and83.i.i = and i32 %add67.i.i, 267386880
  %37 = zext i32 %and83.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %and83.i.i, label %if.end90.i.i [
    i32 161480704, label %if.end82.i.i.for.inc102.i.i_crit_edge
    i32 102760448, label %if.end82.i.i.for.inc102.i.i_crit_edge103
  ]

if.end82.i.i.for.inc102.i.i_crit_edge103:         ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc102.i.i

if.end82.i.i.for.inc102.i.i_crit_edge:            ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc102.i.i

if.end90.i.i:                                     ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add67.i.i)
  %cmp91.i.i = icmp eq i32 %add67.i.i, -1
  br i1 %cmp91.i.i, label %if.then92.i.i, label %if.end90.i.i.if.end95.i.i_crit_edge

if.end90.i.i.if.end95.i.i_crit_edge:              ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i.i

if.then92.i.i:                                    ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 278, ptr noundef nonnull @.str.101, i32 noundef %33) #10
  br label %for.inc102.i.i

if.end95.i.i:                                     ; preds = %if.end90.i.i.if.end95.i.i_crit_edge, %for.inc.i.i.i.if.end95.i.i_crit_edge
  %add67212215218.i.i = phi i32 [ %add67.i.i, %if.end90.i.i.if.end95.i.i_crit_edge ], [ 100663295, %for.inc.i.i.i.if.end95.i.i_crit_edge ]
  %data97.i.i = getelementptr %struct.crb_addr_pair, ptr %call8.i203.i.i, i32 %i.1223.i.i, i32 1
  %38 = ptrtoint ptr %data97.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data97.i.i, align 4
  %call98.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef %add67212215218.i.i, i32 noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 154140680, i32 %add67212215218.i.i)
  %cmp99.i.i = icmp eq i32 %add67212215218.i.i, 154140680
  br i1 %cmp99.i.i, label %if.then100.i.i, label %if.end95.i.i.if.end101.i.i_crit_edge

if.end95.i.i.if.end101.i.i_crit_edge:             ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101.i.i

if.then100.i.i:                                   ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1000) #10
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.then100.i.i, %if.end95.i.i.if.end101.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc102.i.i

for.inc102.i.i:                                   ; preds = %if.end101.i.i, %if.then92.i.i, %if.end82.i.i.for.inc102.i.i_crit_edge, %if.end82.i.i.for.inc102.i.i_crit_edge103, %qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge, %qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge99, %qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge100, %qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge101, %qla82xx_decode_crb_addr.exit.i.i.for.inc102.i.i_crit_edge102
  %inc103.i.i = add nuw nsw i32 %i.1223.i.i, 1
  %exitcond227.not.i.i = icmp eq i32 %inc103.i.i, %umax.i.i
  br i1 %exitcond227.not.i.i, label %for.inc102.i.i.if.end.i_crit_edge, label %for.inc102.i.i.for.body63.i.i_crit_edge

for.inc102.i.i.for.body63.i.i_crit_edge:          ; preds = %for.inc102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63.i.i

for.inc102.i.i.if.end.i_crit_edge:                ; preds = %for.inc102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then57.i.i, %if.then44.i.i, %if.then40.i.i, %if.then35.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 159, ptr noundef nonnull @.str.88) #10
  br label %if.then

if.end.i:                                         ; preds = %for.inc102.i.i.if.end.i_crit_edge, %for.cond.preheader.i.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i203.i.i) #10
  %call105.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 122683628, i32 noundef 30) #10
  %call106.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 122683468, i32 noundef 8) #10
  %call107.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 123732044, i32 noundef 8) #10
  %call108.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 118489096, i32 noundef 0) #10
  %call109.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 118489100, i32 noundef 0) #10
  %call110.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 119537672, i32 noundef 0) #10
  %call111.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 119537676, i32 noundef 0) #10
  %call112.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 120586248, i32 noundef 0) #10
  %call113.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 120586252, i32 noundef 0) #10
  %call114.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 121634824, i32 noundef 0) #10
  %call115.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 121634828, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 107374000) #10
  %call1.i = tail call i32 @qla82xx_rd_32(ptr noundef %4, i32 noundef 154140680) #10
  %and.i = and i32 %call1.i, -285212673
  %call2.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 154140680, i32 noundef %and.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xfwloadbin to i32))
  %41 = load i32, ptr @ql2xfwloadbin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp3.i = icmp eq i32 %41, 2
  br i1 %cmp3.i, label %if.end.i.try_blob_fw.i_crit_edge, label %if.end5.i

if.end.i.try_blob_fw.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_blob_fw.i

if.end5.i:                                        ; preds = %if.end.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 160, ptr noundef nonnull @.str.89) #10
  %flt_region_bootload.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 220, i32 15
  %42 = ptrtoint ptr %flt_region_bootload.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flt_region_bootload.i.i, align 4
  %shl.i.i = shl i32 %43, 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i46.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %high.i.i) #10
  %44 = ptrtoint ptr %high.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %high.i.i, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low.i.i) #10
  %45 = ptrtoint ptr %low.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %low.i.i, align 4, !annotation !392
  br label %for.body.i48.i

for.body.i48.i:                                   ; preds = %for.inc.i.i.for.body.i48.i_crit_edge, %if.end5.i
  %memaddr.036.i.i = phi i32 [ 65536, %if.end5.i ], [ %add8.i.i, %for.inc.i.i.for.body.i48.i_crit_edge ]
  %flashaddr.035.i.i = phi i32 [ %shl.i.i, %if.end5.i ], [ %add7.i.i, %for.inc.i.i.for.body.i48.i_crit_edge ]
  %i.034.i.i = phi i32 [ 0, %if.end5.i ], [ %inc.i52.i, %for.inc.i.i.for.body.i48.i_crit_edge ]
  %call.i.i = call fastcc i32 @qla82xx_rom_fast_read(ptr noundef %4, i32 noundef %flashaddr.035.i.i, ptr noundef nonnull %low.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i47.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i47.i, label %lor.lhs.false.i51.i, label %for.body.i48.i.if.else.i_crit_edge

for.body.i48.i.if.else.i_crit_edge:               ; preds = %for.body.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

lor.lhs.false.i51.i:                              ; preds = %for.body.i48.i
  %add.i49.i = add i32 %flashaddr.035.i.i, 4
  %call1.i50.i = call fastcc i32 @qla82xx_rom_fast_read(ptr noundef %4, i32 noundef %add.i49.i, ptr noundef nonnull %high.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i50.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %lor.lhs.false.i51.i.if.else.i_crit_edge

lor.lhs.false.i51.i.if.else.i_crit_edge:          ; preds = %lor.lhs.false.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i51.i
  %46 = ptrtoint ptr %high.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %high.i.i, align 4
  %conv.i.i = zext i32 %47 to i64
  %shl3.i.i = shl nuw i64 %conv.i.i, 32
  %48 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %low.i.i, align 4
  %conv4.i.i = zext i32 %49 to i64
  %or.i.i = or i64 %shl3.i.i, %conv4.i.i
  %50 = ptrtoint ptr %data.i46.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %or.i.i, ptr %data.i46.i, align 8
  %conv5.i.i = zext i32 %memaddr.036.i.i to i64
  %51 = call fastcc i32 @qla82xx_pci_mem_write_2M(ptr noundef %4, i64 noundef %conv5.i.i, ptr noundef nonnull %data.i46.i) #10
  %add7.i.i = add i32 %flashaddr.035.i.i, 8
  %add8.i.i = add nuw nsw i32 %memaddr.036.i.i, 8
  %52 = and i32 %i.034.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp9.i.i = icmp eq i32 %52, 0
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then11.i.i, %if.end.i.i.for.inc.i.i_crit_edge
  %inc.i52.i = add nuw nsw i32 %i.034.i.i, 1
  %exitcond.not.i53.i = icmp eq i32 %inc.i52.i, 122880
  br i1 %exitcond.not.i53.i, label %if.then8.i, label %for.inc.i.i.for.body.i48.i_crit_edge

for.inc.i.i.for.body.i48.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i48.i

if.then8.i:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 21474800) #10
  %hw_lock.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 253
  tail call void @_raw_read_lock(ptr noundef %hw_lock.i.i) #10
  %call13.i54.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 118489112, i32 noundef 4128) #10
  %call14.i55.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 154140680, i32 noundef 8388638) #10
  tail call void @_raw_read_unlock(ptr noundef %hw_lock.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %high.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i46.i) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 161, ptr noundef nonnull @.str.90) #10
  br label %if.end

if.else.i:                                        ; preds = %lor.lhs.false.i51.i.if.else.i_crit_edge, %for.body.i48.i.if.else.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %high.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i46.i) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 264, ptr noundef nonnull @.str.91) #10
  br label %try_blob_fw.i

try_blob_fw.i:                                    ; preds = %if.else.i, %if.end.i.try_blob_fw.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 162, ptr noundef nonnull @.str.92) #10
  %call10.i = tail call ptr @qla2x00_request_firmware(ptr noundef %vha) #10
  %hablob.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 256
  %54 = ptrtoint ptr %hablob.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call10.i, ptr %hablob.i, align 4
  %tobool.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %try_blob_fw.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 163, ptr noundef nonnull @.str.93) #10
  br label %if.then

if.end12.i:                                       ; preds = %try_blob_fw.i
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw, align 4
  %hablob.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %56, i32 0, i32 256
  %57 = ptrtoint ptr %hablob.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hablob.i.i, align 4
  %fw1.i.i = getelementptr inbounds %struct.fw_blob, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %fw1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw1.i.i, align 4
  %fw_type2.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %56, i32 0, i32 261
  %61 = ptrtoint ptr %fw_type2.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 4, ptr %fw_type2.i.i, align 4
  %data.i58.i = getelementptr inbounds %struct.firmware, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %data.i58.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i58.i, align 4
  %arrayidx.i59.i = getelementptr i8, ptr %63, i32 16680
  %64 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %arrayidx.i59.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2018915346, i32 %65)
  %cmp6.not.i.i = icmp eq i32 %65, 2018915346
  br i1 %cmp6.not.i.i, label %if.end10.i.i, label %if.end12.i.if.then15.i_crit_edge

if.end12.i.if.then15.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

if.end10.i.i:                                     ; preds = %if.end12.i
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %67)
  %cmp11.i.i = icmp ult i32 %67, 4194303
  br i1 %cmp11.i.i, label %if.end10.i.i.if.then15.i_crit_edge, label %if.end10.i.i.if.end20.i_crit_edge

if.end10.i.i.if.end20.i_crit_edge:                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.end10.i.i.if.then15.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end10.i.i.if.then15.i_crit_edge, %if.end12.i.if.then15.i_crit_edge
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %hablob.i63.i = getelementptr inbounds %struct.qla_hw_data, ptr %69, i32 0, i32 256
  %70 = ptrtoint ptr %hablob.i63.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hablob.i63.i, align 4
  %fw1.i64.i = getelementptr inbounds %struct.fw_blob, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %fw1.i64.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fw1.i64.i, align 4
  %fw_type2.i65.i = getelementptr inbounds %struct.qla_hw_data, ptr %69, i32 0, i32 261
  %74 = ptrtoint ptr %fw_type2.i65.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 3, ptr %fw_type2.i65.i, align 4
  %75 = load ptr, ptr %fw1.i64.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i.i, align 4
  %chip_revision.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %69, i32 0, i32 193
  %78 = ptrtoint ptr %chip_revision.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %chip_revision.i.i.i, align 8
  %num_entries.i.i.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %num_entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_entries.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp15.not.i.i.i.i = icmp eq i32 %81, 0
  br i1 %cmp15.not.i.i.i.i, label %if.then15.i.if.then18.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.then15.i.if.then18.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.then15.i
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #10
  %83 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %77, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #10
  %entry_size.i.i.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %77, i32 0, i32 2
  %86 = ptrtoint ptr %entry_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %entry_size.i.i.i.i, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #10
  %umax.i.i.i.i = tail call i32 @llvm.umax.i32(i32 %82, i32 1) #10
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.016.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.if.then18.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.if.then18.i_crit_edge:           ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.016.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %mul.i.i.i.i = mul i32 %i.016.i.i.i.i, %88
  %add.i.i.i.i = add i32 %mul.i.i.i.i, %85
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %77, i32 %add.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i32, ptr %arrayidx1.i.i.i.i, i32 8
  %89 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %add.ptr.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp2.i.i.i.i = icmp eq i32 %90, 0
  br i1 %cmp2.i.i.i.i, label %qla82xx_get_table_desc.exit.i.i.i, label %for.cond.i.i.i.i

qla82xx_get_table_desc.exit.i.i.i:                ; preds = %for.body.i.i.i.i
  %tobool.not.i.i66.i = icmp eq ptr %arrayidx1.i.i.i.i, null
  br i1 %tobool.not.i.i66.i, label %qla82xx_get_table_desc.exit.i.i.i.if.then18.i_crit_edge, label %if.end.i.i67.i

qla82xx_get_table_desc.exit.i.i.i.if.then18.i_crit_edge: ; preds = %qla82xx_get_table_desc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

if.end.i.i67.i:                                   ; preds = %qla82xx_get_table_desc.exit.i.i.i
  %num_entries.i.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %arrayidx1.i.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_entries.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp36.not.i.i.i = icmp eq i32 %92, 0
  br i1 %cmp36.not.i.i.i, label %if.end.i.i67.i.if.then18.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i67.i.if.then18.i_crit_edge:             ; preds = %if.end.i.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i67.i
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #10
  %94 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx1.i.i.i.i, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #10
  %entry_size.i.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %arrayidx1.i.i.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %entry_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %entry_size.i.i.i, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #10
  %100 = and i16 %79, 255
  %conv5.i.i.i = zext i16 %100 to i32
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %93, i32 1) #10
  br label %for.body.i.i70.i

for.body.i.i70.i:                                 ; preds = %for.inc.i.i73.i.for.body.i.i70.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.037.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i71.i, %for.inc.i.i73.i.for.body.i.i70.i_crit_edge ]
  %mul.i.i.i = mul i32 %i.037.i.i.i, %99
  %add.i.i68.i = add i32 %mul.i.i.i, %96
  %arrayidx.i.i69.i = getelementptr i8, ptr %77, i32 %add.i.i68.i
  %add.ptr3.i.i.i = getelementptr i32, ptr %arrayidx.i.i69.i, i32 10
  %101 = ptrtoint ptr %add.ptr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr3.i.i.i, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %conv5.i.i.i)
  %cmp6.i.i.i = icmp eq i32 %103, %conv5.i.i.i
  br i1 %cmp6.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i70.i.for.inc.i.i73.i_crit_edge

for.body.i.i70.i.for.inc.i.i73.i_crit_edge:       ; preds = %for.body.i.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i73.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i70.i
  %add.ptr.i.i.i = getelementptr i32, ptr %arrayidx.i.i69.i, i32 11
  %104 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i.i.i, align 4
  %106 = and i32 %105, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool9.not.i.i.i = icmp eq i32 %106, 0
  br i1 %tobool9.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i73.i_crit_edge, label %qla82xx_set_product_offset.exit.i.i

land.lhs.true.i.i.i.for.inc.i.i73.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i73.i

for.inc.i.i73.i:                                  ; preds = %land.lhs.true.i.i.i.for.inc.i.i73.i_crit_edge, %for.body.i.i70.i.for.inc.i.i73.i_crit_edge
  %inc.i.i71.i = add nuw i32 %i.037.i.i.i, 1
  %exitcond.not.i.i72.i = icmp eq i32 %inc.i.i71.i, %umax.i.i.i
  br i1 %exitcond.not.i.i72.i, label %for.inc.i.i73.i.if.then18.i_crit_edge, label %for.inc.i.i73.i.for.body.i.i70.i_crit_edge

for.inc.i.i73.i.for.body.i.i70.i_crit_edge:       ; preds = %for.inc.i.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i70.i

for.inc.i.i73.i.if.then18.i_crit_edge:            ; preds = %for.inc.i.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

qla82xx_set_product_offset.exit.i.i:              ; preds = %land.lhs.true.i.i.i
  %file_prd_off.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %69, i32 0, i32 262
  %107 = ptrtoint ptr %file_prd_off.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add.i.i68.i, ptr %file_prd_off.i.i.i, align 32
  %108 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 819200, i32 %109)
  %cmp11.i74.i = icmp ult i32 %109, 819200
  br i1 %cmp11.i74.i, label %qla82xx_set_product_offset.exit.i.i.if.then18.i_crit_edge, label %qla82xx_set_product_offset.exit.i.i.if.end20.i_crit_edge

qla82xx_set_product_offset.exit.i.i.if.end20.i_crit_edge: ; preds = %qla82xx_set_product_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

qla82xx_set_product_offset.exit.i.i.if.then18.i_crit_edge: ; preds = %qla82xx_set_product_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

if.then18.i:                                      ; preds = %qla82xx_set_product_offset.exit.i.i.if.then18.i_crit_edge, %for.inc.i.i73.i.if.then18.i_crit_edge, %if.end.i.i67.i.if.then18.i_crit_edge, %qla82xx_get_table_desc.exit.i.i.i.if.then18.i_crit_edge, %for.cond.i.i.i.i.if.then18.i_crit_edge, %if.then15.i.if.then18.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 164, ptr noundef nonnull @.str.94) #10
  br label %if.then

if.end20.i:                                       ; preds = %qla82xx_set_product_offset.exit.i.i.if.end20.i_crit_edge, %if.end10.i.i.if.end20.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i79.i) #10
  %fw_type.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 261
  %110 = ptrtoint ptr %fw_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %fw_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %111)
  %cmp.i.i80.i = icmp eq i8 %111, 3
  br i1 %cmp.i.i80.i, label %if.then.i.i82.i, label %if.end20.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge

if.end20.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_get_bootld_offset.exit.i.i

if.then.i.i82.i:                                  ; preds = %if.end20.i
  %112 = ptrtoint ptr %hablob.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hablob.i, align 4
  %fw.i.i.i.i = getelementptr inbounds %struct.fw_blob, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %fw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fw.i.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.firmware, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i.i.i.i, align 4
  %file_prd_off.i.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 262
  %118 = ptrtoint ptr %file_prd_off.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %file_prd_off.i.i.i.i, align 32
  %arrayidx.i.i.i.i = getelementptr i8, ptr %117, i32 %119
  %add.ptr.i.i.i81.i = getelementptr i32, ptr %arrayidx.i.i.i.i, i32 27
  %120 = ptrtoint ptr %add.ptr.i.i.i81.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %add.ptr.i.i.i81.i, align 1
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #10
  %num_entries.i.i.i.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %117, i32 0, i32 1
  %123 = ptrtoint ptr %num_entries.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_entries.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp15.not.i.i.i.i.i = icmp eq i32 %124, 0
  br i1 %cmp15.not.i.i.i.i.i, label %if.then.i.i82.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i.i

if.then.i.i82.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge: ; preds = %if.then.i.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_get_bootld_offset.exit.i.i

for.body.lr.ph.i.i.i.i.i:                         ; preds = %if.then.i.i82.i
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #10
  %126 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %117, align 4
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #10
  %entry_size.i.i.i.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %117, i32 0, i32 2
  %129 = ptrtoint ptr %entry_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %entry_size.i.i.i.i.i, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #10
  %umax.i.i.i.i.i = tail call i32 @llvm.umax.i32(i32 %125, i32 1) #10
  br label %for.body.i.i.i.i.i

for.cond.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i
  %inc.i.i.i.i.i = add nuw i32 %i.016.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %for.cond.i.i.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge, label %for.cond.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.cond.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

for.cond.i.i.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_get_bootld_offset.exit.i.i

for.body.i.i.i.i.i:                               ; preds = %for.cond.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i.i
  %i.016.i.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i.i ], [ %inc.i.i.i.i.i, %for.cond.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %mul.i.i.i.i.i = mul i32 %i.016.i.i.i.i.i, %131
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, %128
  %arrayidx1.i.i.i.i.i = getelementptr i8, ptr %117, i32 %add.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %arrayidx1.i.i.i.i.i, i32 8
  %132 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %add.ptr.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %133)
  %cmp2.i.i.i.i.i = icmp eq i32 %133, 100663296
  br i1 %cmp2.i.i.i.i.i, label %qla82xx_get_table_desc.exit.i.i.i.i, label %for.cond.i.i.i.i.i

qla82xx_get_table_desc.exit.i.i.i.i:              ; preds = %for.body.i.i.i.i.i
  %tobool.not.i.i.i.i = icmp eq ptr %arrayidx1.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %qla82xx_get_table_desc.exit.i.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge, label %qla82xx_get_data_desc.exit.i.i.i

qla82xx_get_table_desc.exit.i.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge: ; preds = %qla82xx_get_table_desc.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_get_bootld_offset.exit.i.i

qla82xx_get_data_desc.exit.i.i.i:                 ; preds = %qla82xx_get_table_desc.exit.i.i.i.i
  %134 = ptrtoint ptr %arrayidx1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx1.i.i.i.i.i, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #10
  %entry_size.i.i.i83.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %arrayidx1.i.i.i.i.i, i32 0, i32 2
  %137 = ptrtoint ptr %entry_size.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %entry_size.i.i.i83.i, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #10
  %mul.i.i.i84.i = mul i32 %139, %122
  %add.i.i.i85.i = add i32 %mul.i.i.i84.i, %136
  %arrayidx2.i.i.i.i = getelementptr i8, ptr %117, i32 %add.i.i.i85.i
  %tobool.not.i.i86.i = icmp eq ptr %arrayidx2.i.i.i.i, null
  br i1 %tobool.not.i.i86.i, label %qla82xx_get_data_desc.exit.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge, label %if.then2.i.i.i

qla82xx_get_data_desc.exit.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge: ; preds = %qla82xx_get_data_desc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_get_bootld_offset.exit.i.i

if.then2.i.i.i:                                   ; preds = %qla82xx_get_data_desc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #10
  br label %qla82xx_get_bootld_offset.exit.i.i

qla82xx_get_bootld_offset.exit.i.i:               ; preds = %if.then2.i.i.i, %qla82xx_get_data_desc.exit.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge, %qla82xx_get_table_desc.exit.i.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge, %for.cond.i.i.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge, %if.then.i.i82.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge, %if.end20.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge
  %offset.0.i.i.i = phi i32 [ %142, %if.then2.i.i.i ], [ 65536, %qla82xx_get_data_desc.exit.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge ], [ 65536, %if.end20.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge ], [ 65536, %qla82xx_get_table_desc.exit.i.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge ], [ 65536, %if.then.i.i82.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge ], [ 65536, %for.cond.i.i.i.i.i.qla82xx_get_bootld_offset.exit.i.i_crit_edge ]
  %143 = ptrtoint ptr %hablob.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hablob.i, align 4
  %fw.i.i.i = getelementptr inbounds %struct.fw_blob, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fw.i.i.i, align 4
  %data.i.i87.i = getelementptr inbounds %struct.firmware, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %data.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data.i.i87.i, align 4
  %arrayidx.i.i88.i = getelementptr i8, ptr %148, i32 %offset.0.i.i.i
  br label %for.body.i93.i

for.body.i93.i:                                   ; preds = %if.end.i97.i.for.body.i93.i_crit_edge, %qla82xx_get_bootld_offset.exit.i.i
  %flashaddr.0127.i.i = phi i32 [ 65536, %qla82xx_get_bootld_offset.exit.i.i ], [ %add.i94.i, %if.end.i97.i.for.body.i93.i_crit_edge ]
  %i.0126.i.i = phi i32 [ 0, %qla82xx_get_bootld_offset.exit.i.i ], [ %inc.i95.i, %if.end.i97.i.for.body.i93.i_crit_edge ]
  %arrayidx.i89.i = getelementptr i64, ptr %arrayidx.i.i88.i, i32 %i.0126.i.i
  %149 = ptrtoint ptr %arrayidx.i89.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx.i89.i, align 8
  %151 = tail call i64 @llvm.bswap.i64(i64 %150) #10
  %152 = ptrtoint ptr %data.i79.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %data.i79.i, align 8
  %conv.i90.i = zext i32 %flashaddr.0127.i.i to i64
  %call1.i91.i = call fastcc i32 @qla82xx_pci_mem_write_2M(ptr noundef %4, i64 noundef %conv.i90.i, ptr noundef nonnull %data.i79.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91.i)
  %tobool.not.i92.i = icmp eq i32 %call1.i91.i, 0
  br i1 %tobool.not.i92.i, label %if.end.i97.i, label %for.body.i93.i.if.end24.i_crit_edge

for.body.i93.i.if.end24.i_crit_edge:              ; preds = %for.body.i93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.end.i97.i:                                     ; preds = %for.body.i93.i
  %add.i94.i = add nuw nsw i32 %flashaddr.0127.i.i, 8
  %inc.i95.i = add nuw nsw i32 %i.0126.i.i, 1
  %exitcond.not.i96.i = icmp eq i32 %inc.i95.i, 122880
  br i1 %exitcond.not.i96.i, label %for.end.i98.i, label %if.end.i97.i.for.body.i93.i_crit_edge

if.end.i97.i.for.body.i93.i_crit_edge:            ; preds = %if.end.i97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i93.i

for.end.i98.i:                                    ; preds = %if.end.i97.i
  %153 = ptrtoint ptr %fw_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %fw_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %154)
  %cmp.i47.i.i = icmp eq i8 %154, 3
  br i1 %cmp.i47.i.i, label %if.then.i56.i.i, label %for.end.i98.i.if.end3.i.i.i_crit_edge

for.end.i98.i.if.end3.i.i.i_crit_edge:            ; preds = %for.end.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i.i

if.then.i56.i.i:                                  ; preds = %for.end.i98.i
  %155 = ptrtoint ptr %hablob.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hablob.i, align 4
  %fw.i.i49.i.i = getelementptr inbounds %struct.fw_blob, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %fw.i.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fw.i.i49.i.i, align 4
  %data.i.i50.i.i = getelementptr inbounds %struct.firmware, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %data.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data.i.i50.i.i, align 4
  %file_prd_off.i.i51.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 262
  %161 = ptrtoint ptr %file_prd_off.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %file_prd_off.i.i51.i.i, align 32
  %arrayidx.i.i52.i.i = getelementptr i8, ptr %160, i32 %162
  %add.ptr.i.i53.i.i = getelementptr i32, ptr %arrayidx.i.i52.i.i, i32 29
  %163 = ptrtoint ptr %add.ptr.i.i53.i.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %add.ptr.i.i53.i.i, align 1
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #10
  %num_entries.i.i.i54.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %160, i32 0, i32 1
  %166 = ptrtoint ptr %num_entries.i.i.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num_entries.i.i.i54.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp15.not.i.i.i55.i.i = icmp eq i32 %167, 0
  br i1 %cmp15.not.i.i.i55.i.i, label %if.then.i56.i.i.if.end3.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i59.i.i

if.then.i56.i.i.if.end3.i.i.i_crit_edge:          ; preds = %if.then.i56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i.i

for.body.lr.ph.i.i.i59.i.i:                       ; preds = %if.then.i56.i.i
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #10
  %169 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %160, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #10
  %entry_size.i.i.i57.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %160, i32 0, i32 2
  %172 = ptrtoint ptr %entry_size.i.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %entry_size.i.i.i57.i.i, align 4
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #10
  %umax.i.i.i58.i.i = tail call i32 @llvm.umax.i32(i32 %168, i32 1) #10
  br label %for.body.i.i.i69.i.i

for.cond.i.i.i62.i.i:                             ; preds = %for.body.i.i.i69.i.i
  %inc.i.i.i60.i.i = add nuw i32 %i.016.i.i.i63.i.i, 1
  %exitcond.not.i.i.i61.i.i = icmp eq i32 %inc.i.i.i60.i.i, %umax.i.i.i58.i.i
  br i1 %exitcond.not.i.i.i61.i.i, label %for.cond.i.i.i62.i.i.if.end3.i.i.i_crit_edge, label %for.cond.i.i.i62.i.i.for.body.i.i.i69.i.i_crit_edge

for.cond.i.i.i62.i.i.for.body.i.i.i69.i.i_crit_edge: ; preds = %for.cond.i.i.i62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i69.i.i

for.cond.i.i.i62.i.i.if.end3.i.i.i_crit_edge:     ; preds = %for.cond.i.i.i62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i.i

for.body.i.i.i69.i.i:                             ; preds = %for.cond.i.i.i62.i.i.for.body.i.i.i69.i.i_crit_edge, %for.body.lr.ph.i.i.i59.i.i
  %i.016.i.i.i63.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i59.i.i ], [ %inc.i.i.i60.i.i, %for.cond.i.i.i62.i.i.for.body.i.i.i69.i.i_crit_edge ]
  %mul.i.i.i64.i.i = mul i32 %i.016.i.i.i63.i.i, %174
  %add.i.i.i65.i.i = add i32 %mul.i.i.i64.i.i, %171
  %arrayidx1.i.i.i66.i.i = getelementptr i8, ptr %160, i32 %add.i.i.i65.i.i
  %add.ptr.i.i.i67.i.i = getelementptr i32, ptr %arrayidx1.i.i.i66.i.i, i32 8
  %175 = ptrtoint ptr %add.ptr.i.i.i67.i.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %add.ptr.i.i.i67.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %176)
  %cmp2.i.i.i68.i.i = icmp eq i32 %176, 117440512
  br i1 %cmp2.i.i.i68.i.i, label %qla82xx_get_table_desc.exit.i.i71.i.i, label %for.cond.i.i.i62.i.i

qla82xx_get_table_desc.exit.i.i71.i.i:            ; preds = %for.body.i.i.i69.i.i
  %tobool.not.i.i70.i.i = icmp eq ptr %arrayidx1.i.i.i66.i.i, null
  br i1 %tobool.not.i.i70.i.i, label %qla82xx_get_table_desc.exit.i.i71.i.i.if.end3.i.i.i_crit_edge, label %qla82xx_get_data_desc.exit.i77.i.i

qla82xx_get_table_desc.exit.i.i71.i.i.if.end3.i.i.i_crit_edge: ; preds = %qla82xx_get_table_desc.exit.i.i71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i.i

qla82xx_get_data_desc.exit.i77.i.i:               ; preds = %qla82xx_get_table_desc.exit.i.i71.i.i
  %177 = ptrtoint ptr %arrayidx1.i.i.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx1.i.i.i66.i.i, align 4
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #10
  %entry_size.i.i72.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %arrayidx1.i.i.i66.i.i, i32 0, i32 2
  %180 = ptrtoint ptr %entry_size.i.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %entry_size.i.i72.i.i, align 4
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #10
  %mul.i.i73.i.i = mul i32 %182, %165
  %add.i.i74.i.i = add i32 %mul.i.i73.i.i, %179
  %arrayidx2.i.i75.i.i = getelementptr i8, ptr %160, i32 %add.i.i74.i.i
  %tobool.not.i76.i.i = icmp eq ptr %arrayidx2.i.i75.i.i, null
  br i1 %tobool.not.i76.i.i, label %qla82xx_get_data_desc.exit.i77.i.i.if.end3.i.i.i_crit_edge, label %if.then2.i78.i.i

qla82xx_get_data_desc.exit.i77.i.i.if.end3.i.i.i_crit_edge: ; preds = %qla82xx_get_data_desc.exit.i77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i.i

if.then2.i78.i.i:                                 ; preds = %qla82xx_get_data_desc.exit.i77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %size.i.i.i = getelementptr inbounds %struct.qla82xx_uri_data_desc, ptr %arrayidx2.i.i75.i.i, i32 0, i32 1
  br label %qla82xx_get_fw_size.exit.i.i

if.end3.i.i.i:                                    ; preds = %qla82xx_get_data_desc.exit.i77.i.i.if.end3.i.i.i_crit_edge, %qla82xx_get_table_desc.exit.i.i71.i.i.if.end3.i.i.i_crit_edge, %for.cond.i.i.i62.i.i.if.end3.i.i.i_crit_edge, %if.then.i56.i.i.if.end3.i.i.i_crit_edge, %for.end.i98.i.if.end3.i.i.i_crit_edge
  %183 = ptrtoint ptr %hablob.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hablob.i, align 4
  %fw.i80.i.i = getelementptr inbounds %struct.fw_blob, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %fw.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %fw.i80.i.i, align 4
  %data.i81.i.i = getelementptr inbounds %struct.firmware, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %data.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %data.i81.i.i, align 4
  %arrayidx.i82.i.i = getelementptr i8, ptr %188, i32 4097036
  br label %qla82xx_get_fw_size.exit.i.i

qla82xx_get_fw_size.exit.i.i:                     ; preds = %if.end3.i.i.i, %if.then2.i78.i.i
  %.sink.in.i.i = phi ptr [ %size.i.i.i, %if.then2.i78.i.i ], [ %arrayidx.i82.i.i, %if.end3.i.i.i ]
  %189 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 1
  %190 = tail call i32 @llvm.bswap.i32(i32 %.sink.i.i) #10
  %div45.i.i = lshr i32 %190, 3
  br i1 %cmp.i47.i.i, label %if.then.i93.i.i, label %qla82xx_get_fw_size.exit.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge

qla82xx_get_fw_size.exit.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge: ; preds = %qla82xx_get_fw_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_get_fw_offs.exit.i.i

if.then.i93.i.i:                                  ; preds = %qla82xx_get_fw_size.exit.i.i
  %191 = ptrtoint ptr %hablob.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hablob.i, align 4
  %fw.i.i86.i.i = getelementptr inbounds %struct.fw_blob, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %fw.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %fw.i.i86.i.i, align 4
  %data.i.i87.i.i = getelementptr inbounds %struct.firmware, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %data.i.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %data.i.i87.i.i, align 4
  %file_prd_off.i.i88.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 262
  %197 = ptrtoint ptr %file_prd_off.i.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %file_prd_off.i.i88.i.i, align 32
  %arrayidx.i.i89.i.i = getelementptr i8, ptr %196, i32 %198
  %add.ptr.i.i90.i.i = getelementptr i32, ptr %arrayidx.i.i89.i.i, i32 29
  %199 = ptrtoint ptr %add.ptr.i.i90.i.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %add.ptr.i.i90.i.i, align 1
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #10
  %num_entries.i.i.i91.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %196, i32 0, i32 1
  %202 = ptrtoint ptr %num_entries.i.i.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %num_entries.i.i.i91.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp15.not.i.i.i92.i.i = icmp eq i32 %203, 0
  br i1 %cmp15.not.i.i.i92.i.i, label %if.then.i93.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i96.i.i

if.then.i93.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge: ; preds = %if.then.i93.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_get_fw_offs.exit.i.i

for.body.lr.ph.i.i.i96.i.i:                       ; preds = %if.then.i93.i.i
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #10
  %205 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %196, align 4
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #10
  %entry_size.i.i.i94.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %196, i32 0, i32 2
  %208 = ptrtoint ptr %entry_size.i.i.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %entry_size.i.i.i94.i.i, align 4
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #10
  %umax.i.i.i95.i.i = tail call i32 @llvm.umax.i32(i32 %204, i32 1) #10
  br label %for.body.i.i.i106.i.i

for.cond.i.i.i99.i.i:                             ; preds = %for.body.i.i.i106.i.i
  %inc.i.i.i97.i.i = add nuw i32 %i.016.i.i.i100.i.i, 1
  %exitcond.not.i.i.i98.i.i = icmp eq i32 %inc.i.i.i97.i.i, %umax.i.i.i95.i.i
  br i1 %exitcond.not.i.i.i98.i.i, label %for.cond.i.i.i99.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge, label %for.cond.i.i.i99.i.i.for.body.i.i.i106.i.i_crit_edge

for.cond.i.i.i99.i.i.for.body.i.i.i106.i.i_crit_edge: ; preds = %for.cond.i.i.i99.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i106.i.i

for.cond.i.i.i99.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i99.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_get_fw_offs.exit.i.i

for.body.i.i.i106.i.i:                            ; preds = %for.cond.i.i.i99.i.i.for.body.i.i.i106.i.i_crit_edge, %for.body.lr.ph.i.i.i96.i.i
  %i.016.i.i.i100.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i96.i.i ], [ %inc.i.i.i97.i.i, %for.cond.i.i.i99.i.i.for.body.i.i.i106.i.i_crit_edge ]
  %mul.i.i.i101.i.i = mul i32 %i.016.i.i.i100.i.i, %210
  %add.i.i.i102.i.i = add i32 %mul.i.i.i101.i.i, %207
  %arrayidx1.i.i.i103.i.i = getelementptr i8, ptr %196, i32 %add.i.i.i102.i.i
  %add.ptr.i.i.i104.i.i = getelementptr i32, ptr %arrayidx1.i.i.i103.i.i, i32 8
  %211 = ptrtoint ptr %add.ptr.i.i.i104.i.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %add.ptr.i.i.i104.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %212)
  %cmp2.i.i.i105.i.i = icmp eq i32 %212, 117440512
  br i1 %cmp2.i.i.i105.i.i, label %qla82xx_get_table_desc.exit.i.i108.i.i, label %for.cond.i.i.i99.i.i

qla82xx_get_table_desc.exit.i.i108.i.i:           ; preds = %for.body.i.i.i106.i.i
  %tobool.not.i.i107.i.i = icmp eq ptr %arrayidx1.i.i.i103.i.i, null
  br i1 %tobool.not.i.i107.i.i, label %qla82xx_get_table_desc.exit.i.i108.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge, label %qla82xx_get_data_desc.exit.i114.i.i

qla82xx_get_table_desc.exit.i.i108.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge: ; preds = %qla82xx_get_table_desc.exit.i.i108.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_get_fw_offs.exit.i.i

qla82xx_get_data_desc.exit.i114.i.i:              ; preds = %qla82xx_get_table_desc.exit.i.i108.i.i
  %213 = ptrtoint ptr %arrayidx1.i.i.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx1.i.i.i103.i.i, align 4
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #10
  %entry_size.i.i109.i.i = getelementptr inbounds %struct.qla82xx_uri_table_desc, ptr %arrayidx1.i.i.i103.i.i, i32 0, i32 2
  %216 = ptrtoint ptr %entry_size.i.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %entry_size.i.i109.i.i, align 4
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #10
  %mul.i.i110.i.i = mul i32 %218, %201
  %add.i.i111.i.i = add i32 %mul.i.i110.i.i, %215
  %arrayidx2.i.i112.i.i = getelementptr i8, ptr %196, i32 %add.i.i111.i.i
  %tobool.not.i113.i.i = icmp eq ptr %arrayidx2.i.i112.i.i, null
  br i1 %tobool.not.i113.i.i, label %qla82xx_get_data_desc.exit.i114.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge, label %if.then2.i115.i.i

qla82xx_get_data_desc.exit.i114.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge: ; preds = %qla82xx_get_data_desc.exit.i114.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_get_fw_offs.exit.i.i

if.then2.i115.i.i:                                ; preds = %qla82xx_get_data_desc.exit.i114.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %arrayidx2.i.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx2.i.i112.i.i, align 4
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #10
  br label %qla82xx_get_fw_offs.exit.i.i

qla82xx_get_fw_offs.exit.i.i:                     ; preds = %if.then2.i115.i.i, %qla82xx_get_data_desc.exit.i114.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge, %qla82xx_get_table_desc.exit.i.i108.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge, %for.cond.i.i.i99.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge, %if.then.i93.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge, %qla82xx_get_fw_size.exit.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge
  %offset.0.i116.i.i = phi i32 [ %221, %if.then2.i115.i.i ], [ 1048576, %qla82xx_get_data_desc.exit.i114.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge ], [ 1048576, %qla82xx_get_fw_size.exit.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge ], [ 1048576, %qla82xx_get_table_desc.exit.i.i108.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge ], [ 1048576, %if.then.i93.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge ], [ 1048576, %for.cond.i.i.i99.i.i.qla82xx_get_fw_offs.exit.i.i_crit_edge ]
  %222 = ptrtoint ptr %hablob.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hablob.i, align 4
  %fw.i118.i.i = getelementptr inbounds %struct.fw_blob, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %fw.i118.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %fw.i118.i.i, align 4
  %data.i119.i.i = getelementptr inbounds %struct.firmware, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %data.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %data.i119.i.i, align 4
  %arrayidx.i120.i.i = getelementptr i8, ptr %227, i32 %offset.0.i116.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %190)
  %cmp5128.not.i.i = icmp ult i32 %190, 8
  br i1 %cmp5128.not.i.i, label %qla82xx_get_fw_offs.exit.i.i.if.then23.i_crit_edge, label %for.body7.preheader.i.i

qla82xx_get_fw_offs.exit.i.i.if.then23.i_crit_edge: ; preds = %qla82xx_get_fw_offs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

for.body7.preheader.i.i:                          ; preds = %qla82xx_get_fw_offs.exit.i.i
  %umax.i99.i = tail call i32 @llvm.umax.i32(i32 %div45.i.i, i32 1) #10
  br label %for.body7.i.i

for.body7.i.i:                                    ; preds = %if.end13.i.i.for.body7.i.i_crit_edge, %for.body7.preheader.i.i
  %flashaddr.1130.i.i = phi i32 [ %add14.i.i, %if.end13.i.i.for.body7.i.i_crit_edge ], [ 274432, %for.body7.preheader.i.i ]
  %i.1129.i.i = phi i32 [ %inc16.i.i, %if.end13.i.i.for.body7.i.i_crit_edge ], [ 0, %for.body7.preheader.i.i ]
  %arrayidx8.i.i = getelementptr i64, ptr %arrayidx.i120.i.i, i32 %i.1129.i.i
  %228 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %arrayidx8.i.i, align 8
  %230 = tail call i64 @llvm.bswap.i64(i64 %229) #10
  %231 = ptrtoint ptr %data.i79.i to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 %230, ptr %data.i79.i, align 8
  %conv9.i.i = zext i32 %flashaddr.1130.i.i to i64
  %call10.i100.i = call fastcc i32 @qla82xx_pci_mem_write_2M(ptr noundef %4, i64 noundef %conv9.i.i, ptr noundef nonnull %data.i79.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i100.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i100.i, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %for.body7.i.i.if.end24.i_crit_edge

for.body7.i.i.if.end24.i_crit_edge:               ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.end13.i.i:                                     ; preds = %for.body7.i.i
  %add14.i.i = add i32 %flashaddr.1130.i.i, 8
  %inc16.i.i = add nuw nsw i32 %i.1129.i.i, 1
  %exitcond135.not.i.i = icmp eq i32 %inc16.i.i, %umax.i99.i
  br i1 %exitcond135.not.i.i, label %if.end13.i.i.if.then23.i_crit_edge, label %if.end13.i.i.for.body7.i.i_crit_edge

if.end13.i.i.for.body7.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i.i

if.end13.i.i.if.then23.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.i:                                      ; preds = %if.end13.i.i.if.then23.i_crit_edge, %qla82xx_get_fw_offs.exit.i.i.if.then23.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %232(i32 noundef 21474800) #10
  %call18.i101.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 136323580, i32 noundef 305419896) #10
  %hw_lock.i102.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 253
  tail call void @_raw_read_lock(ptr noundef %hw_lock.i102.i) #10
  %call19.i103.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 118489112, i32 noundef 4128) #10
  %call20.i104.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 154140680, i32 noundef 8388638) #10
  tail call void @_raw_read_unlock(ptr noundef %hw_lock.i102.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i79.i) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 165, ptr noundef nonnull @.str.95) #10
  br label %if.end

if.end24.i:                                       ; preds = %for.body7.i.i.if.end24.i_crit_edge, %for.body.i93.i.if.end24.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i79.i) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 166, ptr noundef nonnull @.str.96) #10
  %fw.i = getelementptr inbounds %struct.fw_blob, ptr %call10.i, i32 0, i32 2
  %233 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %fw.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.end24.i, %if.then18.i, %if.then11.i, %if.then.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 167, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end:                                           ; preds = %if.then23.i, %if.then8.i
  %234 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %2, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %235, i32 0, i32 44, i32 8
  %236 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %driver_data.i.i.i, align 4
  %hw_lock.i = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 253
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i.do.body.i_crit_edge, %if.end
  %retries.0.i = phi i32 [ 60, %if.end ], [ %dec.i, %sw.epilog.i.do.body.i_crit_edge ]
  tail call void @_raw_read_lock(ptr noundef %hw_lock.i) #10
  %call1.i24 = tail call i32 @qla82xx_rd_32(ptr noundef %2, i32 noundef 136323664) #10
  tail call void @_raw_read_unlock(ptr noundef %hw_lock.i) #10
  %238 = zext i32 %call1.i24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %238, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call1.i24, label %sw.epilog.i [
    i32 65281, label %do.body.i.if.end9_crit_edge
    i32 61455, label %do.body.i.if.end9_crit_edge104
  ]

do.body.i.if.end9_crit_edge104:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body.i.if.end9_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.epilog.i:                                      ; preds = %do.body.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %237, i32 noundef 168, ptr noundef nonnull @.str.106, i32 noundef %call1.i24, i32 noundef %retries.0.i) #10
  tail call void @msleep(i32 noundef 500) #10
  %dec.i = add nsw i32 %retries.0.i, -1
  %tobool.not.i25 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i25, label %if.then8, label %sw.epilog.i.do.body.i_crit_edge

sw.epilog.i.do.body.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then8:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %237, i32 noundef 169, ptr noundef nonnull @.str.107, i32 noundef %call1.i24) #10
  %call3.i = tail call i32 @qla82xx_rd_32(ptr noundef %2, i32 noundef 154140764) #10
  tail call void @_raw_read_lock(ptr noundef %hw_lock.i) #10
  %call5.i = tail call i32 @qla82xx_wr_32(ptr noundef %2, i32 noundef 136323664, i32 noundef 65535) #10
  tail call void @_raw_read_unlock(ptr noundef %hw_lock.i) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 170, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end9:                                          ; preds = %do.body.i.if.end9_crit_edge, %do.body.i.if.end9_crit_edge104
  %239 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %2, align 128
  %call10 = call i32 @pcie_capability_read_word(ptr noundef %240, i32 noundef 18, ptr noundef nonnull %lnk) #10
  %241 = ptrtoint ptr %lnk to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %lnk, align 2
  %243 = lshr i16 %242, 4
  %244 = and i16 %243, 63
  %and = zext i16 %244 to i32
  %link_width = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 255
  %245 = ptrtoint ptr %link_width to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %and, ptr %link_width, align 8
  %246 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %2, align 128
  %driver_data.i.i.i27 = getelementptr inbounds %struct.pci_dev, ptr %247, i32 0, i32 44, i32 8
  %248 = ptrtoint ptr %driver_data.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %driver_data.i.i.i27, align 4
  br label %do.body.i31

do.body.i31:                                      ; preds = %sw.epilog.i34.do.body.i31_crit_edge, %if.end9
  %retries.0.i29 = phi i32 [ 60, %if.end9 ], [ %dec.i32, %sw.epilog.i34.do.body.i31_crit_edge ]
  call void @_raw_read_lock(ptr noundef %hw_lock.i) #10
  %call1.i30 = call i32 @qla82xx_rd_32(ptr noundef %2, i32 noundef 136323900) #10
  call void @_raw_read_unlock(ptr noundef %hw_lock.i) #10
  %250 = zext i32 %call1.i30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %250, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %call1.i30, label %sw.epilog.i34 [
    i32 65281, label %do.body.i31.cleanup_crit_edge
    i32 61455, label %do.body.i31.cleanup_crit_edge105
  ]

do.body.i31.cleanup_crit_edge105:                 ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i31.cleanup_crit_edge:                    ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.i34:                                    ; preds = %do.body.i31
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %249, i32 noundef 171, ptr noundef nonnull @.str.108, i32 noundef %call1.i30, i32 noundef %retries.0.i29) #10
  call void @msleep(i32 noundef 500) #10
  %dec.i32 = add nsw i32 %retries.0.i29, -1
  %tobool.not.i33 = icmp eq i32 %dec.i32, 0
  br i1 %tobool.not.i33, label %do.end.i35, label %sw.epilog.i34.do.body.i31_crit_edge

sw.epilog.i34.do.body.i31_crit_edge:              ; preds = %sw.epilog.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i31

do.end.i35:                                       ; preds = %sw.epilog.i34
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %249, i32 noundef 172, ptr noundef nonnull @.str.109, i32 noundef %call1.i30) #10
  call void @_raw_read_lock(ptr noundef %hw_lock.i) #10
  %call4.i = call i32 @qla82xx_wr_32(ptr noundef %2, i32 noundef 136323900, i32 noundef 65535) #10
  call void @_raw_read_unlock(ptr noundef %hw_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i35, %do.body.i31.cleanup_crit_edge, %do.body.i31.cleanup_crit_edge105, %if.then8, %if.then
  %retval.0 = phi i32 [ 258, %if.then ], [ 258, %if.then8 ], [ 258, %do.end.i35 ], [ 0, %do.body.i31.cleanup_crit_edge ], [ 0, %do.body.i31.cleanup_crit_edge105 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla82xx_read_optrom_data(ptr noundef %vha, ptr noundef returned writeonly %buf, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #1 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !392
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp2.not.i = icmp ult i32 %length, 4
  br i1 %cmp2.not.i, label %entry.qla82xx_read_flash_data.exit_crit_edge, label %for.body.preheader.i

entry.qla82xx_read_flash_data.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_read_flash_data.exit

for.body.preheader.i:                             ; preds = %entry
  %div1.i = lshr i32 %length, 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.04.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %faddr.addr.03.i = phi i32 [ %add.i, %if.end.i.for.body.i_crit_edge ], [ %offset, %for.body.preheader.i ]
  %call.i = call fastcc i32 @qla82xx_rom_fast_read(ptr noundef %4, i32 noundef %faddr.addr.03.i, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 262, ptr noundef nonnull @.str.110) #10
  br label %qla82xx_read_flash_data.exit

if.end.i:                                         ; preds = %for.body.i
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %arrayidx.i = getelementptr i32, ptr %buf, i32 %i.04.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %add.i = add i32 %faddr.addr.03.i, 4
  %exitcond.not.i = icmp eq i32 %inc.i, %div1.i
  br i1 %exitcond.not.i, label %if.end.i.qla82xx_read_flash_data.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.qla82xx_read_flash_data.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_read_flash_data.exit

qla82xx_read_flash_data.exit:                     ; preds = %if.end.i.qla82xx_read_flash_data.exit_crit_edge, %if.then.i, %entry.qla82xx_read_flash_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 8
  tail call void @scsi_unblock_requests(ptr noundef %10) #10
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_write_optrom_data(ptr noundef %vha, ptr nocapture noundef readonly %buf, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #1 align 64 {
entry:
  %val.i129.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %1) #10
  %shr = lshr i32 %length, 2
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %fdt_block_size.i = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 216
  %4 = ptrtoint ptr %fdt_block_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fdt_block_size.i, align 4
  %sub.i = add i32 %5, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i, align 4, !annotation !392
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @ql82xx_rom_lock_d(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %qla82xx_unprotect_flash.exit.thread.i, label %if.end.i.i

qla82xx_unprotect_flash.exit.thread.i:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %10, i32 noundef 45076, ptr noundef nonnull @.str.118) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  br label %if.then8.i

if.end.i.i:                                       ; preds = %entry
  %call2.i.i = call fastcc i32 @qla82xx_read_status_reg(ptr noundef %3, ptr noundef nonnull %val.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.qla82xx_unprotect_flash.exit.i_crit_edge, label %if.end5.i.i

if.end.i.i.qla82xx_unprotect_flash.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_unprotect_flash.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %12, -61
  %call6.i.i = tail call fastcc i32 @qla82xx_write_status_reg(ptr noundef %3, i32 noundef %and.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end5.i.i.if.end10.i.i_crit_edge

if.end5.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i = or i32 %12, 60
  %call9.i.i = tail call fastcc i32 @qla82xx_write_status_reg(ptr noundef %3, i32 noundef %or.i.i) #10
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then8.i.i, %if.end5.i.i.if.end10.i.i_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 128
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 154206212, i32 noundef 4) #10
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 128
  %driver_data.i.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i.i.i.i, align 4
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge, %if.end10.i.i
  %timeout.0.i.i.i.i = phi i32 [ 0, %if.end10.i.i ], [ %inc.i.i.i.i, %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  %done.0.i.i.i.i = phi i32 [ 0, %if.end10.i.i ], [ %and.i.i.i.i, %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %done.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %while.body.i.i.i.i, label %while.cond.i.i.i.i.qla82xx_unprotect_flash.exit.i_crit_edge

while.cond.i.i.i.i.qla82xx_unprotect_flash.exit.i_crit_edge: ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_unprotect_flash.exit.i

while.body.i.i.i.i:                               ; preds = %while.cond.i.i.i.i
  %call1.i.i.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %3, i32 noundef 154140676) #10
  %and.i.i.i.i = and i32 %call1.i.i.i.i, 2
  %inc.i.i.i.i = add nuw nsw i32 %timeout.0.i.i.i.i, 1
  %exitcond.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 100
  br i1 %exitcond.i.i.i.i, label %if.then13.i.i, label %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge

while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.i.i

if.then13.i.i:                                    ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %20, i32 noundef 45067, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %16, i32 noundef 45071, ptr noundef nonnull @.str.121) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %10, i32 noundef 45077, ptr noundef nonnull @.str.119) #10
  br label %qla82xx_unprotect_flash.exit.i

qla82xx_unprotect_flash.exit.i:                   ; preds = %if.then13.i.i, %while.cond.i.i.i.i.qla82xx_unprotect_flash.exit.i_crit_edge, %if.end.i.i.qla82xx_unprotect_flash.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i.qla82xx_unprotect_flash.exit.i_crit_edge ], [ %call6.i.i, %if.then13.i.i ], [ %call6.i.i, %while.cond.i.i.i.i.qla82xx_unprotect_flash.exit.i_crit_edge ]
  %call.i.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 136323328, i32 noundef -1) #10
  %call1.i28.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %3, i32 noundef 101826580) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool7.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool7.not.i, label %for.cond.preheader.i, label %qla82xx_unprotect_flash.exit.i.if.then8.i_crit_edge

qla82xx_unprotect_flash.exit.i.if.then8.i_crit_edge: ; preds = %qla82xx_unprotect_flash.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

for.cond.preheader.i:                             ; preds = %qla82xx_unprotect_flash.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp10182.not.i = icmp ult i32 %length, 4
  br i1 %cmp10182.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then8.i:                                       ; preds = %qla82xx_unprotect_flash.exit.i.if.then8.i_crit_edge, %qla82xx_unprotect_flash.exit.thread.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45084, ptr noundef nonnull @.str.112) #10
  br label %qla82xx_write_flash_data.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %dwptr.addr.0185.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %buf, %for.cond.preheader.i.for.body.i_crit_edge ]
  %liter.0184.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %faddr.addr.0183.i = phi i32 [ %add38.i, %for.inc.i.for.body.i_crit_edge ], [ %offset, %for.cond.preheader.i.for.body.i_crit_edge ]
  %and11.i = and i32 %faddr.addr.0183.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp12.i = icmp eq i32 %and11.i, 0
  br i1 %cmp12.i, label %if.then13.i, label %for.body.i.if.end33.i_crit_edge

for.body.i.if.end33.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then13.i:                                      ; preds = %for.body.i
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 128
  %driver_data.i.i.i94.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44, i32 8
  %23 = ptrtoint ptr %driver_data.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i94.i, align 4
  %call1.i95.i = tail call fastcc i32 @ql82xx_rom_lock_d(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95.i)
  %cmp.i96.i = icmp slt i32 %call1.i95.i, 0
  br i1 %cmp.i96.i, label %qla82xx_erase_sector.exit.thread.i, label %if.end.i100.i

qla82xx_erase_sector.exit.thread.i:               ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %24, i32 noundef 45081, ptr noundef nonnull @.str.118) #10
  br label %if.then16.i

if.end.i100.i:                                    ; preds = %if.then13.i
  %call2.i98.i = tail call fastcc i32 @qla82xx_flash_set_write_enable(ptr noundef %3) #10
  %call3.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 154206216, i32 noundef %faddr.addr.0183.i) #10
  %call4.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 154206224, i32 noundef 3) #10
  %call5.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 154206212, i32 noundef 216) #10
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 128
  %driver_data.i.i.i.i99.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i.i99.i, align 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i100.i
  %timeout.0.i.i.i = phi i32 [ 0, %if.end.i100.i ], [ %inc.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %done.0.i.i.i = phi i32 [ 0, %if.end.i100.i ], [ %and.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %done.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %if.end8.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %call1.i.i101.i = tail call i32 @qla82xx_rd_32(ptr noundef %3, i32 noundef 154140676) #10
  %and.i.i.i = and i32 %call1.i.i101.i, 2
  %inc.i.i.i = add nuw nsw i32 %timeout.0.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %inc.i.i.i, 100
  br i1 %exitcond.i.i.i, label %if.then7.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.i

if.then7.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %28, i32 noundef 45067, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %24, i32 noundef 45082, ptr noundef nonnull @.str.121) #10
  br label %qla82xx_erase_sector.exit.i

if.end8.i.i:                                      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i102.i = tail call fastcc i32 @qla82xx_flash_wait_write_finish(ptr noundef %3) #10
  br label %qla82xx_erase_sector.exit.i

qla82xx_erase_sector.exit.i:                      ; preds = %if.end8.i.i, %if.then7.i.i
  %ret.0.i103.i = phi i32 [ -1, %if.then7.i.i ], [ %call9.i102.i, %if.end8.i.i ]
  %call.i.i104.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 136323328, i32 noundef -1) #10
  %call1.i22.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %3, i32 noundef 101826580) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i103.i)
  %tobool15.not.i = icmp eq i32 %ret.0.i103.i, 0
  br i1 %tobool15.not.i, label %qla82xx_erase_sector.exit.i.if.end33.i_crit_edge, label %qla82xx_erase_sector.exit.i.if.then16.i_crit_edge

qla82xx_erase_sector.exit.i.if.then16.i_crit_edge: ; preds = %qla82xx_erase_sector.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i

qla82xx_erase_sector.exit.i.if.end33.i_crit_edge: ; preds = %qla82xx_erase_sector.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then16.i:                                      ; preds = %qla82xx_erase_sector.exit.i.if.then16.i_crit_edge, %qla82xx_erase_sector.exit.thread.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45085, ptr noundef nonnull @.str.113, i32 noundef %faddr.addr.0183.i) #10
  br label %for.end.i

if.end33.i:                                       ; preds = %qla82xx_erase_sector.exit.i.if.end33.i_crit_edge, %for.body.i.if.end33.i_crit_edge
  %29 = ptrtoint ptr %dwptr.addr.0185.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dwptr.addr.0185.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 128
  %driver_data.i.i.i106.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i106.i, align 4
  %call1.i107.i = tail call fastcc i32 @ql82xx_rom_lock_d(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107.i)
  %cmp.i108.i = icmp slt i32 %call1.i107.i, 0
  br i1 %cmp.i108.i, label %qla82xx_write_flash_dword.exit.thread.i, label %if.end.i112.i

qla82xx_write_flash_dword.exit.thread.i:          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %35, i32 noundef 45073, ptr noundef nonnull @.str.125) #10
  br label %if.then36.i

if.end.i112.i:                                    ; preds = %if.end33.i
  %call2.i110.i = tail call fastcc i32 @qla82xx_flash_set_write_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i110.i)
  %cmp3.i111.i = icmp slt i32 %call2.i110.i, 0
  br i1 %cmp3.i111.i, label %if.end.i112.i.qla82xx_write_flash_dword.exit.i_crit_edge, label %if.end5.i116.i

if.end.i112.i.qla82xx_write_flash_dword.exit.i_crit_edge: ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_write_flash_dword.exit.i

if.end5.i116.i:                                   ; preds = %if.end.i112.i
  %call6.i113.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 154206220, i32 noundef %31) #10
  %call7.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 154206216, i32 noundef %faddr.addr.0183.i) #10
  %call8.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 154206224, i32 noundef 3) #10
  %call9.i114.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 154206212, i32 noundef 2) #10
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 128
  %driver_data.i.i.i.i115.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44, i32 8
  %38 = ptrtoint ptr %driver_data.i.i.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i.i115.i, align 4
  br label %while.cond.i.i120.i

while.cond.i.i120.i:                              ; preds = %while.body.i.i125.i.while.cond.i.i120.i_crit_edge, %if.end5.i116.i
  %timeout.0.i.i117.i = phi i32 [ 0, %if.end5.i116.i ], [ %inc.i.i123.i, %while.body.i.i125.i.while.cond.i.i120.i_crit_edge ]
  %done.0.i.i118.i = phi i32 [ 0, %if.end5.i116.i ], [ %and.i.i122.i, %while.body.i.i125.i.while.cond.i.i120.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i.i118.i)
  %cmp.i.i119.i = icmp eq i32 %done.0.i.i118.i, 0
  br i1 %cmp.i.i119.i, label %while.body.i.i125.i, label %while.cond.i.i120.i.qla82xx_wait_rom_busy.exit.i.i_crit_edge

while.cond.i.i120.i.qla82xx_wait_rom_busy.exit.i.i_crit_edge: ; preds = %while.cond.i.i120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_wait_rom_busy.exit.i.i

while.body.i.i125.i:                              ; preds = %while.cond.i.i120.i
  %call1.i.i121.i = tail call i32 @qla82xx_rd_32(ptr noundef %3, i32 noundef 154140676) #10
  %and.i.i122.i = and i32 %call1.i.i121.i, 4
  %inc.i.i123.i = add nuw nsw i32 %timeout.0.i.i117.i, 1
  %exitcond.i.i124.i = icmp eq i32 %inc.i.i123.i, 100
  br i1 %exitcond.i.i124.i, label %if.then.i.i.i, label %while.body.i.i125.i.while.cond.i.i120.i_crit_edge

while.body.i.i125.i.while.cond.i.i120.i_crit_edge: ; preds = %while.body.i.i125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i120.i

if.then.i.i.i:                                    ; preds = %while.body.i.i125.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %39, i32 noundef 45066, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.4) #10
  br label %qla82xx_wait_rom_busy.exit.i.i

qla82xx_wait_rom_busy.exit.i.i:                   ; preds = %if.then.i.i.i, %while.cond.i.i120.i.qla82xx_wait_rom_busy.exit.i.i_crit_edge
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 128
  %driver_data.i.i.i30.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44, i32 8
  %42 = ptrtoint ptr %driver_data.i.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i30.i.i, align 4
  br label %while.cond.i34.i.i

while.cond.i34.i.i:                               ; preds = %while.body.i39.i.i.while.cond.i34.i.i_crit_edge, %qla82xx_wait_rom_busy.exit.i.i
  %timeout.0.i31.i.i = phi i32 [ 0, %qla82xx_wait_rom_busy.exit.i.i ], [ %inc.i37.i.i, %while.body.i39.i.i.while.cond.i34.i.i_crit_edge ]
  %done.0.i32.i.i = phi i32 [ 0, %qla82xx_wait_rom_busy.exit.i.i ], [ %and.i36.i.i, %while.body.i39.i.i.while.cond.i34.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i32.i.i)
  %cmp.i33.i.i = icmp eq i32 %done.0.i32.i.i, 0
  br i1 %cmp.i33.i.i, label %while.body.i39.i.i, label %if.end13.i.i

while.body.i39.i.i:                               ; preds = %while.cond.i34.i.i
  %call1.i35.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %3, i32 noundef 154140676) #10
  %and.i36.i.i = and i32 %call1.i35.i.i, 2
  %inc.i37.i.i = add nuw nsw i32 %timeout.0.i31.i.i, 1
  %exitcond.i38.i.i = icmp eq i32 %inc.i37.i.i, 100
  br i1 %exitcond.i38.i.i, label %if.then12.i.i, label %while.body.i39.i.i.while.cond.i34.i.i_crit_edge

while.body.i39.i.i.while.cond.i34.i.i_crit_edge:  ; preds = %while.body.i39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i34.i.i

if.then12.i.i:                                    ; preds = %while.body.i39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %43, i32 noundef 45067, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %35, i32 noundef 45074, ptr noundef nonnull @.str.121) #10
  br label %qla82xx_write_flash_dword.exit.i

if.end13.i.i:                                     ; preds = %while.cond.i34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i.i = tail call fastcc i32 @qla82xx_flash_wait_write_finish(ptr noundef %3) #10
  br label %qla82xx_write_flash_dword.exit.i

qla82xx_write_flash_dword.exit.i:                 ; preds = %if.end13.i.i, %if.then12.i.i, %if.end.i112.i.qla82xx_write_flash_dword.exit.i_crit_edge
  %ret.0.i126.i = phi i32 [ -1, %if.end.i112.i.qla82xx_write_flash_dword.exit.i_crit_edge ], [ -1, %if.then12.i.i ], [ %call14.i.i, %if.end13.i.i ]
  %call.i.i127.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 136323328, i32 noundef -1) #10
  %call1.i41.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %3, i32 noundef 101826580) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i126.i)
  %tobool35.not.i = icmp eq i32 %ret.0.i126.i, 0
  br i1 %tobool35.not.i, label %for.inc.i, label %qla82xx_write_flash_dword.exit.i.if.then36.i_crit_edge

qla82xx_write_flash_dword.exit.i.if.then36.i_crit_edge: ; preds = %qla82xx_write_flash_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36.i

if.then36.i:                                      ; preds = %qla82xx_write_flash_dword.exit.i.if.then36.i_crit_edge, %qla82xx_write_flash_dword.exit.thread.i
  %44 = ptrtoint ptr %dwptr.addr.0185.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dwptr.addr.0185.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45088, ptr noundef nonnull @.str.116, i32 noundef %faddr.addr.0183.i, i32 noundef %45) #10
  br label %for.end.i

for.inc.i:                                        ; preds = %qla82xx_write_flash_dword.exit.i
  %inc.i = add nuw nsw i32 %liter.0184.i, 1
  %add38.i = add i32 %faddr.addr.0183.i, 4
  %incdec.ptr.i = getelementptr i32, ptr %dwptr.addr.0185.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then36.i, %if.then16.i, %for.cond.preheader.i.for.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i129.i) #10
  %46 = ptrtoint ptr %val.i129.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %val.i129.i, align 4, !annotation !392
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 128
  %driver_data.i.i.i130.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44, i32 8
  %49 = ptrtoint ptr %driver_data.i.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i.i130.i, align 4
  %call1.i131.i = tail call fastcc i32 @ql82xx_rom_lock_d(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131.i)
  %cmp.i132.i = icmp slt i32 %call1.i131.i, 0
  br i1 %cmp.i132.i, label %qla82xx_protect_flash.exit.thread.i, label %if.end.i136.i

qla82xx_protect_flash.exit.thread.i:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %50, i32 noundef 45078, ptr noundef nonnull @.str.118) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i129.i) #10
  br label %if.then41.i

if.end.i136.i:                                    ; preds = %for.end.i
  %call2.i134.i = call fastcc i32 @qla82xx_read_status_reg(ptr noundef %3, ptr noundef nonnull %val.i129.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i134.i)
  %cmp3.i135.i = icmp slt i32 %call2.i134.i, 0
  br i1 %cmp3.i135.i, label %if.end.i136.i.qla82xx_protect_flash.exit.i_crit_edge, label %if.end5.i140.i

if.end.i136.i.qla82xx_protect_flash.exit.i_crit_edge: ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_protect_flash.exit.i

if.end5.i140.i:                                   ; preds = %if.end.i136.i
  %51 = ptrtoint ptr %val.i129.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i129.i, align 4
  %or.i137.i = or i32 %52, 60
  %call6.i138.i = tail call fastcc i32 @qla82xx_write_status_reg(ptr noundef %3, i32 noundef %or.i137.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i138.i)
  %cmp7.i139.i = icmp slt i32 %call6.i138.i, 0
  br i1 %cmp7.i139.i, label %if.then8.i141.i, label %if.end5.i140.i.if.end9.i.i_crit_edge

if.end5.i140.i.if.end9.i.i_crit_edge:             ; preds = %if.end5.i140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

if.then8.i141.i:                                  ; preds = %if.end5.i140.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %50, i32 noundef 45079, ptr noundef nonnull @.str.126) #10
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then8.i141.i, %if.end5.i140.i.if.end9.i.i_crit_edge
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 128
  %driver_data.i.i.i.i142.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44, i32 8
  %55 = ptrtoint ptr %driver_data.i.i.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i.i.i142.i, align 4
  %call1.i.i143.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 154206212, i32 noundef 4) #10
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 128
  %driver_data.i.i.i.i.i144.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44, i32 8
  %59 = ptrtoint ptr %driver_data.i.i.i.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_data.i.i.i.i.i144.i, align 4
  br label %while.cond.i.i.i148.i

while.cond.i.i.i148.i:                            ; preds = %while.body.i.i.i153.i.while.cond.i.i.i148.i_crit_edge, %if.end9.i.i
  %timeout.0.i.i.i145.i = phi i32 [ 0, %if.end9.i.i ], [ %inc.i.i.i151.i, %while.body.i.i.i153.i.while.cond.i.i.i148.i_crit_edge ]
  %done.0.i.i.i146.i = phi i32 [ 0, %if.end9.i.i ], [ %and.i.i.i150.i, %while.body.i.i.i153.i.while.cond.i.i.i148.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i.i.i146.i)
  %cmp.i.i.i147.i = icmp eq i32 %done.0.i.i.i146.i, 0
  br i1 %cmp.i.i.i147.i, label %while.body.i.i.i153.i, label %while.cond.i.i.i148.i.qla82xx_protect_flash.exit.i_crit_edge

while.cond.i.i.i148.i.qla82xx_protect_flash.exit.i_crit_edge: ; preds = %while.cond.i.i.i148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_protect_flash.exit.i

while.body.i.i.i153.i:                            ; preds = %while.cond.i.i.i148.i
  %call1.i.i.i149.i = tail call i32 @qla82xx_rd_32(ptr noundef %3, i32 noundef 154140676) #10
  %and.i.i.i150.i = and i32 %call1.i.i.i149.i, 2
  %inc.i.i.i151.i = add nuw nsw i32 %timeout.0.i.i.i145.i, 1
  %exitcond.i.i.i152.i = icmp eq i32 %inc.i.i.i151.i, 100
  br i1 %exitcond.i.i.i152.i, label %if.then12.i154.i, label %while.body.i.i.i153.i.while.cond.i.i.i148.i_crit_edge

while.body.i.i.i153.i.while.cond.i.i.i148.i_crit_edge: ; preds = %while.body.i.i.i153.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.i148.i

if.then12.i154.i:                                 ; preds = %while.body.i.i.i153.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %60, i32 noundef 45067, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %56, i32 noundef 45071, ptr noundef nonnull @.str.121) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %50, i32 noundef 45080, ptr noundef nonnull @.str.119) #10
  br label %qla82xx_protect_flash.exit.i

qla82xx_protect_flash.exit.i:                     ; preds = %if.then12.i154.i, %while.cond.i.i.i148.i.qla82xx_protect_flash.exit.i_crit_edge, %if.end.i136.i.qla82xx_protect_flash.exit.i_crit_edge
  %ret.0.i155.i = phi i32 [ -1, %if.end.i136.i.qla82xx_protect_flash.exit.i_crit_edge ], [ %call6.i138.i, %if.then12.i154.i ], [ %call6.i138.i, %while.cond.i.i.i148.i.qla82xx_protect_flash.exit.i_crit_edge ]
  %call.i.i156.i = tail call i32 @qla82xx_wr_32(ptr noundef %3, i32 noundef 136323328, i32 noundef -1) #10
  %call1.i27.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %3, i32 noundef 101826580) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i129.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i155.i)
  %tobool40.not.i = icmp eq i32 %ret.0.i155.i, 0
  br i1 %tobool40.not.i, label %qla82xx_protect_flash.exit.i.qla82xx_write_flash_data.exit.thread_crit_edge, label %qla82xx_protect_flash.exit.i.if.then41.i_crit_edge

qla82xx_protect_flash.exit.i.if.then41.i_crit_edge: ; preds = %qla82xx_protect_flash.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41.i

qla82xx_protect_flash.exit.i.qla82xx_write_flash_data.exit.thread_crit_edge: ; preds = %qla82xx_protect_flash.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_write_flash_data.exit.thread

if.then41.i:                                      ; preds = %qla82xx_protect_flash.exit.i.if.then41.i_crit_edge, %qla82xx_protect_flash.exit.thread.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45089, ptr noundef nonnull @.str.117) #10
  br label %qla82xx_write_flash_data.exit.thread

qla82xx_write_flash_data.exit.thread:             ; preds = %if.then41.i, %qla82xx_protect_flash.exit.i.qla82xx_write_flash_data.exit.thread_crit_edge, %if.then8.i
  %61 = phi i32 [ 258, %if.then8.i ], [ 258, %if.then41.i ], [ 0, %qla82xx_protect_flash.exit.i.qla82xx_write_flash_data.exit.thread_crit_edge ]
  %62 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host, align 8
  tail call void @scsi_unblock_requests(ptr noundef %63) #10
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_start_iocbs(ptr nocapture noundef readonly %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %ring_index = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ring_index, align 4
  %inc = add i16 %7, 1
  store i16 %inc, ptr %ring_index, align 4
  %length = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %9)
  %cmp = icmp eq i16 %inc, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ring_index to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %ring_index, align 4
  %ring = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring, align 4
  %ring_ptr = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %ring_ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %ring_ptr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ring_ptr5 = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %ring_ptr5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring_ptr5, align 4
  %incdec.ptr = getelementptr %struct.cmd_a64_entry_t, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %ring_ptr5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %16 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %portnum, align 4
  %conv6 = zext i16 %17 to i32
  %shl = shl nuw nsw i32 %conv6, 5
  %id = getelementptr inbounds %struct.req_que, ptr %5, i32 0, i32 12
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %id, align 4
  %conv7 = zext i16 %19 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %20 = ptrtoint ptr %ring_index to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ring_index, align 4
  %conv11 = zext i16 %21 to i32
  %shl12 = shl nuw i32 %conv11, 16
  %or = or i32 %shl, %shl8
  %or9 = or i32 %or, %shl12
  %or13 = or i32 %or9, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xdbwr to i32))
  %22 = load i32, ptr @ql2xdbwr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  %nxdb_wr_ptr16 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 244
  %23 = ptrtoint ptr %nxdb_wr_ptr16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nxdb_wr_ptr16, align 4
  br i1 %tobool.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %24 to i32
  %call = tail call i32 @qla82xx_wr_32(ptr noundef %1, i32 noundef %25, i32 noundef %or13)
  br label %if.end24

if.else15:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %or13) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %26) #10, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %nxdb_rd_ptr = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 243
  %27 = ptrtoint ptr %nxdb_rd_ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nxdb_rd_ptr, align 32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !379
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %or13)
  %cmp18.not43 = icmp eq i32 %30, %or13
  br i1 %cmp18.not43, label %if.else15.if.end24_crit_edge, label %if.else15.while.body_crit_edge

if.else15.while.body_crit_edge:                   ; preds = %if.else15
  br label %while.body

if.else15.if.end24_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else15.while.body_crit_edge
  %31 = ptrtoint ptr %nxdb_wr_ptr16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nxdb_wr_ptr16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %26) #10, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !396
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %nxdb_rd_ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nxdb_rd_ptr, align 32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !379
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %cmp18.not = icmp eq i32 %36, %or13
  br i1 %cmp18.not, label %while.body.if.end24_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.if.end24_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %while.body.if.end24_crit_edge, %if.else15.if.end24_crit_edge, %if.then14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_wait_for_state_change(ptr nocapture noundef readonly %vha, i32 noundef %curr_state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  br label %do.body

do.body:                                          ; preds = %qla82xx_idc_lock.exit.do.body_crit_edge, %entry
  tail call void @msleep(i32 noundef 1000) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i)
  %cmp56.i = icmp eq i32 %call55.i, 1
  br i1 %cmp56.i, label %do.body.qla82xx_idc_lock.exit_crit_edge, label %do.body.if.end.i_crit_edge

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  br label %if.end.i

do.body.qla82xx_idc_lock.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.end.i:                                         ; preds = %if.end46.i.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  %total.057.i = phi i32 [ %add.i, %if.end46.i.if.end.i_crit_edge ], [ 0, %do.body.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i)
  %cmp4.i = icmp ugt i32 %total.057.i, 1999
  br i1 %cmp4.i, label %land.rhs.i, label %if.end46.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b53.i = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, label %if.then11.i, !prof !383

land.rhs.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit

if.end46.i:                                       ; preds = %if.end.i
  %add.i = add nuw nsw i32 %total.057.i, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end46.i.qla82xx_idc_lock.exit_crit_edge, label %if.end46.i.if.end.i_crit_edge

if.end46.i.if.end.i_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end46.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

qla82xx_idc_lock.exit:                            ; preds = %if.end46.i.qla82xx_idc_lock.exit_crit_edge, %if.then11.i, %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, %do.body.qla82xx_idc_lock.exit_crit_edge
  %call1 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323392)
  %call.i5 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  %cmp = icmp eq i32 %call1, %curr_state
  br i1 %cmp, label %qla82xx_idc_lock.exit.do.body_crit_edge, label %do.end

qla82xx_idc_lock.exit.do.body_crit_edge:          ; preds = %qla82xx_idc_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %qla82xx_idc_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8xxx_dev_failed_handler(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 184, ptr noundef nonnull @.str.21) #10
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323384) #10
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %4 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %5 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %shl.i = shl nuw i32 1, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call.i, %neg.i
  %call1.i = tail call i32 @qla82xx_wr_32(ptr noundef %1, i32 noundef 136323384, i32 noundef %and.i) #10
  %call.i23 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  br label %if.end7

if.else:                                          ; preds = %entry
  %and4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end7_crit_edge, label %if.then6

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla8044_clear_drv_active(ptr noundef %1) #10
  tail call void @qla8044_idc_unlock(ptr noundef %1) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.else.if.end7_crit_edge, %if.then
  %device_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 13
  %6 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_flags, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %device_flags, align 4
  tail call void @qla2x00_abort_all_cmds(ptr noundef %vha, i32 noundef 65536) #10
  tail call void @qla2x00_mark_all_devices_lost(ptr noundef %vha) #10
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.clear = and i32 %bf.load, -1073741825
  store volatile i32 %bf.clear, ptr %flags, align 8
  %bf.load9 = load volatile i32, ptr %flags, align 8
  %bf.clear10 = and i32 %bf.load9, 2147483647
  store volatile i32 %bf.clear10, ptr %flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla8044_clear_drv_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla8044_idc_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_abort_all_cmds(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_mark_all_devices_lost(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_check_md_needed(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %fw_major_version1 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 135
  %2 = ptrtoint ptr %fw_major_version1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fw_major_version1, align 4
  %fw_minor_version2 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 136
  %4 = ptrtoint ptr %fw_minor_version2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fw_minor_version2, align 2
  %fw_subminor_version3 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 137
  %6 = ptrtoint ptr %fw_subminor_version3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fw_subminor_version3, align 8
  %call = tail call i32 @qla2x00_get_fw_version(ptr noundef %vha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmdenable to i32))
  %8 = load i32, ptr @ql2xmdenable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %fw_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 167
  %9 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_dumped, align 4, !range !397
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %conv = zext i16 %3 to i32
  %11 = ptrtoint ptr %fw_major_version1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fw_major_version1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %12)
  %cmp9.not = icmp eq i16 %3, %12
  br i1 %cmp9.not, label %lor.lhs.false, label %if.then6.if.then24_crit_edge

if.then6.if.then24_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.then6
  %13 = ptrtoint ptr %fw_minor_version2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fw_minor_version2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %14)
  %cmp14.not = icmp eq i16 %5, %14
  br i1 %cmp14.not, label %lor.lhs.false16, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %fw_subminor_version3 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fw_subminor_version3, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %16)
  %cmp20.not = icmp eq i16 %7, %16
  br i1 %cmp20.not, label %lor.lhs.false22, label %lor.lhs.false16.if.then24_crit_edge

lor.lhs.false16.if.then24_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %prev_minidump_failed = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 173
  %17 = ptrtoint ptr %prev_minidump_failed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prev_minidump_failed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool23.not = icmp eq i32 %18, 0
  br i1 %tobool23.not, label %lor.lhs.false22.cleanup_crit_edge, label %lor.lhs.false22.if.then24_crit_edge

lor.lhs.false22.if.then24_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %lor.lhs.false22.if.then24_crit_edge, %lor.lhs.false16.if.then24_crit_edge, %lor.lhs.false.if.then24_crit_edge, %if.then6.if.then24_crit_edge
  %conv26 = zext i16 %5 to i32
  %conv27 = zext i16 %7 to i32
  %conv29 = zext i16 %12 to i32
  %19 = ptrtoint ptr %fw_minor_version2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %fw_minor_version2, align 2
  %conv31 = zext i16 %20 to i32
  %21 = ptrtoint ptr %fw_subminor_version3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fw_subminor_version3, align 8
  %conv33 = zext i16 %22 to i32
  %prev_minidump_failed34 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 173
  %23 = ptrtoint ptr %prev_minidump_failed34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prev_minidump_failed34, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45101, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %conv26, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %24) #10
  tail call void @qla82xx_md_free(ptr noundef %vha)
  tail call void @qla82xx_md_prep(ptr noundef %vha)
  br label %cleanup

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45102, ptr noundef nonnull @.str.23) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then24, %lor.lhs.false22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_fw_version(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_md_free(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %md_tmplt_hdr = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 264
  %2 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %md_tmplt_hdr, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %md_template_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 263
  %4 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %md_template_size, align 4
  %div30 = lshr i32 %5, 10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45128, ptr noundef nonnull @.str.66, ptr noundef nonnull %3, i32 noundef %div30) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %md_template_size, align 4
  %10 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %md_tmplt_hdr, align 8
  %md_tmplt_hdr_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 265
  %12 = ptrtoint ptr %md_tmplt_hdr_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %md_tmplt_hdr_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 0) #10
  %14 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %md_tmplt_hdr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %md_dump = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 266
  %15 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %md_dump, align 16
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %md_dump_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 267
  %17 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %md_dump_size, align 4
  %div829 = lshr i32 %18, 10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45129, ptr noundef nonnull @.str.67, ptr noundef nonnull %16, i32 noundef %div829) #10
  %19 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %md_dump, align 16
  tail call void @vfree(ptr noundef %20) #10
  %21 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %md_dump_size, align 4
  %22 = ptrtoint ptr %md_dump to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %md_dump, align 16
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_md_prep(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call i32 @qla82xx_md_get_template_size(ptr noundef %vha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %entry
  %md_template_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 263
  %2 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %md_template_size, align 4
  %div39 = lshr i32 %3, 10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45130, ptr noundef nonnull @.str.68, i32 noundef %div39) #10
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @qla8044_md_get_template(ptr noundef %vha) #10
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @qla82xx_md_get_template(ptr noundef %vha) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %rval.0 = phi i32 [ %call3, %if.then2 ], [ %call4, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0)
  %cmp5 = icmp eq i32 %rval.0, 0
  br i1 %cmp5, label %if.then6, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then6:                                         ; preds = %if.end
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45131, ptr noundef nonnull @.str.69) #10
  %call7 = tail call i32 @qla82xx_md_alloc(ptr noundef %vha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %md_dump_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 267
  %6 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %md_dump_size, align 4
  %div1041 = lshr i32 %7, 10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45132, ptr noundef nonnull @.str.70, i32 noundef %div1041) #10
  br label %if.end19

if.else11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %md_tmplt_hdr = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 264
  %8 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %md_tmplt_hdr, align 8
  %10 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %md_template_size, align 4
  %div1340 = lshr i32 %11, 10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45133, ptr noundef nonnull @.str.71, ptr noundef %9, i32 noundef %div1340) #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %md_template_size, align 4
  %16 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %md_tmplt_hdr, align 8
  %md_tmplt_hdr_dma = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 265
  %18 = ptrtoint ptr %md_tmplt_hdr_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %md_tmplt_hdr_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef 0) #10
  %20 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %md_tmplt_hdr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else11, %if.then9, %if.end.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_device_state_handler(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i)
  %cmp56.i = icmp eq i32 %call55.i, 1
  br i1 %cmp56.i, label %entry.qla82xx_idc_lock.exit_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.qla82xx_idc_lock.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.end.i:                                         ; preds = %if.end46.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %total.057.i = phi i32 [ %add.i, %if.end46.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i)
  %cmp4.i = icmp ugt i32 %total.057.i, 1999
  br i1 %cmp4.i, label %land.rhs.i, label %if.end46.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b53.i = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, label %if.then11.i, !prof !383

land.rhs.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit

if.end46.i:                                       ; preds = %if.end.i
  %add.i = add nuw nsw i32 %total.057.i, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end46.i.qla82xx_idc_lock.exit_crit_edge, label %if.end46.i.if.end.i_crit_edge

if.end46.i.if.end.i_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end46.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

qla82xx_idc_lock.exit:                            ; preds = %if.end46.i.qla82xx_idc_lock.exit_crit_edge, %if.then11.i, %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, %entry.qla82xx_idc_lock.exit_crit_edge
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load volatile i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %qla82xx_idc_lock.exit.if.end_crit_edge

qla82xx_idc_lock.exit.if.end_crit_edge:           ; preds = %qla82xx_idc_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %qla82xx_idc_lock.exit
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %call.i89 = tail call i32 @qla82xx_rd_32(ptr noundef %4, i32 noundef 136323384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i89)
  %cmp.i90 = icmp eq i32 %call.i89, -1
  br i1 %cmp.i90, label %if.then.i, label %if.then.qla82xx_set_drv_active.exit_crit_edge

if.then.qla82xx_set_drv_active.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_set_drv_active.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 136323384, i32 noundef 0) #10
  %call2.i = tail call i32 @qla82xx_rd_32(ptr noundef %4, i32 noundef 136323384) #10
  br label %qla82xx_set_drv_active.exit

qla82xx_set_drv_active.exit:                      ; preds = %if.then.i, %if.then.qla82xx_set_drv_active.exit_crit_edge
  %drv_active.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i89, %if.then.qla82xx_set_drv_active.exit_crit_edge ]
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 254
  %5 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %6 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %shl.i = shl nuw i32 1, %mul.i
  %or.i = or i32 %shl.i, %drv_active.0.i
  %call3.i = tail call i32 @qla82xx_wr_32(ptr noundef %4, i32 noundef 136323384, i32 noundef %or.i) #10
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %call.i93 = tail call i32 @qla82xx_rd_32(ptr noundef %8, i32 noundef 136323384) #10
  %portnum.i94 = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 254
  %9 = ptrtoint ptr %portnum.i94 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %portnum.i94, align 4
  %conv.i95 = zext i16 %10 to i32
  %mul.i96 = shl nuw nsw i32 %conv.i95, 2
  %shl.i97 = shl nuw i32 1, %mul.i96
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i93, i32 %shl.i97)
  %cmp.i98 = icmp eq i32 %call.i93, %shl.i97
  br i1 %cmp.i98, label %if.then.i100, label %if.else.i

if.then.i100:                                     ; preds = %qla82xx_set_drv_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i99 = tail call i32 @qla82xx_wr_32(ptr noundef %8, i32 noundef 136323444, i32 noundef 1) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45186, ptr noundef nonnull @.str.127, i32 noundef 1) #10
  br label %if.end

if.else.i:                                        ; preds = %qla82xx_set_drv_active.exit
  %call3.i101 = tail call i32 @qla82xx_rd_32(ptr noundef %8, i32 noundef 136323444) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i101)
  %cmp4.not.i = icmp eq i32 %call3.i101, 1
  br i1 %cmp4.not.i, label %if.else.i.if.end_crit_edge, label %if.then6.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45187, ptr noundef nonnull @.str.128, i32 noundef 1, i32 noundef %call3.i101) #10
  br label %if.end

if.end:                                           ; preds = %if.then6.i, %if.else.i.if.end_crit_edge, %if.then.i100, %qla82xx_idc_lock.exit.if.end_crit_edge
  %call1 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323392)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1)
  %cmp = icmp ult i32 %call1, 8
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [8 x ptr], ptr @q_dev_state, i32 0, i32 %call1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %12, %cond.true ], [ @.str.25, %if.end.cond.end_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 155, ptr noundef nonnull @.str.24, i32 noundef %call1, ptr noundef %cond) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %fcoe_dev_init_timeout = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 251
  %14 = ptrtoint ptr %fcoe_dev_init_timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fcoe_dev_init_timeout, align 64
  %mul = mul i32 %15, 100
  %add = add i32 %mul, %13
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub268 = sub i32 %16, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub268)
  %cmp3269 = icmp sgt i32 %sub268, -1
  br i1 %cmp3269, label %cond.end.if.then4_crit_edge, label %if.end5.lr.ph

cond.end.if.then4_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end5.lr.ph:                                    ; preds = %cond.end
  %flags38 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  br label %if.end5

if.then4:                                         ; preds = %sw.epilog.if.then4_crit_edge, %cond.end.if.then4_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 156, ptr noundef nonnull @.str.26) #10
  br label %rel_lock

if.end5:                                          ; preds = %sw.epilog.if.end5_crit_edge, %if.end5.lr.ph
  %loopcount.0273 = phi i32 [ 0, %if.end5.lr.ph ], [ %inc, %sw.epilog.if.end5_crit_edge ]
  %dev_init_timeout.0272 = phi i32 [ %add, %if.end5.lr.ph ], [ %dev_init_timeout.1, %sw.epilog.if.end5_crit_edge ]
  %rval.0271 = phi i32 [ 0, %if.end5.lr.ph ], [ %rval.1, %sw.epilog.if.end5_crit_edge ]
  %old_dev_state.0270 = phi i32 [ %call1, %if.end5.lr.ph ], [ %call6, %sw.epilog.if.end5_crit_edge ]
  %call6 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323392)
  call void @__sanitizer_cov_trace_cmp4(i32 %old_dev_state.0270, i32 %call6)
  %cmp7.not = icmp eq i32 %old_dev_state.0270, %call6
  %spec.select88 = select i1 %cmp7.not, i32 %loopcount.0273, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select88)
  %cmp10 = icmp slt i32 %spec.select88, 5
  br i1 %cmp10, label %if.then11, label %if.end5.if.end18_crit_edge

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call6)
  %cmp12 = icmp ult i32 %call6, 8
  br i1 %cmp12, label %cond.true13, label %if.then11.cond.end16_crit_edge

if.then11.cond.end16_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end16

cond.true13:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i102 = getelementptr [8 x ptr], ptr @q_dev_state, i32 0, i32 %call6
  %17 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i102, align 4
  br label %cond.end16

cond.end16:                                       ; preds = %cond.true13, %if.then11.cond.end16_crit_edge
  %cond17 = phi ptr [ %18, %cond.true13 ], [ @.str.25, %if.then11.cond.end16_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 157, ptr noundef nonnull @.str.24, i32 noundef %call6, ptr noundef %cond17) #10
  br label %if.end18

if.end18:                                         ; preds = %cond.end16, %if.end5.if.end18_crit_edge
  %19 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %call6, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb23
    i32 4, label %sw.bb25
    i32 5, label %sw.bb33
    i32 7, label %sw.bb37
    i32 6, label %sw.bb49
  ]

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load20 = load volatile i32, ptr %flags38, align 8
  %bf.clear = and i32 %bf.load20, -65
  store volatile i32 %bf.clear, ptr %flags38, align 8
  br label %rel_lock

sw.bb21:                                          ; preds = %if.end18
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %flags.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i.i = load volatile i32, ptr %flags.i.i, align 8
  %24 = and i32 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %qla82xx_need_reset.exit.i, label %sw.bb21.if.then.i104_crit_edge

sw.bb21.if.then.i104_crit_edge:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i104

qla82xx_need_reset.exit.i:                        ; preds = %sw.bb21
  %call.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323396) #10
  %portnum.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 254
  %25 = ptrtoint ptr %portnum.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %portnum.i.i, align 4
  %conv.i.i = zext i16 %26 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %shl.i.i = shl nuw i32 1, %mul.i.i
  %and.i.i = and i32 %shl.i.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.else.i106, label %qla82xx_need_reset.exit.i.if.then.i104_crit_edge

qla82xx_need_reset.exit.i.if.then.i104_crit_edge: ; preds = %qla82xx_need_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i104

if.then.i104:                                     ; preds = %qla82xx_need_reset.exit.i.if.then.i104_crit_edge, %sw.bb21.if.then.i104_crit_edge
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i = load volatile i32, ptr %flags.i.i, align 8
  %28 = and i32 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i, label %if.then.i104.if.end8.i_crit_edge, label %if.then.i104.if.end8.sink.split.i_crit_edge

if.then.i104.if.end8.sink.split.i_crit_edge:      ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.sink.split.i

if.then.i104.if.end8.i_crit_edge:                 ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.else.i106:                                     ; preds = %qla82xx_need_reset.exit.i
  %call3.i105 = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  tail call void @msleep(i32 noundef 200) #10
  %call4.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %call3.i105)
  %cmp5.not.i = icmp eq i32 %call4.i, %call3.i105
  br i1 %cmp5.not.i, label %for.cond.i, label %if.else.i106.dev_ready.i_crit_edge

if.else.i106.dev_ready.i_crit_edge:               ; preds = %if.else.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

for.cond.i:                                       ; preds = %if.else.i106
  tail call void @msleep(i32 noundef 200) #10
  %call4.1.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.1.i, i32 %call3.i105)
  %cmp5.not.1.i = icmp eq i32 %call4.1.i, %call3.i105
  br i1 %cmp5.not.1.i, label %for.cond.1.i, label %for.cond.i.dev_ready.i_crit_edge

for.cond.i.dev_ready.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

for.cond.1.i:                                     ; preds = %for.cond.i
  tail call void @msleep(i32 noundef 200) #10
  %call4.2.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.2.i, i32 %call3.i105)
  %cmp5.not.2.i = icmp eq i32 %call4.2.i, %call3.i105
  br i1 %cmp5.not.2.i, label %for.cond.2.i, label %for.cond.1.i.dev_ready.i_crit_edge

for.cond.1.i.dev_ready.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call void @msleep(i32 noundef 200) #10
  %call4.3.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.3.i, i32 %call3.i105)
  %cmp5.not.3.i = icmp eq i32 %call4.3.i, %call3.i105
  br i1 %cmp5.not.3.i, label %for.cond.3.i, label %for.cond.2.i.dev_ready.i_crit_edge

for.cond.2.i.dev_ready.i_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  tail call void @msleep(i32 noundef 200) #10
  %call4.4.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.4.i, i32 %call3.i105)
  %cmp5.not.4.i = icmp eq i32 %call4.4.i, %call3.i105
  br i1 %cmp5.not.4.i, label %for.cond.4.i, label %for.cond.3.i.dev_ready.i_crit_edge

for.cond.3.i.dev_ready.i_crit_edge:               ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  tail call void @msleep(i32 noundef 200) #10
  %call4.5.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.5.i, i32 %call3.i105)
  %cmp5.not.5.i = icmp eq i32 %call4.5.i, %call3.i105
  br i1 %cmp5.not.5.i, label %for.cond.5.i, label %for.cond.4.i.dev_ready.i_crit_edge

for.cond.4.i.dev_ready.i_crit_edge:               ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  tail call void @msleep(i32 noundef 200) #10
  %call4.6.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.6.i, i32 %call3.i105)
  %cmp5.not.6.i = icmp eq i32 %call4.6.i, %call3.i105
  br i1 %cmp5.not.6.i, label %for.cond.6.i, label %for.cond.5.i.dev_ready.i_crit_edge

for.cond.5.i.dev_ready.i_crit_edge:               ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  tail call void @msleep(i32 noundef 200) #10
  %call4.7.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.7.i, i32 %call3.i105)
  %cmp5.not.7.i = icmp eq i32 %call4.7.i, %call3.i105
  br i1 %cmp5.not.7.i, label %for.cond.7.i, label %for.cond.6.i.dev_ready.i_crit_edge

for.cond.6.i.dev_ready.i_crit_edge:               ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  tail call void @msleep(i32 noundef 200) #10
  %call4.8.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.8.i, i32 %call3.i105)
  %cmp5.not.8.i = icmp eq i32 %call4.8.i, %call3.i105
  br i1 %cmp5.not.8.i, label %for.cond.8.i, label %for.cond.7.i.dev_ready.i_crit_edge

for.cond.7.i.dev_ready.i_crit_edge:               ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  tail call void @msleep(i32 noundef 200) #10
  %call4.9.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.9.i, i32 %call3.i105)
  %cmp5.not.9.i = icmp eq i32 %call4.9.i, %call3.i105
  br i1 %cmp5.not.9.i, label %for.cond.8.i.if.end8.sink.split.i_crit_edge, label %for.cond.8.i.dev_ready.i_crit_edge

for.cond.8.i.dev_ready.i_crit_edge:               ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

for.cond.8.i.if.end8.sink.split.i_crit_edge:      ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.sink.split.i

if.end8.sink.split.i:                             ; preds = %for.cond.8.i.if.end8.sink.split.i_crit_edge, %if.then.i104.if.end8.sink.split.i_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %22, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44, i32 8
  %31 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i, align 4
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i242
  %inc.i.i = add nuw nsw i32 %timeout.019.i.i, 1
  %tobool.not.i.i239 = icmp eq i32 %call1.i.i240, 0
  br i1 %tobool.not.i.i239, label %while.cond.i.i.while.body.i.i_crit_edge, label %while.cond.i.i.qla82xx_rom_lock.exit.thread.i_crit_edge

while.cond.i.i.qla82xx_rom_lock.exit.thread.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_rom_lock.exit.thread.i

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %if.end8.sink.split.i
  %timeout.019.i.i = phi i32 [ 0, %if.end8.sink.split.i ], [ %inc.i.i, %while.cond.i.i.while.body.i.i_crit_edge ]
  %call1.i.i240 = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 101826576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i240)
  %cmp.i.i241 = icmp eq i32 %call1.i.i240, 1
  br i1 %cmp.i.i241, label %while.body.i.i.qla82xx_rom_lock.exit.thread.i_crit_edge, label %if.end.i.i242

while.body.i.i.qla82xx_rom_lock.exit.thread.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_rom_lock.exit.thread.i

if.end.i.i242:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout.019.i.i)
  %exitcond.i.i = icmp eq i32 %timeout.019.i.i, 100
  br i1 %exitcond.i.i, label %if.then.i247, label %while.cond.i.i

qla82xx_rom_lock.exit.thread.i:                   ; preds = %while.body.i.i.qla82xx_rom_lock.exit.thread.i_crit_edge, %while.cond.i.i.qla82xx_rom_lock.exit.thread.i_crit_edge
  %portnum6.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 254
  %33 = ptrtoint ptr %portnum6.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %portnum6.i.i, align 4
  %conv7.i.i = zext i16 %34 to i32
  %call8.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %22, i32 noundef 136323328, i32 noundef %conv7.i.i) #10
  br label %qla82xx_rom_lock_recovery.exit

if.then.i247:                                     ; preds = %if.end.i.i242
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i243 = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323328) #10
  %portnum.i.i244 = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 254
  %35 = ptrtoint ptr %portnum.i.i244 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %portnum.i.i244, align 4
  %conv.i.i245 = zext i16 %36 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %32, i32 noundef 45399, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.qla82xx_rom_lock, i32 noundef %conv.i.i245, i32 noundef %call4.i.i243) #10
  %call2.i246 = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323328) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %32, i32 noundef 45090, ptr noundef nonnull @.str.132, i32 noundef %call2.i246) #10
  br label %qla82xx_rom_lock_recovery.exit

qla82xx_rom_lock_recovery.exit:                   ; preds = %if.then.i247, %qla82xx_rom_lock.exit.thread.i
  %call.i.i248 = tail call i32 @qla82xx_wr_32(ptr noundef %22, i32 noundef 136323328, i32 noundef -1) #10
  %call1.i6.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 101826580) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %qla82xx_rom_lock_recovery.exit, %if.then.i104.if.end8.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 158, ptr noundef nonnull @.str.129) #10
  %call9.i = tail call i32 @qla82xx_wr_32(ptr noundef %22, i32 noundef 136323392, i32 noundef 2) #10
  %call.i39.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 101826604) #10
  %call10.i = tail call i32 @qla82xx_start_firmware(ptr noundef %vha) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i.i)
  %cmp56.i.i = icmp eq i32 %call55.i.i, 1
  br i1 %cmp56.i.i, label %if.end8.i.qla82xx_idc_lock.exit.i_crit_edge, label %if.end8.i.if.end.i.i_crit_edge

if.end8.i.if.end.i.i_crit_edge:                   ; preds = %if.end8.i
  br label %if.end.i.i

if.end8.i.qla82xx_idc_lock.exit.i_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit.i

if.end.i.i:                                       ; preds = %if.end46.i.i.if.end.i.i_crit_edge, %if.end8.i.if.end.i.i_crit_edge
  %total.057.i.i = phi i32 [ %add.i.i, %if.end46.i.i.if.end.i.i_crit_edge ], [ 0, %if.end8.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i.i)
  %cmp4.i.i = icmp ugt i32 %total.057.i.i, 1999
  br i1 %cmp4.i.i, label %land.rhs.i.i, label %if.end46.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.i
  %.b53.i.i = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i.i, label %land.rhs.i.i.qla82xx_idc_lock.exit.i_crit_edge, label %if.then11.i.i, !prof !383

land.rhs.i.i.qla82xx_idc_lock.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit.i

if.then11.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit.i

if.end46.i.i:                                     ; preds = %if.end.i.i
  %add.i.i = add nuw nsw i32 %total.057.i.i, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i40.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 101826600) #10
  %cmp.i.i = icmp eq i32 %call.i40.i, 1
  br i1 %cmp.i.i, label %if.end46.i.i.qla82xx_idc_lock.exit.i_crit_edge, label %if.end46.i.i.if.end.i.i_crit_edge

if.end46.i.i.if.end.i.i_crit_edge:                ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end46.i.i.qla82xx_idc_lock.exit.i_crit_edge:   ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit.i

qla82xx_idc_lock.exit.i:                          ; preds = %if.end46.i.i.qla82xx_idc_lock.exit.i_crit_edge, %if.then11.i.i, %land.rhs.i.i.qla82xx_idc_lock.exit.i_crit_edge, %if.end8.i.qla82xx_idc_lock.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp12.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp12.not.i, label %qla82xx_idc_lock.exit.i.dev_ready.i_crit_edge, label %if.then13.i

qla82xx_idc_lock.exit.i.dev_ready.i_crit_edge:    ; preds = %qla82xx_idc_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_ready.i

if.then13.i:                                      ; preds = %qla82xx_idc_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 173, ptr noundef nonnull @.str.130) #10
  %call.i42.i = tail call i32 @qla82xx_rd_32(ptr noundef %22, i32 noundef 136323384) #10
  %portnum.i43.i = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 254
  %37 = ptrtoint ptr %portnum.i43.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %portnum.i43.i, align 4
  %conv.i44.i = zext i16 %38 to i32
  %mul.i45.i = shl nuw nsw i32 %conv.i44.i, 2
  %shl.i46.i = shl nuw i32 1, %mul.i45.i
  %neg.i.i = xor i32 %shl.i46.i, -1
  %and.i47.i = and i32 %call.i42.i, %neg.i.i
  %call1.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %22, i32 noundef 136323384, i32 noundef %and.i47.i) #10
  br label %qla82xx_device_bootstrap.exit

dev_ready.i:                                      ; preds = %qla82xx_idc_lock.exit.i.dev_ready.i_crit_edge, %for.cond.8.i.dev_ready.i_crit_edge, %for.cond.7.i.dev_ready.i_crit_edge, %for.cond.6.i.dev_ready.i_crit_edge, %for.cond.5.i.dev_ready.i_crit_edge, %for.cond.4.i.dev_ready.i_crit_edge, %for.cond.3.i.dev_ready.i_crit_edge, %for.cond.2.i.dev_ready.i_crit_edge, %for.cond.1.i.dev_ready.i_crit_edge, %for.cond.i.dev_ready.i_crit_edge, %if.else.i106.dev_ready.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 174, ptr noundef nonnull @.str.131) #10
  br label %qla82xx_device_bootstrap.exit

qla82xx_device_bootstrap.exit:                    ; preds = %dev_ready.i, %if.then13.i
  %.sink.i = phi i32 [ 3, %dev_ready.i ], [ 6, %if.then13.i ]
  %retval.0.i107 = phi i32 [ 0, %dev_ready.i ], [ %call10.i, %if.then13.i ]
  %call16.i = tail call i32 @qla82xx_wr_32(ptr noundef %22, i32 noundef 136323392, i32 noundef %.sink.i) #10
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end18
  %call.i108 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  tail call void @msleep(i32 noundef 1000) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i109 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i109)
  %cmp56.i110 = icmp eq i32 %call55.i109, 1
  br i1 %cmp56.i110, label %sw.bb23.sw.epilog_crit_edge, label %sw.bb23.if.end.i113_crit_edge

sw.bb23.if.end.i113_crit_edge:                    ; preds = %sw.bb23
  br label %if.end.i113

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i113:                                      ; preds = %if.end46.i120.if.end.i113_crit_edge, %sw.bb23.if.end.i113_crit_edge
  %total.057.i111 = phi i32 [ %add.i117, %if.end46.i120.if.end.i113_crit_edge ], [ 0, %sw.bb23.if.end.i113_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i111)
  %cmp4.i112 = icmp ugt i32 %total.057.i111, 1999
  br i1 %cmp4.i112, label %land.rhs.i115, label %if.end46.i120

land.rhs.i115:                                    ; preds = %if.end.i113
  %.b53.i114 = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i114, label %land.rhs.i115.sw.epilog_crit_edge, label %if.then11.i116, !prof !383

land.rhs.i115.sw.epilog_crit_edge:                ; preds = %land.rhs.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then11.i116:                                   ; preds = %land.rhs.i115
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

if.end46.i120:                                    ; preds = %if.end.i113
  %add.i117 = add nuw nsw i32 %total.057.i111, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i118 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i119 = icmp eq i32 %call.i118, 1
  br i1 %cmp.i119, label %if.end46.i120.sw.epilog_crit_edge, label %if.end46.i120.if.end.i113_crit_edge

if.end46.i120.if.end.i113_crit_edge:              ; preds = %if.end46.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i113

if.end46.i120.sw.epilog_crit_edge:                ; preds = %if.end46.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xdontresethba to i32))
  %39 = load i32, ptr @ql2xdontresethba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool26.not = icmp eq i32 %39, 0
  br i1 %tobool26.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %sw.bb25
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %req_q_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %41, i32 0, i32 24
  %42 = ptrtoint ptr %req_q_map.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %req_q_map.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load.i124 = load volatile i32, ptr %flags, align 8
  %47 = and i32 %bf.load.i124, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i125 = icmp eq i32 %47, 0
  br i1 %tobool.not.i125, label %if.then27.if.end.i144_crit_edge, label %if.then.i131

if.then27.if.end.i144_crit_edge:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i144

if.then.i131:                                     ; preds = %if.then27
  %call.i.i126 = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 101826604) #10
  tail call void @qla2x00_abort_isp_cleanup(ptr noundef %vha) #10
  %isp_ops.i = getelementptr inbounds %struct.qla_hw_data, ptr %41, i32 0, i32 234
  %48 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %isp_ops.i, align 4
  %get_flash_version.i = getelementptr inbounds %struct.isp_operations, ptr %49, i32 0, i32 31
  %50 = ptrtoint ptr %get_flash_version.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_flash_version.i, align 4
  %ring.i = getelementptr inbounds %struct.req_que, ptr %45, i32 0, i32 1
  %52 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring.i, align 4
  %call.i127 = tail call i32 %51(ptr noundef %vha, ptr noundef %53) #10
  %54 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %isp_ops.i, align 4
  %nvram_config.i = getelementptr inbounds %struct.isp_operations, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %nvram_config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nvram_config.i, align 4
  %call2.i128 = tail call i32 %57(ptr noundef %vha) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i.i129 = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i.i129)
  %cmp56.i.i130 = icmp eq i32 %call55.i.i129, 1
  br i1 %cmp56.i.i130, label %if.then.i131.if.end.i144_crit_edge, label %if.then.i131.if.end.i.i134_crit_edge

if.then.i131.if.end.i.i134_crit_edge:             ; preds = %if.then.i131
  br label %if.end.i.i134

if.then.i131.if.end.i144_crit_edge:               ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i144

if.end.i.i134:                                    ; preds = %if.end46.i.i140.if.end.i.i134_crit_edge, %if.then.i131.if.end.i.i134_crit_edge
  %total.057.i.i132 = phi i32 [ %add.i.i138, %if.end46.i.i140.if.end.i.i134_crit_edge ], [ 0, %if.then.i131.if.end.i.i134_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i.i132)
  %cmp4.i.i133 = icmp ugt i32 %total.057.i.i132, 1999
  br i1 %cmp4.i.i133, label %land.rhs.i.i136, label %if.end46.i.i140

land.rhs.i.i136:                                  ; preds = %if.end.i.i134
  %.b53.i.i135 = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i.i135, label %land.rhs.i.i136.if.end.i144_crit_edge, label %if.then11.i.i137, !prof !383

land.rhs.i.i136.if.end.i144_crit_edge:            ; preds = %land.rhs.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i144

if.then11.i.i137:                                 ; preds = %land.rhs.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i144

if.end46.i.i140:                                  ; preds = %if.end.i.i134
  %add.i.i138 = add nuw nsw i32 %total.057.i.i132, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i107.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 101826600) #10
  %cmp.i.i139 = icmp eq i32 %call.i107.i, 1
  br i1 %cmp.i.i139, label %if.end46.i.i140.if.end.i144_crit_edge, label %if.end46.i.i140.if.end.i.i134_crit_edge

if.end46.i.i140.if.end.i.i134_crit_edge:          ; preds = %if.end46.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i134

if.end46.i.i140.if.end.i144_crit_edge:            ; preds = %if.end46.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i144

if.end.i144:                                      ; preds = %if.end46.i.i140.if.end.i144_crit_edge, %if.then11.i.i137, %land.rhs.i.i136.if.end.i144_crit_edge, %if.then.i131.if.end.i144_crit_edge, %if.then27.if.end.i144_crit_edge
  %call4.i141 = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323384) #10
  %flags5.i = getelementptr inbounds %struct.qla_hw_data, ptr %41, i32 0, i32 2
  %58 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load6.i = load volatile i32, ptr %flags5.i, align 8
  %59 = and i32 %bf.load6.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool9.not.i = icmp eq i32 %59, 0
  %portnum.i142 = getelementptr inbounds %struct.qla_hw_data, ptr %41, i32 0, i32 254
  %60 = ptrtoint ptr %portnum.i142 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %portnum.i142, align 4
  %conv.i143 = zext i16 %61 to i32
  br i1 %tobool9.not.i, label %if.then10.i, label %if.else.i151

if.then10.i:                                      ; preds = %if.end.i144
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45096, ptr noundef nonnull @.str.133, i32 noundef %conv.i143) #10
  %62 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %41, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44, i32 8
  %64 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %call1.i.i145 = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323396) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i145)
  %cmp.i108.i = icmp eq i32 %call1.i.i145, -1
  br i1 %cmp.i108.i, label %if.then.i.i, label %if.then10.i.qla82xx_set_rst_ready.exit.i_crit_edge

if.then10.i.qla82xx_set_rst_ready.exit.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_set_rst_ready.exit.i

if.then.i.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %41, i32 noundef 136323396, i32 noundef 0) #10
  %call3.i.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323396) #10
  br label %qla82xx_set_rst_ready.exit.i

qla82xx_set_rst_ready.exit.i:                     ; preds = %if.then.i.i, %if.then10.i.qla82xx_set_rst_ready.exit.i_crit_edge
  %drv_state.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i ], [ %call1.i.i145, %if.then10.i.qla82xx_set_rst_ready.exit.i_crit_edge ]
  %66 = ptrtoint ptr %portnum.i142 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %portnum.i142, align 4
  %conv.i.i146 = zext i16 %67 to i32
  %mul.i.i147 = shl nuw nsw i32 %conv.i.i146, 2
  %shl.i.i148 = shl nuw i32 1, %mul.i.i147
  %or.i.i = or i32 %shl.i.i148, %drv_state.0.i.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %65, i32 noundef 187, ptr noundef nonnull @.str.140, i32 noundef %or.i.i) #10
  %call4.i.i = tail call i32 @qla82xx_wr_32(ptr noundef %41, i32 noundef 136323396, i32 noundef %or.i.i) #10
  br label %if.end13.i

if.else.i151:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i149 = shl nuw nsw i32 %conv.i143, 2
  %shl.i150 = shl nuw i32 1, %mul.i149
  %neg.i = xor i32 %shl.i150, -1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45097, ptr noundef nonnull @.str.134, i32 noundef %neg.i) #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i151, %qla82xx_set_rst_ready.exit.i
  %active_mask.0.i = phi i32 [ %neg.i, %if.else.i151 ], [ 0, %qla82xx_set_rst_ready.exit.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %fcoe_reset_timeout.i = getelementptr inbounds %struct.qla_hw_data, ptr %41, i32 0, i32 252
  %69 = ptrtoint ptr %fcoe_reset_timeout.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fcoe_reset_timeout.i, align 4
  %call15.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323396) #10
  %call16.i152 = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323384) #10
  %call17.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323392) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45098, ptr noundef nonnull @.str.135, i32 noundef %call15.i, i32 noundef %call16.i152, i32 noundef %call17.i, i32 noundef %active_mask.0.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call15.i, i32 %call16.i152)
  %cmp.not149.i = icmp eq i32 %call15.i, %call16.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17.i)
  %cmp19.not150.i = icmp eq i32 %call17.i, 2
  %or.cond151.i = or i1 %cmp.not149.i, %cmp19.not150.i
  br i1 %or.cond151.i, label %if.end13.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end13.i.while.end.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end13.i
  %mul14.neg.i = mul i32 %70, -100
  %add.neg.i = sub i32 %mul14.neg.i, %68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %sub.i263 = add i32 %add.neg.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i263)
  %cmp21.i264 = icmp sgt i32 %sub.i263, -1
  br i1 %cmp21.i264, label %while.body.lr.ph.i.if.then23.i_crit_edge, label %while.body.lr.ph.i.if.end24.i_crit_edge

while.body.lr.ph.i.if.end24.i_crit_edge:          ; preds = %while.body.lr.ph.i
  br label %if.end24.i

while.body.lr.ph.i.if.then23.i_crit_edge:         ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

while.body.i:                                     ; preds = %qla82xx_idc_lock.exit124.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %72
  %cmp21.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp21.i, label %while.body.i.if.then23.i_crit_edge, label %while.body.i.if.end24.i_crit_edge

while.body.i.if.end24.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

while.body.i.if.then23.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.i:                                      ; preds = %while.body.i.if.then23.i_crit_edge, %while.body.lr.ph.i.if.then23.i_crit_edge
  %drv_active.0154.i.lcssa = phi i32 [ %call16.i152, %while.body.lr.ph.i.if.then23.i_crit_edge ], [ %spec.select.i, %while.body.i.if.then23.i_crit_edge ]
  %drv_state.0153.i.lcssa = phi i32 [ %call15.i, %while.body.lr.ph.i.if.then23.i_crit_edge ], [ %call26.i, %while.body.i.if.then23.i_crit_edge ]
  %dev_state.0152.i.lcssa = phi i32 [ %call17.i, %while.body.lr.ph.i.if.then23.i_crit_edge ], [ %call36.i, %while.body.i.if.then23.i_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 181, ptr noundef nonnull @.str.136) #10
  br label %while.end.i

if.end24.i:                                       ; preds = %while.body.i.if.end24.i_crit_edge, %while.body.lr.ph.i.if.end24.i_crit_edge
  %call.i110.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 101826604) #10
  tail call void @msleep(i32 noundef 1000) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i111.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i111.i)
  %cmp56.i112.i = icmp eq i32 %call55.i111.i, 1
  br i1 %cmp56.i112.i, label %if.end24.i.qla82xx_idc_lock.exit124.i_crit_edge, label %if.end24.i.if.end.i115.i_crit_edge

if.end24.i.if.end.i115.i_crit_edge:               ; preds = %if.end24.i
  br label %if.end.i115.i

if.end24.i.qla82xx_idc_lock.exit124.i_crit_edge:  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit124.i

if.end.i115.i:                                    ; preds = %if.end46.i122.i.if.end.i115.i_crit_edge, %if.end24.i.if.end.i115.i_crit_edge
  %total.057.i113.i = phi i32 [ %add.i119.i, %if.end46.i122.i.if.end.i115.i_crit_edge ], [ 0, %if.end24.i.if.end.i115.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i113.i)
  %cmp4.i114.i = icmp ugt i32 %total.057.i113.i, 1999
  br i1 %cmp4.i114.i, label %land.rhs.i117.i, label %if.end46.i122.i

land.rhs.i117.i:                                  ; preds = %if.end.i115.i
  %.b53.i116.i = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i116.i, label %land.rhs.i117.i.qla82xx_idc_lock.exit124.i_crit_edge, label %if.then11.i118.i, !prof !383

land.rhs.i117.i.qla82xx_idc_lock.exit124.i_crit_edge: ; preds = %land.rhs.i117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit124.i

if.then11.i118.i:                                 ; preds = %land.rhs.i117.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit124.i

if.end46.i122.i:                                  ; preds = %if.end.i115.i
  %add.i119.i = add nuw nsw i32 %total.057.i113.i, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i120.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 101826600) #10
  %cmp.i121.i = icmp eq i32 %call.i120.i, 1
  br i1 %cmp.i121.i, label %if.end46.i122.i.qla82xx_idc_lock.exit124.i_crit_edge, label %if.end46.i122.i.if.end.i115.i_crit_edge

if.end46.i122.i.if.end.i115.i_crit_edge:          ; preds = %if.end46.i122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115.i

if.end46.i122.i.qla82xx_idc_lock.exit124.i_crit_edge: ; preds = %if.end46.i122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit124.i

qla82xx_idc_lock.exit124.i:                       ; preds = %if.end46.i122.i.qla82xx_idc_lock.exit124.i_crit_edge, %if.then11.i118.i, %land.rhs.i117.i.qla82xx_idc_lock.exit124.i_crit_edge, %if.end24.i.qla82xx_idc_lock.exit124.i_crit_edge
  %call26.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323396) #10
  %call27.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323384) #10
  %73 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load29.i = load volatile i32, ptr %flags5.i, align 8
  %74 = and i32 %bf.load29.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool32.not.i = icmp eq i32 %74, 0
  %and34.i = select i1 %tobool32.not.i, i32 -1, i32 %active_mask.0.i
  %spec.select.i = and i32 %and34.i, %call27.i
  %call36.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323392) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i, i32 %spec.select.i)
  %cmp.not.i = icmp eq i32 %call26.i, %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call36.i)
  %cmp19.not.i = icmp eq i32 %call36.i, 2
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp19.not.i
  br i1 %or.cond.i, label %qla82xx_idc_lock.exit124.i.while.end.i_crit_edge, label %while.body.i

qla82xx_idc_lock.exit124.i.while.end.i_crit_edge: ; preds = %qla82xx_idc_lock.exit124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %qla82xx_idc_lock.exit124.i.while.end.i_crit_edge, %if.then23.i, %if.end13.i.while.end.i_crit_edge
  %dev_state.0148.i = phi i32 [ %dev_state.0152.i.lcssa, %if.then23.i ], [ %call17.i, %if.end13.i.while.end.i_crit_edge ], [ %call36.i, %qla82xx_idc_lock.exit124.i.while.end.i_crit_edge ]
  %drv_state.0146.i = phi i32 [ %drv_state.0153.i.lcssa, %if.then23.i ], [ %call15.i, %if.end13.i.while.end.i_crit_edge ], [ %call26.i, %qla82xx_idc_lock.exit124.i.while.end.i_crit_edge ]
  %drv_active.0144.i = phi i32 [ %drv_active.0154.i.lcssa, %if.then23.i ], [ %call16.i152, %if.end13.i.while.end.i_crit_edge ], [ %spec.select.i, %qla82xx_idc_lock.exit124.i.while.end.i_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45099, ptr noundef nonnull @.str.135, i32 noundef %drv_state.0146.i, i32 noundef %drv_active.0144.i, i32 noundef %dev_state.0148.i, i32 noundef %active_mask.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dev_state.0148.i)
  %cmp37.i = icmp ult i32 %dev_state.0148.i, 8
  br i1 %cmp37.i, label %cond.end.i, label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 182, ptr noundef nonnull @.str.24, i32 noundef %dev_state.0148.i, ptr noundef nonnull @.str.25) #10
  br label %if.then44.i

cond.end.i:                                       ; preds = %while.end.i
  %arrayidx.i.i = getelementptr [8 x ptr], ptr @q_dev_state, i32 0, i32 %dev_state.0148.i
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 182, ptr noundef nonnull @.str.24, i32 noundef %dev_state.0148.i, ptr noundef %76) #10
  %dev_state.0.off.i = add nsw i32 %dev_state.0148.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dev_state.0.off.i)
  %switch.i = icmp ult i32 %dev_state.0.off.i, 2
  br i1 %switch.i, label %cond.end.i.if.end29_crit_edge, label %cond.end.i.if.then44.i_crit_edge

cond.end.i.if.then44.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44.i

cond.end.i.if.end29_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then44.i:                                      ; preds = %cond.end.i.if.then44.i_crit_edge, %cond.end.thread.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 183, ptr noundef nonnull @.str.137) #10
  %call45.i = tail call i32 @qla82xx_wr_32(ptr noundef %41, i32 noundef 136323392, i32 noundef 1) #10
  %77 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %41, align 128
  %driver_data.i.i.i125.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44, i32 8
  %79 = ptrtoint ptr %driver_data.i.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %driver_data.i.i.i125.i, align 4
  %call1.i126.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323396) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i126.i)
  %cmp.i127.i = icmp eq i32 %call1.i126.i, -1
  br i1 %cmp.i127.i, label %if.then.i130.i, label %if.then44.i.qla82xx_set_rst_ready.exit139.i_crit_edge

if.then44.i.qla82xx_set_rst_ready.exit139.i_crit_edge: ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_set_rst_ready.exit139.i

if.then.i130.i:                                   ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i128.i = tail call i32 @qla82xx_wr_32(ptr noundef %41, i32 noundef 136323396, i32 noundef 0) #10
  %call3.i129.i = tail call i32 @qla82xx_rd_32(ptr noundef %41, i32 noundef 136323396) #10
  br label %qla82xx_set_rst_ready.exit139.i

qla82xx_set_rst_ready.exit139.i:                  ; preds = %if.then.i130.i, %if.then44.i.qla82xx_set_rst_ready.exit139.i_crit_edge
  %drv_state.0.i131.i = phi i32 [ %call3.i129.i, %if.then.i130.i ], [ %call1.i126.i, %if.then44.i.qla82xx_set_rst_ready.exit139.i_crit_edge ]
  %81 = ptrtoint ptr %portnum.i142 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %portnum.i142, align 4
  %conv.i133.i = zext i16 %82 to i32
  %mul.i134.i = shl nuw nsw i32 %conv.i133.i, 2
  %shl.i135.i = shl nuw i32 1, %mul.i134.i
  %or.i136.i = or i32 %shl.i135.i, %drv_state.0.i131.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %80, i32 noundef 187, ptr noundef nonnull @.str.140, i32 noundef %or.i136.i) #10
  %call4.i137.i = tail call i32 @qla82xx_wr_32(ptr noundef %41, i32 noundef 136323396, i32 noundef %or.i136.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmdenable to i32))
  %83 = load i32, ptr @ql2xmdenable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool46.not.i = icmp eq i32 %83, 0
  br i1 %tobool46.not.i, label %if.else52.i, label %if.then47.i

if.then47.i:                                      ; preds = %qla82xx_set_rst_ready.exit139.i
  %call48.i = tail call i32 @qla82xx_md_collect(ptr noundef %vha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.then47.i.if.end29_crit_edge, label %if.then50.i

if.then47.i.if.end29_crit_edge:                   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then50.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45100, ptr noundef nonnull @.str.138) #10
  br label %if.end29

if.else52.i:                                      ; preds = %qla82xx_set_rst_ready.exit139.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45135, ptr noundef nonnull @.str.139) #10
  br label %if.end29

if.else:                                          ; preds = %sw.bb25
  %call.i153 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  tail call void @msleep(i32 noundef 1000) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i154 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i154)
  %cmp56.i155 = icmp eq i32 %call55.i154, 1
  br i1 %cmp56.i155, label %if.else.if.end29_crit_edge, label %if.else.if.end.i158_crit_edge

if.else.if.end.i158_crit_edge:                    ; preds = %if.else
  br label %if.end.i158

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end.i158:                                      ; preds = %if.end46.i165.if.end.i158_crit_edge, %if.else.if.end.i158_crit_edge
  %total.057.i156 = phi i32 [ %add.i162, %if.end46.i165.if.end.i158_crit_edge ], [ 0, %if.else.if.end.i158_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i156)
  %cmp4.i157 = icmp ugt i32 %total.057.i156, 1999
  br i1 %cmp4.i157, label %land.rhs.i160, label %if.end46.i165

land.rhs.i160:                                    ; preds = %if.end.i158
  %.b53.i159 = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i159, label %land.rhs.i160.if.end29_crit_edge, label %if.then11.i161, !prof !383

land.rhs.i160.if.end29_crit_edge:                 ; preds = %land.rhs.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then11.i161:                                   ; preds = %land.rhs.i160
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %if.end29

if.end46.i165:                                    ; preds = %if.end.i158
  %add.i162 = add nuw nsw i32 %total.057.i156, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i163 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i164 = icmp eq i32 %call.i163, 1
  br i1 %cmp.i164, label %if.end46.i165.if.end29_crit_edge, label %if.end46.i165.if.end.i158_crit_edge

if.end46.i165.if.end.i158_crit_edge:              ; preds = %if.end46.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i158

if.end46.i165.if.end29_crit_edge:                 ; preds = %if.end46.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end29:                                         ; preds = %if.end46.i165.if.end29_crit_edge, %if.then11.i161, %land.rhs.i160.if.end29_crit_edge, %if.else.if.end29_crit_edge, %if.else52.i, %if.then50.i, %if.then47.i.if.end29_crit_edge, %cond.end.i.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %85 = ptrtoint ptr %fcoe_dev_init_timeout to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fcoe_dev_init_timeout, align 64
  %mul31 = mul i32 %86, 100
  %add32 = add i32 %mul31, %84
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end18
  %87 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw, align 4
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load.i170 = load volatile i32, ptr %flags, align 8
  %90 = and i32 %bf.load.i170, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i171 = icmp eq i32 %90, 0
  br i1 %tobool.not.i171, label %sw.bb33.if.end.i182_crit_edge, label %if.then.i172

sw.bb33.if.end.i182_crit_edge:                    ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i182

if.then.i172:                                     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla2x00_quiesce_io(ptr noundef %vha) #10
  br label %if.end.i182

if.end.i182:                                      ; preds = %if.then.i172, %sw.bb33.if.end.i182_crit_edge
  %call.i.i173 = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 136323396) #10
  %portnum.i.i174 = getelementptr inbounds %struct.qla_hw_data, ptr %88, i32 0, i32 254
  %91 = ptrtoint ptr %portnum.i.i174 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %portnum.i.i174, align 4
  %conv.i.i175 = zext i16 %92 to i32
  %mul.i.i176 = shl nuw nsw i32 %conv.i.i175, 2
  %shl.i.i177 = shl i32 2, %mul.i.i176
  %or.i.i178 = or i32 %shl.i.i177, %call.i.i173
  %call1.i.i179 = tail call i32 @qla82xx_wr_32(ptr noundef %88, i32 noundef 136323396, i32 noundef %or.i.i178) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %call.i180 = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 136323396) #10
  %call1.i181 = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 136323384) #10
  %drv_active.068.i = shl i32 %call1.i181, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i180, i32 %drv_active.068.i)
  %cmp.not69.i = icmp eq i32 %call.i180, %drv_active.068.i
  br i1 %cmp.not69.i, label %if.end.i182.while.end.i206_crit_edge, label %while.body.lr.ph.i184

if.end.i182.while.end.i206_crit_edge:             ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i206

while.body.lr.ph.i184:                            ; preds = %if.end.i182
  %add.neg.i183 = sub i32 -3000, %93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %sub.i185260 = add i32 %add.neg.i183, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i185260)
  %cmp2.i261 = icmp sgt i32 %sub.i185260, -1
  br i1 %cmp2.i261, label %while.body.lr.ph.i184.if.then3.i_crit_edge, label %while.body.lr.ph.i184.if.end7.i_crit_edge

while.body.lr.ph.i184.if.end7.i_crit_edge:        ; preds = %while.body.lr.ph.i184
  br label %if.end7.i

while.body.lr.ph.i184.if.then3.i_crit_edge:       ; preds = %while.body.lr.ph.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

while.body.i186:                                  ; preds = %qla82xx_idc_lock.exit65.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %sub.i185 = add i32 %add.neg.i183, %95
  %cmp2.i = icmp sgt i32 %sub.i185, -1
  br i1 %cmp2.i, label %while.body.i186.if.then3.i_crit_edge, label %while.body.i186.if.end7.i_crit_edge

while.body.i186.if.end7.i_crit_edge:              ; preds = %while.body.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

while.body.i186.if.then3.i_crit_edge:             ; preds = %while.body.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.then3.i:                                       ; preds = %while.body.i186.if.then3.i_crit_edge, %while.body.lr.ph.i184.if.then3.i_crit_edge
  %drv_active.071.i.lcssa = phi i32 [ %drv_active.068.i, %while.body.lr.ph.i184.if.then3.i_crit_edge ], [ %drv_active.0.i204, %while.body.i186.if.then3.i_crit_edge ]
  %drv_state.070.i.lcssa = phi i32 [ %call.i180, %while.body.lr.ph.i184.if.then3.i_crit_edge ], [ %call9.i202, %while.body.i186.if.then3.i_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45091, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.4, i32 noundef %drv_active.071.i.lcssa, i32 noundef %drv_state.070.i.lcssa) #10
  %call4.i187 = tail call i32 @qla82xx_wr_32(ptr noundef %88, i32 noundef 136323392, i32 noundef 3) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45093, ptr noundef nonnull @.str.142) #10
  %call.i43.i = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 101826604) #10
  %call5.i = tail call i32 @qla2x00_perform_loop_resync(ptr noundef %vha) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i.i188 = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i.i188)
  %cmp56.i.i189 = icmp eq i32 %call55.i.i188, 1
  br i1 %cmp56.i.i189, label %if.then3.i.qla82xx_idc_lock.exit.i201_crit_edge, label %if.then3.i.if.end.i.i192_crit_edge

if.then3.i.if.end.i.i192_crit_edge:               ; preds = %if.then3.i
  br label %if.end.i.i192

if.then3.i.qla82xx_idc_lock.exit.i201_crit_edge:  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit.i201

if.end.i.i192:                                    ; preds = %if.end46.i.i198.if.end.i.i192_crit_edge, %if.then3.i.if.end.i.i192_crit_edge
  %total.057.i.i190 = phi i32 [ %add.i.i196, %if.end46.i.i198.if.end.i.i192_crit_edge ], [ 0, %if.then3.i.if.end.i.i192_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i.i190)
  %cmp4.i.i191 = icmp ugt i32 %total.057.i.i190, 1999
  br i1 %cmp4.i.i191, label %land.rhs.i.i194, label %if.end46.i.i198

land.rhs.i.i194:                                  ; preds = %if.end.i.i192
  %.b53.i.i193 = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i.i193, label %land.rhs.i.i194.qla82xx_idc_lock.exit.i201_crit_edge, label %if.then11.i.i195, !prof !383

land.rhs.i.i194.qla82xx_idc_lock.exit.i201_crit_edge: ; preds = %land.rhs.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit.i201

if.then11.i.i195:                                 ; preds = %land.rhs.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit.i201

if.end46.i.i198:                                  ; preds = %if.end.i.i192
  %add.i.i196 = add nuw nsw i32 %total.057.i.i190, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i44.i = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 101826600) #10
  %cmp.i.i197 = icmp eq i32 %call.i44.i, 1
  br i1 %cmp.i.i197, label %if.end46.i.i198.qla82xx_idc_lock.exit.i201_crit_edge, label %if.end46.i.i198.if.end.i.i192_crit_edge

if.end46.i.i198.if.end.i.i192_crit_edge:          ; preds = %if.end46.i.i198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i192

if.end46.i.i198.qla82xx_idc_lock.exit.i201_crit_edge: ; preds = %if.end46.i.i198
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit.i201

qla82xx_idc_lock.exit.i201:                       ; preds = %if.end46.i.i198.qla82xx_idc_lock.exit.i201_crit_edge, %if.then11.i.i195, %land.rhs.i.i194.qla82xx_idc_lock.exit.i201_crit_edge, %if.then3.i.qla82xx_idc_lock.exit.i201_crit_edge
  %96 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw, align 4
  %call.i45.i = tail call i32 @qla82xx_rd_32(ptr noundef %97, i32 noundef 136323396) #10
  %portnum.i46.i = getelementptr inbounds %struct.qla_hw_data, ptr %97, i32 0, i32 254
  %98 = ptrtoint ptr %portnum.i46.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %portnum.i46.i, align 4
  %conv.i47.i = zext i16 %99 to i32
  %mul.i48.i = shl nuw nsw i32 %conv.i47.i, 2
  %shl.i49.i = shl i32 2, %mul.i48.i
  %neg.i.i199 = xor i32 %shl.i49.i, -1
  %and.i.i200 = and i32 %call.i45.i, %neg.i.i199
  %call1.i50.i = tail call i32 @qla82xx_wr_32(ptr noundef %97, i32 noundef 136323396, i32 noundef %and.i.i200) #10
  br label %qla82xx_need_qsnt_handler.exit

if.end7.i:                                        ; preds = %while.body.i186.if.end7.i_crit_edge, %while.body.lr.ph.i184.if.end7.i_crit_edge
  %call.i51.i = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 101826604) #10
  tail call void @msleep(i32 noundef 1000) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i52.i = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i52.i)
  %cmp56.i53.i = icmp eq i32 %call55.i52.i, 1
  br i1 %cmp56.i53.i, label %if.end7.i.qla82xx_idc_lock.exit65.i_crit_edge, label %if.end7.i.if.end.i56.i_crit_edge

if.end7.i.if.end.i56.i_crit_edge:                 ; preds = %if.end7.i
  br label %if.end.i56.i

if.end7.i.qla82xx_idc_lock.exit65.i_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit65.i

if.end.i56.i:                                     ; preds = %if.end46.i63.i.if.end.i56.i_crit_edge, %if.end7.i.if.end.i56.i_crit_edge
  %total.057.i54.i = phi i32 [ %add.i60.i, %if.end46.i63.i.if.end.i56.i_crit_edge ], [ 0, %if.end7.i.if.end.i56.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i54.i)
  %cmp4.i55.i = icmp ugt i32 %total.057.i54.i, 1999
  br i1 %cmp4.i55.i, label %land.rhs.i58.i, label %if.end46.i63.i

land.rhs.i58.i:                                   ; preds = %if.end.i56.i
  %.b53.i57.i = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i57.i, label %land.rhs.i58.i.qla82xx_idc_lock.exit65.i_crit_edge, label %if.then11.i59.i, !prof !383

land.rhs.i58.i.qla82xx_idc_lock.exit65.i_crit_edge: ; preds = %land.rhs.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit65.i

if.then11.i59.i:                                  ; preds = %land.rhs.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit65.i

if.end46.i63.i:                                   ; preds = %if.end.i56.i
  %add.i60.i = add nuw nsw i32 %total.057.i54.i, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i61.i = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 101826600) #10
  %cmp.i62.i = icmp eq i32 %call.i61.i, 1
  br i1 %cmp.i62.i, label %if.end46.i63.i.qla82xx_idc_lock.exit65.i_crit_edge, label %if.end46.i63.i.if.end.i56.i_crit_edge

if.end46.i63.i.if.end.i56.i_crit_edge:            ; preds = %if.end46.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i56.i

if.end46.i63.i.qla82xx_idc_lock.exit65.i_crit_edge: ; preds = %if.end46.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit65.i

qla82xx_idc_lock.exit65.i:                        ; preds = %if.end46.i63.i.qla82xx_idc_lock.exit65.i_crit_edge, %if.then11.i59.i, %land.rhs.i58.i.qla82xx_idc_lock.exit65.i_crit_edge, %if.end7.i.qla82xx_idc_lock.exit65.i_crit_edge
  %call9.i202 = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 136323396) #10
  %call10.i203 = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 136323384) #10
  %drv_active.0.i204 = shl i32 %call10.i203, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i202, i32 %drv_active.0.i204)
  %cmp.not.i205 = icmp eq i32 %call9.i202, %drv_active.0.i204
  br i1 %cmp.not.i205, label %qla82xx_idc_lock.exit65.i.while.end.i206_crit_edge, label %while.body.i186

qla82xx_idc_lock.exit65.i.while.end.i206_crit_edge: ; preds = %qla82xx_idc_lock.exit65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i206

while.end.i206:                                   ; preds = %qla82xx_idc_lock.exit65.i.while.end.i206_crit_edge, %if.end.i182.while.end.i206_crit_edge
  %call12.i = tail call i32 @qla82xx_rd_32(ptr noundef %88, i32 noundef 136323392) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 5
  br i1 %cmp13.i, label %if.then14.i, label %while.end.i206.qla82xx_need_qsnt_handler.exit_crit_edge

while.end.i206.qla82xx_need_qsnt_handler.exit_crit_edge: ; preds = %while.end.i206
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_need_qsnt_handler.exit

if.then14.i:                                      ; preds = %while.end.i206
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45094, ptr noundef nonnull @.str.143) #10
  %call15.i207 = tail call i32 @qla82xx_wr_32(ptr noundef %88, i32 noundef 136323392, i32 noundef 7) #10
  br label %qla82xx_need_qsnt_handler.exit

qla82xx_need_qsnt_handler.exit:                   ; preds = %if.then14.i, %while.end.i206.qla82xx_need_qsnt_handler.exit_crit_edge, %qla82xx_idc_lock.exit.i201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %101 = ptrtoint ptr %fcoe_dev_init_timeout to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fcoe_dev_init_timeout, align 64
  %mul35 = mul i32 %102, 100
  %add36 = add i32 %mul35, %100
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end18
  %103 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load39 = load volatile i32, ptr %flags38, align 8
  %104 = and i32 %bf.load39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool42.not = icmp eq i32 %104, 0
  br i1 %tobool42.not, label %if.end44, label %sw.bb37.rel_lock_crit_edge

sw.bb37.rel_lock_crit_edge:                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_lock

if.end44:                                         ; preds = %sw.bb37
  %call.i208 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  tail call void @msleep(i32 noundef 1000) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i209 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i209)
  %cmp56.i210 = icmp eq i32 %call55.i209, 1
  br i1 %cmp56.i210, label %if.end44.qla82xx_idc_lock.exit222_crit_edge, label %if.end44.if.end.i213_crit_edge

if.end44.if.end.i213_crit_edge:                   ; preds = %if.end44
  br label %if.end.i213

if.end44.qla82xx_idc_lock.exit222_crit_edge:      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit222

if.end.i213:                                      ; preds = %if.end46.i220.if.end.i213_crit_edge, %if.end44.if.end.i213_crit_edge
  %total.057.i211 = phi i32 [ %add.i217, %if.end46.i220.if.end.i213_crit_edge ], [ 0, %if.end44.if.end.i213_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i211)
  %cmp4.i212 = icmp ugt i32 %total.057.i211, 1999
  br i1 %cmp4.i212, label %land.rhs.i215, label %if.end46.i220

land.rhs.i215:                                    ; preds = %if.end.i213
  %.b53.i214 = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i214, label %land.rhs.i215.qla82xx_idc_lock.exit222_crit_edge, label %if.then11.i216, !prof !383

land.rhs.i215.qla82xx_idc_lock.exit222_crit_edge: ; preds = %land.rhs.i215
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit222

if.then11.i216:                                   ; preds = %land.rhs.i215
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit222

if.end46.i220:                                    ; preds = %if.end.i213
  %add.i217 = add nuw nsw i32 %total.057.i211, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i218 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i219 = icmp eq i32 %call.i218, 1
  br i1 %cmp.i219, label %if.end46.i220.qla82xx_idc_lock.exit222_crit_edge, label %if.end46.i220.if.end.i213_crit_edge

if.end46.i220.if.end.i213_crit_edge:              ; preds = %if.end46.i220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i213

if.end46.i220.qla82xx_idc_lock.exit222_crit_edge: ; preds = %if.end46.i220
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit222

qla82xx_idc_lock.exit222:                         ; preds = %if.end46.i220.qla82xx_idc_lock.exit222_crit_edge, %if.then11.i216, %land.rhs.i215.qla82xx_idc_lock.exit222_crit_edge, %if.end44.qla82xx_idc_lock.exit222_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %105 = load volatile i32, ptr @jiffies, align 128
  %106 = ptrtoint ptr %fcoe_dev_init_timeout to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fcoe_dev_init_timeout, align 64
  %mul47 = mul i32 %107, 100
  %add48 = add i32 %mul47, %105
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla8xxx_dev_failed_handler(ptr noundef %vha)
  br label %exit

sw.default:                                       ; preds = %if.end18
  %call.i223 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  tail call void @msleep(i32 noundef 1000) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i224 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i224)
  %cmp56.i225 = icmp eq i32 %call55.i224, 1
  br i1 %cmp56.i225, label %sw.default.sw.epilog_crit_edge, label %sw.default.if.end.i228_crit_edge

sw.default.if.end.i228_crit_edge:                 ; preds = %sw.default
  br label %if.end.i228

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i228:                                      ; preds = %if.end46.i235.if.end.i228_crit_edge, %sw.default.if.end.i228_crit_edge
  %total.057.i226 = phi i32 [ %add.i232, %if.end46.i235.if.end.i228_crit_edge ], [ 0, %sw.default.if.end.i228_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i226)
  %cmp4.i227 = icmp ugt i32 %total.057.i226, 1999
  br i1 %cmp4.i227, label %land.rhs.i230, label %if.end46.i235

land.rhs.i230:                                    ; preds = %if.end.i228
  %.b53.i229 = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i229, label %land.rhs.i230.sw.epilog_crit_edge, label %if.then11.i231, !prof !383

land.rhs.i230.sw.epilog_crit_edge:                ; preds = %land.rhs.i230
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then11.i231:                                   ; preds = %land.rhs.i230
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

if.end46.i235:                                    ; preds = %if.end.i228
  %add.i232 = add nuw nsw i32 %total.057.i226, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i233 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i234 = icmp eq i32 %call.i233, 1
  br i1 %cmp.i234, label %if.end46.i235.sw.epilog_crit_edge, label %if.end46.i235.if.end.i228_crit_edge

if.end46.i235.if.end.i228_crit_edge:              ; preds = %if.end46.i235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i228

if.end46.i235.sw.epilog_crit_edge:                ; preds = %if.end46.i235
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end46.i235.sw.epilog_crit_edge, %if.then11.i231, %land.rhs.i230.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %qla82xx_idc_lock.exit222, %qla82xx_need_qsnt_handler.exit, %if.end29, %if.end46.i120.sw.epilog_crit_edge, %if.then11.i116, %land.rhs.i115.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge, %qla82xx_device_bootstrap.exit
  %rval.1 = phi i32 [ %rval.0271, %qla82xx_idc_lock.exit222 ], [ %rval.0271, %qla82xx_need_qsnt_handler.exit ], [ %rval.0271, %if.end29 ], [ %retval.0.i107, %qla82xx_device_bootstrap.exit ], [ %rval.0271, %sw.bb23.sw.epilog_crit_edge ], [ %rval.0271, %land.rhs.i115.sw.epilog_crit_edge ], [ %rval.0271, %if.then11.i116 ], [ %rval.0271, %sw.default.sw.epilog_crit_edge ], [ %rval.0271, %land.rhs.i230.sw.epilog_crit_edge ], [ %rval.0271, %if.then11.i231 ], [ %rval.0271, %if.end46.i235.sw.epilog_crit_edge ], [ %rval.0271, %if.end46.i120.sw.epilog_crit_edge ]
  %dev_init_timeout.1 = phi i32 [ %add48, %qla82xx_idc_lock.exit222 ], [ %add36, %qla82xx_need_qsnt_handler.exit ], [ %add32, %if.end29 ], [ %dev_init_timeout.0272, %qla82xx_device_bootstrap.exit ], [ %dev_init_timeout.0272, %sw.bb23.sw.epilog_crit_edge ], [ %dev_init_timeout.0272, %land.rhs.i115.sw.epilog_crit_edge ], [ %dev_init_timeout.0272, %if.then11.i116 ], [ %dev_init_timeout.0272, %sw.default.sw.epilog_crit_edge ], [ %dev_init_timeout.0272, %land.rhs.i230.sw.epilog_crit_edge ], [ %dev_init_timeout.0272, %if.then11.i231 ], [ %dev_init_timeout.0272, %if.end46.i235.sw.epilog_crit_edge ], [ %dev_init_timeout.0272, %if.end46.i120.sw.epilog_crit_edge ]
  %inc = add i32 %spec.select88, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %108, %dev_init_timeout.1
  %cmp3 = icmp sgt i32 %sub, -1
  br i1 %cmp3, label %sw.epilog.if.then4_crit_edge, label %sw.epilog.if.end5_crit_edge

sw.epilog.if.end5_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

sw.epilog.if.then4_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

rel_lock:                                         ; preds = %sw.bb37.rel_lock_crit_edge, %sw.bb, %if.then4
  %rval.2 = phi i32 [ 258, %if.then4 ], [ %rval.0271, %sw.bb ], [ %rval.0271, %sw.bb37.rel_lock_crit_edge ]
  %call.i238 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  br label %exit

exit:                                             ; preds = %rel_lock, %sw.bb49
  %rval.3 = phi i32 [ %rval.2, %rel_lock ], [ 258, %sw.bb49 ]
  ret i32 %rval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_read_temperature(ptr nocapture noundef readonly %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136324020)
  %shr = lshr i32 %call, 16
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_clear_pending_mbx(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load volatile i32, ptr %flags, align 8
  %3 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load2 = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load2, -2147483648
  store volatile i32 %bf.set, ptr %flags, align 8
  %bf.load5 = load volatile i32, ptr %flags, align 8
  %bf.clear6 = and i32 %bf.load5, -1073741825
  store volatile i32 %bf.clear6, ptr %flags, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 24592, ptr noundef nonnull @.str.27) #10
  %mbx_cmd_flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 124
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %mbx_cmd_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then.if.end10_crit_edge, label %if.then9

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %mbx_intr_comp = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 129
  tail call void @complete(ptr noundef %mbx_intr_comp) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_watchdog(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load volatile i32, ptr %flags, align 8
  %3 = and i32 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end68_crit_edge

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then:                                          ; preds = %entry
  %call = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323392)
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %5, i32 noundef 136324020) #10
  %shr.i112 = lshr i32 %call.i, 16
  %trunc.i = trunc i32 %call.i to i16
  %6 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.163)
  switch i16 %trunc.i, label %if.then.if.else_crit_edge [
    i16 3, label %if.then3
    i16 2, label %if.then2.i
  ]

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 24591, ptr noundef nonnull @.str.145, i32 noundef %shr.i112) #10
  br label %if.else

if.then3:                                         ; preds = %if.then
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 24590, ptr noundef nonnull @.str.144, i32 noundef %shr.i112) #10
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 17, ptr noundef %dpc_flags) #10
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load5 = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load5, 1024
  store volatile i32 %bf.set, ptr %flags, align 8
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %11 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then3.if.end68_crit_edge, label %if.then.i115

if.then3.if.end68_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then.i115:                                     ; preds = %if.then3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load2.i = load volatile i32, ptr %flags.i, align 8
  %bf.set.i = or i32 %bf.load2.i, -2147483648
  store volatile i32 %bf.set.i, ptr %flags.i, align 8
  %bf.load5.i = load volatile i32, ptr %flags.i, align 8
  %bf.clear6.i = and i32 %bf.load5.i, -1073741825
  store volatile i32 %bf.clear6.i, ptr %flags.i, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 24592, ptr noundef nonnull @.str.27) #10
  %mbx_cmd_flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 124
  %call.i114 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %mbx_cmd_flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool8.not.i = icmp eq i32 %call.i114, 0
  br i1 %tobool8.not.i, label %if.then.i115.if.end68_crit_edge, label %if.then9.i

if.then.i115.if.end68_crit_edge:                  ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then9.i:                                       ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #12
  %mbx_intr_comp.i = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 129
  tail call void @complete(ptr noundef %mbx_intr_comp.i) #10
  br label %if.end68

if.else:                                          ; preds = %if.then2.i, %if.then.if.else_crit_edge
  %13 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %call, label %if.else.if.else38_crit_edge [
    i32 4, label %land.lhs.true
    i32 5, label %land.lhs.true14
    i32 6, label %land.lhs.true22
  ]

if.else.if.else38_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

land.lhs.true:                                    ; preds = %if.else
  %dpc_flags7 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %14 = ptrtoint ptr %dpc_flags7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dpc_flags7, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.else38_crit_edge

land.lhs.true.if.else38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 24577, ptr noundef nonnull @.str.28) #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags7) #10
  br label %if.end68

land.lhs.true14:                                  ; preds = %if.else
  %dpc_flags15 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %17 = ptrtoint ptr %dpc_flags15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dpc_flags15, align 4
  %19 = and i32 %18, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not = icmp eq i32 %19, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true14.if.else38_crit_edge

land.lhs.true14.if.else38_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

if.then18:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 24578, ptr noundef nonnull @.str.29) #10
  tail call void @_set_bit(i32 noundef 20, ptr noundef %dpc_flags15) #10
  br label %if.end68

land.lhs.true22:                                  ; preds = %if.else
  %dpc_flags23 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %20 = ptrtoint ptr %dpc_flags23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dpc_flags23, align 4
  %22 = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool25.not = icmp eq i32 %22, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %land.lhs.true22.if.else38_crit_edge

land.lhs.true22.if.else38_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

land.lhs.true26:                                  ; preds = %land.lhs.true22
  %flags27 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %23 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load28 = load volatile i32, ptr %flags27, align 8
  %24 = and i32 %bf.load28, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp31.not = icmp eq i32 %24, 0
  br i1 %cmp31.not, label %land.lhs.true26.if.else38_crit_edge, label %if.then32

land.lhs.true26.if.else38_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

if.then32:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45141, ptr noundef nonnull @.str.30) #10
  tail call void @_set_bit(i32 noundef 17, ptr noundef %dpc_flags23) #10
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load35 = load volatile i32, ptr %flags, align 8
  %bf.set37 = or i32 %bf.load35, 1024
  store volatile i32 %bf.set37, ptr %flags, align 8
  tail call void @qla82xx_clear_pending_mbx(ptr noundef %vha)
  br label %if.end68

if.else38:                                        ; preds = %land.lhs.true26.if.else38_crit_edge, %land.lhs.true22.if.else38_crit_edge, %land.lhs.true14.if.else38_crit_edge, %land.lhs.true.if.else38_crit_edge, %if.else.if.else38_crit_edge
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %call.i117 = tail call i32 @qla82xx_rd_32(ptr noundef %27, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i117)
  %cmp.i = icmp eq i32 %call.i117, -1
  br i1 %cmp.i, label %if.then.i118, label %if.end.i

if.then.i118:                                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16777216, ptr noundef %vha, i32 noundef 24579, ptr noundef nonnull @.str.146, i32 noundef 0) #10
  br label %if.end68

if.end.i:                                         ; preds = %if.else38
  %fw_heartbeat_counter1.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 55
  %28 = ptrtoint ptr %fw_heartbeat_counter1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_heartbeat_counter1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %call.i117)
  %cmp2.i = icmp eq i32 %29, %call.i117
  %seconds_since_last_heartbeat.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 56
  br i1 %cmp2.i, label %if.end10.i, label %if.end10.thread.i

if.end10.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %seconds_since_last_heartbeat.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %seconds_since_last_heartbeat.i, align 8
  %31 = ptrtoint ptr %fw_heartbeat_counter1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i117, ptr %fw_heartbeat_counter1.i, align 4
  br label %if.end68

if.end10.i:                                       ; preds = %if.end.i
  %32 = ptrtoint ptr %seconds_since_last_heartbeat.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seconds_since_last_heartbeat.i, align 8
  %inc.i = add i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp5.i = icmp eq i32 %inc.i, 2
  %spec.store.select.i = select i1 %cmp5.i, i32 0, i32 %inc.i
  %34 = ptrtoint ptr %seconds_since_last_heartbeat.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.store.select.i, ptr %seconds_since_last_heartbeat.i, align 8
  %35 = ptrtoint ptr %fw_heartbeat_counter1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i117, ptr %fw_heartbeat_counter1.i, align 4
  br i1 %cmp5.i, label %if.then41, label %if.end10.i.if.end68_crit_edge

if.end10.i.if.end68_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then41:                                        ; preds = %if.end10.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16777216, ptr noundef %vha, i32 noundef 24580, ptr noundef nonnull @.str.147, i32 noundef 1) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16777216, ptr noundef %vha, i32 noundef 24593, ptr noundef nonnull @.str.31) #10
  %call42 = tail call i32 @qla82xx_wr_32(ptr noundef %1, i32 noundef 106954904, i32 noundef 9)
  %call43 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323240)
  %call44 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323244)
  %call45 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 118489148)
  %call46 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 119537724)
  %call47 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 120586300)
  %call48 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 121634876)
  %call49 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 116391996)
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 24581, ptr noundef nonnull @.str.32, i32 noundef %call43, i32 noundef %call44, i32 noundef %call45, i32 noundef %call46, i32 noundef %call47, i32 noundef %call48, i32 noundef %call49) #10
  %36 = and i32 %call43, 536870656
  call void @__sanitizer_cov_trace_const_cmp4(i32 26368, i32 %36)
  %cmp50 = icmp eq i32 %36, 26368
  br i1 %cmp50, label %if.then51, label %if.then41.if.end_crit_edge

if.then41.if.end_crit_edge:                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then51:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45138, ptr noundef nonnull @.str.33) #10
  br label %if.end

if.end:                                           ; preds = %if.then51, %if.then41.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call43)
  %tobool53.not = icmp sgt i32 %call43, -1
  br i1 %tobool53.not, label %if.else56, label %if.end.if.end58_crit_edge

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.else56:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 24582, ptr noundef nonnull @.str.34) #10
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.end.if.end58_crit_edge
  %.sink = phi i32 [ 2, %if.else56 ], [ 17, %if.end.if.end58_crit_edge ]
  %dpc_flags57 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %dpc_flags57) #10
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load60 = load volatile i32, ptr %flags, align 8
  %bf.set62 = or i32 %bf.load60, 1024
  store volatile i32 %bf.set62, ptr %flags, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 24583, ptr noundef nonnull @.str.35) #10
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %flags.i120 = getelementptr inbounds %struct.qla_hw_data, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %flags.i120 to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load.i121 = load volatile i32, ptr %flags.i120, align 8
  %41 = and i32 %bf.load.i121, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i122 = icmp eq i32 %41, 0
  br i1 %tobool.not.i122, label %if.end58.if.end68_crit_edge, label %if.then.i130

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then.i130:                                     ; preds = %if.end58
  %42 = ptrtoint ptr %flags.i120 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load2.i123 = load volatile i32, ptr %flags.i120, align 8
  %bf.set.i124 = or i32 %bf.load2.i123, -2147483648
  store volatile i32 %bf.set.i124, ptr %flags.i120, align 8
  %bf.load5.i125 = load volatile i32, ptr %flags.i120, align 8
  %bf.clear6.i126 = and i32 %bf.load5.i125, -1073741825
  store volatile i32 %bf.clear6.i126, ptr %flags.i120, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 24592, ptr noundef nonnull @.str.27) #10
  %mbx_cmd_flags.i127 = getelementptr inbounds %struct.qla_hw_data, ptr %39, i32 0, i32 124
  %call.i128 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %mbx_cmd_flags.i127) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool8.not.i129 = icmp eq i32 %call.i128, 0
  br i1 %tobool8.not.i129, label %if.then.i130.if.end68_crit_edge, label %if.then9.i132

if.then.i130.if.end68_crit_edge:                  ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then9.i132:                                    ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #12
  %mbx_intr_comp.i131 = getelementptr inbounds %struct.qla_hw_data, ptr %39, i32 0, i32 129
  tail call void @complete(ptr noundef %mbx_intr_comp.i131) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then9.i132, %if.then.i130.if.end68_crit_edge, %if.end58.if.end68_crit_edge, %if.end10.i.if.end68_crit_edge, %if.end10.thread.i, %if.then.i118, %if.then32, %if.then18, %if.then10, %if.then9.i, %if.then.i115.if.end68_crit_edge, %if.then3.if.end68_crit_edge, %entry.if.end68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_load_risc(ptr noundef %vha, ptr nocapture noundef readnone %srisc_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @qla82xx_device_state_handler(ptr noundef %vha)
  br label %if.end9

if.else:                                          ; preds = %entry
  %and4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end9_crit_edge, label %if.then6

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @qla8044_idc_lock(ptr noundef %1) #10
  tail call void @qla83xx_reset_ownership(ptr noundef %vha) #10
  tail call void @qla8044_idc_unlock(ptr noundef %1) #10
  %call8 = tail call i32 @qla8044_device_state_handler(ptr noundef %vha) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else.if.end9_crit_edge, %if.then
  %rval.0 = phi i32 [ %call, %if.then ], [ %call8, %if.then6 ], [ -1, %if.else.if.end9_crit_edge ]
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla8044_idc_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla83xx_reset_ownership(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla8044_device_state_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_set_reset_owner(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323392)
  br label %if.end8

if.else:                                          ; preds = %entry
  %and4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.cond.true_crit_edge, label %if.then6

if.else.cond.true_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @qla8044_rd_direct(ptr noundef %vha, i32 noundef 4) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then
  %dev_state.0 = phi i32 [ %call, %if.then ], [ %call7, %if.then6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dev_state.0)
  %cmp = icmp eq i32 %dev_state.0, 3
  br i1 %cmp, label %if.then9, label %if.else24

if.then9:                                         ; preds = %if.end8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45103, ptr noundef nonnull @.str.36) #10
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %and12 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else16, label %if.then14

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 @qla82xx_wr_32(ptr noundef %1, i32 noundef 136323392, i32 noundef 4)
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, 64
  store volatile i32 %bf.set, ptr %flags, align 8
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %7 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %portnum, align 4
  %conv = zext i16 %8 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45104, ptr noundef nonnull @.str.37, i32 noundef %conv) #10
  br label %if.end28

if.else16:                                        ; preds = %if.then9
  %and19 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else16.if.end28_crit_edge, label %if.then21

if.else16.if.end28_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then21:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla8044_wr_direct(ptr noundef %vha, i32 noundef 4, i32 noundef 4) #10
  br label %if.end28

if.else24:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dev_state.0)
  %cmp25 = icmp ult i32 %dev_state.0, 8
  br i1 %cmp25, label %if.else24.cond.true_crit_edge, label %if.else24.cond.end_crit_edge

if.else24.cond.end_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.else24.cond.true_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

cond.true:                                        ; preds = %if.else24.cond.true_crit_edge, %if.else.cond.true_crit_edge
  %dev_state.04650 = phi i32 [ %dev_state.0, %if.else24.cond.true_crit_edge ], [ 0, %if.else.cond.true_crit_edge ]
  %arrayidx.i = getelementptr [8 x ptr], ptr @q_dev_state, i32 0, i32 %dev_state.04650
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.else24.cond.end_crit_edge
  %dev_state.04649 = phi i32 [ %dev_state.04650, %cond.true ], [ %dev_state.0, %if.else24.cond.end_crit_edge ]
  %cond = phi ptr [ %10, %cond.true ], [ @.str.25, %if.else24.cond.end_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45105, ptr noundef nonnull @.str.24, i32 noundef %dev_state.04649, ptr noundef %cond) #10
  br label %if.end28

if.end28:                                         ; preds = %cond.end, %if.then21, %if.else16.if.end28_crit_edge, %if.then14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla8044_rd_direct(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla8044_wr_direct(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_abort_isp(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %device_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 13
  %2 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 32804, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, 128
  store volatile i32 %bf.set, ptr %flags, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i)
  %cmp56.i = icmp eq i32 %call55.i, 1
  br i1 %cmp56.i, label %if.end.qla82xx_idc_lock.exit_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  br label %if.end.i

if.end.qla82xx_idc_lock.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.end.i:                                         ; preds = %if.end46.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %total.057.i = phi i32 [ %add.i, %if.end46.i.if.end.i_crit_edge ], [ 0, %if.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i)
  %cmp4.i = icmp ugt i32 %total.057.i, 1999
  br i1 %cmp4.i, label %land.rhs.i, label %if.end46.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b53.i = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, label %if.then11.i, !prof !383

land.rhs.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit

if.end46.i:                                       ; preds = %if.end.i
  %add.i = add nuw nsw i32 %total.057.i, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end46.i.qla82xx_idc_lock.exit_crit_edge, label %if.end46.i.if.end.i_crit_edge

if.end46.i.if.end.i_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end46.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

qla82xx_idc_lock.exit:                            ; preds = %if.end46.i.qla82xx_idc_lock.exit_crit_edge, %if.then11.i, %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, %if.end.qla82xx_idc_lock.exit_crit_edge
  tail call void @qla82xx_set_reset_owner(ptr noundef %vha)
  %call.i90 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %5 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %isp_type, align 8
  %and2 = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %qla82xx_idc_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @qla82xx_device_state_handler(ptr noundef %vha)
  br label %if.end14

if.else:                                          ; preds = %qla82xx_idc_lock.exit
  %and8 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else.if.end14_crit_edge, label %if.then10

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @qla8044_idc_lock(ptr noundef %1) #10
  tail call void @qla83xx_reset_ownership(ptr noundef %vha) #10
  tail call void @qla8044_idc_unlock(ptr noundef %1) #10
  %call12 = tail call i32 @qla8044_device_state_handler(ptr noundef %vha) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.else.if.end14_crit_edge, %if.then4
  %rval.0 = phi i32 [ %call5, %if.then4 ], [ %call12, %if.then10 ], [ -1, %if.else.if.end14_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i91 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i91)
  %cmp56.i92 = icmp eq i32 %call55.i91, 1
  br i1 %cmp56.i92, label %if.end14.qla82xx_idc_lock.exit104_crit_edge, label %if.end14.if.end.i95_crit_edge

if.end14.if.end.i95_crit_edge:                    ; preds = %if.end14
  br label %if.end.i95

if.end14.qla82xx_idc_lock.exit104_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit104

if.end.i95:                                       ; preds = %if.end46.i102.if.end.i95_crit_edge, %if.end14.if.end.i95_crit_edge
  %total.057.i93 = phi i32 [ %add.i99, %if.end46.i102.if.end.i95_crit_edge ], [ 0, %if.end14.if.end.i95_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i93)
  %cmp4.i94 = icmp ugt i32 %total.057.i93, 1999
  br i1 %cmp4.i94, label %land.rhs.i97, label %if.end46.i102

land.rhs.i97:                                     ; preds = %if.end.i95
  %.b53.i96 = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i96, label %land.rhs.i97.qla82xx_idc_lock.exit104_crit_edge, label %if.then11.i98, !prof !383

land.rhs.i97.qla82xx_idc_lock.exit104_crit_edge:  ; preds = %land.rhs.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit104

if.then11.i98:                                    ; preds = %land.rhs.i97
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit104

if.end46.i102:                                    ; preds = %if.end.i95
  %add.i99 = add nuw nsw i32 %total.057.i93, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i100 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i101 = icmp eq i32 %call.i100, 1
  br i1 %cmp.i101, label %if.end46.i102.qla82xx_idc_lock.exit104_crit_edge, label %if.end46.i102.if.end.i95_crit_edge

if.end46.i102.if.end.i95_crit_edge:               ; preds = %if.end46.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i95

if.end46.i102.qla82xx_idc_lock.exit104_crit_edge: ; preds = %if.end46.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit104

qla82xx_idc_lock.exit104:                         ; preds = %if.end46.i102.qla82xx_idc_lock.exit104_crit_edge, %if.then11.i98, %land.rhs.i97.qla82xx_idc_lock.exit104_crit_edge, %if.end14.qla82xx_idc_lock.exit104_crit_edge
  %call.i105 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 136323396) #10
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %7 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %8 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %shl.i = shl nuw i32 1, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call.i105, %neg.i
  %call1.i = tail call i32 @qla82xx_wr_32(ptr noundef %1, i32 noundef 136323396, i32 noundef %and.i) #10
  %call.i106 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0)
  %cond = icmp eq i32 %rval.0, 0
  br i1 %cond, label %if.then16, label %if.then28

if.then16:                                        ; preds = %qla82xx_idc_lock.exit104
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load18 = load volatile i32, ptr %flags, align 8
  %bf.clear19 = and i32 %bf.load18, -1025
  store volatile i32 %bf.clear19, ptr %flags, align 8
  %bf.load22 = load volatile i32, ptr %flags, align 8
  %bf.clear23 = and i32 %bf.load22, -129
  store volatile i32 %bf.clear23, ptr %flags, align 8
  %call25 = tail call i32 @qla82xx_restart_isp(ptr noundef %vha) #10
  br label %cleanup

if.then28:                                        ; preds = %qla82xx_idc_lock.exit104
  %flags29 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %10 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load30 = load volatile i32, ptr %flags29, align 8
  %bf.set32 = or i32 %bf.load30, 1073741824
  store volatile i32 %bf.set32, ptr %flags29, align 8
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %11 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dpc_flags, align 4
  %13 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool34.not = icmp eq i32 %13, 0
  %isp_abort_cnt49 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 53
  br i1 %tobool34.not, label %if.else48, label %if.then35

if.then35:                                        ; preds = %if.then28
  %14 = ptrtoint ptr %isp_abort_cnt49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %isp_abort_cnt49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp36 = icmp eq i32 %15, 0
  br i1 %cmp36, label %if.then37, label %if.else44

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 32807, ptr noundef nonnull @.str.39) #10
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %16 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %isp_ops, align 4
  %reset_adapter = getelementptr inbounds %struct.isp_operations, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %reset_adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset_adapter, align 4
  %call38 = tail call i32 %19(ptr noundef %vha) #10
  %20 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load40 = load volatile i32, ptr %flags29, align 8
  %bf.clear41 = and i32 %bf.load40, -1073741825
  store volatile i32 %bf.clear41, ptr %flags29, align 8
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %dpc_flags) #10
  br label %cleanup

if.else44:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %15, -1
  %21 = ptrtoint ptr %isp_abort_cnt49 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dec, ptr %isp_abort_cnt49, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 32822, ptr noundef nonnull @.str.40, i32 noundef %dec) #10
  br label %cleanup

if.else48:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %isp_abort_cnt49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %isp_abort_cnt49, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 4194304, ptr noundef %vha, i32 noundef 32809, ptr noundef nonnull @.str.41, i32 noundef 5) #10
  tail call void @_set_bit(i32 noundef 10, ptr noundef %dpc_flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else48, %if.else44, %if.then37, %if.then16, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then37 ], [ 258, %if.else44 ], [ 258, %if.else48 ], [ 0, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla82xx_restart_isp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_fcoe_ctx_reset(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags, align 8
  %1 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla2x00_abort_isp_cleanup(ptr noundef %vha) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @qla2x00_try_to_stop_firmware(ptr noundef %vha) #10
  %call = tail call i32 @qla82xx_restart_isp(ptr noundef %vha) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_abort_isp_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_try_to_stop_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_wait_for_fcoe_ctx_reset(ptr noundef %vha) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %add.neg = sub i32 -30000, %0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %1 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %dpc_flags, align 4
  %3 = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.lhs.false:                                    ; preds = %while.cond
  %4 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dpc_flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false.while.end_crit_edge, label %lor.lhs.false.land.rhs_crit_edge

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %__here, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

__here:                                           ; preds = %land.rhs
  %8 = tail call i32 @llvm.read_register.i32(metadata !366) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@qla2x00_wait_for_fcoe_ctx_reset, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 2, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !398
  %call67 = tail call i32 @schedule_timeout(i32 noundef 100) #10
  %15 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dpc_flags, align 4
  %17 = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool70.not = icmp eq i32 %17, 0
  br i1 %tobool70.not, label %land.lhs.true, label %__here.while.cond.backedge_crit_edge

__here.while.cond.backedge_crit_edge:             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %__here
  %18 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dpc_flags, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool73.not = icmp eq i32 %20, 0
  br i1 %tobool73.not, label %land.lhs.true.while.end_crit_edge, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.backedge:                              ; preds = %land.lhs.true.while.cond.backedge_crit_edge, %__here.while.cond.backedge_crit_edge
  br label %while.cond

while.end:                                        ; preds = %land.lhs.true.while.end_crit_edge, %land.rhs.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge
  %status.0 = phi i32 [ 258, %land.rhs.while.end_crit_edge ], [ 258, %lor.lhs.false.while.end_crit_edge ], [ 0, %land.lhs.true.while.end_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45095, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.qla2x00_wait_for_fcoe_ctx_reset, i32 noundef %status.0) #10
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_chip_reset_cleanup(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %flags1 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load volatile i32, ptr %flags1, align 8
  %3 = and i32 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.cond.preheader:                               ; preds = %entry
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %fw_heartbeat_counter1.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 55
  %seconds_since_last_heartbeat.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 56
  tail call void @msleep(i32 noundef 1000) #10
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %and2 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %for.cond.preheader
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %7, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16777216, ptr noundef %vha, i32 noundef 24579, ptr noundef nonnull @.str.146, i32 noundef 0) #10
  br label %for.inc

if.end.i:                                         ; preds = %if.then4
  %8 = ptrtoint ptr %fw_heartbeat_counter1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_heartbeat_counter1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call.i)
  %cmp2.i = icmp eq i32 %9, %call.i
  br i1 %cmp2.i, label %if.end10.i, label %if.end10.thread.i

if.end10.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %seconds_since_last_heartbeat.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %seconds_since_last_heartbeat.i, align 8
  %11 = ptrtoint ptr %fw_heartbeat_counter1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %fw_heartbeat_counter1.i, align 4
  br label %for.inc

if.end10.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %seconds_since_last_heartbeat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seconds_since_last_heartbeat.i, align 8
  %inc.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp5.i = icmp eq i32 %inc.i, 2
  %spec.store.select.i = select i1 %cmp5.i, i32 0, i32 %inc.i
  %14 = ptrtoint ptr %seconds_since_last_heartbeat.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.store.select.i, ptr %seconds_since_last_heartbeat.i, align 8
  %15 = ptrtoint ptr %fw_heartbeat_counter1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %fw_heartbeat_counter1.i, align 4
  br i1 %cmp5.i, label %if.end10.i.if.end11.thread180_crit_edge, label %if.end10.i.for.inc_crit_edge

if.end10.i.for.inc_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end10.i.if.end11.thread180_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.thread180

if.end11.thread180:                               ; preds = %if.end10.i.1.if.end11.thread180_crit_edge, %if.end10.i.if.end11.thread180_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16777216, ptr noundef %vha, i32 noundef 24580, ptr noundef nonnull @.str.147, i32 noundef 1) #10
  br label %if.then13

if.else:                                          ; preds = %for.cond.preheader
  %and7 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.for.inc_crit_edge, label %if.end11

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end11:                                         ; preds = %if.else
  %call10 = tail call i32 @qla8044_check_fw_alive(ptr noundef %vha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.end11.for.inc_crit_edge, label %if.end11.if.then13_crit_edge

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %if.end11.1.if.then13_crit_edge, %if.end11.if.then13_crit_edge, %if.end11.thread180
  %16 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load15 = load volatile i32, ptr %flags1, align 8
  %bf.set = or i32 %bf.load15, 1024
  store volatile i32 %bf.set, ptr %flags1, align 8
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %20 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then13.if.end18_crit_edge, label %if.then.i176

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then.i176:                                     ; preds = %if.then13
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load2.i = load volatile i32, ptr %flags.i, align 8
  %bf.set.i = or i32 %bf.load2.i, -2147483648
  store volatile i32 %bf.set.i, ptr %flags.i, align 8
  %bf.load5.i = load volatile i32, ptr %flags.i, align 8
  %bf.clear6.i = and i32 %bf.load5.i, -1073741825
  store volatile i32 %bf.clear6.i, ptr %flags.i, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 24592, ptr noundef nonnull @.str.27) #10
  %mbx_cmd_flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 124
  %call.i175 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %mbx_cmd_flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool8.not.i = icmp eq i32 %call.i175, 0
  br i1 %tobool8.not.i, label %if.then.i176.if.end18_crit_edge, label %if.then9.i

if.then.i176.if.end18_crit_edge:                  ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then9.i:                                       ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #12
  %mbx_intr_comp.i = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 129
  tail call void @complete(ptr noundef %mbx_intr_comp.i) #10
  br label %if.end18

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.end10.i.for.inc_crit_edge, %if.end10.thread.i, %if.then.i
  tail call void @msleep(i32 noundef 1000) #10
  %22 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %isp_type, align 8
  %and2.1 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1)
  %tobool3.not.1 = icmp eq i32 %and2.1, 0
  br i1 %tobool3.not.1, label %if.else.1, label %if.then4.1

if.then4.1:                                       ; preds = %for.inc
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %call.i.1 = tail call i32 @qla82xx_rd_32(ptr noundef %25, i32 noundef 136323248) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.1)
  %cmp.i.1 = icmp eq i32 %call.i.1, -1
  br i1 %cmp.i.1, label %if.then.i.1, label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then4.1
  %26 = ptrtoint ptr %fw_heartbeat_counter1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_heartbeat_counter1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %call.i.1)
  %cmp2.i.1 = icmp eq i32 %27, %call.i.1
  br i1 %cmp2.i.1, label %if.end10.i.1, label %if.end10.thread.i.1

if.end10.thread.i.1:                              ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %seconds_since_last_heartbeat.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %seconds_since_last_heartbeat.i, align 8
  %29 = ptrtoint ptr %fw_heartbeat_counter1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i.1, ptr %fw_heartbeat_counter1.i, align 4
  br label %if.end18

if.end10.i.1:                                     ; preds = %if.end.i.1
  %30 = ptrtoint ptr %seconds_since_last_heartbeat.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seconds_since_last_heartbeat.i, align 8
  %inc.i.1 = add i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i.1)
  %cmp5.i.1 = icmp eq i32 %inc.i.1, 2
  %spec.store.select.i.1 = select i1 %cmp5.i.1, i32 0, i32 %inc.i.1
  %32 = ptrtoint ptr %seconds_since_last_heartbeat.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.store.select.i.1, ptr %seconds_since_last_heartbeat.i, align 8
  %33 = ptrtoint ptr %fw_heartbeat_counter1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i.1, ptr %fw_heartbeat_counter1.i, align 4
  br i1 %cmp5.i.1, label %if.end10.i.1.if.end11.thread180_crit_edge, label %if.end10.i.1.if.end18_crit_edge

if.end10.i.1.if.end18_crit_edge:                  ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end10.i.1.if.end11.thread180_crit_edge:        ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.thread180

if.then.i.1:                                      ; preds = %if.then4.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 16777216, ptr noundef %vha, i32 noundef 24579, ptr noundef nonnull @.str.146, i32 noundef 0) #10
  br label %if.end18

if.else.1:                                        ; preds = %for.inc
  %and7.1 = and i32 %23, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %tobool8.not.1 = icmp eq i32 %and7.1, 0
  br i1 %tobool8.not.1, label %if.else.1.if.end18_crit_edge, label %if.end11.1

if.else.1.if.end18_crit_edge:                     ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end11.1:                                       ; preds = %if.else.1
  %call10.1 = tail call i32 @qla8044_check_fw_alive(ptr noundef %vha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %tobool12.not.1 = icmp eq i32 %call10.1, 0
  br i1 %tobool12.not.1, label %if.end11.1.if.end18_crit_edge, label %if.end11.1.if.then13_crit_edge

if.end11.1.if.then13_crit_edge:                   ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end11.1.if.end18_crit_edge:                    ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %if.end11.1.if.end18_crit_edge, %if.else.1.if.end18_crit_edge, %if.then.i.1, %if.end10.i.1.if.end18_crit_edge, %if.end10.thread.i.1, %if.then9.i, %if.then.i176.if.end18_crit_edge, %if.then13.if.end18_crit_edge, %entry.if.end18_crit_edge
  %34 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load20 = load volatile i32, ptr %flags1, align 8
  %bf.lshr21 = lshr i32 %bf.load20, 10
  %bf.clear22 = and i32 %bf.lshr21, 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 176, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.qla82xx_chip_reset_cleanup, i32 noundef %bf.clear22) #10
  %35 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load24 = load volatile i32, ptr %flags1, align 8
  %36 = and i32 %bf.load24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool27.not = icmp eq i32 %36, 0
  br i1 %tobool27.not, label %if.then28, label %if.end18.if.end137_crit_edge

if.end18.if.end137_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then28:                                        ; preds = %if.end18
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #10
  %max_req_queues = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 30
  %37 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_req_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp37189.not = icmp eq i8 %38, 0
  br i1 %cmp37189.not, label %if.then28.for.end89_crit_edge, label %for.body39.lr.ph

if.then28.for.end89_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end89

for.body39.lr.ph:                                 ; preds = %if.then28
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 24
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  br label %for.body39

for.body39:                                       ; preds = %for.inc87.for.body39_crit_edge, %for.body39.lr.ph
  %flags.0191 = phi i32 [ %call32, %for.body39.lr.ph ], [ %flags.3, %for.inc87.for.body39_crit_edge ]
  %que.0190 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc88, %for.inc87.for.body39_crit_edge ]
  %39 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req_q_map, align 4
  %arrayidx = getelementptr ptr, ptr %40, i32 %que.0190
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %tobool40.not = icmp eq ptr %42, null
  br i1 %tobool40.not, label %for.body39.for.inc87_crit_edge, label %for.cond43.preheader

for.body39.for.inc87_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc87

for.cond43.preheader:                             ; preds = %for.body39
  %num_outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %42, i32 0, i32 18
  %43 = ptrtoint ptr %num_outstanding_cmds to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_outstanding_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %44)
  %cmp45185 = icmp ugt i16 %44, 1
  br i1 %cmp45185, label %for.body47.lr.ph, label %for.cond43.preheader.for.inc87_crit_edge

for.cond43.preheader.for.inc87_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc87

for.body47.lr.ph:                                 ; preds = %for.cond43.preheader
  %outstanding_cmds = getelementptr inbounds %struct.req_que, ptr %42, i32 0, i32 16
  br label %for.body47

for.body47:                                       ; preds = %for.inc84.for.body47_crit_edge, %for.body47.lr.ph
  %flags.1187 = phi i32 [ %flags.0191, %for.body47.lr.ph ], [ %flags.2, %for.inc84.for.body47_crit_edge ]
  %cnt.0186 = phi i32 [ 1, %for.body47.lr.ph ], [ %inc85, %for.inc84.for.body47_crit_edge ]
  %45 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %outstanding_cmds, align 4
  %arrayidx48 = getelementptr ptr, ptr %46, i32 %cnt.0186
  %47 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %48, null
  br i1 %tobool49.not, label %for.body47.for.inc84_crit_edge, label %if.then50

for.body47.for.inc84_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84

if.then50:                                        ; preds = %for.body47
  %crc_ctx = getelementptr inbounds %struct.srb, ptr %48, i32 0, i32 22, i32 0, i32 0, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %crc_ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %crc_ctx, align 4
  %tobool51.not = icmp eq ptr %50, null
  br i1 %tobool51.not, label %if.then50.land.lhs.true_crit_edge, label %lor.lhs.false

if.then50.land.lhs.true_crit_edge:                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then50
  %flags52 = getelementptr inbounds %struct.srb, ptr %48, i32 0, i32 10
  %51 = ptrtoint ptr %flags52 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags52, align 4
  %53 = and i16 %52, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool55.not = icmp eq i16 %53, 0
  br i1 %tobool55.not, label %lor.lhs.false.for.inc84_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

lor.lhs.false.for.inc84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.then50.land.lhs.true_crit_edge
  %54 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load57 = load volatile i32, ptr %flags1, align 8
  %55 = and i32 %bf.load57, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool60.not = icmp eq i32 %55, 0
  br i1 %tobool60.not, label %if.then61, label %land.lhs.true.for.inc84_crit_edge

land.lhs.true.for.inc84_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84

if.then61:                                        ; preds = %land.lhs.true
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %flags.1187) #10
  %56 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %isp_ops, align 4
  %abort_command = getelementptr inbounds %struct.isp_operations, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %abort_command to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %abort_command, align 4
  %call63 = tail call i32 %59(ptr noundef nonnull %48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.else66, label %if.then65

if.then65:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 177, ptr noundef nonnull @.str.44) #10
  br label %do.body69

if.else66:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 178, ptr noundef nonnull @.str.45) #10
  br label %do.body69

do.body69:                                        ; preds = %if.else66, %if.then65
  %call77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #10
  br label %for.inc84

for.inc84:                                        ; preds = %do.body69, %land.lhs.true.for.inc84_crit_edge, %lor.lhs.false.for.inc84_crit_edge, %for.body47.for.inc84_crit_edge
  %flags.2 = phi i32 [ %flags.1187, %land.lhs.true.for.inc84_crit_edge ], [ %call77, %do.body69 ], [ %flags.1187, %lor.lhs.false.for.inc84_crit_edge ], [ %flags.1187, %for.body47.for.inc84_crit_edge ]
  %inc85 = add nuw nsw i32 %cnt.0186, 1
  %60 = ptrtoint ptr %num_outstanding_cmds to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %num_outstanding_cmds, align 4
  %conv44 = zext i16 %61 to i32
  %cmp45 = icmp ult i32 %inc85, %conv44
  br i1 %cmp45, label %for.inc84.for.body47_crit_edge, label %for.inc84.for.inc87_crit_edge

for.inc84.for.inc87_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc87

for.inc84.for.body47_crit_edge:                   ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body47

for.inc87:                                        ; preds = %for.inc84.for.inc87_crit_edge, %for.cond43.preheader.for.inc87_crit_edge, %for.body39.for.inc87_crit_edge
  %flags.3 = phi i32 [ %flags.0191, %for.body39.for.inc87_crit_edge ], [ %flags.0191, %for.cond43.preheader.for.inc87_crit_edge ], [ %flags.2, %for.inc84.for.inc87_crit_edge ]
  %inc88 = add nuw nsw i32 %que.0190, 1
  %62 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %max_req_queues, align 8
  %conv36 = zext i8 %63 to i32
  %cmp37 = icmp ult i32 %inc88, %conv36
  br i1 %cmp37, label %for.inc87.for.body39_crit_edge, label %for.inc87.for.end89_crit_edge

for.inc87.for.end89_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end89

for.inc87.for.body39_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body39

for.end89:                                        ; preds = %for.inc87.for.end89_crit_edge, %if.then28.for.end89_crit_edge
  %flags.0.lcssa = phi i32 [ %call32, %if.then28.for.end89_crit_edge ], [ %flags.3, %for.inc87.for.end89_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %flags.0.lcssa) #10
  %call91 = tail call i32 @qla2x00_eh_wait_for_pending_commands(ptr noundef %vha, i32 noundef 0, i64 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp eq i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %land.end

if.then94:                                        ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 179, ptr noundef nonnull @.str.46) #10
  br label %if.end137

land.end:                                         ; preds = %for.end89
  %.b173 = load i1, ptr @qla82xx_chip_reset_cleanup.__already_done, align 1
  br i1 %.b173, label %land.end.if.end137_crit_edge, label %if.then102, !prof !383

land.end.if.end137_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then102:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_chip_reset_cleanup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3670, i32 noundef 9, ptr noundef null) #10
  br label %if.end137

if.end137:                                        ; preds = %if.then102, %land.end.if.end137_crit_edge, %if.then94, %if.end18.if.end137_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla8044_check_fw_alive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_eh_wait_for_pending_commands(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_validate_template_chksum(ptr nocapture noundef readonly %vha) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %md_template_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 263
  %2 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %md_template_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp13.not = icmp ult i32 %3, 4
  br i1 %cmp13.not, label %entry.while.end5_crit_edge, label %while.body.preheader

entry.while.end5_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end5

while.body.preheader:                             ; preds = %entry
  %div12 = lshr i32 %3, 2
  %md_tmplt_hdr = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 264
  %4 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %md_tmplt_hdr, align 8
  br label %while.body

while.cond1.preheader:                            ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %tobool.not17 = icmp ult i64 %add, 4294967296
  %extract.t = trunc i64 %add to i32
  br i1 %tobool.not17, label %while.cond1.preheader.while.end5_crit_edge, label %while.cond1.preheader.while.body2_crit_edge

while.cond1.preheader.while.body2_crit_edge:      ; preds = %while.cond1.preheader
  br label %while.body2

while.cond1.preheader.while.end5_crit_edge:       ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end5

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %count.016 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %div12, %while.body.preheader ]
  %d_ptr.015 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %chksum.014 = phi i64 [ %add, %while.body.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %dec = add nsw i32 %count.016, -1
  %incdec.ptr = getelementptr i32, ptr %d_ptr.015, i32 1
  %6 = ptrtoint ptr %d_ptr.015 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_ptr.015, align 4
  %conv = zext i32 %7 to i64
  %add = add i64 %chksum.014, %conv
  %cmp = icmp ugt i32 %count.016, 1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.cond1.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body2:                                      ; preds = %while.body2.while.body2_crit_edge, %while.cond1.preheader.while.body2_crit_edge
  %chksum.118 = phi i64 [ %add4, %while.body2.while.body2_crit_edge ], [ %add, %while.cond1.preheader.while.body2_crit_edge ]
  %shr = lshr i64 %chksum.118, 32
  %and = and i64 %chksum.118, 4294967295
  %add4 = add nuw nsw i64 %and, %shr
  %tobool.not = icmp ult i64 %add4, 4294967296
  br i1 %tobool.not, label %while.end5.loopexit, label %while.body2.while.body2_crit_edge

while.body2.while.body2_crit_edge:                ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body2

while.end5.loopexit:                              ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #12
  %extract.t20 = trunc i64 %add4 to i32
  br label %while.end5

while.end5:                                       ; preds = %while.end5.loopexit, %while.cond1.preheader.while.end5_crit_edge, %entry.while.end5_crit_edge
  %chksum.1.lcssa.off0 = phi i32 [ %extract.t, %while.cond1.preheader.while.end5_crit_edge ], [ %extract.t20, %while.end5.loopexit ], [ 0, %entry.while.end5_crit_edge ]
  %conv6 = xor i32 %chksum.1.lcssa.off0, -1
  ret i32 %conv6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_md_collect(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  %data_ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_ptr) #10
  %md_tmplt_hdr = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 264
  %2 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %md_tmplt_hdr, align 8
  %md_dump = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 266
  %4 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %md_dump, align 16
  %6 = ptrtoint ptr %data_ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %data_ptr, align 4
  %fw_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 167
  %7 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_dumped, align 4, !range !397
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fw_dump = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 164
  %9 = ptrtoint ptr %fw_dump to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_dump, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45111, ptr noundef nonnull @.str.47, ptr noundef %10) #10
  br label %md_failed

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %fw_dumped, align 4
  %tobool3.not = icmp eq ptr %3, null
  %tobool5.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45112, ptr noundef nonnull @.str.48) #10
  br label %md_failed

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load volatile i32, ptr %flags, align 8
  %13 = and i32 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45140, ptr noundef nonnull @.str.49) #10
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load11 = load volatile i32, ptr %flags, align 8
  %bf.clear12 = and i32 %bf.load11, -33
  store volatile i32 %bf.clear12, ptr %flags, align 8
  br label %md_failed

if.end13:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %md_template_size.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 263
  %17 = ptrtoint ptr %md_template_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %md_template_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp13.not.i = icmp ult i32 %18, 4
  br i1 %cmp13.not.i, label %if.end13.if.then15_crit_edge, label %while.body.preheader.i

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

while.body.preheader.i:                           ; preds = %if.end13
  %div12.i = lshr i32 %18, 2
  %md_tmplt_hdr.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 264
  %19 = ptrtoint ptr %md_tmplt_hdr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %md_tmplt_hdr.i, align 8
  br label %while.body.i

while.cond1.preheader.i:                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %tobool.not17.i = icmp ult i64 %add.i, 4294967296
  %extract.t.i = trunc i64 %add.i to i32
  br i1 %tobool.not17.i, label %while.cond1.preheader.i.qla82xx_validate_template_chksum.exit_crit_edge, label %while.cond1.preheader.i.while.body2.i_crit_edge

while.cond1.preheader.i.while.body2.i_crit_edge:  ; preds = %while.cond1.preheader.i
  br label %while.body2.i

while.cond1.preheader.i.qla82xx_validate_template_chksum.exit_crit_edge: ; preds = %while.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_validate_template_chksum.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %count.016.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div12.i, %while.body.preheader.i ]
  %d_ptr.015.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %20, %while.body.preheader.i ]
  %chksum.014.i = phi i64 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %dec.i = add nsw i32 %count.016.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %d_ptr.015.i, i32 1
  %21 = ptrtoint ptr %d_ptr.015.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %d_ptr.015.i, align 4
  %conv.i = zext i32 %22 to i64
  %add.i = add i64 %chksum.014.i, %conv.i
  %cmp.i = icmp ugt i32 %count.016.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.cond1.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body2.i:                                    ; preds = %while.body2.i.while.body2.i_crit_edge, %while.cond1.preheader.i.while.body2.i_crit_edge
  %chksum.118.i = phi i64 [ %add4.i, %while.body2.i.while.body2.i_crit_edge ], [ %add.i, %while.cond1.preheader.i.while.body2.i_crit_edge ]
  %shr.i = lshr i64 %chksum.118.i, 32
  %and.i = and i64 %chksum.118.i, 4294967295
  %add4.i = add nuw nsw i64 %and.i, %shr.i
  %tobool.not.i = icmp ult i64 %add4.i, 4294967296
  br i1 %tobool.not.i, label %while.end5.loopexit.i, label %while.body2.i.while.body2.i_crit_edge

while.body2.i.while.body2.i_crit_edge:            ; preds = %while.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body2.i

while.end5.loopexit.i:                            ; preds = %while.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  %extract.t20.i = trunc i64 %add4.i to i32
  br label %qla82xx_validate_template_chksum.exit

qla82xx_validate_template_chksum.exit:            ; preds = %while.end5.loopexit.i, %while.cond1.preheader.i.qla82xx_validate_template_chksum.exit_crit_edge
  %chksum.1.lcssa.off0.i = phi i32 [ %extract.t.i, %while.cond1.preheader.i.qla82xx_validate_template_chksum.exit_crit_edge ], [ %extract.t20.i, %while.end5.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chksum.1.lcssa.off0.i)
  %tobool14.not = icmp eq i32 %chksum.1.lcssa.off0.i, -1
  br i1 %tobool14.not, label %if.end16, label %qla82xx_validate_template_chksum.exit.if.then15_crit_edge

qla82xx_validate_template_chksum.exit.if.then15_crit_edge: ; preds = %qla82xx_validate_template_chksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %qla82xx_validate_template_chksum.exit.if.then15_crit_edge, %if.end13.if.then15_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45113, ptr noundef nonnull @.str.50) #10
  br label %md_failed

if.end16:                                         ; preds = %qla82xx_validate_template_chksum.exit
  %num_of_entries = getelementptr inbounds %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %num_of_entries to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %num_of_entries, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45114, ptr noundef nonnull @.str.51, i32 noundef %24) #10
  %capture_debug_level = getelementptr inbounds %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %capture_debug_level to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %capture_debug_level, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45115, ptr noundef nonnull @.str.52, i32 noundef %26) #10
  %27 = ptrtoint ptr %capture_debug_level to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %capture_debug_level, align 1
  %and18 = and i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and18)
  %cmp.not = icmp eq i32 %and18, 3
  br i1 %cmp.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %28, 255
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45116, ptr noundef nonnull @.str.53, i32 noundef %and) #10
  br label %md_failed

if.end20:                                         ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmdcapmask to i32))
  %29 = load i32, ptr @ql2xmdcapmask, align 4
  %driver_capture_mask = getelementptr inbounds %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %driver_capture_mask to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %driver_capture_mask, align 1
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %31 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %host_no, align 4
  %driver_info = getelementptr inbounds %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 9
  %33 = ptrtoint ptr %driver_info to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %driver_info, align 1
  %arrayidx22 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 167905224, ptr %arrayidx22, align 1
  %md_dump_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 267
  %35 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %md_dump_size, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45117, ptr noundef nonnull @.str.54, i32 noundef %36) #10
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %38)
  %cmp23.not = icmp eq i32 %38, 99
  br i1 %cmp23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45134, ptr noundef nonnull @.str.55, i32 noundef %38) #10
  br label %md_failed

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp28212 = icmp sgt i32 %24, 0
  br i1 %cmp28212, label %for.body.preheader, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end26
  %39 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %md_tmplt_hdr, align 8
  %first_entry_offset = getelementptr inbounds %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %first_entry_offset to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %first_entry_offset, align 1
  %add.ptr = getelementptr i8, ptr %40, i32 %42
  br label %for.body

for.body:                                         ; preds = %skip_nxt_entry.for.body_crit_edge, %for.body.preheader
  %rval.0221 = phi i32 [ %rval.2, %skip_nxt_entry.for.body_crit_edge ], [ 258, %for.body.preheader ]
  %i.0218 = phi i32 [ %inc, %skip_nxt_entry.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %data_collected.0217 = phi i32 [ %data_collected.1, %skip_nxt_entry.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %entry_hdr.0213 = phi ptr [ %add.ptr75, %skip_nxt_entry.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %data_collected.0217, i32 %36)
  %cmp29 = icmp ugt i32 %data_collected.0217, %36
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45118, ptr noundef nonnull @.str.56, i32 noundef %data_collected.0217) #10
  br label %md_failed

if.end31:                                         ; preds = %for.body
  %d_ctrl = getelementptr inbounds %struct.qla82xx_md_entry_hdr, ptr %entry_hdr.0213, i32 0, i32 3
  %43 = ptrtoint ptr %d_ctrl to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %d_ctrl, align 1
  %conv = zext i8 %44 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmdcapmask to i32))
  %45 = load i32, ptr @ql2xmdcapmask, align 4
  %and32 = and i32 %45, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end42

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags = getelementptr inbounds %struct.qla82xx_md_entry_hdr, ptr %entry_hdr.0213, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %driver_flags, align 1
  %48 = or i8 %47, -128
  store i8 %48, ptr %driver_flags, align 1
  %49 = ptrtoint ptr %entry_hdr.0213 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %entry_hdr.0213, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45119, ptr noundef nonnull @.str.57, i32 noundef %i.0218, i32 noundef %50, i32 noundef %conv) #10
  br label %skip_nxt_entry

if.end42:                                         ; preds = %if.end31
  %51 = ptrtoint ptr %data_ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data_ptr, align 4
  %53 = ptrtoint ptr %entry_hdr.0213 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %entry_hdr.0213, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45120, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.qla82xx_md_collect, i32 noundef %i.0218, ptr noundef %52, ptr noundef %entry_hdr.0213, i32 noundef %54, i32 noundef %conv) #10
  %55 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %md_dump_size, align 4
  %sub = sub i32 %56, %data_collected.0217
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45121, ptr noundef nonnull @.str.59, i32 noundef %data_collected.0217, i32 noundef %sub) #10
  %57 = ptrtoint ptr %entry_hdr.0213 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %entry_hdr.0213, align 1
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %58, label %sw.default [
    i32 255, label %sw.bb
    i32 98, label %sw.bb49
    i32 1, label %sw.bb55
    i32 72, label %sw.bb56
    i32 4, label %if.end42.sw.bb62_crit_edge
    i32 71, label %if.end42.sw.bb62_crit_edge303
    i32 21, label %if.end42.sw.bb63_crit_edge
    i32 22, label %if.end42.sw.bb63_crit_edge304
    i32 23, label %if.end42.sw.bb63_crit_edge305
    i32 24, label %if.end42.sw.bb63_crit_edge306
    i32 11, label %if.end42.sw.bb69_crit_edge
    i32 12, label %if.end42.sw.bb69_crit_edge307
    i32 6, label %sw.bb70
    i32 2, label %sw.bb71
    i32 3, label %sw.bb72
  ]

if.end42.sw.bb69_crit_edge307:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

if.end42.sw.bb69_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

if.end42.sw.bb63_crit_edge306:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

if.end42.sw.bb63_crit_edge305:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

if.end42.sw.bb63_crit_edge304:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

if.end42.sw.bb63_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

if.end42.sw.bb62_crit_edge303:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62

if.end42.sw.bb62_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62

sw.bb:                                            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qla82xx_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0213, i32 noundef %i.0218)
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end42
  %call50 = tail call fastcc i32 @qla82xx_minidump_process_control(ptr noundef %vha, ptr noundef %entry_hdr.0213)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %sw.bb49.sw.epilog_crit_edge, label %if.then53

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then53:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qla82xx_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0213, i32 noundef %i.0218)
  br label %md_failed

sw.bb55:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @qla82xx_minidump_process_rdcrb(ptr noundef %vha, ptr noundef %entry_hdr.0213, ptr noundef nonnull %data_ptr)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end42
  %call57 = call fastcc i32 @qla82xx_minidump_process_rdmem(ptr noundef %vha, ptr noundef %entry_hdr.0213, ptr noundef nonnull %data_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %sw.bb56.sw.epilog_crit_edge, label %if.then60

sw.bb56.sw.epilog_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then60:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qla82xx_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0213, i32 noundef %i.0218)
  br label %md_failed

sw.bb62:                                          ; preds = %if.end42.sw.bb62_crit_edge, %if.end42.sw.bb62_crit_edge303
  call fastcc void @qla82xx_minidump_process_rdrom(ptr noundef %vha, ptr noundef %entry_hdr.0213, ptr noundef nonnull %data_ptr)
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end42.sw.bb63_crit_edge, %if.end42.sw.bb63_crit_edge304, %if.end42.sw.bb63_crit_edge305, %if.end42.sw.bb63_crit_edge306
  %call64 = call fastcc i32 @qla82xx_minidump_process_l2tag(ptr noundef %vha, ptr noundef %entry_hdr.0213, ptr noundef nonnull %data_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65.not = icmp eq i32 %call64, 0
  br i1 %cmp65.not, label %sw.bb63.sw.epilog_crit_edge, label %if.then67

sw.bb63.sw.epilog_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then67:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qla82xx_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0213, i32 noundef %i.0218)
  br label %md_failed

sw.bb69:                                          ; preds = %if.end42.sw.bb69_crit_edge, %if.end42.sw.bb69_crit_edge307
  call fastcc void @qla82xx_minidump_process_l1cache(ptr noundef %vha, ptr noundef %entry_hdr.0213, ptr noundef nonnull %data_ptr)
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end42
  %read_addr_stride.i = getelementptr inbounds %struct.qla82xx_md_entry_rdocm, ptr %entry_hdr.0213, i32 0, i32 8
  %60 = ptrtoint ptr %read_addr_stride.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %read_addr_stride.i, align 1
  %op_count.i = getelementptr inbounds %struct.qla82xx_md_entry_rdocm, ptr %entry_hdr.0213, i32 0, i32 4
  %62 = ptrtoint ptr %op_count.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %op_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp7.not.i = icmp eq i32 %63, 0
  br i1 %cmp7.not.i, label %sw.bb70.qla82xx_minidump_process_rdocm.exit_crit_edge, label %for.body.lr.ph.i

sw.bb70.qla82xx_minidump_process_rdocm.exit_crit_edge: ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_minidump_process_rdocm.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb70
  %read_addr.i = getelementptr inbounds %struct.qla82xx_md_entry_rdocm, ptr %entry_hdr.0213, i32 0, i32 7
  %64 = ptrtoint ptr %read_addr.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %read_addr.i, align 1
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %67, i32 0, i32 242
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %data_ptr.010.i = phi ptr [ %52, %for.body.lr.ph.i ], [ %incdec.ptr.i191, %for.body.i.for.body.i_crit_edge ]
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %r_addr.08.i = phi i32 [ %65, %for.body.lr.ph.i ], [ %add.i192, %for.body.i.for.body.i_crit_edge ]
  %68 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 %r_addr.08.i
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %incdec.ptr.i191 = getelementptr i32, ptr %data_ptr.010.i, i32 1
  %71 = ptrtoint ptr %data_ptr.010.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %data_ptr.010.i, align 4
  %add.i192 = add i32 %r_addr.08.i, %61
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %63
  br i1 %exitcond.not.i, label %for.body.i.qla82xx_minidump_process_rdocm.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.qla82xx_minidump_process_rdocm.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_minidump_process_rdocm.exit

qla82xx_minidump_process_rdocm.exit:              ; preds = %for.body.i.qla82xx_minidump_process_rdocm.exit_crit_edge, %sw.bb70.qla82xx_minidump_process_rdocm.exit_crit_edge
  %data_ptr.0.lcssa.i = phi ptr [ %52, %sw.bb70.qla82xx_minidump_process_rdocm.exit_crit_edge ], [ %incdec.ptr.i191, %for.body.i.qla82xx_minidump_process_rdocm.exit_crit_edge ]
  %72 = ptrtoint ptr %data_ptr to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %data_ptr.0.lcssa.i, ptr %data_ptr, align 4
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @qla82xx_minidump_process_rdmux(ptr noundef %vha, ptr noundef %entry_hdr.0213, ptr noundef nonnull %data_ptr)
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @qla82xx_minidump_process_queue(ptr noundef %vha, ptr noundef %entry_hdr.0213, ptr noundef nonnull %data_ptr)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qla82xx_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0213, i32 noundef %i.0218)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb72, %sw.bb71, %qla82xx_minidump_process_rdocm.exit, %sw.bb69, %sw.bb63.sw.epilog_crit_edge, %sw.bb62, %sw.bb56.sw.epilog_crit_edge, %sw.bb55, %sw.bb49.sw.epilog_crit_edge, %sw.bb
  %rval.1 = phi i32 [ %rval.0221, %sw.default ], [ %rval.0221, %sw.bb72 ], [ %rval.0221, %sw.bb71 ], [ %rval.0221, %qla82xx_minidump_process_rdocm.exit ], [ %rval.0221, %sw.bb69 ], [ 0, %sw.bb63.sw.epilog_crit_edge ], [ %rval.0221, %sw.bb62 ], [ 0, %sw.bb56.sw.epilog_crit_edge ], [ %rval.0221, %sw.bb55 ], [ 0, %sw.bb49.sw.epilog_crit_edge ], [ %rval.0221, %sw.bb ]
  %73 = ptrtoint ptr %data_ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data_ptr, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45122, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.qla82xx_md_collect, i32 noundef %i.0218, ptr noundef %74) #10
  %75 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %md_dump, align 16
  %sub.ptr.lhs.cast = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %76 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %skip_nxt_entry

skip_nxt_entry:                                   ; preds = %sw.epilog, %if.then34
  %data_collected.1 = phi i32 [ %sub.ptr.sub, %sw.epilog ], [ %data_collected.0217, %if.then34 ]
  %rval.2 = phi i32 [ %rval.1, %sw.epilog ], [ %rval.0221, %if.then34 ]
  %entry_size = getelementptr inbounds %struct.qla82xx_md_entry_hdr, ptr %entry_hdr.0213, i32 0, i32 1
  %77 = ptrtoint ptr %entry_size to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %entry_size, align 1
  %add.ptr75 = getelementptr i8, ptr %entry_hdr.0213, i32 %78
  %inc = add nuw nsw i32 %i.0218, 1
  %exitcond.not = icmp eq i32 %inc, %24
  br i1 %exitcond.not, label %skip_nxt_entry.for.end_crit_edge, label %skip_nxt_entry.for.body_crit_edge

skip_nxt_entry.for.body_crit_edge:                ; preds = %skip_nxt_entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

skip_nxt_entry.for.end_crit_edge:                 ; preds = %skip_nxt_entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %skip_nxt_entry.for.end_crit_edge, %if.end26.for.end_crit_edge
  %data_collected.0.lcssa = phi i32 [ 0, %if.end26.for.end_crit_edge ], [ %data_collected.1, %skip_nxt_entry.for.end_crit_edge ]
  %rval.0.lcssa = phi i32 [ 258, %if.end26.for.end_crit_edge ], [ %rval.2, %skip_nxt_entry.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %data_collected.0.lcssa, i32 %36)
  %cmp76.not = icmp eq i32 %data_collected.0.lcssa, %36
  br i1 %cmp76.not, label %if.end79, label %if.then78

if.then78:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45123, ptr noundef nonnull @.str.61, i32 noundef %data_collected.0.lcssa, i32 noundef %36) #10
  br label %md_failed

if.end79:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %host_no, align 4
  %81 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %md_tmplt_hdr, align 8
  %83 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %md_dump, align 16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45124, ptr noundef nonnull @.str.62, i32 noundef %80, ptr noundef %82, i32 noundef %80, ptr noundef %84) #10
  %85 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %fw_dumped, align 4
  %call85 = tail call i32 @qla2x00_post_uevent_work(ptr noundef %vha, i32 noundef 0) #10
  br label %md_failed

md_failed:                                        ; preds = %if.end79, %if.then78, %if.then67, %if.then60, %if.then53, %if.then30, %if.then24, %if.then19, %if.then15, %if.then9, %if.then6, %if.then
  %rval.3 = phi i32 [ 258, %if.then ], [ 258, %if.then9 ], [ 258, %if.then15 ], [ 258, %if.then19 ], [ 258, %if.then24 ], [ %rval.0221, %if.then30 ], [ %call64, %if.then67 ], [ %call57, %if.then60 ], [ %call50, %if.then53 ], [ %rval.0.lcssa, %if.then78 ], [ %rval.0.lcssa, %if.end79 ], [ 258, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_ptr) #10
  ret i32 %rval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla82xx_mark_entry_skipped(ptr noundef %vha, ptr nocapture noundef %entry_hdr, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_ctrl = getelementptr inbounds %struct.qla82xx_md_entry_hdr, ptr %entry_hdr, i32 0, i32 3
  %driver_flags = getelementptr inbounds %struct.qla82xx_md_entry_hdr, ptr %entry_hdr, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_flags, align 1
  %2 = or i8 %1, -128
  store i8 %2, ptr %driver_flags, align 1
  %3 = ptrtoint ptr %entry_hdr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %entry_hdr, align 1
  %5 = ptrtoint ptr %d_ctrl to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %d_ctrl, align 1
  %conv3 = zext i8 %6 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45110, ptr noundef nonnull @.str.57, i32 noundef %index, i32 noundef %4, i32 noundef %conv3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla82xx_minidump_process_control(ptr nocapture noundef readonly %vha, ptr noundef readonly %entry_hdr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %md_tmplt_hdr = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 264
  %2 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %md_tmplt_hdr, align 8
  %op_count = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 4
  %4 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %op_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp74.not = icmp eq i32 %5, 0
  br i1 %cmp74.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %addr1 = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 1
  %6 = ptrtoint ptr %addr1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %addr1, align 1
  %crb_ctrl = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 5
  %value_1 = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 6
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %value_2 = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 7
  %value_3 = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 8
  %poll_timeout = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 2, i32 2
  %state_index_a = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 2, i32 1
  %state_index_v = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 5, i32 1
  %shl = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 5, i32 2
  %shr = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 5, i32 3
  %crb_strd128 = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end127.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end127.for.body_crit_edge ]
  %rval.078 = phi i32 [ 0, %for.body.lr.ph ], [ %rval.2, %if.end127.for.body_crit_edge ]
  %crb_addr.075 = phi i32 [ %7, %for.body.lr.ph ], [ %add130, %if.end127.for.body_crit_edge ]
  %8 = ptrtoint ptr %crb_ctrl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crb_ctrl, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %value_1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %value_1, align 1
  %12 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 1245280
  %and.i = and i32 %crb_addr.075, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #10, !srcloc !378
  %15 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %16, i32 1245280
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i = and i32 %crb_addr.075, 65535
  %add6.i = or i32 %and3.i, 1966080
  %18 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %19, i32 %add6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %20) #10, !srcloc !378
  %and3 = and i32 %conv, 254
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %opcode.0 = phi i32 [ %and3, %if.then ], [ %conv, %for.body.if.end_crit_edge ]
  %and4 = and i32 %opcode.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %22, i32 1245280
  %and.i3 = and i32 %crb_addr.075, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %and.i3) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %23) #10, !srcloc !378
  %24 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i4 = getelementptr i8, ptr %25, i32 1245280
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i4) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i5 = and i32 %crb_addr.075, 65535
  %add6.i6 = or i32 %and3.i5, 1966080
  %27 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i7 = getelementptr i8, ptr %28, i32 %add6.i6
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i7) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %30 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %31, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %23) #10, !srcloc !378
  %32 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i11 = getelementptr i8, ptr %33, i32 1245280
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i11) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %35 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i14 = getelementptr i8, ptr %36, i32 %add6.i6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i14, i32 %29) #10, !srcloc !378
  %and9 = and i32 %opcode.0, 253
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %opcode.1 = phi i32 [ %and9, %if.then6 ], [ %opcode.0, %if.end.if.end10_crit_edge ]
  %and11 = and i32 %opcode.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end23_crit_edge, label %if.then13

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then13:                                        ; preds = %if.end10
  %37 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %38, i32 1245280
  %and.i17 = and i32 %crb_addr.075, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %39 = tail call i32 @llvm.bswap.i32(i32 %and.i17) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %39) #10, !srcloc !378
  %40 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i18 = getelementptr i8, ptr %41, i32 1245280
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i19 = and i32 %crb_addr.075, 65535
  %add6.i20 = or i32 %and3.i19, 1966080
  %43 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i21 = getelementptr i8, ptr %44, i32 %add6.i20
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i21) #10, !srcloc !379
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %47 = ptrtoint ptr %value_2 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %value_2, align 1
  %and15 = and i32 %48, %46
  %and16 = and i32 %opcode.1, -5
  %and17 = and i32 %opcode.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then13.if.end21_crit_edge, label %if.then19

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %value_3 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %value_3, align 1
  %or = or i32 %50, %and15
  %and20 = and i32 %opcode.1, -13
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then13.if.end21_crit_edge
  %read_value.0 = phi i32 [ %or, %if.then19 ], [ %and15, %if.then13.if.end21_crit_edge ]
  %opcode.2 = phi i32 [ %and20, %if.then19 ], [ %and16, %if.then13.if.end21_crit_edge ]
  %51 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %52, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %39) #10, !srcloc !378
  %53 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i25 = getelementptr i8, ptr %54, i32 1245280
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i25) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %56 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i28 = getelementptr i8, ptr %57, i32 %add6.i20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %58 = tail call i32 @llvm.bswap.i32(i32 %read_value.0) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i28, i32 %58) #10, !srcloc !378
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end10.if.end23_crit_edge
  %opcode.3 = phi i32 [ %opcode.2, %if.end21 ], [ %opcode.1, %if.end10.if.end23_crit_edge ]
  %and24 = and i32 %opcode.3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end32_crit_edge, label %if.then26

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %60, i32 1245280
  %and.i31 = and i32 %crb_addr.075, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %61 = tail call i32 @llvm.bswap.i32(i32 %and.i31) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %61) #10, !srcloc !378
  %62 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i32 = getelementptr i8, ptr %63, i32 1245280
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i32) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i33 = and i32 %crb_addr.075, 65535
  %add6.i34 = or i32 %and3.i33, 1966080
  %65 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i35 = getelementptr i8, ptr %66, i32 %add6.i34
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i35) #10, !srcloc !379
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %69 = ptrtoint ptr %value_3 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %value_3, align 1
  %or29 = or i32 %70, %68
  %71 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %72, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %61) #10, !srcloc !378
  %73 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i39 = getelementptr i8, ptr %74, i32 1245280
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i39) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %76 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i42 = getelementptr i8, ptr %77, i32 %add6.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %78 = tail call i32 @llvm.bswap.i32(i32 %or29) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i42, i32 %78) #10, !srcloc !378
  %and31 = and i32 %opcode.3, -9
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end23.if.end32_crit_edge
  %opcode.4 = phi i32 [ %and31, %if.then26 ], [ %opcode.3, %if.end23.if.end32_crit_edge ]
  %and33 = and i32 %opcode.4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end52_crit_edge, label %if.then35

if.end32.if.end52_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then35:                                        ; preds = %if.end32
  %79 = ptrtoint ptr %poll_timeout to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %poll_timeout, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %82 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %83, i32 1245280
  %and.i45 = and i32 %crb_addr.075, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %84 = tail call i32 @llvm.bswap.i32(i32 %and.i45) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %84) #10, !srcloc !378
  %85 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i46 = getelementptr i8, ptr %86, i32 1245280
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i46) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i47 = and i32 %crb_addr.075, 65535
  %add6.i48 = or i32 %and3.i47, 1966080
  %88 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i49 = getelementptr i8, ptr %89, i32 %add6.i48
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i49) #10, !srcloc !379
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %92 = ptrtoint ptr %value_2 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %value_2, align 1
  %and3971 = and i32 %93, %91
  %94 = ptrtoint ptr %value_1 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %value_1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and3971, i32 %95)
  %cmp4172 = icmp eq i32 %and3971, %95
  br i1 %cmp4172, label %if.then35.do.end_crit_edge, label %if.else.lr.ph

if.then35.do.end_crit_edge:                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.else.lr.ph:                                    ; preds = %if.then35
  %conv36 = zext i16 %80 to i32
  %96 = add i32 %81, %conv36
  br label %if.else

if.else:                                          ; preds = %if.else47.if.else_crit_edge, %if.else.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %97, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp44 = icmp sgt i32 %sub, -1
  br i1 %cmp44, label %if.else.do.end_crit_edge, label %if.else47

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.else47:                                        ; preds = %if.else
  %98 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %99, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %84) #10, !srcloc !378
  %100 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i53 = getelementptr i8, ptr %101, i32 1245280
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i53) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %103 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i56 = getelementptr i8, ptr %104, i32 %add6.i48
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i56) #10, !srcloc !379
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %107 = ptrtoint ptr %value_2 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %value_2, align 1
  %and39 = and i32 %108, %106
  %109 = ptrtoint ptr %value_1 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %value_1, align 1
  %cmp41 = icmp eq i32 %and39, %110
  br i1 %cmp41, label %if.else47.do.end_crit_edge, label %if.else47.if.else_crit_edge

if.else47.if.else_crit_edge:                      ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else47.do.end_crit_edge:                       ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.else47.do.end_crit_edge, %if.else.do.end_crit_edge, %if.then35.do.end_crit_edge
  %rval.1 = phi i32 [ %rval.078, %if.then35.do.end_crit_edge ], [ 258, %if.else.do.end_crit_edge ], [ %rval.078, %if.else47.do.end_crit_edge ]
  %and51 = and i32 %opcode.4, -17
  br label %if.end52

if.end52:                                         ; preds = %do.end, %if.end32.if.end52_crit_edge
  %opcode.5 = phi i32 [ %and51, %do.end ], [ %opcode.4, %if.end32.if.end52_crit_edge ]
  %rval.2 = phi i32 [ %rval.1, %do.end ], [ %rval.078, %if.end32.if.end52_crit_edge ]
  %and53 = and i32 %opcode.5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end70_crit_edge, label %if.then55

if.end52.if.end70_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then55:                                        ; preds = %if.end52
  %111 = ptrtoint ptr %state_index_a to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %state_index_a, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool57.not = icmp eq i8 %112, 0
  br i1 %tobool57.not, label %if.then55.if.end63_crit_edge, label %if.then58

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %conv61 = zext i8 %112 to i32
  %arrayidx = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 10, i32 %conv61
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %arrayidx, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.then55.if.end63_crit_edge
  %addr.0 = phi i32 [ %114, %if.then58 ], [ %crb_addr.075, %if.then55.if.end63_crit_edge ]
  %115 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %116, i32 1245280
  %and.i59 = and i32 %addr.0, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %117 = tail call i32 @llvm.bswap.i32(i32 %and.i59) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %117) #10, !srcloc !378
  %118 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i60 = getelementptr i8, ptr %119, i32 1245280
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i60) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i61 = and i32 %addr.0, 65535
  %add6.i62 = or i32 %and3.i61, 1966080
  %121 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i63 = getelementptr i8, ptr %122, i32 %add6.i62
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i63) #10, !srcloc !379
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %125 = ptrtoint ptr %state_index_v to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %state_index_v, align 1
  %conv66 = zext i8 %126 to i32
  %arrayidx68 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 10, i32 %conv66
  %127 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 %124, ptr %arrayidx68, align 1
  %and69 = and i32 %opcode.5, -33
  br label %if.end70

if.end70:                                         ; preds = %if.end63, %if.end52.if.end70_crit_edge
  %opcode.6 = phi i32 [ %and69, %if.end63 ], [ %opcode.5, %if.end52.if.end70_crit_edge ]
  %and71 = and i32 %opcode.6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end99_crit_edge, label %if.then73

if.end70.if.end99_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then73:                                        ; preds = %if.end70
  %128 = ptrtoint ptr %state_index_a to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %state_index_a, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool76.not = icmp eq i8 %129, 0
  br i1 %tobool76.not, label %if.then73.if.end84_crit_edge, label %if.then77

if.then73.if.end84_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  %conv80 = zext i8 %129 to i32
  %arrayidx82 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 10, i32 %conv80
  %130 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %arrayidx82, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.then77, %if.then73.if.end84_crit_edge
  %addr.1 = phi i32 [ %131, %if.then77 ], [ %crb_addr.075, %if.then73.if.end84_crit_edge ]
  %132 = ptrtoint ptr %state_index_v to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %state_index_v, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool87.not = icmp eq i8 %133, 0
  %conv91 = zext i8 %133 to i32
  %arrayidx93 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 10, i32 %conv91
  %read_value.2.in = select i1 %tobool87.not, ptr %value_1, ptr %arrayidx93
  %134 = ptrtoint ptr %read_value.2.in to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %read_value.2 = load i32, ptr %read_value.2.in, align 1
  %135 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %136, i32 1245280
  %and.i66 = and i32 %addr.1, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %137 = tail call i32 @llvm.bswap.i32(i32 %and.i66) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %137) #10, !srcloc !378
  %138 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i67 = getelementptr i8, ptr %139, i32 1245280
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i67) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i68 = and i32 %addr.1, 65535
  %add6.i69 = or i32 %and3.i68, 1966080
  %141 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i70 = getelementptr i8, ptr %142, i32 %add6.i69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %143 = tail call i32 @llvm.bswap.i32(i32 %read_value.2) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i70, i32 %143) #10, !srcloc !378
  %and98 = and i32 %opcode.6, -65
  br label %if.end99

if.end99:                                         ; preds = %if.end84, %if.end70.if.end99_crit_edge
  %opcode.7 = phi i32 [ %and98, %if.end84 ], [ %opcode.6, %if.end70.if.end99_crit_edge ]
  %and100 = and i32 %opcode.7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end127_crit_edge, label %if.then102

if.end99.if.end127_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %state_index_v to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %state_index_v, align 1
  %conv105 = zext i8 %145 to i32
  %arrayidx107 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 10, i32 %conv105
  %146 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %arrayidx107, align 1
  %148 = ptrtoint ptr %shl to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %shl, align 1
  %conv109 = zext i8 %149 to i32
  %shl110 = shl i32 %147, %conv109
  %150 = ptrtoint ptr %shr to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %shr, align 1
  %conv112 = zext i8 %151 to i32
  %shr113 = lshr i32 %shl110, %conv112
  %152 = ptrtoint ptr %value_2 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %value_2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool115.not = icmp eq i32 %153, 0
  %and118 = select i1 %tobool115.not, i32 -1, i32 %153
  %spec.select = and i32 %and118, %shr113
  %154 = ptrtoint ptr %value_3 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %value_3, align 1
  %or121 = or i32 %spec.select, %155
  %156 = ptrtoint ptr %value_1 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %value_1, align 1
  %add123 = add i32 %or121, %157
  %158 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store i32 %add123, ptr %arrayidx107, align 1
  br label %if.end127

if.end127:                                        ; preds = %if.then102, %if.end99.if.end127_crit_edge
  %159 = ptrtoint ptr %crb_strd128 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %crb_strd128, align 1
  %conv129 = zext i8 %160 to i32
  %add130 = add i32 %crb_addr.075, %conv129
  %inc = add nuw i32 %i.079, 1
  %161 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %op_count, align 1
  %cmp = icmp ult i32 %inc, %162
  br i1 %cmp, label %if.end127.for.body_crit_edge, label %if.end127.for.end_crit_edge

if.end127.for.end_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end127.for.body_crit_edge:                     ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end127.for.end_crit_edge, %entry.for.end_crit_edge
  %rval.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %rval.2, %if.end127.for.end_crit_edge ]
  ret i32 %rval.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla82xx_minidump_process_rdcrb(ptr nocapture noundef readonly %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_ptr, align 4
  %crb_strd = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 2
  %2 = ptrtoint ptr %crb_strd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %crb_strd, align 1
  %conv = zext i8 %3 to i32
  %op_count = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 4
  %4 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %op_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %addr = getelementptr inbounds %struct.qla82xx_md_entry_crb, ptr %entry_hdr, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %addr, align 1
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 242
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.014 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr2, %for.body.for.body_crit_edge ]
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %r_addr.012 = phi i32 [ %7, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 1245280
  %and.i = and i32 %r_addr.012, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #10, !srcloc !378
  %13 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %14, i32 1245280
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i = and i32 %r_addr.012, 65535
  %add6.i = or i32 %and3.i, 1966080
  %16 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %17, i32 %add6.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %19 = tail call i32 @llvm.bswap.i32(i32 %r_addr.012)
  %incdec.ptr = getelementptr i32, ptr %data_ptr.014, i32 1
  %20 = ptrtoint ptr %data_ptr.014 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %data_ptr.014, align 4
  %incdec.ptr2 = getelementptr i32, ptr %data_ptr.014, i32 2
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %incdec.ptr, align 4
  %add = add i32 %r_addr.012, %conv
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %incdec.ptr2, %for.body.for.end_crit_edge ]
  %22 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla82xx_minidump_process_rdmem(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_ptr, align 4
  %read_addr = getelementptr inbounds %struct.qla82xx_md_entry_rdmem, ptr %entry_hdr, i32 0, i32 2
  %4 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %read_addr, align 1
  %read_data_size = getelementptr inbounds %struct.qla82xx_md_entry_rdmem, ptr %entry_hdr, i32 0, i32 3
  %6 = ptrtoint ptr %read_data_size to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %read_data_size, align 1
  %div109 = lshr i32 %7, 4
  %and = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45107, ptr noundef nonnull @.str.148, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45108, ptr noundef nonnull @.str.149, i32 noundef %7) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45109, ptr noundef nonnull @.str.150, ptr noundef nonnull @__func__.qla82xx_minidump_process_rdmem, i32 noundef %5, i32 noundef %7, i32 noundef %div109) #10
  %hw_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 253
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp7135.not = icmp ult i32 %7, 16
  br i1 %cmp7135.not, label %if.end5.do.body56_crit_edge, label %for.body.lr.ph

if.end5.do.body56_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

for.body.lr.ph:                                   ; preds = %if.end5
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %umax = call i32 @llvm.umax.i32(i32 %div109, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body48.preheader.for.body_crit_edge, %for.body.lr.ph
  %r_addr.0138 = phi i32 [ %5, %for.body.lr.ph ], [ %add, %for.body48.preheader.for.body_crit_edge ]
  %data_ptr.0137 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr.3, %for.body48.preheader.for.body_crit_edge ]
  %i.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %inc54, %for.body48.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65) #10, !srcloc !378
  %10 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 1245280
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %13 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %14, i32 1966228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %r_addr.0138) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %15) #10, !srcloc !378
  %16 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %17, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 65) #10, !srcloc !378
  %18 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i112 = getelementptr i8, ptr %19, i32 1245280
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i112) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %21 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i113 = getelementptr i8, ptr %22, i32 1966232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i113, i32 0) #10, !srcloc !378
  %23 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %24, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 65) #10, !srcloc !378
  %25 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i116 = getelementptr i8, ptr %26, i32 1245280
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i116) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %28 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i117 = getelementptr i8, ptr %29, i32 1966224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i117, i32 33554432) #10, !srcloc !378
  %30 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %31, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 65) #10, !srcloc !378
  %32 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i120 = getelementptr i8, ptr %33, i32 1245280
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i120) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %35 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i121 = getelementptr i8, ptr %36, i32 1966224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i121, i32 50331648) #10, !srcloc !378
  br label %for.body16

for.cond13:                                       ; preds = %for.body16
  %inc = add nuw nsw i32 %j.0132, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then25, label %for.cond13.for.body16_crit_edge

for.cond13.for.body16_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

for.body16:                                       ; preds = %for.cond13.for.body16_crit_edge, %for.body
  %j.0132 = phi i32 [ 0, %for.body ], [ %inc, %for.cond13.for.body16_crit_edge ]
  %37 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %38, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 65) #10, !srcloc !378
  %39 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i124 = getelementptr i8, ptr %40, i32 1245280
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i124) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %42 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i125 = getelementptr i8, ptr %43, i32 1966224
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i125) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %45 = and i32 %44, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp19 = icmp eq i32 %45, 0
  br i1 %cmp19, label %for.body48.preheader, label %for.cond13

for.body48.preheader:                             ; preds = %for.body16
  %46 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %47, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 65) #10, !srcloc !378
  %48 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i128 = getelementptr i8, ptr %49, i32 1245280
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i128) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %51 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i129 = getelementptr i8, ptr %52, i32 1966248
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i129) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %incdec.ptr = getelementptr i32, ptr %data_ptr.0137, i32 1
  %54 = ptrtoint ptr %data_ptr.0137 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %data_ptr.0137, align 4
  %55 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i127.1 = getelementptr i8, ptr %56, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.1, i32 65) #10, !srcloc !378
  %57 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i128.1 = getelementptr i8, ptr %58, i32 1245280
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i128.1) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %60 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i129.1 = getelementptr i8, ptr %61, i32 1966252
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i129.1) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %incdec.ptr.1 = getelementptr i32, ptr %data_ptr.0137, i32 2
  %63 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %incdec.ptr, align 4
  %64 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i127.2 = getelementptr i8, ptr %65, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.2, i32 65) #10, !srcloc !378
  %66 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i128.2 = getelementptr i8, ptr %67, i32 1245280
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i128.2) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %69 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i129.2 = getelementptr i8, ptr %70, i32 1966264
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i129.2) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %incdec.ptr.2 = getelementptr i32, ptr %data_ptr.0137, i32 3
  %72 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %incdec.ptr.1, align 4
  %73 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i127.3 = getelementptr i8, ptr %74, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.3, i32 65) #10, !srcloc !378
  %75 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i128.3 = getelementptr i8, ptr %76, i32 1245280
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i128.3) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %78 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i129.3 = getelementptr i8, ptr %79, i32 1966268
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i129.3) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %incdec.ptr.3 = getelementptr i32, ptr %data_ptr.0137, i32 4
  %81 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %incdec.ptr.2, align 4
  %add = add i32 %r_addr.0138, 16
  %inc54 = add nuw nsw i32 %i.0136, 1
  %exitcond140.not = icmp eq i32 %inc54, %umax
  br i1 %exitcond140.not, label %for.body48.preheader.do.body56_crit_edge, label %for.body48.preheader.for.body_crit_edge

for.body48.preheader.for.body_crit_edge:          ; preds = %for.body48.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body48.preheader.do.body56_crit_edge:         ; preds = %for.body48.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

if.then25:                                        ; preds = %for.cond13
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @qla82xx_minidump_process_rdmem._rs, ptr noundef nonnull @__func__.qla82xx_minidump_process_rdmem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.do.body35_crit_edge, label %do.end31

if.then25.do.body35_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body35

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #13
  br label %do.body35

do.body35:                                        ; preds = %do.end31, %if.then25.do.body35_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call) #10
  br label %cleanup

do.body56:                                        ; preds = %for.body48.preheader.do.body56_crit_edge, %if.end5.do.body56_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %3, %if.end5.do.body56_crit_edge ], [ %incdec.ptr.3, %for.body48.preheader.do.body56_crit_edge ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call) #10
  %82 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body56, %do.body35, %if.then3, %if.then
  %retval.0 = phi i32 [ 258, %if.then ], [ 258, %if.then3 ], [ 258, %do.body35 ], [ 0, %do.body56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla82xx_minidump_process_rdrom(ptr nocapture noundef readonly %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_ptr, align 4
  %read_data_size = getelementptr inbounds %struct.qla82xx_md_entry_rdrom, ptr %entry_hdr, i32 0, i32 3
  %2 = ptrtoint ptr %read_data_size to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %read_data_size, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp16.not = icmp ult i32 %3, 4
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div11 = lshr i32 %3, 2
  %read_addr = getelementptr inbounds %struct.qla82xx_md_entry_rdrom, ptr %entry_hdr, i32 0, i32 2
  %4 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %read_addr, align 1
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 242
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.019 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %r_addr.017 = phi i32 [ %5, %for.body.lr.ph ], [ %add3, %for.body.for.body_crit_edge ]
  %and = and i32 %r_addr.017, -65536
  %8 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4418) #10, !srcloc !378
  %10 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 1245280
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %13 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %14, i32 1966128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %15) #10, !srcloc !378
  %and1 = and i32 %r_addr.017, 65535
  %16 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %17, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 5442) #10, !srcloc !378
  %18 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i14 = getelementptr i8, ptr %19, i32 1245280
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i14) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %add6.i = or i32 %and1, 1966080
  %21 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i15 = getelementptr i8, ptr %22, i32 %add6.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i15) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %incdec.ptr = getelementptr i32, ptr %data_ptr.019, i32 1
  %24 = ptrtoint ptr %data_ptr.019 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %data_ptr.019, align 4
  %add3 = add i32 %r_addr.017, 4
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %div11
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %25 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla82xx_minidump_process_l2tag(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_ptr, align 4
  %op_count = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 4
  %2 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %op_count, align 1
  %read_addr = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 7
  %4 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %read_addr, align 1
  %addr_ctrl = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 2
  %read_ctrl = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 8
  %read_addr_cnt = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %read_addr_cnt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %read_addr_cnt, align 1
  %conv2 = zext i8 %7 to i32
  %poll_wait = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %poll_wait to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %poll_wait, align 1
  %conv4 = zext i8 %9 to i32
  %poll_mask = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %poll_mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %poll_mask, align 1
  %conv6 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp106.not = icmp eq i32 %3, 0
  br i1 %cmp106.not, label %entry.for.end34_crit_edge, label %for.body.lr.ph

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34

for.body.lr.ph:                                   ; preds = %entry
  %init_tag_value = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %init_tag_value to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %init_tag_value, align 1
  %conv1 = zext i16 %13 to i32
  %tag_reg_addr = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 1
  %14 = ptrtoint ptr %tag_reg_addr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tag_reg_addr, align 1
  %cache_ctrl = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 6
  %16 = ptrtoint ptr %cache_ctrl to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %cache_ctrl, align 1
  %conv = zext i16 %17 to i32
  %control_addr = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 5
  %18 = ptrtoint ptr %control_addr to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %control_addr, align 1
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %21, i32 0, i32 242
  %and.i = and i32 %15, -65536
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %and3.i = and i32 %15, 65535
  %add6.i = or i32 %and3.i, 1966080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  %and.i81 = and i32 %19, -65536
  %23 = tail call i32 @llvm.bswap.i32(i32 %and.i81) #10
  %and3.i83 = and i32 %19, 65535
  %add6.i84 = or i32 %and3.i83, 1966080
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp22102.not = icmp eq i8 %7, 0
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.0109 = phi ptr [ %1, %for.body.lr.ph ], [ %data_ptr.1.lcssa, %for.end.for.body_crit_edge ]
  %t_value.0108 = phi i32 [ %conv1, %for.body.lr.ph ], [ %add31, %for.end.for.body_crit_edge ]
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %for.end.for.body_crit_edge ]
  %25 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #10, !srcloc !378
  %27 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %28, i32 1245280
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %30 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %31, i32 %add6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %t_value.0108) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %32) #10, !srcloc !378
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %34, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %23) #10, !srcloc !378
  %35 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i82 = getelementptr i8, ptr %36, i32 1245280
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i82) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %38 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i85 = getelementptr i8, ptr %39, i32 %add6.i84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i85, i32 %24) #10, !srcloc !378
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  br i1 %tobool9.not, label %if.end.if.end20_crit_edge, label %if.then10

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then10:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %40, %conv4
  br label %do.body

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.then10
  %41 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %42, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %23) #10, !srcloc !378
  %43 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i89 = getelementptr i8, ptr %44, i32 1245280
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i89) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %46 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i92 = getelementptr i8, ptr %47, i32 %add6.i84
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i92) #10, !srcloc !379
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and = and i32 %49, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %do.body.if.end20_crit_edge, label %if.else

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %50, %add
  %cmp15 = icmp sgt i32 %sub, -1
  br i1 %cmp15, label %if.then17, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45106, ptr noundef nonnull @.str.153, i32 noundef %49, i32 noundef %conv6, i32 noundef %add) #10
  br label %cleanup

if.end20:                                         ; preds = %do.body.if.end20_crit_edge, %if.end.if.end20_crit_edge
  br i1 %cmp22102.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body24_crit_edge

if.end20.for.body24_crit_edge:                    ; preds = %if.end20
  br label %for.body24

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %if.end20.for.body24_crit_edge
  %data_ptr.1105 = phi ptr [ %incdec.ptr, %for.body24.for.body24_crit_edge ], [ %data_ptr.0109, %if.end20.for.body24_crit_edge ]
  %k.0104 = phi i32 [ %inc, %for.body24.for.body24_crit_edge ], [ 0, %if.end20.for.body24_crit_edge ]
  %addr.0103 = phi i32 [ %add28, %for.body24.for.body24_crit_edge ], [ %5, %if.end20.for.body24_crit_edge ]
  %51 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %52, i32 1245280
  %and.i95 = and i32 %addr.0103, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %and.i95) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %53) #10, !srcloc !378
  %54 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i96 = getelementptr i8, ptr %55, i32 1245280
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i96) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i97 = and i32 %addr.0103, 65535
  %add6.i98 = or i32 %and3.i97, 1966080
  %57 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i99 = getelementptr i8, ptr %58, i32 %add6.i98
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i99) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %incdec.ptr = getelementptr i32, ptr %data_ptr.1105, i32 1
  %60 = ptrtoint ptr %data_ptr.1105 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %data_ptr.1105, align 4
  %61 = ptrtoint ptr %read_ctrl to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %read_ctrl, align 1
  %conv27 = zext i8 %62 to i32
  %add28 = add i32 %addr.0103, %conv27
  %inc = add nuw nsw i32 %k.0104, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.body24.for.end_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

for.body24.for.end_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body24.for.end_crit_edge, %if.end20.for.end_crit_edge
  %data_ptr.1.lcssa = phi ptr [ %data_ptr.0109, %if.end20.for.end_crit_edge ], [ %incdec.ptr, %for.body24.for.end_crit_edge ]
  %63 = ptrtoint ptr %addr_ctrl to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %addr_ctrl, align 1
  %conv30 = zext i16 %64 to i32
  %add31 = add i32 %t_value.0108, %conv30
  %inc33 = add nuw i32 %i.0107, 1
  %exitcond112.not = icmp eq i32 %inc33, %3
  br i1 %exitcond112.not, label %for.end.for.end34_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34

for.end34:                                        ; preds = %for.end.for.end34_crit_edge, %entry.for.end34_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %1, %entry.for.end34_crit_edge ], [ %data_ptr.1.lcssa, %for.end.for.end34_crit_edge ]
  %65 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end34, %if.then17
  %retval.0 = phi i32 [ 258, %if.then17 ], [ 0, %for.end34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla82xx_minidump_process_l1cache(ptr nocapture noundef readonly %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_ptr, align 4
  %op_count = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 4
  %2 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %op_count, align 1
  %read_addr = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 7
  %4 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %read_addr, align 1
  %addr_ctrl = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 2
  %read_ctrl = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 8
  %read_addr_cnt = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %read_addr_cnt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %read_addr_cnt, align 1
  %conv2 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52.not = icmp eq i32 %3, 0
  br i1 %cmp52.not, label %entry.for.end17_crit_edge, label %for.body.lr.ph

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.body.lr.ph:                                   ; preds = %entry
  %init_tag_value = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %init_tag_value to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %init_tag_value, align 1
  %conv1 = zext i16 %9 to i32
  %tag_reg_addr = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 1
  %10 = ptrtoint ptr %tag_reg_addr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %tag_reg_addr, align 1
  %cache_ctrl = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 6
  %12 = ptrtoint ptr %cache_ctrl to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %cache_ctrl, align 1
  %conv = zext i16 %13 to i32
  %control_addr = getelementptr inbounds %struct.qla82xx_md_entry_cache, ptr %entry_hdr, i32 0, i32 5
  %14 = ptrtoint ptr %control_addr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %control_addr, align 1
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %17, i32 0, i32 242
  %and.i = and i32 %11, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %and3.i = and i32 %11, 65535
  %add6.i = or i32 %and3.i, 1966080
  %and.i36 = and i32 %15, -65536
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i36) #10
  %and3.i38 = and i32 %15, 65535
  %add6.i39 = or i32 %and3.i38, 1966080
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp648.not = icmp eq i8 %7, 0
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.055 = phi ptr [ %1, %for.body.lr.ph ], [ %data_ptr.1.lcssa, %for.end.for.body_crit_edge ]
  %t_value.054 = phi i32 [ %conv1, %for.body.lr.ph ], [ %add14, %for.end.for.body_crit_edge ]
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.end.for.body_crit_edge ]
  %21 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #10, !srcloc !378
  %23 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %24, i32 1245280
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %26 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %27, i32 %add6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %t_value.054) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %28) #10, !srcloc !378
  %29 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %30, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %19) #10, !srcloc !378
  %31 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i37 = getelementptr i8, ptr %32, i32 1245280
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i37) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %34 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i40 = getelementptr i8, ptr %35, i32 %add6.i39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i40, i32 %20) #10, !srcloc !378
  br i1 %cmp648.not, label %for.body.for.end_crit_edge, label %for.body.for.body8_crit_edge

for.body.for.body8_crit_edge:                     ; preds = %for.body
  br label %for.body8

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body.for.body8_crit_edge
  %data_ptr.151 = phi ptr [ %incdec.ptr, %for.body8.for.body8_crit_edge ], [ %data_ptr.055, %for.body.for.body8_crit_edge ]
  %k.050 = phi i32 [ %inc, %for.body8.for.body8_crit_edge ], [ 0, %for.body.for.body8_crit_edge ]
  %addr.049 = phi i32 [ %add, %for.body8.for.body8_crit_edge ], [ %5, %for.body.for.body8_crit_edge ]
  %36 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %37, i32 1245280
  %and.i43 = and i32 %addr.049, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %38 = tail call i32 @llvm.bswap.i32(i32 %and.i43) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %38) #10, !srcloc !378
  %39 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i44 = getelementptr i8, ptr %40, i32 1245280
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i44) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i45 = and i32 %addr.049, 65535
  %add6.i46 = or i32 %and3.i45, 1966080
  %42 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i47 = getelementptr i8, ptr %43, i32 %add6.i46
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i47) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %incdec.ptr = getelementptr i32, ptr %data_ptr.151, i32 1
  %45 = ptrtoint ptr %data_ptr.151 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %data_ptr.151, align 4
  %46 = ptrtoint ptr %read_ctrl to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %read_ctrl, align 1
  %conv11 = zext i8 %47 to i32
  %add = add i32 %addr.049, %conv11
  %inc = add nuw nsw i32 %k.050, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.body8.for.end_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.body8.for.end_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body8.for.end_crit_edge, %for.body.for.end_crit_edge
  %data_ptr.1.lcssa = phi ptr [ %data_ptr.055, %for.body.for.end_crit_edge ], [ %incdec.ptr, %for.body8.for.end_crit_edge ]
  %48 = ptrtoint ptr %addr_ctrl to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %addr_ctrl, align 1
  %conv13 = zext i16 %49 to i32
  %add14 = add i32 %t_value.054, %conv13
  %inc16 = add nuw i32 %i.053, 1
  %exitcond57.not = icmp eq i32 %inc16, %3
  br i1 %exitcond57.not, label %for.end.for.end17_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.end17:                                        ; preds = %for.end.for.end17_crit_edge, %entry.for.end17_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %1, %entry.for.end17_crit_edge ], [ %data_ptr.1.lcssa, %for.end.for.end17_crit_edge ]
  %50 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla82xx_minidump_process_rdmux(ptr nocapture noundef readonly %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_ptr, align 4
  %select_value_stride = getelementptr inbounds %struct.qla82xx_md_entry_mux, ptr %entry_hdr, i32 0, i32 6
  %2 = ptrtoint ptr %select_value_stride to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %select_value_stride, align 1
  %op_count = getelementptr inbounds %struct.qla82xx_md_entry_mux, ptr %entry_hdr, i32 0, i32 4
  %4 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %op_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21.not = icmp eq i32 %5, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %select_value = getelementptr inbounds %struct.qla82xx_md_entry_mux, ptr %entry_hdr, i32 0, i32 5
  %6 = ptrtoint ptr %select_value to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %select_value, align 1
  %select_addr = getelementptr inbounds %struct.qla82xx_md_entry_mux, ptr %entry_hdr, i32 0, i32 1
  %8 = ptrtoint ptr %select_addr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %select_addr, align 1
  %read_addr = getelementptr inbounds %struct.qla82xx_md_entry_mux, ptr %entry_hdr, i32 0, i32 7
  %10 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %read_addr, align 1
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 242
  %and.i = and i32 %9, -65536
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %and3.i = and i32 %9, 65535
  %add6.i = or i32 %and3.i, 1966080
  %and.i16 = and i32 %11, -65536
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i16) #10
  %and3.i18 = and i32 %11, 65535
  %add6.i19 = or i32 %and3.i18, 1966080
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.024 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr2, %for.body.for.body_crit_edge ]
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %s_value.022 = phi i32 [ %7, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #10, !srcloc !378
  %18 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 1245280
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %21 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %22, i32 %add6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %s_value.022) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %23) #10, !srcloc !378
  %24 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %25, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %15) #10, !srcloc !378
  %26 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i17 = getelementptr i8, ptr %27, i32 1245280
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i17) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %29 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i20 = getelementptr i8, ptr %30, i32 %add6.i19
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i20) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %incdec.ptr = getelementptr i32, ptr %data_ptr.024, i32 1
  %32 = ptrtoint ptr %data_ptr.024 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %23, ptr %data_ptr.024, align 4
  %incdec.ptr2 = getelementptr i32, ptr %data_ptr.024, i32 2
  %33 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %incdec.ptr, align 4
  %add = add i32 %s_value.022, %3
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %incdec.ptr2, %for.body.for.end_crit_edge ]
  %34 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla82xx_minidump_process_queue(ptr nocapture noundef readonly %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_ptr, align 4
  %rd_strd = getelementptr inbounds %struct.qla82xx_md_entry_queue, ptr %entry_hdr, i32 0, i32 8
  %read_addr_cnt = getelementptr inbounds %struct.qla82xx_md_entry_queue, ptr %entry_hdr, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %read_addr_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_addr_cnt, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %rd_strd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rd_strd, align 1
  %conv2 = zext i8 %5 to i32
  %op_count = getelementptr inbounds %struct.qla82xx_md_entry_queue, ptr %entry_hdr, i32 0, i32 4
  %6 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %op_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp37.not = icmp eq i32 %7, 0
  br i1 %cmp37.not, label %entry.for.end13_crit_edge, label %for.body.lr.ph

entry.for.end13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

for.body.lr.ph:                                   ; preds = %entry
  %select_addr = getelementptr inbounds %struct.qla82xx_md_entry_queue, ptr %entry_hdr, i32 0, i32 1
  %8 = ptrtoint ptr %select_addr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %select_addr, align 1
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %11, i32 0, i32 242
  %and.i = and i32 %9, -65536
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %and3.i = and i32 %9, 65535
  %add6.i = or i32 %and3.i, 1966080
  %read_addr = getelementptr inbounds %struct.qla82xx_md_entry_queue, ptr %entry_hdr, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp533.not = icmp eq i8 %3, 0
  %q_strd = getelementptr inbounds %struct.qla82xx_md_entry_queue, ptr %entry_hdr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.040 = phi ptr [ %1, %for.body.lr.ph ], [ %data_ptr.1.lcssa, %for.end.for.body_crit_edge ]
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12, %for.end.for.body_crit_edge ]
  %qid.038 = phi i32 [ 0, %for.body.lr.ph ], [ %add10, %for.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #10, !srcloc !378
  %15 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %16, i32 1245280
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %18 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %19, i32 %add6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %qid.038) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %20) #10, !srcloc !378
  br i1 %cmp533.not, label %for.body.for.end_crit_edge, label %for.body7.preheader

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body7.preheader:                              ; preds = %for.body
  %21 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %read_addr, align 1
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.preheader
  %data_ptr.136 = phi ptr [ %incdec.ptr, %for.body7.for.body7_crit_edge ], [ %data_ptr.040, %for.body7.preheader ]
  %k.035 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %r_addr.034 = phi i32 [ %add, %for.body7.for.body7_crit_edge ], [ %22, %for.body7.preheader ]
  %23 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %24, i32 1245280
  %and.i28 = and i32 %r_addr.034, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i28) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %25) #10, !srcloc !378
  %26 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr2.i29 = getelementptr i8, ptr %27, i32 1245280
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i29) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and3.i30 = and i32 %r_addr.034, 65535
  %add6.i31 = or i32 %and3.i30, 1966080
  %29 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr8.i32 = getelementptr i8, ptr %30, i32 %add6.i31
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i32) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %incdec.ptr = getelementptr i32, ptr %data_ptr.136, i32 1
  %32 = ptrtoint ptr %data_ptr.136 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %data_ptr.136, align 4
  %add = add i32 %r_addr.034, %conv2
  %inc = add nuw nsw i32 %k.035, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body7.for.end_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %for.body.for.end_crit_edge
  %data_ptr.1.lcssa = phi ptr [ %data_ptr.040, %for.body.for.end_crit_edge ], [ %incdec.ptr, %for.body7.for.end_crit_edge ]
  %33 = ptrtoint ptr %q_strd to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %q_strd, align 1
  %conv9 = zext i16 %34 to i32
  %add10 = add i32 %qid.038, %conv9
  %inc12 = add nuw i32 %i.039, 1
  %exitcond42.not = icmp eq i32 %inc12, %7
  br i1 %exitcond42.not, label %for.end.for.end13_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.for.end13_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

for.end13:                                        ; preds = %for.end.for.end13_crit_edge, %entry.for.end13_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %1, %entry.for.end13_crit_edge ], [ %data_ptr.1.lcssa, %for.end.for.end13_crit_edge ]
  %35 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_post_uevent_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_md_alloc(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %md_tmplt_hdr = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 264
  %2 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %md_tmplt_hdr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmdcapmask to i32))
  %4 = load i32, ptr @ql2xmdcapmask, align 4
  %5 = add i32 %4, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %5)
  %6 = icmp ult i32 %5, -125
  br i1 %6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %capture_debug_level = getelementptr inbounds %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %capture_debug_level to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %capture_debug_level, align 1
  %and = and i32 %8, 255
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ql2xmdcapmask to i32))
  store i32 %and, ptr @ql2xmdcapmask, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45125, ptr noundef nonnull @.str.63, i32 noundef %and) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmdcapmask to i32))
  %9 = load i32, ptr @ql2xmdcapmask, align 4
  %md_dump_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 267
  %and3 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %md_dump_size, align 4
  %add = add i32 %13, %11
  store i32 %add, ptr %md_dump_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge
  %and3.1 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.1)
  %tobool4.not.1 = icmp eq i32 %and3.1, 0
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx.1, align 1
  %16 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %md_dump_size, align 4
  %add.1 = add i32 %17, %15
  store i32 %add.1, ptr %md_dump_size, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.inc.for.inc.1_crit_edge
  %and3.2 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.2)
  %tobool4.not.2 = icmp eq i32 %and3.2, 0
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.2 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 11, i32 3
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx.2, align 1
  %20 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %md_dump_size, align 4
  %add.2 = add i32 %21, %19
  store i32 %add.2, ptr %md_dump_size, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %for.inc.1.for.inc.2_crit_edge
  %and3.3 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.3)
  %tobool4.not.3 = icmp eq i32 %and3.3, 0
  br i1 %tobool4.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then5.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then5.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 11, i32 4
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx.3, align 1
  %24 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %md_dump_size, align 4
  %add.3 = add i32 %25, %23
  store i32 %add.3, ptr %md_dump_size, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then5.3, %for.inc.2.for.inc.3_crit_edge
  %and3.4 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.4)
  %tobool4.not.4 = icmp eq i32 %and3.4, 0
  br i1 %tobool4.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then5.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then5.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.4 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 11, i32 5
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx.4, align 1
  %28 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %md_dump_size, align 4
  %add.4 = add i32 %29, %27
  store i32 %add.4, ptr %md_dump_size, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then5.4, %for.inc.3.for.inc.4_crit_edge
  %and3.5 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.5)
  %tobool4.not.5 = icmp eq i32 %and3.5, 0
  br i1 %tobool4.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then5.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then5.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.5 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 11, i32 6
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx.5, align 1
  %32 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %md_dump_size, align 4
  %add.5 = add i32 %33, %31
  store i32 %add.5, ptr %md_dump_size, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then5.5, %for.inc.4.for.inc.5_crit_edge
  %and3.6 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.6)
  %tobool4.not.6 = icmp eq i32 %and3.6, 0
  br i1 %tobool4.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then5.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then5.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.6 = getelementptr %struct.qla82xx_md_template_hdr, ptr %3, i32 0, i32 11, i32 7
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %arrayidx.6, align 1
  %36 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %md_dump_size, align 4
  %add.6 = add i32 %37, %35
  store i32 %add.6, ptr %md_dump_size, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then5.6, %for.inc.5.for.inc.6_crit_edge
  %md_dump = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 266
  %38 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %md_dump, align 16
  %tobool7.not = icmp eq ptr %39, null
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45126, ptr noundef nonnull @.str.64) #10
  br label %cleanup

if.end9:                                          ; preds = %for.inc.6
  %40 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %md_dump_size, align 4
  %call = tail call noalias ptr @vmalloc(i32 noundef %41) #14
  %42 = ptrtoint ptr %md_dump to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call, ptr %md_dump, align 16
  %cmp13 = icmp eq ptr %call, null
  br i1 %cmp13, label %if.then14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %md_dump_size, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45127, ptr noundef nonnull @.str.65, i32 noundef %44) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end9.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.then14 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla82xx_md_get_template_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla8044_md_get_template(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla82xx_md_get_template(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_beacon_on(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i)
  %cmp56.i = icmp eq i32 %call55.i, 1
  br i1 %cmp56.i, label %entry.qla82xx_idc_lock.exit_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.qla82xx_idc_lock.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.end.i:                                         ; preds = %if.end46.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %total.057.i = phi i32 [ %add.i, %if.end46.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i)
  %cmp4.i = icmp ugt i32 %total.057.i, 1999
  br i1 %cmp4.i, label %land.rhs.i, label %if.end46.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b53.i = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, label %if.then11.i, !prof !383

land.rhs.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit

if.end46.i:                                       ; preds = %if.end.i
  %add.i = add nuw nsw i32 %total.057.i, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end46.i.qla82xx_idc_lock.exit_crit_edge, label %if.end46.i.if.end.i_crit_edge

if.end46.i.if.end.i_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end46.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

qla82xx_idc_lock.exit:                            ; preds = %if.end46.i.qla82xx_idc_lock.exit_crit_edge, %if.then11.i, %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, %entry.qla82xx_idc_lock.exit_crit_edge
  %call1 = tail call i32 @qla82xx_mbx_beacon_ctl(ptr noundef %vha, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %qla82xx_idc_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45136, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.qla82xx_beacon_on) #10
  br label %exit

if.end:                                           ; preds = %qla82xx_idc_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %beacon_blink_led = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 222
  %2 = ptrtoint ptr %beacon_blink_led to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %beacon_blink_led, align 2
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %call.i7 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla82xx_mbx_beacon_ctl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_beacon_off(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i)
  %cmp56.i = icmp eq i32 %call55.i, 1
  br i1 %cmp56.i, label %entry.qla82xx_idc_lock.exit_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.qla82xx_idc_lock.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.end.i:                                         ; preds = %if.end46.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %total.057.i = phi i32 [ %add.i, %if.end46.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i)
  %cmp4.i = icmp ugt i32 %total.057.i, 1999
  br i1 %cmp4.i, label %land.rhs.i, label %if.end46.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b53.i = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, label %if.then11.i, !prof !383

land.rhs.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit

if.end46.i:                                       ; preds = %if.end.i
  %add.i = add nuw nsw i32 %total.057.i, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end46.i.qla82xx_idc_lock.exit_crit_edge, label %if.end46.i.if.end.i_crit_edge

if.end46.i.if.end.i_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end46.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

qla82xx_idc_lock.exit:                            ; preds = %if.end46.i.qla82xx_idc_lock.exit_crit_edge, %if.then11.i, %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, %entry.qla82xx_idc_lock.exit_crit_edge
  %call1 = tail call i32 @qla82xx_mbx_beacon_ctl(ptr noundef %vha, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %qla82xx_idc_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45137, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.qla82xx_beacon_off) #10
  br label %exit

if.end:                                           ; preds = %qla82xx_idc_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %beacon_blink_led = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 222
  %2 = ptrtoint ptr %beacon_blink_led to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %beacon_blink_led, align 2
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %call.i7 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla82xx_fw_dump(ptr noundef %vha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %allow_cna_fw_dump = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 282
  %2 = ptrtoint ptr %allow_cna_fw_dump to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %allow_cna_fw_dump, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %5) #10
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, 32
  store volatile i32 %bf.set, ptr %flags, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 500) #10
  %call55.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i)
  %cmp56.i = icmp eq i32 %call55.i, 1
  br i1 %cmp56.i, label %if.end.qla82xx_idc_lock.exit_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  br label %if.end.i

if.end.qla82xx_idc_lock.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.end.i:                                         ; preds = %if.end46.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %total.057.i = phi i32 [ %add.i, %if.end46.i.if.end.i_crit_edge ], [ 0, %if.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %total.057.i)
  %cmp4.i = icmp ugt i32 %total.057.i, 1999
  br i1 %cmp4.i, label %land.rhs.i, label %if.end46.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b53.i = load i1, ptr @qla82xx_idc_lock.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, label %if.then11.i, !prof !383

land.rhs.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qla82xx_idc_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %qla82xx_idc_lock.exit

if.end46.i:                                       ; preds = %if.end.i
  %add.i = add nuw nsw i32 %total.057.i, 100
  tail call void @msleep(i32 noundef 100) #10
  %call.i = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826600) #10
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end46.i.qla82xx_idc_lock.exit_crit_edge, label %if.end46.i.if.end.i_crit_edge

if.end46.i.if.end.i_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end46.i.qla82xx_idc_lock.exit_crit_edge:       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_idc_lock.exit

qla82xx_idc_lock.exit:                            ; preds = %if.end46.i.qla82xx_idc_lock.exit_crit_edge, %if.then11.i, %land.rhs.i.qla82xx_idc_lock.exit_crit_edge, %if.end.qla82xx_idc_lock.exit_crit_edge
  tail call void @qla82xx_set_reset_owner(ptr noundef %vha)
  %call.i10 = tail call i32 @qla82xx_rd_32(ptr noundef %1, i32 noundef 101826604) #10
  %call1 = tail call i32 @qla2x00_wait_for_chip_reset(ptr noundef %vha) #10
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 8
  tail call void @scsi_unblock_requests(ptr noundef %8) #10
  br label %cleanup

cleanup:                                          ; preds = %qla82xx_idc_lock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_wait_for_chip_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla82xx_pci_set_window(ptr noundef %ha, i64 noundef %addr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %addr)
  %cmp.not.i = icmp ult i64 %addr, 268435456
  br i1 %cmp.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and = lshr i64 %addr, 1
  %shr = and i64 %and, 16646144
  %shr2 = lshr i64 %addr, 25
  %or = or i64 %shr, %shr2
  %conv = trunc i64 %or to i32
  %ddr_mn_window = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 247
  %4 = ptrtoint ptr %ddr_mn_window to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %ddr_mn_window, align 16
  %mn_win_crb = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 248
  %5 = ptrtoint ptr %mn_win_crb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mn_win_crb, align 4
  %or4 = or i32 %6, 100663296
  %call5 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef %or4, i32 noundef %conv)
  %7 = ptrtoint ptr %mn_win_crb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mn_win_crb, align 4
  %or7 = or i32 %8, 100663296
  %call8 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef %or7)
  %shl = shl i32 %call8, 17
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv)
  %cmp.not = icmp eq i32 %shl, %conv
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %3, i32 noundef 45059, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.qla82xx_pci_set_window, i32 noundef %conv, i32 noundef %call8) #10
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %9 = trunc i64 %addr to i32
  %extract.t = and i32 %9, 262143
  br label %if.end68

if.else:                                          ; preds = %entry
  %10 = and i64 %addr, -1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934592, i64 %10)
  %11 = icmp eq i64 %10, 8589934592
  br i1 %11, label %if.then13, label %if.else43

if.then13:                                        ; preds = %if.else
  %and14 = and i64 %addr, 1046528
  call void @__sanitizer_cov_trace_const_cmp8(i64 1046528, i64 %and14)
  %cmp15 = icmp eq i64 %and14, 1046528
  br i1 %cmp15, label %if.then17, label %if.then13.if.end18_crit_edge

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 45060, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.qla82xx_pci_set_window) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then13.if.end18_crit_edge
  %addr.addr.0 = phi i64 [ 4294967295, %if.then17 ], [ %addr, %if.then13.if.end18_crit_edge ]
  %and19 = lshr i64 %addr.addr.0, 1
  %shr20 = and i64 %and19, 16744448
  %shr21 = lshr i64 %addr.addr.0, 25
  %or23 = or i64 %shr20, %shr21
  %conv24 = trunc i64 %or23 to i32
  %ddr_mn_window25 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 247
  %12 = ptrtoint ptr %ddr_mn_window25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv24, ptr %ddr_mn_window25, align 16
  %mn_win_crb26 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 248
  %13 = ptrtoint ptr %mn_win_crb26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mn_win_crb26, align 4
  %or27 = or i32 %14, 100663296
  %call28 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef %or27, i32 noundef %conv24)
  %15 = ptrtoint ptr %mn_win_crb26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mn_win_crb26, align 4
  %or30 = or i32 %16, 100663296
  %call31 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef %or30)
  %and32 = shl nuw nsw i32 %conv24, 7
  %shl33 = and i32 %and32, 65408
  %shr35 = lshr i32 %conv24, 17
  %or36 = or i32 %shl33, %shr35
  call void @__sanitizer_cov_trace_cmp4(i32 %call31, i32 %or36)
  %cmp37.not = icmp eq i32 %call31, %or36
  br i1 %cmp37.not, label %if.end18.if.end40_crit_edge, label %if.then39

if.end18.if.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then39:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 45061, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.qla82xx_pci_set_window, i32 noundef %or36, i32 noundef %call31) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end18.if.end40_crit_edge
  %17 = trunc i64 %addr.addr.0 to i32
  %18 = and i32 %17, 262143
  %extract.t118 = or i32 %18, 786432
  br label %if.end68

if.else43:                                        ; preds = %if.else
  %19 = and i64 %addr, -67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %19)
  %20 = icmp eq i64 %19, 12884901888
  br i1 %20, label %if.then45, label %if.else59

if.then45:                                        ; preds = %if.else43
  %21 = trunc i64 %addr to i32
  %conv47 = and i32 %21, 268173312
  %qdr_sn_window = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 250
  %22 = ptrtoint ptr %qdr_sn_window to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv47, ptr %qdr_sn_window, align 4
  %ms_win_crb = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 249
  %23 = ptrtoint ptr %ms_win_crb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ms_win_crb, align 8
  %or48 = or i32 %24, 100663296
  %call49 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef %or48, i32 noundef %conv47)
  %25 = ptrtoint ptr %ms_win_crb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ms_win_crb, align 8
  %or51 = or i32 %26, 100663296
  %call52 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef %or51)
  call void @__sanitizer_cov_trace_cmp4(i32 %call52, i32 %conv47)
  %cmp53.not = icmp eq i32 %call52, %conv47
  br i1 %cmp53.not, label %if.then45.if.end56_crit_edge, label %if.then55

if.then45.if.end56_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then55:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 45062, ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.qla82xx_pci_set_window, i32 noundef %conv47, i32 noundef %call52) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then45.if.end56_crit_edge
  %27 = and i32 %21, 262143
  %extract.t119 = or i32 %27, 67108864
  br label %if.end68

if.else59:                                        ; preds = %if.else43
  %28 = load i32, ptr @qla82xx_pci_set_window_warning_count, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr @qla82xx_pci_set_window_warning_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %cmp60 = icmp slt i32 %28, 8
  %29 = and i32 %inc, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp62 = icmp eq i32 %29, 0
  %or.cond = select i1 %cmp60, i1 true, i1 %cmp62
  br i1 %or.cond, label %if.then64, label %if.else59.if.end68_crit_edge

if.else59.if.end68_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then64:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 45063, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.qla82xx_pci_set_window, ptr noundef nonnull @.str.4) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.else59.if.end68_crit_edge, %if.end56, %if.end40, %if.end
  %addr.addr.1.off0 = phi i32 [ %extract.t, %if.end ], [ %extract.t118, %if.end40 ], [ %extract.t119, %if.end56 ], [ -1, %if.else59.if.end68_crit_edge ], [ -1, %if.then64 ]
  ret i32 %addr.addr.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla2x00_request_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla82xx_rom_fast_read(ptr noundef %ha, i32 noundef %addr, ptr nocapture noundef writeonly %valp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 254
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %loops.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %4 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  br label %while.body.i

while.cond.i:                                     ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %timeout.019.i, 1
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.while.end_crit_edge

while.cond.i.while.end_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.cond
  %timeout.019.i = phi i32 [ 0, %while.cond ], [ %inc.i, %while.cond.i.while.body.i_crit_edge ]
  %call1.i = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 101826576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 1
  br i1 %cmp.i, label %while.body.i.while.end_crit_edge, label %if.end.i

while.body.i.while.end_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout.019.i)
  %exitcond.i = icmp eq i32 %timeout.019.i, 100
  br i1 %exitcond.i, label %qla82xx_rom_lock.exit, label %while.cond.i

qla82xx_rom_lock.exit:                            ; preds = %if.end.i
  %call4.i = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 136323328) #10
  %8 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %9 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %7, i32 noundef 45399, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.qla82xx_rom_lock, i32 noundef %conv.i, i32 noundef %call4.i) #10
  %exitcond.not = icmp eq i32 %loops.0, 50000
  br i1 %exitcond.not, label %qla82xx_rom_lock.exit.if.then_crit_edge, label %while.body

qla82xx_rom_lock.exit.if.then_crit_edge:          ; preds = %qla82xx_rom_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

while.body:                                       ; preds = %qla82xx_rom_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #10
  tail call void @schedule() #10
  %inc = add nuw nsw i32 %loops.0, 1
  br label %while.cond

while.end:                                        ; preds = %while.body.i.while.end_crit_edge, %while.cond.i.while.end_crit_edge
  %11 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %portnum.i, align 4
  %conv7.i = zext i16 %12 to i32
  %call8.i = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 136323328, i32 noundef %conv7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999, i32 %loops.0)
  %cmp3 = icmp ugt i32 %loops.0, 49999
  br i1 %cmp3, label %while.end.if.then_crit_edge, label %if.end

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %while.end.if.then_crit_edge, %qla82xx_rom_lock.exit.if.then_crit_edge
  %call4 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 136323328)
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %3, i32 noundef 185, ptr noundef nonnull @.str.103, i32 noundef %call4) #10
  br label %cleanup

if.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %addr, -65536
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  %13 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 4418) #10, !srcloc !378
  %15 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %16, i32 1245280
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %18 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %19, i32 1966128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %20) #10, !srcloc !378
  %and1.i = and i32 %addr, 65535
  %21 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %22, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 5442) #10, !srcloc !378
  %23 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr2.i3.i = getelementptr i8, ptr %24, i32 1245280
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i3.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %add6.i.i = or i32 %and1.i, 1966080
  %26 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr8.i4.i = getelementptr i8, ptr %27, i32 %add6.i.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i4.i) #10, !srcloc !379
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %30 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %valp, align 4
  %call.i = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 136323328, i32 noundef -1) #10
  %call1.i15 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 101826580) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla82xx_pci_mem_write_2M(ptr noundef %ha, i64 noundef %off, ptr nocapture noundef readonly %data) unnamed_addr #1 align 64 {
entry:
  %word = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %word) #10
  %0 = call ptr @memset(ptr %word, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435449, i64 %off)
  %1 = icmp ult i64 %off, 268435449
  br i1 %1, label %if.end5, label %if.then3

if.then3:                                         ; preds = %entry
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %hw_lock.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 253
  %call1.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock.i) #10
  %call2.i = tail call fastcc i32 @qla82xx_pci_set_window(ptr noundef %ha, i64 noundef %off) #10
  %conv3.i = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp4.i = icmp eq i32 %call2.i, -1
  br i1 %cmp4.i, label %if.then3.do.body10.i_crit_edge, label %lor.lhs.false.i3

if.then3.do.body10.i_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i

lor.lhs.false.i3:                                 ; preds = %if.then3
  %sub.i2 = add i64 %off, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %sub.i2)
  %cmp.not.i.i.i = icmp ult i64 %sub.i2, 268435456
  br i1 %cmp.not.i.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla2xxx/qla_nx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 631, 0\0A.popsection", ""() #10, !srcloc !384
  unreachable

if.else.i.i:                                      ; preds = %lor.lhs.false.i3
  %6 = and i64 %sub.i2, -5242880
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934592, i64 %6)
  %7 = icmp eq i64 %6, 8589934592
  br i1 %7, label %if.else.i.i.do.body19.i_crit_edge, label %if.else9.i.i

if.else.i.i.do.body19.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i

if.else9.i.i:                                     ; preds = %if.else.i.i
  %8 = and i64 %sub.i2, -67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %8)
  %9 = icmp eq i64 %8, 12884901888
  br i1 %9, label %if.then11.i.i, label %if.else9.i.i.do.body10.i_crit_edge

if.else9.i.i.do.body10.i_crit_edge:               ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i

if.then11.i.i:                                    ; preds = %if.else9.i.i
  %10 = trunc i64 %sub.i2 to i32
  %11 = lshr i32 %10, 22
  %qdr_sn_window.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 250
  %12 = ptrtoint ptr %qdr_sn_window.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qdr_sn_window.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.i.i = icmp eq i32 %13, %11
  br i1 %cmp.i.i, label %if.then11.i.i.do.body19.i_crit_edge, label %if.then11.i.i.do.body10.i_crit_edge

if.then11.i.i.do.body10.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i

if.then11.i.i.do.body19.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i

do.body10.i:                                      ; preds = %if.then11.i.i.do.body10.i_crit_edge, %if.else9.i.i.do.body10.i_crit_edge, %if.then3.do.body10.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call1.i) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %5, i32 noundef 45065, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.4, i64 noundef %off) #10
  br label %cleanup

do.body19.i:                                      ; preds = %if.then11.i.i.do.body19.i_crit_edge, %if.else.i.i.do.body19.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call1.i) #10
  %14 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ha, align 128
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource.i, align 8
  %and.i = and i32 %call2.i, -4096
  %conv31.i = zext i32 %and.i to i64
  %sub34.i = add nuw nsw i64 %conv3.i, 7
  %and35.i = and i64 %sub34.i, 8589930496
  call void @__sanitizer_cov_trace_cmp8(i64 %and35.i, i64 %conv31.i)
  %cmp36.not.i = icmp eq i64 %and35.i, %conv31.i
  %add41.i = add i32 %17, %and.i
  %..i = select i1 %cmp36.not.i, i32 4096, i32 8192
  %call42.i = tail call ptr @ioremap(i32 noundef %add41.i, i32 noundef %..i) #10
  %cmp44.i = icmp eq ptr %call42.i, null
  br i1 %cmp44.i, label %do.body19.i.cleanup_crit_edge, label %if.end47.i

do.body19.i.cleanup_crit_edge:                    ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  %call56.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock.i) #10
  %and48.i = and i32 %call2.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call42.i, i32 %and48.i
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %conv.i.i = trunc i64 %19 to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #10, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  tail call void @arm_heavy_mb() #10
  %shr.i.i = lshr i64 %19, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #10, !srcloc !378
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call56.i) #10
  tail call void @iounmap(ptr noundef nonnull %call42.i) #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %22 = trunc i64 %off to i32
  %conv = and i32 %22, 7
  %and12 = and i64 %off, 4294967280
  %and13 = and i64 %off, 15
  %sub15 = add nuw nsw i64 %and13, 7
  %shr = lshr i64 %sub15, 4
  %23 = trunc i64 %shr to i32
  %div1 = lshr i64 %and13, 3
  %conv19 = trunc i64 %div1 to i32
  %call25 = call i32 @qla82xx_pci_mem_read_2M(ptr noundef %ha, i64 noundef %and12, ptr noundef nonnull %word, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %for.cond, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %exitcond = icmp eq i32 %23, 0
  br i1 %exitcond, label %for.cond.sw.default_crit_edge, label %for.body.1

for.cond.sw.default_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

for.body.1:                                       ; preds = %for.cond
  %add23.1 = add nuw nsw i64 %and12, 16
  %arrayidx24.1 = getelementptr inbounds [2 x i64], ptr %word, i32 0, i32 2
  %call25.1 = call i32 @qla82xx_pci_mem_read_2M(ptr noundef %ha, i64 noundef %add23.1, ptr noundef %arrayidx24.1, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %tobool.not.1 = icmp eq i32 %call25.1, 0
  br i1 %tobool.not.1, label %for.body.1.sw.default_crit_edge, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.1.sw.default_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.default:                                       ; preds = %for.body.1.sw.default_crit_edge, %for.cond.sw.default_crit_edge
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp35 = icmp eq i32 %conv, 0
  br i1 %cmp35, label %if.end53.thread, label %if.then57

if.end53.thread:                                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx38 = getelementptr [2 x i64], ptr %word, i32 0, i32 %conv19
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx38, align 8
  br label %if.end73

if.then57:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %.neg = mul nsw i32 %conv, -8
  %mul41 = add nsw i32 %.neg, 64
  %sh_prom = zext i32 %mul41 to i64
  %shl42 = shl nsw i64 -1, %sh_prom
  %neg = xor i64 %shl42, -1
  %mul43 = shl nuw nsw i32 %conv, 3
  %sh_prom44 = zext i32 %mul43 to i64
  %shl45 = shl i64 %neg, %sh_prom44
  %neg46 = xor i64 %shl45, -1
  %arrayidx47 = getelementptr [2 x i64], ptr %word, i32 0, i32 %conv19
  %27 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx47, align 8
  %and48 = and i64 %28, %neg46
  %shl51 = shl i64 %25, %sh_prom44
  %or = or i64 %and48, %shl51
  store i64 %or, ptr %arrayidx47, align 8
  %shl61 = shl nsw i64 -1, %sh_prom44
  %neg62 = xor i64 %shl61, -1
  %add63 = add nuw nsw i32 %conv19, 1
  %arrayidx64 = getelementptr [2 x i64], ptr %word, i32 0, i32 %add63
  %29 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx64, align 8
  %and65 = and i64 %30, %neg62
  %shr69 = lshr i64 %25, %sh_prom
  %or72 = or i64 %and65, %shr69
  store i64 %or72, ptr %arrayidx64, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then57, %if.end53.thread
  %31 = trunc i64 %and12 to i32
  %call84 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760596, i32 noundef %31)
  %call87 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760600, i32 noundef 0)
  %32 = ptrtoint ptr %word to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %word, align 8
  %conv91 = trunc i64 %33 to i32
  %call94 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760608, i32 noundef %conv91)
  %shr97 = lshr i64 %33, 32
  %conv99 = trunc i64 %shr97 to i32
  %call102 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760612, i32 noundef %conv99)
  %arrayidx105 = getelementptr inbounds [2 x i64], ptr %word, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx105, align 8
  %conv107 = trunc i64 %35 to i32
  %call110 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760624, i32 noundef %conv107)
  %shr114 = lshr i64 %35, 32
  %conv116 = trunc i64 %shr114 to i32
  %call119 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760628, i32 noundef %conv116)
  %call122 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760592, i32 noundef 6)
  %call125 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760592, i32 noundef 7)
  br label %for.body129

for.cond126:                                      ; preds = %for.body129
  %inc139 = add nuw nsw i32 %j.010, 1
  %exitcond13.not = icmp eq i32 %inc139, 1000
  br i1 %exitcond13.not, label %for.cond126.if.then143_crit_edge, label %for.cond126.for.body129_crit_edge

for.cond126.for.body129_crit_edge:                ; preds = %for.cond126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body129

for.cond126.if.then143_crit_edge:                 ; preds = %for.cond126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then143

for.body129:                                      ; preds = %for.cond126.for.body129_crit_edge, %if.end73
  %j.010 = phi i32 [ 0, %if.end73 ], [ %inc139, %for.cond126.for.body129_crit_edge ]
  %call132 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 102760592)
  %and133 = and i32 %call132, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %cmp134 = icmp eq i32 %and133, 0
  br i1 %cmp134, label %for.inc149, label %for.cond126

if.then143:                                       ; preds = %for.cond126.1.if.then143_crit_edge, %for.cond126.if.then143_crit_edge
  %call144 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.qla82xx_pci_mem_write_2M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then143.cleanup_crit_edge, label %do.end

if.then143.cleanup_crit_edge:                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ha, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.104) #13
  br label %cleanup

for.inc149:                                       ; preds = %for.body129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %exitcond14 = icmp eq i32 %23, 0
  br i1 %exitcond14, label %for.inc149.cleanup_crit_edge, label %for.body77.1

for.inc149.cleanup_crit_edge:                     ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body77.1:                                     ; preds = %for.inc149
  %conv81.1 = add i32 %31, 16
  %call84.1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760596, i32 noundef %conv81.1)
  %call87.1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760600, i32 noundef 0)
  %arrayidx89.1 = getelementptr inbounds [2 x i64], ptr %word, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx89.1 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx89.1, align 8
  %conv91.1 = trunc i64 %39 to i32
  %call94.1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760608, i32 noundef %conv91.1)
  %shr97.1 = lshr i64 %39, 32
  %conv99.1 = trunc i64 %shr97.1 to i32
  %call102.1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760612, i32 noundef %conv99.1)
  %arrayidx105.1 = getelementptr [2 x i64], ptr %word, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx105.1 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx105.1, align 8
  %conv107.1 = trunc i64 %41 to i32
  %call110.1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760624, i32 noundef %conv107.1)
  %shr114.1 = lshr i64 %41, 32
  %conv116.1 = trunc i64 %shr114.1 to i32
  %call119.1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760628, i32 noundef %conv116.1)
  %call122.1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760592, i32 noundef 6)
  %call125.1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 102760592, i32 noundef 7)
  br label %for.body129.1

for.body129.1:                                    ; preds = %for.cond126.1.for.body129.1_crit_edge, %for.body77.1
  %j.010.1 = phi i32 [ 0, %for.body77.1 ], [ %inc139.1, %for.cond126.1.for.body129.1_crit_edge ]
  %call132.1 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 102760592)
  %and133.1 = and i32 %call132.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.1)
  %cmp134.1 = icmp eq i32 %and133.1, 0
  br i1 %cmp134.1, label %for.body129.1.cleanup_crit_edge, label %for.cond126.1

for.body129.1.cleanup_crit_edge:                  ; preds = %for.body129.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond126.1:                                    ; preds = %for.body129.1
  %inc139.1 = add nuw nsw i32 %j.010.1, 1
  %exitcond13.not.1 = icmp eq i32 %inc139.1, 1000
  br i1 %exitcond13.not.1, label %for.cond126.1.if.then143_crit_edge, label %for.cond126.1.for.body129.1_crit_edge

for.cond126.1.for.body129.1_crit_edge:            ; preds = %for.cond126.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body129.1

for.cond126.1.if.then143_crit_edge:               ; preds = %for.cond126.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then143

cleanup:                                          ; preds = %for.body129.1.cleanup_crit_edge, %for.inc149.cleanup_crit_edge, %do.end, %if.then143.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end47.i, %do.body19.i.cleanup_crit_edge, %do.body10.i
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then143.cleanup_crit_edge ], [ -1, %do.body10.i ], [ 0, %if.end47.i ], [ -1, %do.body19.i.cleanup_crit_edge ], [ 0, %for.body129.1.cleanup_crit_edge ], [ 0, %for.inc149.cleanup_crit_edge ], [ -1, %for.body.1.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %word) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql82xx_rom_lock_d(ptr noundef %ha) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 254
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %loops.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %4 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  br label %while.body.i

while.cond.i:                                     ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %timeout.019.i, 1
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.while.end_crit_edge

while.cond.i.while.end_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.cond
  %timeout.019.i = phi i32 [ 0, %while.cond ], [ %inc.i, %while.cond.i.while.body.i_crit_edge ]
  %call1.i = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 101826576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 1
  br i1 %cmp.i, label %while.body.i.while.end_crit_edge, label %if.end.i

while.body.i.while.end_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout.019.i)
  %exitcond.i = icmp eq i32 %timeout.019.i, 100
  br i1 %exitcond.i, label %qla82xx_rom_lock.exit, label %while.cond.i

qla82xx_rom_lock.exit:                            ; preds = %if.end.i
  %call4.i = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 136323328) #10
  %8 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %9 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %7, i32 noundef 45399, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.qla82xx_rom_lock, i32 noundef %conv.i, i32 noundef %call4.i) #10
  %exitcond.not = icmp eq i32 %loops.0, 50000
  br i1 %exitcond.not, label %qla82xx_rom_lock.exit.if.then_crit_edge, label %while.body

qla82xx_rom_lock.exit.if.then_crit_edge:          ; preds = %qla82xx_rom_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

while.body:                                       ; preds = %qla82xx_rom_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #10
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1040, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  %inc = add nuw nsw i32 %loops.0, 1
  br label %while.cond

while.end:                                        ; preds = %while.body.i.while.end_crit_edge, %while.cond.i.while.end_crit_edge
  %11 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %portnum.i, align 4
  %conv7.i = zext i16 %12 to i32
  %call8.i = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 136323328, i32 noundef %conv7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999, i32 %loops.0)
  %cmp4 = icmp ugt i32 %loops.0, 49999
  br i1 %cmp4, label %while.end.if.then_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %while.end.if.then_crit_edge, %qla82xx_rom_lock.exit.if.then_crit_edge
  %call5 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 136323328)
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 45072, ptr noundef nonnull @.str.120, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla82xx_read_status_reg(ptr noundef %ha, ptr nocapture noundef writeonly %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 154206212, i32 noundef 5)
  %4 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %done.0.i = phi i32 [ 0, %entry ], [ %and.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i)
  %cmp.i = icmp eq i32 %done.0.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.qla82xx_wait_rom_busy.exit_crit_edge

while.cond.i.qla82xx_wait_rom_busy.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_wait_rom_busy.exit

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 154140676) #10
  %and.i = and i32 %call1.i, 4
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.i, label %if.then.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %7, i32 noundef 45066, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.4) #10
  br label %qla82xx_wait_rom_busy.exit

qla82xx_wait_rom_busy.exit:                       ; preds = %if.then.i, %while.cond.i.qla82xx_wait_rom_busy.exit_crit_edge
  %8 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i9 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i9, align 4
  br label %while.cond.i13

while.cond.i13:                                   ; preds = %while.body.i18.while.cond.i13_crit_edge, %qla82xx_wait_rom_busy.exit
  %timeout.0.i10 = phi i32 [ 0, %qla82xx_wait_rom_busy.exit ], [ %inc.i16, %while.body.i18.while.cond.i13_crit_edge ]
  %done.0.i11 = phi i32 [ 0, %qla82xx_wait_rom_busy.exit ], [ %and.i15, %while.body.i18.while.cond.i13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i11)
  %cmp.i12 = icmp eq i32 %done.0.i11, 0
  br i1 %cmp.i12, label %while.body.i18, label %if.end

while.body.i18:                                   ; preds = %while.cond.i13
  %call1.i14 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 154140676) #10
  %and.i15 = and i32 %call1.i14, 2
  %inc.i16 = add nuw nsw i32 %timeout.0.i10, 1
  %exitcond.i17 = icmp eq i32 %inc.i16, 100
  br i1 %exitcond.i17, label %if.then, label %while.body.i18.while.cond.i13_crit_edge

while.body.i18.while.cond.i13_crit_edge:          ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i13

if.then:                                          ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %11, i32 noundef 45067, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 45068, ptr noundef nonnull @.str.121) #10
  br label %cleanup

if.end:                                           ; preds = %while.cond.i13
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 154206232)
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call4, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla82xx_write_status_reg(ptr noundef %ha, i32 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @qla82xx_flash_set_write_enable(ptr noundef %ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 154206220, i32 noundef %val)
  %call3 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 154206212, i32 noundef 1)
  %4 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %timeout.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %done.0.i = phi i32 [ 0, %if.end ], [ %and.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i)
  %cmp.i = icmp eq i32 %done.0.i, 0
  br i1 %cmp.i, label %while.body.i, label %if.end7

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 154140676) #10
  %and.i = and i32 %call1.i, 2
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.i, label %if.then6, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.then6:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %7, i32 noundef 45067, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4) #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 45070, ptr noundef nonnull @.str.121) #10
  br label %cleanup

if.end7:                                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call fastcc i32 @qla82xx_flash_wait_write_finish(ptr noundef %ha)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then6 ], [ %call8, %if.end7 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla82xx_flash_set_write_enable(ptr noundef %ha) unnamed_addr #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !392
  %1 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %done.0.i = phi i32 [ 0, %entry ], [ %and.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i)
  %cmp.i = icmp eq i32 %done.0.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.qla82xx_wait_rom_busy.exit_crit_edge

while.cond.i.qla82xx_wait_rom_busy.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_wait_rom_busy.exit

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 154140676) #10
  %and.i = and i32 %call1.i, 4
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.i, label %if.then.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %4, i32 noundef 45066, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.4) #10
  br label %qla82xx_wait_rom_busy.exit

qla82xx_wait_rom_busy.exit:                       ; preds = %if.then.i, %while.cond.i.qla82xx_wait_rom_busy.exit_crit_edge
  %call1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 154206224, i32 noundef 0)
  %call2 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 154206212, i32 noundef 6)
  %5 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i16 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i16, align 4
  br label %while.cond.i20

while.cond.i20:                                   ; preds = %while.body.i25.while.cond.i20_crit_edge, %qla82xx_wait_rom_busy.exit
  %timeout.0.i17 = phi i32 [ 0, %qla82xx_wait_rom_busy.exit ], [ %inc.i23, %while.body.i25.while.cond.i20_crit_edge ]
  %done.0.i18 = phi i32 [ 0, %qla82xx_wait_rom_busy.exit ], [ %and.i22, %while.body.i25.while.cond.i20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i18)
  %cmp.i19 = icmp eq i32 %done.0.i18, 0
  br i1 %cmp.i19, label %while.body.i25, label %while.cond.i20.qla82xx_wait_rom_busy.exit27_crit_edge

while.cond.i20.qla82xx_wait_rom_busy.exit27_crit_edge: ; preds = %while.cond.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla82xx_wait_rom_busy.exit27

while.body.i25:                                   ; preds = %while.cond.i20
  %call1.i21 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 154140676) #10
  %and.i22 = and i32 %call1.i21, 4
  %inc.i23 = add nuw nsw i32 %timeout.0.i17, 1
  %exitcond.i24 = icmp eq i32 %inc.i23, 100
  br i1 %exitcond.i24, label %if.then.i26, label %while.body.i25.while.cond.i20_crit_edge

while.body.i25.while.cond.i20_crit_edge:          ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i20

if.then.i26:                                      ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %8, i32 noundef 45066, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.4) #10
  br label %qla82xx_wait_rom_busy.exit27

qla82xx_wait_rom_busy.exit27:                     ; preds = %if.then.i26, %while.cond.i20.qla82xx_wait_rom_busy.exit27_crit_edge
  %9 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ha, align 128
  %driver_data.i.i.i28 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i28, align 4
  br label %while.cond.i32

while.cond.i32:                                   ; preds = %while.body.i37.while.cond.i32_crit_edge, %qla82xx_wait_rom_busy.exit27
  %timeout.0.i29 = phi i32 [ 0, %qla82xx_wait_rom_busy.exit27 ], [ %inc.i35, %while.body.i37.while.cond.i32_crit_edge ]
  %done.0.i30 = phi i32 [ 0, %qla82xx_wait_rom_busy.exit27 ], [ %and.i34, %while.body.i37.while.cond.i32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i30)
  %cmp.i31 = icmp eq i32 %done.0.i30, 0
  br i1 %cmp.i31, label %while.body.i37, label %if.end

while.body.i37:                                   ; preds = %while.cond.i32
  %call1.i33 = tail call i32 @qla82xx_rd_32(ptr noundef %ha, i32 noundef 154140676) #10
  %and.i34 = and i32 %call1.i33, 2
  %inc.i35 = add nuw nsw i32 %timeout.0.i29, 1
  %exitcond.i36 = icmp eq i32 %inc.i35, 100
  br i1 %exitcond.i36, label %qla82xx_wait_rom_done.exit, label %while.body.i37.while.cond.i32_crit_edge

while.body.i37.while.cond.i32_crit_edge:          ; preds = %while.body.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i32

qla82xx_wait_rom_done.exit:                       ; preds = %while.body.i37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %12, i32 noundef 45067, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %while.cond.i32
  %call5 = call fastcc i32 @qla82xx_read_status_reg(ptr noundef %ha, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and = lshr i32 %14, 1
  %15 = and i32 %and, 1
  %sext = add nsw i32 %15, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %qla82xx_wait_rom_done.exit
  %retval.0 = phi i32 [ -1, %qla82xx_wait_rom_done.exit ], [ -1, %if.end.cleanup_crit_edge ], [ %sext, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla82xx_flash_wait_write_finish(ptr noundef %ha) unnamed_addr #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %1 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @qla82xx_wr_32(ptr noundef %ha, i32 noundef 154206224, i32 noundef 0)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call2 = call fastcc i32 @qla82xx_read_status_reg(ptr noundef %ha, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #10
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 975, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 50000
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %4, i32 noundef 45069, ptr noundef nonnull @.str.124) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %for.end ], [ %call2, %lor.lhs.false.cleanup_crit_edge ], [ %call2, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_quiesce_io(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_perform_loop_resync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !261, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !361, !362, !363, !364}
!llvm.named.register.sp = !{!366}
!llvm.module.flags = !{!367, !368, !369, !370, !371, !372, !373, !374}
!llvm.ident = !{!375}

!0 = !{ptr @MD_MIU_TEST_AGT_RDDATA, !1, !"MD_MIU_TEST_AGT_RDDATA", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 45, i32 11}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 500, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 507, i32 7}
!6 = !{ptr @__func__.qla82xx_pci_mem_read_2M, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1467, i32 8}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1468, i32 5}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @qla82xx_pci_mem_read_2M._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @qla82xx_pci_mem_read_2M._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1622, i32 36}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1624, i32 7}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1631, i32 7}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1639, i32 7}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1655, i32 8}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1673, i32 6}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1708, i32 6}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1969, i32 7}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1997, i32 7}
!32 = !{ptr @__func__.qla82xx_intr_handler, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1997, i32 45}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2048, i32 9}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2080, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @qla82xx_msix_default._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @qla82xx_msix_default._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2143, i32 3}
!43 = !{ptr @qla82xx_msix_rsp_q._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @qla82xx_msix_rsp_q._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2176, i32 3}
!47 = !{ptr @qla82xx_poll._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qla82xx_poll._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @qla82xx_init_flags.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2257, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2484, i32 7}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2491, i32 7}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2970, i32 6}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3106, i32 9}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3120, i32 8}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3187, i32 6}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3189, i32 55}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3198, i32 8}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3316, i32 7}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3337, i32 8}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3342, i32 8}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3348, i32 8}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3355, i32 9}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3361, i32 9}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3379, i32 10}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3387, i32 10}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3392, i32 38}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3429, i32 7}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3435, i32 8}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3464, i32 7}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3498, i32 9}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3512, i32 9}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3519, i32 8}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3583, i32 3}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3593, i32 9}
!102 = !{ptr @__func__.qla2x00_wait_for_fcoe_ctx_reset, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3593, i32 29}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3624, i32 6}
!106 = !{ptr @__func__.qla82xx_chip_reset_cleanup, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3625, i32 6}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3650, i32 12}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3654, i32 12}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3667, i32 8}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3670, i32 4}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4126, i32 7}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4135, i32 7}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4141, i32 7}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4149, i32 7}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4155, i32 6}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4158, i32 6}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4165, i32 7}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4179, i32 6}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4184, i32 7}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4197, i32 8}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4207, i32 8}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4215, i32 7}
!140 = !{ptr @__func__.qla82xx_md_collect, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4217, i32 7}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4222, i32 7}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4291, i32 7}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4302, i32 7}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4309, i32 6}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4330, i32 7}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4341, i32 7}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4348, i32 7}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4363, i32 7}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4373, i32 7}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4391, i32 7}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4402, i32 8}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4408, i32 9}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4412, i32 9}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4437, i32 7}
!170 = !{ptr @__func__.qla82xx_beacon_on, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4437, i32 44}
!172 = !{ptr @__func__.qla82xx_beacon_off, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4458, i32 44}
!174 = !{ptr @.str.73, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 340, i32 2}
!176 = !{ptr @.str.74, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 341, i32 2}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 342, i32 2}
!180 = !{ptr @.str.76, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 343, i32 2}
!182 = !{ptr @.str.77, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 344, i32 2}
!184 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 345, i32 2}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 346, i32 2}
!188 = !{ptr @q_dev_state, !189, !"q_dev_state", i1 false, i1 false}
!189 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 338, i32 14}
!190 = !{ptr @crb_128M_2M_map, !191, !"crb_128M_2M_map", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 110, i32 37}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 375, i32 7}
!194 = !{ptr @__func__.qla82xx_pci_set_crbwindow_2M, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 377, i32 7}
!196 = !{ptr @qla82xx_crb_hub_agt, !197, !"qla82xx_crb_hub_agt", i1 false, i1 false}
!197 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 270, i32 17}
!198 = !{ptr @.str.82, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 670, i32 7}
!200 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 560, i32 8}
!202 = !{ptr @__func__.qla82xx_pci_set_window, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 561, i32 8}
!204 = !{ptr @.str.84, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 570, i32 8}
!206 = !{ptr @.str.85, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 583, i32 8}
!208 = !{ptr @.str.86, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 599, i32 8}
!210 = !{ptr @.str.87, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 611, i32 8}
!212 = !{ptr @qla82xx_pci_set_window_warning_count, !213, !"qla82xx_pci_set_window_warning_count", i1 false, i1 false}
!213 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 540, i32 12}
!214 = !{ptr @legacy_intr, !215, !"legacy_intr", i1 false, i1 false}
!215 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1940, i32 39}
!216 = !{ptr @.str.88, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2394, i32 7}
!218 = !{ptr @.str.89, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2413, i32 6}
!220 = !{ptr @.str.90, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2417, i32 7}
!222 = !{ptr @.str.91, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2421, i32 7}
!224 = !{ptr @.str.92, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2426, i32 6}
!226 = !{ptr @.str.93, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2432, i32 7}
!228 = !{ptr @.str.94, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2443, i32 8}
!230 = !{ptr @.str.95, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2450, i32 7}
!232 = !{ptr @.str.96, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2455, i32 9}
!234 = !{ptr @.str.97, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1171, i32 7}
!236 = !{ptr @.str.98, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1184, i32 7}
!238 = !{ptr @.str.99, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1189, i32 6}
!240 = !{ptr @.str.100, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1194, i32 7}
!242 = !{ptr @.str.101, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1246, i32 8}
!244 = !{ptr @.str.102, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 831, i32 8}
!246 = !{ptr @__func__.qla82xx_rom_lock, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 832, i32 8}
!248 = distinct !{null, !249, !"qla82xx_rom_lock_timeout", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 814, i32 13}
!250 = !{ptr @.str.103, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 937, i32 7}
!252 = distinct !{null, !253, !"qla82xx_crb_table_initialized", i1 false, i1 false}
!253 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 39, i32 12}
!254 = !{ptr @crb_addr_xform, !255, !"crb_addr_xform", i1 false, i1 false}
!255 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 38, i32 22}
!256 = !{ptr @__func__.qla82xx_pci_mem_write_2M, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1376, i32 8}
!258 = !{ptr @.str.104, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1377, i32 5}
!260 = !{ptr @qla82xx_pci_mem_write_2M._entry, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @qla82xx_pci_mem_write_2M._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.105, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 742, i32 7}
!264 = !{ptr @.str.106, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1885, i32 7}
!266 = !{ptr @.str.107, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1893, i32 6}
!268 = !{ptr @.str.108, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1924, i32 7}
!270 = !{ptr @.str.109, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1932, i32 6}
!272 = !{ptr @.str.110, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2515, i32 8}
!274 = distinct !{null, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2655, i32 8}
!276 = !{ptr @.str.112, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2666, i32 7}
!278 = !{ptr @.str.113, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2677, i32 9}
!280 = distinct !{null, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2693, i32 9}
!282 = distinct !{null, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2698, i32 9}
!284 = !{ptr @.str.116, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2715, i32 8}
!286 = !{ptr @.str.117, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2724, i32 7}
!288 = !{ptr @.str.118, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2534, i32 7}
!290 = !{ptr @.str.119, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2551, i32 7}
!292 = !{ptr @.str.120, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1046, i32 7}
!294 = !{ptr @.str.121, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 955, i32 7}
!296 = !{ptr @.str.122, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 861, i32 8}
!298 = distinct !{null, !299, !"rom_max_timeout", i1 false, i1 false}
!299 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 813, i32 13}
!300 = !{ptr @.str.123, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 882, i32 8}
!302 = !{ptr @.str.124, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 978, i32 9}
!304 = !{ptr @.str.125, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 1062, i32 7}
!306 = !{ptr @.str.126, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2581, i32 7}
!308 = !{ptr @.str.127, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2281, i32 7}
!310 = !{ptr @.str.128, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2286, i32 8}
!312 = !{ptr @.str.129, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2842, i32 6}
!314 = !{ptr @.str.130, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2851, i32 7}
!316 = !{ptr @.str.131, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2859, i32 6}
!318 = !{ptr @.str.132, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2791, i32 7}
!320 = !{ptr @.str.133, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3019, i32 7}
!322 = !{ptr @.str.134, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3025, i32 7}
!324 = !{ptr @.str.135, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3036, i32 6}
!326 = !{ptr @.str.136, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3044, i32 8}
!328 = !{ptr @.str.137, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3071, i32 7}
!330 = !{ptr @.str.138, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3077, i32 9}
!332 = !{ptr @.str.139, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3080, i32 8}
!334 = !{ptr @.str.140, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2350, i32 6}
!336 = !{ptr @.str.141, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2905, i32 8}
!338 = !{ptr @.str.142, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2911, i32 8}
!340 = !{ptr @.str.143, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 2932, i32 7}
!342 = !{ptr @.str.144, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3287, i32 7}
!344 = !{ptr @.str.145, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3293, i32 7}
!346 = !{ptr @.str.146, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3137, i32 7}
!348 = !{ptr @.str.147, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3153, i32 7}
!350 = !{ptr @.str.148, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4032, i32 7}
!352 = !{ptr @.str.149, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4038, i32 7}
!354 = !{ptr @.str.150, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4044, i32 6}
!356 = !{ptr @__func__.qla82xx_minidump_process_rdmem, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4045, i32 6}
!358 = !{ptr @.str.151, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 4065, i32 4}
!360 = !{ptr @qla82xx_minidump_process_rdmem._rs, !359, !"_rs", i1 false, i1 false}
!361 = !{ptr @.str.152, !359, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @qla82xx_minidump_process_rdmem._entry, !359, !"_entry", i1 false, i1 false}
!363 = !{ptr @qla82xx_minidump_process_rdmem._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.153, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/scsi/qla2xxx/qla_nx.c", i32 3903, i32 10}
!366 = !{!"sp"}
!367 = !{i32 1, !"wchar_size", i32 2}
!368 = !{i32 1, !"min_enum_size", i32 4}
!369 = !{i32 8, !"branch-target-enforcement", i32 0}
!370 = !{i32 8, !"sign-return-address", i32 0}
!371 = !{i32 8, !"sign-return-address-all", i32 0}
!372 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!373 = !{i32 7, !"uwtable", i32 1}
!374 = !{i32 7, !"frame-pointer", i32 2}
!375 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!376 = !{i64 2156928826, i64 2156929320, i64 2156928863, i64 2156928919, i64 2156928953, i64 2156928977, i64 2156929018, i64 2156929039, i64 2156929067, i64 2156929101}
!377 = !{i64 2156927532}
!378 = !{i64 5239115}
!379 = !{i64 5239533}
!380 = !{i64 2156295397}
!381 = !{i64 2156930534}
!382 = !{i64 2156931503, i64 2156931997, i64 2156931540, i64 2156931596, i64 2156931630, i64 2156931654, i64 2156931695, i64 2156931716, i64 2156931744, i64 2156931778}
!383 = !{!"branch_weights", i32 2000, i32 1}
!384 = !{i64 2156935965, i64 2156936459, i64 2156936002, i64 2156936058, i64 2156936092, i64 2156936116, i64 2156936157, i64 2156936178, i64 2156936206, i64 2156936240}
!385 = !{i64 5239313}
!386 = !{i64 2156938871}
!387 = !{i64 5238695}
!388 = !{i64 2156939305}
!389 = !{i64 2156939739}
!390 = !{i64 2156901316}
!391 = !{i64 2156901754}
!392 = !{!"auto-init"}
!393 = !{i64 2156297841}
!394 = !{i64 2156294794}
!395 = !{i64 2156993225}
!396 = !{i64 2156993373}
!397 = !{i8 0, i8 2}
!398 = !{i64 2157015005}
!399 = !{i64 2156902124}
!400 = !{i64 2156902497}
