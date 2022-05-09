; ModuleID = '/llk/IR_all_yes/drivers/scsi/bnx2i/bnx2i_hwi.c_pt.bc'
source_filename = "../drivers/scsi/bnx2i/bnx2i_hwi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cnic_ulp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bnx2i_percpu_s = type { ptr, %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iscsi_transport = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bnx2i_endpoint = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i32, %struct.qp_info, %struct.ep_handles, %struct.timer_list, %struct.wait_queue_head }
%struct.qp_info = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32 }
%struct.ep_handles = type { i32, i32, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bnx2i_hba = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32, %struct.iscsi_cid_queue, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, %struct.spinlock, %struct.mutex, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bnx2i_stats_info, %struct.iscsi_stats_info }
%struct.iscsi_cid_queue = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnx2i_stats_info = type { i64, i64, i64, i64 }
%struct.iscsi_stats_info = type { [12 x i8], [8 x i8], [8 x i8], i32, [64 x i8], [64 x i8], [64 x i8], [16 x i8], i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2i_5771x_cq_db = type { [8 x %struct.bnx2x_iscsi_cq_pend_cmpl], [8 x i16], [8 x i16], [4 x i32] }
%struct.bnx2x_iscsi_cq_pend_cmpl = type { i16, i16 }
%struct.bnx2i_conn = type { ptr, ptr, %struct.completion, i32, i32, %struct.timer_list, ptr, %struct.generic_pdu_resc, i64, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.generic_pdu_resc = type { ptr, i32, i32, ptr, %struct.iscsi_hdr, ptr, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.rqe = type { [256 x i8] }
%struct.iscsi_login_req = type { i8, i8, i8, i8, i8, [3 x i8], [6 x i8], i16, i32, i16, i16, i32, i32, [16 x i8] }
%struct.bnx2i_login_request = type { i8, i8, i8, i8, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.iscsi_task = type { ptr, i16, i16, i32, i32, %struct.scsi_lun, i32, i32, %struct.iscsi_r2t_info, ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, %struct.refcount_struct, %struct.list_head, ptr }
%struct.iscsi_r2t_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sqe = type { [64 x i8] }
%struct.iscsi_cls_conn = type { %struct.list_head, ptr, ptr, i32, %struct.mutex, ptr, i32, %struct.work_struct, %struct.device, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.bnx2i_tmf_request = type { i8, i8, i16, i32, [2 x i32], i16, i16, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i8, i8, i8, i8 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_text = type { i8, i8, [2 x i8], i8, [3 x i8], [8 x i8], i32, i32, i32, i32, [16 x i8] }
%struct.bnx2i_text_request = type { i8, i8, i16, i32, [2 x i32], i16, i16, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.bnx2i_cmd = type { %struct.iscsi_hdr, ptr, ptr, ptr, %struct.io_bdt, i32, %struct.bnx2i_cmd_request }
%struct.io_bdt = type { ptr, i32, i16 }
%struct.bnx2i_cmd_request = type { i8, i8, i16, i16, i16, [2 x i32], i16, i16, i32, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 }
%struct.bnx2i_nop_out_request = type { i8, i8, i16, i32, [2 x i32], i16, i16, i32, i32, [2 x i32], i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.iscsi_nopout = type { i8, i8, i16, i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, [16 x i8] }
%struct.iscsi_logout = type { i8, i8, [2 x i8], i8, [3 x i8], [8 x i8], i32, i16, [2 x i8], i32, i32, [16 x i8] }
%struct.bnx2i_logout_request = type { i8, i8, i16, i32, [2 x i32], i16, i16, i16, i16, i32, [5 x i32], i32, i32, i32, i8, i8, i8, i8 }
%struct.iscsi_kwqe_conn_update = type { %struct.iscsi_kwqe_header, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_kwqe_header = type { i8, i8 }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.130, [0 x i8] }
%union.anon.130 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.cnic_dev = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, [6 x i8], i32, i32, i32, i32, ptr, ptr, ptr }
%struct.bnx2i_cleanup_request = type { i8, i8, i16, [3 x i32], i16, i16, [10 x i32], i8, i8, i16 }
%struct.iscsi_kwqe_conn_destroy = type { %struct.iscsi_kwqe_header, i16, i32, [6 x i32] }
%struct.iscsi_kwqe_conn_offload1 = type { %struct.iscsi_kwqe_header, i16, i32, i32, i32, i32, [3 x i32] }
%struct.iscsi_kwqe_conn_offload2 = type { %struct.iscsi_kwqe_header, i16, i32, i32, %struct.iscsi_pte, %struct.iscsi_pte, i32 }
%struct.iscsi_pte = type { i32, i32 }
%struct.iscsi_kwqe_conn_offload3 = type { %struct.iscsi_kwqe_header, i16, i32, [3 x %struct.iscsi_pte] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.122, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.122 = type { ptr }
%struct.cqe = type { [64 x i8] }
%struct.iscsi_kwqe_init1 = type { %struct.iscsi_kwqe_header, i8, i8, i32, i32, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16 }
%struct.iscsi_kwqe_init2 = type { %struct.iscsi_kwqe_header, i16, [2 x i32], [5 x i32] }
%struct.bnx2i_cmd_response = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i8, i8, [5 x i32], %union.bnx2i_cmd_resp_task_stat, i32, i16, i16, i32 }
%union.bnx2i_cmd_resp_task_stat = type { %struct.bnx2i_write_resp_task_stat }
%struct.bnx2i_write_resp_task_stat = type { i16, i16 }
%struct.iscsi_scsi_rsp = type { i8, i8, i8, i8, i8, [3 x i8], [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bnx2i_work = type { %struct.list_head, ptr, ptr, %struct.cqe }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.95, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.53 }
%struct.llist_node = type { ptr }
%union.anon.53 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.55 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.95 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iscsi_kcqe = type { i32, i32, i32, %union.iscsi_kcqe_params, i8, i8, i16 }
%union.iscsi_kcqe_params = type { [4 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.cnic_sock = type { ptr, ptr, [4 x i32], [4 x i32], i16, i16, i16, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.kwqe, %struct.kwqe, %struct.kwqe }
%struct.kwqe = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2i_nop_in_msg = type { i8, i8, i16, i32, i32, i32, i32, i32, i16, i8, i8, i32, [2 x i32], [4 x i32], i16, i16, i32 }
%struct.bnx2i_login_response = type { i8, i8, i8, i8, i32, i32, i32, [2 x i32], i16, i8, i8, i32, i32, i16, i16, i8, i8, i16, [3 x i32], i16, i16, i32 }
%struct.bnx2i_tmf_response = type { i8, i8, i8, i8, i32, i32, i32, [2 x i32], i16, i8, i8, [7 x i32], i16, i16, i32 }
%struct.bnx2i_text_response = type { i8, i8, i16, i32, i32, i32, i32, i32, i16, i8, i8, i32, [2 x i32], [4 x i32], i16, i16, i32 }
%struct.bnx2i_logout_response = type { i8, i8, i8, i8, i32, i32, i32, [2 x i32], i16, i8, i8, [3 x i32], i16, i16, [3 x i32], i16, i16, i32 }
%struct.bnx2i_async_msg = type { i8, i8, i16, i32, i32, i32, [2 x i32], i16, i8, i8, i32, [2 x i32], i8, i8, i16, i16, i16, [3 x i32], i32 }
%struct.bnx2i_reject_msg = type { i8, i8, i8, i8, i32, i32, i32, [2 x i32], i16, i8, i8, [8 x i32], i32 }
%struct.bnx2i_cleanup_response = type { i8, i8, i16, [3 x i32], [2 x i32], i16, i8, i8, [7 x i32], i16, i16, i32 }

@event_coal_min = external dso_local local_unnamed_addr global i32, align 4
@bnx2i_send_iscsi_nopout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\011NOPOUT: WARNING!! payload len != 0\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2i_send_iscsi_nopout\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/bnx2i/bnx2i_hwi.c\00", [33 x i8] zeroinitializer }, align 32
@bnx2i_send_iscsi_nopout._entry_ptr = internal global ptr @bnx2i_send_iscsi_nopout._entry, section ".printk_index", align 4
@bnx2i_update_iscsi_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 671, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"bnx2i: conn update - MBL 0x%x FBL 0x%xMRDSL_I 0x%x MRDSL_T 0x%x \0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2i_update_iscsi_conn\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bnx2i_update_iscsi_conn._entry_ptr = internal global ptr @bnx2i_update_iscsi_conn._entry, section ".printk_index", align 4
@bnx2i_ep_ofld_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011ofld_timer: CONN_OFLD timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2i_ep_ofld_timer\00", [44 x i8] zeroinitializer }, align 32
@bnx2i_ep_ofld_timer._entry_ptr = internal global ptr @bnx2i_ep_ofld_timer._entry, section ".printk_index", align 4
@bnx2i_ep_ofld_timer._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\011ofld_timer: CONN_DISCON timeout\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2i_ep_ofld_timer._entry_ptr.11 = internal global ptr @bnx2i_ep_ofld_timer._entry.9, section ".printk_index", align 4
@bnx2i_ep_ofld_timer._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\011ofld_timer: CONN_CLEANUP timeout\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2i_ep_ofld_timer._entry_ptr.14 = internal global ptr @bnx2i_ep_ofld_timer._entry.12, section ".printk_index", align 4
@bnx2i_alloc_qp_resc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\011bnx2i: unable to alloc SQ PT mem (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2i_alloc_qp_resc\00", [44 x i8] zeroinitializer }, align 32
@bnx2i_alloc_qp_resc._entry_ptr = internal global ptr @bnx2i_alloc_qp_resc._entry, section ".printk_index", align 4
@bnx2i_alloc_qp_resc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011bnx2i: unable to alloc SQ BD memory %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2i_alloc_qp_resc._entry_ptr.19 = internal global ptr @bnx2i_alloc_qp_resc._entry.17, section ".printk_index", align 4
@bnx2i_alloc_qp_resc._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011bnx2i: unable to alloc CQ PT memory %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2i_alloc_qp_resc._entry_ptr.22 = internal global ptr @bnx2i_alloc_qp_resc._entry.20, section ".printk_index", align 4
@bnx2i_alloc_qp_resc._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011bnx2i: unable to alloc CQ BD memory %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2i_alloc_qp_resc._entry_ptr.25 = internal global ptr @bnx2i_alloc_qp_resc._entry.23, section ".printk_index", align 4
@bnx2i_alloc_qp_resc._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\011bnx2i: unable to alloc RQ PT mem %d\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2i_alloc_qp_resc._entry_ptr.28 = internal global ptr @bnx2i_alloc_qp_resc._entry.26, section ".printk_index", align 4
@bnx2i_alloc_qp_resc._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.2, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011bnx2i: unable to alloc RQ BD memory %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2i_alloc_qp_resc._entry_ptr.31 = internal global ptr @bnx2i_alloc_qp_resc._entry.29, section ".printk_index", align 4
@en_tcp_dack = external dso_local local_unnamed_addr global i32, align 4
@error_mask1 = external dso_local local_unnamed_addr global i32, align 4
@error_mask2 = external dso_local local_unnamed_addr global i32, align 4
@iscsi_error_mask = external dso_local local_unnamed_addr global i64, align 8
@bnx2i_process_scsi_cmd_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1403, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sense data len %d > RQ sz\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bnx2i_process_scsi_cmd_resp\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bnx2i_process_scsi_cmd_resp._entry_ptr = internal global ptr @bnx2i_process_scsi_cmd_resp._entry, section ".printk_index", align 4
@bnx2i_process_scsi_cmd_resp._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 1408, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sense data len %d > conn data\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2i_process_scsi_cmd_resp._entry_ptr.37 = internal global ptr @bnx2i_process_scsi_cmd_resp._entry.35, section ".printk_index", align 4
@bnx2i_cnic_cb = dso_local global { %struct.cnic_ulp_ops, [36 x i8] } { %struct.cnic_ulp_ops { ptr @bnx2i_ulp_init, ptr @bnx2i_ulp_exit, ptr @bnx2i_start, ptr @bnx2i_stop, ptr @bnx2i_indicate_kcqe, ptr @bnx2i_indicate_netevent, ptr @bnx2i_cm_connect_cmpl, ptr @bnx2i_cm_close_cmpl, ptr @bnx2i_cm_abort_cmpl, ptr @bnx2i_cm_remote_close, ptr @bnx2i_cm_remote_abort, ptr @bnx2i_send_nl_mesg, ptr @bnx2i_get_stats, ptr null, %struct.atomic_t zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@bnx2i_indicate_kcqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 2504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016bnx2i [%.2x:%.2x.%.2x]: ISCSI_INIT passed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2i_indicate_kcqe\00", [44 x i8] zeroinitializer }, align 32
@bnx2i_indicate_kcqe._entry_ptr = internal global ptr @bnx2i_indicate_kcqe._entry, section ".printk_index", align 4
@bnx2i_indicate_kcqe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 2516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\011bnx2i: unknown opcode 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2i_indicate_kcqe._entry_ptr.43 = internal global ptr @bnx2i_indicate_kcqe._entry.41, section ".printk_index", align 4
@bnx2i_fastpath_notification._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 2097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\011cid #%x not valid\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bnx2i_fastpath_notification\00", [36 x i8] zeroinitializer }, align 32
@bnx2i_fastpath_notification._entry_ptr = internal global ptr @bnx2i_fastpath_notification._entry, section ".printk_index", align 4
@bnx2i_fastpath_notification._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 2101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\011cid #%x - ep not bound\0A\00", [38 x i8] zeroinitializer }, align 32
@bnx2i_fastpath_notification._entry_ptr.48 = internal global ptr @bnx2i_fastpath_notification._entry.46, section ".printk_index", align 4
@bnx2i_process_new_cqes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\011bnx2i (%s): cq resr freed in bh execution!\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2i_process_new_cqes\00", [41 x i8] zeroinitializer }, align 32
@bnx2i_process_new_cqes._entry_ptr = internal global ptr @bnx2i_process_new_cqes._entry, section ".printk_index", align 4
@bnx2i_process_new_cqes._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 1986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\011bnx2i: Unsolicited NOP-In detected for suspended connection dev=%s!\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2i_process_new_cqes._entry_ptr.53 = internal global ptr @bnx2i_process_new_cqes._entry.51, section ".printk_index", align 4
@bnx2i_process_new_cqes._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.50, ptr @.str.2, i32 2041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2i_process_new_cqes._entry_ptr.55 = internal global ptr @bnx2i_process_new_cqes._entry.54, section ".printk_index", align 4
@bnx2i_process_new_cqes._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.2, i32 2052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\011bnx2i (%s): no active cmd! op 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2i_process_new_cqes._entry_ptr.58 = internal global ptr @bnx2i_process_new_cqes._entry.56, section ".printk_index", align 4
@bnx2i_percpu = external dso_local global %struct.bnx2i_percpu_s, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bnx2i_process_async_mesg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1755, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"async: scsi events not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2i_process_async_mesg\00", [39 x i8] zeroinitializer }, align 32
@bnx2i_process_async_mesg._entry_ptr = internal global ptr @bnx2i_process_async_mesg._entry, section ".printk_index", align 4
@bnx2i_process_cmd_cleanup_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\011bnx2i: cmd clean ITT %x not active\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bnx2i_process_cmd_cleanup_resp\00", [33 x i8] zeroinitializer }, align 32
@bnx2i_process_cmd_cleanup_resp._entry_ptr = internal global ptr @bnx2i_process_cmd_cleanup_resp._entry, section ".printk_index", align 4
@bnx2i_process_ofld_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 2430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\011ofld_cmpl: no pend offload request\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2i_process_ofld_cmpl\00", [40 x i8] zeroinitializer }, align 32
@bnx2i_process_ofld_cmpl._entry_ptr = internal global ptr @bnx2i_process_ofld_cmpl._entry, section ".printk_index", align 4
@bnx2i_process_ofld_cmpl._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 2435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\011ofld_cmpl: error hba mis-match\0A\00", [62 x i8] zeroinitializer }, align 32
@bnx2i_process_ofld_cmpl._entry_ptr.67 = internal global ptr @bnx2i_process_ofld_cmpl._entry.65, section ".printk_index", align 4
@bnx2i_process_ofld_cmpl._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.2, i32 2445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\011bnx2i (%s): ofld1 cmpl - unable to allocate iSCSI context resources\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2i_process_ofld_cmpl._entry_ptr.70 = internal global ptr @bnx2i_process_ofld_cmpl._entry.68, section ".printk_index", align 4
@bnx2i_process_ofld_cmpl._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.2, i32 2449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\011bnx2i (%s): ofld1 cmpl - invalid opcode\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2i_process_ofld_cmpl._entry_ptr.73 = internal global ptr @bnx2i_process_ofld_cmpl._entry.71, section ".printk_index", align 4
@bnx2i_process_ofld_cmpl._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.64, ptr @.str.2, i32 2457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\011bnx2i (%s): ofld1 cmpl - invalid error code %d\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2i_process_ofld_cmpl._entry_ptr.76 = internal global ptr @bnx2i_process_ofld_cmpl._entry.74, section ".printk_index", align 4
@bnx2i_process_update_conn_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 2130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011conn_update: cid %x not valid\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bnx2i_process_update_conn_cmpl\00", [33 x i8] zeroinitializer }, align 32
@bnx2i_process_update_conn_cmpl._entry_ptr = internal global ptr @bnx2i_process_update_conn_cmpl._entry, section ".printk_index", align 4
@bnx2i_process_update_conn_cmpl._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 2134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011cid %x does not have ep bound\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2i_process_update_conn_cmpl._entry_ptr.81 = internal global ptr @bnx2i_process_update_conn_cmpl._entry.79, section ".printk_index", align 4
@bnx2i_process_update_conn_cmpl._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 2139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\011request failed cid %x\0A\00", [39 x i8] zeroinitializer }, align 32
@bnx2i_process_update_conn_cmpl._entry_ptr.84 = internal global ptr @bnx2i_process_update_conn_cmpl._entry.82, section ".printk_index", align 4
@bnx2i_iscsi_license_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bnx2i: iSCSI not supported, dev=%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2i_iscsi_license_error\00", [38 x i8] zeroinitializer }, align 32
@bnx2i_iscsi_license_error._entry_ptr = internal global ptr @bnx2i_iscsi_license_error._entry, section ".printk_index", align 4
@bnx2i_iscsi_license_error._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013bnx2i: LOM is not enable to offload iSCSI connections, dev=%s\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2i_iscsi_license_error._entry_ptr.89 = internal global ptr @bnx2i_iscsi_license_error._entry.87, section ".printk_index", align 4
@bnx2i_process_conn_destroy_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 2396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\011bnx2i_conn_destroy_cmpl: no pending offload request, unexpected completion\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bnx2i_process_conn_destroy_cmpl\00", [32 x i8] zeroinitializer }, align 32
@bnx2i_process_conn_destroy_cmpl._entry_ptr = internal global ptr @bnx2i_process_conn_destroy_cmpl._entry, section ".printk_index", align 4
@bnx2i_process_conn_destroy_cmpl._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 2401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\011conn destroy- error hba mis-match\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2i_process_conn_destroy_cmpl._entry_ptr.94 = internal global ptr @bnx2i_process_conn_destroy_cmpl._entry.92, section ".printk_index", align 4
@bnx2i_process_conn_destroy_cmpl._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.2, i32 2406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\011conn_destroy_cmpl: op failed\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2i_process_conn_destroy_cmpl._entry_ptr.97 = internal global ptr @bnx2i_process_conn_destroy_cmpl._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@bnx2i_process_iscsi_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 2217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\011bnx2i - cid 0x%x not valid\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2i_process_iscsi_error\00", [38 x i8] zeroinitializer }, align 32
@bnx2i_process_iscsi_error._entry_ptr = internal global ptr @bnx2i_process_iscsi_error._entry, section ".printk_index", align 4
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iscsi_warning\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iscsi_error\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdr digest err\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data digest err\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wrong opcode rcvd\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AHS len > 0 rcvd\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid ITT rcvd\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wrong StatSN rcvd\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wrong DataSN rcvd\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pend R2T violation\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ERL0, UO\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ERL0, U1\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ERL0, U2\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ERL0, U3\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ERL0, U4\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ERL0, U5\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ERL0, U6\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid resi len\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MRDSL violation\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"F-bit not set\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"invalid TTT\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid DataSN\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"burst len violation\00", [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"buf offset violation\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid LUN field\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid R2TSN field\00", [44 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid cmd len1\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid cmd len2\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pend r2t exceeds MaxOutstandingR2T value\00", [55 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TTT is rsvd\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MBL violation\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"data seg len != 0\00", [46 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reject pdu len error\00", [43 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"async pdu len error\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nopin pdu len error\00", [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pend r2t in cleanup\00", [44 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IP fragments rcvd\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IP options error\00", [47 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"urgent flag error\00", [46 x i8] zeroinitializer }, align 32
@bnx2i_process_iscsi_error._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.100, ptr @.str.2, i32 2354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\011iscsi_err - unknown err %x\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2i_process_iscsi_error._entry_ptr.142 = internal global ptr @bnx2i_process_iscsi_error._entry.140, section ".printk_index", align 4
@bnx2i_process_iscsi_error._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.100, ptr @.str.2, i32 2361, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2i: %s - %s\0A\00", [16 x i8] zeroinitializer }, align 32
@bnx2i_process_iscsi_error._entry_ptr.145 = internal global ptr @bnx2i_process_iscsi_error._entry.143, section ".printk_index", align 4
@bnx2i_process_iscsi_error._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.100, ptr @.str.2, i32 2369, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"conn_err - hostno %d conn %p, iscsi_cid %x cid %x\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2i_process_iscsi_error._entry_ptr.148 = internal global ptr @bnx2i_process_iscsi_error._entry.146, section ".printk_index", align 4
@bnx2i_process_iscsi_error._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.100, ptr @.str.2, i32 2377, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@bnx2i_process_iscsi_error._entry_ptr.150 = internal global ptr @bnx2i_process_iscsi_error._entry.149, section ".printk_index", align 4
@bnx2i_process_tcp_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.151, ptr @.str.2, i32 2181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2i_process_tcp_error\00", [40 x i8] zeroinitializer }, align 32
@bnx2i_process_tcp_error._entry_ptr = internal global ptr @bnx2i_process_tcp_error._entry, section ".printk_index", align 4
@bnx2i_process_tcp_error._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 2186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\011bnx2i - cid 0x%x had TCP errors, error code 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2i_process_tcp_error._entry_ptr.154 = internal global ptr @bnx2i_process_tcp_error._entry.152, section ".printk_index", align 4
@bnx2i_iscsi_transport = external dso_local global %struct.iscsi_transport, align 4
@bnx2i_send_nl_mesg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 2665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\011bnx2i: private nl message send error\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2i_send_nl_mesg\00", [45 x i8] zeroinitializer }, align 32
@bnx2i_send_nl_mesg._entry_ptr = internal global ptr @bnx2i_send_nl_mesg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 256, i64 1024]
@__sancov_gen_cov_switch_values.159 = internal global [9 x i64] [i64 7, i64 8, i64 16, i64 18, i64 19, i64 20, i64 25, i64 32, i64 33]
@__sancov_gen_cov_switch_values.160 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 128]
@__sancov_gen_cov_switch_values.161 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 80, i64 81]
@__sancov_gen_cov_switch_values.162 = internal global [39 x i64] [i64 37, i64 32, i64 5, i64 6, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 64, i64 65, i64 66]
@__sancov_gen_cov_switch_values.163 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 10]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.165 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 50, i64 63]
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 565, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 665, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 691, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 694, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 697, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1064, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1074, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1100, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1110, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1142, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1152, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1401, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1406, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant [14 x i8] c"bnx2i_cnic_cb\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2675, i32 21 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2500, i32 5 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2515, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2097, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2101, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1971, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1983, i32 5 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2040, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2049, i32 5 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1754, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1840, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2430, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2435, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2443, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2448, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2455, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2130, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2134, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2139, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 118, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 122, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2395, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2401, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2406, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2209, i32 34 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2217, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2225, i32 13 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2228, i32 13 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2233, i32 23 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2236, i32 23 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2239, i32 23 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2242, i32 23 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2245, i32 23 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2248, i32 23 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2251, i32 23 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2254, i32 23 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2257, i32 23 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2260, i32 23 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2263, i32 23 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2266, i32 23 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2269, i32 23 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2272, i32 23 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2275, i32 23 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2278, i32 23 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2281, i32 23 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2284, i32 23 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2287, i32 23 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2290, i32 23 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2293, i32 23 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2296, i32 23 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2299, i32 23 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2302, i32 23 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2307, i32 23 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2312, i32 23 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2315, i32 23 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2318, i32 23 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2321, i32 23 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2326, i32 23 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2329, i32 23 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2332, i32 23 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2335, i32 23 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2340, i32 23 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2344, i32 23 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2347, i32 23 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2350, i32 23 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2353, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2358, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2363, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2374, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2181, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2185, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.604 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.605 = private constant [34 x i8] c"../drivers/scsi/bnx2i/bnx2i_hwi.c\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2665, i32 3 }
@llvm.compiler.used = appending global [191 x ptr] [ptr @bnx2i_alloc_qp_resc._entry, ptr @bnx2i_alloc_qp_resc._entry.17, ptr @bnx2i_alloc_qp_resc._entry.20, ptr @bnx2i_alloc_qp_resc._entry.23, ptr @bnx2i_alloc_qp_resc._entry.26, ptr @bnx2i_alloc_qp_resc._entry.29, ptr @bnx2i_alloc_qp_resc._entry_ptr, ptr @bnx2i_alloc_qp_resc._entry_ptr.19, ptr @bnx2i_alloc_qp_resc._entry_ptr.22, ptr @bnx2i_alloc_qp_resc._entry_ptr.25, ptr @bnx2i_alloc_qp_resc._entry_ptr.28, ptr @bnx2i_alloc_qp_resc._entry_ptr.31, ptr @bnx2i_ep_ofld_timer._entry, ptr @bnx2i_ep_ofld_timer._entry.12, ptr @bnx2i_ep_ofld_timer._entry.9, ptr @bnx2i_ep_ofld_timer._entry_ptr, ptr @bnx2i_ep_ofld_timer._entry_ptr.11, ptr @bnx2i_ep_ofld_timer._entry_ptr.14, ptr @bnx2i_fastpath_notification._entry, ptr @bnx2i_fastpath_notification._entry.46, ptr @bnx2i_fastpath_notification._entry_ptr, ptr @bnx2i_fastpath_notification._entry_ptr.48, ptr @bnx2i_indicate_kcqe._entry, ptr @bnx2i_indicate_kcqe._entry.41, ptr @bnx2i_indicate_kcqe._entry_ptr, ptr @bnx2i_indicate_kcqe._entry_ptr.43, ptr @bnx2i_iscsi_license_error._entry, ptr @bnx2i_iscsi_license_error._entry.87, ptr @bnx2i_iscsi_license_error._entry_ptr, ptr @bnx2i_iscsi_license_error._entry_ptr.89, ptr @bnx2i_process_async_mesg._entry, ptr @bnx2i_process_async_mesg._entry_ptr, ptr @bnx2i_process_cmd_cleanup_resp._entry, ptr @bnx2i_process_cmd_cleanup_resp._entry_ptr, ptr @bnx2i_process_conn_destroy_cmpl._entry, ptr @bnx2i_process_conn_destroy_cmpl._entry.92, ptr @bnx2i_process_conn_destroy_cmpl._entry.95, ptr @bnx2i_process_conn_destroy_cmpl._entry_ptr, ptr @bnx2i_process_conn_destroy_cmpl._entry_ptr.94, ptr @bnx2i_process_conn_destroy_cmpl._entry_ptr.97, ptr @bnx2i_process_iscsi_error._entry, ptr @bnx2i_process_iscsi_error._entry.140, ptr @bnx2i_process_iscsi_error._entry.143, ptr @bnx2i_process_iscsi_error._entry.146, ptr @bnx2i_process_iscsi_error._entry.149, ptr @bnx2i_process_iscsi_error._entry_ptr, ptr @bnx2i_process_iscsi_error._entry_ptr.142, ptr @bnx2i_process_iscsi_error._entry_ptr.145, ptr @bnx2i_process_iscsi_error._entry_ptr.148, ptr @bnx2i_process_iscsi_error._entry_ptr.150, ptr @bnx2i_process_new_cqes._entry, ptr @bnx2i_process_new_cqes._entry.51, ptr @bnx2i_process_new_cqes._entry.54, ptr @bnx2i_process_new_cqes._entry.56, ptr @bnx2i_process_new_cqes._entry_ptr, ptr @bnx2i_process_new_cqes._entry_ptr.53, ptr @bnx2i_process_new_cqes._entry_ptr.55, ptr @bnx2i_process_new_cqes._entry_ptr.58, ptr @bnx2i_process_ofld_cmpl._entry, ptr @bnx2i_process_ofld_cmpl._entry.65, ptr @bnx2i_process_ofld_cmpl._entry.68, ptr @bnx2i_process_ofld_cmpl._entry.71, ptr @bnx2i_process_ofld_cmpl._entry.74, ptr @bnx2i_process_ofld_cmpl._entry_ptr, ptr @bnx2i_process_ofld_cmpl._entry_ptr.67, ptr @bnx2i_process_ofld_cmpl._entry_ptr.70, ptr @bnx2i_process_ofld_cmpl._entry_ptr.73, ptr @bnx2i_process_ofld_cmpl._entry_ptr.76, ptr @bnx2i_process_scsi_cmd_resp._entry, ptr @bnx2i_process_scsi_cmd_resp._entry.35, ptr @bnx2i_process_scsi_cmd_resp._entry_ptr, ptr @bnx2i_process_scsi_cmd_resp._entry_ptr.37, ptr @bnx2i_process_tcp_error._entry, ptr @bnx2i_process_tcp_error._entry.152, ptr @bnx2i_process_tcp_error._entry_ptr, ptr @bnx2i_process_tcp_error._entry_ptr.154, ptr @bnx2i_process_update_conn_cmpl._entry, ptr @bnx2i_process_update_conn_cmpl._entry.79, ptr @bnx2i_process_update_conn_cmpl._entry.82, ptr @bnx2i_process_update_conn_cmpl._entry_ptr, ptr @bnx2i_process_update_conn_cmpl._entry_ptr.81, ptr @bnx2i_process_update_conn_cmpl._entry_ptr.84, ptr @bnx2i_send_iscsi_nopout._entry, ptr @bnx2i_send_iscsi_nopout._entry_ptr, ptr @bnx2i_send_nl_mesg._entry, ptr @bnx2i_send_nl_mesg._entry_ptr, ptr @bnx2i_update_iscsi_conn._entry, ptr @bnx2i_update_iscsi_conn._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @bnx2i_cnic_cb, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.156], section "llvm.metadata"
@0 = internal global [147 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_send_iscsi_nopout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_update_iscsi_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ep_ofld_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ep_ofld_timer._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ep_ofld_timer._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_qp_resc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_qp_resc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_qp_resc._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_qp_resc._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_qp_resc._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_qp_resc._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_scsi_cmd_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_scsi_cmd_resp._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_cnic_cb to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_indicate_kcqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_indicate_kcqe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_fastpath_notification._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_fastpath_notification._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_new_cqes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_new_cqes._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_new_cqes._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_new_cqes._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_async_mesg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_cmd_cleanup_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_ofld_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_ofld_cmpl._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_ofld_cmpl._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_ofld_cmpl._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_ofld_cmpl._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_update_conn_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_update_conn_cmpl._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_update_conn_cmpl._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_iscsi_license_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_iscsi_license_error._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_conn_destroy_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_conn_destroy_cmpl._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_conn_destroy_cmpl._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_iscsi_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_iscsi_error._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_iscsi_error._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_iscsi_error._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_iscsi_error._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_tcp_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_process_tcp_error._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_send_nl_mesg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_arm_cq_event_coalescing(ptr noundef %ep, i8 noundef zeroext %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hba = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba, align 4
  %cnic_dev_type = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cnic_dev_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cnic_dev_type, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cq_pgtbl_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 26
  %5 = ptrtoint ptr %cq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cq_pgtbl_virt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %action)
  %cond = icmp eq i8 %action, 2
  br i1 %cond, label %if.end.if.then19_crit_edge, label %if.then2

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then2:                                         ; preds = %if.end
  %sqn = getelementptr inbounds %struct.bnx2i_5771x_cq_db, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %sqn to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sqn, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %if.then2.cleanup_crit_edge [
    i16 0, label %if.then2.if.end12_crit_edge
    i16 -1, label %if.then2.if.end12_crit_edge86
  ]

if.then2.if.end12_crit_edge86:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.then2.if.end12_crit_edge, %if.then2.if.end12_crit_edge86
  %action.off = add i8 %action, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %action.off)
  %switch = icmp ult i8 %action.off, 2
  br i1 %switch, label %if.end12.if.then19_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.if.then19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %if.end12.if.then19_crit_edge, %if.end.if.then19_crit_edge
  %num_active_cmds20 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_cmds20, i32 noundef 4) #9
  %10 = ptrtoint ptr %num_active_cmds20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %num_active_cmds20, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @event_coal_min to i32))
  %12 = load i32, ptr @event_coal_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp22.not = icmp ugt i32 %11, %12
  br i1 %cmp22.not, label %if.end33, label %if.then19.if.end33.thread_crit_edge

if.then19.if.end33.thread_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.thread

if.end33:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %ec_shift = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 9
  %13 = ptrtoint ptr %ec_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ec_shift, align 4
  %shr = lshr i32 %11, %14
  %conv26 = and i32 %shr, 65535
  %sub = sub i32 %11, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26, i32 %sub)
  %cmp27 = icmp ugt i32 %conv26, %sub
  %spec.select.v = select i1 %cmp27, i32 %sub, i32 %shr
  %spec.select = trunc i32 %spec.select.v to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select)
  %tobool34.not = icmp eq i16 %spec.select, 0
  %spec.select85 = select i1 %tobool34.not, i16 1, i16 %spec.select
  br label %if.end33.thread

if.end33.thread:                                  ; preds = %if.end33, %if.then19.if.end33.thread_crit_edge
  %15 = phi i16 [ 1, %if.then19.if.end33.thread_crit_edge ], [ %spec.select85, %if.end33 ]
  %cqe_exp_seq_sn = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 25
  %16 = ptrtoint ptr %cqe_exp_seq_sn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cqe_exp_seq_sn, align 4
  %18 = trunc i32 %17 to i16
  %19 = add i16 %15, -1
  %conv40 = add i16 %19, %18
  %conv41 = zext i16 %conv40 to i32
  %cqe_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 24
  %20 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cqe_size, align 4
  %mul = shl i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv41)
  %cmp43 = icmp ult i32 %mul, %conv41
  %22 = trunc i32 %mul to i16
  %conv51 = select i1 %cmp43, i16 %22, i16 0
  %cq_index.0 = sub i16 %conv40, %conv51
  call void @__sanitizer_cov_trace_cmp2(i16 %conv40, i16 %conv51)
  %tobool53.not = icmp eq i16 %conv40, %conv51
  %spec.store.select63 = select i1 %tobool53.not, i16 1, i16 %cq_index.0
  %sqn56 = getelementptr inbounds %struct.bnx2i_5771x_cq_db, ptr %6, i32 0, i32 2
  %23 = ptrtoint ptr %sqn56 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %spec.store.select63, ptr %sqn56, align 4
  %phi.cast = zext i16 %15 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end33.thread, %if.end12.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ %phi.cast, %if.end33.thread ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bnx2i_get_rq_buf(ptr nocapture noundef readonly %bnx2i_conn, ptr nocapture noundef writeonly %ptr, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %rqe_left = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10, i32 38
  %2 = ptrtoint ptr %rqe_left to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rqe_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.end

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end:                                           ; preds = %entry
  %dec = add i32 %3, -1
  %4 = ptrtoint ptr %rqe_left to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %rqe_left, align 4
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep, align 8
  %rq_cons_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %6, i32 0, i32 10, i32 33
  %7 = ptrtoint ptr %rq_cons_qe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rq_cons_qe, align 4
  %9 = call ptr @memcpy(ptr %ptr, ptr %8, i32 %len)
  %10 = load ptr, ptr %ep, align 8
  %rq_cons_qe8 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %10, i32 0, i32 10, i32 33
  %11 = ptrtoint ptr %rq_cons_qe8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq_cons_qe8, align 4
  %rq_last_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %10, i32 0, i32 10, i32 35
  %13 = ptrtoint ptr %rq_last_qe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rq_last_qe, align 4
  %cmp = icmp eq ptr %12, %14
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rq_first_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %10, i32 0, i32 10, i32 34
  %15 = ptrtoint ptr %rq_first_qe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq_first_qe, align 4
  %17 = ptrtoint ptr %rq_cons_qe8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %rq_cons_qe8, align 4
  %18 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep, align 8
  %rq_cons_idx = getelementptr inbounds %struct.bnx2i_endpoint, ptr %19, i32 0, i32 10, i32 37
  %20 = ptrtoint ptr %rq_cons_idx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %rq_cons_idx, align 2
  br label %if.end25

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr %struct.rqe, ptr %12, i32 1
  %21 = ptrtoint ptr %rq_cons_qe8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %incdec.ptr, ptr %rq_cons_qe8, align 4
  %22 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep, align 8
  %rq_cons_idx24 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %23, i32 0, i32 10, i32 37
  %24 = ptrtoint ptr %rq_cons_idx24 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rq_cons_idx24, align 2
  %inc = add i16 %25, 1
  store i16 %inc, ptr %rq_cons_idx24, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then11, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_put_rq_buf(ptr nocapture noundef readonly %bnx2i_conn, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %qp = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10
  %rq_prod_idx = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10, i32 36
  %2 = ptrtoint ptr %rq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rq_prod_idx, align 4
  %4 = and i16 %3, -32768
  %rqe_left = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10, i32 38
  %5 = ptrtoint ptr %rqe_left to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rqe_left, align 4
  %add = add i32 %6, %count
  store i32 %add, ptr %rqe_left, align 4
  %7 = and i16 %3, 32767
  %8 = trunc i32 %count to i16
  %conv14 = add i16 %7, %8
  store i16 %conv14, ptr %rq_prod_idx, align 4
  %conv17 = zext i16 %conv14 to i32
  %hba = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 1
  %9 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hba, align 4
  %max_rqes = getelementptr inbounds %struct.bnx2i_hba, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %max_rqes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_rqes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv17)
  %cmp = icmp ult i32 %12, %conv17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rem = urem i32 %conv17, %12
  %conv24 = trunc i32 %rem to i16
  %13 = ptrtoint ptr %rq_prod_idx to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv24, ptr %rq_prod_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then25, label %if.then.if.end36_crit_edge

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv29 = or i16 %conv24, -32768
  br label %if.end36.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or3464 = or i16 %conv14, %4
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.else, %if.then25
  %conv29.sink = phi i16 [ %conv29, %if.then25 ], [ %or3464, %if.else ]
  %14 = ptrtoint ptr %rq_prod_idx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv29.sink, ptr %rq_prod_idx, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.then.if.end36_crit_edge
  %hba37 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %hba37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hba37, align 4
  %cnic_dev_type = getelementptr inbounds %struct.bnx2i_hba, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %cnic_dev_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %cnic_dev_type, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool38.not = icmp eq i32 %19, 0
  br i1 %tobool38.not, label %do.body, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %rq_pgtbl_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10, i32 39
  %20 = ptrtoint ptr %rq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rq_pgtbl_virt, align 4
  %22 = ptrtoint ptr %rq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rq_prod_idx, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %21, align 2
  br label %if.end47

do.body:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %rq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rq_prod_idx, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %28 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qp, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %27) #9, !srcloc !291
  br label %if.end47

if.end47:                                         ; preds = %do.body, %if.then39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_send_iscsi_login(ptr nocapture noundef readonly %bnx2i_conn, ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 8
  %sq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %3, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %sq_prod_qe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sq_prod_qe, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %5, align 4
  %flags = getelementptr inbounds %struct.iscsi_login_req, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %op_attr = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %op_attr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %op_attr, align 1
  %max_version = getelementptr inbounds %struct.iscsi_login_req, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %max_version to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_version, align 2
  %version_max = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %version_max to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %version_max, align 2
  %min_version = getelementptr inbounds %struct.iscsi_login_req, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %min_version to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %min_version, align 1
  %version_min = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %version_min to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %version_min, align 1
  %dlength = getelementptr inbounds %struct.iscsi_login_req, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dlength, align 1
  %conv = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx2 = getelementptr %struct.iscsi_login_req, ptr %1, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %21 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %shl
  %arrayidx6 = getelementptr %struct.iscsi_login_req, ptr %1, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %23 to i32
  %or8 = or i32 %or, %conv7
  %data_length = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or8, ptr %data_length, align 4
  %isid = getelementptr inbounds %struct.iscsi_login_req, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %isid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %isid, align 4
  %isid_lo = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 5
  %27 = ptrtoint ptr %isid_lo to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %isid_lo, align 4
  %add.ptr = getelementptr %struct.iscsi_login_req, ptr %1, i32 0, i32 6, i32 4
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr, align 2
  %isid_hi = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 6
  %30 = ptrtoint ptr %isid_hi to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %isid_hi, align 4
  %tsih = getelementptr inbounds %struct.iscsi_login_req, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tsih, align 2
  %tsih11 = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 7
  %33 = ptrtoint ptr %tsih11 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %tsih11, align 2
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %34 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %itt, align 4
  %36 = trunc i32 %35 to i16
  %conv13 = or i16 %36, -32768
  %itt14 = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 9
  %37 = ptrtoint ptr %itt14 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv13, ptr %itt14, align 2
  %cid = getelementptr inbounds %struct.iscsi_login_req, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cid, align 4
  %cid15 = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 10
  %40 = ptrtoint ptr %cid15 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %cid15, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_login_req, ptr %1, i32 0, i32 11
  %41 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 12
  %43 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %cmd_sn, align 4
  %exp_statsn = getelementptr inbounds %struct.iscsi_login_req, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %exp_statsn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %exp_statsn, align 4
  %exp_stat_sn = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 13
  %46 = ptrtoint ptr %exp_stat_sn to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %exp_stat_sn, align 4
  %flags16 = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 20
  %47 = ptrtoint ptr %flags16 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %flags16, align 1
  %resp_bd_dma = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 12
  %48 = ptrtoint ptr %resp_bd_dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %resp_bd_dma, align 4
  %resp_bd_list_addr_lo = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 15
  %50 = ptrtoint ptr %resp_bd_list_addr_lo to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %resp_bd_list_addr_lo, align 4
  %resp_bd_list_addr_hi = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 16
  %51 = ptrtoint ptr %resp_bd_list_addr_hi to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %resp_bd_list_addr_hi, align 4
  %resp_buf_size = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 7
  %52 = ptrtoint ptr %resp_buf_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %resp_buf_size, align 4
  %or23 = or i32 %53, 16777216
  %resp_buffer = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 17
  %54 = ptrtoint ptr %resp_buffer to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or23, ptr %resp_buffer, align 4
  %req_bd_dma = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 10
  %55 = ptrtoint ptr %req_bd_dma to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %req_bd_dma, align 4
  %bd_list_addr_lo = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 21
  %57 = ptrtoint ptr %bd_list_addr_lo to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %bd_list_addr_lo, align 4
  %bd_list_addr_hi = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 22
  %58 = ptrtoint ptr %bd_list_addr_hi to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %bd_list_addr_hi, align 4
  %num_bds = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 26
  %59 = ptrtoint ptr %num_bds to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %num_bds, align 1
  %cq_index = getelementptr inbounds %struct.bnx2i_login_request, ptr %5, i32 0, i32 23
  %60 = ptrtoint ptr %cq_index to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %cq_index, align 4
  tail call fastcc void @bnx2i_ring_dbell_update_sq_params(ptr noundef %bnx2i_conn)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2i_ring_dbell_update_sq_params(ptr nocapture noundef readonly %bnx2i_conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %sq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %sq_prod_qe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sq_prod_qe, align 4
  %sq_last_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10, i32 7
  %4 = ptrtoint ptr %sq_last_qe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sq_last_qe, align 4
  %cmp3 = icmp eq ptr %3, %5
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sq_first_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10, i32 6
  %6 = ptrtoint ptr %sq_first_qe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sq_first_qe, align 4
  br label %if.end40

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr %struct.sqe, ptr %3, i32 1
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then4
  %storemerge = phi ptr [ %incdec.ptr, %if.else ], [ %7, %if.then4 ]
  %8 = ptrtoint ptr %sq_prod_qe to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %storemerge, ptr %sq_prod_qe, align 4
  %9 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep, align 8
  %sq_prod_idx = getelementptr inbounds %struct.bnx2i_endpoint, ptr %10, i32 0, i32 10, i32 8
  %11 = ptrtoint ptr %sq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sq_prod_idx, align 4
  %add43 = add i16 %12, 1
  store i16 %add43, ptr %sq_prod_idx, align 4
  %13 = load ptr, ptr %ep, align 8
  %sq_prod_idx47 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %13, i32 0, i32 10, i32 8
  %14 = ptrtoint ptr %sq_prod_idx47 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sq_prod_idx47, align 4
  %num_active_cmds.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %13, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_active_cmds.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %num_active_cmds.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_active_cmds.i, ptr %num_active_cmds.i, i32 1, ptr elementtype(i32) %num_active_cmds.i) #9, !srcloc !292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %hba.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %hba.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hba.i, align 4
  %cnic_dev_type.i = getelementptr inbounds %struct.bnx2i_hba, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body3.i, label %if.then.i

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %sq_pgtbl_virt.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %13, i32 0, i32 10, i32 11
  %22 = ptrtoint ptr %sq_pgtbl_virt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sq_pgtbl_virt.i, align 4
  %24 = ptrtoint ptr %sq_prod_idx47 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sq_prod_idx47, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %23, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !294
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep, align 8
  %qp.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qp.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 805306368) #9, !srcloc !295
  br label %bnx2i_ring_sq_dbell.exit

do.body3.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  tail call void @arm_heavy_mb() #9
  %31 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  %qp6.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %13, i32 0, i32 10
  %32 = ptrtoint ptr %qp6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qp6.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %31) #9, !srcloc !291
  br label %bnx2i_ring_sq_dbell.exit

bnx2i_ring_sq_dbell.exit:                         ; preds = %do.body3.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_send_iscsi_tmf(ptr nocapture noundef readonly %bnx2i_conn, ptr nocapture noundef readonly %mtask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 8
  %4 = ptrtoint ptr %mtask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtask, align 4
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %6 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep, align 8
  %sq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %7, i32 0, i32 10, i32 4
  %8 = ptrtoint ptr %sq_prod_qe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sq_prod_qe, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %9, align 4
  %flags = getelementptr inbounds %struct.iscsi_tm, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %op_attr = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %op_attr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %op_attr, align 1
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %mtask, i32 0, i32 6
  %16 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %itt, align 4
  %18 = trunc i32 %17 to i16
  %conv = or i16 %18, -32768
  %itt1 = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 6
  %19 = ptrtoint ptr %itt1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %itt1, align 2
  %reserved2 = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 9
  %20 = ptrtoint ptr %reserved2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %reserved2, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_tm, ptr %5, i32 0, i32 8
  %21 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 8
  %23 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cmd_sn, align 4
  %24 = load i8, ptr %flags, align 1
  %25 = and i8 %24, 127
  %and = zext i8 %25 to i32
  %26 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 8, label %entry.sw.bb_crit_edge55
  ]

entry.sw.bb_crit_edge55:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge55
  %rtt = getelementptr inbounds %struct.iscsi_tm, ptr %5, i32 0, i32 7
  %27 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rtt, align 4
  %call = tail call ptr @iscsi_itt_to_task(ptr noundef %3, i32 noundef %28) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %sc = getelementptr inbounds %struct.iscsi_task, ptr %call, i32 0, i32 11
  %29 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sc, align 4
  %tobool4.not = icmp eq ptr %30, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp = icmp eq i32 %32, 1
  %. = select i1 %cmp, i32 16384, i32 0
  %33 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rtt, align 4
  %and10 = and i32 %34, 8191
  %or11 = or i32 %., %and10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %or11, %if.end ], [ -1, %entry.sw.epilog_crit_edge ]
  %ref_itt12 = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 7
  %35 = ptrtoint ptr %ref_itt12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %ref_itt12, align 4
  %lun = getelementptr inbounds %struct.iscsi_tm, ptr %5, i32 0, i32 5
  %36 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %36)
  %scsi_lun.sroa.0.0.copyload = load i32, ptr %lun, align 4
  %scsi_lun.sroa.5.0.lun.sroa_idx = getelementptr inbounds %struct.iscsi_tm, ptr %5, i32 0, i32 5, i32 0, i32 4
  %37 = ptrtoint ptr %scsi_lun.sroa.5.0.lun.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %scsi_lun.sroa.5.0.copyload = load i32, ptr %scsi_lun.sroa.5.0.lun.sroa_idx, align 4
  %lun13 = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 4
  %38 = ptrtoint ptr %lun13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %scsi_lun.sroa.0.0.copyload, ptr %lun13, align 4
  %arrayidx17 = getelementptr %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %scsi_lun.sroa.5.0.copyload, ptr %arrayidx17, align 4
  %refcmdsn = getelementptr inbounds %struct.iscsi_tm, ptr %5, i32 0, i32 10
  %40 = ptrtoint ptr %refcmdsn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %refcmdsn, align 4
  %ref_cmd_sn = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 10
  %42 = ptrtoint ptr %ref_cmd_sn to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ref_cmd_sn, align 4
  %hba = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 1
  %43 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hba, align 4
  %mp_bd_dma = getelementptr inbounds %struct.bnx2i_hba, ptr %44, i32 0, i32 26
  %45 = ptrtoint ptr %mp_bd_dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mp_bd_dma, align 8
  %bd_list_addr_lo = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 13
  %47 = ptrtoint ptr %bd_list_addr_lo to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %bd_list_addr_lo, align 4
  %bd_list_addr_hi = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 14
  %48 = ptrtoint ptr %bd_list_addr_hi to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %bd_list_addr_hi, align 4
  %num_bds = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 18
  %49 = ptrtoint ptr %num_bds to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %num_bds, align 1
  %cq_index = getelementptr inbounds %struct.bnx2i_tmf_request, ptr %9, i32 0, i32 15
  %50 = ptrtoint ptr %cq_index to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %cq_index, align 4
  tail call fastcc void @bnx2i_ring_dbell_update_sq_params(ptr noundef %bnx2i_conn)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_itt_to_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_send_iscsi_text(ptr nocapture noundef readonly %bnx2i_conn, ptr nocapture noundef readonly %mtask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mtask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtask, align 4
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 8
  %sq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %3, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %sq_prod_qe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sq_prod_qe, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 64)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %5, align 4
  %flags = getelementptr inbounds %struct.iscsi_text, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 1
  %op_attr = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %op_attr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %op_attr, align 1
  %dlength = getelementptr inbounds %struct.iscsi_text, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dlength, align 1
  %conv = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx2 = getelementptr %struct.iscsi_text, ptr %1, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %16 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %shl
  %arrayidx6 = getelementptr %struct.iscsi_text, ptr %1, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %18 to i32
  %or8 = or i32 %or, %conv7
  %data_length = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or8, ptr %data_length, align 4
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %mtask, i32 0, i32 6
  %20 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %itt, align 4
  %22 = trunc i32 %21 to i16
  %conv10 = or i16 %22, -32768
  %itt11 = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 6
  %23 = ptrtoint ptr %itt11 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv10, ptr %itt11, align 2
  %ttt = getelementptr inbounds %struct.iscsi_text, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %ttt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ttt, align 4
  %ttt12 = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %ttt12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ttt12, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_text, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 8
  %29 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cmd_sn, align 4
  %resp_bd_dma = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 12
  %30 = ptrtoint ptr %resp_bd_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %resp_bd_dma, align 4
  %resp_bd_list_addr_lo = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 10
  %32 = ptrtoint ptr %resp_bd_list_addr_lo to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %resp_bd_list_addr_lo, align 4
  %resp_bd_list_addr_hi = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 11
  %33 = ptrtoint ptr %resp_bd_list_addr_hi to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %resp_bd_list_addr_hi, align 4
  %resp_buf_size = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 7
  %34 = ptrtoint ptr %resp_buf_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resp_buf_size, align 4
  %or19 = or i32 %35, 16777216
  %resp_buffer = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 12
  %36 = ptrtoint ptr %resp_buffer to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or19, ptr %resp_buffer, align 4
  %req_bd_dma = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 10
  %37 = ptrtoint ptr %req_bd_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %req_bd_dma, align 4
  %bd_list_addr_lo = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 14
  %39 = ptrtoint ptr %bd_list_addr_lo to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %bd_list_addr_lo, align 4
  %bd_list_addr_hi = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 15
  %40 = ptrtoint ptr %bd_list_addr_hi to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %bd_list_addr_hi, align 4
  %num_bds = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 19
  %41 = ptrtoint ptr %num_bds to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %num_bds, align 1
  %cq_index = getelementptr inbounds %struct.bnx2i_text_request, ptr %5, i32 0, i32 16
  %42 = ptrtoint ptr %cq_index to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %cq_index, align 4
  tail call fastcc void @bnx2i_ring_dbell_update_sq_params(ptr noundef %bnx2i_conn)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_send_iscsi_scsicmd(ptr nocapture noundef readonly %bnx2i_conn, ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %sq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %sq_prod_qe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sq_prod_qe, align 4
  %req = getelementptr inbounds %struct.bnx2i_cmd, ptr %cmd, i32 0, i32 6
  %4 = call ptr @memcpy(ptr %3, ptr %req, i32 64)
  %cq_index = getelementptr inbounds %struct.bnx2i_cmd_request, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %cq_index to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cq_index, align 4
  tail call fastcc void @bnx2i_ring_dbell_update_sq_params(ptr noundef %bnx2i_conn)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_send_iscsi_nopout(ptr nocapture noundef readonly %bnx2i_conn, ptr nocapture noundef readonly %task, ptr nocapture noundef readnone %datap, i32 noundef %data_len, i32 noundef %unsol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep1 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %0 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep1, align 8
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 4
  %sq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %sq_prod_qe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sq_prod_qe, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 64)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %5, align 4
  %op_attr = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %op_attr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %op_attr, align 1
  %lun = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 4
  %lun2 = getelementptr inbounds %struct.iscsi_nopout, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %lun2 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %lun2, align 4
  %13 = ptrtoint ptr %lun to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %lun, align 4
  %hba = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hba, align 4
  %cnic_dev_type = getelementptr inbounds %struct.bnx2i_hba, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %cnic_dev_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %cnic_dev_type, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lun, align 4
  %arrayidx5 = getelementptr %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5, align 4
  store i32 %22, ptr %lun, align 4
  store i32 %20, ptr %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %23 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %itt, align 4
  %25 = trunc i32 %24 to i16
  %conv11 = or i16 %25, -32768
  %itt12 = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 6
  %26 = ptrtoint ptr %itt12 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv11, ptr %itt12, align 2
  %ttt = getelementptr inbounds %struct.iscsi_nopout, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %ttt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ttt, align 4
  %ttt13 = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 7
  %29 = ptrtoint ptr %ttt13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ttt13, align 4
  %flags = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 15
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unsol)
  %tobool14.not = icmp eq i32 %unsol, 0
  br i1 %tobool14.not, label %if.end.if.end22.sink.split_crit_edge, label %if.else

if.end.if.end22.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.sink.split

if.else:                                          ; preds = %if.end
  %itt17 = getelementptr inbounds %struct.iscsi_nopout, ptr %3, i32 0, i32 6
  %31 = ptrtoint ptr %itt17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %itt17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp = icmp eq i32 %32, -1
  br i1 %cmp, label %if.else.if.end22.sink.split_crit_edge, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else.if.end22.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.else.if.end22.sink.split_crit_edge, %if.end.if.end22.sink.split_crit_edge
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %flags, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.else.if.end22_crit_edge
  %cmdsn = getelementptr inbounds %struct.iscsi_nopout, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 8
  %36 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cmd_sn, align 4
  %data_length = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 3
  %37 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %data_len, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %tobool23.not = icmp eq i32 %data_len, 0
  br i1 %tobool23.not, label %if.else29, label %do.end27

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.end35

if.else29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %hba30 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 1
  %38 = ptrtoint ptr %hba30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hba30, align 4
  %mp_bd_dma = getelementptr inbounds %struct.bnx2i_hba, ptr %39, i32 0, i32 26
  %40 = ptrtoint ptr %mp_bd_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mp_bd_dma, align 8
  %bd_list_addr_lo = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 16
  %42 = ptrtoint ptr %bd_list_addr_lo to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %bd_list_addr_lo, align 4
  %bd_list_addr_hi = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 17
  %43 = ptrtoint ptr %bd_list_addr_hi to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %bd_list_addr_hi, align 4
  %num_bds = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 21
  %44 = ptrtoint ptr %num_bds to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %num_bds, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.else29, %do.end27
  %cq_index = getelementptr inbounds %struct.bnx2i_nop_out_request, ptr %5, i32 0, i32 18
  %45 = ptrtoint ptr %cq_index to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %cq_index, align 4
  tail call fastcc void @bnx2i_ring_dbell_update_sq_params(ptr noundef %bnx2i_conn)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_send_iscsi_logout(ptr nocapture noundef readonly %bnx2i_conn, ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 8
  %sq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %3, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %sq_prod_qe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sq_prod_qe, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 64)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %5, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_logout, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.bnx2i_logout_request, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cmd_sn, align 4
  %flags = getelementptr inbounds %struct.iscsi_logout, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %15 = or i8 %14, -128
  %op_attr = getelementptr inbounds %struct.bnx2i_logout_request, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %op_attr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %op_attr, align 1
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %17 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %itt, align 4
  %19 = trunc i32 %18 to i16
  %conv5 = or i16 %19, -32768
  %itt6 = getelementptr inbounds %struct.bnx2i_logout_request, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %itt6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv5, ptr %itt6, align 2
  %data_length = getelementptr inbounds %struct.bnx2i_logout_request, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %data_length, align 4
  %cid = getelementptr inbounds %struct.bnx2i_logout_request, ptr %5, i32 0, i32 7
  %22 = ptrtoint ptr %cid to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %cid, align 4
  %hba = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 1
  %23 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hba, align 4
  %mp_bd_dma = getelementptr inbounds %struct.bnx2i_hba, ptr %24, i32 0, i32 26
  %25 = ptrtoint ptr %mp_bd_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mp_bd_dma, align 8
  %bd_list_addr_lo = getelementptr inbounds %struct.bnx2i_logout_request, ptr %5, i32 0, i32 12
  %27 = ptrtoint ptr %bd_list_addr_lo to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %bd_list_addr_lo, align 4
  %bd_list_addr_hi = getelementptr inbounds %struct.bnx2i_logout_request, ptr %5, i32 0, i32 13
  %28 = ptrtoint ptr %bd_list_addr_hi to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bd_list_addr_hi, align 4
  %num_bds = getelementptr inbounds %struct.bnx2i_logout_request, ptr %5, i32 0, i32 17
  %29 = ptrtoint ptr %num_bds to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %num_bds, align 1
  %cq_index = getelementptr inbounds %struct.bnx2i_logout_request, ptr %5, i32 0, i32 14
  %30 = ptrtoint ptr %cq_index to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %cq_index, align 4
  %31 = load ptr, ptr %ep, align 8
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16384, ptr %state, align 4
  tail call fastcc void @bnx2i_ring_dbell_update_sq_params(ptr noundef %bnx2i_conn)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_update_iscsi_conn(ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  %kwqe_arr = alloca [2 x ptr], align 4
  %conn_update_kwqe = alloca %struct.iscsi_kwqe_conn_update, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %hba1 = getelementptr inbounds %struct.bnx2i_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kwqe_arr) #9
  %4 = getelementptr inbounds [2 x ptr], ptr %kwqe_arr, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !297
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %conn_update_kwqe) #9
  %6 = getelementptr inbounds %struct.iscsi_kwqe_header, ptr %conn_update_kwqe, i32 0, i32 1
  %7 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, ptr %conn_update_kwqe, i32 0, i32 2
  %8 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, ptr %conn_update_kwqe, i32 0, i32 3
  %9 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, ptr %conn_update_kwqe, i32 0, i32 5
  %10 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, ptr %conn_update_kwqe, i32 0, i32 6
  %11 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, ptr %conn_update_kwqe, i32 0, i32 7
  %12 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, ptr %conn_update_kwqe, i32 0, i32 8
  %13 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, ptr %conn_update_kwqe, i32 0, i32 9
  %14 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, ptr %conn_update_kwqe, i32 0, i32 10
  %15 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, ptr %conn_update_kwqe, i32 0, i32 11
  %16 = call ptr @memset(ptr %conn_update_kwqe, i32 255, i32 32)
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %6, align 1
  %18 = ptrtoint ptr %conn_update_kwqe to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 96, ptr %conn_update_kwqe, align 4
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep, align 8
  %hba3 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %hba3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hba3, align 4
  %cnic_dev_type = getelementptr inbounds %struct.bnx2i_hba, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %cnic_dev_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %cnic_dev_type, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  %ids6 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %20, i32 0, i32 11
  %26 = ptrtoint ptr %ids6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ids6, align 4
  %shr = lshr i32 %27, 7
  %storemerge = select i1 %tobool.not, i32 %shr, i32 %27
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge, ptr %10, align 4
  %hdrdgst_en = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 25
  %29 = ptrtoint ptr %hdrdgst_en to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hdrdgst_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool9.not = icmp ne i32 %30, 0
  %spec.store.select = zext i1 %tobool9.not to i8
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.store.select, ptr %9, align 1
  %datadgst_en = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 26
  %32 = ptrtoint ptr %datadgst_en to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %datadgst_en, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool14.not = icmp eq i32 %33, 0
  br i1 %tobool14.not, label %entry.if.end20_crit_edge, label %if.then15

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %34 = or i8 %spec.store.select, 2
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %9, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %entry.if.end20_crit_edge
  %session = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 2
  %36 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %session, align 8
  %initial_r2t_en = getelementptr inbounds %struct.iscsi_session, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %initial_r2t_en to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %initial_r2t_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool21.not = icmp eq i32 %39, 0
  br i1 %tobool21.not, label %if.end20.if.end27_crit_edge, label %if.then22

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %9, align 1
  %42 = or i8 %41, 4
  store i8 %42, ptr %9, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end20.if.end27_crit_edge
  %imm_data_en = getelementptr inbounds %struct.iscsi_session, ptr %37, i32 0, i32 16
  %43 = ptrtoint ptr %imm_data_en to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %imm_data_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool29.not = icmp eq i32 %44, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.then30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %9, align 1
  %47 = or i8 %46, 8
  store i8 %47, ptr %9, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27.if.end35_crit_edge
  %max_xmit_dlength = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 24
  %48 = ptrtoint ptr %max_xmit_dlength to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_xmit_dlength, align 8
  %50 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %11, align 4
  %max_recv_dlength = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 23
  %51 = ptrtoint ptr %max_recv_dlength to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_recv_dlength, align 4
  %53 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %12, align 4
  %first_burst = getelementptr inbounds %struct.iscsi_session, ptr %37, i32 0, i32 17
  %54 = ptrtoint ptr %first_burst to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %first_burst, align 4
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %13, align 4
  %max_burst = getelementptr inbounds %struct.iscsi_session, ptr %37, i32 0, i32 18
  %57 = ptrtoint ptr %max_burst to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_burst, align 4
  %59 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %14, align 4
  %exp_statsn = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 10
  %60 = ptrtoint ptr %exp_statsn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %exp_statsn, align 4
  %62 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %15, align 4
  %max_r2t = getelementptr inbounds %struct.iscsi_session, ptr %37, i32 0, i32 15
  %63 = ptrtoint ptr %max_r2t to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %max_r2t, align 4
  %conv39 = trunc i16 %64 to i8
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv39, ptr %8, align 1
  %erl = getelementptr inbounds %struct.iscsi_session, ptr %37, i32 0, i32 23
  %66 = ptrtoint ptr %erl to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %erl, align 4
  %conv41 = trunc i32 %67 to i8
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv41, ptr %7, align 4
  %69 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %conn, align 8
  %dev = getelementptr inbounds %struct.iscsi_cls_conn, ptr %70, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %58, i32 noundef %55, i32 noundef %52, i32 noundef %49) #12
  %71 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %conn_update_kwqe, ptr %kwqe_arr, align 4
  %cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %3, i32 0, i32 1
  %72 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cnic, align 8
  %tobool46.not = icmp eq ptr %73, null
  br i1 %tobool46.not, label %if.end35.if.end54_crit_edge, label %land.lhs.true

if.end35.if.end54_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end35
  %submit_kwqes = getelementptr inbounds %struct.cnic_dev, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %submit_kwqes to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %submit_kwqes, align 4
  %tobool48.not = icmp eq ptr %75, null
  br i1 %tobool48.not, label %land.lhs.true.if.end54_crit_edge, label %if.then49

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = call i32 %75(ptr noundef nonnull %73, ptr noundef nonnull %kwqe_arr, i32 noundef 1) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %land.lhs.true.if.end54_crit_edge, %if.end35.if.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %conn_update_kwqe) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kwqe_arr) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_ep_ofld_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %t, i32 -184
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %1, label %entry.if.end23_crit_edge [
    i32 4, label %entry.if.end23.sink.split_crit_edge
    i32 256, label %do.end8
    i32 1024, label %do.end18
  ]

entry.if.end23.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.sink.split

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.sink.split

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %do.end18, %do.end8, %entry.if.end23.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.10, %do.end8 ], [ @.str.13, %do.end18 ], [ @.str.7, %entry.if.end23.sink.split_crit_edge ]
  %.sink = phi i32 [ 536870912, %do.end8 ], [ 67108864, %do.end18 ], [ 134217728, %entry.if.end23.sink.split_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink) #12
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %state, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %entry.if.end23_crit_edge
  %ofld_wait = getelementptr i8, ptr %t, i32 48
  tail call void @__wake_up(ptr noundef %ofld_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_send_cmd_cleanup_req(ptr nocapture noundef readnone %hba, ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr inbounds %struct.bnx2i_cmd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 8
  %sq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %3, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %sq_prod_qe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sq_prod_qe, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 64)
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 7, ptr %5, align 4
  %itt = getelementptr inbounds %struct.bnx2i_cmd, ptr %cmd, i32 0, i32 6, i32 7
  %8 = ptrtoint ptr %itt to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %itt, align 2
  %itt1 = getelementptr inbounds %struct.bnx2i_cleanup_request, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %itt1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %itt1, align 2
  %cq_index = getelementptr inbounds %struct.bnx2i_cleanup_request, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %cq_index to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %cq_index, align 4
  %12 = load ptr, ptr %conn, align 4
  tail call fastcc void @bnx2i_ring_dbell_update_sq_params(ptr noundef %12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_send_conn_destroy(ptr nocapture noundef readonly %hba, ptr nocapture noundef readonly %ep) local_unnamed_addr #0 align 64 {
entry:
  %kwqe_arr = alloca [2 x ptr], align 4
  %conn_cleanup = alloca %struct.iscsi_kwqe_conn_destroy, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kwqe_arr) #9
  %0 = getelementptr inbounds [2 x ptr], ptr %kwqe_arr, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !297
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %conn_cleanup) #9
  %2 = getelementptr inbounds %struct.iscsi_kwqe_header, ptr %conn_cleanup, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iscsi_kwqe_conn_destroy, ptr %conn_cleanup, i32 0, i32 1
  %4 = getelementptr inbounds %struct.iscsi_kwqe_conn_destroy, ptr %conn_cleanup, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %conn_cleanup, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 24)
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %2, align 1
  %8 = ptrtoint ptr %conn_cleanup to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 96, ptr %conn_cleanup, align 4
  %hba2 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 1
  %9 = ptrtoint ptr %hba2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hba2, align 4
  %cnic_dev_type = getelementptr inbounds %struct.bnx2i_hba, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %cnic_dev_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cnic_dev_type, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %ids3 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 11
  %14 = ptrtoint ptr %ids3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ids3, align 4
  %shr = lshr i32 %15, 7
  %storemerge = select i1 %tobool.not, i32 %shr, i32 %15
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %4, align 4
  %drv_iscsi_cid = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %drv_iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %drv_iscsi_cid, align 4
  %conv = trunc i32 %18 to i16
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %3, align 2
  %20 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %conn_cleanup, ptr %kwqe_arr, align 4
  %cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 1
  %21 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cnic, align 8
  %tobool7.not = icmp eq ptr %22, null
  br i1 %tobool7.not, label %entry.if.end15_crit_edge, label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %submit_kwqes = getelementptr inbounds %struct.cnic_dev, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %submit_kwqes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %submit_kwqes, align 4
  %tobool9.not = icmp eq ptr %24, null
  br i1 %tobool9.not, label %land.lhs.true.if.end15_crit_edge, label %if.then10

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = call i32 %24(ptr noundef nonnull %22, ptr noundef nonnull %kwqe_arr, i32 noundef 1) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %rc.0 = phi i32 [ %call14, %if.then10 ], [ -22, %land.lhs.true.if.end15_crit_edge ], [ -22, %entry.if.end15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %conn_cleanup) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kwqe_arr) #9
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_send_conn_ofld_req(ptr noundef %hba, ptr nocapture noundef readonly %ep) local_unnamed_addr #0 align 64 {
entry:
  %kwqe_arr.i6 = alloca [2 x ptr], align 4
  %ofld_req1.i7 = alloca %struct.iscsi_kwqe_conn_offload1, align 4
  %ofld_req2.i8 = alloca %struct.iscsi_kwqe_conn_offload2, align 4
  %kwqe_arr.i = alloca [5 x ptr], align 4
  %ofld_req1.i = alloca %struct.iscsi_kwqe_conn_offload1, align 4
  %ofld_req2.i = alloca %struct.iscsi_kwqe_conn_offload2, align 4
  %ofld_req3.i = alloca [1 x %struct.iscsi_kwqe_conn_offload3], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cnic_dev_type = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 7
  %0 = ptrtoint ptr %cnic_dev_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cnic_dev_type, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %kwqe_arr.i) #9
  %3 = getelementptr inbounds [5 x ptr], ptr %kwqe_arr.i, i32 0, i32 1
  %4 = getelementptr inbounds [5 x ptr], ptr %kwqe_arr.i, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %kwqe_arr.i, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ofld_req1.i) #9
  %7 = getelementptr inbounds %struct.iscsi_kwqe_header, ptr %ofld_req1.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, ptr %ofld_req1.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, ptr %ofld_req1.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, ptr %ofld_req1.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, ptr %ofld_req1.i, i32 0, i32 4
  %12 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, ptr %ofld_req1.i, i32 0, i32 5
  %13 = getelementptr inbounds i8, ptr %ofld_req1.i, i32 20
  %14 = call ptr @memset(ptr %13, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ofld_req2.i) #9
  %15 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i, i32 0, i32 3
  %17 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i, i32 0, i32 4
  %18 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i, i32 0, i32 4, i32 1
  %19 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i, i32 0, i32 5
  %20 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i, i32 0, i32 5, i32 1
  %21 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i, i32 0, i32 6
  %22 = ptrtoint ptr %ofld_req2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1610743807, ptr %ofld_req2.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ofld_req3.i) #9
  %23 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload3, ptr %ofld_req3.i, i32 0, i32 3
  %24 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload3, ptr %ofld_req3.i, i32 0, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %7, align 1
  %26 = ptrtoint ptr %ofld_req1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 96, ptr %ofld_req1.i, align 4
  %drv_iscsi_cid.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %drv_iscsi_cid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %drv_iscsi_cid.i, align 4
  %conv.i = trunc i32 %28 to i16
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %8, align 2
  %sq_pgtbl_phys.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 12
  %30 = ptrtoint ptr %sq_pgtbl_phys.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sq_pgtbl_phys.i, align 4
  %add.i = add i32 %31, 16
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i, ptr %9, align 4
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %10, align 4
  %cq_pgtbl_phys.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 27
  %34 = ptrtoint ptr %cq_pgtbl_phys.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cq_pgtbl_phys.i, align 4
  %add5.i = add i32 %35, 80
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add5.i, ptr %11, align 4
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %12, align 4
  %rq_pgtbl_phys.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 40
  %38 = ptrtoint ptr %rq_pgtbl_phys.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rq_pgtbl_phys.i, align 4
  %add14.i = add i32 %39, 64
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add14.i, ptr %15, align 4
  %41 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %16, align 4
  %sq_pgtbl_virt.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 11
  %42 = ptrtoint ptr %sq_pgtbl_virt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sq_pgtbl_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 16
  %incdec.ptr.i = getelementptr i8, ptr %43, i32 20
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 4
  %46 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %17, align 4
  %47 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr.i, align 4
  %49 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %18, align 4
  %cq_pgtbl_virt.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 26
  %50 = ptrtoint ptr %cq_pgtbl_virt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cq_pgtbl_virt.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %51, i32 80
  %incdec.ptr22.i = getelementptr i8, ptr %51, i32 84
  %52 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr21.i, align 4
  %54 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %19, align 4
  %55 = ptrtoint ptr %incdec.ptr22.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %incdec.ptr22.i, align 4
  %57 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %20, align 4
  %58 = ptrtoint ptr %kwqe_arr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %ofld_req1.i, ptr %kwqe_arr.i, align 4
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ofld_req2.i, ptr %3, align 4
  %60 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %21, align 4
  %61 = call ptr @memset(ptr %ofld_req3.i, i32 0, i32 32)
  %rq_pgtbl_virt.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 39
  %62 = ptrtoint ptr %rq_pgtbl_virt.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rq_pgtbl_virt.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %63, i32 64
  %incdec.ptr29.i = getelementptr i8, ptr %63, i32 68
  %64 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr28.i, align 4
  %66 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %23, align 4
  %67 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %incdec.ptr29.i, align 4
  %69 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %24, align 4
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %ofld_req3.i, ptr %4, align 4
  %cnic.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 1
  %71 = ptrtoint ptr %cnic.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cnic.i, align 8
  %tobool.not.i = icmp eq ptr %72, null
  br i1 %tobool.not.i, label %if.then.bnx2i_5771x_send_conn_ofld_req.exit_crit_edge, label %land.lhs.true.i

if.then.bnx2i_5771x_send_conn_ofld_req.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_5771x_send_conn_ofld_req.exit

land.lhs.true.i:                                  ; preds = %if.then
  %submit_kwqes.i = getelementptr inbounds %struct.cnic_dev, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %submit_kwqes.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %submit_kwqes.i, align 4
  %tobool41.not.i = icmp eq ptr %74, null
  br i1 %tobool41.not.i, label %land.lhs.true.i.bnx2i_5771x_send_conn_ofld_req.exit_crit_edge, label %if.then.i

land.lhs.true.i.bnx2i_5771x_send_conn_ofld_req.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_5771x_send_conn_ofld_req.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 %74(ptr noundef nonnull %72, ptr noundef nonnull %kwqe_arr.i, i32 noundef 3) #9
  br label %bnx2i_5771x_send_conn_ofld_req.exit

bnx2i_5771x_send_conn_ofld_req.exit:              ; preds = %if.then.i, %land.lhs.true.i.bnx2i_5771x_send_conn_ofld_req.exit_crit_edge, %if.then.bnx2i_5771x_send_conn_ofld_req.exit_crit_edge
  %rc.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %land.lhs.true.i.bnx2i_5771x_send_conn_ofld_req.exit_crit_edge ], [ -22, %if.then.bnx2i_5771x_send_conn_ofld_req.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ofld_req3.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ofld_req2.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ofld_req1.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %kwqe_arr.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kwqe_arr.i6) #9
  %75 = getelementptr inbounds [2 x ptr], ptr %kwqe_arr.i6, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ofld_req1.i7) #9
  %76 = getelementptr inbounds %struct.iscsi_kwqe_header, ptr %ofld_req1.i7, i32 0, i32 1
  %77 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, ptr %ofld_req1.i7, i32 0, i32 1
  %78 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, ptr %ofld_req1.i7, i32 0, i32 2
  %79 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, ptr %ofld_req1.i7, i32 0, i32 3
  %80 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, ptr %ofld_req1.i7, i32 0, i32 4
  %81 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, ptr %ofld_req1.i7, i32 0, i32 5
  %82 = getelementptr inbounds i8, ptr %ofld_req1.i7, i32 20
  %83 = call ptr @memset(ptr %82, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ofld_req2.i8) #9
  %84 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i8, i32 0, i32 2
  %85 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i8, i32 0, i32 3
  %86 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i8, i32 0, i32 4
  %87 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i8, i32 0, i32 4, i32 1
  %88 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i8, i32 0, i32 5
  %89 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i8, i32 0, i32 5, i32 1
  %90 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, ptr %ofld_req2.i8, i32 0, i32 6
  %91 = ptrtoint ptr %ofld_req2.i8 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1610743807, ptr %ofld_req2.i8, align 4
  %92 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %76, align 1
  %93 = ptrtoint ptr %ofld_req1.i7 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 96, ptr %ofld_req1.i7, align 4
  %drv_iscsi_cid.i9 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 11, i32 1
  %94 = ptrtoint ptr %drv_iscsi_cid.i9 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %drv_iscsi_cid.i9, align 4
  %conv.i10 = trunc i32 %95 to i16
  %96 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i10, ptr %77, align 2
  %sq_pgtbl_phys.i11 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 12
  %97 = ptrtoint ptr %sq_pgtbl_phys.i11 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sq_pgtbl_phys.i11, align 4
  %99 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %78, align 4
  %100 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %79, align 4
  %cq_pgtbl_phys.i12 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 27
  %101 = ptrtoint ptr %cq_pgtbl_phys.i12 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cq_pgtbl_phys.i12, align 4
  %103 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %80, align 4
  %104 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %81, align 4
  %rq_pgtbl_phys.i13 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 40
  %105 = ptrtoint ptr %rq_pgtbl_phys.i13 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rq_pgtbl_phys.i13, align 4
  %107 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %84, align 4
  %108 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %85, align 4
  %sq_pgtbl_virt.i14 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 11
  %109 = ptrtoint ptr %sq_pgtbl_virt.i14 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sq_pgtbl_virt.i14, align 4
  %incdec.ptr.i15 = getelementptr i32, ptr %110, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %113 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %86, align 4
  %114 = ptrtoint ptr %incdec.ptr.i15 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %incdec.ptr.i15, align 4
  %116 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %87, align 4
  %cq_pgtbl_virt.i16 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 26
  %117 = ptrtoint ptr %cq_pgtbl_virt.i16 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cq_pgtbl_virt.i16, align 4
  %incdec.ptr19.i = getelementptr i32, ptr %118, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  %121 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %88, align 4
  %122 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %incdec.ptr19.i, align 4
  %124 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %89, align 4
  %125 = ptrtoint ptr %kwqe_arr.i6 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %ofld_req1.i7, ptr %kwqe_arr.i6, align 4
  %126 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %ofld_req2.i8, ptr %75, align 4
  %127 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %90, align 4
  %cnic.i17 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 1
  %128 = ptrtoint ptr %cnic.i17 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cnic.i17, align 8
  %tobool.not.i18 = icmp eq ptr %129, null
  br i1 %tobool.not.i18, label %if.else.bnx2i_570x_send_conn_ofld_req.exit_crit_edge, label %land.lhs.true.i20

if.else.bnx2i_570x_send_conn_ofld_req.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_570x_send_conn_ofld_req.exit

land.lhs.true.i20:                                ; preds = %if.else
  %submit_kwqes.i19 = getelementptr inbounds %struct.cnic_dev, ptr %129, i32 0, i32 6
  %130 = ptrtoint ptr %submit_kwqes.i19 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %submit_kwqes.i19, align 4
  %tobool25.not.i = icmp eq ptr %131, null
  br i1 %tobool25.not.i, label %land.lhs.true.i20.bnx2i_570x_send_conn_ofld_req.exit_crit_edge, label %if.then.i22

land.lhs.true.i20.bnx2i_570x_send_conn_ofld_req.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_570x_send_conn_ofld_req.exit

if.then.i22:                                      ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  %call.i21 = call i32 %131(ptr noundef nonnull %129, ptr noundef nonnull %kwqe_arr.i6, i32 noundef 2) #9
  br label %bnx2i_570x_send_conn_ofld_req.exit

bnx2i_570x_send_conn_ofld_req.exit:               ; preds = %if.then.i22, %land.lhs.true.i20.bnx2i_570x_send_conn_ofld_req.exit_crit_edge, %if.else.bnx2i_570x_send_conn_ofld_req.exit_crit_edge
  %rc.0.i23 = phi i32 [ %call.i21, %if.then.i22 ], [ -22, %land.lhs.true.i20.bnx2i_570x_send_conn_ofld_req.exit_crit_edge ], [ -22, %if.else.bnx2i_570x_send_conn_ofld_req.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ofld_req2.i8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ofld_req1.i7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kwqe_arr.i6) #9
  br label %if.end

if.end:                                           ; preds = %bnx2i_570x_send_conn_ofld_req.exit, %bnx2i_5771x_send_conn_ofld_req.exit
  %rc.0 = phi i32 [ %rc.0.i, %bnx2i_5771x_send_conn_ofld_req.exit ], [ %rc.0.i23, %bnx2i_570x_send_conn_ofld_req.exit ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_alloc_qp_resc(ptr noundef %hba, ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hba1 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %hba1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hba, ptr %hba1, align 4
  %conn = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 2
  %1 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %conn, align 4
  %ids = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 11
  %pg_cid = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %pg_cid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %pg_cid, align 4
  %drv_iscsi_cid = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %drv_iscsi_cid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %drv_iscsi_cid, align 4
  %4 = ptrtoint ptr %ids to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ids, align 4
  %max_sqes = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 13
  %5 = ptrtoint ptr %max_sqes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_sqes, align 8
  %mul = shl i32 %6, 6
  %sq_mem_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 3
  %add = add i32 %mul, 4095
  %and = and i32 %add, -4096
  %7 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %sq_mem_size, align 4
  %8 = lshr i32 %add, 10
  %mul10 = and i32 %8, 4194300
  %sq_pgtbl_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 13
  %add14 = add nuw nsw i32 %mul10, 4095
  %and15 = and i32 %add14, 8384512
  %9 = ptrtoint ptr %sq_pgtbl_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and15, ptr %sq_pgtbl_size, align 4
  %pcidev = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 2
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %sq_pgtbl_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 12
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %and15, ptr noundef %sq_pgtbl_phys, i32 noundef 3264, i32 noundef 0) #9
  %sq_pgtbl_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 11
  %12 = ptrtoint ptr %sq_pgtbl_virt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %sq_pgtbl_virt, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.mem_alloc_err_crit_edge, label %if.end

entry.mem_alloc_err_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_alloc_err

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcidev, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sq_mem_size, align 4
  %sq_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 2
  %call.i333 = tail call ptr @dma_alloc_attrs(ptr noundef %dev28, i32 noundef %16, ptr noundef %sq_phys, i32 noundef 3264, i32 noundef 0) #9
  %sq_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %sq_virt to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i333, ptr %sq_virt, align 4
  %tobool36.not = icmp eq ptr %call.i333, null
  br i1 %tobool36.not, label %if.end.mem_alloc_err_crit_edge, label %if.end45

if.end.mem_alloc_err_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_alloc_err

if.end45:                                         ; preds = %if.end
  %sq_first_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 6
  %18 = ptrtoint ptr %sq_first_qe to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i333, ptr %sq_first_qe, align 4
  %sq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 4
  %19 = ptrtoint ptr %sq_prod_qe to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i333, ptr %sq_prod_qe, align 4
  %sq_cons_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 5
  %20 = ptrtoint ptr %sq_cons_qe to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i333, ptr %sq_cons_qe, align 4
  %21 = ptrtoint ptr %max_sqes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_sqes, align 8
  %sub = add i32 %22, -1
  %arrayidx = getelementptr %struct.sqe, ptr %call.i333, i32 %sub
  %sq_last_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 7
  %23 = ptrtoint ptr %sq_last_qe to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx, ptr %sq_last_qe, align 4
  %sq_prod_idx = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 8
  %24 = ptrtoint ptr %sq_prod_idx to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %sq_prod_idx, align 4
  %sq_cons_idx = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 9
  %25 = ptrtoint ptr %sq_cons_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %sq_cons_idx, align 2
  %26 = load i32, ptr %max_sqes, align 8
  %sqe_left = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 10
  %27 = ptrtoint ptr %sqe_left to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sqe_left, align 4
  %max_cqes = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 15
  %28 = ptrtoint ptr %max_cqes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_cqes, align 8
  %mul63 = shl i32 %29, 6
  %cq_mem_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 16
  %add67 = add i32 %mul63, 4095
  %and68 = and i32 %add67, -4096
  %30 = ptrtoint ptr %cq_mem_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and68, ptr %cq_mem_size, align 4
  %31 = lshr i32 %add67, 10
  %mul74 = and i32 %31, 4194300
  %cq_pgtbl_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 28
  %add78 = add nuw nsw i32 %mul74, 4095
  %and79 = and i32 %add78, 8384512
  %32 = ptrtoint ptr %cq_pgtbl_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and79, ptr %cq_pgtbl_size, align 4
  %33 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcidev, align 4
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %cq_pgtbl_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 27
  %call.i334 = tail call ptr @dma_alloc_attrs(ptr noundef %dev83, i32 noundef %and79, ptr noundef %cq_pgtbl_phys, i32 noundef 3264, i32 noundef 0) #9
  %cq_pgtbl_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 26
  %35 = ptrtoint ptr %cq_pgtbl_virt to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i334, ptr %cq_pgtbl_virt, align 4
  %tobool91.not = icmp eq ptr %call.i334, null
  br i1 %tobool91.not, label %if.end45.mem_alloc_err_crit_edge, label %if.end100

if.end45.mem_alloc_err_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_alloc_err

if.end100:                                        ; preds = %if.end45
  %36 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcidev, align 4
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %cq_mem_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cq_mem_size, align 4
  %cq_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 15
  %call.i335 = tail call ptr @dma_alloc_attrs(ptr noundef %dev102, i32 noundef %39, ptr noundef %cq_phys, i32 noundef 3264, i32 noundef 0) #9
  %cq_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 14
  %40 = ptrtoint ptr %cq_virt to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i335, ptr %cq_virt, align 4
  %tobool110.not = icmp eq ptr %call.i335, null
  br i1 %tobool110.not, label %if.end100.mem_alloc_err_crit_edge, label %if.end119

if.end100.mem_alloc_err_crit_edge:                ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_alloc_err

if.end119:                                        ; preds = %if.end100
  %cq_first_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 19
  %41 = ptrtoint ptr %cq_first_qe to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i335, ptr %cq_first_qe, align 4
  %cq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 17
  %42 = ptrtoint ptr %cq_prod_qe to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i335, ptr %cq_prod_qe, align 4
  %cq_cons_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 18
  %43 = ptrtoint ptr %cq_cons_qe to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i335, ptr %cq_cons_qe, align 4
  %44 = ptrtoint ptr %max_cqes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_cqes, align 8
  %sub132 = add i32 %45, -1
  %arrayidx133 = getelementptr %struct.cqe, ptr %call.i335, i32 %sub132
  %cq_last_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 20
  %46 = ptrtoint ptr %cq_last_qe to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx133, ptr %cq_last_qe, align 4
  %cq_prod_idx = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 21
  %47 = ptrtoint ptr %cq_prod_idx to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %cq_prod_idx, align 4
  %cq_cons_idx = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 22
  %48 = ptrtoint ptr %cq_cons_idx to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %cq_cons_idx, align 2
  %49 = load i32, ptr %max_cqes, align 8
  %cqe_left = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 23
  %50 = ptrtoint ptr %cqe_left to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %cqe_left, align 4
  %cqe_exp_seq_sn = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 25
  %51 = ptrtoint ptr %cqe_exp_seq_sn to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %cqe_exp_seq_sn, align 4
  %52 = load i32, ptr %max_cqes, align 8
  %cqe_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 24
  %53 = ptrtoint ptr %cqe_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %cqe_size, align 4
  %54 = ptrtoint ptr %cq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cq_pgtbl_virt, align 4
  %sqn = getelementptr inbounds %struct.bnx2i_5771x_cq_db, ptr %55, i32 0, i32 2
  %56 = call ptr @memset(ptr %sqn, i32 255, i32 16)
  %max_rqes = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 14
  %57 = ptrtoint ptr %max_rqes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_rqes, align 4
  %mul144 = shl i32 %58, 8
  %rq_mem_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 31
  %add148 = add i32 %mul144, 4095
  %and149 = and i32 %add148, -4096
  %59 = ptrtoint ptr %rq_mem_size to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and149, ptr %rq_mem_size, align 4
  %60 = lshr i32 %add148, 10
  %mul155 = and i32 %60, 4194300
  %rq_pgtbl_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 41
  %add159 = add nuw nsw i32 %mul155, 4095
  %and160 = and i32 %add159, 8384512
  %61 = ptrtoint ptr %rq_pgtbl_size to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and160, ptr %rq_pgtbl_size, align 4
  %62 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcidev, align 4
  %dev164 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %rq_pgtbl_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 40
  %call.i336 = tail call ptr @dma_alloc_attrs(ptr noundef %dev164, i32 noundef %and160, ptr noundef %rq_pgtbl_phys, i32 noundef 3264, i32 noundef 0) #9
  %rq_pgtbl_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 39
  %64 = ptrtoint ptr %rq_pgtbl_virt to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i336, ptr %rq_pgtbl_virt, align 4
  %tobool172.not = icmp eq ptr %call.i336, null
  br i1 %tobool172.not, label %if.end119.mem_alloc_err_crit_edge, label %if.end181

if.end119.mem_alloc_err_crit_edge:                ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_alloc_err

if.end181:                                        ; preds = %if.end119
  %65 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcidev, align 4
  %dev183 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %67 = ptrtoint ptr %rq_mem_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rq_mem_size, align 4
  %rq_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 30
  %call.i337 = tail call ptr @dma_alloc_attrs(ptr noundef %dev183, i32 noundef %68, ptr noundef %rq_phys, i32 noundef 3264, i32 noundef 0) #9
  %rq_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 29
  %69 = ptrtoint ptr %rq_virt to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i337, ptr %rq_virt, align 4
  %tobool191.not = icmp eq ptr %call.i337, null
  br i1 %tobool191.not, label %if.end181.mem_alloc_err_crit_edge, label %if.end200

if.end181.mem_alloc_err_crit_edge:                ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_alloc_err

if.end200:                                        ; preds = %if.end181
  %rq_first_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 34
  %70 = ptrtoint ptr %rq_first_qe to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i337, ptr %rq_first_qe, align 4
  %rq_prod_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 32
  %71 = ptrtoint ptr %rq_prod_qe to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i337, ptr %rq_prod_qe, align 4
  %rq_cons_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 33
  %72 = ptrtoint ptr %rq_cons_qe to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i337, ptr %rq_cons_qe, align 4
  %73 = ptrtoint ptr %max_rqes to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_rqes, align 4
  %sub213 = add i32 %74, -1
  %arrayidx214 = getelementptr %struct.rqe, ptr %call.i337, i32 %sub213
  %rq_last_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 35
  %75 = ptrtoint ptr %rq_last_qe to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx214, ptr %rq_last_qe, align 4
  %rq_prod_idx = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 36
  %76 = ptrtoint ptr %rq_prod_idx to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 -32768, ptr %rq_prod_idx, align 4
  %rq_cons_idx = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 37
  %77 = ptrtoint ptr %rq_cons_idx to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %rq_cons_idx, align 2
  %78 = load i32, ptr %max_rqes, align 4
  %rqe_left = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 38
  %79 = ptrtoint ptr %rqe_left to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %rqe_left, align 4
  %80 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hba1, align 4
  %cnic_dev_type.i = getelementptr inbounds %struct.bnx2i_hba, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %84 = and i32 %83, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i = icmp eq i32 %84, 0
  %85 = ptrtoint ptr %sq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sq_pgtbl_virt, align 4
  %87 = ptrtoint ptr %sq_pgtbl_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sq_pgtbl_size, align 4
  %89 = call ptr @memset(ptr %86, i32 0, i32 %88)
  %90 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sq_mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %91)
  %tobool12.not164.i = icmp ult i32 %91, 4096
  br i1 %tobool12.not164.i, label %if.end200.while.end.i_crit_edge, label %while.body.i.preheader

if.end200.while.end.i_crit_edge:                  ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.preheader:                           ; preds = %if.end200
  %92 = ptrtoint ptr %sq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sq_pgtbl_virt, align 4
  %94 = shl nuw nsw i32 %84, 1
  %ptbl.0.i = getelementptr i8, ptr %93, i32 %94
  %95 = ptrtoint ptr %sq_phys to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sq_phys, align 4
  %div160.i = lshr i32 %91, 12
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %dec167.in.i = phi i32 [ %dec167.i, %while.body.i.while.body.i_crit_edge ], [ %div160.i, %while.body.i.preheader ]
  %page.0166.i = phi i32 [ %page.1.i, %while.body.i.while.body.i_crit_edge ], [ %96, %while.body.i.preheader ]
  %ptbl.1165.i = phi ptr [ %ptbl.2.i, %while.body.i.while.body.i_crit_edge ], [ %ptbl.0.i, %while.body.i.preheader ]
  %dec167.i = add nsw i32 %dec167.in.i, -1
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %page.0166.i
  %spec.select182.i = select i1 %tobool.not.i, i32 %page.0166.i, i32 0
  %97 = ptrtoint ptr %ptbl.1165.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %spec.select.i, ptr %ptbl.1165.i, align 4
  %98 = getelementptr i32, ptr %ptbl.1165.i, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %spec.select182.i, ptr %98, align 4
  %ptbl.2.i = getelementptr i32, ptr %ptbl.1165.i, i32 2
  %page.1.i = add i32 %page.0166.i, 4096
  %tobool12.not.i = icmp eq i32 %dec167.i, 0
  br i1 %tobool12.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end200.while.end.i_crit_edge
  %100 = ptrtoint ptr %rq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rq_pgtbl_virt, align 4
  %102 = ptrtoint ptr %rq_pgtbl_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rq_pgtbl_size, align 4
  %104 = call ptr @memset(ptr %101, i32 0, i32 %103)
  %105 = ptrtoint ptr %rq_mem_size to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rq_mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %106)
  %tobool41.not169.i = icmp ult i32 %106, 4096
  br i1 %tobool41.not169.i, label %while.end.i.while.end59.i_crit_edge, label %while.body42.i.preheader

while.end.i.while.end59.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end59.i

while.body42.i.preheader:                         ; preds = %while.end.i
  %107 = ptrtoint ptr %rq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rq_pgtbl_virt, align 4
  %109 = shl nuw nsw i32 %84, 3
  %ptbl.3.i = getelementptr i8, ptr %108, i32 %109
  %110 = ptrtoint ptr %rq_phys to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rq_phys, align 4
  %div28161.i = lshr i32 %106, 12
  br label %while.body42.i

while.body42.i:                                   ; preds = %while.body42.i.while.body42.i_crit_edge, %while.body42.i.preheader
  %dec40172.in.i = phi i32 [ %dec40172.i, %while.body42.i.while.body42.i_crit_edge ], [ %div28161.i, %while.body42.i.preheader ]
  %page.2171.i = phi i32 [ %page.3.i, %while.body42.i.while.body42.i_crit_edge ], [ %111, %while.body42.i.preheader ]
  %ptbl.4170.i = phi ptr [ %ptbl.5.i, %while.body42.i.while.body42.i_crit_edge ], [ %ptbl.3.i, %while.body42.i.preheader ]
  %dec40172.i = add nsw i32 %dec40172.in.i, -1
  %spec.select183.i = select i1 %tobool.not.i, i32 0, i32 %page.2171.i
  %spec.select184.i = select i1 %tobool.not.i, i32 %page.2171.i, i32 0
  %112 = ptrtoint ptr %ptbl.4170.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %spec.select183.i, ptr %ptbl.4170.i, align 4
  %113 = getelementptr i32, ptr %ptbl.4170.i, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %spec.select184.i, ptr %113, align 4
  %ptbl.5.i = getelementptr i32, ptr %ptbl.4170.i, i32 2
  %page.3.i = add i32 %page.2171.i, 4096
  %tobool41.not.i = icmp eq i32 %dec40172.i, 0
  br i1 %tobool41.not.i, label %while.body42.i.while.end59.i_crit_edge, label %while.body42.i.while.body42.i_crit_edge

while.body42.i.while.body42.i_crit_edge:          ; preds = %while.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body42.i

while.body42.i.while.end59.i_crit_edge:           ; preds = %while.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end59.i

while.end59.i:                                    ; preds = %while.body42.i.while.end59.i_crit_edge, %while.end.i.while.end59.i_crit_edge
  %115 = ptrtoint ptr %cq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cq_pgtbl_virt, align 4
  %117 = ptrtoint ptr %cq_pgtbl_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cq_pgtbl_size, align 4
  %119 = call ptr @memset(ptr %116, i32 0, i32 %118)
  %120 = ptrtoint ptr %cq_mem_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cq_mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %121)
  %tobool76.not174.i = icmp ult i32 %121, 4096
  br i1 %tobool76.not174.i, label %while.end59.i.cleanup_crit_edge, label %while.body77.i.preheader

while.end59.i.cleanup_crit_edge:                  ; preds = %while.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body77.i.preheader:                         ; preds = %while.end59.i
  %122 = ptrtoint ptr %cq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cq_pgtbl_virt, align 4
  %ptbl.6.idx.i = select i1 %tobool.not.i, i32 0, i32 80
  %ptbl.6.i = getelementptr i8, ptr %123, i32 %ptbl.6.idx.i
  %124 = ptrtoint ptr %cq_phys to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cq_phys, align 4
  %div63162.i = lshr i32 %121, 12
  br label %while.body77.i

while.body77.i:                                   ; preds = %while.body77.i.while.body77.i_crit_edge, %while.body77.i.preheader
  %dec75177.in.i = phi i32 [ %dec75177.i, %while.body77.i.while.body77.i_crit_edge ], [ %div63162.i, %while.body77.i.preheader ]
  %page.4176.i = phi i32 [ %page.5.i, %while.body77.i.while.body77.i_crit_edge ], [ %125, %while.body77.i.preheader ]
  %ptbl.7175.i = phi ptr [ %ptbl.8.i, %while.body77.i.while.body77.i_crit_edge ], [ %ptbl.6.i, %while.body77.i.preheader ]
  %dec75177.i = add nsw i32 %dec75177.in.i, -1
  %spec.select185.i = select i1 %tobool.not.i, i32 0, i32 %page.4176.i
  %spec.select186.i = select i1 %tobool.not.i, i32 %page.4176.i, i32 0
  %126 = ptrtoint ptr %ptbl.7175.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %spec.select185.i, ptr %ptbl.7175.i, align 4
  %127 = getelementptr i32, ptr %ptbl.7175.i, i32 1
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %spec.select186.i, ptr %127, align 4
  %ptbl.8.i = getelementptr i32, ptr %ptbl.7175.i, i32 2
  %page.5.i = add i32 %page.4176.i, 4096
  %tobool76.not.i = icmp eq i32 %dec75177.i, 0
  br i1 %tobool76.not.i, label %while.body77.i.cleanup_crit_edge, label %while.body77.i.while.body77.i_crit_edge

while.body77.i.while.body77.i_crit_edge:          ; preds = %while.body77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body77.i

while.body77.i.cleanup_crit_edge:                 ; preds = %while.body77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mem_alloc_err:                                    ; preds = %if.end181.mem_alloc_err_crit_edge, %if.end119.mem_alloc_err_crit_edge, %if.end100.mem_alloc_err_crit_edge, %if.end45.mem_alloc_err_crit_edge, %if.end.mem_alloc_err_crit_edge, %entry.mem_alloc_err_crit_edge
  %rq_mem_size.sink = phi ptr [ %sq_pgtbl_size, %entry.mem_alloc_err_crit_edge ], [ %sq_mem_size, %if.end.mem_alloc_err_crit_edge ], [ %cq_pgtbl_size, %if.end45.mem_alloc_err_crit_edge ], [ %cq_mem_size, %if.end100.mem_alloc_err_crit_edge ], [ %rq_pgtbl_size, %if.end119.mem_alloc_err_crit_edge ], [ %rq_mem_size, %if.end181.mem_alloc_err_crit_edge ]
  %.str.30.sink = phi ptr [ @.str.15, %entry.mem_alloc_err_crit_edge ], [ @.str.18, %if.end.mem_alloc_err_crit_edge ], [ @.str.21, %if.end45.mem_alloc_err_crit_edge ], [ @.str.24, %if.end100.mem_alloc_err_crit_edge ], [ @.str.27, %if.end119.mem_alloc_err_crit_edge ], [ @.str.30, %if.end181.mem_alloc_err_crit_edge ]
  %129 = ptrtoint ptr %rq_mem_size.sink to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rq_mem_size.sink, align 4
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30.sink, i32 noundef %130) #12
  tail call void @bnx2i_free_qp_resc(ptr noundef %hba, ptr noundef %ep)
  br label %cleanup

cleanup:                                          ; preds = %mem_alloc_err, %while.body77.i.cleanup_crit_edge, %while.end59.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %mem_alloc_err ], [ 0, %while.end59.i.cleanup_crit_edge ], [ 0, %while.body77.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_free_qp_resc(ptr nocapture noundef readonly %hba, ptr nocapture noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %qp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sq_pgtbl_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 11
  %3 = ptrtoint ptr %sq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sq_pgtbl_virt, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.end.if.end16_crit_edge, label %if.then7

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 2
  %5 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %sq_pgtbl_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 13
  %7 = ptrtoint ptr %sq_pgtbl_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sq_pgtbl_size, align 4
  %sq_pgtbl_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 12
  %9 = ptrtoint ptr %sq_pgtbl_phys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sq_pgtbl_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %8, ptr noundef nonnull %4, i32 noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %sq_pgtbl_virt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sq_pgtbl_virt, align 4
  %12 = ptrtoint ptr %sq_pgtbl_phys to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sq_pgtbl_phys, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then7, %if.end.if.end16_crit_edge
  %sq_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %sq_virt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sq_virt, align 4
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %if.end16.if.end30_crit_edge, label %if.then19

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev20 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 2
  %15 = ptrtoint ptr %pcidev20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev20, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %sq_mem_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 3
  %17 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sq_mem_size, align 4
  %sq_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %sq_phys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sq_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21, i32 noundef %18, ptr noundef nonnull %14, i32 noundef %20, i32 noundef 0) #9
  %21 = ptrtoint ptr %sq_virt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sq_virt, align 4
  %22 = ptrtoint ptr %sq_phys to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sq_phys, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then19, %if.end16.if.end30_crit_edge
  %rq_pgtbl_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 39
  %23 = ptrtoint ptr %rq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rq_pgtbl_virt, align 4
  %tobool32.not = icmp eq ptr %24, null
  br i1 %tobool32.not, label %if.end30.if.end44_crit_edge, label %if.then33

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev34 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 2
  %25 = ptrtoint ptr %pcidev34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcidev34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %rq_pgtbl_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 41
  %27 = ptrtoint ptr %rq_pgtbl_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rq_pgtbl_size, align 4
  %rq_pgtbl_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 40
  %29 = ptrtoint ptr %rq_pgtbl_phys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rq_pgtbl_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev35, i32 noundef %28, ptr noundef nonnull %24, i32 noundef %30, i32 noundef 0) #9
  %31 = ptrtoint ptr %rq_pgtbl_virt to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rq_pgtbl_virt, align 4
  %32 = ptrtoint ptr %rq_pgtbl_phys to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %rq_pgtbl_phys, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then33, %if.end30.if.end44_crit_edge
  %rq_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 29
  %33 = ptrtoint ptr %rq_virt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rq_virt, align 4
  %tobool46.not = icmp eq ptr %34, null
  br i1 %tobool46.not, label %if.end44.if.end58_crit_edge, label %if.then47

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev48 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 2
  %35 = ptrtoint ptr %pcidev48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcidev48, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %rq_mem_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 31
  %37 = ptrtoint ptr %rq_mem_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rq_mem_size, align 4
  %rq_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 30
  %39 = ptrtoint ptr %rq_phys to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rq_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev49, i32 noundef %38, ptr noundef nonnull %34, i32 noundef %40, i32 noundef 0) #9
  %41 = ptrtoint ptr %rq_virt to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %rq_virt, align 4
  %42 = ptrtoint ptr %rq_phys to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rq_phys, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then47, %if.end44.if.end58_crit_edge
  %cq_pgtbl_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 26
  %43 = ptrtoint ptr %cq_pgtbl_virt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cq_pgtbl_virt, align 4
  %tobool60.not = icmp eq ptr %44, null
  br i1 %tobool60.not, label %if.end58.if.end72_crit_edge, label %if.then61

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev62 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 2
  %45 = ptrtoint ptr %pcidev62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcidev62, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %cq_pgtbl_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 28
  %47 = ptrtoint ptr %cq_pgtbl_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cq_pgtbl_size, align 4
  %cq_pgtbl_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 27
  %49 = ptrtoint ptr %cq_pgtbl_phys to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cq_pgtbl_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev63, i32 noundef %48, ptr noundef nonnull %44, i32 noundef %50, i32 noundef 0) #9
  %51 = ptrtoint ptr %cq_pgtbl_virt to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %cq_pgtbl_virt, align 4
  %52 = ptrtoint ptr %cq_pgtbl_phys to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %cq_pgtbl_phys, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then61, %if.end58.if.end72_crit_edge
  %cq_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 14
  %53 = ptrtoint ptr %cq_virt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cq_virt, align 4
  %tobool74.not = icmp eq ptr %54, null
  br i1 %tobool74.not, label %if.end72.if.end86_crit_edge, label %if.then75

if.end72.if.end86_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev76 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 2
  %55 = ptrtoint ptr %pcidev76 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcidev76, align 4
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %cq_mem_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 16
  %57 = ptrtoint ptr %cq_mem_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cq_mem_size, align 4
  %cq_phys = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 15
  %59 = ptrtoint ptr %cq_phys to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cq_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev77, i32 noundef %58, ptr noundef nonnull %54, i32 noundef %60, i32 noundef 0) #9
  %61 = ptrtoint ptr %cq_virt to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %cq_virt, align 4
  %62 = ptrtoint ptr %cq_phys to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %cq_phys, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then75, %if.end72.if.end86_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_send_fw_iscsi_init_msg(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  %kwqe_arr = alloca [3 x ptr], align 4
  %iscsi_init = alloca %struct.iscsi_kwqe_init1, align 4
  %iscsi_init2 = alloca %struct.iscsi_kwqe_init2, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %kwqe_arr) #9
  %0 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %kwqe_arr, align 4, !annotation !297
  %1 = getelementptr inbounds [3 x ptr], ptr %kwqe_arr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !297
  %3 = getelementptr inbounds [3 x ptr], ptr %kwqe_arr, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !297
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iscsi_init) #9
  %5 = getelementptr inbounds %struct.iscsi_kwqe_header, ptr %iscsi_init, i32 0, i32 1
  %6 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 1
  %7 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 2
  %8 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 3
  %9 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 4
  %10 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 5
  %11 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 6
  %12 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 7
  %13 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 8
  %14 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 9
  %15 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 10
  %16 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 11
  %17 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 12
  %18 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 13
  %19 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 14
  %20 = getelementptr inbounds %struct.iscsi_kwqe_init1, ptr %iscsi_init, i32 0, i32 15
  %21 = call ptr @memset(ptr %iscsi_init, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iscsi_init2) #9
  %22 = getelementptr inbounds %struct.iscsi_kwqe_header, ptr %iscsi_init2, i32 0, i32 1
  %23 = getelementptr inbounds %struct.iscsi_kwqe_init2, ptr %iscsi_init2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.iscsi_kwqe_init2, ptr %iscsi_init2, i32 0, i32 2
  %25 = getelementptr inbounds %struct.iscsi_kwqe_init2, ptr %iscsi_init2, i32 0, i32 2, i32 1
  %26 = getelementptr inbounds i8, ptr %iscsi_init2, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 28)
  %cnic_dev_type.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 7
  %28 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %30 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.not.i = icmp eq i32 %32, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %33 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %35 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool7.not.i = icmp eq i32 %35, 0
  br i1 %tobool7.not.i, label %lor.lhs.false4.i.if.end57.i_crit_edge, label %lor.lhs.false4.i.if.then.i_crit_edge

lor.lhs.false4.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false4.i.if.end57.i_crit_edge:            ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then.i:                                        ; preds = %lor.lhs.false4.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %max_sqes.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 13
  %36 = ptrtoint ptr %max_sqes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_sqes.i, align 8
  %38 = tail call i32 @llvm.ctpop.i32(i32 %37) #9, !range !298
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %if.then.i.if.end.i_crit_edge, label %cond.end24.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

cond.end24.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = tail call i32 @llvm.ctlz.i32(i32 %37, i1 true) #9, !range !298
  %sub.i.i.op.i.i = xor i32 %40, 31
  %cond25.i = shl nuw i32 1, %sub.i.i.op.i.i
  %41 = ptrtoint ptr %max_sqes.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond25.i, ptr %max_sqes.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end24.i, %if.then.i.if.end.i_crit_edge
  %max_rqes.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 14
  %42 = ptrtoint ptr %max_rqes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_rqes.i, align 4
  %44 = tail call i32 @llvm.ctpop.i32(i32 %43) #9, !range !298
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %if.end.i.if.end57.i_crit_edge, label %cond.end53.i

if.end.i.if.end57.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

cond.end53.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = tail call i32 @llvm.ctlz.i32(i32 %43, i1 true) #9, !range !298
  %sub.i.i.op.i167.i = xor i32 %46, 31
  %cond54.i = shl nuw i32 1, %sub.i.i.op.i167.i
  %47 = ptrtoint ptr %max_rqes.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond54.i, ptr %max_rqes.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %cond.end53.i, %if.end.i.if.end57.i_crit_edge, %lor.lhs.false4.i.if.end57.i_crit_edge
  %max_sqes58.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 13
  %48 = ptrtoint ptr %max_sqes58.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_sqes58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %49)
  %cmp59.i = icmp ult i32 %49, 64
  br i1 %cmp59.i, label %if.end57.i.if.end71.sink.split.i_crit_edge, label %if.else.i

if.end57.i.if.end71.sink.split.i_crit_edge:       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.sink.split.i

if.else.i:                                        ; preds = %if.end57.i
  %rem.i = and i32 %49, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool64.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool64.not.i, label %if.else.i.if.end71.i_crit_edge, label %if.then65.i

if.else.i.if.end71.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i

if.then65.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub67.i = add i32 %49, 63
  %and.i = and i32 %sub67.i, -64
  br label %if.end71.sink.split.i

if.end71.sink.split.i:                            ; preds = %if.then65.i, %if.end57.i.if.end71.sink.split.i_crit_edge
  %and.sink.i = phi i32 [ %and.i, %if.then65.i ], [ 64, %if.end57.i.if.end71.sink.split.i_crit_edge ]
  %50 = ptrtoint ptr %max_sqes58.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and.sink.i, ptr %max_sqes58.i, align 8
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end71.sink.split.i, %if.else.i.if.end71.i_crit_edge
  %max_cqes.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 15
  %51 = ptrtoint ptr %max_cqes.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_cqes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %52)
  %cmp72.i = icmp ult i32 %52, 64
  br i1 %cmp72.i, label %if.end71.i.if.end89.sink.split.i_crit_edge, label %if.else76.i

if.end71.i.if.end89.sink.split.i_crit_edge:       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.sink.split.i

if.else76.i:                                      ; preds = %if.end71.i
  %rem78.i = and i32 %52, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem78.i)
  %tobool79.not.i = icmp eq i32 %rem78.i, 0
  br i1 %tobool79.not.i, label %if.else76.i.if.end89.i_crit_edge, label %if.then80.i

if.else76.i.if.end89.i_crit_edge:                 ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

if.then80.i:                                      ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub83.i = add i32 %52, 63
  %and86.i = and i32 %sub83.i, -64
  br label %if.end89.sink.split.i

if.end89.sink.split.i:                            ; preds = %if.then80.i, %if.end71.i.if.end89.sink.split.i_crit_edge
  %and86.sink.i = phi i32 [ %and86.i, %if.then80.i ], [ 64, %if.end71.i.if.end89.sink.split.i_crit_edge ]
  %53 = ptrtoint ptr %max_cqes.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and86.sink.i, ptr %max_cqes.i, align 8
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.end89.sink.split.i, %if.else76.i.if.end89.i_crit_edge
  %max_rqes90.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 14
  %54 = ptrtoint ptr %max_rqes90.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_rqes90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %55)
  %cmp91.i = icmp ult i32 %55, 16
  br i1 %cmp91.i, label %if.end89.i.if.end108.sink.split.i_crit_edge, label %if.else95.i

if.end89.i.if.end108.sink.split.i_crit_edge:      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108.sink.split.i

if.else95.i:                                      ; preds = %if.end89.i
  %rem97.i = and i32 %55, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem97.i)
  %tobool98.not.i = icmp eq i32 %rem97.i, 0
  br i1 %tobool98.not.i, label %if.else95.i.bnx2i_adjust_qp_size.exit_crit_edge, label %if.then99.i

if.else95.i.bnx2i_adjust_qp_size.exit_crit_edge:  ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_adjust_qp_size.exit

if.then99.i:                                      ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub102.i = add i32 %55, 15
  %and105.i = and i32 %sub102.i, -16
  br label %if.end108.sink.split.i

if.end108.sink.split.i:                           ; preds = %if.then99.i, %if.end89.i.if.end108.sink.split.i_crit_edge
  %and105.sink.i = phi i32 [ %and105.i, %if.then99.i ], [ 16, %if.end89.i.if.end108.sink.split.i_crit_edge ]
  %56 = ptrtoint ptr %max_rqes90.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and105.sink.i, ptr %max_rqes90.i, align 4
  br label %bnx2i_adjust_qp_size.exit

bnx2i_adjust_qp_size.exit:                        ; preds = %if.end108.sink.split.i, %if.else95.i.bnx2i_adjust_qp_size.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @en_tcp_dack to i32))
  %57 = load i32, ptr @en_tcp_dack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not = icmp eq i32 %57, 0
  %spec.store.select = select i1 %tobool.not, i8 4, i8 20
  %58 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %spec.store.select, ptr %15, align 1
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %6, align 2
  %60 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %7, align 1
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 4, ptr %5, align 1
  %62 = ptrtoint ptr %iscsi_init to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 96, ptr %iscsi_init, align 4
  %dummy_buf_dma = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 28
  %63 = ptrtoint ptr %dummy_buf_dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dummy_buf_dma, align 8
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %8, align 4
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %9, align 4
  %67 = ptrtoint ptr %max_sqes58.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_sqes58.i, align 8
  %shr8 = lshr i32 %68, 1
  %num_ccell = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 16
  %69 = ptrtoint ptr %num_ccell to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shr8, ptr %num_ccell, align 4
  %and = and i32 %shr8, 65535
  %shl = shl i32 %68, 16
  %or11 = or i32 %and, %shl
  %ctx_ccell_tasks = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 47
  %70 = ptrtoint ptr %ctx_ccell_tasks to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or11, ptr %ctx_ccell_tasks, align 8
  %conv13 = trunc i32 %shr8 to i16
  %71 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv13, ptr %10, align 4
  %conv15 = trunc i32 %68 to i16
  %72 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv15, ptr %11, align 2
  %73 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 64, ptr %12, align 4
  %74 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv15, ptr %13, align 2
  %75 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 6, ptr %14, align 4
  %76 = ptrtoint ptr %max_cqes.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_cqes.i, align 8
  %conv19 = trunc i32 %77 to i16
  %78 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv19, ptr %16, align 2
  %mul = shl i32 %77, 6
  %add = add i32 %mul, 4095
  %div102 = lshr i32 %add, 12
  %conv21 = trunc i32 %div102 to i16
  %79 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv21, ptr %17, align 4
  %mul23 = shl i32 %68, 6
  %add24 = add i32 %mul23, 4095
  %div25103 = lshr i32 %add24, 12
  %conv26 = trunc i32 %div25103 to i16
  %80 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv26, ptr %18, align 2
  %81 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 256, ptr %19, align 4
  %82 = ptrtoint ptr %max_rqes90.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_rqes90.i, align 4
  %conv27 = trunc i32 %83 to i16
  %84 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv27, ptr %20, align 2
  %85 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 5, ptr %22, align 1
  %86 = ptrtoint ptr %iscsi_init2 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 96, ptr %iscsi_init2, align 4
  %87 = shl i16 %conv19, 1
  %conv35 = or i16 %87, 1
  %88 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv35, ptr %23, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @error_mask1 to i32))
  %89 = load i32, ptr @error_mask1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool37.not = icmp eq i32 %89, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %bnx2i_adjust_qp_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %24, align 4
  %conv41 = zext i32 %89 to i64
  %or42 = or i64 %conv41, 4294967296
  br label %if.end46

if.else:                                          ; preds = %bnx2i_adjust_qp_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 134250496, ptr %24, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then38
  %mask64.0 = phi i64 [ %or42, %if.then38 ], [ 4429217792, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @error_mask2 to i32))
  %92 = load i32, ptr @error_mask2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool47.not = icmp eq i32 %92, 0
  br i1 %tobool47.not, label %if.else55, label %if.then48

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %25, align 4
  %and51 = and i64 %mask64.0, 4294967295
  %conv52 = zext i32 %92 to i64
  %shl53 = shl nuw i64 %conv52, 32
  %or54 = or i64 %shl53, %and51
  br label %if.end60

if.else55:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %shr56 = lshr i64 %mask64.0, 32
  %conv57 = trunc i64 %shr56 to i32
  %94 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv57, ptr %25, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else55, %if.then48
  %mask64.1 = phi i64 [ %or54, %if.then48 ], [ %mask64.0, %if.else55 ]
  call void @__asan_store8_noabort(i32 ptrtoint (ptr @iscsi_error_mask to i32))
  store i64 %mask64.1, ptr @iscsi_error_mask, align 8
  %95 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %iscsi_init, ptr %kwqe_arr, align 4
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %iscsi_init2, ptr %1, align 4
  %cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 1
  %97 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cnic, align 8
  %tobool63.not = icmp eq ptr %98, null
  br i1 %tobool63.not, label %if.end60.if.end71_crit_edge, label %land.lhs.true

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

land.lhs.true:                                    ; preds = %if.end60
  %submit_kwqes = getelementptr inbounds %struct.cnic_dev, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %submit_kwqes to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %submit_kwqes, align 4
  %tobool65.not = icmp eq ptr %100, null
  br i1 %tobool65.not, label %land.lhs.true.if.end71_crit_edge, label %if.then66

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then66:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = call i32 %100(ptr noundef nonnull %98, ptr noundef nonnull %kwqe_arr, i32 noundef 2) #9
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %land.lhs.true.if.end71_crit_edge, %if.end60.if.end71_crit_edge
  %rc.0 = phi i32 [ %call70, %if.then66 ], [ 0, %land.lhs.true.if.end71_crit_edge ], [ 0, %if.end60.if.end71_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iscsi_init2) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iscsi_init) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %kwqe_arr) #9
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_process_scsi_cmd_resp(ptr noundef %session, ptr nocapture noundef readonly %bnx2i_conn, ptr nocapture noundef readonly %cqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 8
  %hba1 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 1
  %4 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba1, align 4
  %back_lock = getelementptr inbounds %struct.iscsi_session, ptr %session, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %back_lock) #9
  %itt = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 16
  %6 = ptrtoint ptr %itt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %itt, align 2
  %8 = and i16 %7, 16383
  %and = zext i16 %8 to i32
  %call = tail call ptr @iscsi_itt_to_task(ptr noundef %3, i32 noundef %and) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %entry
  %dd_data2 = getelementptr inbounds %struct.iscsi_task, ptr %call, i32 0, i32 20
  %9 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dd_data2, align 4
  %op_attr = getelementptr inbounds %struct.bnx2i_cmd, ptr %10, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %op_attr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %op_attr, align 1
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %num_data_ins = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 13, i32 0, i32 1
  %14 = ptrtoint ptr %num_data_ins to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_data_ins, align 2
  %conv7 = zext i16 %15 to i32
  %datain_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 52
  %16 = ptrtoint ptr %datain_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %datain_pdus_cnt, align 4
  %add = add i32 %17, %conv7
  store i32 %add, ptr %datain_pdus_cnt, align 4
  %total_data_transfer_length = getelementptr inbounds %struct.bnx2i_cmd, ptr %10, i32 0, i32 6, i32 8
  %18 = ptrtoint ptr %total_data_transfer_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_data_transfer_length, align 4
  %conv9 = zext i32 %19 to i64
  %rxdata_octets = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 48
  %20 = ptrtoint ptr %rxdata_octets to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rxdata_octets, align 8
  %add10 = add i64 %21, %conv9
  store i64 %add10, ptr %rxdata_octets, align 8
  %22 = load i16, ptr %num_data_ins, align 2
  %conv13 = zext i16 %22 to i64
  %bnx2i_stats = getelementptr inbounds %struct.bnx2i_hba, ptr %5, i32 0, i32 48
  %23 = ptrtoint ptr %bnx2i_stats to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bnx2i_stats, align 8
  %add14 = add i64 %24, %conv13
  store i64 %add14, ptr %bnx2i_stats, align 8
  %25 = load i32, ptr %total_data_transfer_length, align 4
  %conv18 = zext i32 %25 to i64
  %rx_bytes = getelementptr inbounds %struct.bnx2i_hba, ptr %5, i32 0, i32 48, i32 1
  br label %if.end58

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %task_stat23 = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 13
  %num_data_outs = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 13, i32 0, i32 1
  %26 = ptrtoint ptr %num_data_outs to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_data_outs, align 2
  %conv24 = zext i16 %27 to i32
  %dataout_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 50
  %28 = ptrtoint ptr %dataout_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dataout_pdus_cnt, align 4
  %add25 = add i32 %29, %conv24
  store i32 %add25, ptr %dataout_pdus_cnt, align 4
  %30 = ptrtoint ptr %task_stat23 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %task_stat23, align 4
  %conv27 = zext i16 %31 to i32
  %r2t_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 53
  %32 = ptrtoint ptr %r2t_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %r2t_pdus_cnt, align 8
  %add28 = add i32 %33, %conv27
  store i32 %add28, ptr %r2t_pdus_cnt, align 8
  %total_data_transfer_length30 = getelementptr inbounds %struct.bnx2i_cmd, ptr %10, i32 0, i32 6, i32 8
  %34 = ptrtoint ptr %total_data_transfer_length30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %total_data_transfer_length30, align 4
  %conv31 = zext i32 %35 to i64
  %txdata_octets = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 47
  %36 = ptrtoint ptr %txdata_octets to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %txdata_octets, align 8
  %add32 = add i64 %37, %conv31
  store i64 %add32, ptr %txdata_octets, align 8
  %38 = load i16, ptr %num_data_outs, align 2
  %conv36 = zext i16 %38 to i64
  %bnx2i_stats37 = getelementptr inbounds %struct.bnx2i_hba, ptr %5, i32 0, i32 48
  %tx_pdus = getelementptr inbounds %struct.bnx2i_hba, ptr %5, i32 0, i32 48, i32 2
  %39 = ptrtoint ptr %tx_pdus to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_pdus, align 8
  %add38 = add i64 %40, %conv36
  store i64 %add38, ptr %tx_pdus, align 8
  %41 = load i32, ptr %total_data_transfer_length30, align 4
  %conv44 = zext i32 %41 to i64
  %tx_bytes = getelementptr inbounds %struct.bnx2i_hba, ptr %5, i32 0, i32 48, i32 3
  %42 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %tx_bytes, align 8
  %add46 = add i64 %43, %conv44
  store i64 %add46, ptr %tx_bytes, align 8
  %44 = load i16, ptr %task_stat23, align 4
  %conv52 = zext i16 %44 to i64
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then6
  %bnx2i_stats37.sink160 = phi ptr [ %bnx2i_stats37, %if.else ], [ %rx_bytes, %if.then6 ]
  %conv52.sink = phi i64 [ %conv52, %if.else ], [ %conv18, %if.then6 ]
  %45 = ptrtoint ptr %bnx2i_stats37.sink160 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %bnx2i_stats37.sink160, align 8
  %add55 = add i64 %46, %conv52.sink
  store i64 %add55, ptr %bnx2i_stats37.sink160, align 8
  tail call void @bnx2i_iscsi_unmap_sg_list(ptr noundef %10) #9
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call, align 4
  %49 = ptrtoint ptr %cqe to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cqe, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %48, align 4
  %max_cmd_sn = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 6
  %52 = ptrtoint ptr %max_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_cmd_sn, align 4
  %max_cmdsn = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %48, i32 0, i32 11
  %54 = ptrtoint ptr %max_cmdsn to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %max_cmdsn, align 4
  %exp_cmd_sn = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 5
  %55 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %exp_cmd_sn, align 4
  %exp_cmdsn = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %48, i32 0, i32 10
  %57 = ptrtoint ptr %exp_cmdsn to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %exp_cmdsn, align 4
  %response = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 2
  %58 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %response, align 2
  %response60 = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %48, i32 0, i32 2
  %60 = ptrtoint ptr %response60 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %response60, align 2
  %status = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 3
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %status, align 1
  %cmd_status = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %48, i32 0, i32 3
  %63 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %cmd_status, align 1
  %response_flags = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 1
  %64 = ptrtoint ptr %response_flags to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %response_flags, align 1
  %flags = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %48, i32 0, i32 1
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %flags, align 1
  %residual_count = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 8
  %67 = ptrtoint ptr %residual_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %residual_count, align 4
  %residual_count61 = getelementptr inbounds %struct.iscsi_scsi_rsp, ptr %48, i32 0, i32 14
  %69 = ptrtoint ptr %residual_count61 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %residual_count61, align 4
  %70 = load i8, ptr %cqe, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %70)
  %cmp = icmp eq i8 %70, 37
  br i1 %cmp, label %if.end58.done_crit_edge, label %if.end66

if.end58.done_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end66:                                         ; preds = %if.end58
  %71 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp69 = icmp eq i8 %72, 2
  br i1 %cmp69, label %if.then71, label %if.end66.done_crit_edge

if.end66.done_crit_edge:                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then71:                                        ; preds = %if.end66
  %data_length = getelementptr inbounds %struct.bnx2i_cmd_response, ptr %cqe, i32 0, i32 4
  %73 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp72 = icmp ult i32 %74, 2
  br i1 %cmp72, label %if.then71.done_crit_edge, label %if.end75

if.then71.done_crit_edge:                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end75:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %74)
  %cmp76 = icmp ugt i32 %74, 256
  br i1 %cmp76, label %do.end81, label %if.end75.if.end93_crit_edge

if.end75.if.end93_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.iscsi_cls_conn, ptr %76, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.34, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %74) #12
  br label %if.end93

if.end93:                                         ; preds = %do.end81, %if.end75.if.end93_crit_edge
  %datalen.0 = phi i32 [ 256, %do.end81 ], [ %74, %if.end75.if.end93_crit_edge ]
  %conn94 = getelementptr inbounds %struct.bnx2i_cmd, ptr %10, i32 0, i32 1
  %77 = ptrtoint ptr %conn94 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %conn94, align 4
  %ep.i = getelementptr inbounds %struct.bnx2i_conn, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ep.i, align 8
  %rqe_left.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %80, i32 0, i32 10, i32 38
  %81 = ptrtoint ptr %rqe_left.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rqe_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i, label %if.end93.bnx2i_get_rq_buf.exit_crit_edge, label %if.end.i

if.end93.bnx2i_get_rq_buf.exit_crit_edge:         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_get_rq_buf.exit

if.end.i:                                         ; preds = %if.end93
  %data = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 14
  %83 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data, align 4
  %dec.i = add i32 %82, -1
  %85 = ptrtoint ptr %rqe_left.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %dec.i, ptr %rqe_left.i, align 4
  %86 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ep.i, align 8
  %rq_cons_qe.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %87, i32 0, i32 10, i32 33
  %88 = ptrtoint ptr %rq_cons_qe.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rq_cons_qe.i, align 4
  %90 = call ptr @memcpy(ptr %84, ptr %89, i32 %datalen.0)
  %91 = load ptr, ptr %ep.i, align 8
  %rq_cons_qe8.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %91, i32 0, i32 10, i32 33
  %92 = ptrtoint ptr %rq_cons_qe8.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rq_cons_qe8.i, align 4
  %rq_last_qe.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %91, i32 0, i32 10, i32 35
  %94 = ptrtoint ptr %rq_last_qe.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rq_last_qe.i, align 4
  %cmp.i = icmp eq ptr %93, %95
  br i1 %cmp.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rq_first_qe.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %91, i32 0, i32 10, i32 34
  %96 = ptrtoint ptr %rq_first_qe.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rq_first_qe.i, align 4
  %98 = ptrtoint ptr %rq_cons_qe8.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %rq_cons_qe8.i, align 4
  %99 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ep.i, align 8
  %rq_cons_idx.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %100, i32 0, i32 10, i32 37
  %101 = ptrtoint ptr %rq_cons_idx.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %rq_cons_idx.i, align 2
  br label %bnx2i_get_rq_buf.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr %struct.rqe, ptr %93, i32 1
  %102 = ptrtoint ptr %rq_cons_qe8.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %incdec.ptr.i, ptr %rq_cons_qe8.i, align 4
  %103 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ep.i, align 8
  %rq_cons_idx24.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %104, i32 0, i32 10, i32 37
  %105 = ptrtoint ptr %rq_cons_idx24.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %rq_cons_idx24.i, align 2
  %inc.i = add i16 %106, 1
  store i16 %inc.i, ptr %rq_cons_idx24.i, align 2
  br label %bnx2i_get_rq_buf.exit

bnx2i_get_rq_buf.exit:                            ; preds = %if.else.i, %if.then11.i, %if.end93.bnx2i_get_rq_buf.exit_crit_edge
  %107 = ptrtoint ptr %conn94 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %conn94, align 4
  %ep.i155 = getelementptr inbounds %struct.bnx2i_conn, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %ep.i155 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ep.i155, align 8
  %qp.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %110, i32 0, i32 10
  %rq_prod_idx.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %110, i32 0, i32 10, i32 36
  %111 = ptrtoint ptr %rq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %rq_prod_idx.i, align 4
  %113 = and i16 %112, -32768
  %rqe_left.i156 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %110, i32 0, i32 10, i32 38
  %114 = ptrtoint ptr %rqe_left.i156 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rqe_left.i156, align 4
  %add.i = add i32 %115, 1
  store i32 %add.i, ptr %rqe_left.i156, align 4
  %116 = and i16 %112, 32767
  %conv14.i = add nuw i16 %116, 1
  store i16 %conv14.i, ptr %rq_prod_idx.i, align 4
  %conv17.i = zext i16 %conv14.i to i32
  %hba.i = getelementptr inbounds %struct.bnx2i_conn, ptr %108, i32 0, i32 1
  %117 = ptrtoint ptr %hba.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hba.i, align 4
  %max_rqes.i = getelementptr inbounds %struct.bnx2i_hba, ptr %118, i32 0, i32 14
  %119 = ptrtoint ptr %max_rqes.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max_rqes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %conv17.i)
  %cmp.i157 = icmp ult i32 %120, %conv17.i
  br i1 %cmp.i157, label %if.then.i, label %if.else.i159

if.then.i:                                        ; preds = %bnx2i_get_rq_buf.exit
  %rem.i = urem i32 %conv17.i, %120
  %conv24.i = trunc i32 %rem.i to i16
  %121 = ptrtoint ptr %rq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv24.i, ptr %rq_prod_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool.not.i158 = icmp eq i16 %113, 0
  br i1 %tobool.not.i158, label %if.then25.i, label %if.then.i.if.end36.i_crit_edge

if.then.i.if.end36.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then25.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv29.i = or i16 %conv24.i, -32768
  br label %if.end36.sink.split.i

if.else.i159:                                     ; preds = %bnx2i_get_rq_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or3464.i = or i16 %conv14.i, %113
  br label %if.end36.sink.split.i

if.end36.sink.split.i:                            ; preds = %if.else.i159, %if.then25.i
  %conv29.sink.i = phi i16 [ %conv29.i, %if.then25.i ], [ %or3464.i, %if.else.i159 ]
  %122 = ptrtoint ptr %rq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv29.sink.i, ptr %rq_prod_idx.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36.sink.split.i, %if.then.i.if.end36.i_crit_edge
  %hba37.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %110, i32 0, i32 1
  %123 = ptrtoint ptr %hba37.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hba37.i, align 4
  %cnic_dev_type.i = getelementptr inbounds %struct.bnx2i_hba, ptr %124, i32 0, i32 7
  %125 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %127 = and i32 %126, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool38.not.i = icmp eq i32 %127, 0
  br i1 %tobool38.not.i, label %do.body.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %rq_pgtbl_virt.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %110, i32 0, i32 10, i32 39
  %128 = ptrtoint ptr %rq_pgtbl_virt.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rq_pgtbl_virt.i, align 4
  %130 = ptrtoint ptr %rq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %rq_prod_idx.i, align 4
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %129, align 2
  br label %done

do.body.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  tail call void @arm_heavy_mb() #9
  %133 = ptrtoint ptr %rq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %rq_prod_idx.i, align 4
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #9
  %136 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %qp.i, align 4
  %add.ptr.i = getelementptr i8, ptr %137, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %135) #9, !srcloc !291
  br label %done

done:                                             ; preds = %do.body.i, %if.then39.i, %if.then71.done_crit_edge, %if.end66.done_crit_edge, %if.end58.done_crit_edge
  %datalen.1 = phi i32 [ 0, %if.end58.done_crit_edge ], [ %74, %if.then71.done_crit_edge ], [ 0, %if.end66.done_crit_edge ], [ %datalen.0, %if.then39.i ], [ %datalen.0, %do.body.i ]
  %data97 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 14
  %138 = ptrtoint ptr %data97 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data97, align 4
  %call98 = tail call i32 @__iscsi_complete_pdu(ptr noundef %3, ptr noundef %48, ptr noundef %139, i32 noundef %datalen.1) #9
  br label %fail

fail:                                             ; preds = %done, %entry.fail_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %back_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_iscsi_unmap_sg_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iscsi_complete_pdu(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_percpu_io_thread(ptr noundef %arg) #0 align 64 {
entry:
  %work_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %work_list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %work_list, i32 0, i32 1
  %1 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %work_list, ptr %work_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %work_list, ptr %0, align 4
  %3 = call i32 @llvm.read_register.i32(metadata !280) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  call void @set_user_nice(ptr noundef %6, i32 noundef -20) #9
  %call1185 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call1185, label %entry.__here142_crit_edge, label %while.body.lr.ph

entry.__here142_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here142

while.body.lr.ph:                                 ; preds = %entry
  %p_work_lock = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %arg, i32 0, i32 2
  %work_list3 = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %arg, i32 0, i32 1
  %prev2.i.i = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %arg, i32 0, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %__here.while.body_crit_edge, %while.body.lr.ph
  call void @_raw_spin_lock_bh(ptr noundef %p_work_lock) #9
  %7 = ptrtoint ptr %work_list3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %work_list3, align 4
  %cmp.i.not184 = icmp eq ptr %8, %work_list3
  br i1 %cmp.i.not184, label %while.body.__here_crit_edge, label %while.body.while.body6_crit_edge

while.body.while.body6_crit_edge:                 ; preds = %while.body
  br label %while.body6

while.body.__here_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

while.body6:                                      ; preds = %for.end.while.body6_crit_edge, %while.body.while.body6_crit_edge
  %9 = ptrtoint ptr %work_list3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %work_list3, align 4
  %cmp.i.not.i = icmp eq ptr %10, %work_list3
  br i1 %cmp.i.not.i, label %while.body6.list_splice_init.exit_crit_edge, label %if.then.i

while.body6.list_splice_init.exit_crit_edge:      ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %work_list, align 4
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %work_list, ptr %prev3.i.i, align 4
  store ptr %10, ptr %work_list, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %14, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev6.i.i, align 4
  %18 = ptrtoint ptr %work_list3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %work_list3, ptr %work_list3, align 4
  store ptr %work_list3, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %while.body6.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %p_work_lock) #9
  %19 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %work_list, align 4
  %cmp.not181 = icmp eq ptr %20, %work_list
  br i1 %cmp.not181, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %work.0182 = phi ptr [ %tmp.0, %list_del_init.exit.for.body_crit_edge ], [ %20, %list_splice_init.exit.for.body_crit_edge ]
  %21 = ptrtoint ptr %work.0182 to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp.0 = load ptr, ptr %work.0182, align 4
  %call.i.i180 = call zeroext i1 @__list_del_entry_valid(ptr noundef %work.0182) #9
  br i1 %call.i.i180, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.0182, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %work.0182 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %work.0182, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %28 = ptrtoint ptr %work.0182 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %work.0182, ptr %work.0182, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %work.0182, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %work.0182, ptr %prev.i3.i, align 4
  %session = getelementptr inbounds %struct.bnx2i_work, ptr %work.0182, i32 0, i32 1
  %30 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %session, align 4
  %bnx2i_conn = getelementptr inbounds %struct.bnx2i_work, ptr %work.0182, i32 0, i32 2
  %32 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bnx2i_conn, align 4
  %cqe = getelementptr inbounds %struct.bnx2i_work, ptr %work.0182, i32 0, i32 3
  %call18 = call i32 @bnx2i_process_scsi_cmd_resp(ptr noundef %31, ptr noundef %33, ptr noundef %cqe)
  %34 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bnx2i_conn, align 4
  %work_cnt = getelementptr inbounds %struct.bnx2i_conn, ptr %35, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %work_cnt, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %work_cnt, i32 1, i32 3, i32 1) #9
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %work_cnt, ptr %work_cnt, i32 1, ptr elementtype(i32) %work_cnt) #9, !srcloc !299
  call void @kfree(ptr noundef %work.0182) #9
  %cmp.not = icmp eq ptr %tmp.0, %work_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %p_work_lock) #9
  %37 = ptrtoint ptr %work_list3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %work_list3, align 4
  %cmp.i.not = icmp eq ptr %38, %work_list3
  br i1 %cmp.i.not, label %for.end.__here_crit_edge, label %for.end.while.body6_crit_edge

for.end.while.body6_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body6

for.end.__here_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %for.end.__here_crit_edge, %while.body.__here_crit_edge
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 212
  %41 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 ptrtoint (ptr blockaddress(@bnx2i_percpu_io_thread, %__here) to i32), ptr %task_state_change, align 4
  %42 = load ptr, ptr %task, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 1, ptr %42, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !300
  call void @_raw_spin_unlock_bh(ptr noundef %p_work_lock) #9
  call void @schedule() #9
  %call1 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call1, label %__here.__here142_crit_edge, label %__here.while.body_crit_edge

__here.while.body_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

__here.__here142_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here142

__here142:                                        ; preds = %__here.__here142_crit_edge, %entry.__here142_crit_edge
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %task_state_change146 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 212
  %46 = ptrtoint ptr %task_state_change146 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 ptrtoint (ptr blockaddress(@bnx2i_percpu_io_thread, %__here142) to i32), ptr %task_state_change146, align 4
  %47 = load ptr, ptr %task, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %47, align 128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %work_list) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_ulp_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_ulp_exit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_start(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_stop(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_indicate_kcqe(ptr noundef %context, ptr nocapture noundef readonly %kcqe, i32 noundef %num_cqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_cqe)
  %cmp150.not = icmp eq i32 %num_cqe, 0
  br i1 %cmp150.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %netdev.i111 = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 3
  %adapter_state = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 10
  %pcidev = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 2
  %pci_devno = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 39
  %pci_func = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 38
  br label %while.body

while.body:                                       ; preds = %if.end61.while.body_crit_edge, %while.body.lr.ph
  %i.0151 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end61.while.body_crit_edge ]
  %inc = add nuw i32 %i.0151, 1
  %arrayidx = getelementptr ptr, ptr %kcqe, i32 %i.0151
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %op_code = getelementptr inbounds %struct.iscsi_kcqe, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op_code to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %op_code, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %3, label %do.end50 [
    i8 32, label %if.then
    i8 16, label %if.then7
    i8 18, label %if.then13
    i8 20, label %if.then19
    i8 19, label %if.then34
    i8 33, label %if.then40
    i8 25, label %if.then46
  ]

if.then:                                          ; preds = %while.body
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %conv.i = trunc i32 %6 to i16
  %call.i = tail call ptr @bnx2i_get_conn_from_id(ptr noundef %context, i16 noundef zeroext %conv.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %6) #12
  br label %if.end61

if.end.i:                                         ; preds = %if.then
  %ep.i = getelementptr inbounds %struct.bnx2i_conn, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep.i, align 8
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %6) #12
  br label %if.end61

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = tail call fastcc i32 @bnx2i_process_new_cqes(ptr noundef nonnull %call.i) #9
  %9 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep.i, align 8
  %hba.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %hba.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hba.i.i, align 4
  %cnic_dev_type.i.i = getelementptr inbounds %struct.bnx2i_hba, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %cnic_dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %cnic_dev_type.i.i, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.end9.i.if.end61_crit_edge, label %if.end.i.i

if.end9.i.if.end61_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.end.i.i:                                       ; preds = %if.end9.i
  %cq_pgtbl_virt.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %10, i32 0, i32 10, i32 26
  %16 = ptrtoint ptr %cq_pgtbl_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cq_pgtbl_virt.i.i, align 4
  %num_active_cmds20.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %10, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_cmds20.i.i, i32 noundef 4) #9
  %18 = ptrtoint ptr %num_active_cmds20.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %num_active_cmds20.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @event_coal_min to i32))
  %20 = load i32, ptr @event_coal_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp22.not.i.i = icmp ugt i32 %19, %20
  br i1 %cmp22.not.i.i, label %if.end33.i.i, label %if.end.i.i.bnx2i_arm_cq_event_coalescing.exit.i_crit_edge

if.end.i.i.bnx2i_arm_cq_event_coalescing.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_arm_cq_event_coalescing.exit.i

if.end33.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ec_shift.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %10, i32 0, i32 9
  %21 = ptrtoint ptr %ec_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ec_shift.i.i, align 4
  %shr.i.i = lshr i32 %19, %22
  %conv26.i.i = and i32 %shr.i.i, 65535
  %sub.i.i = sub i32 %19, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.i.i, i32 %sub.i.i)
  %cmp27.i.i = icmp ugt i32 %conv26.i.i, %sub.i.i
  %spec.select.v.i.i = select i1 %cmp27.i.i, i32 %sub.i.i, i32 %shr.i.i
  %spec.select.i.i = trunc i32 %spec.select.v.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select.i.i)
  %tobool34.not.i.i = icmp eq i16 %spec.select.i.i, 0
  %spec.select85.i.i = select i1 %tobool34.not.i.i, i16 1, i16 %spec.select.i.i
  br label %bnx2i_arm_cq_event_coalescing.exit.i

bnx2i_arm_cq_event_coalescing.exit.i:             ; preds = %if.end33.i.i, %if.end.i.i.bnx2i_arm_cq_event_coalescing.exit.i_crit_edge
  %23 = phi i16 [ 1, %if.end.i.i.bnx2i_arm_cq_event_coalescing.exit.i_crit_edge ], [ %spec.select85.i.i, %if.end33.i.i ]
  %cqe_exp_seq_sn.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %10, i32 0, i32 10, i32 25
  %24 = ptrtoint ptr %cqe_exp_seq_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cqe_exp_seq_sn.i.i, align 4
  %26 = trunc i32 %25 to i16
  %27 = add i16 %23, -1
  %conv40.i.i = add i16 %27, %26
  %conv41.i.i = zext i16 %conv40.i.i to i32
  %cqe_size.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %10, i32 0, i32 10, i32 24
  %28 = ptrtoint ptr %cqe_size.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cqe_size.i.i, align 4
  %mul.i.i = shl i32 %29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv41.i.i)
  %cmp43.i.i = icmp ult i32 %mul.i.i, %conv41.i.i
  %30 = trunc i32 %mul.i.i to i16
  %conv51.i.i = select i1 %cmp43.i.i, i16 %30, i16 0
  %cq_index.0.i.i = sub i16 %conv40.i.i, %conv51.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv40.i.i, i16 %conv51.i.i)
  %tobool53.not.i.i = icmp eq i16 %conv40.i.i, %conv51.i.i
  %spec.store.select63.i.i = select i1 %tobool53.not.i.i, i16 1, i16 %cq_index.0.i.i
  %sqn56.i.i = getelementptr inbounds %struct.bnx2i_5771x_cq_db, ptr %17, i32 0, i32 2
  %31 = ptrtoint ptr %sqn56.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %spec.store.select63.i.i, ptr %sqn56.i.i, align 4
  %phi.cast.i.i = zext i16 %23 to i32
  %call14.i = tail call fastcc i32 @bnx2i_process_new_cqes(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call14.i, i32 %phi.cast.i.i)
  %cmp.i = icmp eq i32 %call14.i, %phi.cast.i.i
  br i1 %cmp.i, label %if.then16.i, label %bnx2i_arm_cq_event_coalescing.exit.i.if.end61_crit_edge

bnx2i_arm_cq_event_coalescing.exit.i.if.end61_crit_edge: ; preds = %bnx2i_arm_cq_event_coalescing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then16.i:                                      ; preds = %bnx2i_arm_cq_event_coalescing.exit.i
  %32 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep.i, align 8
  %hba.i30.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %hba.i30.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hba.i30.i, align 4
  %cnic_dev_type.i31.i = getelementptr inbounds %struct.bnx2i_hba, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %cnic_dev_type.i31.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %cnic_dev_type.i31.i, align 4
  %38 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i32.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i32.i, label %if.then16.i.if.end61_crit_edge, label %if.end.i34.i

if.then16.i.if.end61_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.end.i34.i:                                     ; preds = %if.then16.i
  %cq_pgtbl_virt.i33.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %33, i32 0, i32 10, i32 26
  %39 = ptrtoint ptr %cq_pgtbl_virt.i33.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cq_pgtbl_virt.i33.i, align 4
  %num_active_cmds20.i35.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %33, i32 0, i32 8
  %call.i.i.i36.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_cmds20.i35.i, i32 noundef 4) #9
  %41 = ptrtoint ptr %num_active_cmds20.i35.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %num_active_cmds20.i35.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @event_coal_min to i32))
  %43 = load i32, ptr @event_coal_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %43)
  %cmp22.not.i37.i = icmp ugt i32 %42, %43
  br i1 %cmp22.not.i37.i, label %if.end33.i47.i, label %if.end.i34.i.if.end33.thread.i60.i_crit_edge

if.end.i34.i.if.end33.thread.i60.i_crit_edge:     ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.thread.i60.i

if.end33.i47.i:                                   ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  %ec_shift.i38.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %33, i32 0, i32 9
  %44 = ptrtoint ptr %ec_shift.i38.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ec_shift.i38.i, align 4
  %shr.i39.i = lshr i32 %42, %45
  %conv26.i40.i = and i32 %shr.i39.i, 65535
  %sub.i41.i = sub i32 %42, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.i40.i, i32 %sub.i41.i)
  %cmp27.i42.i = icmp ugt i32 %conv26.i40.i, %sub.i41.i
  %spec.select.v.i43.i = select i1 %cmp27.i42.i, i32 %sub.i41.i, i32 %shr.i39.i
  %spec.select.i44.i = trunc i32 %spec.select.v.i43.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select.i44.i)
  %tobool34.not.i45.i = icmp eq i16 %spec.select.i44.i, 0
  %spec.select.i44.op.i = add i16 %spec.select.i44.i, -1
  %phi.bo.i = select i1 %tobool34.not.i45.i, i16 0, i16 %spec.select.i44.op.i
  br label %if.end33.thread.i60.i

if.end33.thread.i60.i:                            ; preds = %if.end33.i47.i, %if.end.i34.i.if.end33.thread.i60.i_crit_edge
  %46 = phi i16 [ 0, %if.end.i34.i.if.end33.thread.i60.i_crit_edge ], [ %phi.bo.i, %if.end33.i47.i ]
  %cqe_exp_seq_sn.i48.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %33, i32 0, i32 10, i32 25
  %47 = ptrtoint ptr %cqe_exp_seq_sn.i48.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cqe_exp_seq_sn.i48.i, align 4
  %49 = trunc i32 %48 to i16
  %conv40.i49.i = add i16 %46, %49
  %conv41.i50.i = zext i16 %conv40.i49.i to i32
  %cqe_size.i51.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %33, i32 0, i32 10, i32 24
  %50 = ptrtoint ptr %cqe_size.i51.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cqe_size.i51.i, align 4
  %mul.i52.i = shl i32 %51, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i52.i, i32 %conv41.i50.i)
  %cmp43.i53.i = icmp ult i32 %mul.i52.i, %conv41.i50.i
  %52 = trunc i32 %mul.i52.i to i16
  %conv51.i54.i = select i1 %cmp43.i53.i, i16 %52, i16 0
  %cq_index.0.i55.i = sub i16 %conv40.i49.i, %conv51.i54.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv40.i49.i, i16 %conv51.i54.i)
  %tobool53.not.i56.i = icmp eq i16 %conv40.i49.i, %conv51.i54.i
  %spec.store.select63.i57.i = select i1 %tobool53.not.i56.i, i16 1, i16 %cq_index.0.i55.i
  %sqn56.i58.i = getelementptr inbounds %struct.bnx2i_5771x_cq_db, ptr %40, i32 0, i32 2
  %53 = ptrtoint ptr %sqn56.i58.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %spec.store.select63.i57.i, ptr %sqn56.i58.i, align 4
  br label %if.end61

if.then7:                                         ; preds = %while.body
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  %call.i89 = tail call ptr @bnx2i_find_ep_in_ofld_list(ptr noundef %context, i32 noundef %55) #9
  %tobool.not.i90 = icmp eq ptr %call.i89, null
  br i1 %tobool.not.i90, label %do.end.i92, label %if.end.i93

do.end.i92:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #12
  br label %if.end61

if.end.i93:                                       ; preds = %if.then7
  %hba2.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %call.i89, i32 0, i32 1
  %56 = ptrtoint ptr %hba2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hba2.i, align 4
  %cmp.not.i = icmp eq ptr %57, %context
  br i1 %cmp.not.i, label %if.end9.i96, label %do.end6.i95

do.end6.i95:                                      ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %if.end61

if.end9.i96:                                      ; preds = %if.end.i93
  %completion_status.i = getelementptr inbounds %struct.iscsi_kcqe, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %completion_status.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %completion_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool10.not.i = icmp eq i32 %59, 0
  %state50.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %call.i89, i32 0, i32 6
  br i1 %tobool10.not.i, label %if.else49.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i96
  %60 = ptrtoint ptr %state50.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 134217728, ptr %state50.i, align 4
  %61 = ptrtoint ptr %completion_status.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %completion_status.i, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %62, label %do.end39.i [
    i32 2, label %do.end17.i
    i32 1, label %do.end25.i
    i32 128, label %if.then34.i
  ]

do.end17.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %netdev.i111 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev.i111, align 8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %65) #12
  br label %if.end51.i

do.end25.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %netdev.i111 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev.i111, align 8
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %67) #12
  br label %if.end51.i

if.then34.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %state50.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -2147483648, ptr %state50.i, align 4
  br label %if.end51.i

do.end39.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %netdev.i111 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev.i111, align 8
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %70, i32 noundef %62) #12
  br label %if.end51.i

if.else49.i:                                      ; preds = %if.end9.i96
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %state50.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 8, ptr %state50.i, align 4
  %iscsi_conn_context_id.i = getelementptr inbounds %struct.iscsi_kcqe, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %iscsi_conn_context_id.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %iscsi_conn_context_id.i, align 4
  %ids.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %call.i89, i32 0, i32 11
  %74 = ptrtoint ptr %ids.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %ids.i, align 4
  %qp.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %call.i89, i32 0, i32 10
  %75 = ptrtoint ptr %qp.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %qp.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else49.i, %do.end39.i, %if.then34.i, %do.end25.i, %do.end17.i
  %ofld_wait.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %call.i89, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %ofld_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end61

if.then13:                                        ; preds = %while.body
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %1, align 4
  %conv.i97 = trunc i32 %77 to i16
  %call.i98 = tail call ptr @bnx2i_get_conn_from_id(ptr noundef %context, i16 noundef zeroext %conv.i97) #9
  %tobool.not.i99 = icmp eq ptr %call.i98, null
  br i1 %tobool.not.i99, label %do.end.i101, label %if.end.i104

do.end.i101:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %77) #12
  br label %if.end61

if.end.i104:                                      ; preds = %if.then13
  %ep.i102 = getelementptr inbounds %struct.bnx2i_conn, ptr %call.i98, i32 0, i32 6
  %78 = ptrtoint ptr %ep.i102 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ep.i102, align 8
  %tobool2.not.i103 = icmp eq ptr %79, null
  br i1 %tobool2.not.i103, label %do.end6.i106, label %if.end9.i109

do.end6.i106:                                     ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %77) #12
  br label %if.end61

if.end9.i109:                                     ; preds = %if.end.i104
  %completion_status.i107 = getelementptr inbounds %struct.iscsi_kcqe, ptr %1, i32 0, i32 1
  %80 = ptrtoint ptr %completion_status.i107 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %completion_status.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool10.not.i108 = icmp eq i32 %81, 0
  br i1 %tobool10.not.i108, label %if.end9.i109.if.end20.i_crit_edge, label %do.end14.i

if.end9.i109.if.end20.i_crit_edge:                ; preds = %if.end9.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

do.end14.i:                                       ; preds = %if.end9.i109
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %77) #12
  %82 = ptrtoint ptr %ep.i102 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ep.i102, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end14.i, %if.end9.i109.if.end20.i_crit_edge
  %.sink31.i = phi ptr [ %83, %do.end14.i ], [ %79, %if.end9.i109.if.end20.i_crit_edge ]
  %.sink.i = phi i32 [ 33554432, %do.end14.i ], [ 128, %if.end9.i109.if.end20.i_crit_edge ]
  %state19.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %.sink31.i, i32 0, i32 6
  %84 = ptrtoint ptr %state19.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink.i, ptr %state19.i, align 4
  %85 = ptrtoint ptr %ep.i102 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ep.i102, align 8
  %ofld_wait.i110 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %86, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %ofld_wait.i110, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end61

if.then19:                                        ; preds = %while.body
  %completion_status = getelementptr inbounds %struct.iscsi_kcqe, ptr %1, i32 0, i32 1
  %87 = ptrtoint ptr %completion_status to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %completion_status, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %88, label %if.then19.bnx2i_iscsi_license_error.exit_crit_edge [
    i32 0, label %if.else24
    i32 80, label %if.then19.if.end10.sink.split.i_crit_edge
    i32 81, label %do.end4.i
  ]

if.then19.if.end10.sink.split.i_crit_edge:        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split.i

if.then19.bnx2i_iscsi_license_error.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_iscsi_license_error.exit

do.end4.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %do.end4.i, %if.then19.if.end10.sink.split.i_crit_edge
  %.str.85.sink.i = phi ptr [ @.str.88, %do.end4.i ], [ @.str.85, %if.then19.if.end10.sink.split.i_crit_edge ]
  %90 = ptrtoint ptr %netdev.i111 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %netdev.i111, align 8
  %call.i112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.85.sink.i, ptr noundef %91) #12
  br label %bnx2i_iscsi_license_error.exit

bnx2i_iscsi_license_error.exit:                   ; preds = %if.end10.sink.split.i, %if.then19.bnx2i_iscsi_license_error.exit_crit_edge
  tail call void @_set_bit(i32 noundef 31, ptr noundef %adapter_state) #9
  br label %if.end61

if.else24:                                        ; preds = %if.then19
  tail call void @_set_bit(i32 noundef 0, ptr noundef %adapter_state) #9
  %92 = ptrtoint ptr %netdev.i111 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %netdev.i111, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %state.i, align 4
  %96 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i114 = icmp eq i32 %96, 0
  br i1 %tobool.not.i114, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %adapter_state) #9
  br label %bnx2i_get_link_state.exit

if.else.i:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %adapter_state) #9
  br label %bnx2i_get_link_state.exit

bnx2i_get_link_state.exit:                        ; preds = %if.else.i, %if.then.i
  %97 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pcidev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %number, align 4
  %conv25 = zext i8 %102 to i32
  %103 = ptrtoint ptr %pci_devno to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %pci_devno, align 2
  %conv26 = zext i16 %104 to i32
  %105 = ptrtoint ptr %pci_func to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %pci_func, align 8
  %107 = and i16 %106, 255
  %conv28 = zext i16 %107 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv25, i32 noundef %conv26, i32 noundef %conv28) #12
  br label %if.end61

if.then34:                                        ; preds = %while.body
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %1, align 4
  %call.i116 = tail call ptr @bnx2i_find_ep_in_destroy_list(ptr noundef %context, i32 noundef %109) #9
  %tobool.not.i117 = icmp eq ptr %call.i116, null
  br i1 %tobool.not.i117, label %do.end.i119, label %if.end.i122

do.end.i119:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #12
  br label %if.end61

if.end.i122:                                      ; preds = %if.then34
  %hba2.i120 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %call.i116, i32 0, i32 1
  %110 = ptrtoint ptr %hba2.i120 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hba2.i120, align 4
  %cmp.not.i121 = icmp eq ptr %111, %context
  br i1 %cmp.not.i121, label %if.end9.i127, label %do.end6.i124

do.end6.i124:                                     ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #12
  br label %if.end61

if.end9.i127:                                     ; preds = %if.end.i122
  %completion_status.i125 = getelementptr inbounds %struct.iscsi_kcqe, ptr %1, i32 0, i32 1
  %112 = ptrtoint ptr %completion_status.i125 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %completion_status.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool10.not.i126 = icmp eq i32 %113, 0
  br i1 %tobool10.not.i126, label %if.end9.i127.if.end18.i_crit_edge, label %do.end14.i129

if.end9.i127.if.end18.i_crit_edge:                ; preds = %if.end9.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

do.end14.i129:                                    ; preds = %if.end9.i127
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end14.i129, %if.end9.i127.if.end18.i_crit_edge
  %.sink.i130 = phi i32 [ 67108864, %do.end14.i129 ], [ 2048, %if.end9.i127.if.end18.i_crit_edge ]
  %114 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %call.i116, i32 0, i32 6
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %.sink.i130, ptr %114, align 4
  %ofld_wait.i131 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %call.i116, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %ofld_wait.i131, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end61

if.then40:                                        ; preds = %while.body
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %1, align 4
  %conv.i132 = trunc i32 %117 to i16
  %call.i133 = tail call ptr @bnx2i_get_conn_from_id(ptr noundef %context, i16 noundef zeroext %conv.i132) #9
  %tobool.not.i134 = icmp eq ptr %call.i133, null
  br i1 %tobool.not.i134, label %do.end.i136, label %if.end.i139

do.end.i136:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %117) #12
  br label %if.end61

if.end.i139:                                      ; preds = %if.then40
  %completion_status.i137 = getelementptr inbounds %struct.iscsi_kcqe, ptr %1, i32 0, i32 1
  %118 = ptrtoint ptr %completion_status.i137 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %completion_status.i137, align 4
  %sh_prom.i = zext i32 %119 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @iscsi_error_mask to i32))
  %120 = load i64, ptr @iscsi_error_mask, align 8
  %and.i = and i64 %shl.i, %120
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool2.not.i138 = icmp eq i64 %and.i, 0
  %.str.102..str.101.i = select i1 %tobool2.not.i138, ptr @.str.102, ptr @.str.101
  %121 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %119, label %do.end44.i [
    i32 5, label %if.end.i139.sw.epilog.i_crit_edge
    i32 6, label %sw.bb6.i
    i32 11, label %sw.bb7.i
    i32 12, label %sw.bb8.i
    i32 13, label %sw.bb9.i
    i32 14, label %sw.bb10.i
    i32 15, label %sw.bb11.i
    i32 16, label %sw.bb12.i
    i32 17, label %sw.bb13.i
    i32 18, label %sw.bb14.i
    i32 19, label %sw.bb15.i
    i32 20, label %sw.bb16.i
    i32 21, label %sw.bb17.i
    i32 22, label %sw.bb18.i
    i32 23, label %sw.bb19.i
    i32 24, label %sw.bb20.i
    i32 25, label %sw.bb21.i
    i32 26, label %sw.bb22.i
    i32 27, label %sw.bb23.i
    i32 28, label %sw.bb24.i
    i32 29, label %sw.bb25.i
    i32 31, label %sw.bb26.i
    i32 32, label %sw.bb27.i
    i32 33, label %sw.bb28.i
    i32 34, label %sw.bb29.i
    i32 35, label %sw.bb30.i
    i32 36, label %sw.bb31.i
    i32 37, label %sw.bb32.i
    i32 38, label %sw.bb33.i
    i32 39, label %sw.bb34.i
    i32 40, label %sw.bb35.i
    i32 41, label %sw.bb36.i
    i32 42, label %sw.bb37.i
    i32 43, label %sw.bb38.i
    i32 64, label %sw.bb39.i
    i32 65, label %sw.bb40.i
    i32 66, label %sw.bb41.i
  ]

if.end.i139.sw.epilog.i_crit_edge:                ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb31.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb33.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb34.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb36.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb37.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb38.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb39.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end44.i:                                       ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %119) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end44.i, %sw.bb41.i, %sw.bb40.i, %sw.bb39.i, %sw.bb38.i, %sw.bb37.i, %sw.bb36.i, %sw.bb35.i, %sw.bb34.i, %sw.bb33.i, %sw.bb32.i, %sw.bb31.i, %sw.bb30.i, %sw.bb29.i, %sw.bb28.i, %sw.bb27.i, %sw.bb26.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %if.end.i139.sw.epilog.i_crit_edge
  %additional_notice.0.i = phi ptr [ @.str.98, %do.end44.i ], [ @.str.139, %sw.bb41.i ], [ @.str.138, %sw.bb40.i ], [ @.str.137, %sw.bb39.i ], [ @.str.136, %sw.bb38.i ], [ @.str.135, %sw.bb37.i ], [ @.str.134, %sw.bb36.i ], [ @.str.133, %sw.bb35.i ], [ @.str.132, %sw.bb34.i ], [ @.str.131, %sw.bb33.i ], [ @.str.130, %sw.bb32.i ], [ @.str.129, %sw.bb31.i ], [ @.str.128, %sw.bb30.i ], [ @.str.127, %sw.bb29.i ], [ @.str.126, %sw.bb28.i ], [ @.str.125, %sw.bb27.i ], [ @.str.124, %sw.bb26.i ], [ @.str.123, %sw.bb25.i ], [ @.str.122, %sw.bb24.i ], [ @.str.121, %sw.bb23.i ], [ @.str.120, %sw.bb22.i ], [ @.str.119, %sw.bb21.i ], [ @.str.118, %sw.bb20.i ], [ @.str.117, %sw.bb19.i ], [ @.str.116, %sw.bb18.i ], [ @.str.115, %sw.bb17.i ], [ @.str.114, %sw.bb16.i ], [ @.str.113, %sw.bb15.i ], [ @.str.112, %sw.bb14.i ], [ @.str.111, %sw.bb13.i ], [ @.str.110, %sw.bb12.i ], [ @.str.109, %sw.bb11.i ], [ @.str.108, %sw.bb10.i ], [ @.str.107, %sw.bb9.i ], [ @.str.106, %sw.bb8.i ], [ @.str.105, %sw.bb7.i ], [ @.str.104, %sw.bb6.i ], [ @.str.103, %if.end.i139.sw.epilog.i_crit_edge ]
  br i1 %tobool2.not.i138, label %do.end52.i, label %if.else65.i

do.end52.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %call.i133 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call.i133, align 8
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dd_data.i, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 8
  %dev.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %127, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev.i, ptr noundef nonnull @.str.144, ptr noundef nonnull %.str.102..str.101.i, ptr noundef nonnull %additional_notice.0.i) #12
  %128 = ptrtoint ptr %call.i133 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call.i133, align 8
  %dd_data58.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %dd_data58.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dd_data58.i, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  %dev60.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %133, i32 0, i32 8
  %hba61.i = getelementptr inbounds %struct.bnx2i_conn, ptr %call.i133, i32 0, i32 1
  %134 = ptrtoint ptr %hba61.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hba61.i, align 4
  %shost.i = getelementptr inbounds %struct.bnx2i_hba, ptr %135, i32 0, i32 12
  %136 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %shost.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %137, i32 0, i32 17
  %138 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %host_no.i, align 4
  %ep.i140 = getelementptr inbounds %struct.bnx2i_conn, ptr %call.i133, i32 0, i32 6
  %140 = ptrtoint ptr %ep.i140 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ep.i140, align 8
  %ids.i141 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %141, i32 0, i32 11
  %drv_iscsi_cid.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %141, i32 0, i32 11, i32 1
  %142 = ptrtoint ptr %drv_iscsi_cid.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %drv_iscsi_cid.i, align 4
  %144 = ptrtoint ptr %ids.i141 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ids.i141, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev60.i, ptr noundef nonnull @.str.147, i32 noundef %139, ptr noundef nonnull %call.i133, i32 noundef %143, i32 noundef %145) #12
  %146 = ptrtoint ptr %call.i133 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %call.i133, align 8
  %dd_data.i.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %dd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dd_data.i.i, align 8
  tail call void @iscsi_conn_failure(ptr noundef %149, i32 noundef 1011) #9
  br label %if.end61

if.else65.i:                                      ; preds = %sw.epilog.i
  %150 = ptrtoint ptr %completion_status.i137 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %completion_status.i137, align 4
  %violation_notified.i = getelementptr inbounds %struct.bnx2i_conn, ptr %call.i133, i32 0, i32 8
  %call67.i = tail call i32 @_test_and_set_bit(i32 noundef %151, ptr noundef %violation_notified.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %do.end72.i, label %if.else65.i.if.end61_crit_edge

if.else65.i.if.end61_crit_edge:                   ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.end72.i:                                       ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %call.i133 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %call.i133, align 8
  %dd_data74.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %dd_data74.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dd_data74.i, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 8
  %dev76.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %157, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev76.i, ptr noundef nonnull @.str.144, ptr noundef nonnull %.str.102..str.101.i, ptr noundef nonnull %additional_notice.0.i) #12
  br label %if.end61

if.then46:                                        ; preds = %while.body
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %1, align 4
  %conv.i142 = trunc i32 %159 to i16
  %call.i143 = tail call ptr @bnx2i_get_conn_from_id(ptr noundef %context, i16 noundef zeroext %conv.i142) #9
  %tobool.not.i144 = icmp eq ptr %call.i143, null
  br i1 %tobool.not.i144, label %do.end.i146, label %do.end4.i149

do.end.i146:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %159) #12
  br label %if.end61

do.end4.i149:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %completion_status.i147 = getelementptr inbounds %struct.iscsi_kcqe, ptr %1, i32 0, i32 1
  %160 = ptrtoint ptr %completion_status.i147 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %completion_status.i147, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %159, i32 noundef %161) #12
  %162 = ptrtoint ptr %call.i143 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %call.i143, align 8
  %dd_data.i.i148 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %dd_data.i.i148 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dd_data.i.i148, align 8
  tail call void @iscsi_conn_failure(ptr noundef %165, i32 noundef 1011) #9
  br label %if.end61

do.end50:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv) #12
  br label %if.end61

if.end61:                                         ; preds = %do.end50, %do.end4.i149, %do.end.i146, %do.end72.i, %if.else65.i.if.end61_crit_edge, %do.end52.i, %do.end.i136, %if.end18.i, %do.end6.i124, %do.end.i119, %bnx2i_get_link_state.exit, %bnx2i_iscsi_license_error.exit, %if.end20.i, %do.end6.i106, %do.end.i101, %if.end51.i, %do.end6.i95, %do.end.i92, %if.end33.thread.i60.i, %if.then16.i.if.end61_crit_edge, %bnx2i_arm_cq_event_coalescing.exit.i.if.end61_crit_edge, %if.end9.i.if.end61_crit_edge, %do.end6.i, %do.end.i
  %exitcond.not = icmp eq i32 %inc, %num_cqe
  br i1 %exitcond.not, label %if.end61.while.end_crit_edge, label %if.end61.while.body_crit_edge

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end61.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_indicate_netevent(ptr noundef %context, i32 noundef %event, i16 noundef zeroext %vlan_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id)
  %cmp.not = icmp eq i16 %vlan_id, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 10, label %sw.bb8
    i32 4, label %sw.bb10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %adapter_state = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 10
  %1 = ptrtoint ptr %adapter_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %adapter_state, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @bnx2i_send_fw_iscsi_init_msg(ptr noundef %context)
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %adapter_state6 = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %adapter_state6) #9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %adapter_state6) #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %adapter_state9 = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %adapter_state9) #9
  %shost = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 12
  %3 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shost, align 4
  tail call void @iscsi_host_for_each_session(ptr noundef %4, ptr noundef nonnull @bnx2i_drop_session) #9
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  %netdev.i = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 3
  %5 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %adapter_state1.i = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %adapter_state1.i) #9
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %adapter_state1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %sw.bb8, %sw.bb5, %if.then2, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_cm_connect_cmpl(ptr noundef %cm_sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.cnic_sock, ptr %cm_sk, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %hba = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba, align 4
  %adapter_state = getelementptr inbounds %struct.bnx2i_hba, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %adapter_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %adapter_state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 268435456, ptr %state, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.cnic_sock, ptr %cm_sk, i32 0, i32 24
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  %state6 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 6
  br i1 %tobool2.not, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %state6, align 4
  br label %if.end7

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 268435456, ptr %state6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3, %if.then
  %ofld_wait = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %ofld_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_cm_close_cmpl(ptr nocapture noundef readonly %cm_sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.cnic_sock, ptr %cm_sk, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 512, ptr %state, align 4
  %ofld_wait = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %ofld_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_cm_abort_cmpl(ptr nocapture noundef readonly %cm_sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.cnic_sock, ptr %cm_sk, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 512, ptr %state, align 4
  %ofld_wait = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %ofld_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_cm_remote_close(ptr nocapture noundef readonly %cm_sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.cnic_sock, ptr %cm_sk, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %state, align 4
  %conn = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dd_data.i, align 8
  tail call void @iscsi_conn_failure(ptr noundef %8, i32 noundef 1011) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_cm_remote_abort(ptr nocapture noundef readonly %cm_sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.cnic_sock, ptr %cm_sk, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  store i32 8192, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp = icmp eq i32 %3, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ofld_wait = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %ofld_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end4

if.else:                                          ; preds = %entry
  %conn = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else.if.end4_crit_edge, label %if.then2

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd_data.i, align 8
  tail call void @iscsi_conn_failure(ptr noundef %9, i32 noundef 1011) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else.if.end4_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_send_nl_mesg(ptr noundef readonly %context, i32 noundef %msg_type, ptr noundef %buf, i16 noundef zeroext %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %context, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %shost = getelementptr inbounds %struct.bnx2i_hba, ptr %context, i32 0, i32 12
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 4
  %call = tail call i32 @iscsi_offload_mesg(ptr noundef %1, ptr noundef nonnull @bnx2i_iscsi_transport, i32 noundef %msg_type, ptr noundef %buf, i16 noundef zeroext %buflen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_get_stats(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_map_ep_dbell_regs(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hba.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %hba.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba.i, align 4
  %cnic_dev_type.i = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %ids1.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 11
  %5 = ptrtoint ptr %ids1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ids1.i, align 4
  %shr.i68 = lshr i32 %6, 7
  %cid.0.i = select i1 %tobool.not.i, i32 %shr.i68, i32 %6
  %7 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %pcidev = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %11, i32 0, i32 47, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 8
  %and = shl i32 %cid.0.i, 3
  %mul = and i32 %and, 1048568
  %add = add i32 %13, %mul
  %call3 = tail call ptr @ioremap(i32 noundef %add, i32 noundef 4) #9
  %qp = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10
  %14 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call3, ptr %qp, align 4
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.then.arm_cq_crit_edge

if.then.arm_cq_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %arm_cq

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %entry
  %15 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %if.end8.if.else28_crit_edge, label %land.lhs.true

if.end8.if.else28_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else28

land.lhs.true:                                    ; preds = %if.end8
  %mail_queue_access = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %mail_queue_access to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mail_queue_access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp eq i32 %19, 2
  br i1 %cmp, label %if.then14, label %land.lhs.true.if.else28_crit_edge

land.lhs.true.if.else28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else28

if.then14:                                        ; preds = %land.lhs.true
  %regview = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regview, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 15616
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !301
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !302
  %and19 = lshr i32 %23, 3
  %shr = and i32 %and19, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool20.not = icmp eq i32 %shr, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %and18 = and i32 %23, 7936
  %sub = sub i32 %cid.0.i, %and18
  %div = udiv i32 %sub, %shr
  %add22 = shl i32 %div, 12
  %add24 = add i32 %add22, 5308416
  br label %if.end31

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %mul25 = shl i32 %cid.0.i, 8
  %add26 = add i32 %mul25, 65536
  br label %if.end31

if.else28:                                        ; preds = %land.lhs.true.if.else28_crit_edge, %if.end8.if.else28_crit_edge
  %mul29 = shl i32 %cid.0.i, 8
  %add30 = add i32 %mul29, 65536
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.else, %if.then21
  %reg_off.0 = phi i32 [ %add24, %if.then21 ], [ %add26, %if.else ], [ %add30, %if.else28 ]
  %24 = ptrtoint ptr %hba.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hba.i, align 4
  %reg_base33 = getelementptr inbounds %struct.bnx2i_hba, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %reg_base33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_base33, align 8
  %add34 = add i32 %27, %reg_off.0
  %call35 = tail call ptr @ioremap(i32 noundef %add34, i32 noundef 256) #9
  %qp36 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10
  %28 = ptrtoint ptr %qp36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call35, ptr %qp36, align 4
  %tobool40.not = icmp eq ptr %call35, null
  br i1 %tobool40.not, label %if.end31.cleanup_crit_edge, label %if.end31.arm_cq_crit_edge

if.end31.arm_cq_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %arm_cq

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

arm_cq:                                           ; preds = %if.end31.arm_cq_crit_edge, %if.then.arm_cq_crit_edge
  %29 = ptrtoint ptr %hba.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hba.i, align 4
  %cnic_dev_type.i70 = getelementptr inbounds %struct.bnx2i_hba, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %cnic_dev_type.i70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %cnic_dev_type.i70, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i71 = icmp eq i32 %33, 0
  br i1 %tobool.not.i71, label %arm_cq.cleanup_crit_edge, label %if.end.i

arm_cq.cleanup_crit_edge:                         ; preds = %arm_cq
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %arm_cq
  %cq_pgtbl_virt.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 26
  %34 = ptrtoint ptr %cq_pgtbl_virt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cq_pgtbl_virt.i, align 4
  %sqn.i = getelementptr inbounds %struct.bnx2i_5771x_cq_db, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sqn.i, align 4
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.164)
  switch i16 %37, label %if.end.i.cleanup_crit_edge [
    i16 0, label %if.end.i.if.end12.i_crit_edge
    i16 -1, label %if.end.i.if.end12.i_crit_edge73
  ]

if.end.i.if.end12.i_crit_edge73:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge73
  %num_active_cmds20.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_cmds20.i, i32 noundef 4) #9
  %39 = ptrtoint ptr %num_active_cmds20.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %num_active_cmds20.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @event_coal_min to i32))
  %41 = load i32, ptr @event_coal_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %41)
  %cmp22.not.i = icmp ugt i32 %40, %41
  br i1 %cmp22.not.i, label %if.end33.i, label %if.end12.i.if.end33.thread.i_crit_edge

if.end12.i.if.end33.thread.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.thread.i

if.end33.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %ec_shift.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 9
  %42 = ptrtoint ptr %ec_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ec_shift.i, align 4
  %shr.i72 = lshr i32 %40, %43
  %conv26.i = and i32 %shr.i72, 65535
  %sub.i = sub i32 %40, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.i, i32 %sub.i)
  %cmp27.i = icmp ugt i32 %conv26.i, %sub.i
  %spec.select.v.i = select i1 %cmp27.i, i32 %sub.i, i32 %shr.i72
  %spec.select.i = trunc i32 %spec.select.v.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select.i)
  %tobool34.not.i = icmp eq i16 %spec.select.i, 0
  %spec.select.i.op = add i16 %spec.select.i, -1
  %phi.bo = select i1 %tobool34.not.i, i16 0, i16 %spec.select.i.op
  br label %if.end33.thread.i

if.end33.thread.i:                                ; preds = %if.end33.i, %if.end12.i.if.end33.thread.i_crit_edge
  %44 = phi i16 [ 0, %if.end12.i.if.end33.thread.i_crit_edge ], [ %phi.bo, %if.end33.i ]
  %cqe_exp_seq_sn.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 25
  %45 = ptrtoint ptr %cqe_exp_seq_sn.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cqe_exp_seq_sn.i, align 4
  %47 = trunc i32 %46 to i16
  %conv40.i = add i16 %44, %47
  %conv41.i = zext i16 %conv40.i to i32
  %cqe_size.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 10, i32 24
  %48 = ptrtoint ptr %cqe_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cqe_size.i, align 4
  %mul.i = shl i32 %49, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %conv41.i)
  %cmp43.i = icmp ult i32 %mul.i, %conv41.i
  %50 = trunc i32 %mul.i to i16
  %conv51.i = select i1 %cmp43.i, i16 %50, i16 0
  %cq_index.0.i = sub i16 %conv40.i, %conv51.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv40.i, i16 %conv51.i)
  %tobool53.not.i = icmp eq i16 %conv40.i, %conv51.i
  %spec.store.select63.i = select i1 %tobool53.not.i, i16 1, i16 %cq_index.0.i
  %51 = ptrtoint ptr %sqn.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %spec.store.select63.i, ptr %sqn.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33.thread.i, %if.end.i.cleanup_crit_edge, %arm_cq.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.end31.cleanup_crit_edge ], [ 0, %arm_cq.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end33.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnx2i_get_conn_from_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2i_process_new_cqes(ptr noundef %bnx2i_conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 8
  %session1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %session1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session1, align 8
  %hba2 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 1
  %6 = ptrtoint ptr %hba2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hba2, align 4
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %8 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cq_virt = getelementptr inbounds %struct.bnx2i_endpoint, ptr %9, i32 0, i32 10, i32 14
  %10 = ptrtoint ptr %cq_virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cq_virt, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %cq_cons_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %9, i32 0, i32 10, i32 18
  %cqe_exp_seq_sn = getelementptr inbounds %struct.bnx2i_endpoint, ptr %9, i32 0, i32 10, i32 25
  %12 = ptrtoint ptr %cq_cons_qe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cq_cons_qe, align 4
  %cq_req_sn326 = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %cq_req_sn326 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cq_req_sn326, align 4
  %16 = ptrtoint ptr %cqe_exp_seq_sn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cqe_exp_seq_sn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp7.not327 = icmp eq i32 %15, %17
  br i1 %cmp7.not327, label %if.end9.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.lr.ph:                                    ; preds = %while.cond.preheader
  %suspend_rx = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 22
  %netdev25 = getelementptr inbounds %struct.bnx2i_hba, ptr %7, i32 0, i32 3
  %back_lock.i317 = getelementptr inbounds %struct.iscsi_session, ptr %5, i32 0, i32 53
  %cmd_cleanup_cmpl.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 2
  %resp_hdr.i302 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4
  %reason2.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 2
  %dlength.i304 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 4
  %arrayidx9.i307 = getelementptr %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 4, i32 1
  %arrayidx14.i309 = getelementptr %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 4, i32 2
  %max_cmdsn.i311 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 10
  %exp_cmdsn.i313 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 9
  %ffffffff.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 6
  %flags.i289 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 1
  %lun.i290 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 5
  %async_event7.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 11
  %async_vcode8.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 11, i32 1
  %param19.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 11, i32 2
  %param210.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 11, i32 4
  %param311.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 11, i32 6
  %ttt1.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 7
  %hlength.i253 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 3
  %statsn.i257 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 8
  %resp_buf.i228 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 5
  %resp_wr_ptr.i230 = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 8
  %active_version.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 2, i32 1
  %tsih15.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 7, i32 4, i32 5, i32 0, i32 6
  %work_cnt.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 9
  %bnx2i_stats = getelementptr inbounds %struct.bnx2i_hba, ptr %7, i32 0, i32 48
  %rx_bytes = getelementptr inbounds %struct.bnx2i_hba, ptr %7, i32 0, i32 48, i32 1
  %cqe_size = getelementptr inbounds %struct.bnx2i_endpoint, ptr %9, i32 0, i32 10, i32 24
  %cq_last_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %9, i32 0, i32 10, i32 20
  %cq_cons_idx112 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %9, i32 0, i32 10, i32 22
  %cq_first_qe = getelementptr inbounds %struct.bnx2i_endpoint, ptr %9, i32 0, i32 10, i32 19
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.bnx2i_hba, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %19) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end114.if.end9_crit_edge, %if.end9.lr.ph
  %20 = phi ptr [ %13, %if.end9.lr.ph ], [ %508, %if.end114.if.end9_crit_edge ]
  %cqe_cnt.0328 = phi i32 [ 0, %if.end9.lr.ph ], [ %inc, %if.end114.if.end9_crit_edge ]
  %21 = ptrtoint ptr %suspend_rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %suspend_rx, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %20, align 4
  br i1 %tobool11.not, label %if.end30, label %if.then14, !prof !303

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %25)
  %cmp15 = icmp eq i8 %25, 32
  br i1 %cmp15, label %land.lhs.true, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then14
  %itt = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %20, i32 0, i32 15
  %26 = ptrtoint ptr %itt to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %itt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %cmp18 = icmp eq i16 %27, -1
  br i1 %cmp18, label %do.end23, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end23:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %netdev25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev25, align 8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %29) #12
  tail call fastcc void @bnx2i_unsol_pdu_adjust_rq(ptr noundef %bnx2i_conn)
  br label %cqe_out

if.end30:                                         ; preds = %if.end9
  %30 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.165)
  switch i8 %25, label %do.end62 [
    i8 33, label %if.end30.sw.bb_crit_edge
    i8 37, label %if.end30.sw.bb_crit_edge334
    i8 35, label %sw.bb34
    i8 34, label %sw.bb37
    i8 36, label %sw.bb40
    i8 38, label %sw.bb43
    i8 32, label %sw.bb46
    i8 0, label %sw.bb52
    i8 50, label %sw.bb54
    i8 63, label %sw.bb56
    i8 39, label %sw.bb58
  ]

if.end30.sw.bb_crit_edge334:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end30.sw.bb_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end30.sw.bb_crit_edge, %if.end30.sw.bb_crit_edge334
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i317) #9
  %31 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dd_data.i, align 8
  %itt.i = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %20, i32 0, i32 15
  %35 = ptrtoint ptr %itt.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %itt.i, align 2
  %37 = and i16 %36, 16383
  %and.i = zext i16 %37 to i32
  %call.i = tail call ptr @iscsi_itt_to_task(ptr noundef %34, i32 noundef %and.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %sc1.i = getelementptr inbounds %struct.iscsi_task, ptr %call.i, i32 0, i32 11
  %38 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sc1.i, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  br label %if.then77

if.end.i:                                         ; preds = %lor.lhs.false.i
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 -192
  %call8.i = tail call i32 @blk_mq_rq_cpu(ptr noundef %add.ptr.i.i.i) #9
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %41, ptrtoint (ptr @bnx2i_percpu to i32)
  %42 = inttoptr i32 %add.i to ptr
  %p_work_lock.i = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %42, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %p_work_lock.i) #9
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %tobool9.not.i = icmp eq ptr %44, null
  br i1 %tobool9.not.i, label %if.end.i.err.i_crit_edge, label %if.end14.i, !prof !304

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end14.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 2848, i32 noundef 80) #13
  %tobool16.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool16.not.i, label %if.end14.i.err.i_crit_edge, label %if.then17.i

if.end14.i.err.i_crit_edge:                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.then17.i:                                      ; preds = %if.end14.i
  %46 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %session18.i = getelementptr inbounds %struct.bnx2i_work, ptr %call7.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %session18.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %5, ptr %session18.i, align 8
  %bnx2i_conn19.i = getelementptr inbounds %struct.bnx2i_work, ptr %call7.i.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %bnx2i_conn19.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %bnx2i_conn, ptr %bnx2i_conn19.i, align 4
  %cqe20.i = getelementptr inbounds %struct.bnx2i_work, ptr %call7.i.i.i, i32 0, i32 3
  %50 = call ptr @memcpy(ptr %cqe20.i, ptr %20, i32 64)
  %work_list.i = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %42, i32 0, i32 1
  %prev.i1.i = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %42, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i1.i, align 4
  %call.i.i2.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %52, ptr noundef %work_list.i) #9
  br i1 %call.i.i2.i, label %if.end.i.i.i, label %if.then17.i.list_add_tail.exit.i_crit_edge

if.then17.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i.i, ptr %prev.i1.i, align 4
  %54 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %work_list.i, ptr %call7.i.i.i, align 8
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call7.i.i.i, ptr %52, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then17.i.list_add_tail.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %work_cnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %work_cnt.i, i32 1, i32 3, i32 1) #9
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %work_cnt.i, ptr %work_cnt.i, i32 1, ptr elementtype(i32) %work_cnt.i) #9, !srcloc !292
  %58 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %42, align 4
  %call23.i = tail call i32 @wake_up_process(ptr noundef %59) #9
  tail call void @_raw_spin_unlock(ptr noundef %p_work_lock.i) #9
  br label %if.then77

err.i:                                            ; preds = %if.end14.i.err.i_crit_edge, %if.end.i.err.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %p_work_lock.i) #9
  %call27.i = tail call i32 @bnx2i_process_scsi_cmd_resp(ptr noundef %5, ptr noundef %bnx2i_conn, ptr noundef %20) #9
  br label %if.then77

sw.bb34:                                          ; preds = %if.end30
  %60 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data.i183 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %dd_data.i183 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dd_data.i183, align 8
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i317) #9
  %itt.i185 = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 20
  %64 = ptrtoint ptr %itt.i185 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %itt.i185, align 2
  %66 = and i16 %65, 16383
  %and.i186 = zext i16 %66 to i32
  %call.i187 = tail call ptr @iscsi_itt_to_task(ptr noundef %63, i32 noundef %and.i186) #9
  %tobool.not.i188 = icmp eq ptr %call.i187, null
  br i1 %tobool.not.i188, label %sw.bb34.bnx2i_process_login_resp.exit_crit_edge, label %if.end.i190

sw.bb34.bnx2i_process_login_resp.exit_crit_edge:  ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_process_login_resp.exit

if.end.i190:                                      ; preds = %sw.bb34
  %67 = call ptr @memset(ptr %resp_hdr.i302, i32 0, i32 48)
  %68 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %20, align 4
  %70 = ptrtoint ptr %resp_hdr.i302 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %resp_hdr.i302, align 4
  %response_flags.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 1
  %71 = ptrtoint ptr %response_flags.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %response_flags.i, align 1
  %73 = ptrtoint ptr %flags.i289 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %flags.i289, align 1
  %version_max.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 2
  %74 = ptrtoint ptr %version_max.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %version_max.i, align 2
  %76 = ptrtoint ptr %reason2.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %reason2.i, align 2
  %version_active.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 3
  %77 = ptrtoint ptr %version_active.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %version_active.i, align 1
  %79 = ptrtoint ptr %active_version.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %active_version.i, align 1
  %80 = ptrtoint ptr %hlength.i253 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %hlength.i253, align 4
  %data_length.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 4
  %81 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_length.i, align 4
  %shr.i189 = lshr i32 %82, 16
  %conv3.i = trunc i32 %shr.i189 to i8
  %83 = ptrtoint ptr %dlength.i304 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv3.i, ptr %dlength.i304, align 1
  %84 = load i32, ptr %data_length.i, align 4
  %shr5.i = lshr i32 %84, 8
  %conv7.i = trunc i32 %shr5.i to i8
  %85 = ptrtoint ptr %arrayidx9.i307 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv7.i, ptr %arrayidx9.i307, align 1
  %86 = load i32, ptr %data_length.i, align 4
  %conv12.i = trunc i32 %86 to i8
  %87 = ptrtoint ptr %arrayidx14.i309 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv12.i, ptr %arrayidx14.i309, align 1
  %isid_lo.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 12
  %88 = call ptr @memcpy(ptr %lun.i290, ptr %isid_lo.i, i32 6)
  %tsih.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 14
  %89 = ptrtoint ptr %tsih.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %tsih.i, align 2
  %91 = ptrtoint ptr %tsih15.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %tsih15.i, align 2
  %92 = ptrtoint ptr %call.i187 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i187, align 4
  %itt16.i = getelementptr inbounds %struct.iscsi_hdr, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %itt16.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %itt16.i, align 4
  %96 = ptrtoint ptr %ffffffff.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %ffffffff.i, align 4
  %stat_sn.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 11
  %97 = ptrtoint ptr %stat_sn.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %stat_sn.i, align 4
  %99 = ptrtoint ptr %statsn.i257 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %statsn.i257, align 4
  %exp_cmd_sn.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 5
  %100 = ptrtoint ptr %exp_cmd_sn.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %exp_cmd_sn.i, align 4
  %102 = ptrtoint ptr %exp_cmdsn.i313 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %exp_cmdsn.i313, align 4
  %max_cmd_sn.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 6
  %103 = ptrtoint ptr %max_cmd_sn.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_cmd_sn.i, align 4
  %105 = ptrtoint ptr %max_cmdsn.i311 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %max_cmdsn.i311, align 4
  %status_class.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 15
  %106 = ptrtoint ptr %status_class.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %status_class.i, align 4
  %108 = ptrtoint ptr %async_event7.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %async_event7.i, align 4
  %status_detail.i = getelementptr inbounds %struct.bnx2i_login_response, ptr %20, i32 0, i32 16
  %109 = ptrtoint ptr %status_detail.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %status_detail.i, align 1
  %111 = ptrtoint ptr %async_vcode8.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %async_vcode8.i, align 1
  %112 = load i32, ptr %data_length.i, align 4
  %113 = ptrtoint ptr %resp_buf.i228 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %resp_buf.i228, align 4
  %add.ptr.i = getelementptr i8, ptr %114, i32 %112
  %115 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %add.ptr.i, ptr %resp_wr_ptr.i230, align 4
  %and23.i = and i32 %112, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %rem.i = srem i32 %112, 4
  br i1 %tobool24.not.i, label %if.end.i190.if.end35.i_crit_edge, label %for.body.i

if.end.i190.if.end35.i_crit_edge:                 ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.body.i:                                       ; preds = %if.end.i190
  %116 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %117, align 1
  %119 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i = getelementptr i8, ptr %119, i32 1
  store ptr %incdec.ptr.i, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.i)
  %exitcond.not.i = icmp eq i32 %rem.i, 3
  br i1 %exitcond.not.i, label %for.body.i.if.end35.i_crit_edge, label %for.body.i.1

for.body.i.if.end35.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.body.i.1:                                     ; preds = %for.body.i
  %120 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %121, align 1
  %123 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i.1 = getelementptr i8, ptr %123, i32 1
  store ptr %incdec.ptr.i.1, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i)
  %exitcond.not.i.1 = icmp eq i32 %rem.i, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.if.end35.i_crit_edge, label %for.body.i.2

for.body.i.1.if.end35.i_crit_edge:                ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %124 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %125, align 1
  %127 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i.2 = getelementptr i8, ptr %127, i32 1
  store ptr %incdec.ptr.i.2, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.i)
  %exitcond.not.i.2 = icmp eq i32 %rem.i, 1
  br i1 %exitcond.not.i.2, label %for.body.i.2.if.end35.i_crit_edge, label %for.body.i.3

for.body.i.2.if.end35.i_crit_edge:                ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.body.i.3:                                     ; preds = %for.body.i.2
  %128 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %129, align 1
  %131 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i.3 = getelementptr i8, ptr %131, i32 1
  store ptr %incdec.ptr.i.3, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %exitcond.not.i.3 = icmp eq i32 %rem.i, 0
  br i1 %exitcond.not.i.3, label %for.body.i.3.if.end35.i_crit_edge, label %for.body.i.4

for.body.i.3.if.end35.i_crit_edge:                ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.body.i.4:                                     ; preds = %for.body.i.3
  %132 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %133, align 1
  %135 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i.4 = getelementptr i8, ptr %135, i32 1
  store ptr %incdec.ptr.i.4, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rem.i)
  %exitcond.not.i.4 = icmp eq i32 %rem.i, -1
  br i1 %exitcond.not.i.4, label %for.body.i.4.if.end35.i_crit_edge, label %for.body.i.5

for.body.i.4.if.end35.i_crit_edge:                ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.body.i.5:                                     ; preds = %for.body.i.4
  %136 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %137, align 1
  %139 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i.5 = getelementptr i8, ptr %139, i32 1
  store ptr %incdec.ptr.i.5, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %rem.i)
  %exitcond.not.i.5 = icmp eq i32 %rem.i, -2
  br i1 %exitcond.not.i.5, label %for.body.i.5.if.end35.i_crit_edge, label %for.body.i.6

for.body.i.5.if.end35.i_crit_edge:                ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.body.i.6:                                     ; preds = %for.body.i.5
  %140 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %141, align 1
  %143 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i.6 = getelementptr i8, ptr %143, i32 1
  store ptr %incdec.ptr.i.6, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %rem.i)
  %exitcond.not.i.6 = icmp eq i32 %rem.i, -3
  br i1 %exitcond.not.i.6, label %for.body.i.6.if.end35.i_crit_edge, label %for.body.i.7

for.body.i.6.if.end35.i_crit_edge:                ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %145, align 1
  %147 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i.7 = getelementptr i8, ptr %147, i32 1
  store ptr %incdec.ptr.i.7, ptr %resp_wr_ptr.i230, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %for.body.i.7, %for.body.i.6.if.end35.i_crit_edge, %for.body.i.5.if.end35.i_crit_edge, %for.body.i.4.if.end35.i_crit_edge, %for.body.i.3.if.end35.i_crit_edge, %for.body.i.2.if.end35.i_crit_edge, %for.body.i.1.if.end35.i_crit_edge, %for.body.i.if.end35.i_crit_edge, %if.end.i190.if.end35.i_crit_edge
  %148 = ptrtoint ptr %resp_buf.i228 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %resp_buf.i228, align 4
  %150 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %151 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %149 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call42.i = tail call i32 @__iscsi_complete_pdu(ptr noundef %63, ptr noundef %resp_hdr.i302, ptr noundef %149, i32 noundef %sub.ptr.sub.i) #9
  br label %bnx2i_process_login_resp.exit

bnx2i_process_login_resp.exit:                    ; preds = %if.end35.i, %sw.bb34.bnx2i_process_login_resp.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  br label %done

sw.bb37:                                          ; preds = %if.end30
  %152 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data.i191 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %dd_data.i191 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dd_data.i191, align 8
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i317) #9
  %itt.i193 = getelementptr inbounds %struct.bnx2i_tmf_response, ptr %20, i32 0, i32 13
  %156 = ptrtoint ptr %itt.i193 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %itt.i193, align 2
  %158 = and i16 %157, 16383
  %and.i194 = zext i16 %158 to i32
  %call.i195 = tail call ptr @iscsi_itt_to_task(ptr noundef %155, i32 noundef %and.i194) #9
  %tobool.not.i196 = icmp eq ptr %call.i195, null
  br i1 %tobool.not.i196, label %sw.bb37.bnx2i_process_tmf_resp.exit_crit_edge, label %if.end.i202

sw.bb37.bnx2i_process_tmf_resp.exit_crit_edge:    ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_process_tmf_resp.exit

if.end.i202:                                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %159 = call ptr @memset(ptr %resp_hdr.i302, i32 0, i32 48)
  %160 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %20, align 4
  %162 = ptrtoint ptr %resp_hdr.i302 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %resp_hdr.i302, align 4
  %max_cmd_sn.i198 = getelementptr inbounds %struct.bnx2i_tmf_response, ptr %20, i32 0, i32 6
  %163 = ptrtoint ptr %max_cmd_sn.i198 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %max_cmd_sn.i198, align 4
  %165 = ptrtoint ptr %max_cmdsn.i311 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %max_cmdsn.i311, align 4
  %exp_cmd_sn.i200 = getelementptr inbounds %struct.bnx2i_tmf_response, ptr %20, i32 0, i32 5
  %166 = ptrtoint ptr %exp_cmd_sn.i200 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %exp_cmd_sn.i200, align 4
  %168 = ptrtoint ptr %exp_cmdsn.i313 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %exp_cmdsn.i313, align 4
  %169 = ptrtoint ptr %call.i195 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %call.i195, align 4
  %itt2.i = getelementptr inbounds %struct.iscsi_hdr, ptr %170, i32 0, i32 6
  %171 = ptrtoint ptr %itt2.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %itt2.i, align 4
  %173 = ptrtoint ptr %ffffffff.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %ffffffff.i, align 4
  %response.i = getelementptr inbounds %struct.bnx2i_tmf_response, ptr %20, i32 0, i32 2
  %174 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %response.i, align 2
  %176 = ptrtoint ptr %reason2.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %reason2.i, align 2
  %call5.i = tail call i32 @__iscsi_complete_pdu(ptr noundef %155, ptr noundef %resp_hdr.i302, ptr noundef null, i32 noundef 0) #9
  br label %bnx2i_process_tmf_resp.exit

bnx2i_process_tmf_resp.exit:                      ; preds = %if.end.i202, %sw.bb37.bnx2i_process_tmf_resp.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  br label %done

sw.bb40:                                          ; preds = %if.end30
  %177 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data.i203 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %dd_data.i203 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dd_data.i203, align 8
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i317) #9
  %itt.i205 = getelementptr inbounds %struct.bnx2i_text_response, ptr %20, i32 0, i32 15
  %181 = ptrtoint ptr %itt.i205 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %itt.i205, align 2
  %183 = and i16 %182, 16383
  %and.i206 = zext i16 %183 to i32
  %call.i207 = tail call ptr @iscsi_itt_to_task(ptr noundef %180, i32 noundef %and.i206) #9
  %tobool.not.i208 = icmp eq ptr %call.i207, null
  br i1 %tobool.not.i208, label %sw.bb40.bnx2i_process_text_resp.exit_crit_edge, label %if.end.i235

sw.bb40.bnx2i_process_text_resp.exit_crit_edge:   ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_process_text_resp.exit

if.end.i235:                                      ; preds = %sw.bb40
  %184 = call ptr @memset(ptr %resp_hdr.i302, i32 0, i32 48)
  %185 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %20, align 4
  %187 = ptrtoint ptr %resp_hdr.i302 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %resp_hdr.i302, align 4
  %response_flags.i210 = getelementptr inbounds %struct.bnx2i_text_response, ptr %20, i32 0, i32 1
  %188 = ptrtoint ptr %response_flags.i210 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %response_flags.i210, align 1
  %190 = ptrtoint ptr %flags.i289 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %flags.i289, align 1
  %191 = ptrtoint ptr %hlength.i253 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %hlength.i253, align 4
  %data_length.i213 = getelementptr inbounds %struct.bnx2i_text_response, ptr %20, i32 0, i32 3
  %192 = ptrtoint ptr %data_length.i213 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %data_length.i213, align 4
  %shr.i214 = lshr i32 %193, 16
  %conv3.i215 = trunc i32 %shr.i214 to i8
  %194 = ptrtoint ptr %dlength.i304 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv3.i215, ptr %dlength.i304, align 1
  %195 = load i32, ptr %data_length.i213, align 4
  %shr5.i217 = lshr i32 %195, 8
  %conv7.i218 = trunc i32 %shr5.i217 to i8
  %196 = ptrtoint ptr %arrayidx9.i307 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv7.i218, ptr %arrayidx9.i307, align 1
  %197 = load i32, ptr %data_length.i213, align 4
  %conv12.i220 = trunc i32 %197 to i8
  %198 = ptrtoint ptr %arrayidx14.i309 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv12.i220, ptr %arrayidx14.i309, align 1
  %199 = ptrtoint ptr %call.i207 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %call.i207, align 4
  %itt15.i = getelementptr inbounds %struct.iscsi_hdr, ptr %200, i32 0, i32 6
  %201 = ptrtoint ptr %itt15.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %itt15.i, align 4
  %203 = ptrtoint ptr %ffffffff.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %ffffffff.i, align 4
  %ttt.i = getelementptr inbounds %struct.bnx2i_text_response, ptr %20, i32 0, i32 6
  %204 = ptrtoint ptr %ttt.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %ttt.i, align 4
  %206 = ptrtoint ptr %ttt1.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %ttt1.i, align 4
  %207 = load ptr, ptr %call.i207, align 4
  %exp_statsn.i = getelementptr inbounds %struct.iscsi_hdr, ptr %207, i32 0, i32 9
  %208 = ptrtoint ptr %exp_statsn.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %exp_statsn.i, align 4
  %210 = ptrtoint ptr %statsn.i257 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %statsn.i257, align 4
  %exp_cmd_sn.i224 = getelementptr inbounds %struct.bnx2i_text_response, ptr %20, i32 0, i32 4
  %211 = ptrtoint ptr %exp_cmd_sn.i224 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %exp_cmd_sn.i224, align 4
  %213 = ptrtoint ptr %exp_cmdsn.i313 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %exp_cmdsn.i313, align 4
  %max_cmd_sn.i226 = getelementptr inbounds %struct.bnx2i_text_response, ptr %20, i32 0, i32 5
  %214 = ptrtoint ptr %max_cmd_sn.i226 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %max_cmd_sn.i226, align 4
  %216 = ptrtoint ptr %max_cmdsn.i311 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %max_cmdsn.i311, align 4
  %217 = load i32, ptr %data_length.i213, align 4
  %218 = ptrtoint ptr %resp_buf.i228 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %resp_buf.i228, align 4
  %add.ptr.i229 = getelementptr i8, ptr %219, i32 %217
  %220 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %add.ptr.i229, ptr %resp_wr_ptr.i230, align 4
  %and22.i = and i32 %217, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  %rem.i231 = srem i32 %217, 4
  br i1 %tobool23.not.i, label %if.end.i235.if.end34.i_crit_edge, label %for.body.i240

if.end.i235.if.end34.i_crit_edge:                 ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.body.i240:                                    ; preds = %if.end.i235
  %221 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %222, align 1
  %224 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i237 = getelementptr i8, ptr %224, i32 1
  store ptr %incdec.ptr.i237, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.i231)
  %exitcond.not.i239 = icmp eq i32 %rem.i231, 3
  br i1 %exitcond.not.i239, label %for.body.i240.if.end34.i_crit_edge, label %for.body.i240.1

for.body.i240.if.end34.i_crit_edge:               ; preds = %for.body.i240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.body.i240.1:                                  ; preds = %for.body.i240
  %225 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %226, align 1
  %228 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i237.1 = getelementptr i8, ptr %228, i32 1
  store ptr %incdec.ptr.i237.1, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i231)
  %exitcond.not.i239.1 = icmp eq i32 %rem.i231, 2
  br i1 %exitcond.not.i239.1, label %for.body.i240.1.if.end34.i_crit_edge, label %for.body.i240.2

for.body.i240.1.if.end34.i_crit_edge:             ; preds = %for.body.i240.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.body.i240.2:                                  ; preds = %for.body.i240.1
  %229 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 0, ptr %230, align 1
  %232 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i237.2 = getelementptr i8, ptr %232, i32 1
  store ptr %incdec.ptr.i237.2, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.i231)
  %exitcond.not.i239.2 = icmp eq i32 %rem.i231, 1
  br i1 %exitcond.not.i239.2, label %for.body.i240.2.if.end34.i_crit_edge, label %for.body.i240.3

for.body.i240.2.if.end34.i_crit_edge:             ; preds = %for.body.i240.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.body.i240.3:                                  ; preds = %for.body.i240.2
  %233 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 0, ptr %234, align 1
  %236 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i237.3 = getelementptr i8, ptr %236, i32 1
  store ptr %incdec.ptr.i237.3, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i231)
  %exitcond.not.i239.3 = icmp eq i32 %rem.i231, 0
  br i1 %exitcond.not.i239.3, label %for.body.i240.3.if.end34.i_crit_edge, label %for.body.i240.4

for.body.i240.3.if.end34.i_crit_edge:             ; preds = %for.body.i240.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.body.i240.4:                                  ; preds = %for.body.i240.3
  %237 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %238, align 1
  %240 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i237.4 = getelementptr i8, ptr %240, i32 1
  store ptr %incdec.ptr.i237.4, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rem.i231)
  %exitcond.not.i239.4 = icmp eq i32 %rem.i231, -1
  br i1 %exitcond.not.i239.4, label %for.body.i240.4.if.end34.i_crit_edge, label %for.body.i240.5

for.body.i240.4.if.end34.i_crit_edge:             ; preds = %for.body.i240.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.body.i240.5:                                  ; preds = %for.body.i240.4
  %241 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 0, ptr %242, align 1
  %244 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i237.5 = getelementptr i8, ptr %244, i32 1
  store ptr %incdec.ptr.i237.5, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %rem.i231)
  %exitcond.not.i239.5 = icmp eq i32 %rem.i231, -2
  br i1 %exitcond.not.i239.5, label %for.body.i240.5.if.end34.i_crit_edge, label %for.body.i240.6

for.body.i240.5.if.end34.i_crit_edge:             ; preds = %for.body.i240.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.body.i240.6:                                  ; preds = %for.body.i240.5
  %245 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 0, ptr %246, align 1
  %248 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i237.6 = getelementptr i8, ptr %248, i32 1
  store ptr %incdec.ptr.i237.6, ptr %resp_wr_ptr.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %rem.i231)
  %exitcond.not.i239.6 = icmp eq i32 %rem.i231, -3
  br i1 %exitcond.not.i239.6, label %for.body.i240.6.if.end34.i_crit_edge, label %for.body.i240.7

for.body.i240.6.if.end34.i_crit_edge:             ; preds = %for.body.i240.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.body.i240.7:                                  ; preds = %for.body.i240.6
  call void @__sanitizer_cov_trace_pc() #11
  %249 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 0, ptr %250, align 1
  %252 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %incdec.ptr.i237.7 = getelementptr i8, ptr %252, i32 1
  store ptr %incdec.ptr.i237.7, ptr %resp_wr_ptr.i230, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %for.body.i240.7, %for.body.i240.6.if.end34.i_crit_edge, %for.body.i240.5.if.end34.i_crit_edge, %for.body.i240.4.if.end34.i_crit_edge, %for.body.i240.3.if.end34.i_crit_edge, %for.body.i240.2.if.end34.i_crit_edge, %for.body.i240.1.if.end34.i_crit_edge, %for.body.i240.if.end34.i_crit_edge, %if.end.i235.if.end34.i_crit_edge
  %253 = ptrtoint ptr %resp_buf.i228 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %resp_buf.i228, align 4
  %255 = ptrtoint ptr %resp_wr_ptr.i230 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %resp_wr_ptr.i230, align 4
  %sub.ptr.lhs.cast.i241 = ptrtoint ptr %256 to i32
  %sub.ptr.rhs.cast.i242 = ptrtoint ptr %254 to i32
  %sub.ptr.sub.i243 = sub i32 %sub.ptr.lhs.cast.i241, %sub.ptr.rhs.cast.i242
  %call41.i = tail call i32 @__iscsi_complete_pdu(ptr noundef %180, ptr noundef %resp_hdr.i302, ptr noundef %254, i32 noundef %sub.ptr.sub.i243) #9
  br label %bnx2i_process_text_resp.exit

bnx2i_process_text_resp.exit:                     ; preds = %if.end34.i, %sw.bb40.bnx2i_process_text_resp.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  br label %done

sw.bb43:                                          ; preds = %if.end30
  %257 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data.i244 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %dd_data.i244 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dd_data.i244, align 8
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i317) #9
  %itt.i246 = getelementptr inbounds %struct.bnx2i_logout_response, ptr %20, i32 0, i32 16
  %261 = ptrtoint ptr %itt.i246 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %itt.i246, align 2
  %263 = and i16 %262, 16383
  %and.i247 = zext i16 %263 to i32
  %call.i248 = tail call ptr @iscsi_itt_to_task(ptr noundef %260, i32 noundef %and.i247) #9
  %tobool.not.i249 = icmp eq ptr %call.i248, null
  br i1 %tobool.not.i249, label %sw.bb43.bnx2i_process_logout_resp.exit_crit_edge, label %if.end.i262

sw.bb43.bnx2i_process_logout_resp.exit_crit_edge: ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_process_logout_resp.exit

if.end.i262:                                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  %264 = call ptr @memset(ptr %resp_hdr.i302, i32 0, i32 48)
  %265 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %20, align 4
  %267 = ptrtoint ptr %resp_hdr.i302 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %266, ptr %resp_hdr.i302, align 4
  %response.i251 = getelementptr inbounds %struct.bnx2i_logout_response, ptr %20, i32 0, i32 2
  %268 = ptrtoint ptr %response.i251 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %response.i251, align 2
  %270 = ptrtoint ptr %flags.i289 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %269, ptr %flags.i289, align 1
  %271 = ptrtoint ptr %hlength.i253 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 0, ptr %hlength.i253, align 4
  %272 = ptrtoint ptr %call.i248 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %call.i248, align 4
  %itt2.i254 = getelementptr inbounds %struct.iscsi_hdr, ptr %273, i32 0, i32 6
  %274 = ptrtoint ptr %itt2.i254 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %itt2.i254, align 4
  %276 = ptrtoint ptr %ffffffff.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %ffffffff.i, align 4
  %277 = load ptr, ptr %call.i248, align 4
  %exp_statsn.i256 = getelementptr inbounds %struct.iscsi_hdr, ptr %277, i32 0, i32 9
  %278 = ptrtoint ptr %exp_statsn.i256 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %exp_statsn.i256, align 4
  %280 = ptrtoint ptr %statsn.i257 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %279, ptr %statsn.i257, align 4
  %exp_cmd_sn.i258 = getelementptr inbounds %struct.bnx2i_logout_response, ptr %20, i32 0, i32 5
  %281 = ptrtoint ptr %exp_cmd_sn.i258 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %exp_cmd_sn.i258, align 4
  %283 = ptrtoint ptr %exp_cmdsn.i313 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %exp_cmdsn.i313, align 4
  %max_cmd_sn.i260 = getelementptr inbounds %struct.bnx2i_logout_response, ptr %20, i32 0, i32 6
  %284 = ptrtoint ptr %max_cmd_sn.i260 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %max_cmd_sn.i260, align 4
  %286 = ptrtoint ptr %max_cmdsn.i311 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %max_cmdsn.i311, align 4
  %time_to_wait.i = getelementptr inbounds %struct.bnx2i_logout_response, ptr %20, i32 0, i32 12
  %287 = ptrtoint ptr %time_to_wait.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %time_to_wait.i, align 4
  %289 = ptrtoint ptr %param210.i to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %288, ptr %param210.i, align 4
  %time_to_retain.i = getelementptr inbounds %struct.bnx2i_logout_response, ptr %20, i32 0, i32 13
  %290 = ptrtoint ptr %time_to_retain.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %time_to_retain.i, align 2
  %292 = ptrtoint ptr %param311.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %291, ptr %param311.i, align 2
  %call9.i = tail call i32 @__iscsi_complete_pdu(ptr noundef %260, ptr noundef %resp_hdr.i302, ptr noundef null, i32 noundef 0) #9
  %293 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %ep, align 8
  %state.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %294, i32 0, i32 6
  %295 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 32768, ptr %state.i, align 4
  br label %bnx2i_process_logout_resp.exit

bnx2i_process_logout_resp.exit:                   ; preds = %if.end.i262, %sw.bb43.bnx2i_process_logout_resp.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  br label %done

sw.bb46:                                          ; preds = %if.end30
  %296 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data.i263 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %dd_data.i263 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dd_data.i263, align 8
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i317) #9
  %300 = call ptr @memset(ptr %resp_hdr.i302, i32 0, i32 48)
  %301 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %20, align 4
  %303 = ptrtoint ptr %resp_hdr.i302 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %302, ptr %resp_hdr.i302, align 4
  %max_cmd_sn.i265 = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %20, i32 0, i32 5
  %304 = ptrtoint ptr %max_cmd_sn.i265 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %max_cmd_sn.i265, align 4
  %306 = ptrtoint ptr %max_cmdsn.i311 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %max_cmdsn.i311, align 4
  %exp_cmd_sn.i267 = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %20, i32 0, i32 4
  %307 = ptrtoint ptr %exp_cmd_sn.i267 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %exp_cmd_sn.i267, align 4
  %309 = ptrtoint ptr %exp_cmdsn.i313 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %exp_cmdsn.i313, align 4
  %ttt.i269 = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %20, i32 0, i32 6
  %310 = ptrtoint ptr %ttt.i269 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %ttt.i269, align 4
  %312 = ptrtoint ptr %ttt1.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %311, ptr %ttt1.i, align 4
  %itt.i270 = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %20, i32 0, i32 15
  %313 = ptrtoint ptr %itt.i270 to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %itt.i270, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %314)
  %cmp.i = icmp eq i16 %314, -1
  br i1 %cmp.i, label %if.then.i272, label %if.end.i276

if.then.i272:                                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bnx2i_unsol_pdu_adjust_rq(ptr noundef %bnx2i_conn) #9
  %315 = ptrtoint ptr %ffffffff.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 -1, ptr %ffffffff.i, align 4
  br label %bnx2i_process_nopin_mesg.exit

if.end.i276:                                      ; preds = %sw.bb46
  %316 = and i16 %314, 16383
  %and.i273 = zext i16 %316 to i32
  %call.i274 = tail call ptr @iscsi_itt_to_task(ptr noundef %299, i32 noundef %and.i273) #9
  %tobool.not.i275 = icmp eq ptr %call.i274, null
  br i1 %tobool.not.i275, label %if.end.i276.bnx2i_process_nopin_mesg.exit_crit_edge, label %if.then6.i

if.end.i276.bnx2i_process_nopin_mesg.exit_crit_edge: ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_process_nopin_mesg.exit

if.then6.i:                                       ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #11
  %317 = ptrtoint ptr %flags.i289 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 -128, ptr %flags.i289, align 1
  %318 = ptrtoint ptr %call.i274 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %call.i274, align 4
  %itt8.i = getelementptr inbounds %struct.iscsi_hdr, ptr %319, i32 0, i32 6
  %320 = ptrtoint ptr %itt8.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %itt8.i, align 4
  %322 = ptrtoint ptr %ffffffff.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %ffffffff.i, align 4
  %323 = ptrtoint ptr %ttt.i269 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %ttt.i269, align 4
  %325 = ptrtoint ptr %ttt1.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %ttt1.i, align 4
  %lun12.i = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %20, i32 0, i32 12
  %326 = ptrtoint ptr %lun12.i to i32
  call void @__asan_loadN_noabort(i32 %326, i32 8)
  %327 = load i64, ptr %lun12.i, align 4
  %328 = ptrtoint ptr %lun.i290 to i32
  call void @__asan_storeN_noabort(i32 %328, i32 8)
  store i64 %327, ptr %lun.i290, align 4
  br label %bnx2i_process_nopin_mesg.exit

bnx2i_process_nopin_mesg.exit:                    ; preds = %if.then6.i, %if.end.i276.bnx2i_process_nopin_mesg.exit_crit_edge, %if.then.i272
  %call14.i = tail call i32 @__iscsi_complete_pdu(ptr noundef %299, ptr noundef %resp_hdr.i302, ptr noundef null, i32 noundef 0) #9
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  %spec.select = zext i1 %cmp.i to i32
  br label %done

sw.bb52:                                          ; preds = %if.end30
  %329 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data.i278 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %330, i32 0, i32 1
  %331 = ptrtoint ptr %dd_data.i278 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dd_data.i278, align 8
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i317) #9
  %itt.i280 = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %20, i32 0, i32 15
  %333 = ptrtoint ptr %itt.i280 to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %itt.i280, align 2
  %335 = and i16 %334, 16383
  %and.i281 = zext i16 %335 to i32
  %call.i282 = tail call ptr @iscsi_itt_to_task(ptr noundef %332, i32 noundef %and.i281) #9
  %tobool.not.i283 = icmp eq ptr %call.i282, null
  br i1 %tobool.not.i283, label %sw.bb52.bnx2i_process_nopin_local_cmpl.exit_crit_edge, label %if.then.i284

sw.bb52.bnx2i_process_nopin_local_cmpl.exit_crit_edge: ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_process_nopin_local_cmpl.exit

if.then.i284:                                     ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__iscsi_put_task(ptr noundef nonnull %call.i282) #9
  br label %bnx2i_process_nopin_local_cmpl.exit

bnx2i_process_nopin_local_cmpl.exit:              ; preds = %if.then.i284, %sw.bb52.bnx2i_process_nopin_local_cmpl.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  br label %done

sw.bb54:                                          ; preds = %if.end30
  tail call fastcc void @bnx2i_unsol_pdu_adjust_rq(ptr noundef %bnx2i_conn) #9
  %async_event1.i = getelementptr inbounds %struct.bnx2i_async_msg, ptr %20, i32 0, i32 12
  %336 = ptrtoint ptr %async_event1.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %async_event1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %cmp.i286 = icmp eq i8 %337, 0
  br i1 %cmp.i286, label %do.end.i, label %if.end.i296

do.end.i:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %338 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data.i287 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %339, i32 0, i32 1
  %340 = ptrtoint ptr %dd_data.i287 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %dd_data.i287, align 8
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %341, align 8
  %dev.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %343, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev.i, ptr noundef nonnull @.str.59) #12
  br label %done

if.end.i296:                                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i317) #9
  %344 = call ptr @memset(ptr %resp_hdr.i302, i32 0, i32 48)
  %345 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %20, align 4
  %347 = ptrtoint ptr %resp_hdr.i302 to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %346, ptr %resp_hdr.i302, align 4
  %348 = ptrtoint ptr %flags.i289 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 -128, ptr %flags.i289, align 1
  %lun5.i = getelementptr inbounds %struct.bnx2i_async_msg, ptr %20, i32 0, i32 11
  %349 = ptrtoint ptr %lun5.i to i32
  call void @__asan_loadN_noabort(i32 %349, i32 8)
  %350 = load i64, ptr %lun5.i, align 4
  %351 = ptrtoint ptr %lun.i290 to i32
  call void @__asan_storeN_noabort(i32 %351, i32 8)
  store i64 %350, ptr %lun.i290, align 4
  %exp_cmd_sn.i291 = getelementptr inbounds %struct.bnx2i_async_msg, ptr %20, i32 0, i32 4
  %352 = ptrtoint ptr %exp_cmd_sn.i291 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %exp_cmd_sn.i291, align 4
  %354 = ptrtoint ptr %exp_cmdsn.i313 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %353, ptr %exp_cmdsn.i313, align 4
  %max_cmd_sn.i293 = getelementptr inbounds %struct.bnx2i_async_msg, ptr %20, i32 0, i32 5
  %355 = ptrtoint ptr %max_cmd_sn.i293 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %max_cmd_sn.i293, align 4
  %357 = ptrtoint ptr %max_cmdsn.i311 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %356, ptr %max_cmdsn.i311, align 4
  %358 = ptrtoint ptr %async_event1.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %async_event1.i, align 4
  %360 = ptrtoint ptr %async_event7.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %359, ptr %async_event7.i, align 4
  %async_vcode.i = getelementptr inbounds %struct.bnx2i_async_msg, ptr %20, i32 0, i32 13
  %361 = ptrtoint ptr %async_vcode.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %async_vcode.i, align 1
  %363 = ptrtoint ptr %async_vcode8.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %362, ptr %async_vcode8.i, align 1
  %param1.i = getelementptr inbounds %struct.bnx2i_async_msg, ptr %20, i32 0, i32 14
  %364 = ptrtoint ptr %param1.i to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %param1.i, align 2
  %366 = ptrtoint ptr %param19.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 %365, ptr %param19.i, align 2
  %param2.i = getelementptr inbounds %struct.bnx2i_async_msg, ptr %20, i32 0, i32 15
  %367 = ptrtoint ptr %param2.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %param2.i, align 4
  %369 = ptrtoint ptr %param210.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %368, ptr %param210.i, align 4
  %param3.i = getelementptr inbounds %struct.bnx2i_async_msg, ptr %20, i32 0, i32 16
  %370 = ptrtoint ptr %param3.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %param3.i, align 2
  %372 = ptrtoint ptr %param311.i to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 %371, ptr %param311.i, align 2
  %373 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data13.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %374, i32 0, i32 1
  %375 = ptrtoint ptr %dd_data13.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dd_data13.i, align 8
  %call.i295 = tail call i32 @__iscsi_complete_pdu(ptr noundef %376, ptr noundef %resp_hdr.i302, ptr noundef null, i32 noundef 0) #9
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  br label %done

sw.bb56:                                          ; preds = %if.end30
  %377 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data.i297 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %378, i32 0, i32 1
  %379 = ptrtoint ptr %dd_data.i297 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %dd_data.i297, align 8
  %data_length.i298 = getelementptr inbounds %struct.bnx2i_reject_msg, ptr %20, i32 0, i32 4
  %381 = ptrtoint ptr %data_length.i298 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %data_length.i298, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %382)
  %tobool.not.i299 = icmp eq i32 %382, 0
  br i1 %tobool.not.i299, label %if.else.i, label %if.then.i300

if.then.i300:                                     ; preds = %sw.bb56
  %383 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %ep, align 8
  %rqe_left.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %384, i32 0, i32 10, i32 38
  %385 = ptrtoint ptr %rqe_left.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %rqe_left.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool.not.i.i = icmp eq i32 %386, 0
  br i1 %tobool.not.i.i, label %if.then.i300.bnx2i_get_rq_buf.exit.i_crit_edge, label %if.end.i.i

if.then.i300.bnx2i_get_rq_buf.exit.i_crit_edge:   ; preds = %if.then.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_get_rq_buf.exit.i

if.end.i.i:                                       ; preds = %if.then.i300
  %data.i = getelementptr inbounds %struct.iscsi_conn, ptr %380, i32 0, i32 14
  %387 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %data.i, align 4
  %dec.i.i = add i32 %386, -1
  %389 = ptrtoint ptr %rqe_left.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %dec.i.i, ptr %rqe_left.i.i, align 4
  %390 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ep, align 8
  %rq_cons_qe.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %391, i32 0, i32 10, i32 33
  %392 = ptrtoint ptr %rq_cons_qe.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %rq_cons_qe.i.i, align 4
  %394 = call ptr @memcpy(ptr %388, ptr %393, i32 %382)
  %395 = load ptr, ptr %ep, align 8
  %rq_cons_qe8.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %395, i32 0, i32 10, i32 33
  %396 = ptrtoint ptr %rq_cons_qe8.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %rq_cons_qe8.i.i, align 4
  %rq_last_qe.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %395, i32 0, i32 10, i32 35
  %398 = ptrtoint ptr %rq_last_qe.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %rq_last_qe.i.i, align 4
  %cmp.i.i = icmp eq ptr %397, %399
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.else.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rq_first_qe.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %395, i32 0, i32 10, i32 34
  %400 = ptrtoint ptr %rq_first_qe.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %rq_first_qe.i.i, align 4
  %402 = ptrtoint ptr %rq_cons_qe8.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr %401, ptr %rq_cons_qe8.i.i, align 4
  %403 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %ep, align 8
  %rq_cons_idx.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %404, i32 0, i32 10, i32 37
  %405 = ptrtoint ptr %rq_cons_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 0, ptr %rq_cons_idx.i.i, align 2
  br label %bnx2i_get_rq_buf.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i.i = getelementptr %struct.rqe, ptr %397, i32 1
  %406 = ptrtoint ptr %rq_cons_qe8.i.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr %incdec.ptr.i.i, ptr %rq_cons_qe8.i.i, align 4
  %407 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %ep, align 8
  %rq_cons_idx24.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %408, i32 0, i32 10, i32 37
  %409 = ptrtoint ptr %rq_cons_idx24.i.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %rq_cons_idx24.i.i, align 2
  %inc.i.i = add i16 %410, 1
  store i16 %inc.i.i, ptr %rq_cons_idx24.i.i, align 2
  br label %bnx2i_get_rq_buf.exit.i

bnx2i_get_rq_buf.exit.i:                          ; preds = %if.else.i.i, %if.then11.i.i, %if.then.i300.bnx2i_get_rq_buf.exit.i_crit_edge
  %411 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %ep, align 8
  %qp.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %412, i32 0, i32 10
  %rq_prod_idx.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %412, i32 0, i32 10, i32 36
  %413 = ptrtoint ptr %rq_prod_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %rq_prod_idx.i.i, align 4
  %415 = and i16 %414, -32768
  %rqe_left.i44.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %412, i32 0, i32 10, i32 38
  %416 = ptrtoint ptr %rqe_left.i44.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %rqe_left.i44.i, align 4
  %add.i.i = add i32 %417, 1
  store i32 %add.i.i, ptr %rqe_left.i44.i, align 4
  %418 = and i16 %414, 32767
  %conv14.i.i = add nuw i16 %418, 1
  store i16 %conv14.i.i, ptr %rq_prod_idx.i.i, align 4
  %conv17.i.i = zext i16 %conv14.i.i to i32
  %419 = ptrtoint ptr %hba2 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %hba2, align 4
  %max_rqes.i.i = getelementptr inbounds %struct.bnx2i_hba, ptr %420, i32 0, i32 14
  %421 = ptrtoint ptr %max_rqes.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %max_rqes.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %422, i32 %conv17.i.i)
  %cmp.i45.i = icmp ult i32 %422, %conv17.i.i
  br i1 %cmp.i45.i, label %if.then.i.i, label %if.else.i47.i

if.then.i.i:                                      ; preds = %bnx2i_get_rq_buf.exit.i
  %rem.i.i = urem i32 %conv17.i.i, %422
  %conv24.i.i = trunc i32 %rem.i.i to i16
  %423 = ptrtoint ptr %rq_prod_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %423)
  store i16 %conv24.i.i, ptr %rq_prod_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %415)
  %tobool.not.i46.i = icmp eq i16 %415, 0
  br i1 %tobool.not.i46.i, label %if.then25.i.i, label %if.then.i.i.if.end36.i.i_crit_edge

if.then.i.i.if.end36.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.then25.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv29.i.i = or i16 %conv24.i.i, -32768
  br label %if.end36.sink.split.i.i

if.else.i47.i:                                    ; preds = %bnx2i_get_rq_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %or3464.i.i = or i16 %conv14.i.i, %415
  br label %if.end36.sink.split.i.i

if.end36.sink.split.i.i:                          ; preds = %if.else.i47.i, %if.then25.i.i
  %conv29.sink.i.i = phi i16 [ %conv29.i.i, %if.then25.i.i ], [ %or3464.i.i, %if.else.i47.i ]
  %424 = ptrtoint ptr %rq_prod_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 %conv29.sink.i.i, ptr %rq_prod_idx.i.i, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.end36.sink.split.i.i, %if.then.i.i.if.end36.i.i_crit_edge
  %hba37.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %412, i32 0, i32 1
  %425 = ptrtoint ptr %hba37.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %hba37.i.i, align 4
  %cnic_dev_type.i.i = getelementptr inbounds %struct.bnx2i_hba, ptr %426, i32 0, i32 7
  %427 = ptrtoint ptr %cnic_dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load volatile i32, ptr %cnic_dev_type.i.i, align 4
  %429 = and i32 %428, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %429)
  %tobool38.not.i.i = icmp eq i32 %429, 0
  br i1 %tobool38.not.i.i, label %do.body.i.i, label %if.then39.i.i

if.then39.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rq_pgtbl_virt.i.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %412, i32 0, i32 10, i32 39
  %430 = ptrtoint ptr %rq_pgtbl_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %rq_pgtbl_virt.i.i, align 4
  %432 = ptrtoint ptr %rq_prod_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %rq_prod_idx.i.i, align 4
  %434 = ptrtoint ptr %431 to i32
  call void @__asan_store2_noabort(i32 %434)
  store i16 %433, ptr %431, align 2
  br label %bnx2i_process_reject_mesg.exit

do.body.i.i:                                      ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  tail call void @arm_heavy_mb() #9
  %435 = ptrtoint ptr %rq_prod_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %rq_prod_idx.i.i, align 4
  %437 = tail call i16 @llvm.bswap.i16(i16 %436) #9
  %438 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %qp.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %439, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %437) #9, !srcloc !291
  br label %bnx2i_process_reject_mesg.exit

if.else.i:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bnx2i_unsol_pdu_adjust_rq(ptr noundef %bnx2i_conn) #9
  br label %bnx2i_process_reject_mesg.exit

bnx2i_process_reject_mesg.exit:                   ; preds = %if.else.i, %do.body.i.i, %if.then39.i.i
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i317) #9
  %440 = call ptr @memset(ptr %resp_hdr.i302, i32 0, i32 48)
  %441 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %20, align 4
  %443 = ptrtoint ptr %resp_hdr.i302 to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %442, ptr %resp_hdr.i302, align 4
  %reason.i = getelementptr inbounds %struct.bnx2i_reject_msg, ptr %20, i32 0, i32 2
  %444 = ptrtoint ptr %reason.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %reason.i, align 2
  %446 = ptrtoint ptr %reason2.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %445, ptr %reason2.i, align 2
  %447 = ptrtoint ptr %data_length.i298 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %data_length.i298, align 4
  %shr.i303 = lshr i32 %448, 16
  %conv.i = trunc i32 %shr.i303 to i8
  %449 = ptrtoint ptr %dlength.i304 to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 %conv.i, ptr %dlength.i304, align 1
  %450 = load i32, ptr %data_length.i298, align 4
  %shr5.i305 = lshr i32 %450, 8
  %conv7.i306 = trunc i32 %shr5.i305 to i8
  %451 = ptrtoint ptr %arrayidx9.i307 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 %conv7.i306, ptr %arrayidx9.i307, align 1
  %452 = load i32, ptr %data_length.i298, align 4
  %conv12.i308 = trunc i32 %452 to i8
  %453 = ptrtoint ptr %arrayidx14.i309 to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %conv12.i308, ptr %arrayidx14.i309, align 1
  %max_cmd_sn.i310 = getelementptr inbounds %struct.bnx2i_reject_msg, ptr %20, i32 0, i32 6
  %454 = ptrtoint ptr %max_cmd_sn.i310 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %max_cmd_sn.i310, align 4
  %456 = ptrtoint ptr %max_cmdsn.i311 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %455, ptr %max_cmdsn.i311, align 4
  %exp_cmd_sn.i312 = getelementptr inbounds %struct.bnx2i_reject_msg, ptr %20, i32 0, i32 5
  %457 = ptrtoint ptr %exp_cmd_sn.i312 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %exp_cmd_sn.i312, align 4
  %459 = ptrtoint ptr %exp_cmdsn.i313 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %458, ptr %exp_cmdsn.i313, align 4
  %460 = ptrtoint ptr %ffffffff.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 -1, ptr %ffffffff.i, align 4
  %data15.i = getelementptr inbounds %struct.iscsi_conn, ptr %380, i32 0, i32 14
  %461 = ptrtoint ptr %data15.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %data15.i, align 4
  %463 = load i32, ptr %data_length.i298, align 4
  %call.i314 = tail call i32 @__iscsi_complete_pdu(ptr noundef %380, ptr noundef %resp_hdr.i302, ptr noundef %462, i32 noundef %463) #9
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  br label %done

sw.bb58:                                          ; preds = %if.end30
  %464 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %bnx2i_conn, align 8
  %dd_data.i316 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %465, i32 0, i32 1
  %466 = ptrtoint ptr %dd_data.i316 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %dd_data.i316, align 8
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i317) #9
  %itt.i318 = getelementptr inbounds %struct.bnx2i_cleanup_response, ptr %20, i32 0, i32 10
  %468 = ptrtoint ptr %itt.i318 to i32
  call void @__asan_load2_noabort(i32 %468)
  %469 = load i16, ptr %itt.i318, align 2
  %470 = and i16 %469, 16383
  %and.i319 = zext i16 %470 to i32
  %call.i320 = tail call ptr @iscsi_itt_to_task(ptr noundef %467, i32 noundef %and.i319) #9
  %tobool.not.i321 = icmp eq ptr %call.i320, null
  br i1 %tobool.not.i321, label %do.end.i322, label %sw.bb58.bnx2i_process_cmd_cleanup_resp.exit_crit_edge

sw.bb58.bnx2i_process_cmd_cleanup_resp.exit_crit_edge: ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_process_cmd_cleanup_resp.exit

do.end.i322:                                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  %471 = ptrtoint ptr %itt.i318 to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %itt.i318, align 2
  %473 = and i16 %472, 16383
  %and3.i = zext i16 %473 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %and3.i) #12
  br label %bnx2i_process_cmd_cleanup_resp.exit

bnx2i_process_cmd_cleanup_resp.exit:              ; preds = %do.end.i322, %sw.bb58.bnx2i_process_cmd_cleanup_resp.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %back_lock.i317) #9
  tail call void @complete(ptr noundef %cmd_cleanup_cmpl.i) #9
  br label %done

do.end62:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %conv32 = zext i8 %25 to i32
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv32) #12
  br label %done

done:                                             ; preds = %do.end62, %bnx2i_process_cmd_cleanup_resp.exit, %bnx2i_process_reject_mesg.exit, %if.end.i296, %do.end.i, %bnx2i_process_nopin_local_cmpl.exit, %bnx2i_process_nopin_mesg.exit, %bnx2i_process_logout_resp.exit, %bnx2i_process_text_resp.exit, %bnx2i_process_tmf_resp.exit, %bnx2i_process_login_resp.exit
  %tgt_async_msg.0 = phi i32 [ 0, %do.end62 ], [ 0, %bnx2i_process_cmd_cleanup_resp.exit ], [ 0, %bnx2i_process_reject_mesg.exit ], [ 0, %bnx2i_process_nopin_local_cmpl.exit ], [ 0, %bnx2i_process_logout_resp.exit ], [ 0, %bnx2i_process_text_resp.exit ], [ 0, %bnx2i_process_tmf_resp.exit ], [ 0, %bnx2i_process_login_resp.exit ], [ 1, %do.end.i ], [ 1, %if.end.i296 ], [ %spec.select, %bnx2i_process_nopin_mesg.exit ]
  %474 = ptrtoint ptr %bnx2i_stats to i32
  call void @__asan_load8_noabort(i32 %474)
  %475 = load i64, ptr %bnx2i_stats, align 8
  %add = add i64 %475, 1
  store i64 %add, ptr %bnx2i_stats, align 8
  %data_length = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %20, i32 0, i32 3
  %476 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %data_length, align 4
  %conv71 = zext i32 %477 to i64
  %478 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %478)
  %479 = load i64, ptr %rx_bytes, align 8
  %add73 = add i64 %479, %conv71
  store i64 %add73, ptr %rx_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tgt_async_msg.0)
  %tobool76.not = icmp eq i32 %tgt_async_msg.0, 0
  br i1 %tobool76.not, label %done.if.then77_crit_edge, label %done.cqe_out_crit_edge

done.cqe_out_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqe_out

done.if.then77_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

if.then77:                                        ; preds = %done.if.then77_crit_edge, %err.i, %list_add_tail.exit.i, %if.then.i
  %480 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %ep, align 8
  %num_active_cmds = getelementptr inbounds %struct.bnx2i_endpoint, ptr %481, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_cmds, i32 noundef 4) #9
  %482 = ptrtoint ptr %num_active_cmds to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load volatile i32, ptr %num_active_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %483)
  %tobool80.not = icmp eq i32 %483, 0
  br i1 %tobool80.not, label %do.end84, label %if.else

do.end84:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %484 = ptrtoint ptr %netdev25 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %netdev25, align 8
  %486 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %20, align 4
  %conv90 = zext i8 %487 to i32
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %485, i32 noundef %conv90) #12
  br label %cqe_out

if.else:                                          ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %488 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %ep, align 8
  %num_active_cmds93 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %489, i32 0, i32 8
  %call.i.i182 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_active_cmds93, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %num_active_cmds93, i32 1, i32 3, i32 1) #9
  %490 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_active_cmds93, ptr %num_active_cmds93, i32 1, ptr elementtype(i32) %num_active_cmds93) #9, !srcloc !299
  br label %cqe_out

cqe_out:                                          ; preds = %if.else, %do.end84, %done.cqe_out_crit_edge, %do.end23
  %inc = add i32 %cqe_cnt.0328, 1
  %491 = ptrtoint ptr %cqe_exp_seq_sn to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %cqe_exp_seq_sn, align 4
  %inc97 = add i32 %492, 1
  %493 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %cqe_size, align 4
  %mul = shl i32 %494, 1
  %add99 = or i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc97, i32 %add99)
  %cmp100 = icmp eq i32 %inc97, %add99
  %spec.store.select = select i1 %cmp100, i32 1, i32 %inc97
  %495 = ptrtoint ptr %cqe_exp_seq_sn to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %spec.store.select, ptr %cqe_exp_seq_sn, align 4
  %496 = ptrtoint ptr %cq_cons_qe to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %cq_cons_qe, align 4
  %498 = ptrtoint ptr %cq_last_qe to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %cq_last_qe, align 4
  %cmp106 = icmp eq ptr %497, %499
  br i1 %cmp106, label %if.then108, label %if.else110

if.then108:                                       ; preds = %cqe_out
  call void @__sanitizer_cov_trace_pc() #11
  %500 = ptrtoint ptr %cq_first_qe to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %cq_first_qe, align 4
  %502 = ptrtoint ptr %cq_cons_qe to i32
  call void @__asan_store4_noabort(i32 %502)
  store ptr %501, ptr %cq_cons_qe, align 4
  br label %if.end114

if.else110:                                       ; preds = %cqe_out
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr %struct.cqe, ptr %497, i32 1
  %503 = ptrtoint ptr %cq_cons_qe to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr %incdec.ptr, ptr %cq_cons_qe, align 4
  %504 = ptrtoint ptr %cq_cons_idx112 to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %cq_cons_idx112, align 2
  %inc113 = add i16 %505, 1
  br label %if.end114

if.end114:                                        ; preds = %if.else110, %if.then108
  %storemerge = phi i16 [ %inc113, %if.else110 ], [ 0, %if.then108 ]
  %506 = ptrtoint ptr %cq_cons_idx112 to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 %storemerge, ptr %cq_cons_idx112, align 2
  %507 = ptrtoint ptr %cq_cons_qe to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %cq_cons_qe, align 4
  %cq_req_sn = getelementptr inbounds %struct.bnx2i_nop_in_msg, ptr %508, i32 0, i32 16
  %509 = ptrtoint ptr %cq_req_sn to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %cq_req_sn, align 4
  %511 = ptrtoint ptr %cqe_exp_seq_sn to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %cqe_exp_seq_sn, align 4
  %cmp7.not = icmp eq i32 %510, %512
  br i1 %cmp7.not, label %if.end114.if.end9_crit_edge, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end114.if.end9_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

cleanup:                                          ; preds = %if.end114.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %do.end, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %inc, %if.end114.cleanup_crit_edge ], [ %cqe_cnt.0328, %land.lhs.true.cleanup_crit_edge ], [ %cqe_cnt.0328, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2i_unsol_pdu_adjust_rq(ptr nocapture noundef readonly %bnx2i_conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 6
  %0 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep.i, align 8
  %rqe_left.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 10, i32 38
  %2 = ptrtoint ptr %rqe_left.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rqe_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.bnx2i_get_rq_buf.exit_crit_edge, label %if.end.i

entry.bnx2i_get_rq_buf.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_get_rq_buf.exit

if.end.i:                                         ; preds = %entry
  %dec.i = add i32 %3, -1
  %4 = ptrtoint ptr %rqe_left.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i, ptr %rqe_left.i, align 4
  %5 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep.i, align 8
  %rq_cons_qe.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %6, i32 0, i32 10, i32 33
  %7 = ptrtoint ptr %rq_cons_qe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rq_cons_qe.i, align 4
  %rq_last_qe.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %6, i32 0, i32 10, i32 35
  %9 = ptrtoint ptr %rq_last_qe.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rq_last_qe.i, align 4
  %cmp.i = icmp eq ptr %8, %10
  br i1 %cmp.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rq_first_qe.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %6, i32 0, i32 10, i32 34
  %11 = ptrtoint ptr %rq_first_qe.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq_first_qe.i, align 4
  %13 = ptrtoint ptr %rq_cons_qe.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %rq_cons_qe.i, align 4
  %14 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep.i, align 8
  %rq_cons_idx.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %15, i32 0, i32 10, i32 37
  %16 = ptrtoint ptr %rq_cons_idx.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %rq_cons_idx.i, align 2
  br label %bnx2i_get_rq_buf.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr %struct.rqe, ptr %8, i32 1
  %17 = ptrtoint ptr %rq_cons_qe.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %incdec.ptr.i, ptr %rq_cons_qe.i, align 4
  %18 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep.i, align 8
  %rq_cons_idx24.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %19, i32 0, i32 10, i32 37
  %20 = ptrtoint ptr %rq_cons_idx24.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rq_cons_idx24.i, align 2
  %inc.i = add i16 %21, 1
  store i16 %inc.i, ptr %rq_cons_idx24.i, align 2
  br label %bnx2i_get_rq_buf.exit

bnx2i_get_rq_buf.exit:                            ; preds = %if.else.i, %if.then11.i, %entry.bnx2i_get_rq_buf.exit_crit_edge
  %22 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep.i, align 8
  %qp.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %23, i32 0, i32 10
  %rq_prod_idx.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %23, i32 0, i32 10, i32 36
  %24 = ptrtoint ptr %rq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rq_prod_idx.i, align 4
  %26 = and i16 %25, -32768
  %rqe_left.i3 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %23, i32 0, i32 10, i32 38
  %27 = ptrtoint ptr %rqe_left.i3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rqe_left.i3, align 4
  %add.i = add i32 %28, 1
  store i32 %add.i, ptr %rqe_left.i3, align 4
  %29 = and i16 %25, 32767
  %conv14.i = add nuw i16 %29, 1
  store i16 %conv14.i, ptr %rq_prod_idx.i, align 4
  %conv17.i = zext i16 %conv14.i to i32
  %hba.i = getelementptr inbounds %struct.bnx2i_conn, ptr %bnx2i_conn, i32 0, i32 1
  %30 = ptrtoint ptr %hba.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hba.i, align 4
  %max_rqes.i = getelementptr inbounds %struct.bnx2i_hba, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %max_rqes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_rqes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv17.i)
  %cmp.i4 = icmp ult i32 %33, %conv17.i
  br i1 %cmp.i4, label %if.then.i, label %if.else.i6

if.then.i:                                        ; preds = %bnx2i_get_rq_buf.exit
  %rem.i = urem i32 %conv17.i, %33
  %conv24.i = trunc i32 %rem.i to i16
  %34 = ptrtoint ptr %rq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv24.i, ptr %rq_prod_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i5 = icmp eq i16 %26, 0
  br i1 %tobool.not.i5, label %if.then25.i, label %if.then.i.if.end36.i_crit_edge

if.then.i.if.end36.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then25.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv29.i = or i16 %conv24.i, -32768
  br label %if.end36.sink.split.i

if.else.i6:                                       ; preds = %bnx2i_get_rq_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or3464.i = or i16 %conv14.i, %26
  br label %if.end36.sink.split.i

if.end36.sink.split.i:                            ; preds = %if.else.i6, %if.then25.i
  %conv29.sink.i = phi i16 [ %conv29.i, %if.then25.i ], [ %or3464.i, %if.else.i6 ]
  %35 = ptrtoint ptr %rq_prod_idx.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv29.sink.i, ptr %rq_prod_idx.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36.sink.split.i, %if.then.i.if.end36.i_crit_edge
  %hba37.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %23, i32 0, i32 1
  %36 = ptrtoint ptr %hba37.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hba37.i, align 4
  %cnic_dev_type.i = getelementptr inbounds %struct.bnx2i_hba, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %40 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool38.not.i = icmp eq i32 %40, 0
  br i1 %tobool38.not.i, label %do.body.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %rq_pgtbl_virt.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %23, i32 0, i32 10, i32 39
  %41 = ptrtoint ptr %rq_pgtbl_virt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rq_pgtbl_virt.i, align 4
  %43 = ptrtoint ptr %rq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rq_prod_idx.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %42, align 2
  br label %bnx2i_put_rq_buf.exit

do.body.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %rq_prod_idx.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rq_prod_idx.i, align 4
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #9
  %49 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %qp.i, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %48) #9, !srcloc !291
  br label %bnx2i_put_rq_buf.exit

bnx2i_put_rq_buf.exit:                            ; preds = %do.body.i, %if.then39.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_rq_cpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iscsi_put_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnx2i_find_ep_in_ofld_list(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnx2i_find_ep_in_destroy_list(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_failure(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_for_each_session(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_drop_session(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_offload_mesg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !171, !172, !173, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279}
!llvm.named.register.sp = !{!280}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 565, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bnx2i_send_iscsi_nopout._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bnx2i_send_iscsi_nopout._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 665, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @bnx2i_update_iscsi_conn._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @bnx2i_update_iscsi_conn._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 691, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @bnx2i_ep_ofld_timer._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @bnx2i_ep_ofld_timer._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 694, i32 3}
!20 = !{ptr @bnx2i_ep_ofld_timer._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @bnx2i_ep_ofld_timer._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 697, i32 3}
!24 = !{ptr @bnx2i_ep_ofld_timer._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bnx2i_ep_ofld_timer._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1064, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bnx2i_alloc_qp_resc._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @bnx2i_alloc_qp_resc._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1074, i32 3}
!33 = !{ptr @bnx2i_alloc_qp_resc._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @bnx2i_alloc_qp_resc._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1100, i32 3}
!37 = !{ptr @bnx2i_alloc_qp_resc._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @bnx2i_alloc_qp_resc._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1110, i32 3}
!41 = !{ptr @bnx2i_alloc_qp_resc._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bnx2i_alloc_qp_resc._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1142, i32 3}
!45 = !{ptr @bnx2i_alloc_qp_resc._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bnx2i_alloc_qp_resc._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1152, i32 3}
!49 = !{ptr @bnx2i_alloc_qp_resc._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bnx2i_alloc_qp_resc._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1401, i32 4}
!53 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bnx2i_process_scsi_cmd_resp._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @bnx2i_process_scsi_cmd_resp._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1406, i32 4}
!59 = !{ptr @bnx2i_process_scsi_cmd_resp._entry.35, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bnx2i_process_scsi_cmd_resp._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1877, i32 3}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1881, i32 2}
!65 = !{ptr @bnx2i_cnic_cb, !66, !"bnx2i_cnic_cb", i1 false, i1 false}
!66 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2675, i32 21}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2500, i32 5}
!69 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bnx2i_indicate_kcqe._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @bnx2i_indicate_kcqe._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2515, i32 4}
!74 = !{ptr @bnx2i_indicate_kcqe._entry.41, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bnx2i_indicate_kcqe._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2097, i32 3}
!78 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @bnx2i_fastpath_notification._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @bnx2i_fastpath_notification._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2101, i32 3}
!83 = !{ptr @bnx2i_fastpath_notification._entry.46, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @bnx2i_fastpath_notification._entry_ptr.48, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1971, i32 3}
!87 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @bnx2i_process_new_cqes._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @bnx2i_process_new_cqes._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1983, i32 5}
!92 = !{ptr @bnx2i_process_new_cqes._entry.51, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @bnx2i_process_new_cqes._entry_ptr.53, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @bnx2i_process_new_cqes._entry.54, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2040, i32 4}
!96 = !{ptr @bnx2i_process_new_cqes._entry_ptr.55, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2049, i32 5}
!99 = !{ptr @bnx2i_process_new_cqes._entry.56, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @bnx2i_process_new_cqes._entry_ptr.58, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1754, i32 3}
!103 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @bnx2i_process_async_mesg._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @bnx2i_process_async_mesg._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 1840, i32 3}
!108 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @bnx2i_process_cmd_cleanup_resp._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @bnx2i_process_cmd_cleanup_resp._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2430, i32 3}
!113 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @bnx2i_process_ofld_cmpl._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @bnx2i_process_ofld_cmpl._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2435, i32 3}
!118 = !{ptr @bnx2i_process_ofld_cmpl._entry.65, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @bnx2i_process_ofld_cmpl._entry_ptr.67, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.69, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2443, i32 4}
!122 = !{ptr @bnx2i_process_ofld_cmpl._entry.68, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @bnx2i_process_ofld_cmpl._entry_ptr.70, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2448, i32 4}
!126 = !{ptr @bnx2i_process_ofld_cmpl._entry.71, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @bnx2i_process_ofld_cmpl._entry_ptr.73, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.75, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2455, i32 4}
!130 = !{ptr @bnx2i_process_ofld_cmpl._entry.74, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @bnx2i_process_ofld_cmpl._entry_ptr.76, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.77, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2130, i32 3}
!134 = !{ptr @.str.78, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @bnx2i_process_update_conn_cmpl._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @bnx2i_process_update_conn_cmpl._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.80, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2134, i32 3}
!139 = !{ptr @bnx2i_process_update_conn_cmpl._entry.79, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @bnx2i_process_update_conn_cmpl._entry_ptr.81, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.83, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2139, i32 3}
!143 = !{ptr @bnx2i_process_update_conn_cmpl._entry.82, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @bnx2i_process_update_conn_cmpl._entry_ptr.84, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.85, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 118, i32 3}
!147 = !{ptr @.str.86, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @bnx2i_iscsi_license_error._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @bnx2i_iscsi_license_error._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.88, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 122, i32 3}
!152 = !{ptr @bnx2i_iscsi_license_error._entry.87, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @bnx2i_iscsi_license_error._entry_ptr.89, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.90, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2395, i32 3}
!156 = !{ptr @.str.91, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @bnx2i_process_conn_destroy_cmpl._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @bnx2i_process_conn_destroy_cmpl._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.93, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2401, i32 3}
!161 = !{ptr @bnx2i_process_conn_destroy_cmpl._entry.92, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @bnx2i_process_conn_destroy_cmpl._entry_ptr.94, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.96, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2406, i32 3}
!165 = !{ptr @bnx2i_process_conn_destroy_cmpl._entry.95, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @bnx2i_process_conn_destroy_cmpl._entry_ptr.97, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.98, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2209, i32 34}
!169 = !{ptr @.str.99, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2217, i32 3}
!171 = !{ptr @.str.100, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @bnx2i_process_iscsi_error._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @bnx2i_process_iscsi_error._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.101, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2225, i32 13}
!176 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2228, i32 13}
!178 = !{ptr @.str.103, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2233, i32 23}
!180 = !{ptr @.str.104, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2236, i32 23}
!182 = !{ptr @.str.105, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2239, i32 23}
!184 = !{ptr @.str.106, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2242, i32 23}
!186 = !{ptr @.str.107, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2245, i32 23}
!188 = !{ptr @.str.108, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2248, i32 23}
!190 = !{ptr @.str.109, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2251, i32 23}
!192 = !{ptr @.str.110, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2254, i32 23}
!194 = !{ptr @.str.111, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2257, i32 23}
!196 = !{ptr @.str.112, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2260, i32 23}
!198 = !{ptr @.str.113, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2263, i32 23}
!200 = !{ptr @.str.114, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2266, i32 23}
!202 = !{ptr @.str.115, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2269, i32 23}
!204 = !{ptr @.str.116, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2272, i32 23}
!206 = !{ptr @.str.117, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2275, i32 23}
!208 = !{ptr @.str.118, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2278, i32 23}
!210 = !{ptr @.str.119, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2281, i32 23}
!212 = !{ptr @.str.120, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2284, i32 23}
!214 = !{ptr @.str.121, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2287, i32 23}
!216 = !{ptr @.str.122, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2290, i32 23}
!218 = !{ptr @.str.123, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2293, i32 23}
!220 = !{ptr @.str.124, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2296, i32 23}
!222 = !{ptr @.str.125, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2299, i32 23}
!224 = !{ptr @.str.126, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2302, i32 23}
!226 = !{ptr @.str.127, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2307, i32 23}
!228 = !{ptr @.str.128, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2312, i32 23}
!230 = !{ptr @.str.129, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2315, i32 23}
!232 = !{ptr @.str.130, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2318, i32 23}
!234 = !{ptr @.str.131, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2321, i32 23}
!236 = !{ptr @.str.132, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2326, i32 23}
!238 = !{ptr @.str.133, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2329, i32 23}
!240 = !{ptr @.str.134, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2332, i32 23}
!242 = !{ptr @.str.135, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2335, i32 23}
!244 = !{ptr @.str.136, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2340, i32 23}
!246 = !{ptr @.str.137, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2344, i32 23}
!248 = !{ptr @.str.138, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2347, i32 23}
!250 = !{ptr @.str.139, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2350, i32 23}
!252 = !{ptr @.str.141, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2353, i32 3}
!254 = !{ptr @bnx2i_process_iscsi_error._entry.140, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @bnx2i_process_iscsi_error._entry_ptr.142, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.144, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2358, i32 3}
!258 = !{ptr @bnx2i_process_iscsi_error._entry.143, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @bnx2i_process_iscsi_error._entry_ptr.145, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.147, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2363, i32 3}
!262 = !{ptr @bnx2i_process_iscsi_error._entry.146, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @bnx2i_process_iscsi_error._entry_ptr.148, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @bnx2i_process_iscsi_error._entry.149, !265, !"_entry", i1 false, i1 false}
!265 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2374, i32 4}
!266 = !{ptr @bnx2i_process_iscsi_error._entry_ptr.150, !265, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.151, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2181, i32 3}
!269 = !{ptr @bnx2i_process_tcp_error._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @bnx2i_process_tcp_error._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.153, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2185, i32 2}
!273 = !{ptr @bnx2i_process_tcp_error._entry.152, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @bnx2i_process_tcp_error._entry_ptr.154, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.155, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/bnx2i/bnx2i_hwi.c", i32 2665, i32 3}
!277 = !{ptr @.str.156, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @bnx2i_send_nl_mesg._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @bnx2i_send_nl_mesg._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{!"sp"}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{i64 2156948684}
!291 = !{i64 6031106}
!292 = !{i64 2148638588, i64 2148638614, i64 2148638643, i64 2148638677, i64 2148638708, i64 2148638731}
!293 = !{i64 2156949071}
!294 = !{i64 2156948056}
!295 = !{i64 6031726}
!296 = !{i64 2156949324}
!297 = !{!"auto-init"}
!298 = !{i32 0, i32 33}
!299 = !{i64 2148641053, i64 2148641079, i64 2148641108, i64 2148641142, i64 2148641173, i64 2148641196}
!300 = !{i64 2156992832}
!301 = !{i64 6032144}
!302 = !{i64 2157049006}
!303 = !{!"branch_weights", i32 2000, i32 1}
!304 = !{!"branch_weights", i32 1, i32 2000}
