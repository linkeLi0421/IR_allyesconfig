; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedi/qedi_main.c_pt.bc'
source_filename = "../drivers/scsi/qedi/qedi_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.107 }
%union.anon.107 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iscsi_transport = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qedi_percpu_s = type { ptr, %struct.list_head, %struct.spinlock }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_iscsi_cb_ops = type { %struct.qed_common_cb_ops }
%struct.qed_common_cb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_ll2_cb_ops = type { ptr, ptr }
%struct.qedi_debugfs_ops = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.qedi_portid_tbl = type { %struct.spinlock, i16, i16, i16, ptr }
%struct.qedi_endpoint = type { ptr, [4 x i32], [4 x i32], i16, i16, i16, i16, [6 x i8], [6 x i8], i8, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.iscsi_db_data, ptr, i32, i16, i16, i16, i32, ptr, i32, i32, ptr, %struct.work_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iscsi_db_data = type { i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.qedi_ctx = type { %struct.qedi_dbg_ctx, ptr, ptr, ptr, %struct.qed_dev_iscsi_info, %struct.qed_int_info, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, ptr, i32, i32, [6 x i8], [4 x i32], i8, i32, [256 x %struct.qedi_bdq_buf], ptr, i32, i32, ptr, i32, i8, ptr, i32, ptr, ptr, i16, i16, i32, i8, i32, i32, %struct.iscsi_cid_queue, ptr, %struct.qedi_portid_tbl, ptr, ptr, %struct.qed_iscsi_tid, %struct.atomic_t, [128 x i32], ptr, [4096 x i16], %struct.qed_pf_params, ptr, ptr, i16, ptr, %struct.delayed_work, %struct.delayed_work, %struct.spinlock, i32, i32, [2048 x %struct.qedi_io_log], %struct.spinlock, i16, i32, i32, i8, i32, i8, i32, i8, %struct.atomic_t, ptr, %struct.mutex }
%struct.qedi_dbg_ctx = type { i32, ptr, ptr }
%struct.qed_dev_iscsi_info = type { %struct.qed_dev_info, ptr, ptr, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.qedi_bdq_buf = type { ptr, i32 }
%struct.iscsi_cid_queue = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.qed_iscsi_tid = type { i32, i32, [512 x ptr] }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qedi_io_log = type { i8, i16, i32, i32, i32, i8, [4 x i8], i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.135, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.135 = type { ptr }
%struct.qedi_itt_map = type { i32, ptr }
%struct.qed_ll2_params = type { i16, i8, i8, i8, i8, [6 x i8] }
%struct.qed_iscsi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_ll2_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.skb_work_list = type { %struct.list_head, ptr, i16 }
%struct.qed_link_params = type { i8, i32, i8, [3 x i32], i32, i32, i32, %struct.qed_link_eee_params, i32 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_slowpath_params = type { i32, i8, i8, i8, i8, [12 x i8] }
%struct.qed_probe_params = type { i32, i32, i8, i8, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regpair = type { i32, i32 }
%struct.scsi_bd = type { %struct.regpair, %union.scsi_opaque }
%union.scsi_opaque = type { %struct.regpair }
%struct.iscsi_drv_opaque = type { [3 x i16], i16 }
%struct.global_queue = type { ptr, i32, i32, i32, ptr, i32, i32 }
%struct.qedi_fastpath = type { ptr, i16, [16 x i8], ptr }
%struct.qed_sb_info = type { ptr, i32, i32, i16, ptr, i8, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.qedi_uio_dev = type { %struct.uio_info, i32, %struct.list_head, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uio_info = type { ptr, ptr, ptr, [5 x %struct.uio_mem], [5 x %struct.uio_port], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uio_mem = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.uio_port = type { ptr, i32, i32, i32, ptr }
%struct.qedi_uio_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], [2 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.qedi_rx_bd = type { i32, i32, i16 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.93, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.93 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iscsi_eqe_data = type { i16, i16, i16, i8, i8 }
%union.iscsi_cqe = type { %struct.iscsi_cqe_common }
%struct.iscsi_cqe_common = type { i16, i8, %union.cqe_error_status, [3 x i32], %union.iscsi_task_hdr }
%union.cqe_error_status = type { i8 }
%union.iscsi_task_hdr = type { %struct.iscsi_common_hdr }
%struct.iscsi_common_hdr = type { i8, i8, i8, i8, i32, %struct.regpair, i32, i32, i32, i32, i32, [3 x i32] }
%struct.iscsi_cqe_solicited = type { i16, i8, %union.cqe_error_status, i16, i8, i8, i8, [3 x i8], i32, %union.iscsi_task_hdr }
%struct.qedi_cmd = type { %struct.list_head, i8, %struct.iscsi_hdr, ptr, ptr, ptr, %struct.qedi_io_bdt, %struct.iscsi_task_context, ptr, i32, i16, ptr, %struct.work_struct, i32, i32, ptr, i8, ptr, %struct.qedi_work }
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.qedi_io_bdt = type { ptr, i32, i16 }
%struct.iscsi_task_context = type { %struct.ystorm_iscsi_task_st_ctx, %struct.ystorm_iscsi_task_ag_ctx, [2 x %struct.regpair], %struct.tdif_task_context, %struct.mstorm_iscsi_task_ag_ctx, [2 x %struct.regpair], %struct.ustorm_iscsi_task_ag_ctx, %struct.mstorm_iscsi_task_st_ctx, %struct.ustorm_iscsi_task_st_ctx, %struct.rdif_task_context }
%struct.ystorm_iscsi_task_st_ctx = type { %struct.ystorm_iscsi_task_state, %struct.ystorm_iscsi_task_rxmit_opt, %union.iscsi_task_hdr }
%struct.ystorm_iscsi_task_state = type { %struct.scsi_cached_sges, %struct.scsi_sgl_params, i32, i32, %union.iscsi_seq_num, %struct.iscsi_dif_flags, i8 }
%struct.scsi_cached_sges = type { [4 x %struct.scsi_sge] }
%struct.scsi_sge = type { %struct.regpair, i32, i32 }
%struct.scsi_sgl_params = type { %struct.regpair, i32, i32, i16, i8, i8 }
%union.iscsi_seq_num = type { i16 }
%struct.iscsi_dif_flags = type { i8 }
%struct.ystorm_iscsi_task_rxmit_opt = type { i32, i32, i32, i8, i8, i16 }
%struct.ystorm_iscsi_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16 }
%struct.tdif_task_context = type { i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i16, i16, i32, [8 x i8], [8 x i8] }
%struct.mstorm_iscsi_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16 }
%struct.ustorm_iscsi_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32 }
%struct.mstorm_iscsi_task_st_ctx = type { %struct.scsi_cached_sges, %struct.scsi_sgl_params, i32, i32, i8, %struct.iscsi_dif_flags, i16, %struct.regpair, i32, i32 }
%struct.ustorm_iscsi_task_st_ctx = type { i32, i32, i32, %struct.regpair, %struct.iscsi_reg1, i8, %struct.iscsi_dif_flags, i16, %struct.tqe_opaque, i32, i32, i32, i8, i8, i8, i8 }
%struct.iscsi_reg1 = type { i32 }
%struct.tqe_opaque = type { [2 x i16] }
%struct.rdif_task_context = type { i32, i16, i16, i8, [7 x i8], i16, i16, i32, i16, i16, i32 }
%struct.qedi_work = type { %struct.list_head, ptr, %union.iscsi_cqe, i16, i8 }
%struct.status_block = type { [12 x i16], i32, i32 }
%struct.qed_generic_tlvs = type { i16, [3 x [6 x i8]] }
%struct.qed_mfw_tlv_iscsi = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i16, i8, i16, i8, i16, i8, i8, i8, i16, i8, i16, i8, i64, i8, i64, i8, i64, i8, i64, i8 }
%struct.qed_iscsi_stats = type { i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.nvm_iscsi_cfg = type { i32, [4 x %struct.nvm_iscsi_block] }
%struct.nvm_iscsi_block = type { i32, [5 x i32], %struct.nvm_iscsi_generic, %struct.nvm_iscsi_initiator, [4 x %struct.nvm_iscsi_target], [58 x i32] }
%struct.nvm_iscsi_generic = type { i32, i32, %union.nvm_iscsi_dhcp_vendor_id, [62 x i32] }
%union.nvm_iscsi_dhcp_vendor_id = type { [64 x i32] }
%struct.nvm_iscsi_initiator = type { %struct.nvm_iscsi_initiator_ipv4, %struct.nvm_iscsi_initiator_ipv6, %union.nvm_iscsi_name, %union.nvm_iscsi_chap_name, %union.nvm_iscsi_chap_password, i32, i32, [116 x i32] }
%struct.nvm_iscsi_initiator_ipv4 = type { %union.nvm_iscsi_ipv4_addr, %union.nvm_iscsi_ipv4_addr, %union.nvm_iscsi_ipv4_addr, %union.nvm_iscsi_ipv4_addr, %union.nvm_iscsi_ipv4_addr, %union.nvm_iscsi_ipv4_addr, %union.nvm_iscsi_ipv4_addr, %union.nvm_iscsi_ipv4_addr, %union.nvm_iscsi_ipv4_addr, %union.nvm_iscsi_ipv4_addr, [4 x %union.nvm_iscsi_ipv4_addr] }
%union.nvm_iscsi_ipv4_addr = type { i32 }
%struct.nvm_iscsi_initiator_ipv6 = type { %union.nvm_iscsi_ipv6_addr, %union.nvm_iscsi_ipv6_addr, %union.nvm_iscsi_ipv6_addr, %union.nvm_iscsi_ipv6_addr, %union.nvm_iscsi_ipv6_addr, %union.nvm_iscsi_ipv6_addr, %union.nvm_iscsi_ipv6_addr, %union.nvm_iscsi_ipv6_addr, %union.nvm_iscsi_ipv6_addr, %union.nvm_iscsi_ipv6_addr, [3 x %union.nvm_iscsi_ipv6_addr], i32, [3 x i32] }
%union.nvm_iscsi_ipv6_addr = type { [4 x i32] }
%union.nvm_iscsi_name = type { [64 x i32] }
%union.nvm_iscsi_chap_name = type { [64 x i32] }
%union.nvm_iscsi_chap_password = type { [4 x i32] }
%struct.nvm_iscsi_target = type { i32, i32, i32, [7 x i32], %union.nvm_iscsi_ipv4_addr, %union.nvm_iscsi_ipv6_addr, %union.nvm_iscsi_lun, %union.nvm_iscsi_name, %union.nvm_iscsi_chap_name, %union.nvm_iscsi_chap_password, [107 x i32] }
%union.nvm_iscsi_lun = type { [2 x i32] }
%struct.qedi_boot_target = type { [64 x i8], [255 x i8], i32 }
%struct.qedi_conn = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.generic_pdu_resc, %struct.list_head, %struct.wait_queue_head, %struct.spinlock, i8, i32 }
%struct.generic_pdu_resc = type { ptr, i32, i32, ptr, %struct.iscsi_hdr, ptr, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.iscsi_cls_conn = type { %struct.list_head, ptr, ptr, i32, %struct.mutex, ptr, i32, %struct.work_struct, %struct.device, i32 }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.136, [0 x i8] }
%union.anon.136 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_cls_session = type { %struct.list_head, ptr, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i8, %struct.delayed_work, i32, i8, i32, i32, i32, ptr, %struct.device }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_ethhdr = type { %union.anon.143, i16, i16, i16 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { [6 x i8], [6 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.109, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.110, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.111, ptr, %struct.address_space, %struct.list_head, %union.anon.112, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.109 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.110 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.111 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.112 = type { ptr }

@__param_str_qedi_qed_debug = internal constant [20 x i8] c"qedi.qedi_qed_debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@qedi_qed_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_qedi_qed_debug = internal constant %struct.kernel_param { ptr @__param_str_qedi_qed_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.107 { ptr @qedi_qed_debug } }, section "__param", align 4
@__UNIQUE_ID_qedi_qed_debugtype393 = internal constant [34 x i8] c"qedi.parmtype=qedi_qed_debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qedi_qed_debug394 = internal constant [54 x i8] c"qedi.parm=qedi_qed_debug: QED debug level 0 (default)\00", section ".modinfo", align 1
@__param_str_qedi_fw_debug = internal constant [19 x i8] c"qedi.qedi_fw_debug\00", align 1
@qedi_fw_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_qedi_fw_debug = internal constant %struct.kernel_param { ptr @__param_str_qedi_fw_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.107 { ptr @qedi_fw_debug } }, section "__param", align 4
@__UNIQUE_ID_qedi_fw_debugtype395 = internal constant [33 x i8] c"qedi.parmtype=qedi_fw_debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qedi_fw_debug396 = internal constant [62 x i8] c"qedi.parm=qedi_fw_debug: Firmware debug level 0(default) to 3\00", section ".modinfo", align 1
@qedi_dbg_log = dso_local global { i32, [28 x i8] } { i32 -2147483392, [28 x i8] zeroinitializer }, align 32
@__param_str_qedi_dbg_log = internal constant [18 x i8] c"qedi.qedi_dbg_log\00", align 1
@__param_qedi_dbg_log = internal constant %struct.kernel_param { ptr @__param_str_qedi_dbg_log, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.107 { ptr @qedi_dbg_log } }, section "__param", align 4
@__UNIQUE_ID_qedi_dbg_logtype397 = internal constant [32 x i8] c"qedi.parmtype=qedi_dbg_log:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qedi_dbg_log398 = internal constant [44 x i8] c"qedi.parm=qedi_dbg_log: Default debug level\00", section ".modinfo", align 1
@__param_str_qedi_io_tracing = internal constant [21 x i8] c"qedi.qedi_io_tracing\00", align 1
@qedi_io_tracing = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_qedi_io_tracing = internal constant %struct.kernel_param { ptr @__param_str_qedi_io_tracing, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.107 { ptr @qedi_io_tracing } }, section "__param", align 4
@__UNIQUE_ID_qedi_io_tracingtype399 = internal constant [35 x i8] c"qedi.parmtype=qedi_io_tracing:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qedi_io_tracing400 = internal constant [105 x i8] c"qedi.parm=qedi_io_tracing: Enable logging of SCSI requests/completions into trace buffer. (default off).\00", section ".modinfo", align 1
@__param_str_qedi_ll2_buf_size = internal constant [23 x i8] c"qedi.qedi_ll2_buf_size\00", align 1
@qedi_ll2_buf_size = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_qedi_ll2_buf_size = internal constant %struct.kernel_param { ptr @__param_str_qedi_ll2_buf_size, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.107 { ptr @qedi_ll2_buf_size } }, section "__param", align 4
@__UNIQUE_ID_qedi_ll2_buf_sizetype401 = internal constant [37 x i8] c"qedi.parmtype=qedi_ll2_buf_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qedi_ll2_buf_size402 = internal constant [104 x i8] c"qedi.parm=qedi_ll2_buf_size:parameter to set ping packet size, default - 0x400, Jumbo packets - 0x2400.\00", section ".modinfo", align 1
@__param_str_qedi_flags_override = internal constant [25 x i8] c"qedi.qedi_flags_override\00", align 1
@qedi_flags_override = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_qedi_flags_override = internal constant %struct.kernel_param { ptr @__param_str_qedi_flags_override, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.107 { ptr @qedi_flags_override } }, section "__param", align 4
@__UNIQUE_ID_qedi_flags_overridetype403 = internal constant [39 x i8] c"qedi.parmtype=qedi_flags_override:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qedi_flags_override404 = internal constant [74 x i8] c"qedi.parm=qedi_flags_override:Disable/Enable MFW error flags bits action.\00", section ".modinfo", align 1
@__func__.qedi_alloc_sq = private unnamed_addr constant [14 x i8] c"qedi_alloc_sq\00", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not allocate send queue.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not allocate send queue PBL.\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.qedi_get_task_idx = private unnamed_addr constant [18 x i8] c"qedi_get_task_idx\00", align 1
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FW task context pool is full.\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qedi_clear_task_idx = private unnamed_addr constant [20 x i8] c"qedi_clear_task_idx\00", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FW task context, already cleared, tid=0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.qedi_update_itt_map = private unnamed_addr constant [20 x i8] c"qedi_update_itt_map\00", align 1
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"update itt map tid=0x%x, with proto itt=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.qedi_get_task_tid = private unnamed_addr constant [18 x i8] c"qedi_get_task_tid\00", align 1
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Ref itt=0x%x, found at tid=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/qedi/qedi_main.c\00", [34 x i8] zeroinitializer }, align 32
@__func__.qedi_get_proto_itt = private unnamed_addr constant [19 x i8] c"qedi_get_proto_itt\00", align 1
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Get itt map tid [0x%x with proto itt[0x%x]\00", [53 x i8] zeroinitializer }, align 32
@qedi_ops = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.qedi_reset_host_mtu = private unnamed_addr constant [20 x i8] c"qedi_reset_host_mtu\00", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"old MTU %u, new MTU %u\0A\00", [40 x i8] zeroinitializer }, align 32
@qedi_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.10, ptr @qedi_pci_tbl, ptr @qedi_probe, ptr @qedi_remove, ptr null, ptr null, ptr @qedi_shutdown, ptr null, ptr null, ptr null, ptr @qedi_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@qedi_cpuhp_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@qedi_iscsi_transport = external dso_local global %struct.iscsi_transport, align 4
@__UNIQUE_ID_description429 = internal constant [52 x i8] c"qedi.description=QLogic FastLinQ 4xxxx iSCSI Module\00", section ".modinfo", align 1
@__UNIQUE_ID_file430 = internal constant [33 x i8] c"qedi.file=drivers/scsi/qedi/qedi\00", section ".modinfo", align 1
@__UNIQUE_ID_license431 = internal constant [17 x i8] c"qedi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author432 = internal constant [31 x i8] c"qedi.author=QLogic Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_version433 = internal constant [23 x i8] c"qedi.version=8.37.0.20\00", section ".modinfo", align 1
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qedi\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"8.37.0.20\00", [22 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.10, ptr @.str.11 }, section "__modver", align 4
@__initcall__kmod_qedi__434_2940_qedi_init6 = internal global ptr @qedi_init, section ".initcall6.init", align 4
@__exitcall_qedi_cleanup = internal global ptr @qedi_cleanup, section ".exitcall.exit", align 4
@__pcpu_unique_qedi_percpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@qedi_percpu = weak dso_local global %struct.qedi_percpu_s zeroinitializer, section ".data..percpu", align 4
@qedi_pci_tbl = internal global { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4215, i32 5726, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 32900, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@qedi_err_handler = internal global { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @qedi_io_error_detected, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__func__.__qedi_probe = private unnamed_addr constant [13 x i8] c"__qedi_probe\00", align 1
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Retry %d initialize hardware\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot initialize hardware\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dev_info: num_hwfns=%d affin_hwfn_idx=%d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set iSCSI pf param fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot start slowpath.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qedi iSCSI\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot start slowpath\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BDQ primary_prod=%p secondary_prod=%p.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Writing %d to primary and secondary BDQ doorbell registers.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MAC address is %pM.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"host_%d\00", [24 x i8] zeroinitializer }, align 32
@qedi_cb_ops = internal global { %struct.qed_iscsi_cb_ops, [32 x i8] } { %struct.qed_iscsi_cb_ops { %struct.qed_common_cb_ops { ptr null, ptr @qedi_link_update, ptr @qedi_schedule_recovery_handler, ptr @qedi_schedule_hw_err_handler, ptr null, ptr @qedi_get_generic_tlv_data, ptr @qedi_get_protocol_tlv_data, ptr null } }, [32 x i8] zeroinitializer }, align 32
@__qedi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&qedi->ll2_lock\00", [16 x i8] zeroinitializer }, align 32
@__qedi_probe.__key.24 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&qedi->hba_lock\00", [16 x i8] zeroinitializer }, align 32
@__qedi_probe.__key.26 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qedi->task_idx_lock\00", [43 x i8] zeroinitializer }, align 32
@__qedi_probe.__key.28 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&qedi->stats_lock\00", [46 x i8] zeroinitializer }, align 32
@qedi_ll2_cb_ops = internal global { %struct.qed_ll2_cb_ops, [24 x i8] } { %struct.qed_ll2_cb_ops { ptr @qedi_ll2_rx, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qedi_ll2_thread\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot start iSCSI function\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Task context start=%p, end=%p block_size=%u.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Link set up failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@qedi_debugfs_ops = external dso_local constant [0 x %struct.qedi_debugfs_ops], align 4
@qedi_dbg_fops = external dso_local constant [0 x %struct.file_operations], align 4
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"QLogic FastLinQ iSCSI Module qedi %s, FW %d.%d.%d.%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not add iscsi host\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UIO alloc ring failed err=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UIO init failed, err=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not setup cid que\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not alloc cm memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not alloc itt memory\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to start tmf thread!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qedi_ofld%d\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to start offload thread!\0A\00", [63 x i8] zeroinitializer }, align 32
@__qedi_probe.__key.45 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&qedi->recovery_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@__qedi_probe.__key.47 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&qedi->recovery_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@__qedi_probe.__key.49 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&qedi->board_disable_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@__qedi_probe.__key.51 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&qedi->board_disable_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No iSCSI boot target configured\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to send drv state to MFW\0A\00", [63 x i8] zeroinitializer }, align 32
@qedi_host_template = external dso_local global %struct.scsi_host_template, align 8
@__func__.qedi_host_alloc = private unnamed_addr constant [16 x i8] c"qedi_host_alloc\00", align 1
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not allocate shost\0A\00", [38 x i8] zeroinitializer }, align 32
@qedi_scsi_transport = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__func__.qedi_set_iscsi_pf_param = private unnamed_addr constant [24 x i8] c"qedi_set_iscsi_pf_param\00", align 1
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Number of CQ count is %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dma_alloc_coherent fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Global queue allocation failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qedi_alloc_global_queues = private unnamed_addr constant [25 x i8] c"qedi_alloc_global_queues\00", align 1
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No MSI-X vectors available!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unable to allocate global queues array ptr memory\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qedi->global_queues=%p.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to allocation global queue %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not allocate cq.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not allocate cq PBL.\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.qedi_alloc_bdq = private unnamed_addr constant [15 x i8] c"qedi_alloc_bdq\00", align 1
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not allocate BDQ buffer %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rq_num_entries = %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not allocate BDQ PBL.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pbl [0x%p] pbl->address hi [0x%llx] lo [0x%llx], idx [%d]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not allocate list of PBL pages.\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.qedi_alloc_nvm_iscsi_cfg = private unnamed_addr constant [25 x i8] c"qedi_alloc_nvm_iscsi_cfg\00", align 1
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not allocate NVM BUF.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NVM BUF addr=0x%p dma=0x%llx.\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qedi_prepare_fp = private unnamed_addr constant [16 x i8] c"qedi_prepare_fp\00", align 1
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SB allocation and initialization failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.qedi_alloc_fp = private unnamed_addr constant [14 x i8] c"qedi_alloc_fp\00", align 1
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fastpath fp array allocation failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fastpath sb array allocation failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-fp-%d\00", [23 x i8] zeroinitializer }, align 32
@__func__.qedi_alloc_and_init_sb = private unnamed_addr constant [23 x i8] c"qedi_alloc_and_init_sb\00", align 1
@.str.76 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Status block allocation failed for id = %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Status block initialization failed for id = %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.qedi_setup_int = private unnamed_addr constant [15 x i8] c"qedi_setup_int\00", align 1
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Number of msix_cnt = 0x%x num of cpus = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__func__.qedi_request_msix_irq = private unnamed_addr constant [22 x i8] c"qedi_request_msix_irq\00", align 1
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"request_irq failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__func__.qedi_msix_handler = private unnamed_addr constant [18 x i8] c"qedi_msix_handler\00", align 1
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"process already running\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.qedi_process_completions = private unnamed_addr constant [25 x i8] c"qedi_process_completions\00", align 1
@.str.81 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Before: global queue=%p prod_idx=%d cons_idx=%d, sb_id=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cqe=%p prod_idx=%d cons_idx=%d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Dropping CQE 0x%x for cid=0x%x.\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qedi_queue_cqe = private unnamed_addr constant [15 x i8] c"qedi_queue_cqe\00", align 1
@.str.84 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Session no longer exists for cid=0x%x!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FW Error cqe.\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.qedi_sync_free_irqs = private unnamed_addr constant [20 x i8] c"qedi_sync_free_irqs\00", align 1
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Freeing IRQ #%d vector_idx=%d.\0A\00", [32 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__func__.qedi_simd_int_handler = private unnamed_addr constant [22 x i8] c"qedi_simd_int_handler\00", align 1
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qedi=%p.\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.qedi_link_update = private unnamed_addr constant [17 x i8] c"qedi_link_update\00", align 1
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Link Up event.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Link Down event.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.qedi_schedule_recovery_handler = private unnamed_addr constant [31 x i8] c"qedi_schedule_recovery_handler\00", align 1
@.str.90 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Recovery handler scheduled.\0A\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__func__.qedi_schedule_hw_err_handler = private unnamed_addr constant [29 x i8] c"qedi_schedule_hw_err_handler\00", align 1
@.str.91 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"HW error handler scheduled, err=%d err_flags=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qedi_get_generic_tlv_data = private unnamed_addr constant [26 x i8] c"qedi_get_generic_tlv_data\00", align 1
@.str.92 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"dev is NULL so ignoring get_generic_tlv_data request.\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.qedi_get_protocol_tlv_data = private unnamed_addr constant [27 x i8] c"qedi_get_protocol_tlv_data\00", align 1
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not allocate memory for fw_iscsi_stats.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Boot target not set\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI4\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI6\0A\00", [26 x i8] zeroinitializer }, align 32
@__func__.qedi_ll2_rx = private unnamed_addr constant [12 x i8] c"qedi_ll2_rx\00", align 1
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qedi is NULL\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UIO DEV is not opened\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Dropping frame ethertype [0x%x] len [0x%x].\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Allowed frame ethertype [0x%x] len [0x%x].\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not allocate work so dropping frame.\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.qedi_ll2_process_skb = private unnamed_addr constant [21 x i8] c"qedi_ll2_process_skb\00", align 1
@.str.103 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"hw_rx_prod [%d] prod [%d] hw_rx_bd_prod [%d] rx_pkt_idx [%d] rx_len [%d].\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"host_rx_cons [%d] hw_rx_bd_cons [%d].\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.qedi_iscsi_event_cb = private unnamed_addr constant [20 x i8] c"qedi_iscsi_event_cb\00", align 1
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Recv event with ctx NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Recv Event %d fw_handle %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"icid=0x%x conn_id=0x%x err-code=0x%x error-pdu-opcode-reserved=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Cannot process event, ep already disconnected, cid=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Recv Unknown Event %u\0A\00", [41 x i8] zeroinitializer }, align 32
@qedi_udev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @qedi_udev_list, ptr @qedi_udev_list }, [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qedi_uio\00", [23 x i8] zeroinitializer }, align 32
@__func__.qedi_init_uio = private unnamed_addr constant [14 x i8] c"qedi_init_uio\00", align 1
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UIO registration failed\0A\00", [39 x i8] zeroinitializer }, align 32
@qedi_init_id_tbl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&id_tbl->lock\00", [18 x i8] zeroinitializer }, align 32
@__func__.qedi_alloc_itt = private unnamed_addr constant [15 x i8] c"qedi_alloc_itt\00", align 1
@.str.113 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to allocate itt map array memory\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.__qedi_remove = private unnamed_addr constant [14 x i8] c"__qedi_remove\00", align 1
@__func__.qedi_board_disable_work = private unnamed_addr constant [24 x i8] c"qedi_board_disable_work\00", align 1
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Fan failure, Unloading firmware context.\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.qedi_get_boot_info = private unnamed_addr constant [19 x i8] c"qedi_get_boot_info\00", align 1
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Get NVM iSCSI CFG image\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not get NVM image. ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.qedi_show_boot_tgt_info = private unnamed_addr constant [24 x i8] c"qedi_show_boot_tgt_info\00", align 1
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Port:%d, tgt_idx:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Target disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*d\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0::0\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.0.0.0\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3\0A\00", [29 x i8] zeroinitializer }, align 32
@__func__.qedi_shutdown = private unnamed_addr constant [14 x i8] c"qedi_shutdown\00", align 1
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Shutdown qedi\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qedi_io_error_detected = private unnamed_addr constant [23 x i8] c"qedi_io_error_detected\00", align 1
@.str.128 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: PCI error detected [%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Recovery already in progress.\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qedi_init = private unnamed_addr constant [10 x i8] c"qedi_init\00", align 1
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get qed iSCSI operations\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not register qedi transport\00", [62 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@qedi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&p->p_work_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scsi/qedi:online\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register driver\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qedi_thread/%d\00", [17 x i8] zeroinitializer }, align 32
@switch.table.qedi_tgt_get_attr_visibility = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292], [42 x i8] zeroinitializer }, align 32
@switch.table.qedi_eth_get_attr_visibility = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 0, i16 0, i16 0, i16 292, i16 292], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 8, i64 9, i64 11, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.137 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.138 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.142 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 10, i64 11]
@__sancov_gen_cov_switch_values.143 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"qedi_qed_debug\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 31, i32 13 }
@___asan_gen_.147 = private unnamed_addr constant [14 x i8] c"qedi_fw_debug\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 35, i32 13 }
@___asan_gen_.150 = private unnamed_addr constant [13 x i8] c"qedi_dbg_log\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 39, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"qedi_io_tracing\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 43, i32 6 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"qedi_ll2_buf_size\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 48, i32 13 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c"qedi_flags_override\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 53, i32 13 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1776, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1784, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1831, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1846, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1856, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1868, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1875, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1881, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [9 x i8] c"qedi_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 57, i32 29 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2006, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"qedi_pci_driver\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2860, i32 26 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"qedi_cpuhp_state\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2854, i32 25 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2939, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant [13 x i8] c"qedi_pci_tbl\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2847, i32 29 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"qedi_err_handler\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2856, i32 34 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2545, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2552, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2564, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2572, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2581, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2592, i32 26 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2595, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2618, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2629, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2638, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2641, i32 39 }
@___asan_gen_.246 = private unnamed_addr constant [12 x i8] c"qedi_cb_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1194, i32 32 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2656, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2658, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2659, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2660, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [16 x i8] c"qedi_ll2_cb_ops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1919, i32 30 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2666, i32 27 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2675, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2681, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2689, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2697, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2704, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2713, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2720, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2728, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2735, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2742, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2748, i32 22 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2750, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2756, i32 21 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2759, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2765, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2766, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2774, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2779, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 639, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [20 x i8] c"qedi_scsi_transport\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 58, i32 40 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 838, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 848, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 855, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1632, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1647, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1651, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1672, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1697, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1708, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1550, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1561, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1568, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1582, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1598, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1483, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1486, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 474, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 414, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 422, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 450, i32 40 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 362, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 371, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1451, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1424, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1349, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1279, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1294, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1300, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1216, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1254, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1387, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1373, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1184, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1187, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1160, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1129, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1045, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1069, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1111, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 980, i32 35 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 983, i32 35 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 673, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 678, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 696, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 703, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 709, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 773, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 777, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 81, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 86, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 90, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 98, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 129, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant [15 x i8] c"qedi_udev_list\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 61, i32 8 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 329, i32 16 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 342, i32 5 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 537, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1907, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2490, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2319, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2326, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2190, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2198, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2218, i32 21 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2230, i32 26 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2235, i32 26 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2259, i32 25 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2070, i32 18 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2072, i32 18 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2072, i32 27 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2104, i32 26 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2503, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2397, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2401, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2876, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2886, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2894, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2898, i32 46 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2906, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.577 = private constant [33 x i8] c"../drivers/scsi/qedi/qedi_main.c\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1964, i32 6 }
@___asan_gen_.579 = private unnamed_addr constant [42 x i8] c"switch.table.qedi_tgt_get_attr_visibility\00", align 1
@___asan_gen_.580 = private unnamed_addr constant [42 x i8] c"switch.table.qedi_eth_get_attr_visibility\00", align 1
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author432, ptr @__UNIQUE_ID_description429, ptr @__UNIQUE_ID_file430, ptr @__UNIQUE_ID_license431, ptr @__UNIQUE_ID_qedi_dbg_log398, ptr @__UNIQUE_ID_qedi_dbg_logtype397, ptr @__UNIQUE_ID_qedi_flags_override404, ptr @__UNIQUE_ID_qedi_flags_overridetype403, ptr @__UNIQUE_ID_qedi_fw_debug396, ptr @__UNIQUE_ID_qedi_fw_debugtype395, ptr @__UNIQUE_ID_qedi_io_tracing400, ptr @__UNIQUE_ID_qedi_io_tracingtype399, ptr @__UNIQUE_ID_qedi_ll2_buf_size402, ptr @__UNIQUE_ID_qedi_ll2_buf_sizetype401, ptr @__UNIQUE_ID_qedi_qed_debug394, ptr @__UNIQUE_ID_qedi_qed_debugtype393, ptr @__UNIQUE_ID_version433, ptr @__exitcall_qedi_cleanup, ptr @__initcall__kmod_qedi__434_2940_qedi_init6, ptr @__modver_attr, ptr @__param_qedi_dbg_log, ptr @__param_qedi_flags_override, ptr @__param_qedi_fw_debug, ptr @__param_qedi_io_tracing, ptr @__param_qedi_ll2_buf_size, ptr @__param_qedi_qed_debug, ptr @qedi_cleanup, ptr @qedi_qed_debug, ptr @qedi_fw_debug, ptr @qedi_dbg_log, ptr @qedi_io_tracing, ptr @qedi_ll2_buf_size, ptr @qedi_flags_override, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @qedi_ops, ptr @.str.8, ptr @qedi_pci_driver, ptr @qedi_cpuhp_state, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @qedi_pci_tbl, ptr @qedi_err_handler, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @qedi_cb_ops, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @qedi_ll2_cb_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @qedi_scsi_transport, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @qedi_udev_list, ptr @.str.110, ptr @.str.111, ptr @qedi_init_id_tbl.__key, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @qedi_init.__key, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @switch.table.qedi_tgt_get_attr_visibility, ptr @switch.table.qedi_eth_get_attr_visibility], section "llvm.metadata"
@0 = internal global [147 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_qed_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_fw_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_dbg_log to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_io_tracing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_ll2_buf_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_flags_override to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_cpuhp_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_cb_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_ll2_cb_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_scsi_transport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_udev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_init_id_tbl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qedi_tgt_get_attr_visibility to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qedi_eth_get_attr_visibility to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_alloc_id(ptr noundef %id_tbl, i16 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.qedi_portid_tbl, ptr %id_tbl, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %start, align 4
  %sub = sub i16 %id, %1
  %conv3 = zext i16 %sub to i32
  %max = getelementptr inbounds %struct.qedi_portid_tbl, ptr %id_tbl, i32 0, i32 2
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub, i16 %3)
  %cmp.not = icmp ult i16 %sub, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %id_tbl) #14
  %table = getelementptr inbounds %struct.qedi_portid_tbl, ptr %id_tbl, i32 0, i32 4
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %div3.i = lshr i32 %conv3, 5
  %arrayidx.i = getelementptr i32, ptr %5, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv3, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef %conv3, ptr noundef %5) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ -1, %if.end.if.end10_crit_edge ], [ 0, %if.then7 ]
  tail call void @_raw_spin_unlock(ptr noundef %id_tbl) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end10 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @qedi_alloc_new_id(ptr noundef %id_tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %id_tbl) #14
  %table = getelementptr inbounds %struct.qedi_portid_tbl, ptr %id_tbl, i32 0, i32 4
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %max = getelementptr inbounds %struct.qedi_portid_tbl, ptr %id_tbl, i32 0, i32 2
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max, align 2
  %conv = zext i16 %3 to i32
  %next = getelementptr inbounds %struct.qedi_portid_tbl, ptr %id_tbl, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next, align 4
  %conv1 = zext i16 %5 to i32
  %call = tail call i32 @_find_next_zero_bit_be(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1) #14
  %conv2 = trunc i32 %call to i16
  %conv3 = and i32 %call, 65535
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max, align 2
  %conv5 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv5)
  %cmp.not = icmp ult i32 %conv3, %conv5
  br i1 %cmp.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp9.not = icmp eq i16 %9, 0
  br i1 %cmp9.not, label %if.then.if.end42_crit_edge, label %if.then11

if.then.if.end42_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %conv8 = zext i16 %9 to i32
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %table, align 4
  %call15 = tail call i32 @_find_first_zero_bit_be(ptr noundef %11, i32 noundef %conv8) #14
  %conv16 = trunc i32 %call15 to i16
  %conv17 = and i32 %call15, 65535
  %12 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %next, align 4
  %conv19 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17, i32 %conv19)
  %cmp20.not = icmp ult i32 %conv17, %conv19
  %spec.store.select = select i1 %cmp20.not, i16 %conv16, i16 -1
  br label %if.end24

if.end24:                                         ; preds = %if.then11, %entry.if.end24_crit_edge
  %id.0 = phi i16 [ %spec.store.select, %if.then11 ], [ %conv2, %entry.if.end24_crit_edge ]
  %14 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %id.0, i16 %15)
  %cmp28 = icmp ult i16 %id.0, %15
  br i1 %cmp28, label %if.then30, label %if.end24.if.end42_crit_edge

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %conv25 = zext i16 %id.0 to i32
  %16 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %table, align 4
  tail call void @_set_bit(i32 noundef %conv25, ptr noundef %17) #14
  %add = add nuw i16 %id.0, 1
  %18 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max, align 2
  %sub = add i16 %19, -1
  %and = and i16 %sub, %add
  %20 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %and, ptr %next, align 4
  %start = getelementptr inbounds %struct.qedi_portid_tbl, ptr %id_tbl, i32 0, i32 1
  %21 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %start, align 4
  %add40 = add i16 %22, %id.0
  br label %if.end42

if.end42:                                         ; preds = %if.then30, %if.end24.if.end42_crit_edge, %if.then.if.end42_crit_edge
  %id.1 = phi i16 [ %add40, %if.then30 ], [ %id.0, %if.end24.if.end42_crit_edge ], [ -1, %if.then.if.end42_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %id_tbl) #14
  ret i16 %id.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_free_id(ptr nocapture noundef readonly %id_tbl, i16 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %id)
  %cmp = icmp eq i16 %id, -1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.qedi_portid_tbl, ptr %id_tbl, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %start, align 4
  %sub = sub i16 %id, %1
  %max = getelementptr inbounds %struct.qedi_portid_tbl, ptr %id_tbl, i32 0, i32 2
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub, i16 %3)
  %cmp7.not = icmp ult i16 %sub, %3
  br i1 %cmp7.not, label %if.end10, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv5 = zext i16 %sub to i32
  %table = getelementptr inbounds %struct.qedi_portid_tbl, ptr %id_tbl, i32 0, i32 4
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  tail call void @_clear_bit(i32 noundef %conv5, ptr noundef %5) #14
  br label %return

return:                                           ; preds = %if.end10, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_alloc_sq(ptr noundef %qedi, ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sq_mem_size = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 23
  %0 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12287, ptr %sq_mem_size, align 4
  %sq_pbl_size = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 26
  %1 = ptrtoint ptr %sq_pbl_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4104, ptr %sq_pbl_size, align 4
  %pdev = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %sq_dma = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 19
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 12287, ptr noundef %sq_dma, i32 noundef 3264, i32 noundef 0) #14
  %sq = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 18
  %4 = ptrtoint ptr %sq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %sq, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_alloc_sq, i32 noundef 1777, ptr noundef nonnull @.str) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %sq_pbl_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sq_pbl_size, align 4
  %sq_pbl_dma = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 25
  %call.i67 = tail call ptr @dma_alloc_attrs(ptr noundef %dev12, i32 noundef %8, ptr noundef %sq_pbl_dma, i32 noundef 3264, i32 noundef 0) #14
  %sq_pbl = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 24
  %9 = ptrtoint ptr %sq_pbl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i67, ptr %sq_pbl, align 4
  %tobool16.not = icmp eq ptr %call.i67, null
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_alloc_sq, i32 noundef 1785, ptr noundef nonnull @.str.1) #14
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sq_mem_size, align 4
  %14 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sq, align 4
  %16 = ptrtoint ptr %sq_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev29, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef 0) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %18 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sq_mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %19)
  %tobool24.not68 = icmp ult i32 %19, 4096
  br i1 %tobool24.not68, label %if.end19.cleanup_crit_edge, label %while.body.preheader

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.preheader:                             ; preds = %if.end19
  %20 = ptrtoint ptr %sq_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sq_dma, align 4
  %div2166 = lshr i32 %19, 12
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %num_pages.071 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %div2166, %while.body.preheader ]
  %page.070 = phi i32 [ %add27, %while.body.while.body_crit_edge ], [ %21, %while.body.preheader ]
  %pbl.069 = phi ptr [ %incdec.ptr26, %while.body.while.body_crit_edge ], [ %call.i67, %while.body.preheader ]
  %dec = add nsw i32 %num_pages.071, -1
  %22 = ptrtoint ptr %pbl.069 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %page.070, ptr %pbl.069, align 4
  %incdec.ptr = getelementptr i32, ptr %pbl.069, i32 1
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %incdec.ptr, align 4
  %incdec.ptr26 = getelementptr i32, ptr %pbl.069, i32 2
  %add27 = add i32 %page.070, 4096
  %tobool24.not = icmp eq i32 %dec, 0
  br i1 %tobool24.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then17, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %if.then17 ], [ -12, %if.then9 ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_warn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_free_sq(ptr nocapture noundef readonly %qedi, ptr nocapture noundef readonly %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sq_pbl = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 24
  %0 = ptrtoint ptr %sq_pbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq_pbl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pdev = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %sq_pbl_size = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 26
  %4 = ptrtoint ptr %sq_pbl_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_pbl_size, align 4
  %sq_pbl_dma = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 25
  %6 = ptrtoint ptr %sq_pbl_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sq_pbl_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sq = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 18
  %8 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sq, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pdev4 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 2
  %10 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev4, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %sq_mem_size = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 23
  %12 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sq_mem_size, align 4
  %sq_dma = getelementptr inbounds %struct.qedi_endpoint, ptr %ep, i32 0, i32 19
  %14 = ptrtoint ptr %sq_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef %13, ptr noundef nonnull %9, i32 noundef %15, i32 noundef 0) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedi_get_task_idx(ptr noundef %qedi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %task_idx_map = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 43
  br label %again

again:                                            ; preds = %if.end.again_crit_edge, %entry
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %task_idx_map, i32 noundef 4096) #14
  %sext = shl i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 268369920, i32 %sext)
  %cmp = icmp sgt i32 %sext, 268369920
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_task_idx, i32 noundef 1831, ptr noundef nonnull @.str.2) #14
  br label %err_idx

if.end:                                           ; preds = %again
  %conv1 = ashr exact i32 %sext, 16
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef %conv1, ptr noundef %task_idx_map) #14
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err_idx.loopexit, label %if.end.again_crit_edge

if.end.again_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %again

err_idx.loopexit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo = shl i32 %call, 16
  %phi.bo17 = ashr exact i32 %phi.bo, 16
  br label %err_idx

err_idx:                                          ; preds = %err_idx.loopexit, %if.then
  %tmp_idx.0 = phi i32 [ -1, %if.then ], [ %phi.bo17, %err_idx.loopexit ]
  ret i32 %tmp_idx.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_err(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_clear_task_idx(ptr noundef %qedi, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %task_idx_map = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 43
  %call = tail call i32 @_test_and_clear_bit(i32 noundef %idx, ptr noundef %task_idx_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_clear_task_idx, i32 noundef 1847, ptr noundef nonnull @.str.3, i32 noundef %idx) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_update_itt_map(ptr noundef %qedi, i32 noundef %tid, i32 noundef %proto_itt, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %itt_map = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 44
  %0 = ptrtoint ptr %itt_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itt_map, align 8
  %arrayidx = getelementptr %struct.qedi_itt_map, ptr %1, i32 %tid
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %proto_itt, ptr %arrayidx, align 4
  %3 = load ptr, ptr %itt_map, align 8
  %p_cmd = getelementptr %struct.qedi_itt_map, ptr %3, i32 %tid, i32 1
  %4 = ptrtoint ptr %p_cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd, ptr %p_cmd, align 4
  %5 = load ptr, ptr %itt_map, align 8
  %arrayidx4 = getelementptr %struct.qedi_itt_map, ptr %5, i32 %tid
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_update_itt_map, i32 noundef 1858, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %tid, i32 noundef %7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_get_task_tid(ptr noundef %qedi, i32 noundef %itt, ptr nocapture noundef writeonly %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %itt_map = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 44
  %0 = ptrtoint ptr %itt_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itt_map, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qedi_itt_map, ptr %1, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %itt)
  %cmp3 = icmp eq i32 %3, %itt
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = trunc i32 %indvars.iv to i16
  %5 = ptrtoint ptr %tid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %tid, align 2
  %conv529 = and i32 %indvars.iv, 65535
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_task_tid, i32 noundef 1870, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %itt, i32 noundef %conv529) #14
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4096
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1875, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_get_proto_itt(ptr noundef %qedi, i32 noundef %tid, ptr nocapture noundef writeonly %proto_itt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %itt_map = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 44
  %0 = ptrtoint ptr %itt_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itt_map, align 8
  %arrayidx = getelementptr %struct.qedi_itt_map, ptr %1, i32 %tid
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %proto_itt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %proto_itt, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_proto_itt, i32 noundef 1883, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %tid, i32 noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_reset_host_mtu(ptr noundef %qedi, i16 noundef zeroext %mtu) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.qed_ll2_params, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #14
  %call = tail call i32 @qedi_recover_all_conns(ptr noundef %qedi) #14
  %0 = load ptr, ptr @qedi_ops, align 4
  %ll2 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ll2, align 4
  %stop = getelementptr inbounds %struct.qed_ll2_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stop, align 4
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 3
  %5 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdev, align 4
  %call1 = tail call i32 %4(ptr noundef %6) #14
  %ll2_lock.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %ll2_lock.i) #14
  %ll2_skb_list.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 9
  %7 = ptrtoint ptr %ll2_skb_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ll2_skb_list.i, align 4
  %cmp.not22.i = icmp eq ptr %8, %ll2_skb_list.i
  br i1 %cmp.not22.i, label %entry.qedi_ll2_free_skbs.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.qedi_ll2_free_skbs.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_ll2_free_skbs.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %work.023.i = phi ptr [ %work_tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %8, %entry.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %work.023.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %work_tmp.0.i = load ptr, ptr %work.023.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work.023.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %work.023.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %work.023.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %work.023.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %work.023.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %work.023.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.023.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %skb.i = getelementptr inbounds %struct.skb_work_list, ptr %work.023.i, i32 0, i32 1
  %18 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %19, i32 noundef 0) #14
  tail call void @kfree(ptr noundef %work.023.i) #14
  %cmp.not.i = icmp eq ptr %work_tmp.0.i, %ll2_skb_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.qedi_ll2_free_skbs.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.qedi_ll2_free_skbs.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_ll2_free_skbs.exit

qedi_ll2_free_skbs.exit:                          ; preds = %list_del.exit.i.qedi_ll2_free_skbs.exit_crit_edge, %entry.qedi_ll2_free_skbs.exit_crit_edge
  %20 = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 5, i32 4
  %21 = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 5
  %22 = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 2
  %23 = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %ll2_lock.i) #14
  %ll2_mtu = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 49
  %24 = ptrtoint ptr %ll2_mtu to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ll2_mtu, align 8
  %conv = zext i16 %25 to i32
  %conv2 = zext i16 %mtu to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_reset_host_mtu, i32 noundef 2007, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv2) #14
  %26 = getelementptr inbounds i8, ptr %params, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %26, align 2
  %28 = ptrtoint ptr %ll2_mtu to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %mtu, ptr %ll2_mtu, align 8
  %add6 = add i16 %mtu, 60
  %29 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %add6, ptr %params, align 2
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %23, align 2
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %22, align 1
  %hw_mac = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 4, i32 0, i32 4
  %32 = ptrtoint ptr %hw_mac to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_mac, align 4
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %21, align 4
  %add.ptr.i = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 4, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i, align 2
  %37 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %20, align 2
  %38 = load ptr, ptr @qedi_ops, align 4
  %ll210 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %ll210 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ll210, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cdev, align 4
  %call12 = call i32 %42(ptr noundef %44, ptr noundef nonnull %params) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedi_recover_all_conns(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qedi_cleanup() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @qedi_pci_driver) #14
  %0 = load i32, ptr @qedi_cpuhp_state, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext true) #14
  %call = tail call i32 @iscsi_unregister_transport(ptr noundef nonnull @qedi_iscsi_transport) #14
  tail call void @qedi_dbg_exit() #14
  tail call void @qed_put_iscsi_ops() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_put_iscsi_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qed_get_iscsi_ops() #14
  store ptr %call, ptr @qedi_ops, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_init, i32 noundef 2876, ptr noundef nonnull @.str.130) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @qedi_dbg_init(ptr noundef nonnull @.str.10) #14
  %call1 = tail call ptr @iscsi_register_transport(ptr noundef nonnull @qedi_iscsi_transport) #14
  store ptr %call1, ptr @qedi_scsi_transport, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call529 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call529, i32 %0)
  %cmp30 = icmp ult i32 %call529, %0
  br i1 %cmp30, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_init, i32 noundef 2886, ptr noundef nonnull @.str.131) #14
  br label %exit_qedi_init_1

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %call531 = phi i32 [ %call5, %do.body.do.body_crit_edge ], [ %call529, %for.cond.preheader.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call531
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @qedi_percpu to i32)
  %3 = inttoptr i32 %add to ptr
  %work_list = getelementptr inbounds %struct.qedi_percpu_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %work_list, ptr %work_list, align 4
  %prev.i = getelementptr inbounds %struct.qedi_percpu_s, ptr %3, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %work_list, ptr %prev.i, align 4
  %p_work_lock = getelementptr inbounds %struct.qedi_percpu_s, ptr %3, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %p_work_lock, ptr noundef nonnull @.str.132, ptr noundef nonnull @qedi_init.__key, i16 noundef signext 3) #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %3, align 4
  %call5 = tail call i32 @cpumask_next(i32 noundef %call531, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call5, %7
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.133, i1 noundef zeroext true, ptr noundef nonnull @qedi_cpu_online, ptr noundef nonnull @qedi_cpu_offline, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %for.end.exit_qedi_init_2_crit_edge, label %if.end14

for.end.exit_qedi_init_2_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_qedi_init_2

if.end14:                                         ; preds = %for.end
  store i32 %call.i, ptr @qedi_cpuhp_state, align 4
  %call15 = tail call i32 @__pci_register_driver(ptr noundef nonnull @qedi_pci_driver, ptr noundef null, ptr noundef nonnull @.str.10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_init, i32 noundef 2906, ptr noundef nonnull @.str.134) #14
  %8 = load i32, ptr @qedi_cpuhp_state, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %8, i1 noundef zeroext true) #14
  br label %exit_qedi_init_2

exit_qedi_init_2:                                 ; preds = %if.then17, %for.end.exit_qedi_init_2_crit_edge
  %rc.0 = phi i32 [ %call.i, %for.end.exit_qedi_init_2_crit_edge ], [ %call15, %if.then17 ]
  %call19 = tail call i32 @iscsi_unregister_transport(ptr noundef nonnull @qedi_iscsi_transport) #14
  br label %exit_qedi_init_1

exit_qedi_init_1:                                 ; preds = %exit_qedi_init_2, %if.then3
  %rc.1 = phi i32 [ %rc.0, %exit_qedi_init_2 ], [ -12, %if.then3 ]
  tail call void @qedi_dbg_exit() #14
  tail call void @qed_put_iscsi_ops() #14
  br label %cleanup

cleanup:                                          ; preds = %exit_qedi_init_1, %if.end14.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %rc.1, %exit_qedi_init_1 ], [ -22, %if.then ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__qedi_probe(ptr noundef %pdev, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__qedi_remove(ptr noundef %pdev, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedi_shutdown, i32 noundef 2503, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.qedi_shutdown) #14
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 14
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__qedi_remove(ptr noundef %pdev, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qedi_probe(ptr noundef %pdev, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %sb_phys.i.i = alloca i32, align 4
  %params = alloca %struct.qed_ll2_params, align 2
  %host_buf = alloca [16 x i8], align 1
  %link_params = alloca %struct.qed_link_params, align 4
  %sp_params = alloca %struct.qed_slowpath_params, align 4
  %qed_params = alloca %struct.qed_probe_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #14
  %0 = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 5
  %3 = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 5, i32 4
  %4 = call ptr @memset(ptr %params, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %host_buf) #14
  %5 = call ptr @memset(ptr %host_buf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %link_params) #14
  %6 = call ptr @memset(ptr %link_params, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sp_params) #14
  %7 = getelementptr inbounds %struct.qed_slowpath_params, ptr %sp_params, i32 0, i32 1
  %8 = getelementptr inbounds %struct.qed_slowpath_params, ptr %sp_params, i32 0, i32 2
  %9 = getelementptr inbounds %struct.qed_slowpath_params, ptr %sp_params, i32 0, i32 3
  %10 = getelementptr inbounds %struct.qed_slowpath_params, ptr %sp_params, i32 0, i32 4
  %11 = getelementptr inbounds %struct.qed_slowpath_params, ptr %sp_params, i32 0, i32 5
  %12 = call ptr @memset(ptr %sp_params, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %qed_params) #14
  %13 = call ptr @memset(ptr %qed_params, i32 255, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @iscsi_host_alloc(ptr noundef nonnull @qedi_host_template, i32 noundef 153144, i1 noundef zeroext false) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %qedi_host_alloc.exit.thread, label %qedi_host_alloc.exit

qedi_host_alloc.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_host_alloc, i32 noundef 639, ptr noundef nonnull @.str.55) #14
  br label %cleanup

qedi_host_alloc.exit:                             ; preds = %if.then
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 21
  %14 = ptrtoint ptr %max_id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1023, ptr %max_id.i, align 4
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 20
  %15 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %max_channel.i, align 8
  %max_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 22
  %16 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %max_lun.i, align 8
  %max_cmd_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 24
  %17 = ptrtoint ptr %max_cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 16, ptr %max_cmd_len.i, align 4
  %18 = load ptr, ptr @qedi_scsi_transport, align 4
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 12
  %19 = ptrtoint ptr %transportt.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %transportt.i, align 4
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 5, i32 5, i32 1
  %20 = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 5, i32 5, i32 2
  %21 = call ptr @memset(ptr %20, i32 0, i32 153136)
  %shost2.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 5, i32 5, i32 3
  %22 = ptrtoint ptr %shost2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %shost2.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 17
  %23 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %host_no.i, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %add.ptr.i, align 8
  %pdev4.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 5, i32 5, i32 6
  %26 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pdev, ptr %pdev4.i, align 8
  %pdev6.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 5, i32 5, i32 1, i32 1
  %27 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pdev, ptr %pdev6.i, align 4
  %max_active_conns.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 2, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %28 = ptrtoint ptr %max_active_conns.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4096, ptr %max_active_conns.i, align 4
  %max_sqes.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 2, i32 3, i32 0, i32 0, i32 4
  %29 = ptrtoint ptr %max_sqes.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1024, ptr %max_sqes.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %30 = load volatile i32, ptr @__num_online_cpus, align 4
  %nr_hw_queues.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 34
  %31 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %nr_hw_queues.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %32 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %driver_data.i.i.i, align 4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %qedi_host_alloc.exit.cleanup_crit_edge, label %qedi_host_alloc.exit.if.end3_crit_edge

qedi_host_alloc.exit.if.end3_crit_edge:           ; preds = %qedi_host_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

qedi_host_alloc.exit.cleanup_crit_edge:           ; preds = %qedi_host_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %qedi_host_alloc.exit.if.end3_crit_edge
  %qedi.0 = phi ptr [ %add.ptr.i, %qedi_host_alloc.exit.if.end3_crit_edge ], [ %34, %if.else ]
  %dp_module = getelementptr inbounds %struct.qed_probe_params, ptr %qed_params, i32 0, i32 1
  %is_vf9 = getelementptr inbounds %struct.qed_probe_params, ptr %qed_params, i32 0, i32 3
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 3
  %cmp4.not = xor i1 %cmp.not, true
  %35 = getelementptr inbounds i8, ptr %qed_params, i32 8
  br label %retry_probe

retry_probe:                                      ; preds = %if.then16, %if.end3
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.then16 ], [ 10, %if.end3 ]
  br i1 %cmp.not, label %if.then5, label %retry_probe.if.end6_crit_edge

retry_probe.if.end6_crit_edge:                    ; preds = %retry_probe
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then5:                                         ; preds = %retry_probe
  call void @__sanitizer_cov_trace_pc() #16
  call void @msleep(i32 noundef 2000) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %retry_probe.if.end6_crit_edge
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %35, align 4
  %37 = ptrtoint ptr %qed_params to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %qed_params, align 4
  %38 = load i32, ptr @qedi_qed_debug, align 4
  %39 = ptrtoint ptr %dp_module to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %dp_module, align 4
  %40 = ptrtoint ptr %is_vf9 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %is_vf9, align 1
  %41 = load ptr, ptr @qedi_ops, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %probe = getelementptr inbounds %struct.qed_common_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %probe, align 4
  %call10 = call ptr %45(ptr noundef %pdev, ptr noundef nonnull %qed_params) #14
  %46 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call10, ptr %cdev, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %tobool15.not = icmp eq i32 %indvars.iv, 0
  %or.cond = select i1 %cmp4.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2546, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %indvars.iv) #14
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  br label %retry_probe

if.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2552, ptr noundef nonnull @.str.13) #14
  br label %free_host

if.end20:                                         ; preds = %if.end6
  %qedi_err_flags = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %qedi_err_flags) #14
  call void @_set_bit(i32 noundef 2, ptr noundef %qedi_err_flags) #14
  %link_state = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 42
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %link_state, i32 noundef 4) #14
  %47 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 0, ptr %link_state, align 4
  %48 = load ptr, ptr @qedi_ops, align 4
  %fill_dev_info = getelementptr inbounds %struct.qed_iscsi_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %fill_dev_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fill_dev_info, align 4
  %51 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cdev, align 4
  %dev_info = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 4
  %call23 = call i32 %50(ptr noundef %52, ptr noundef %dev_info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.free_host_crit_edge

if.end20.free_host_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_host

if.end26:                                         ; preds = %if.end20
  %num_hwfns = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 4, i32 0, i32 3
  %53 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_hwfns, align 4
  %conv30 = zext i8 %54 to i32
  %55 = load ptr, ptr @qedi_ops, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %get_affin_hwfn_idx = getelementptr inbounds %struct.qed_common_ops, ptr %57, i32 0, i32 40
  %58 = ptrtoint ptr %get_affin_hwfn_idx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_affin_hwfn_idx, align 4
  %60 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cdev, align 4
  %call33 = call zeroext i8 %59(ptr noundef %61) #14
  %conv34 = zext i8 %call33 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2567, i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %conv30, i32 noundef %conv34) #14
  %num_cqs.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 4, i32 3
  %62 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_cqs.i, align 4
  %conv.i = zext i8 %63 to i32
  %call.i.i.i.i461 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %64 = load volatile i32, ptr @__num_online_cpus, align 4
  %65 = call i32 @llvm.umin.i32(i32 %64, i32 %conv.i) #14
  %conv2.i = trunc i32 %65 to i8
  %num_queues.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 33
  %66 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv2.i, ptr %num_queues.i, align 8
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_set_iscsi_pf_param, i32 noundef 839, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef %65) #14
  %iscsi_pf_params.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2
  %67 = call ptr @memset(ptr %iscsi_pf_params.i, i32 0, i32 88)
  %pdev.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 2
  %68 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %70 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_queues.i, align 8
  %conv6.i = zext i8 %71 to i32
  %mul.i = mul nuw nsw i32 %conv6.i, 24
  %hw_p_cpuq.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 18
  %call.i.i462 = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef %hw_p_cpuq.i, i32 noundef 3264, i32 noundef 0) #14
  %p_cpuq.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 6
  %72 = ptrtoint ptr %p_cpuq.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i.i462, ptr %p_cpuq.i, align 8
  %tobool.not.i463 = icmp eq ptr %call.i.i462, null
  br i1 %tobool.not.i463, label %if.then.i464, label %if.end.i465

if.then.i464:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_set_iscsi_pf_param, i32 noundef 848, ptr noundef nonnull @.str.57) #14
  br label %if.then37

if.end.i465:                                      ; preds = %if.end26
  %73 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end8.i.i.i.i

if.then.i.i:                                      ; preds = %if.end.i465
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_global_queues, i32 noundef 1632, ptr noundef nonnull @.str.59) #14
  br label %if.then12.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i465
  %conv.i.i = zext i8 %74 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 3520) #18
  %global_queues.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 7
  %75 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call9.i.i.i.i, ptr %global_queues.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_global_queues, i32 noundef 1648, ptr noundef nonnull @.str.60) #14
  br label %if.then12.i

if.end9.i.i:                                      ; preds = %if.end8.i.i.i.i
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_global_queues, i32 noundef 1652, i32 noundef 4, ptr noundef nonnull @.str.61, ptr noundef nonnull %call9.i.i.i.i) #14
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end9.i.i
  %i.0140.i.i.i = phi i32 [ 0, %if.end9.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %76 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %arrayidx.i.i.i = getelementptr %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 19, i32 %i.0140.i.i.i
  %buf_dma.i.i.i = getelementptr %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 19, i32 %i.0140.i.i.i, i32 1
  %call.i.i.i114.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i.i, i32 noundef 256, ptr noundef %buf_dma.i.i.i, i32 noundef 3264, i32 noundef 0) #14
  %78 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i.i.i114.i, ptr %arrayidx.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i114.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_bdq, i32 noundef 1551, ptr noundef nonnull @.str.65, i32 noundef %i.0140.i.i.i) #14
  br label %mem_alloc_failure.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0140.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 256
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i
  %bdq_pbl_mem_size.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 22
  %79 = ptrtoint ptr %bdq_pbl_mem_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4096, ptr %bdq_pbl_mem_size.i.i.i, align 8
  %rq_num_entries.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 31
  %80 = ptrtoint ptr %rq_num_entries.i.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 256, ptr %rq_num_entries.i.i.i, align 2
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_bdq, i32 noundef 1562, i32 noundef 16, ptr noundef nonnull @.str.66, i32 noundef 256) #14
  %81 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev.i, align 8
  %dev13.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %83 = ptrtoint ptr %bdq_pbl_mem_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bdq_pbl_mem_size.i.i.i, align 8
  %bdq_pbl_dma.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 21
  %call.i137.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev13.i.i.i, i32 noundef %84, ptr noundef %bdq_pbl_dma.i.i.i, i32 noundef 3264, i32 noundef 0) #14
  %bdq_pbl.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 20
  %85 = ptrtoint ptr %bdq_pbl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i137.i.i.i, ptr %bdq_pbl.i.i.i, align 8
  %tobool17.not.i.i.i = icmp eq ptr %call.i137.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %if.then18.i.i.i, label %for.end.i.i.i.for.body25.i.i.i_crit_edge

for.end.i.i.i.for.body25.i.i.i_crit_edge:         ; preds = %for.end.i.i.i
  br label %for.body25.i.i.i

if.then18.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_bdq, i32 noundef 1568, ptr noundef nonnull @.str.67) #14
  br label %mem_alloc_failure.i.i

for.body25.i.i.i:                                 ; preds = %for.body25.i.i.i.for.body25.i.i.i_crit_edge, %for.end.i.i.i.for.body25.i.i.i_crit_edge
  %pbl.0142.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body25.i.i.i.for.body25.i.i.i_crit_edge ], [ %call.i137.i.i.i, %for.end.i.i.i.for.body25.i.i.i_crit_edge ]
  %i.1141.i.i.i = phi i32 [ %inc54.i.i.i, %for.body25.i.i.i.for.body25.i.i.i_crit_edge ], [ 0, %for.end.i.i.i.for.body25.i.i.i_crit_edge ]
  %buf_dma28.i.i.i = getelementptr %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 19, i32 %i.1141.i.i.i, i32 1
  %hi.i.i.i = getelementptr inbounds %struct.regpair, ptr %pbl.0142.i.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %hi.i.i.i, align 4
  %87 = ptrtoint ptr %buf_dma28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %buf_dma28.i.i.i, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88) #14
  %90 = ptrtoint ptr %pbl.0142.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %pbl.0142.i.i.i, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_bdq, i32 noundef 1584, i32 noundef 16, ptr noundef nonnull @.str.68, ptr noundef %pbl.0142.i.i.i, i32 noundef 0, i32 noundef %89, i32 noundef %i.1141.i.i.i) #14
  %opaque.i.i.i = getelementptr inbounds %struct.scsi_bd, ptr %pbl.0142.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %opaque.i.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %opaque.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [3 x i16], ptr %opaque.i.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %arrayidx46.i.i.i, align 2
  %arrayidx49.i.i.i = getelementptr %struct.scsi_bd, ptr %pbl.0142.i.i.i, i32 0, i32 1, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx49.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %arrayidx49.i.i.i, align 4
  %conv50.i.i.i = trunc i32 %i.1141.i.i.i to i16
  %94 = call i16 @llvm.bswap.i16(i16 %conv50.i.i.i) #14
  %opaque52.i.i.i = getelementptr inbounds %struct.iscsi_drv_opaque, ptr %opaque.i.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %opaque52.i.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %opaque52.i.i.i, align 2
  %incdec.ptr.i.i.i = getelementptr %struct.scsi_bd, ptr %pbl.0142.i.i.i, i32 1
  %inc54.i.i.i = add nuw nsw i32 %i.1141.i.i.i, 1
  %exitcond148.not.i.i.i = icmp eq i32 %inc54.i.i.i, 256
  br i1 %exitcond148.not.i.i.i, label %for.end55.i.i.i, label %for.body25.i.i.i.for.body25.i.i.i_crit_edge

for.body25.i.i.i.for.body25.i.i.i_crit_edge:      ; preds = %for.body25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body25.i.i.i

for.end55.i.i.i:                                  ; preds = %for.body25.i.i.i
  %96 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev.i, align 8
  %dev57.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %bdq_pbl_list_dma.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 24
  %call.i138.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev57.i.i.i, i32 noundef 4096, ptr noundef %bdq_pbl_list_dma.i.i.i, i32 noundef 3264, i32 noundef 0) #14
  %bdq_pbl_list.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 23
  %98 = ptrtoint ptr %bdq_pbl_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i138.i.i.i, ptr %bdq_pbl_list.i.i.i, align 4
  %tobool60.not.i.i.i = icmp eq ptr %call.i138.i.i.i, null
  br i1 %tobool60.not.i.i.i, label %if.then61.i.i.i, label %if.end63.i.i.i

if.then61.i.i.i:                                  ; preds = %for.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_bdq, i32 noundef 1599, ptr noundef nonnull @.str.69) #14
  br label %mem_alloc_failure.i.i

if.end63.i.i.i:                                   ; preds = %for.end55.i.i.i
  %99 = ptrtoint ptr %bdq_pbl_mem_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bdq_pbl_mem_size.i.i.i, align 8
  %div65136.i.i.i = lshr i32 %100, 12
  %conv66.i.i.i = trunc i32 %div65136.i.i.i to i8
  %bdq_pbl_list_num_entries.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 25
  %101 = ptrtoint ptr %bdq_pbl_list_num_entries.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv66.i.i.i, ptr %bdq_pbl_list_num_entries.i.i.i, align 4
  %102 = and i32 %100, 1044480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp71144.not.i.i.i = icmp eq i32 %102, 0
  br i1 %cmp71144.not.i.i.i, label %if.end63.i.i.i.if.end15.i.i_crit_edge, label %if.end63.i.i.i.for.body73.i.i.i_crit_edge

if.end63.i.i.i.for.body73.i.i.i_crit_edge:        ; preds = %if.end63.i.i.i
  br label %for.body73.i.i.i

if.end63.i.i.i.if.end15.i.i_crit_edge:            ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i

for.body73.i.i.i:                                 ; preds = %for.body73.i.i.i.for.body73.i.i.i_crit_edge, %if.end63.i.i.i.for.body73.i.i.i_crit_edge
  %list.0146.i.i.i = phi ptr [ %incdec.ptr76.i.i.i, %for.body73.i.i.i.for.body73.i.i.i_crit_edge ], [ %call.i138.i.i.i, %if.end63.i.i.i.for.body73.i.i.i_crit_edge ]
  %i.2145.i.i.i = phi i32 [ %inc78.i.i.i, %for.body73.i.i.i.for.body73.i.i.i_crit_edge ], [ 0, %if.end63.i.i.i.for.body73.i.i.i_crit_edge ]
  %103 = ptrtoint ptr %bdq_pbl_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bdq_pbl_dma.i.i.i, align 4
  %conv75.i.i.i = zext i32 %104 to i64
  %105 = ptrtoint ptr %list.0146.i.i.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv75.i.i.i, ptr %list.0146.i.i.i, align 8
  %incdec.ptr76.i.i.i = getelementptr i64, ptr %list.0146.i.i.i, i32 1
  %inc78.i.i.i = add nuw nsw i32 %i.2145.i.i.i, 1
  %106 = ptrtoint ptr %bdq_pbl_list_num_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bdq_pbl_list_num_entries.i.i.i, align 4
  %conv70.i.i.i = zext i8 %107 to i32
  %cmp71.i.i.i = icmp ult i32 %inc78.i.i.i, %conv70.i.i.i
  br i1 %cmp71.i.i.i, label %for.body73.i.i.i.for.body73.i.i.i_crit_edge, label %for.body73.i.i.i.if.end15.i.i_crit_edge

for.body73.i.i.i.if.end15.i.i_crit_edge:          ; preds = %for.body73.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i

for.body73.i.i.i.for.body73.i.i.i_crit_edge:      ; preds = %for.body73.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body73.i.i.i

if.end15.i.i:                                     ; preds = %for.body73.i.i.i.if.end15.i.i_crit_edge, %if.end63.i.i.i.if.end15.i.i_crit_edge
  %108 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev.i, align 8
  %dev.i213.i.i = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %nvm_buf_dma.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 27
  %call.i.i214.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i213.i.i, i32 noundef 24584, ptr noundef %nvm_buf_dma.i.i.i, i32 noundef 3264, i32 noundef 0) #14
  %iscsi_image.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 26
  %110 = ptrtoint ptr %iscsi_image.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i.i214.i.i, ptr %iscsi_image.i.i.i, align 8
  %tobool.not.i215.i.i = icmp eq ptr %call.i.i214.i.i, null
  br i1 %tobool.not.i215.i.i, label %qedi_alloc_nvm_iscsi_cfg.exit.thread.i.i, label %qedi_alloc_nvm_iscsi_cfg.exit.i.i

qedi_alloc_nvm_iscsi_cfg.exit.thread.i.i:         ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_nvm_iscsi_cfg, i32 noundef 1483, ptr noundef nonnull @.str.70) #14
  br label %mem_alloc_failure.i.i

qedi_alloc_nvm_iscsi_cfg.exit.i.i:                ; preds = %if.end15.i.i
  %111 = ptrtoint ptr %nvm_buf_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nvm_buf_dma.i.i.i, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_nvm_iscsi_cfg, i32 noundef 1488, i32 noundef 2, ptr noundef nonnull @.str.71, ptr noundef nonnull %call.i.i214.i.i, i32 noundef %112) #14
  %113 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %num_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp240.not.i.i = icmp eq i8 %114, 0
  br i1 %cmp240.not.i.i, label %qedi_alloc_nvm_iscsi_cfg.exit.i.i.if.end39_crit_edge, label %qedi_alloc_nvm_iscsi_cfg.exit.i.i.for.body.i.i_crit_edge

qedi_alloc_nvm_iscsi_cfg.exit.i.i.for.body.i.i_crit_edge: ; preds = %qedi_alloc_nvm_iscsi_cfg.exit.i.i
  br label %for.body.i.i

qedi_alloc_nvm_iscsi_cfg.exit.i.i.if.end39_crit_edge: ; preds = %qedi_alloc_nvm_iscsi_cfg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %qedi_alloc_nvm_iscsi_cfg.exit.i.i.for.body.i.i_crit_edge
  %i.0241.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %qedi_alloc_nvm_iscsi_cfg.exit.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %115 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i224.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %115, i32 noundef 3520, i32 noundef 28) #19
  %116 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %117, i32 %i.0241.i.i
  %118 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call7.i.i224.i.i, ptr %arrayidx.i.i, align 4
  %119 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx26.i.i = getelementptr ptr, ptr %119, i32 %i.0241.i.i
  %120 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx26.i.i, align 4
  %tobool27.not.i.i = icmp eq ptr %121, null
  br i1 %tobool27.not.i.i, label %if.then28.i.i, label %if.end30.i.i

if.then28.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_global_queues, i32 noundef 1673, ptr noundef nonnull @.str.62, i32 noundef %i.0241.i.i) #14
  br label %mem_alloc_failure.i.i

if.end30.i.i:                                     ; preds = %for.body.i.i
  %cq_mem_size.i.i = getelementptr inbounds %struct.global_queue, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %cq_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 131584, ptr %cq_mem_size.i.i, align 4
  %123 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx34.i.i = getelementptr ptr, ptr %124, i32 %i.0241.i.i
  %125 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx34.i.i, align 4
  %cq_mem_size35.i.i = getelementptr inbounds %struct.global_queue, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %cq_mem_size35.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cq_mem_size35.i.i, align 4
  %add.i.i = add i32 %128, 4095
  store i32 %add.i.i, ptr %cq_mem_size35.i.i, align 4
  %129 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx40.i.i = getelementptr ptr, ptr %129, i32 %i.0241.i.i
  %130 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx40.i.i, align 4
  %cq_mem_size41.i.i = getelementptr inbounds %struct.global_queue, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %cq_mem_size41.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cq_mem_size41.i.i, align 4
  %134 = lshr i32 %133, 10
  %mul42.i.i = and i32 %134, 4194300
  %cq_pbl_size.i.i = getelementptr inbounds %struct.global_queue, ptr %131, i32 0, i32 6
  %135 = ptrtoint ptr %cq_pbl_size.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %mul42.i.i, ptr %cq_pbl_size.i.i, align 4
  %136 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx46.i.i = getelementptr ptr, ptr %136, i32 %i.0241.i.i
  %137 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx46.i.i, align 4
  %cq_pbl_size47.i.i = getelementptr inbounds %struct.global_queue, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %cq_pbl_size47.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cq_pbl_size47.i.i, align 4
  %add48.i.i = add i32 %140, 4095
  store i32 %add48.i.i, ptr %cq_pbl_size47.i.i, align 4
  %141 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pdev.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  %143 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx53.i.i = getelementptr ptr, ptr %143, i32 %i.0241.i.i
  %144 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx53.i.i, align 4
  %cq_mem_size54.i.i = getelementptr inbounds %struct.global_queue, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %cq_mem_size54.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cq_mem_size54.i.i, align 4
  %cq_dma.i.i = getelementptr inbounds %struct.global_queue, ptr %145, i32 0, i32 1
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %147, ptr noundef %cq_dma.i.i, i32 noundef 3264, i32 noundef 0) #14
  %148 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx59.i.i = getelementptr ptr, ptr %149, i32 %i.0241.i.i
  %150 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx59.i.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call.i.i.i, ptr %151, align 4
  %153 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx61.i.i = getelementptr ptr, ptr %153, i32 %i.0241.i.i
  %154 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx61.i.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %tobool63.not.i.i = icmp eq ptr %157, null
  br i1 %tobool63.not.i.i, label %if.then64.i.i, label %if.end66.i.i

if.then64.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_global_queues, i32 noundef 1698, ptr noundef nonnull @.str.63) #14
  br label %mem_alloc_failure.i.i

if.end66.i.i:                                     ; preds = %if.end30.i.i
  %158 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdev.i, align 8
  %dev68.i.i = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  %cq_pbl_size71.i.i = getelementptr inbounds %struct.global_queue, ptr %155, i32 0, i32 6
  %160 = ptrtoint ptr %cq_pbl_size71.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cq_pbl_size71.i.i, align 4
  %cq_pbl_dma.i.i = getelementptr inbounds %struct.global_queue, ptr %155, i32 0, i32 5
  %call.i226.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev68.i.i, i32 noundef %161, ptr noundef %cq_pbl_dma.i.i, i32 noundef 3264, i32 noundef 0) #14
  %162 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx76.i.i = getelementptr ptr, ptr %163, i32 %i.0241.i.i
  %164 = ptrtoint ptr %arrayidx76.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx76.i.i, align 4
  %cq_pbl.i.i = getelementptr inbounds %struct.global_queue, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %cq_pbl.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call.i226.i.i, ptr %cq_pbl.i.i, align 4
  %167 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx78.i.i = getelementptr ptr, ptr %167, i32 %i.0241.i.i
  %168 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx78.i.i, align 4
  %cq_pbl79.i.i = getelementptr inbounds %struct.global_queue, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %cq_pbl79.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cq_pbl79.i.i, align 4
  %tobool80.not.i.i = icmp eq ptr %171, null
  br i1 %tobool80.not.i.i, label %if.then81.i.i, label %if.end83.i.i

if.then81.i.i:                                    ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_global_queues, i32 noundef 1709, ptr noundef nonnull @.str.64) #14
  br label %mem_alloc_failure.i.i

if.end83.i.i:                                     ; preds = %if.end66.i.i
  %cq_mem_size86.i.i = getelementptr inbounds %struct.global_queue, ptr %169, i32 0, i32 2
  %172 = ptrtoint ptr %cq_mem_size86.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cq_mem_size86.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %173)
  %tobool94.not235.i.i = icmp ult i32 %173, 4096
  br i1 %tobool94.not235.i.i, label %if.end83.i.i.for.inc.i.i_crit_edge, label %while.body.preheader.i.i

if.end83.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

while.body.preheader.i.i:                         ; preds = %if.end83.i.i
  %cq_dma90.i.i = getelementptr inbounds %struct.global_queue, ptr %169, i32 0, i32 1
  %174 = ptrtoint ptr %cq_dma90.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %cq_dma90.i.i, align 4
  %div87211.i.i = lshr i32 %173, 12
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %num_pages.0238.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div87211.i.i, %while.body.preheader.i.i ]
  %page.0237.i.i = phi i32 [ %add98.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %175, %while.body.preheader.i.i ]
  %pbl.0236.i.i = phi ptr [ %incdec.ptr97.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %171, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %num_pages.0238.i.i, -1
  %176 = ptrtoint ptr %pbl.0236.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %page.0237.i.i, ptr %pbl.0236.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %pbl.0236.i.i, i32 1
  %177 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr97.i.i = getelementptr i32, ptr %pbl.0236.i.i, i32 2
  %add98.i.i = add i32 %page.0237.i.i, 4096
  %tobool94.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool94.not.i.i, label %while.body.i.i.for.inc.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.body.i.i.for.inc.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %while.body.i.i.for.inc.i.i_crit_edge, %if.end83.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0241.i.i, 1
  %178 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %num_queues.i, align 8
  %conv21.i.i = zext i8 %179 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv21.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %cmp103243.not.i.i = icmp eq i8 %179, 0
  br i1 %cmp103243.not.i.i, label %for.end.i.i.if.end39_crit_edge, label %for.body105.preheader.i.i

for.end.i.i.if.end39_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

for.body105.preheader.i.i:                        ; preds = %for.end.i.i
  %180 = ptrtoint ptr %p_cpuq.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %p_cpuq.i, align 8
  br label %for.body105.i.i

for.body105.i.i:                                  ; preds = %for.body105.i.i.for.body105.i.i_crit_edge, %for.body105.preheader.i.i
  %i.1245.i.i = phi i32 [ %inc120.i.i, %for.body105.i.i.for.body105.i.i_crit_edge ], [ 0, %for.body105.preheader.i.i ]
  %list.0244.i.i = phi ptr [ %incdec.ptr118.i.i, %for.body105.i.i.for.body105.i.i_crit_edge ], [ %181, %for.body105.preheader.i.i ]
  %182 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %global_queues.i.i, align 4
  %arrayidx107.i.i = getelementptr ptr, ptr %183, i32 %i.1245.i.i
  %184 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx107.i.i, align 4
  %cq_pbl_dma108.i.i = getelementptr inbounds %struct.global_queue, ptr %185, i32 0, i32 5
  %186 = ptrtoint ptr %cq_pbl_dma108.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %cq_pbl_dma108.i.i, align 4
  %188 = ptrtoint ptr %list.0244.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %list.0244.i.i, align 4
  %incdec.ptr109.i.i = getelementptr i32, ptr %list.0244.i.i, i32 1
  %189 = ptrtoint ptr %incdec.ptr109.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %incdec.ptr109.i.i, align 4
  %incdec.ptr116.i.i = getelementptr i32, ptr %list.0244.i.i, i32 2
  %190 = ptrtoint ptr %incdec.ptr116.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %incdec.ptr116.i.i, align 4
  %incdec.ptr117.i.i = getelementptr i32, ptr %list.0244.i.i, i32 3
  %191 = ptrtoint ptr %incdec.ptr117.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %incdec.ptr117.i.i, align 4
  %incdec.ptr118.i.i = getelementptr i32, ptr %list.0244.i.i, i32 4
  %inc120.i.i = add nuw nsw i32 %i.1245.i.i, 1
  %192 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %num_queues.i, align 8
  %conv102.i.i = zext i8 %193 to i32
  %cmp103.i.i = icmp ult i32 %inc120.i.i, %conv102.i.i
  br i1 %cmp103.i.i, label %for.body105.i.i.for.body105.i.i_crit_edge, label %for.body105.i.i.if.end39_crit_edge

for.body105.i.i.if.end39_crit_edge:               ; preds = %for.body105.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

for.body105.i.i.for.body105.i.i_crit_edge:        ; preds = %for.body105.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body105.i.i

mem_alloc_failure.i.i:                            ; preds = %if.then81.i.i, %if.then64.i.i, %if.then28.i.i, %qedi_alloc_nvm_iscsi_cfg.exit.thread.i.i, %if.then61.i.i.i, %if.then18.i.i.i, %if.then.i.i.i
  call fastcc void @qedi_free_global_queues(ptr noundef %qedi.0) #14
  br label %if.then12.i

if.then12.i:                                      ; preds = %mem_alloc_failure.i.i, %if.then7.i.i, %if.then.i.i
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_set_iscsi_pf_param, i32 noundef 855, ptr noundef nonnull @.str.58) #14
  br label %if.then37

if.then37:                                        ; preds = %if.then12.i, %if.then.i464
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2573, ptr noundef nonnull @.str.15) #14
  br label %free_host

if.end39:                                         ; preds = %for.body105.i.i.if.end39_crit_edge, %for.end.i.i.if.end39_crit_edge, %qedi_alloc_nvm_iscsi_cfg.exit.i.i.if.end39_crit_edge
  %num_cons.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 6
  %194 = ptrtoint ptr %num_cons.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 1024, ptr %num_cons.i, align 2
  %num_tasks.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 7
  %195 = ptrtoint ptr %num_tasks.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 4096, ptr %num_tasks.i, align 4
  %half_way_close_timeout.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 8
  %196 = ptrtoint ptr %half_way_close_timeout.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 10, ptr %half_way_close_timeout.i, align 2
  %num_sq_pages_in_ring.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 14
  %197 = ptrtoint ptr %num_sq_pages_in_ring.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 2, ptr %num_sq_pages_in_ring.i, align 2
  %num_r2tq_pages_in_ring.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 15
  %198 = ptrtoint ptr %num_r2tq_pages_in_ring.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 2, ptr %num_r2tq_pages_in_ring.i, align 1
  %num_uhq_pages_in_ring.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 16
  %199 = ptrtoint ptr %num_uhq_pages_in_ring.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 2, ptr %num_uhq_pages_in_ring.i, align 4
  %200 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %num_queues.i, align 8
  %num_queues30.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 17
  %202 = ptrtoint ptr %num_queues30.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %num_queues30.i, align 1
  %203 = load i32, ptr @qedi_fw_debug, align 4
  %conv31.i = trunc i32 %203 to i8
  %debug_mode.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 23
  %204 = ptrtoint ptr %debug_mode.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv31.i, ptr %debug_mode.i, align 1
  %two_msl_timer.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 4
  %205 = ptrtoint ptr %two_msl_timer.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 4000, ptr %two_msl_timer.i, align 4
  %tx_sws_timer.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 5
  %206 = ptrtoint ptr %tx_sws_timer.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 500, ptr %tx_sws_timer.i, align 8
  %max_fin_rt.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 20
  %207 = ptrtoint ptr %max_fin_rt.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 2, ptr %max_fin_rt.i, align 8
  %log_page_size49.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 18
  %208 = ptrtoint ptr %log_page_size49.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 12, ptr %log_page_size49.i, align 2
  %209 = ptrtoint ptr %hw_p_cpuq.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %hw_p_cpuq.i, align 4
  %conv51.i = zext i32 %210 to i64
  %211 = ptrtoint ptr %iscsi_pf_params.i to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %conv51.i, ptr %iscsi_pf_params.i, align 8
  %rqe_log_size.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 19
  %212 = ptrtoint ptr %rqe_log_size.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 8, ptr %rqe_log_size.i, align 1
  %213 = ptrtoint ptr %bdq_pbl_list_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %bdq_pbl_list_dma.i.i.i, align 8
  %conv56.i = zext i32 %214 to i64
  %bdq_pbl_base_addr.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 1
  %215 = ptrtoint ptr %bdq_pbl_base_addr.i to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %conv56.i, ptr %bdq_pbl_base_addr.i, align 8
  %216 = ptrtoint ptr %bdq_pbl_list_num_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %bdq_pbl_list_num_entries.i.i.i, align 4
  %bdq_pbl_num_entries.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 28
  %218 = ptrtoint ptr %bdq_pbl_num_entries.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %bdq_pbl_num_entries.i, align 8
  %rq_buffer_size.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 13
  %219 = ptrtoint ptr %rq_buffer_size.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 256, ptr %rq_buffer_size.i, align 8
  %cq_num_entries.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 2
  %220 = ptrtoint ptr %cq_num_entries.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 2048, ptr %cq_num_entries.i, align 8
  %gl_rq_pi.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 21
  %221 = ptrtoint ptr %gl_rq_pi.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %gl_rq_pi.i, align 1
  %gl_cmd_pi.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46, i32 2, i32 22
  %222 = ptrtoint ptr %gl_cmd_pi.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 1, ptr %gl_cmd_pi.i, align 2
  %223 = load ptr, ptr @qedi_ops, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %update_pf_params = getelementptr inbounds %struct.qed_common_ops, ptr %225, i32 0, i32 5
  %226 = ptrtoint ptr %update_pf_params to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %update_pf_params, align 4
  %228 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cdev, align 4
  %pf_params = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 46
  call void %227(ptr noundef %229, ptr noundef %pf_params) #14
  %230 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %num_cqs.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %232 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv.i.i466 = zext i8 %231 to i32
  %233 = call i32 @llvm.umin.i32(i32 %232, i32 %conv.i.i466) #14
  %234 = mul nuw nsw i32 %233, 28
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %234, i32 noundef 3520) #18
  %fp_array.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 40
  %235 = ptrtoint ptr %fp_array.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call8.i.i.i.i, ptr %fp_array.i.i, align 8
  %tobool.not.i.i468 = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i468, label %if.then.i.i469, label %if.end.i.i

if.then.i.i469:                                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_fp, i32 noundef 415, ptr noundef nonnull @.str.73) #14
  br label %if.then44

if.end.i.i:                                       ; preds = %if.end39
  %236 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %num_cqs.i, align 4
  %call.i.i.i34.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %238 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv6.i.i = zext i8 %237 to i32
  %239 = call i32 @llvm.umin.i32(i32 %238, i32 %conv6.i.i) #14
  %240 = mul nuw nsw i32 %239, 28
  %call8.i.i64.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %240, i32 noundef 3520) #18
  %sb_array.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 39
  %241 = ptrtoint ptr %sb_array.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call8.i.i64.i.i, ptr %sb_array.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %call8.i.i64.i.i, null
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %if.end.i471

if.then18.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_fp, i32 noundef 423, ptr noundef nonnull @.str.74) #14
  %242 = ptrtoint ptr %fp_array.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %fp_array.i.i, align 8
  call void @kfree(ptr noundef %243) #14
  %244 = ptrtoint ptr %sb_array.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %sb_array.i.i, align 4
  call void @kfree(ptr noundef %245) #14
  br label %if.then44

if.end.i471:                                      ; preds = %if.end.i.i
  %fp_array.i25.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 40
  %246 = ptrtoint ptr %fp_array.i25.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %fp_array.i25.i, align 8
  %248 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %num_cqs.i, align 4
  %conv.i27.i = zext i8 %249 to i32
  %call.i.i.i.i28.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %250 = load volatile i32, ptr @__num_online_cpus, align 4
  %251 = call i32 @llvm.umin.i32(i32 %250, i32 %conv.i27.i) #14
  %mul.i.i470 = mul nuw nsw i32 %251, 28
  %252 = call ptr @memset(ptr %247, i32 0, i32 %mul.i.i470)
  %sb_array.i29.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 39
  %253 = ptrtoint ptr %sb_array.i29.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %sb_array.i29.i, align 4
  %255 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %num_cqs.i, align 4
  %conv4.i.i = zext i8 %256 to i32
  %call.i.i.i54.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %257 = load volatile i32, ptr @__num_online_cpus, align 4
  %258 = call i32 @llvm.umin.i32(i32 %257, i32 %conv4.i.i) #14
  %mul13.i.i = mul nuw nsw i32 %258, 28
  %259 = call ptr @memset(ptr %254, i32 0, i32 %mul13.i.i)
  %260 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %num_cqs.i, align 4
  %conv1656.i.i = zext i8 %261 to i32
  %call.i.i.i5557.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %262 = load volatile i32, ptr @__num_online_cpus, align 4
  %263 = call i32 @llvm.umin.i32(i32 %262, i32 %conv1656.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp2558.not.i.i = icmp eq i32 %263, 0
  br i1 %cmp2558.not.i.i, label %if.end.i471.qedi_int_fp.exit.i_crit_edge, label %if.end.i471.for.body.i.i474_crit_edge

if.end.i471.for.body.i.i474_crit_edge:            ; preds = %if.end.i471
  br label %for.body.i.i474

if.end.i471.qedi_int_fp.exit.i_crit_edge:         ; preds = %if.end.i471
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_int_fp.exit.i

for.body.i.i474:                                  ; preds = %for.body.i.i474.for.body.i.i474_crit_edge, %if.end.i471.for.body.i.i474_crit_edge
  %id.059.i.i = phi i32 [ %inc.i.i473, %for.body.i.i474.for.body.i.i474_crit_edge ], [ 0, %if.end.i471.for.body.i.i474_crit_edge ]
  %264 = ptrtoint ptr %fp_array.i25.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %fp_array.i25.i, align 8
  %arrayidx.i.i472 = getelementptr %struct.qedi_fastpath, ptr %265, i32 %id.059.i.i
  %266 = ptrtoint ptr %sb_array.i29.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %sb_array.i29.i, align 4
  %arrayidx29.i.i = getelementptr %struct.qed_sb_info, ptr %267, i32 %id.059.i.i
  %268 = ptrtoint ptr %arrayidx.i.i472 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %arrayidx29.i.i, ptr %arrayidx.i.i472, align 4
  %conv30.i.i = trunc i32 %id.059.i.i to i16
  %sb_id.i.i = getelementptr %struct.qedi_fastpath, ptr %265, i32 %id.059.i.i, i32 1
  %269 = ptrtoint ptr %sb_id.i.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %conv30.i.i, ptr %sb_id.i.i, align 4
  %qedi31.i.i = getelementptr %struct.qedi_fastpath, ptr %265, i32 %id.059.i.i, i32 3
  %270 = ptrtoint ptr %qedi31.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %qedi.0, ptr %qedi31.i.i, align 4
  %name.i.i = getelementptr %struct.qedi_fastpath, ptr %265, i32 %id.059.i.i, i32 2
  %call32.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 16, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.10, i32 noundef %id.059.i.i) #14
  %inc.i.i473 = add nuw nsw i32 %id.059.i.i, 1
  %271 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %num_cqs.i, align 4
  %conv16.i.i = zext i8 %272 to i32
  %call.i.i.i55.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %273 = load volatile i32, ptr @__num_online_cpus, align 4
  %274 = call i32 @llvm.umin.i32(i32 %273, i32 %conv16.i.i) #14
  %cmp25.i.i = icmp ult i32 %inc.i.i473, %274
  br i1 %cmp25.i.i, label %for.body.i.i474.for.body.i.i474_crit_edge, label %for.body.i.i474.qedi_int_fp.exit.i_crit_edge

for.body.i.i474.qedi_int_fp.exit.i_crit_edge:     ; preds = %for.body.i.i474
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_int_fp.exit.i

for.body.i.i474.for.body.i.i474_crit_edge:        ; preds = %for.body.i.i474
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i474

qedi_int_fp.exit.i:                               ; preds = %for.body.i.i474.qedi_int_fp.exit.i_crit_edge, %if.end.i471.qedi_int_fp.exit.i_crit_edge
  %275 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %num_cqs.i, align 4
  %conv57.i = zext i8 %276 to i32
  %call.i.i.i58.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %277 = load volatile i32, ptr @__num_online_cpus, align 4
  %278 = call i32 @llvm.umin.i32(i32 %277, i32 %conv57.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %cmp359.not.i = icmp eq i32 %278, 0
  br i1 %cmp359.not.i, label %qedi_int_fp.exit.i.if.end46_crit_edge, label %qedi_int_fp.exit.i.for.body.i_crit_edge

qedi_int_fp.exit.i.for.body.i_crit_edge:          ; preds = %qedi_int_fp.exit.i
  br label %for.body.i

qedi_int_fp.exit.i.if.end46_crit_edge:            ; preds = %qedi_int_fp.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %qedi_int_fp.exit.i.for.body.i_crit_edge
  %id.060.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %qedi_int_fp.exit.i.for.body.i_crit_edge ]
  %279 = ptrtoint ptr %fp_array.i25.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %fp_array.i25.i, align 8
  %arrayidx.i = getelementptr %struct.qedi_fastpath, ptr %280, i32 %id.060.i
  %281 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %arrayidx.i, align 4
  %sb_id.i = getelementptr %struct.qedi_fastpath, ptr %280, i32 %id.060.i, i32 1
  %283 = ptrtoint ptr %sb_id.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %sb_id.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sb_phys.i.i) #14
  %285 = ptrtoint ptr %sb_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 -1, ptr %sb_phys.i.i, align 4, !annotation !405
  %286 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %pdev.i, align 8
  %dev.i.i475 = getelementptr inbounds %struct.pci_dev, ptr %287, i32 0, i32 44
  %call.i.i.i476 = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i475, i32 noundef 32, ptr noundef nonnull %sb_phys.i.i, i32 noundef 3264, i32 noundef 0) #14
  %tobool.not.i30.i = icmp eq ptr %call.i.i.i476, null
  br i1 %tobool.not.i30.i, label %if.then.i32.i, label %if.end.i33.i

if.then.i32.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i31.i = zext i16 %284 to i32
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_and_init_sb, i32 noundef 364, ptr noundef nonnull @.str.76, i32 noundef %conv.i31.i) #14
  br label %if.then7.i

if.end.i33.i:                                     ; preds = %for.body.i
  %288 = load ptr, ptr @qedi_ops, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %288, align 4
  %sb_init.i.i = getelementptr inbounds %struct.qed_common_ops, ptr %290, i32 0, i32 10
  %291 = ptrtoint ptr %sb_init.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %sb_init.i.i, align 4
  %293 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %cdev, align 4
  %295 = ptrtoint ptr %sb_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %sb_phys.i.i, align 4
  %call1.i.i = call i32 %292(ptr noundef %294, ptr noundef %282, ptr noundef nonnull %call.i.i.i476, i32 noundef %296, i16 noundef zeroext %284, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.inc.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv5.i.i = zext i16 %284 to i32
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_alloc_and_init_sb, i32 noundef 373, ptr noundef nonnull @.str.77, i32 noundef %conv5.i.i) #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.then3.i.i, %if.then.i32.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sb_phys.i.i) #14
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.qedi_prepare_fp, i32 noundef 475, ptr noundef nonnull @.str.72) #14
  %297 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %num_cqs.i, align 4
  %conv13.i.i = zext i8 %298 to i32
  %call.i.i.i14.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %299 = load volatile i32, ptr @__num_online_cpus, align 4
  %300 = call i32 @llvm.umin.i32(i32 %299, i32 %conv13.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %cmp215.not.i.i = icmp eq i32 %300, 0
  br i1 %cmp215.not.i.i, label %if.then7.i.qedi_free_sb.exit.i_crit_edge, label %if.then7.i.for.body.i40.i_crit_edge

if.then7.i.for.body.i40.i_crit_edge:              ; preds = %if.then7.i
  br label %for.body.i40.i

if.then7.i.qedi_free_sb.exit.i_crit_edge:         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_free_sb.exit.i

for.body.i40.i:                                   ; preds = %for.inc.i.i477.for.body.i40.i_crit_edge, %if.then7.i.for.body.i40.i_crit_edge
  %id.016.i.i = phi i32 [ %inc.i44.i, %for.inc.i.i477.for.body.i40.i_crit_edge ], [ 0, %if.then7.i.for.body.i40.i_crit_edge ]
  %301 = ptrtoint ptr %sb_array.i29.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %sb_array.i29.i, align 4
  %arrayidx.i38.i = getelementptr %struct.qed_sb_info, ptr %302, i32 %id.016.i.i
  %303 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %arrayidx.i38.i, align 4
  %tobool.not.i39.i = icmp eq ptr %304, null
  br i1 %tobool.not.i39.i, label %for.body.i40.i.for.inc.i.i477_crit_edge, label %if.then.i43.i

for.body.i40.i.for.inc.i.i477_crit_edge:          ; preds = %for.body.i40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i477

if.then.i43.i:                                    ; preds = %for.body.i40.i
  call void @__sanitizer_cov_trace_pc() #16
  %305 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %pdev.i, align 8
  %dev.i41.i = getelementptr inbounds %struct.pci_dev, ptr %306, i32 0, i32 44
  %sb_phys.i42.i = getelementptr %struct.qed_sb_info, ptr %302, i32 %id.016.i.i, i32 1
  %307 = ptrtoint ptr %sb_phys.i42.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %sb_phys.i42.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i41.i, i32 noundef 32, ptr noundef nonnull %304, i32 noundef %308, i32 noundef 0) #14
  br label %for.inc.i.i477

for.inc.i.i477:                                   ; preds = %if.then.i43.i, %for.body.i40.i.for.inc.i.i477_crit_edge
  %inc.i44.i = add nuw nsw i32 %id.016.i.i, 1
  %309 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %num_cqs.i, align 4
  %conv.i45.i = zext i8 %310 to i32
  %call.i.i.i.i46.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %311 = load volatile i32, ptr @__num_online_cpus, align 4
  %312 = call i32 @llvm.umin.i32(i32 %311, i32 %conv.i45.i) #14
  %cmp2.i.i = icmp ult i32 %inc.i44.i, %312
  br i1 %cmp2.i.i, label %for.inc.i.i477.for.body.i40.i_crit_edge, label %for.inc.i.i477.qedi_free_sb.exit.i_crit_edge

for.inc.i.i477.qedi_free_sb.exit.i_crit_edge:     ; preds = %for.inc.i.i477
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_free_sb.exit.i

for.inc.i.i477.for.body.i40.i_crit_edge:          ; preds = %for.inc.i.i477
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i40.i

qedi_free_sb.exit.i:                              ; preds = %for.inc.i.i477.qedi_free_sb.exit.i_crit_edge, %if.then7.i.qedi_free_sb.exit.i_crit_edge
  %313 = ptrtoint ptr %fp_array.i25.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %fp_array.i25.i, align 8
  call void @kfree(ptr noundef %314) #14
  %315 = ptrtoint ptr %sb_array.i29.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %sb_array.i29.i, align 4
  call void @kfree(ptr noundef %316) #14
  br label %if.then44

for.inc.i:                                        ; preds = %if.end.i33.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sb_phys.i.i) #14
  %inc.i = add nuw nsw i32 %id.060.i, 1
  %317 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %num_cqs.i, align 4
  %conv.i478 = zext i8 %318 to i32
  %call.i.i.i.i479 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %319 = load volatile i32, ptr @__num_online_cpus, align 4
  %320 = call i32 @llvm.umin.i32(i32 %319, i32 %conv.i478) #14
  %cmp3.i = icmp ult i32 %inc.i, %320
  br i1 %cmp3.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end46_crit_edge

for.inc.i.if.end46_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.then44:                                        ; preds = %qedi_free_sb.exit.i, %if.then18.i.i, %if.then.i.i469
  %retval.0.i.ph = phi i32 [ -12, %if.then.i.i469 ], [ -12, %if.then18.i.i ], [ -5, %qedi_free_sb.exit.i ]
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2581, ptr noundef nonnull @.str.16) #14
  br label %free_pf_params

if.end46:                                         ; preds = %for.inc.i.if.end46_crit_edge, %qedi_int_fp.exit.i.if.end46_crit_edge
  %321 = getelementptr inbounds i8, ptr %sp_params, i32 8
  %322 = call ptr @memset(ptr %321, i32 0, i32 12)
  %323 = ptrtoint ptr %sp_params to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 1, ptr %sp_params, align 4
  %324 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 8, ptr %7, align 4
  %325 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 37, ptr %8, align 1
  %326 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 0, ptr %9, align 2
  %327 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 20, ptr %10, align 1
  %call47 = call i32 @strlcpy(ptr noundef %11, ptr noundef nonnull @.str.17, i32 noundef 12) #14
  %328 = load ptr, ptr @qedi_ops, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %328, align 4
  %slowpath_start = getelementptr inbounds %struct.qed_common_ops, ptr %330, i32 0, i32 6
  %331 = ptrtoint ptr %slowpath_start to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %slowpath_start, align 4
  %333 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %cdev, align 4
  %call50 = call i32 %332(ptr noundef %334, ptr noundef nonnull %sp_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2595, ptr noundef nonnull @.str.18) #14
  br label %stop_hw

if.end54:                                         ; preds = %if.end46
  %335 = load ptr, ptr @qedi_ops, align 4
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %335, align 4
  %update_pf_params56 = getelementptr inbounds %struct.qed_common_ops, ptr %337, i32 0, i32 5
  %338 = ptrtoint ptr %update_pf_params56 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %update_pf_params56, align 4
  %340 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %cdev, align 4
  call void %339(ptr noundef %341, ptr noundef %pf_params) #14
  %call59 = call fastcc i32 @qedi_setup_int(ptr noundef %qedi.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end54.stop_iscsi_func_crit_edge

if.end54.stop_iscsi_func_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop_iscsi_func

if.end62:                                         ; preds = %if.end54
  %342 = load ptr, ptr @qedi_ops, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %342, align 4
  %set_power_state = getelementptr inbounds %struct.qed_common_ops, ptr %344, i32 0, i32 3
  %345 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %set_power_state, align 4
  %347 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %cdev, align 4
  %call65 = call i32 %346(ptr noundef %348, i32 noundef 0) #14
  %349 = load ptr, ptr @qedi_ops, align 4
  %fill_dev_info66 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %349, i32 0, i32 2
  %350 = ptrtoint ptr %fill_dev_info66 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %fill_dev_info66, align 4
  %352 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %cdev, align 4
  %call69 = call i32 %351(ptr noundef %353, ptr noundef %dev_info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end62.stop_iscsi_func_crit_edge

if.end62.stop_iscsi_func_crit_edge:               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop_iscsi_func

if.end72:                                         ; preds = %if.end62
  %primary_dbq_rq_addr = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 4, i32 1
  %354 = ptrtoint ptr %primary_dbq_rq_addr to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %primary_dbq_rq_addr, align 4
  %bdq_primary_prod = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 28
  %356 = ptrtoint ptr %bdq_primary_prod to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %355, ptr %bdq_primary_prod, align 8
  %secondary_bdq_rq_addr = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 4, i32 2
  %357 = ptrtoint ptr %secondary_bdq_rq_addr to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %secondary_bdq_rq_addr, align 8
  %bdq_secondary_prod = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 29
  %359 = ptrtoint ptr %bdq_secondary_prod to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %358, ptr %bdq_secondary_prod, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2621, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef %355, ptr noundef %358) #14
  %bdq_prod_idx = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 30
  %360 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 256, ptr %bdq_prod_idx, align 8
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2631, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 256) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !406
  call void @arm_heavy_mb() #14
  %361 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %bdq_prod_idx, align 8
  %363 = call i16 @llvm.bswap.i16(i16 %362)
  %364 = ptrtoint ptr %bdq_primary_prod to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %bdq_primary_prod, align 8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %365, i16 %363) #14, !srcloc !407
  %366 = ptrtoint ptr %bdq_primary_prod to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %bdq_primary_prod, align 8
  %368 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %367) #14, !srcloc !408
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !409
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !410
  call void @arm_heavy_mb() #14
  %369 = ptrtoint ptr %bdq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %bdq_prod_idx, align 8
  %371 = call i16 @llvm.bswap.i16(i16 %370)
  %372 = ptrtoint ptr %bdq_secondary_prod to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %bdq_secondary_prod, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %373, i16 %371) #14, !srcloc !407
  %374 = ptrtoint ptr %bdq_secondary_prod to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %bdq_secondary_prod, align 4
  %376 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %375) #14, !srcloc !408
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !411
  %mac = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 15
  %hw_mac = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 4, i32 0, i32 4
  %377 = ptrtoint ptr %hw_mac to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %hw_mac, align 4
  %379 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %378, ptr %mac, align 4
  %add.ptr.i480 = getelementptr %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 4, i32 0, i32 4, i32 4
  %380 = ptrtoint ptr %add.ptr.i480 to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %add.ptr.i480, align 2
  %add.ptr1.i = getelementptr %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 15, i32 4
  %382 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 %381, ptr %add.ptr1.i, align 2
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2639, i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef %mac) #14
  %shost = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 1
  %383 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %shost, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %384, i32 0, i32 17
  %385 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %host_no, align 4
  %call105 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %host_buf, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %386)
  %387 = load ptr, ptr @qedi_ops, align 4
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %387, align 4
  %set_name = getelementptr inbounds %struct.qed_common_ops, ptr %389, i32 0, i32 4
  %390 = ptrtoint ptr %set_name to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %set_name, align 4
  %392 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %cdev, align 4
  call void %391(ptr noundef %393, ptr noundef nonnull %host_buf) #14
  %394 = load ptr, ptr @qedi_ops, align 4
  %register_ops = getelementptr inbounds %struct.qed_iscsi_ops, ptr %394, i32 0, i32 3
  %395 = ptrtoint ptr %register_ops to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %register_ops, align 4
  %397 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %cdev, align 4
  call void %396(ptr noundef %398, ptr noundef nonnull @qedi_cb_ops, ptr noundef %qedi.0) #14
  %399 = getelementptr inbounds i8, ptr %params, i32 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_storeN_noabort(i32 %400, i32 8)
  store i64 0, ptr %399, align 2
  %401 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 1560, ptr %params, align 2
  %ll2_mtu = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 49
  %402 = ptrtoint ptr %ll2_mtu to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 1500, ptr %ll2_mtu, align 8
  %403 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 0, ptr %0, align 2
  %404 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 1, ptr %1, align 1
  %405 = ptrtoint ptr %hw_mac to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %hw_mac, align 4
  %407 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %406, ptr %2, align 4
  %408 = ptrtoint ptr %add.ptr.i480 to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %add.ptr.i480, align 2
  %410 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %410)
  store i16 %409, ptr %3, align 2
  br i1 %cmp.not, label %if.end72.if.end133_crit_edge, label %if.then117

if.end72.if.end133_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.then117:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  %ll2_skb_list = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 9
  %411 = ptrtoint ptr %ll2_skb_list to i32
  call void @__asan_store4_noabort(i32 %411)
  store volatile ptr %ll2_skb_list, ptr %ll2_skb_list, align 4
  %prev.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 9, i32 1
  %412 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %ll2_skb_list, ptr %prev.i, align 4
  %ll2_lock = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %ll2_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @__qedi_probe.__key, i16 noundef signext 3) #14
  %hba_lock = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %hba_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @__qedi_probe.__key.24, i16 noundef signext 3) #14
  %task_idx_lock = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 53
  call void @__raw_spin_lock_init(ptr noundef %task_idx_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @__qedi_probe.__key.26, i16 noundef signext 3) #14
  %stats_lock = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 68
  call void @__mutex_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @__qedi_probe.__key.28) #14
  br label %if.end133

if.end133:                                        ; preds = %if.then117, %if.end72.if.end133_crit_edge
  %413 = load ptr, ptr @qedi_ops, align 4
  %ll2 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %413, i32 0, i32 1
  %414 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %ll2, align 4
  %register_cb_ops = getelementptr inbounds %struct.qed_ll2_ops, ptr %415, i32 0, i32 3
  %416 = ptrtoint ptr %register_cb_ops to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %register_cb_ops, align 4
  %418 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %cdev, align 4
  call void %417(ptr noundef %419, ptr noundef nonnull @qedi_ll2_cb_ops, ptr noundef %qedi.0) #14
  %420 = load ptr, ptr @qedi_ops, align 4
  %ll2135 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %420, i32 0, i32 1
  %421 = ptrtoint ptr %ll2135 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %ll2135, align 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %422, align 4
  %425 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %cdev, align 4
  %call137 = call i32 %424(ptr noundef %426, ptr noundef nonnull %params) #14
  br i1 %cmp.not, label %if.end133.if.end147_crit_edge, label %if.then140

if.end133.if.end147_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

if.then140:                                       ; preds = %if.end133
  %call141 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @qedi_ll2_recv_thread, ptr noundef %qedi.0, i32 noundef -1, ptr noundef nonnull @.str.30) #14
  %cmp.i = icmp ugt ptr %call141, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then140.if.end145_crit_edge, label %if.then143

if.then140.if.end145_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end145

if.then143:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #16
  %call144 = call i32 @wake_up_process(ptr noundef %call141) #14
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.then140.if.end145_crit_edge
  %ll2_recv_thread = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 12
  %427 = ptrtoint ptr %ll2_recv_thread to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %call141, ptr %ll2_recv_thread, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.end145, %if.end133.if.end147_crit_edge
  %428 = load ptr, ptr @qedi_ops, align 4
  %start148 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %428, i32 0, i32 4
  %429 = ptrtoint ptr %start148 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %start148, align 4
  %431 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %cdev, align 4
  %tasks = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 41
  %call150 = call i32 %430(ptr noundef %432, ptr noundef %tasks, ptr noundef %qedi.0, ptr noundef nonnull @qedi_iscsi_event_cb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end154, label %if.then152

if.then152:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2675, ptr noundef nonnull @.str.31) #14
  br label %stop_slowpath

if.end154:                                        ; preds = %if.end147
  %num_tids_per_block.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 41, i32 1
  %arrayidx.i483 = getelementptr %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 41, i32 2
  %433 = ptrtoint ptr %arrayidx.i483 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %arrayidx.i483, align 4
  %435 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %num_tids_per_block.i, align 4
  %.frozen = freeze i32 %436
  %div.i = udiv i32 511, %.frozen
  %arrayidx.i485 = getelementptr %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 41, i32 2, i32 %div.i
  %437 = ptrtoint ptr %arrayidx.i485 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %arrayidx.i485, align 4
  %439 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 511, %439
  %440 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %tasks, align 4
  %mul.i486 = mul i32 %441, %rem.i.decomposed
  %add.ptr.i487 = getelementptr i8, ptr %438, i32 %mul.i486
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2683, i32 noundef 4, ptr noundef nonnull @.str.32, ptr noundef %434, ptr noundef %add.ptr.i487, i32 noundef %441) #14
  %442 = call ptr @memset(ptr %link_params, i32 0, i32 48)
  %443 = ptrtoint ptr %link_params to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 1, ptr %link_params, align 4
  %444 = load ptr, ptr @qedi_ops, align 4
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %444, align 4
  %set_link = getelementptr inbounds %struct.qed_common_ops, ptr %446, i32 0, i32 20
  %447 = ptrtoint ptr %set_link to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %set_link, align 4
  %449 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %cdev, align 4
  %call163 = call i32 %448(ptr noundef %450, ptr noundef nonnull %link_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end154.if.end168_crit_edge, label %if.then165

if.end154.if.end168_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168

if.then165:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2689, ptr noundef nonnull @.str.33) #14
  %call.i.i459 = call zeroext i1 @__kasan_check_write(ptr noundef %link_state, i32 noundef 4) #14
  %451 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %451)
  store volatile i32 0, ptr %link_state, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %if.end154.if.end168_crit_edge
  call void @qedi_dbg_host_init(ptr noundef %qedi.0, ptr noundef nonnull @qedi_debugfs_ops, ptr noundef nonnull @qedi_dbg_fops) #14
  call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2700, i32 noundef 2, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef 59, i32 noundef 1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp171 = icmp eq i32 %mode, 0
  br i1 %cmp171, label %if.then173, label %if.end168.cleanup_crit_edge

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then173:                                       ; preds = %if.end168
  %452 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %shost, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call175 = call i32 @iscsi_host_add(ptr noundef %453, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end179, label %if.then177

if.then177:                                       ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2705, ptr noundef nonnull @.str.35) #14
  br label %remove_host

if.end179:                                        ; preds = %if.then173
  %call180 = call fastcc i32 @qedi_alloc_uio_rings(ptr noundef %qedi.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end184, label %if.then182

if.then182:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2714, ptr noundef nonnull @.str.36, i32 noundef %call180) #14
  br label %remove_host

if.end184:                                        ; preds = %if.end179
  %call185 = call fastcc i32 @qedi_init_uio(ptr noundef %qedi.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end189, label %if.then187

if.then187:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2721, ptr noundef nonnull @.str.37, i32 noundef %call185) #14
  br label %free_uio

if.end189:                                        ; preds = %if.end184
  %call190 = call fastcc i32 @qedi_setup_cid_que(ptr noundef %qedi.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end194, label %if.then192

if.then192:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2729, ptr noundef nonnull @.str.38) #14
  br label %free_uio

if.end194:                                        ; preds = %if.end189
  %call195 = call fastcc i32 @qedi_cm_alloc_mem(ptr noundef %qedi.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end199, label %if.then197

if.then197:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2736, ptr noundef nonnull @.str.39) #14
  br label %free_cid_que

if.end199:                                        ; preds = %if.end194
  %call200 = call fastcc i32 @qedi_alloc_itt(ptr noundef %qedi.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end204, label %if.then202

if.then202:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2743, ptr noundef nonnull @.str.40) #14
  br label %free_cid_que

if.end204:                                        ; preds = %if.end199
  %454 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %shost, align 4
  %host_no207 = getelementptr inbounds %struct.Scsi_Host, ptr %455, i32 0, i32 17
  %456 = ptrtoint ptr %host_no207 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %host_no207, align 4
  %call208 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host_buf, ptr noundef nonnull @.str.22, i32 noundef %457)
  %call210 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.41, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %host_buf) #14
  %tmf_thread = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 47
  %458 = ptrtoint ptr %tmf_thread to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr %call210, ptr %tmf_thread, align 8
  %tobool212.not = icmp eq ptr %call210, null
  br i1 %tobool212.not, label %if.then213, label %if.end215

if.then213:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2751, ptr noundef nonnull @.str.42) #14
  br label %free_cid_que

if.end215:                                        ; preds = %if.end204
  %459 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %shost, align 4
  %host_no218 = getelementptr inbounds %struct.Scsi_Host, ptr %460, i32 0, i32 17
  %461 = ptrtoint ptr %host_no218 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %host_no218, align 4
  %call219 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host_buf, ptr noundef nonnull @.str.43, i32 noundef %462)
  %call221 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.41, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull %host_buf) #14
  %offload_thread = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 48
  %463 = ptrtoint ptr %offload_thread to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %call221, ptr %offload_thread, align 4
  %tobool223.not = icmp eq ptr %call221, null
  br i1 %tobool223.not, label %if.then224, label %do.body228

if.then224:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2760, ptr noundef nonnull @.str.44) #14
  %464 = ptrtoint ptr %tmf_thread to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %tmf_thread, align 8
  call void @destroy_workqueue(ptr noundef %465) #14
  br label %free_cid_que

do.body228:                                       ; preds = %if.end215
  %recovery_work = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 51
  call void @__init_work(ptr noundef %recovery_work, i32 noundef 0) #14
  %466 = ptrtoint ptr %recovery_work to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 -64, ptr %recovery_work, align 8
  %lockdep_map = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 51, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.46, ptr noundef nonnull @__qedi_probe.__key.45, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry235 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 51, i32 0, i32 1
  %467 = ptrtoint ptr %entry235 to i32
  call void @__asan_store4_noabort(i32 %467)
  store volatile ptr %entry235, ptr %entry235, align 4
  %prev.i488 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 51, i32 0, i32 1, i32 1
  %468 = ptrtoint ptr %prev.i488 to i32
  call void @__asan_store4_noabort(i32 %468)
  store ptr %entry235, ptr %prev.i488, align 4
  %func = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 51, i32 0, i32 2
  %469 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr @qedi_recovery_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 51, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.48, ptr noundef nonnull @__qedi_probe.__key.47) #14
  %board_disable_work = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 52
  call void @__init_work(ptr noundef %board_disable_work, i32 noundef 0) #14
  %470 = ptrtoint ptr %board_disable_work to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 -64, ptr %board_disable_work, align 4
  %lockdep_map256 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 52, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map256, ptr noundef nonnull @.str.50, ptr noundef nonnull @__qedi_probe.__key.49, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry259 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 52, i32 0, i32 1
  %471 = ptrtoint ptr %entry259 to i32
  call void @__asan_store4_noabort(i32 %471)
  store volatile ptr %entry259, ptr %entry259, align 4
  %prev.i489 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 52, i32 0, i32 1, i32 1
  %472 = ptrtoint ptr %prev.i489 to i32
  call void @__asan_store4_noabort(i32 %472)
  store ptr %entry259, ptr %prev.i489, align 4
  %func262 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 52, i32 0, i32 2
  %473 = ptrtoint ptr %func262 to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr @qedi_board_disable_work, ptr %func262, align 4
  %timer267 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 52, i32 1
  call void @init_timer_key(ptr noundef %timer267, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.52, ptr noundef nonnull @__qedi_probe.__key.51) #14
  %task_idx_map = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 43
  call void @_set_bit(i32 noundef 0, ptr noundef %task_idx_map) #14
  %num_offloads = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 66
  %call.i.i460 = call zeroext i1 @__kasan_check_write(ptr noundef %num_offloads, i32 noundef 4) #14
  %474 = ptrtoint ptr %num_offloads to i32
  call void @__asan_store4_noabort(i32 %474)
  store volatile i32 0, ptr %num_offloads, align 4
  %call273 = call fastcc i32 @qedi_setup_boot_info(ptr noundef %qedi.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %do.body228.if.end277_crit_edge, label %if.then275

do.body228.if.end277_crit_edge:                   ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end277

if.then275:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2775, ptr noundef nonnull @.str.53) #14
  br label %if.end277

if.end277:                                        ; preds = %if.then275, %do.body228.if.end277_crit_edge
  %475 = load ptr, ptr @qedi_ops, align 4
  %476 = ptrtoint ptr %475 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %475, align 4
  %update_drv_state = getelementptr inbounds %struct.qed_common_ops, ptr %477, i32 0, i32 35
  %478 = ptrtoint ptr %update_drv_state to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %update_drv_state, align 4
  %480 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %cdev, align 4
  %call280 = call i32 %479(ptr noundef %481, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %tobool281.not = icmp eq i32 %call280, 0
  br i1 %tobool281.not, label %if.end277.cleanup_crit_edge, label %if.then282

if.end277.cleanup_crit_edge:                      ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then282:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi.0, ptr noundef nonnull @__func__.__qedi_probe, i32 noundef 2780, ptr noundef nonnull @.str.54) #14
  br label %cleanup

free_cid_que:                                     ; preds = %if.then224, %if.then213, %if.then202, %if.then197
  %rc.0 = phi i32 [ %call195, %if.then197 ], [ %call200, %if.then202 ], [ -19, %if.then224 ], [ -19, %if.then213 ]
  call fastcc void @qedi_release_cid_que(ptr noundef %qedi.0)
  br label %free_uio

free_uio:                                         ; preds = %free_cid_que, %if.then192, %if.then187
  %rc.1 = phi i32 [ %call185, %if.then187 ], [ %call190, %if.then192 ], [ %rc.0, %free_cid_que ]
  %udev = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 8
  %482 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %udev, align 8
  call fastcc void @qedi_free_uio(ptr noundef %483)
  br label %remove_host

remove_host:                                      ; preds = %free_uio, %if.then182, %if.then177
  %rc.2 = phi i32 [ -12, %if.then177 ], [ %call180, %if.then182 ], [ %rc.1, %free_uio ]
  call void @qedi_dbg_host_exit(ptr noundef %qedi.0) #14
  %484 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %shost, align 4
  call void @iscsi_host_remove(ptr noundef %485) #14
  br label %stop_iscsi_func

stop_iscsi_func:                                  ; preds = %remove_host, %if.end62.stop_iscsi_func_crit_edge, %if.end54.stop_iscsi_func_crit_edge
  %rc.3 = phi i32 [ %call59, %if.end54.stop_iscsi_func_crit_edge ], [ %call69, %if.end62.stop_iscsi_func_crit_edge ], [ %rc.2, %remove_host ]
  %486 = load ptr, ptr @qedi_ops, align 4
  %stop = getelementptr inbounds %struct.qed_iscsi_ops, ptr %486, i32 0, i32 5
  %487 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %stop, align 4
  %489 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %cdev, align 4
  %call290 = call i32 %488(ptr noundef %490) #14
  br label %stop_slowpath

stop_slowpath:                                    ; preds = %stop_iscsi_func, %if.then152
  %rc.4 = phi i32 [ %rc.3, %stop_iscsi_func ], [ -19, %if.then152 ]
  %491 = load ptr, ptr @qedi_ops, align 4
  %492 = ptrtoint ptr %491 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %491, align 4
  %slowpath_stop = getelementptr inbounds %struct.qed_common_ops, ptr %493, i32 0, i32 7
  %494 = ptrtoint ptr %slowpath_stop to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %slowpath_stop, align 4
  %496 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %cdev, align 4
  %call293 = call i32 %495(ptr noundef %497) #14
  br label %stop_hw

stop_hw:                                          ; preds = %stop_slowpath, %if.then52
  %rc.5 = phi i32 [ %call50, %if.then52 ], [ %rc.4, %stop_slowpath ]
  %498 = load ptr, ptr @qedi_ops, align 4
  %499 = ptrtoint ptr %498 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %498, align 4
  %remove = getelementptr inbounds %struct.qed_common_ops, ptr %500, i32 0, i32 2
  %501 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %remove, align 4
  %503 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %cdev, align 4
  call void %502(ptr noundef %504) #14
  br label %free_pf_params

free_pf_params:                                   ; preds = %stop_hw, %if.then44
  %rc.6 = phi i32 [ %retval.0.i.ph, %if.then44 ], [ %rc.5, %stop_hw ]
  %505 = ptrtoint ptr %p_cpuq.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %p_cpuq.i, align 8
  %tobool.not.i491 = icmp eq ptr %506, null
  br i1 %tobool.not.i491, label %free_pf_params.qedi_free_iscsi_pf_param.exit_crit_edge, label %if.then.i498

free_pf_params.qedi_free_iscsi_pf_param.exit_crit_edge: ; preds = %free_pf_params
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_free_iscsi_pf_param.exit

if.then.i498:                                     ; preds = %free_pf_params
  call void @__sanitizer_cov_trace_pc() #16
  %507 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %num_queues.i, align 8
  %conv.i493 = zext i8 %508 to i32
  %mul.i494 = mul nuw nsw i32 %conv.i493, 24
  %509 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %pdev.i, align 8
  %dev.i496 = getelementptr inbounds %struct.pci_dev, ptr %510, i32 0, i32 44
  %511 = ptrtoint ptr %hw_p_cpuq.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %hw_p_cpuq.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i496, i32 noundef %mul.i494, ptr noundef nonnull %506, i32 noundef %512, i32 noundef 0) #14
  br label %qedi_free_iscsi_pf_param.exit

qedi_free_iscsi_pf_param.exit:                    ; preds = %if.then.i498, %free_pf_params.qedi_free_iscsi_pf_param.exit_crit_edge
  call fastcc void @qedi_free_global_queues(ptr noundef %qedi.0) #14
  %513 = ptrtoint ptr %global_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %global_queues.i.i, align 4
  call void @kfree(ptr noundef %514) #14
  br label %free_host

free_host:                                        ; preds = %qedi_free_iscsi_pf_param.exit, %if.then37, %if.end20.free_host_crit_edge, %if.end18
  %rc.7 = phi i32 [ %call23, %if.end20.free_host_crit_edge ], [ -12, %if.then37 ], [ %rc.6, %qedi_free_iscsi_pf_param.exit ], [ -19, %if.end18 ]
  %shost296 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi.0, i32 0, i32 1
  %515 = ptrtoint ptr %shost296 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %shost296, align 4
  call void @iscsi_host_free(ptr noundef %516) #14
  br label %cleanup

cleanup:                                          ; preds = %free_host, %if.then282, %if.end277.cleanup_crit_edge, %if.end168.cleanup_crit_edge, %qedi_host_alloc.exit.cleanup_crit_edge, %qedi_host_alloc.exit.thread
  %retval.0 = phi i32 [ 0, %if.end277.cleanup_crit_edge ], [ 0, %if.then282 ], [ 0, %if.end168.cleanup_crit_edge ], [ %rc.7, %free_host ], [ -12, %qedi_host_alloc.exit.cleanup_crit_edge ], [ -12, %qedi_host_alloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %qed_params) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sp_params) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %link_params) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %host_buf) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedi_setup_int(ptr noundef %qedi) unnamed_addr #0 align 64 {
entry:
  %qedi.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qedi.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %qedi, ptr %qedi.addr, align 4
  %1 = load ptr, ptr @qedi_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %set_fp_int = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %set_fp_int to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_fp_int, align 4
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 3
  %6 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev, align 4
  %num_queues = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 33
  %8 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_queues, align 8
  %conv = zext i8 %9 to i16
  %call = tail call i32 %5(ptr noundef %7, i16 noundef zeroext %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.exit_setup_int_crit_edge, label %if.end

entry.exit_setup_int_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_setup_int

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %qedi.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qedi.addr, align 4
  %msix_count = getelementptr inbounds %struct.qedi_ctx, ptr %11, i32 0, i32 35
  %12 = ptrtoint ptr %msix_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %msix_count, align 8
  %13 = load ptr, ptr @qedi_ops, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %get_fp_int = getelementptr inbounds %struct.qed_common_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %get_fp_int to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_fp_int, align 4
  %cdev3 = getelementptr inbounds %struct.qedi_ctx, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %cdev3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdev3, align 4
  %int_info = getelementptr inbounds %struct.qedi_ctx, ptr %11, i32 0, i32 5
  %call4 = tail call i32 %17(ptr noundef %19, ptr noundef %int_info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.exit_setup_int_crit_edge

if.end.exit_setup_int_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_setup_int

if.end6:                                          ; preds = %if.end
  %20 = ptrtoint ptr %qedi.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qedi.addr, align 4
  %msix_cnt = getelementptr inbounds %struct.qedi_ctx, ptr %21, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %msix_cnt, align 4
  %conv8 = zext i8 %23 to i32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %24 = load volatile i32, ptr @__num_online_cpus, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %21, ptr noundef nonnull @__func__.qedi_setup_int, i32 noundef 1453, i32 noundef 4, ptr noundef nonnull @.str.78, i32 noundef %conv8, i32 noundef %24) #14
  %25 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %msix_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %27) #14
  %msix_count.i = getelementptr inbounds %struct.qedi_ctx, ptr %21, i32 0, i32 35
  %28 = ptrtoint ptr %msix_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msix_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp48.i = icmp sgt i32 %29, 0
  br i1 %cmp48.i, label %for.body.lr.ph.i, label %if.then13.exit_setup_int_crit_edge

if.then13.exit_setup_int_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_setup_int

for.body.lr.ph.i:                                 ; preds = %if.then13
  %num_hwfns.i = getelementptr inbounds %struct.qedi_ctx, ptr %21, i32 0, i32 4, i32 0, i32 3
  %cdev.i = getelementptr inbounds %struct.qedi_ctx, ptr %21, i32 0, i32 3
  %int_info.i = getelementptr inbounds %struct.qedi_ctx, ptr %21, i32 0, i32 5
  %fp_array.i = getelementptr inbounds %struct.qedi_ctx, ptr %21, i32 0, i32 40
  %used_cnt.i = getelementptr inbounds %struct.qedi_ctx, ptr %21, i32 0, i32 5, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cpu.050.i = phi i32 [ %call.i.i, %for.body.lr.ph.i ], [ %call25.i, %if.end.i.for.body.i_crit_edge ]
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc26.i, %if.end.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_hwfns.i, align 4
  %conv.i = zext i8 %31 to i32
  %mul.i = mul i32 %i.049.i, %conv.i
  %32 = load ptr, ptr @qedi_ops, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %get_affin_hwfn_idx.i = getelementptr inbounds %struct.qed_common_ops, ptr %34, i32 0, i32 40
  %35 = ptrtoint ptr %get_affin_hwfn_idx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_affin_hwfn_idx.i, align 4
  %37 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cdev.i, align 4
  %call2.i = tail call zeroext i8 %36(ptr noundef %38) #14
  %conv3.i = zext i8 %call2.i to i32
  %add.i = add i32 %mul.i, %conv3.i
  %39 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_hwfns.i, align 4
  %conv8.i = zext i8 %40 to i32
  %41 = load ptr, ptr @qedi_ops, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %get_affin_hwfn_idx10.i = getelementptr inbounds %struct.qed_common_ops, ptr %43, i32 0, i32 40
  %44 = ptrtoint ptr %get_affin_hwfn_idx10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_affin_hwfn_idx10.i, align 4
  %46 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cdev.i, align 4
  %call12.i = tail call zeroext i8 %45(ptr noundef %47) #14
  %conv13.i = zext i8 %call12.i to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %21, ptr noundef nonnull @__func__.qedi_request_msix_irq, i32 noundef 1418, i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %conv8.i, i32 noundef %conv13.i) #14
  %48 = ptrtoint ptr %int_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %int_info.i, align 8
  %idxprom.i = and i32 %add.i, 65535
  %arrayidx.i = getelementptr %struct.msix_entry, ptr %49, i32 %idxprom.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %52 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fp_array.i, align 8
  %arrayidx14.i = getelementptr %struct.qedi_fastpath, ptr %53, i32 %i.049.i
  %call.i47.i = tail call i32 @request_threaded_irq(i32 noundef %51, ptr noundef nonnull @qedi_msix_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef %arrayidx14.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %21, ptr noundef nonnull @__func__.qedi_request_msix_irq, i32 noundef 1424, ptr noundef nonnull @.str.79) #14
  tail call fastcc void @qedi_sync_free_irqs(ptr noundef %21) #14
  br label %exit_setup_int

if.end.i:                                         ; preds = %for.body.i
  %54 = ptrtoint ptr %used_cnt.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %used_cnt.i, align 1
  %inc.i = add i8 %55, 1
  store i8 %inc.i, ptr %used_cnt.i, align 1
  %56 = ptrtoint ptr %int_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %int_info.i, align 8
  %arrayidx21.i = getelementptr %struct.msix_entry, ptr %57, i32 %idxprom.i
  %58 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx21.i, align 4
  %rem.i.i = and i32 %cpu.050.i, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %cpu.050.i, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %call.i.i.i22 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %59, ptr noundef %add.ptr.i.i, i1 noundef zeroext true) #14
  %call25.i = tail call i32 @cpumask_next(i32 noundef %cpu.050.i, ptr noundef nonnull @__cpu_online_mask) #17
  %inc26.i = add nuw nsw i32 %i.049.i, 1
  %60 = ptrtoint ptr %msix_count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msix_count.i, align 8
  %cmp.i = icmp slt i32 %inc26.i, %61
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.exit_setup_int_crit_edge

if.end.i.exit_setup_int_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_setup_int

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %62 = load ptr, ptr @qedi_ops, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %simd_handler_config = getelementptr inbounds %struct.qed_common_ops, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %simd_handler_config to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %simd_handler_config, align 4
  %cdev16 = getelementptr inbounds %struct.qedi_ctx, ptr %21, i32 0, i32 3
  %67 = ptrtoint ptr %cdev16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cdev16, align 4
  call void %66(ptr noundef %68, ptr noundef nonnull %qedi.addr, i32 noundef 0, ptr noundef nonnull @qedi_simd_int_handler) #14
  %69 = ptrtoint ptr %qedi.addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %qedi.addr, align 4
  %used_cnt = getelementptr inbounds %struct.qedi_ctx, ptr %70, i32 0, i32 5, i32 2
  %71 = ptrtoint ptr %used_cnt to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %used_cnt, align 1
  br label %exit_setup_int

exit_setup_int:                                   ; preds = %if.else, %if.end.i.exit_setup_int_crit_edge, %if.then.i, %if.then13.exit_setup_int_crit_edge, %if.end.exit_setup_int_crit_edge, %entry.exit_setup_int_crit_edge
  %rc.0 = phi i32 [ %call, %entry.exit_setup_int_crit_edge ], [ %call4, %if.end.exit_setup_int_crit_edge ], [ 0, %if.else ], [ %call.i47.i, %if.then.i ], [ 0, %if.then13.exit_setup_int_crit_edge ], [ 0, %if.end.i.exit_setup_int_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_ll2_recv_thread(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !395) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %3, i32 noundef -20) #14
  %call1170 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call1170, label %entry.__here131_crit_edge, label %while.body.lr.ph

entry.__here131_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here131

while.body.lr.ph:                                 ; preds = %entry
  %ll2_lock = getelementptr inbounds %struct.qedi_ctx, ptr %arg, i32 0, i32 10
  %ll2_skb_list = getelementptr inbounds %struct.qedi_ctx, ptr %arg, i32 0, i32 9
  %tobool.not.i = icmp eq ptr %arg, null
  %udev1.i = getelementptr inbounds %struct.qedi_ctx, ptr %arg, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %__here.while.body_crit_edge, %while.body.lr.ph
  tail call void @_raw_spin_lock_bh(ptr noundef %ll2_lock) #14
  %4 = ptrtoint ptr %ll2_skb_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ll2_skb_list, align 4
  %cmp.not167 = icmp eq ptr %5, %ll2_skb_list
  br i1 %cmp.not167, label %while.body.__here_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.__here_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

for.body:                                         ; preds = %qedi_ll2_process_skb.exit.for.body_crit_edge, %while.body.for.body_crit_edge
  %work.0168 = phi ptr [ %work_tmp.0, %qedi_ll2_process_skb.exit.for.body_crit_edge ], [ %5, %while.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %work.0168 to i32
  call void @__asan_load4_noabort(i32 %6)
  %work_tmp.0 = load ptr, ptr %work.0168, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work.0168) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.0168, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %work.0168 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %work.0168, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %work.0168 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %work.0168, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %work.0168, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %skb = getelementptr inbounds %struct.skb_work_list, ptr %work.0168, i32 0, i32 1
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_ll2_process_skb, i32 noundef 747, ptr noundef nonnull @.str.97) #14
  br label %qedi_ll2_process_skb.exit

if.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_id = getelementptr inbounds %struct.skb_work_list, ptr %work.0168, i32 0, i32 2
  %15 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan_id, align 4
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb, align 4
  %19 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev1.i, align 8
  %uctrl2.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %uctrl2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uctrl2.i, align 4
  %hw_rx_prod_cnt.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %hw_rx_prod_cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_rx_prod_cnt.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %hw_rx_prod_cnt.i, align 4
  %hw_rx_prod.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %22, i32 0, i32 7
  %25 = ptrtoint ptr %hw_rx_prod.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_rx_prod.i, align 4
  %add.i = add i32 %26, 1
  %rem.i = urem i32 %add.i, 15
  %rx_pkt.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %20, i32 0, i32 7
  %27 = ptrtoint ptr %rx_pkt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_pkt.i, align 4
  %29 = load i32, ptr @qedi_ll2_buf_size, align 4
  %mul.i = mul i32 %rem.i, %29
  %add.ptr.i = getelementptr i8, ptr %28, i32 %mul.i
  %len3.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %30 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len3.i, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %29) #14
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %35 = call ptr @memcpy(ptr %add.ptr.i, ptr %34, i32 %32)
  %hw_rx_bd_prod.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %22, i32 0, i32 8
  %36 = ptrtoint ptr %hw_rx_bd_prod.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_rx_bd_prod.i, align 4
  %add5.i = add i32 %37, 1
  %rem6.i = urem i32 %add5.i, 341
  store i32 %rem6.i, ptr %hw_rx_bd_prod.i, align 4
  %ll2_ring.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %20, i32 0, i32 4
  %38 = ptrtoint ptr %ll2_ring.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ll2_ring.i, align 4
  %add.ptr9.i = getelementptr %struct.qedi_rx_bd, ptr %39, i32 %rem6.i
  %40 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rem.i, ptr %add.ptr9.i, align 4
  %rxbd.sroa.7.0.p_rxbd.0.29.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr9.i, i32 4
  %41 = ptrtoint ptr %rxbd.sroa.7.0.p_rxbd.0.29.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %32, ptr %rxbd.sroa.7.0.p_rxbd.0.29.sroa_idx.i, align 4
  %rxbd.sroa.9.0.p_rxbd.0.29.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr9.i, i32 8
  %42 = ptrtoint ptr %rxbd.sroa.9.0.p_rxbd.0.29.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %16, ptr %rxbd.sroa.9.0.p_rxbd.0.29.sroa_idx.i, align 4
  %rxbd.sroa.10.0.p_rxbd.0.29.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr9.i, i32 10
  %43 = ptrtoint ptr %rxbd.sroa.10.0.p_rxbd.0.29.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %rxbd.sroa.10.0.p_rxbd.0.29.sroa_idx.i, align 2
  %44 = ptrtoint ptr %hw_rx_prod.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hw_rx_prod.i, align 4
  %46 = load i32, ptr %hw_rx_bd_prod.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef nonnull %arg, ptr noundef nonnull @__func__.qedi_ll2_process_skb, i32 noundef 776, i32 noundef 8, ptr noundef nonnull @.str.103, i32 noundef %45, i32 noundef %rem.i, i32 noundef %46, i32 noundef %rem.i, i32 noundef %32) #14
  %host_rx_cons.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %22, i32 0, i32 2
  %47 = ptrtoint ptr %host_rx_cons.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %host_rx_cons.i, align 4
  %host_rx_bd_cons.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %22, i32 0, i32 3
  %49 = ptrtoint ptr %host_rx_bd_cons.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %host_rx_bd_cons.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef nonnull %arg, ptr noundef nonnull @__func__.qedi_ll2_process_skb, i32 noundef 779, i32 noundef 8, ptr noundef nonnull @.str.104, i32 noundef %48, i32 noundef %50) #14
  %51 = ptrtoint ptr %hw_rx_prod.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %rem.i, ptr %hw_rx_prod.i, align 4
  tail call void @uio_event_notify(ptr noundef %20) #14
  br label %qedi_ll2_process_skb.exit

qedi_ll2_process_skb.exit:                        ; preds = %if.end.i, %if.then.i
  %52 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %53, i32 noundef 0) #14
  tail call void @kfree(ptr noundef %work.0168) #14
  %cmp.not = icmp eq ptr %work_tmp.0, %ll2_skb_list
  br i1 %cmp.not, label %qedi_ll2_process_skb.exit.__here_crit_edge, label %qedi_ll2_process_skb.exit.for.body_crit_edge

qedi_ll2_process_skb.exit.for.body_crit_edge:     ; preds = %qedi_ll2_process_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

qedi_ll2_process_skb.exit.__here_crit_edge:       ; preds = %qedi_ll2_process_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %qedi_ll2_process_skb.exit.__here_crit_edge, %while.body.__here_crit_edge
  %54 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 212
  %56 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 ptrtoint (ptr blockaddress(@qedi_ll2_recv_thread, %__here) to i32), ptr %task_state_change, align 4
  %57 = load ptr, ptr %task, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 1, ptr %57, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !412
  tail call void @_raw_spin_unlock_bh(ptr noundef %ll2_lock) #14
  tail call void @schedule() #14
  %call1 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call1, label %__here.__here131_crit_edge, label %__here.while.body_crit_edge

__here.while.body_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

__here.__here131_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here131

__here131:                                        ; preds = %__here.__here131_crit_edge, %entry.__here131_crit_edge
  %59 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task, align 8
  %task_state_change135 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 212
  %61 = ptrtoint ptr %task_state_change135 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 ptrtoint (ptr blockaddress(@qedi_ll2_recv_thread, %__here131) to i32), ptr %task_state_change135, align 4
  %62 = load ptr, ptr %task, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 0, ptr %62, align 128
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_iscsi_event_cb(ptr noundef %context, i8 noundef zeroext %fw_event_code, ptr noundef %fw_handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %context, null
  %tobool1.not = icmp eq ptr %fw_handle, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_iscsi_event_cb, i32 noundef 81, ptr noundef nonnull @.str.105) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %fw_event_code to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef nonnull %context, ptr noundef nonnull @__func__.qedi_iscsi_event_cb, i32 noundef 87, i32 noundef 2, ptr noundef nonnull @.str.106, i32 noundef %conv, ptr noundef nonnull %fw_handle) #14
  %0 = ptrtoint ptr %fw_handle to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fw_handle, align 2
  %conv3 = zext i16 %1 to i32
  %conn_id = getelementptr inbounds %struct.iscsi_eqe_data, ptr %fw_handle, i32 0, i32 1
  %2 = ptrtoint ptr %conn_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %conn_id, align 2
  %conv4 = zext i16 %3 to i32
  %error_code = getelementptr inbounds %struct.iscsi_eqe_data, ptr %fw_handle, i32 0, i32 3
  %4 = ptrtoint ptr %error_code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error_code, align 2
  %conv5 = zext i8 %5 to i32
  %error_pdu_opcode_reserved = getelementptr inbounds %struct.iscsi_eqe_data, ptr %fw_handle, i32 0, i32 4
  %6 = ptrtoint ptr %error_pdu_opcode_reserved to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %error_pdu_opcode_reserved, align 1
  %conv6 = zext i8 %7 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef nonnull %context, ptr noundef nonnull @__func__.qedi_iscsi_event_cb, i32 noundef 93, i32 noundef 2, ptr noundef nonnull @.str.107, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6) #14
  %ep_tbl = getelementptr inbounds %struct.qedi_ctx, ptr %context, i32 0, i32 37
  %8 = ptrtoint ptr %ep_tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep_tbl, align 8
  %10 = ptrtoint ptr %fw_handle to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fw_handle, align 2
  %idxprom = zext i16 %11 to i32
  %arrayidx = getelementptr ptr, ptr %9, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.then9, label %if.end30

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef nonnull %context, ptr noundef nonnull @__func__.qedi_iscsi_event_cb, i32 noundef 100, ptr noundef nonnull @.str.108, i32 noundef %idxprom) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 101, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %14 = zext i8 %fw_event_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %fw_event_code, label %sw.default [
    i8 8, label %sw.bb
    i8 9, label %sw.bb36
    i8 18, label %sw.bb39
    i8 11, label %if.end30.sw.bb40_crit_edge
    i8 13, label %if.end30.sw.bb40_crit_edge70
    i8 14, label %if.end30.sw.bb40_crit_edge71
    i8 15, label %if.end30.sw.bb40_crit_edge72
    i8 16, label %if.end30.sw.bb40_crit_edge73
    i8 17, label %if.end30.sw.bb40_crit_edge74
    i8 19, label %if.end30.sw.bb40_crit_edge75
  ]

if.end30.sw.bb40_crit_edge75:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb40

if.end30.sw.bb40_crit_edge74:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb40

if.end30.sw.bb40_crit_edge73:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb40

if.end30.sw.bb40_crit_edge72:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb40

if.end30.sw.bb40_crit_edge71:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb40

if.end30.sw.bb40_crit_edge70:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb40

if.end30.sw.bb40_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb40

sw.bb:                                            ; preds = %if.end30
  %state = getelementptr inbounds %struct.qedi_endpoint, ptr %13, i32 0, i32 10
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp = icmp eq i32 %16, 4
  br i1 %cmp, label %if.then33, label %sw.bb.if.end35_crit_edge

sw.bb.if.end35_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then33:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %state, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %sw.bb.if.end35_crit_edge
  %tcp_ofld_wait = getelementptr inbounds %struct.qedi_endpoint, ptr %13, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %tcp_ofld_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

sw.bb36:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %state37 = getelementptr inbounds %struct.qedi_endpoint, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %state37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %state37, align 4
  %tcp_ofld_wait38 = getelementptr inbounds %struct.qedi_endpoint, ptr %13, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %tcp_ofld_wait38, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

sw.bb39:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qedi_process_iscsi_error(ptr noundef nonnull %13, ptr noundef nonnull %fw_handle) #14
  br label %cleanup

sw.bb40:                                          ; preds = %if.end30.sw.bb40_crit_edge, %if.end30.sw.bb40_crit_edge70, %if.end30.sw.bb40_crit_edge71, %if.end30.sw.bb40_crit_edge72, %if.end30.sw.bb40_crit_edge73, %if.end30.sw.bb40_crit_edge74, %if.end30.sw.bb40_crit_edge75
  tail call void @qedi_process_tcp_error(ptr noundef nonnull %13, ptr noundef nonnull %fw_handle) #14
  br label %cleanup

sw.default:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef nonnull %context, ptr noundef nonnull @__func__.qedi_iscsi_event_cb, i32 noundef 130, ptr noundef nonnull @.str.109, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb40, %sw.bb39, %sw.bb36, %if.end35, %if.then9, %if.then
  %retval.0 = phi i32 [ -19, %if.then9 ], [ -22, %if.then ], [ 0, %sw.default ], [ 0, %sw.bb40 ], [ 0, %sw.bb39 ], [ 0, %sw.bb36 ], [ 0, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_host_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedi_alloc_uio_rings(ptr noundef %qedi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @qedi_udev_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @qedi_udev_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %pdev = getelementptr i8, ptr %.pn, i32 36
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %3 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1, align 8
  %cmp2 = icmp eq ptr %2, %4
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then:                                          ; preds = %for.body
  %udev.0.le = getelementptr i8, ptr %.pn, i32 -288
  %qedi3 = getelementptr i8, ptr %.pn, i32 32
  %5 = ptrtoint ptr %qedi3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %qedi, ptr %qedi3, align 4
  %call = tail call fastcc i32 @__qedi_alloc_uio_rings(ptr noundef %udev.0.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %qedi3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %qedi3, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %udev6 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 8
  %7 = ptrtoint ptr %udev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %udev.0.le, ptr %udev6, align 8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 332) #19
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %for.end.cleanup_crit_edge, label %if.end15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %uio_dev = getelementptr inbounds %struct.qedi_uio_dev, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %uio_dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %uio_dev, align 4
  %qedi16 = getelementptr inbounds %struct.qedi_uio_dev, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %qedi16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %qedi, ptr %qedi16, align 8
  %11 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev1, align 8
  %pdev18 = getelementptr inbounds %struct.qedi_uio_dev, ptr %call7.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %pdev18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %pdev18, align 4
  %call19 = tail call fastcc i32 @__qedi_alloc_uio_rings(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %err_uctrl

if.end22:                                         ; preds = %if.end15
  %list23 = getelementptr inbounds %struct.qedi_uio_dev, ptr %call7.i.i, i32 0, i32 2
  %14 = load ptr, ptr @qedi_udev_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list23, ptr noundef nonnull @qedi_udev_list, ptr noundef %14) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.list_add.exit_crit_edge

if.end22.list_add.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list23, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %list23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %list23, align 8
  %prev3.i.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @qedi_udev_list, ptr %prev3.i.i, align 4
  store volatile ptr %list23, ptr @qedi_udev_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end22.list_add.exit_crit_edge
  %18 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev18, align 4
  %call25 = tail call ptr @pci_dev_get(ptr noundef %19) #14
  %udev26 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 8
  %20 = ptrtoint ptr %udev26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %udev26, align 8
  %ll2_buf = getelementptr inbounds %struct.qedi_uio_dev, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %ll2_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ll2_buf, align 4
  %tx_pkt = getelementptr inbounds %struct.qedi_uio_dev, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %tx_pkt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %tx_pkt, align 4
  %24 = load i32, ptr @qedi_ll2_buf_size, align 4
  %add.ptr28 = getelementptr i8, ptr %22, i32 %24
  %rx_pkt = getelementptr inbounds %struct.qedi_uio_dev, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %rx_pkt to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr28, ptr %rx_pkt, align 8
  br label %cleanup

err_uctrl:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_uctrl, %list_add.exit, %for.end.cleanup_crit_edge, %if.end, %if.then4
  %retval.0 = phi i32 [ -12, %if.then4 ], [ 0, %if.end ], [ 0, %list_add.exit ], [ -12, %for.end.cleanup_crit_edge ], [ -12, %err_uctrl ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedi_init_uio(ptr noundef %qedi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %udev1 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 8
  %0 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %uctrl = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %uctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uctrl, align 4
  %4 = ptrtoint ptr %3 to i32
  %addr = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %addr, align 4
  %size = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 48, ptr %size, align 4
  %memtype = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 3, i32 0, i32 4
  %7 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %memtype, align 4
  %ll2_ring = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ll2_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ll2_ring, align 4
  %10 = ptrtoint ptr %9 to i32
  %addr8 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 1, i32 1
  %11 = ptrtoint ptr %addr8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %addr8, align 4
  %ll2_ring_size = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ll2_ring_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ll2_ring_size, align 4
  %size11 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 1, i32 3
  %14 = ptrtoint ptr %size11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size11, align 4
  %memtype14 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 1, i32 4
  %15 = ptrtoint ptr %memtype14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %memtype14, align 4
  %ll2_buf = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %ll2_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ll2_buf, align 4
  %18 = ptrtoint ptr %17 to i32
  %addr17 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 2, i32 1
  %19 = ptrtoint ptr %addr17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %addr17, align 4
  %ll2_buf_size = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %ll2_buf_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ll2_buf_size, align 4
  %size20 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 2, i32 3
  %22 = ptrtoint ptr %size20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %size20, align 4
  %memtype23 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 2, i32 4
  %23 = ptrtoint ptr %memtype23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %memtype23, align 4
  %name = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.110, ptr %name, align 4
  %version = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.11, ptr %version, align 4
  %irq = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %irq, align 4
  %open = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @qedi_uio_open, ptr %open, align 4
  %release = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @qedi_uio_close, ptr %release, align 4
  %uio_dev = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %uio_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uio_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp = icmp eq i32 %30, -1
  br i1 %cmp, label %if.then24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then24:                                        ; preds = %if.end
  %priv = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 4
  %tobool25.not = icmp eq ptr %32, null
  br i1 %tobool25.not, label %if.then26, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then26:                                        ; preds = %if.then24
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %priv, align 4
  %pdev = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %call = tail call i32 @__uio_register_device(ptr noundef null, ptr noundef %dev, ptr noundef nonnull %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.then26.cleanup_crit_edge, label %if.then29

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_init_uio, i32 noundef 343, ptr noundef nonnull @.str.111) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.then26.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then24.cleanup_crit_edge ], [ %call, %if.then29 ], [ 0, %if.then26.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedi_setup_cid_que(ptr nocapture noundef %qedi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %max_active_conns = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 34
  %0 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_active_conns, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #14
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !413

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cid_que87 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36
  br label %cleanup.sink.split

if.end7.i:                                        ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #18
  %cid_que = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36
  %5 = ptrtoint ptr %cid_que to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i, ptr %cid_que, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %6 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_active_conns, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #14
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kmalloc_array.exit85.thread, label %if.end7.i83, !prof !413

kmalloc_array.exit85.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conn_cid_tbl95 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36, i32 6
  %10 = ptrtoint ptr %conn_cid_tbl95 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %conn_cid_tbl95, align 4
  br label %if.then9

if.end7.i83:                                      ; preds = %if.end
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i82 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #18
  %conn_cid_tbl = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36, i32 6
  %12 = ptrtoint ptr %conn_cid_tbl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i82, ptr %conn_cid_tbl, align 4
  %tobool8.not = icmp eq ptr %call8.i82, null
  br i1 %tobool8.not, label %if.end7.i83.if.then9_crit_edge, label %if.end14

if.end7.i83.if.then9_crit_edge:                   ; preds = %if.end7.i83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.then9:                                         ; preds = %if.end7.i83.if.then9_crit_edge, %kmalloc_array.exit85.thread
  %13 = ptrtoint ptr %cid_que to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cid_que, align 4
  tail call void @kfree(ptr noundef %14) #14
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end7.i83
  %15 = ptrtoint ptr %cid_que to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cid_que, align 4
  %cid_que18 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36, i32 1
  %17 = ptrtoint ptr %cid_que18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %cid_que18, align 4
  %cid_q_prod_idx = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36, i32 2
  %18 = ptrtoint ptr %cid_q_prod_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cid_q_prod_idx, align 4
  %cid_q_cons_idx = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36, i32 3
  %19 = ptrtoint ptr %cid_q_cons_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cid_q_cons_idx, align 4
  %20 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_active_conns, align 4
  %cid_q_max_idx = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36, i32 4
  %22 = ptrtoint ptr %cid_q_max_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cid_q_max_idx, align 4
  %cid_free_cnt = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36, i32 5
  %23 = ptrtoint ptr %cid_free_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %cid_free_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp102.not = icmp eq i32 %21, 0
  br i1 %cmp102.not, label %if.end14.cleanup_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end14.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %24 = ptrtoint ptr %cid_que18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cid_que18, align 4
  %arrayidx = getelementptr i32, ptr %25, i32 %i.0103
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %i.0103, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %conn_cid_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %conn_cid_tbl, align 4
  %arrayidx30 = getelementptr ptr, ptr %28, i32 %i.0103
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx30, align 4
  %inc = add nuw i32 %i.0103, 1
  %30 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_active_conns, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then9, %kmalloc_array.exit.thread
  %cid_que87.sink = phi ptr [ %cid_que87, %kmalloc_array.exit.thread ], [ %cid_que, %if.then9 ]
  %32 = ptrtoint ptr %cid_que87.sink to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %cid_que87.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ -12, %cleanup.sink.split ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedi_cm_alloc_mem(ptr noundef %qedi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %max_active_conns = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 34
  %0 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_active_conns, align 4
  %mul = shl i32 %1, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #18
  %ep_tbl = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 37
  %2 = ptrtoint ptr %ep_tbl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %ep_tbl, align 8
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @prandom_u32() #14
  %3 = trunc i32 %call2 to i16
  %conv = and i16 %3, 1023
  %lcl_port_tbl = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 38
  %start.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 38, i32 1
  %4 = ptrtoint ptr %start.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -5536, ptr %start.i, align 4
  %max.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 38, i32 2
  %5 = ptrtoint ptr %max.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1024, ptr %max.i, align 2
  %next1.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 38, i32 3
  %6 = ptrtoint ptr %next1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %next1.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %lcl_port_tbl, ptr noundef nonnull @.str.112, ptr noundef nonnull @qedi_init_id_tbl.__key, i16 noundef signext 3) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 128) #19
  %table.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 38, i32 4
  %8 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i.i, ptr %table.i, align 4
  %tobool.not.i.not = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %ep_tbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep_tbl, align 8
  tail call void @kfree(ptr noundef %10) #14
  %11 = ptrtoint ptr %ep_tbl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ep_tbl, align 8
  %12 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %table.i, align 4
  tail call void @kfree(ptr noundef %13) #14
  %14 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %table.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedi_alloc_itt(ptr noundef %qedi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3520, i32 noundef 3) #18
  %itt_map = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 44
  %0 = ptrtoint ptr %itt_map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i.i.i.i, ptr %itt_map, align 8
  %tobool.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_alloc_itt, i32 noundef 1908, ptr noundef nonnull @.str.113) #14
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_recovery_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shost = getelementptr i8, ptr %work, i32 -13436
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 4
  tail call void @iscsi_host_for_each_session(ptr noundef %1, ptr noundef nonnull @qedi_mark_conn_recovery) #14
  %2 = load ptr, ptr @qedi_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %recovery_prolog = getelementptr inbounds %struct.qed_common_ops, ptr %4, i32 0, i32 34
  %5 = ptrtoint ptr %recovery_prolog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %recovery_prolog, align 4
  %cdev = getelementptr i8, ptr %work, i32 -13428
  %7 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdev, align 4
  %call = tail call i32 %6(ptr noundef %8) #14
  %pdev = getelementptr i8, ptr %work, i32 -13432
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  tail call fastcc void @__qedi_remove(ptr noundef %10, i32 noundef 1)
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %call2 = tail call fastcc i32 @__qedi_probe(ptr noundef %12, i32 noundef 1)
  %flags = getelementptr i8, ptr %work, i32 -13228
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_board_disable_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -13548
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedi_board_disable_work, i32 noundef 2491, i32 noundef 2, ptr noundef nonnull @.str.114) #14
  %flags = getelementptr i8, ptr %work, i32 -13328
  %call = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pdev = getelementptr i8, ptr %work, i32 -13532
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  tail call fastcc void @__qedi_remove(ptr noundef %1, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedi_setup_boot_info(ptr noundef %qedi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_boot_info, i32 noundef 2320, i32 noundef 2, ptr noundef nonnull @.str.115) #14
  %0 = load ptr, ptr @qedi_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %nvm_get_image.i = getelementptr inbounds %struct.qed_common_ops, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %nvm_get_image.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nvm_get_image.i, align 4
  %cdev.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 3
  %5 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdev.i, align 4
  %iscsi_image.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 26
  %7 = ptrtoint ptr %iscsi_image.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iscsi_image.i, align 8
  %call.i = tail call i32 %4(ptr noundef %6, i32 noundef 0, ptr noundef %8, i16 noundef zeroext 24584) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %qedi_get_boot_info.exit

qedi_get_boot_info.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_get_boot_info, i32 noundef 2327, ptr noundef nonnull @.str.116, i32 noundef %call.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shost = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 1
  %9 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shost, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_no, align 4
  %call1 = tail call ptr @iscsi_boot_create_host_kset(i32 noundef %12) #14
  %boot_kset = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 67
  %13 = ptrtoint ptr %boot_kset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call1, ptr %boot_kset, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.kset_free_crit_edge, label %if.end5

if.end.kset_free_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %kset_free

if.end5:                                          ; preds = %if.end
  %14 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost, align 4
  %call7 = tail call ptr @scsi_host_get(ptr noundef %15) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.kset_free_crit_edge, label %if.end10

if.end5.kset_free_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %kset_free

if.end10:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %boot_kset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %boot_kset, align 4
  %call12 = tail call ptr @iscsi_boot_create_target(ptr noundef %17, i32 noundef 0, ptr noundef %qedi, ptr noundef nonnull @qedi_show_boot_tgt_pri_info, ptr noundef nonnull @qedi_tgt_get_attr_visibility, ptr noundef nonnull @qedi_boot_release) #14
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.put_host_crit_edge, label %if.end15

if.end10.put_host_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_host

if.end15:                                         ; preds = %if.end10
  %18 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost, align 4
  %call17 = tail call ptr @scsi_host_get(ptr noundef %19) #14
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.kset_free_crit_edge, label %if.end20

if.end15.kset_free_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %kset_free

if.end20:                                         ; preds = %if.end15
  %20 = ptrtoint ptr %boot_kset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %boot_kset, align 4
  %call22 = tail call ptr @iscsi_boot_create_target(ptr noundef %21, i32 noundef 1, ptr noundef %qedi, ptr noundef nonnull @qedi_show_boot_tgt_sec_info, ptr noundef nonnull @qedi_tgt_get_attr_visibility, ptr noundef nonnull @qedi_boot_release) #14
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.put_host_crit_edge, label %if.end25

if.end20.put_host_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_host

if.end25:                                         ; preds = %if.end20
  %22 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost, align 4
  %call27 = tail call ptr @scsi_host_get(ptr noundef %23) #14
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.kset_free_crit_edge, label %if.end30

if.end25.kset_free_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %kset_free

if.end30:                                         ; preds = %if.end25
  %24 = ptrtoint ptr %boot_kset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %boot_kset, align 4
  %call32 = tail call ptr @iscsi_boot_create_initiator(ptr noundef %25, i32 noundef 0, ptr noundef %qedi, ptr noundef nonnull @qedi_show_boot_ini_info, ptr noundef nonnull @qedi_ini_get_attr_visibility, ptr noundef nonnull @qedi_boot_release) #14
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end30.put_host_crit_edge, label %if.end35

if.end30.put_host_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_host

if.end35:                                         ; preds = %if.end30
  %26 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shost, align 4
  %call37 = tail call ptr @scsi_host_get(ptr noundef %27) #14
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end35.kset_free_crit_edge, label %if.end40

if.end35.kset_free_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %kset_free

if.end40:                                         ; preds = %if.end35
  %28 = ptrtoint ptr %boot_kset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %boot_kset, align 4
  %call42 = tail call ptr @iscsi_boot_create_ethernet(ptr noundef %29, i32 noundef 0, ptr noundef %qedi, ptr noundef nonnull @qedi_show_boot_eth_info, ptr noundef nonnull @qedi_eth_get_attr_visibility, ptr noundef nonnull @qedi_boot_release) #14
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end40.put_host_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end40.put_host_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_host

put_host:                                         ; preds = %if.end40.put_host_crit_edge, %if.end30.put_host_crit_edge, %if.end20.put_host_crit_edge, %if.end10.put_host_crit_edge
  %30 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shost, align 4
  tail call void @scsi_host_put(ptr noundef %31) #14
  br label %kset_free

kset_free:                                        ; preds = %put_host, %if.end35.kset_free_crit_edge, %if.end25.kset_free_crit_edge, %if.end15.kset_free_crit_edge, %if.end5.kset_free_crit_edge, %if.end.kset_free_crit_edge
  %32 = ptrtoint ptr %boot_kset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %boot_kset, align 4
  tail call void @iscsi_boot_destroy_kset(ptr noundef %33) #14
  br label %cleanup

cleanup:                                          ; preds = %kset_free, %if.end40.cleanup_crit_edge, %qedi_get_boot_info.exit
  %retval.0 = phi i32 [ -12, %kset_free ], [ -1, %qedi_get_boot_info.exit ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedi_release_cid_que(ptr nocapture noundef %qedi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cid_que = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36
  %0 = ptrtoint ptr %cid_que to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cid_que, align 4
  tail call void @kfree(ptr noundef %1) #14
  %2 = ptrtoint ptr %cid_que to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cid_que, align 4
  %conn_cid_tbl = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 36, i32 6
  %3 = ptrtoint ptr %conn_cid_tbl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conn_cid_tbl, align 4
  tail call void @kfree(ptr noundef %4) #14
  %5 = ptrtoint ptr %conn_cid_tbl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %conn_cid_tbl, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedi_free_uio(ptr noundef %udev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %udev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @uio_unregister_device(ptr noundef nonnull %udev) #14
  %uctrl.i.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 11
  %8 = ptrtoint ptr %uctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uctrl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %list_del_init.exit.if.end.i.i3_crit_edge, label %if.then.i.i

list_del_init.exit.if.end.i.i3_crit_edge:         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i3

if.then.i.i:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %9 to i32
  tail call void @free_pages(i32 noundef %10, i32 noundef 0) #14
  %11 = ptrtoint ptr %uctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %uctrl.i.i, align 4
  br label %if.end.i.i3

if.end.i.i3:                                      ; preds = %if.then.i.i, %list_del_init.exit.if.end.i.i3_crit_edge
  %ll2_ring.i.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 4
  %12 = ptrtoint ptr %ll2_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ll2_ring.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i.i, label %if.end.i.i3.if.end7.i.i_crit_edge, label %if.then4.i.i

if.end.i.i3.if.end7.i.i_crit_edge:                ; preds = %if.end.i.i3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i3
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %13 to i32
  tail call void @free_pages(i32 noundef %14, i32 noundef 0) #14
  %15 = ptrtoint ptr %ll2_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ll2_ring.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i3.if.end7.i.i_crit_edge
  %ll2_buf.i.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 6
  %16 = ptrtoint ptr %ll2_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ll2_buf.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %17, null
  br i1 %tobool8.not.i.i, label %if.end7.i.i.__qedi_free_uio.exit_crit_edge, label %if.then9.i.i

if.end7.i.i.__qedi_free_uio.exit_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__qedi_free_uio.exit

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %17 to i32
  tail call void @free_pages(i32 noundef %18, i32 noundef 2) #14
  %19 = ptrtoint ptr %ll2_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ll2_buf.i.i, align 4
  br label %__qedi_free_uio.exit

__qedi_free_uio.exit:                             ; preds = %if.then9.i.i, %if.end7.i.i.__qedi_free_uio.exit_crit_edge
  %pdev.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 10
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_dev_put(ptr noundef %21) #14
  tail call void @kfree(ptr noundef nonnull %udev) #14
  br label %return

return:                                           ; preds = %__qedi_free_uio.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_host_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_host_alloc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedi_free_global_queues(ptr nocapture noundef readonly %qedi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %global_queues = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 7
  %0 = ptrtoint ptr %global_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global_queues, align 4
  %num_queues = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 33
  %2 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp54.not = icmp eq i8 %3, 0
  br i1 %cmp54.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.055
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %cq_mem_size = getelementptr inbounds %struct.global_queue, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %cq_mem_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cq_mem_size, align 4
  %cq_dma = getelementptr inbounds %struct.global_queue, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %cq_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %11, ptr noundef nonnull %7, i32 noundef %13, i32 noundef 0) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %cq_pbl = getelementptr inbounds %struct.global_queue, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %cq_pbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cq_pbl, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %if.end9.if.end19_crit_edge, label %if.then12

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %cq_pbl_size = getelementptr inbounds %struct.global_queue, ptr %15, i32 0, i32 6
  %20 = ptrtoint ptr %cq_pbl_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cq_pbl_size, align 4
  %cq_pbl_dma = getelementptr inbounds %struct.global_queue, ptr %15, i32 0, i32 5
  %22 = ptrtoint ptr %cq_pbl_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cq_pbl_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev14, i32 noundef %21, ptr noundef nonnull %17, i32 noundef %23, i32 noundef 0) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end9.if.end19_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %25) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %26 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_queues, align 8
  %conv = zext i8 %27 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %bdq_pbl_list.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 23
  %28 = ptrtoint ptr %bdq_pbl_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bdq_pbl_list.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %for.end.if.end.i_crit_edge, label %if.then.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %pdev.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 2
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %bdq_pbl_list_dma.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 24
  %32 = ptrtoint ptr %bdq_pbl_list_dma.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bdq_pbl_list_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %29, i32 noundef %33, i32 noundef 0) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.end.if.end.i_crit_edge
  %bdq_pbl.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 20
  %34 = ptrtoint ptr %bdq_pbl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bdq_pbl.i, align 8
  %tobool2.not.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %pdev4.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 2
  %36 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev4.i, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %bdq_pbl_mem_size.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 22
  %38 = ptrtoint ptr %bdq_pbl_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bdq_pbl_mem_size.i, align 8
  %bdq_pbl_dma.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 21
  %40 = ptrtoint ptr %bdq_pbl_dma.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bdq_pbl_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5.i, i32 noundef %39, ptr noundef nonnull %35, i32 noundef %41, i32 noundef 0) #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %pdev10.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i
  %i.036.i = phi i32 [ 0, %if.end7.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 19, i32 %i.036.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 8
  %tobool8.not.i = icmp eq ptr %43, null
  br i1 %tobool8.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %pdev10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev10.i, align 8
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %buf_dma.i = getelementptr %struct.qedi_ctx, ptr %qedi, i32 0, i32 19, i32 %i.036.i, i32 1
  %46 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11.i, i32 noundef 256, ptr noundef nonnull %43, i32 noundef %47, i32 noundef 0) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %qedi_free_bdq.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

qedi_free_bdq.exit:                               ; preds = %for.inc.i
  %iscsi_image.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 26
  %48 = ptrtoint ptr %iscsi_image.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iscsi_image.i, align 8
  %tobool.not.i48 = icmp eq ptr %49, null
  br i1 %tobool.not.i48, label %qedi_free_bdq.exit.qedi_free_nvm_iscsi_cfg.exit_crit_edge, label %if.then.i51

qedi_free_bdq.exit.qedi_free_nvm_iscsi_cfg.exit_crit_edge: ; preds = %qedi_free_bdq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_free_nvm_iscsi_cfg.exit

if.then.i51:                                      ; preds = %qedi_free_bdq.exit
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %pdev10.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev10.i, align 8
  %dev.i50 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %nvm_buf_dma.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 27
  %52 = ptrtoint ptr %nvm_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nvm_buf_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i50, i32 noundef 24584, ptr noundef nonnull %49, i32 noundef %53, i32 noundef 0) #14
  br label %qedi_free_nvm_iscsi_cfg.exit

qedi_free_nvm_iscsi_cfg.exit:                     ; preds = %if.then.i51, %qedi_free_bdq.exit.qedi_free_nvm_iscsi_cfg.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_simd_int_handler(ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %cookie, ptr noundef nonnull @__func__.qedi_simd_int_handler, i32 noundef 1373, ptr noundef nonnull @.str.87, ptr noundef %cookie) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_msix_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %qedi1 = getelementptr inbounds %struct.qedi_fastpath, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedi1, align 4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %sb_ack.i = getelementptr inbounds %struct.qed_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_ack.i, align 4
  %or3.i = or i32 %5, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !414
  tail call void @arm_heavy_mb() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #14
  %igu_addr.i = getelementptr inbounds %struct.qed_sb_info, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %igu_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %igu_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #14, !srcloc !415
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !416
  %sb_id.i = getelementptr inbounds %struct.qedi_fastpath, ptr %dev_id, i32 0, i32 1
  br label %process_again

process_again:                                    ; preds = %if.end6.process_again_crit_edge, %entry
  %9 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qedi1, align 4
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 4
  %17 = and i16 %16, 2047
  %global_queues.i = getelementptr inbounds %struct.qedi_ctx, ptr %10, i32 0, i32 7
  %18 = ptrtoint ptr %global_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %global_queues.i, align 4
  %20 = ptrtoint ptr %sb_id.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sb_id.i, align 4
  %idxprom.i = zext i16 %21 to i32
  %arrayidx6.i = getelementptr ptr, ptr %19, i32 %idxprom.i
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx6.i, align 4
  %conv7.i = zext i16 %17 to i32
  %cq_cons_idx.i = getelementptr inbounds %struct.global_queue, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cq_cons_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cq_cons_idx.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %10, ptr noundef nonnull @__func__.qedi_process_completions, i32 noundef 1281, i32 noundef 1024, ptr noundef nonnull @.str.81, ptr noundef %23, i32 noundef %conv7.i, i32 noundef %25, i32 noundef %idxprom.i) #14
  %26 = ptrtoint ptr %sb_id.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sb_id.i, align 4
  %conv11.i = zext i16 %27 to i32
  %intr_cpu.i = getelementptr inbounds %struct.qedi_ctx, ptr %10, i32 0, i32 59
  %28 = ptrtoint ptr %intr_cpu.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv11.i, ptr %intr_cpu.i, align 4
  %29 = tail call i32 @llvm.read_register.i32(metadata !395) #14
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %cpu12.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu12.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu12.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %34, ptrtoint (ptr @qedi_percpu to i32)
  %35 = inttoptr i32 %add.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %do.end30.i, label %process_again.do.body46.i_crit_edge, !prof !413

process_again.do.body46.i_crit_edge:              ; preds = %process_again
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body46.i

do.end30.i:                                       ; preds = %process_again
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1288, i32 noundef 9, ptr noundef null) #14
  br label %do.body46.i

do.body46.i:                                      ; preds = %do.end30.i, %process_again.do.body46.i_crit_edge
  %p_work_lock.i = getelementptr inbounds %struct.qedi_percpu_s, ptr %35, i32 0, i32 2
  %call51.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %p_work_lock.i) #14
  %38 = ptrtoint ptr %cq_cons_idx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cq_cons_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv7.i)
  %cmp58.not4.i = icmp eq i32 %39, %conv7.i
  br i1 %cmp58.not4.i, label %do.body46.i.qedi_process_completions.exit_crit_edge, label %while.body.lr.ph.i

do.body46.i.qedi_process_completions.exit_crit_edge: ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_process_completions.exit

while.body.lr.ph.i:                               ; preds = %do.body46.i
  %conn_cid_tbl.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %10, i32 0, i32 36, i32 6
  %work_list26.i.i = getelementptr inbounds %struct.qedi_percpu_s, ptr %35, i32 0, i32 1
  %prev.i59.i.i = getelementptr inbounds %struct.qedi_percpu_s, ptr %35, i32 0, i32 1, i32 1
  %itt_map.i.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %10, i32 0, i32 44
  br label %while.body.i

while.body.i:                                     ; preds = %if.end72.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %40 = phi i32 [ %39, %while.body.lr.ph.i ], [ %spec.select1.i, %if.end72.i.while.body.i_crit_edge ]
  %41 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %23, align 4
  %arrayidx61.i = getelementptr %union.iscsi_cqe, ptr %42, i32 %40
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %10, ptr noundef nonnull @__func__.qedi_process_completions, i32 noundef 1296, i32 noundef 1024, ptr noundef nonnull @.str.82, ptr noundef %arrayidx61.i, i32 noundef %conv7.i, i32 noundef %40) #14
  %43 = ptrtoint ptr %sb_id.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %sb_id.i, align 4
  %45 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx61.i, align 4
  %conv.i.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %conn_cid_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %conn_cid_tbl.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %48, i32 %conv.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %10, ptr noundef nonnull @__func__.qedi_queue_cqe, i32 noundef 1218, ptr noundef nonnull @.str.84, i32 noundef %conv.i.i) #14
  br label %if.then68.i

if.end.i.i:                                       ; preds = %while.body.i
  %cqe_type.i.i = getelementptr inbounds %struct.iscsi_cqe_common, ptr %arrayidx61.i, i32 0, i32 1
  %51 = ptrtoint ptr %cqe_type.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cqe_type.i.i, align 2
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %52, label %sw.default.i.i [
    i8 1, label %if.end.i.i.sw.bb.i.i_crit_edge
    i8 3, label %if.end.i.i.sw.bb.i.i_crit_edge35
    i8 2, label %if.end.i.i.sw.bb15.i.i_crit_edge
    i8 5, label %if.end.i.i.sw.bb15.i.i_crit_edge36
    i8 4, label %if.end.i.i.sw.bb15.i.i_crit_edge37
  ]

if.end.i.i.sw.bb15.i.i_crit_edge37:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb15.i.i

if.end.i.i.sw.bb15.i.i_crit_edge36:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb15.i.i

if.end.i.i.sw.bb15.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb15.i.i

if.end.i.i.sw.bb.i.i_crit_edge35:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i.sw.bb.i.i_crit_edge, %if.end.i.i.sw.bb.i.i_crit_edge35
  %itid.i.i = getelementptr inbounds %struct.iscsi_cqe_solicited, ptr %arrayidx61.i, i32 0, i32 3
  %54 = ptrtoint ptr %itid.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %itid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %55)
  %cmp.i.i.i = icmp ugt i16 %55, 4095
  br i1 %cmp.i.i.i, label %sw.bb.i.i.if.then68.i_crit_edge, label %if.end.i.i.i

sw.bb.i.i.if.then68.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then68.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %conv2.i.i = zext i16 %55 to i32
  %56 = ptrtoint ptr %itt_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %itt_map.i.i.i, align 8
  %p_cmd.i.i.i = getelementptr %struct.qedi_itt_map, ptr %57, i32 %conv2.i.i, i32 1
  %58 = ptrtoint ptr %p_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %p_cmd.i.i.i, align 4
  %task_id.i.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %task_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %task_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %55)
  %cmp1.not.i.i.i = icmp eq i16 %61, %55
  br i1 %cmp1.not.i.i.i, label %qedi_get_cmd_from_tid.exit.i.i, label %if.end.i.i.i.if.then68.i_crit_edge

if.end.i.i.i.if.then68.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then68.i

qedi_get_cmd_from_tid.exit.i.i:                   ; preds = %if.end.i.i.i
  %62 = ptrtoint ptr %p_cmd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %p_cmd.i.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %59, null
  br i1 %tobool3.not.i.i, label %qedi_get_cmd_from_tid.exit.i.i.if.then68.i_crit_edge, label %if.end5.i.i

qedi_get_cmd_from_tid.exit.i.i.if.then68.i_crit_edge: ; preds = %qedi_get_cmd_from_tid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then68.i

if.end5.i.i:                                      ; preds = %qedi_get_cmd_from_tid.exit.i.i
  %cqe_work.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %59, i32 0, i32 18
  %63 = ptrtoint ptr %cqe_work.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %cqe_work.i.i, ptr %cqe_work.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %59, i32 0, i32 18, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %cqe_work.i.i, ptr %prev.i.i.i, align 4
  %qedi7.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %59, i32 0, i32 18, i32 1
  %65 = ptrtoint ptr %qedi7.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %10, ptr %qedi7.i.i, align 4
  %cqe9.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %59, i32 0, i32 18, i32 2
  %66 = call ptr @memcpy(ptr %cqe9.i.i, ptr %arrayidx61.i, i32 64)
  %que_idx11.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %59, i32 0, i32 18, i32 3
  %67 = ptrtoint ptr %que_idx11.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %44, ptr %que_idx11.i.i, align 4
  %is_solicited.i.i = getelementptr inbounds %struct.qedi_cmd, ptr %59, i32 0, i32 18, i32 4
  %68 = ptrtoint ptr %is_solicited.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %is_solicited.i.i, align 2
  %69 = ptrtoint ptr %prev.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i59.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cqe_work.i.i, ptr noundef %70, ptr noundef %work_list26.i.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end5.i.i.if.end72.i_crit_edge

if.end5.i.i.if.end72.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i

if.end.i.i.i.i:                                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %prev.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %cqe_work.i.i, ptr %prev.i59.i.i, align 4
  %72 = ptrtoint ptr %cqe_work.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %work_list26.i.i, ptr %cqe_work.i.i, align 4
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %cqe_work.i.i, ptr %70, align 4
  br label %if.end72.i

sw.bb15.i.i:                                      ; preds = %if.end.i.i.sw.bb15.i.i_crit_edge, %if.end.i.i.sw.bb15.i.i_crit_edge36, %if.end.i.i.sw.bb15.i.i_crit_edge37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 2848, i32 noundef 80) #19
  %tobool17.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool17.not.i.i, label %sw.bb15.i.i.if.then68.i_crit_edge, label %if.end19.i.i

sw.bb15.i.i.if.then68.i_crit_edge:                ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then68.i

if.end19.i.i:                                     ; preds = %sw.bb15.i.i
  %76 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i58.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i.i.i, ptr %prev.i58.i.i, align 4
  %qedi21.i.i = getelementptr inbounds %struct.qedi_work, ptr %call7.i.i.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %qedi21.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %10, ptr %qedi21.i.i, align 8
  %cqe22.i.i = getelementptr inbounds %struct.qedi_work, ptr %call7.i.i.i.i, i32 0, i32 2
  %79 = call ptr @memcpy(ptr %cqe22.i.i, ptr %arrayidx61.i, i32 64)
  %que_idx23.i.i = getelementptr inbounds %struct.qedi_work, ptr %call7.i.i.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %que_idx23.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %44, ptr %que_idx23.i.i, align 4
  %is_solicited24.i.i = getelementptr inbounds %struct.qedi_work, ptr %call7.i.i.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %is_solicited24.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %is_solicited24.i.i, align 2
  %82 = ptrtoint ptr %prev.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i59.i.i, align 4
  %call.i.i60.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %83, ptr noundef %work_list26.i.i) #14
  br i1 %call.i.i60.i.i, label %if.end.i.i62.i.i, label %if.end19.i.i.if.end72.i_crit_edge

if.end19.i.i.if.end72.i_crit_edge:                ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i

if.end.i.i62.i.i:                                 ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %prev.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i.i.i, ptr %prev.i59.i.i, align 4
  %85 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %work_list26.i.i, ptr %call7.i.i.i.i, align 8
  %86 = ptrtoint ptr %prev.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev.i58.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %call7.i.i.i.i, ptr %83, align 4
  br label %if.end72.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %10, ptr noundef nonnull @__func__.qedi_queue_cqe, i32 noundef 1254, ptr noundef nonnull @.str.85) #14
  br label %if.then68.i

if.then68.i:                                      ; preds = %sw.default.i.i, %sw.bb15.i.i.if.then68.i_crit_edge, %qedi_get_cmd_from_tid.exit.i.i.if.then68.i_crit_edge, %if.end.i.i.i.if.then68.i_crit_edge, %sw.bb.i.i.if.then68.i_crit_edge, %if.then.i.i
  %88 = ptrtoint ptr %cq_cons_idx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cq_cons_idx.i, align 4
  %90 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx61.i, align 4
  %conv71.i = zext i16 %91 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef %10, ptr noundef nonnull @__func__.qedi_process_completions, i32 noundef 1302, ptr noundef nonnull @.str.83, i32 noundef %89, i32 noundef %conv71.i) #14
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then68.i, %if.end.i.i62.i.i, %if.end19.i.i.if.end72.i_crit_edge, %if.end.i.i.i.i, %if.end5.i.i.if.end72.i_crit_edge
  %92 = ptrtoint ptr %cq_cons_idx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cq_cons_idx.i, align 4
  %inc.i = add i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %inc.i)
  %cmp75.i = icmp eq i32 %inc.i, 2048
  %spec.select1.i = select i1 %cmp75.i, i32 0, i32 %inc.i
  %94 = ptrtoint ptr %cq_cons_idx.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %spec.select1.i, ptr %cq_cons_idx.i, align 4
  %cmp58.not.i = icmp eq i32 %spec.select1.i, %conv7.i
  br i1 %cmp58.not.i, label %if.end72.i.qedi_process_completions.exit_crit_edge, label %if.end72.i.while.body.i_crit_edge

if.end72.i.while.body.i_crit_edge:                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end72.i.qedi_process_completions.exit_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_process_completions.exit

qedi_process_completions.exit:                    ; preds = %if.end72.i.qedi_process_completions.exit_crit_edge, %do.body46.i.qedi_process_completions.exit_crit_edge
  %95 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %35, align 4
  %call81.i = tail call i32 @wake_up_process(ptr noundef %96) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %p_work_lock.i, i32 noundef %call51.i) #14
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_msix_handler, i32 noundef 1350, i32 noundef 4, ptr noundef nonnull @.str.80) #14
  %97 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %qedi1, align 4
  %99 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_id, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !417
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %102, align 4
  %global_queues.i18 = getelementptr inbounds %struct.qedi_ctx, ptr %98, i32 0, i32 7
  %105 = ptrtoint ptr %global_queues.i18 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %global_queues.i18, align 4
  %107 = ptrtoint ptr %sb_id.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %sb_id.i, align 4
  %idxprom.i20 = zext i16 %108 to i32
  %arrayidx3.i = getelementptr ptr, ptr %106, i32 %idxprom.i20
  %109 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx3.i, align 4
  %111 = and i16 %104, 2047
  %cq_cons_idx.i21 = getelementptr inbounds %struct.global_queue, ptr %110, i32 0, i32 3
  %112 = ptrtoint ptr %cq_cons_idx.i21 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cq_cons_idx.i21, align 4
  %conv7.i22 = zext i16 %111 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %conv7.i22)
  %cmp8.i.not = icmp eq i32 %113, %conv7.i22
  br i1 %cmp8.i.not, label %if.then3, label %qedi_process_completions.exit.if.end6_crit_edge

qedi_process_completions.exit.if.end6_crit_edge:  ; preds = %qedi_process_completions.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then3:                                         ; preds = %qedi_process_completions.exit
  %114 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_id, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %prod_index.i = getelementptr inbounds %struct.status_block, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %prod_index.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %prod_index.i, align 4
  %120 = and i32 %119, -256
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #14
  %sb_ack.i23 = getelementptr inbounds %struct.qed_sb_info, ptr %115, i32 0, i32 2
  %122 = ptrtoint ptr %sb_ack.i23 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sb_ack.i23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %121)
  %cmp.not.i = icmp eq i32 %123, %121
  br i1 %cmp.not.i, label %if.then3.if.end6_crit_edge, label %if.then.i

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %124 = ptrtoint ptr %sb_ack.i23 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %121, ptr %sb_ack.i23, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then3.if.end6_crit_edge, %qedi_process_completions.exit.if.end6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !418
  %125 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %qedi1, align 4
  %127 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_id, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !417
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %130, align 4
  %global_queues.i25 = getelementptr inbounds %struct.qedi_ctx, ptr %126, i32 0, i32 7
  %133 = ptrtoint ptr %global_queues.i25 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %global_queues.i25, align 4
  %135 = ptrtoint ptr %sb_id.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %sb_id.i, align 4
  %idxprom.i27 = zext i16 %136 to i32
  %arrayidx3.i28 = getelementptr ptr, ptr %134, i32 %idxprom.i27
  %137 = ptrtoint ptr %arrayidx3.i28 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx3.i28, align 4
  %139 = and i16 %132, 2047
  %cq_cons_idx.i29 = getelementptr inbounds %struct.global_queue, ptr %138, i32 0, i32 3
  %140 = ptrtoint ptr %cq_cons_idx.i29 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cq_cons_idx.i29, align 4
  %conv7.i30 = zext i16 %139 to i32
  %cmp8.i31.not = icmp eq i32 %141, %conv7.i30
  br i1 %cmp8.i31.not, label %if.then8, label %if.end6.process_again_crit_edge

if.end6.process_again_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_again

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %142 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev_id, align 4
  %sb_ack.i32 = getelementptr inbounds %struct.qed_sb_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %sb_ack.i32 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sb_ack.i32, align 4
  %or3.i33 = or i32 %145, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !414
  tail call void @arm_heavy_mb() #14
  %146 = tail call i32 @llvm.bswap.i32(i32 %or3.i33) #14
  %igu_addr.i34 = getelementptr inbounds %struct.qed_sb_info, ptr %143, i32 0, i32 4
  %147 = ptrtoint ptr %igu_addr.i34 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %igu_addr.i34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #14, !srcloc !415
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !416
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedi_sync_free_irqs(ptr noundef %qedi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %int_info = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 5
  %msix_cnt = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msix_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %used_cnt = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %used_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %used_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp48.not = icmp eq i8 %3, 0
  br i1 %cmp48.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_hwfns = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 4, i32 0, i32 3
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 3
  %fp_array = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_hwfns, align 4
  %conv3 = zext i8 %5 to i32
  %mul = mul i32 %i.049, %conv3
  %6 = load ptr, ptr @qedi_ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %get_affin_hwfn_idx = getelementptr inbounds %struct.qed_common_ops, ptr %8, i32 0, i32 40
  %9 = ptrtoint ptr %get_affin_hwfn_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_affin_hwfn_idx, align 4
  %11 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cdev, align 4
  %call = tail call zeroext i8 %10(ptr noundef %12) #14
  %conv5 = zext i8 %call to i32
  %add = add i32 %mul, %conv5
  %conv7 = and i32 %add, 65535
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_sync_free_irqs, i32 noundef 1388, i32 noundef 2, ptr noundef nonnull @.str.86, i32 noundef %i.049, i32 noundef %conv7) #14
  %13 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %int_info, align 8
  %arrayidx = getelementptr %struct.msix_entry, ptr %14, i32 %conv7
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  tail call void @synchronize_irq(i32 noundef %16) #14
  %17 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %int_info, align 8
  %arrayidx12 = getelementptr %struct.msix_entry, ptr %18, i32 %conv7
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx12, align 4
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %20, ptr noundef null, i1 noundef zeroext true) #14
  %21 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %int_info, align 8
  %arrayidx18 = getelementptr %struct.msix_entry, ptr %22, i32 %conv7
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx18, align 4
  %25 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fp_array, align 8
  %arrayidx20 = getelementptr %struct.qedi_fastpath, ptr %26, i32 %i.049
  %call21 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %arrayidx20) #14
  %inc = add nuw nsw i32 %i.049, 1
  %27 = ptrtoint ptr %used_cnt to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %used_cnt, align 1
  %conv = zext i8 %28 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %29 = load ptr, ptr @qedi_ops, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %simd_handler_clean = getelementptr inbounds %struct.qed_common_ops, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %simd_handler_clean to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %simd_handler_clean, align 4
  %cdev23 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 3
  %34 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cdev23, align 4
  tail call void %33(ptr noundef %35, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  %used_cnt25 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %used_cnt25 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %used_cnt25, align 1
  %37 = load ptr, ptr @qedi_ops, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %set_fp_int = getelementptr inbounds %struct.qed_common_ops, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %set_fp_int to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_fp_int, align 4
  %cdev27 = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 3
  %42 = ptrtoint ptr %cdev27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cdev27, align 4
  %call28 = tail call i32 %41(ptr noundef %43, i16 noundef zeroext 0) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_link_update(ptr noundef %dev, ptr nocapture noundef readonly %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link, align 4, !range !419
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %dev, ptr noundef nonnull @__func__.qedi_link_update, i32 noundef 1184, i32 noundef 2, ptr noundef nonnull @.str.88) #14
  %link_state = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_state, i32 noundef 4) #14
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %link_state, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %dev, ptr noundef nonnull @__func__.qedi_link_update, i32 noundef 1188, i32 noundef 2, ptr noundef nonnull @.str.89) #14
  %link_state2 = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 42
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_state2, i32 noundef 4) #14
  %3 = ptrtoint ptr %link_state2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %link_state2, align 4
  %shost = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost, align 4
  tail call void @iscsi_host_for_each_session(ptr noundef %5, ptr noundef nonnull @qedi_set_conn_recovery) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_schedule_recovery_handler(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedi_schedule_recovery_handler, i32 noundef 1160, ptr noundef nonnull @.str.90) #14
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 14
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %link_state = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_state, i32 noundef 4) #14
  %0 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %link_state, align 4
  %recovery_work = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %recovery_work, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_schedule_hw_err_handler(ptr noundef %dev, i32 noundef %err_type) #0 align 64 {
entry:
  %override_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %override_flags)
  %0 = load i32, ptr @qedi_flags_override, align 4
  %1 = ptrtoint ptr %override_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %override_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %override_flags.0.override_flags.0. = load volatile i32, ptr %override_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %override_flags.0.override_flags.0.)
  %tobool1.not = icmp sgt i32 %override_flags.0.override_flags.0., -1
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %qedi_err_flags = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 13
  %3 = ptrtoint ptr %qedi_err_flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %qedi_err_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %qedi_err_flags2 = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 13
  %4 = ptrtoint ptr %qedi_err_flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qedi_err_flags2, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %dev, ptr noundef nonnull @__func__.qedi_schedule_hw_err_handler, i32 noundef 1131, i32 noundef 2, ptr noundef nonnull @.str.91, i32 noundef %err_type, i32 noundef %5) #14
  %6 = zext i32 %err_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %err_type, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb4_crit_edge
    i32 2, label %if.end.sw.bb4_crit_edge30
    i32 3, label %if.end.sw.bb4_crit_edge31
    i32 4, label %if.end.sw.bb4_crit_edge32
    i32 5, label %if.end.sw.bb4_crit_edge33
  ]

if.end.sw.bb4_crit_edge33:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

if.end.sw.bb4_crit_edge32:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

if.end.sw.bb4_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

if.end.sw.bb4_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %board_disable_work = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %board_disable_work, i32 noundef 0) #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge30, %if.end.sw.bb4_crit_edge31, %if.end.sw.bb4_crit_edge32, %if.end.sw.bb4_crit_edge33
  %8 = ptrtoint ptr %qedi_err_flags2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %qedi_err_flags2, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool7.not = icmp eq i32 %and1.i, 0
  br i1 %tobool7.not, label %sw.bb4.if.end9_crit_edge, label %if.then8

sw.bb4.if.end9_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  %10 = load ptr, ptr @qedi_ops, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %attn_clr_enable = getelementptr inbounds %struct.qed_common_ops, ptr %12, i32 0, i32 30
  %13 = ptrtoint ptr %attn_clr_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attn_clr_enable, align 4
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 3
  %15 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdev, align 4
  tail call void %14(ptr noundef %16, i1 noundef zeroext true) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.bb4.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %err_type)
  %cmp = icmp eq i32 %err_type, 4
  br i1 %cmp, label %land.lhs.true10, label %if.end9.sw.epilog_crit_edge

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true10:                                  ; preds = %if.end9
  %17 = ptrtoint ptr %qedi_err_flags2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %qedi_err_flags2, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %land.lhs.true10.sw.epilog_crit_edge, label %if.then14

land.lhs.true10.sw.epilog_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  %20 = load ptr, ptr @qedi_ops, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %recovery_process = getelementptr inbounds %struct.qed_common_ops, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %recovery_process to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %recovery_process, align 4
  %cdev16 = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 3
  %25 = ptrtoint ptr %cdev16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cdev16, align 4
  %call17 = tail call i32 %24(ptr noundef %26) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %land.lhs.true10.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %override_flags)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_get_generic_tlv_data(ptr noundef readonly %dev, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedi_get_generic_tlv_data, i32 noundef 1046, i32 noundef 32, ptr noundef nonnull @.str.92) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memset(ptr %data, i32 0, i32 20)
  %mac = getelementptr inbounds %struct.qed_generic_tlvs, ptr %data, i32 0, i32 1
  %mac1 = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac1, align 4
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mac, align 4
  %add.ptr.i = getelementptr %struct.qedi_ctx, ptr %dev, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qed_generic_tlvs, ptr %data, i32 0, i32 1, i32 0, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_get_protocol_tlv_data(ptr noundef %dev, ptr noundef writeonly %data) #0 align 64 {
entry:
  %ep_ip_addr.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 128) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %dev, ptr noundef nonnull @__func__.qedi_get_protocol_tlv_data, i32 noundef 1070, ptr noundef nonnull @.str.93) #14
  br label %exit_get_data

if.end:                                           ; preds = %entry
  %stats_lock = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %stats_lock, i32 noundef 0) #14
  %1 = load ptr, ptr @qedi_ops, align 4
  %get_stats = getelementptr inbounds %struct.qed_iscsi_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %get_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_stats, align 4
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev, align 4
  %call1 = tail call i32 %3(ptr noundef %5, ptr noundef nonnull %call7.i) #14
  tail call void @mutex_unlock(ptr noundef %stats_lock) #14
  %rx_frames_set = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 23
  %6 = ptrtoint ptr %rx_frames_set to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %rx_frames_set, align 8
  %iscsi_rx_packet_cnt = getelementptr inbounds %struct.qed_iscsi_stats, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %iscsi_rx_packet_cnt to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %iscsi_rx_packet_cnt, align 8
  %rx_frames = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 22
  %9 = ptrtoint ptr %rx_frames to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %rx_frames, align 8
  %rx_bytes_set = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 25
  %10 = ptrtoint ptr %rx_bytes_set to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %rx_bytes_set, align 8
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %call7.i, align 8
  %rx_bytes = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 24
  %13 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %rx_bytes, align 8
  %tx_frames_set = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 27
  %14 = ptrtoint ptr %tx_frames_set to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %tx_frames_set, align 8
  %iscsi_tx_packet_cnt = getelementptr inbounds %struct.qed_iscsi_stats, ptr %call7.i, i32 0, i32 16
  %15 = ptrtoint ptr %iscsi_tx_packet_cnt to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %iscsi_tx_packet_cnt, align 8
  %tx_frames = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 26
  %17 = ptrtoint ptr %tx_frames to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %tx_frames, align 8
  %tx_bytes_set = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 29
  %18 = ptrtoint ptr %tx_bytes_set to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %tx_bytes_set, align 8
  %iscsi_tx_bytes_cnt = getelementptr inbounds %struct.qed_iscsi_stats, ptr %call7.i, i32 0, i32 15
  %19 = ptrtoint ptr %iscsi_tx_bytes_cnt to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %iscsi_tx_bytes_cnt, align 8
  %tx_bytes = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 28
  %21 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %tx_bytes, align 8
  %frame_size_set = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 11
  %22 = ptrtoint ptr %frame_size_set to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %frame_size_set, align 2
  %ll2_mtu = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 49
  %23 = ptrtoint ptr %ll2_mtu to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ll2_mtu, align 8
  %frame_size = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 10
  %25 = ptrtoint ptr %frame_size to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %frame_size, align 4
  %abs_pf_id.i = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 4, i32 0, i32 24
  %26 = ptrtoint ptr %abs_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %abs_pf_id.i, align 1
  %iscsi_image.i = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 26
  %28 = ptrtoint ptr %iscsi_image.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iscsi_image.i, align 8
  %block1.i = getelementptr inbounds %struct.nvm_iscsi_cfg, ptr %29, i32 0, i32 1
  %conv.i = zext i8 %27 to i32
  %30 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %block1.i, align 4
  %32 = and i32 %31, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp ne i32 %32, 0
  %and4.i = and i32 %31, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %conv.i)
  %cmp6.i = icmp eq i32 %and4.i, %conv.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %if.end.qedi_get_nvram_block.exit_crit_edge, label %for.inc.i

if.end.qedi_get_nvram_block.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.i:                                        ; preds = %if.end
  %incdec.ptr.i = getelementptr %struct.nvm_iscsi_cfg, ptr %29, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr.i, align 4
  %35 = and i32 %34, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.1.i = icmp ne i32 %35, 0
  %and4.1.i = and i32 %34, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.1.i, i32 %conv.i)
  %cmp6.1.i = icmp eq i32 %and4.1.i, %conv.i
  %or.cond.1.i = select i1 %tobool.not.1.i, i1 %cmp6.1.i, i1 false
  br i1 %or.cond.1.i, label %for.inc.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.1.i

for.inc.i.qedi_get_nvram_block.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %incdec.ptr.1.i = getelementptr %struct.nvm_iscsi_cfg, ptr %29, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %incdec.ptr.1.i, align 4
  %38 = and i32 %37, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.2.i = icmp ne i32 %38, 0
  %and4.2.i = and i32 %37, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.2.i, i32 %conv.i)
  %cmp6.2.i = icmp eq i32 %and4.2.i, %conv.i
  %or.cond.2.i = select i1 %tobool.not.2.i, i1 %cmp6.2.i, i1 false
  br i1 %or.cond.2.i, label %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.qedi_get_nvram_block.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %incdec.ptr.2.i = getelementptr %struct.nvm_iscsi_cfg, ptr %29, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %incdec.ptr.2.i, align 4
  %41 = and i32 %40, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.3.i = icmp ne i32 %41, 0
  %and4.3.i = and i32 %40, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.3.i, i32 %conv.i)
  %cmp6.3.i = icmp eq i32 %and4.3.i, %conv.i
  %or.cond.3.i = select i1 %tobool.not.3.i, i1 %cmp6.3.i, i1 false
  br i1 %or.cond.3.i, label %for.inc.2.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.2.i.if.end32_crit_edge

for.inc.2.i.if.end32_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

for.inc.2.i.qedi_get_nvram_block.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

qedi_get_nvram_block.exit:                        ; preds = %for.inc.2.i.qedi_get_nvram_block.exit_crit_edge, %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge, %for.inc.i.qedi_get_nvram_block.exit_crit_edge, %if.end.qedi_get_nvram_block.exit_crit_edge
  %retval.0.i = phi ptr [ %block1.i, %if.end.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.i, %for.inc.i.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.1.i, %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.2.i, %for.inc.2.i.qedi_get_nvram_block.exit_crit_edge ]
  %tobool4.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool4.not, label %qedi_get_nvram_block.exit.if.end32_crit_edge, label %if.then5

qedi_get_nvram_block.exit.if.end32_crit_edge:     ; preds = %qedi_get_nvram_block.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then5:                                         ; preds = %qedi_get_nvram_block.exit
  %generic = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 2
  %42 = ptrtoint ptr %generic to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %generic, align 4
  %and = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %and10 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11 = icmp ne i32 %and10, 0
  %not.tobool6.not = xor i1 %tobool6.not, true
  %spec.select = select i1 %not.tobool6.not, i1 true, i1 %tobool11
  %auth_method_set = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 7
  %frombool = zext i1 %spec.select to i8
  %44 = ptrtoint ptr %auth_method_set to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool, ptr %auth_method_set, align 1
  %auth_method = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 6
  %storemerge = select i1 %tobool6.not, i8 1, i8 2
  %storemerge69 = select i1 %tobool11, i8 3, i8 %storemerge
  %45 = ptrtoint ptr %auth_method to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %storemerge69, ptr %auth_method, align 2
  %tx_desc_size_set = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 13
  %46 = ptrtoint ptr %tx_desc_size_set to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %tx_desc_size_set, align 2
  %tx_desc_size = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 12
  %47 = ptrtoint ptr %tx_desc_size to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1024, ptr %tx_desc_size, align 8
  %rx_desc_size_set = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 15
  %48 = ptrtoint ptr %rx_desc_size_set to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %rx_desc_size_set, align 2
  %rx_desc_size = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 14
  %49 = ptrtoint ptr %rx_desc_size to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 2048, ptr %rx_desc_size, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep_ip_addr.i) #14
  %50 = call ptr @memset(ptr %ep_ip_addr.i, i32 255, i32 64)
  %target.i = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4
  %51 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %target.i, align 4
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i70 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i70, label %if.then5.if.end5.i_crit_edge, label %if.then.i

if.then5.if.end5.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 324) #19
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %qedi_find_boot_info.exit.thread, label %if.end.i

qedi_find_boot_info.exit.thread:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep_ip_addr.i) #14
  br label %if.then29

if.end.i:                                         ; preds = %if.then.i
  %54 = ptrtoint ptr %generic to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %generic, align 4
  %and.i.i = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and.lobit.i.i = lshr exact i32 %and.i.i, 3
  %iscsi_name.i.i = getelementptr inbounds %struct.qedi_boot_target, ptr %call7.i.i.i, i32 0, i32 1
  %target_name.i.i = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 0, i32 7
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %iscsi_name.i.i, i32 noundef 255, ptr noundef nonnull @.str.41, ptr noundef %target_name.i.i) #14
  %ipv6_en3.i.i = getelementptr inbounds %struct.qedi_boot_target, ptr %call7.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %ipv6_en3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.lobit.i.i, ptr %ipv6_en3.i.i, align 8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv6_addr.i.i = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 0, i32 5
  %call10.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 41, ptr noundef nonnull @.str.96, ptr noundef %ipv6_addr.i.i) #14
  br label %if.end5.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv4_addr.i.i = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 0, i32 4
  %call17.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 17, ptr noundef nonnull @.str.95, ptr noundef %ipv4_addr.i.i) #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i.i, %if.then.i.i, %if.then5.if.end5.i_crit_edge
  %pri_tgt.0.i = phi ptr [ null, %if.then5.if.end5.i_crit_edge ], [ %call7.i.i.i, %if.then.i.i ], [ %call7.i.i.i, %if.else.i.i ]
  %arrayidx7.i = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx7.i, align 4
  %and9.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end5.i.if.end21.i_crit_edge, label %if.then16.i

if.end5.i.if.end21.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i138.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 324) #19
  %tobool18.not.i = icmp eq ptr %call7.i.i138.i, null
  br i1 %tobool18.not.i, label %if.then16.i.free_tgt.i_crit_edge, label %if.end20.i

if.then16.i.free_tgt.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_tgt.i

if.end20.i:                                       ; preds = %if.then16.i
  %60 = ptrtoint ptr %generic to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %generic, align 4
  %and.i140.i = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140.i)
  %tobool.not.i141.i = icmp eq i32 %and.i140.i, 0
  %and.lobit.i142.i = lshr exact i32 %and.i140.i, 3
  %iscsi_name.i143.i = getelementptr inbounds %struct.qedi_boot_target, ptr %call7.i.i138.i, i32 0, i32 1
  %target_name.i144.i = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 1, i32 7
  %call.i145.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %iscsi_name.i143.i, i32 noundef 255, ptr noundef nonnull @.str.41, ptr noundef %target_name.i144.i) #14
  %ipv6_en3.i146.i = getelementptr inbounds %struct.qedi_boot_target, ptr %call7.i.i138.i, i32 0, i32 2
  %62 = ptrtoint ptr %ipv6_en3.i146.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and.lobit.i142.i, ptr %ipv6_en3.i146.i, align 8
  br i1 %tobool.not.i141.i, label %if.else.i152.i, label %if.then.i149.i

if.then.i149.i:                                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv6_addr.i147.i = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 1, i32 5
  %call10.i148.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i138.i, i32 noundef 41, ptr noundef nonnull @.str.96, ptr noundef %ipv6_addr.i147.i) #14
  br label %if.end21.i

if.else.i152.i:                                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv4_addr.i150.i = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 1, i32 4
  %call17.i151.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i138.i, i32 noundef 17, ptr noundef nonnull @.str.95, ptr noundef %ipv4_addr.i150.i) #14
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i152.i, %if.then.i149.i, %if.end5.i.if.end21.i_crit_edge
  %sec_tgt.0.i = phi ptr [ null, %if.end5.i.if.end21.i_crit_edge ], [ %call7.i.i138.i, %if.then.i149.i ], [ %call7.i.i138.i, %if.else.i152.i ]
  %max_active_conns.i = getelementptr inbounds %struct.qedi_ctx, ptr %dev, i32 0, i32 34
  %63 = ptrtoint ptr %max_active_conns.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_active_conns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp159.not.i = icmp eq i32 %64, 0
  br i1 %cmp159.not.i, label %if.end21.i.if.end86.i_crit_edge, label %for.body.lr.ph.i

if.end21.i.if.end86.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86.i

for.body.lr.ph.i:                                 ; preds = %if.end21.i
  %iscsi_name.i = getelementptr inbounds %struct.qedi_boot_target, ptr %pri_tgt.0.i, i32 0, i32 1
  %iscsi_name62.i = getelementptr inbounds %struct.qedi_boot_target, ptr %sec_tgt.0.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i71.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0160.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i71.for.body.i_crit_edge ]
  %call22.i = tail call ptr @qedi_get_conn_from_id(ptr noundef %dev, i32 noundef %i.0160.i) #14
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %for.body.i.for.inc.i71_crit_edge, label %if.end25.i

for.body.i.for.inc.i71_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i71

if.end25.i:                                       ; preds = %for.body.i
  %ep.i = getelementptr inbounds %struct.qedi_conn, ptr %call22.i, i32 0, i32 2
  %65 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ep.i, align 4
  %ip_type.i = getelementptr inbounds %struct.qedi_endpoint, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %ip_type.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ip_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp26.i = icmp eq i8 %68, 0
  %dst_addr.i = getelementptr inbounds %struct.qedi_endpoint, ptr %66, i32 0, i32 1
  br i1 %cmp26.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  %call31.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ep_ip_addr.i, i32 noundef 17, ptr noundef nonnull @.str.95, ptr noundef %dst_addr.i) #14
  br label %if.end37.i

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  %call36.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ep_ip_addr.i, i32 noundef 41, ptr noundef nonnull @.str.96, ptr noundef %dst_addr.i) #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %if.then28.i
  %69 = ptrtoint ptr %call22.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call22.i, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dd_data.i, align 8
  %parent.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %70, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %74, i32 -408
  %dd_data39.i = getelementptr i8, ptr %74, i32 -4
  %75 = ptrtoint ptr %dd_data39.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dd_data39.i, align 4
  %call40.i = tail call i32 @iscsi_is_session_online(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end37.i.for.inc.i71_crit_edge, label %if.end43.i

if.end37.i.for.inc.i71_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i71

if.end43.i:                                       ; preds = %if.end37.i
  %targetname.i = getelementptr inbounds %struct.iscsi_session, ptr %76, i32 0, i32 30
  %77 = ptrtoint ptr %targetname.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %targetname.i, align 4
  %tobool44.not.i = icmp eq ptr %78, null
  br i1 %tobool44.not.i, label %if.end43.i.for.inc.i71_crit_edge, label %if.end46.i

if.end43.i.for.inc.i71_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i71

if.end46.i:                                       ; preds = %if.end43.i
  br i1 %tobool.not.i70, label %if.end46.i.if.end59.i_crit_edge, label %if.then48.i

if.end46.i.if.end59.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i

if.then48.i:                                      ; preds = %if.end46.i
  %call51.i = tail call i32 @strcmp(ptr noundef %iscsi_name.i, ptr noundef nonnull %78) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true.i, label %if.then48.i.if.end59.i_crit_edge

if.then48.i.if.end59.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i

land.lhs.true.i:                                  ; preds = %if.then48.i
  %call55.i = call i32 @strcmp(ptr noundef %pri_tgt.0.i, ptr noundef nonnull %ep_ip_addr.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %land.lhs.true.i.if.then77.i_crit_edge, label %land.lhs.true.i.if.end59.i_crit_edge

land.lhs.true.i.if.end59.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i

land.lhs.true.i.if.then77.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77.i

if.end59.i:                                       ; preds = %land.lhs.true.i.if.end59.i_crit_edge, %if.then48.i.if.end59.i_crit_edge, %if.end46.i.if.end59.i_crit_edge
  br i1 %tobool10.not.i, label %if.end59.i.for.inc.i71_crit_edge, label %if.then61.i

if.end59.i.for.inc.i71_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i71

if.then61.i:                                      ; preds = %if.end59.i
  %call65.i = tail call i32 @strcmp(ptr noundef %iscsi_name62.i, ptr noundef nonnull %78) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %land.lhs.true67.i, label %if.then61.i.for.inc.i71_crit_edge

if.then61.i.for.inc.i71_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i71

land.lhs.true67.i:                                ; preds = %if.then61.i
  %call71.i = call i32 @strcmp(ptr noundef %sec_tgt.0.i, ptr noundef nonnull %ep_ip_addr.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %land.lhs.true67.i.if.then77.i_crit_edge, label %land.lhs.true67.i.for.inc.i71_crit_edge

land.lhs.true67.i.for.inc.i71_crit_edge:          ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i71

land.lhs.true67.i.if.then77.i_crit_edge:          ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77.i

for.inc.i71:                                      ; preds = %land.lhs.true67.i.for.inc.i71_crit_edge, %if.then61.i.for.inc.i71_crit_edge, %if.end59.i.for.inc.i71_crit_edge, %if.end43.i.for.inc.i71_crit_edge, %if.end37.i.for.inc.i71_crit_edge, %for.body.i.for.inc.i71_crit_edge
  %inc.i = add nuw i32 %i.0160.i, 1
  %79 = ptrtoint ptr %max_active_conns.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_active_conns.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %80
  br i1 %cmp.i, label %for.inc.i71.for.body.i_crit_edge, label %for.inc.i71.if.end86.i_crit_edge

for.inc.i71.if.end86.i_crit_edge:                 ; preds = %for.inc.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86.i

for.inc.i71.for.body.i_crit_edge:                 ; preds = %for.inc.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.then77.i:                                      ; preds = %land.lhs.true67.i.if.then77.i_crit_edge, %land.lhs.true.i.if.then77.i_crit_edge
  %hdrdgst_en.i = getelementptr inbounds %struct.iscsi_conn, ptr %72, i32 0, i32 25
  %81 = ptrtoint ptr %hdrdgst_en.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hdrdgst_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool78.not.i = icmp eq i32 %82, 0
  br i1 %tobool78.not.i, label %if.then77.i.if.end80.i_crit_edge, label %if.then79.i

if.then77.i.if.end80.i_crit_edge:                 ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80.i

if.then79.i:                                      ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #16
  %header_digest_set.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 3
  %83 = ptrtoint ptr %header_digest_set.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %header_digest_set.i, align 1
  %header_digest.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 2
  %84 = ptrtoint ptr %header_digest.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %header_digest.i, align 2
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then79.i, %if.then77.i.if.end80.i_crit_edge
  %datadgst_en.i = getelementptr inbounds %struct.iscsi_conn, ptr %72, i32 0, i32 26
  %85 = ptrtoint ptr %datadgst_en.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %datadgst_en.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool81.not.i = icmp eq i32 %86, 0
  br i1 %tobool81.not.i, label %if.end80.i.if.end83.i_crit_edge, label %if.then82.i

if.end80.i.if.end83.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83.i

if.then82.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #16
  %data_digest_set.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 5
  %87 = ptrtoint ptr %data_digest_set.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %data_digest_set.i, align 1
  %data_digest.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 4
  %88 = ptrtoint ptr %data_digest.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %data_digest.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then82.i, %if.end80.i.if.end83.i_crit_edge
  %boot_taget_portal_set.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 9
  %89 = ptrtoint ptr %boot_taget_portal_set.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %boot_taget_portal_set.i, align 2
  %tpgt.i = getelementptr inbounds %struct.iscsi_session, ptr %76, i32 0, i32 25
  %90 = ptrtoint ptr %tpgt.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tpgt.i, align 4
  %conv84.i = trunc i32 %91 to i16
  %boot_taget_portal.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %data, i32 0, i32 8
  %92 = ptrtoint ptr %boot_taget_portal.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv84.i, ptr %boot_taget_portal.i, align 8
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.end83.i, %for.inc.i71.if.end86.i_crit_edge, %if.end21.i.if.end86.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end83.i ], [ -1, %if.end21.i.if.end86.i_crit_edge ], [ -1, %for.inc.i71.if.end86.i_crit_edge ]
  br i1 %tobool10.not.i, label %if.end86.i.free_tgt.i_crit_edge, label %if.then88.i

if.end86.i.free_tgt.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_tgt.i

if.then88.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %sec_tgt.0.i) #14
  br label %free_tgt.i

free_tgt.i:                                       ; preds = %if.then88.i, %if.end86.i.free_tgt.i_crit_edge, %if.then16.i.free_tgt.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.then88.i ], [ %ret.0.i, %if.end86.i.free_tgt.i_crit_edge ], [ -1, %if.then16.i.free_tgt.i_crit_edge ]
  br i1 %tobool.not.i70, label %free_tgt.i.qedi_find_boot_info.exit_crit_edge, label %if.then91.i

free_tgt.i.qedi_find_boot_info.exit_crit_edge:    ; preds = %free_tgt.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_find_boot_info.exit

if.then91.i:                                      ; preds = %free_tgt.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %pri_tgt.0.i) #14
  br label %qedi_find_boot_info.exit

qedi_find_boot_info.exit:                         ; preds = %if.then91.i, %free_tgt.i.qedi_find_boot_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep_ip_addr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool28.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool28.not, label %qedi_find_boot_info.exit.if.end32_crit_edge, label %qedi_find_boot_info.exit.if.then29_crit_edge

qedi_find_boot_info.exit.if.then29_crit_edge:     ; preds = %qedi_find_boot_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

qedi_find_boot_info.exit.if.end32_crit_edge:      ; preds = %qedi_find_boot_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then29:                                        ; preds = %qedi_find_boot_info.exit.if.then29_crit_edge, %qedi_find_boot_info.exit.thread
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %dev, ptr noundef nonnull @__func__.qedi_get_protocol_tlv_data, i32 noundef 1112, i32 noundef 2, ptr noundef nonnull @.str.94) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %qedi_find_boot_info.exit.if.end32_crit_edge, %qedi_get_nvram_block.exit.if.end32_crit_edge, %for.inc.2.i.if.end32_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %exit_get_data

exit_get_data:                                    ; preds = %if.end32, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_for_each_session(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_set_conn_recovery(ptr nocapture noundef readonly %cls_session) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %leadconn = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %leadconn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %leadconn, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data1, align 4
  %qedi = getelementptr inbounds %struct.qedi_conn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %qedi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qedi, align 4
  tail call void @qedi_start_conn_recovery(ptr noundef %7, ptr noundef %5) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_start_conn_recovery(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qedi_get_conn_from_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_is_session_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_ll2_rx(ptr noundef %cookie, ptr noundef %skb, i32 noundef %arg1, i32 noundef %arg2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cookie, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedi_ll2_rx, i32 noundef 673, ptr noundef nonnull @.str.97) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %cookie, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef nonnull %cookie, ptr noundef nonnull @__func__.qedi_ll2_rx, i32 noundef 679, i32 noundef 262144, ptr noundef nonnull @.str.98) #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %6)
  %cmp = icmp eq i16 %6, -32512
  br i1 %cmp, label %if.then5, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %7 = call ptr @memmove(ptr %add.ptr, ptr %4, i32 12)
  %call6 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #14
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %12 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %mac_header.i, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %eh.0 = phi ptr [ %call6, %if.then5 ], [ %4, %if.end3.if.end7_crit_edge ]
  %h_proto8 = getelementptr inbounds %struct.ethhdr, ptr %eh.0, i32 0, i32 2
  %13 = ptrtoint ptr %h_proto8 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %h_proto8, align 1
  %conv9 = zext i16 %14 to i32
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.139)
  switch i16 %14, label %if.then21 [
    i16 2054, label %if.end7.if.end25_crit_edge
    i16 2048, label %if.end7.if.end25_crit_edge86
    i16 -31011, label %if.end7.if.end25_crit_edge87
  ]

if.end7.if.end25_crit_edge87:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end7.if.end25_crit_edge86:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef nonnull %cookie, ptr noundef nonnull @__func__.qedi_ll2_rx, i32 noundef 698, i32 noundef 8, ptr noundef nonnull @.str.99, i32 noundef %conv9, i32 noundef %17) #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end7.if.end25_crit_edge, %if.end7.if.end25_crit_edge86, %if.end7.if.end25_crit_edge87
  %len29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len29, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef nonnull %cookie, ptr noundef nonnull @__func__.qedi_ll2_rx, i32 noundef 705, i32 noundef 8, ptr noundef nonnull @.str.100, i32 noundef %conv9, i32 noundef %19) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 2848, i32 noundef 16) #19
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_warn(ptr noundef nonnull %cookie, ptr noundef nonnull @__func__.qedi_ll2_rx, i32 noundef 710, ptr noundef nonnull @.str.101) #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

if.end34:                                         ; preds = %if.end25
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %skb35 = getelementptr inbounds %struct.skb_work_list, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %skb35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %skb, ptr %skb35, align 8
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %24 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool36.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %25 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vlan_tci, align 2
  %vlan_id = getelementptr inbounds %struct.skb_work_list, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %vlan_id, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge
  %vlan_id39 = getelementptr inbounds %struct.skb_work_list, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %vlan_id39 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vlan_id39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool40.not = icmp eq i16 %29, 0
  br i1 %tobool40.not, label %if.end38.if.end45_crit_edge, label %if.then41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  %30 = ptrtoint ptr %skb35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb35, align 8
  %cloned.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %cloned.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i.i.i.i = load i8, ptr %cloned.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i, label %skb_header_cloned.exit.i.i.i

skb_header_cloned.exit.i.i.i:                     ; preds = %if.then41
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %33 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i.i.i.i, align 4
  %dataref1.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i, i32 noundef 4) #14
  %35 = ptrtoint ptr %dataref1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %dataref1.i.i.i.i, align 4
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i.i.i.i, align 4
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 18
  %39 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i.i.i.i)
  %cmp.i1.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i.i, 4
  br i1 %cmp.i1.i.i.i, label %skb_header_cloned.exit.i.i.i.if.end.thread.i.i.i.i_crit_edge, label %if.end.i2.i.i.i

skb_header_cloned.exit.i.i.i.if.end.thread.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread.i.i.i.i

skb_header_cloned.exit.thread.i.i.i:              ; preds = %if.then41
  %data.i.i5.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i5.i.i.i, align 4
  %head.i.i6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 18
  %43 = ptrtoint ptr %head.i.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i.i6.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i.i8.i.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i9.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i.i, %sub.ptr.rhs.cast.i.i8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i9.i.i.i)
  %cmp.i110.i.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i.i, 4
  br i1 %cmp.i110.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.if.end.thread.i.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.i.if.end.i.i_crit_edge

skb_header_cloned.exit.thread.i.i.i.if.end.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

skb_header_cloned.exit.thread.i.i.i.if.end.thread.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread.i.i.i.i

if.end.thread.i.i.i.i:                            ; preds = %skb_header_cloned.exit.thread.i.i.i.if.end.thread.i.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.if.end.thread.i.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i.i, %skb_header_cloned.exit.thread.i.i.i.if.end.thread.i.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i.i, %skb_header_cloned.exit.i.i.i.if.end.thread.i.i.i.i_crit_edge ]
  %phi.bo.i.i.i.i = sub nuw nsw i32 131, %sub.ptr.sub.i.i12.i.i.i
  %phi.bo11.i.i.i.i = and i32 %phi.bo.i.i.i.i, -128
  br label %skb_cow_head.exit.i.i

if.end.i2.i.i.i:                                  ; preds = %skb_header_cloned.exit.i.i.i
  %and.i.i.i.i = and i32 %36, 65535
  %shr.i.i.i.i = ashr i32 %36, 16
  %sub.i.i.i.i = sub nsw i32 %and.i.i.i.i, %shr.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %sub.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %if.end.i2.i.i.i.if.end.i.i_crit_edge, label %if.end.i2.i.i.i.skb_cow_head.exit.i.i_crit_edge

if.end.i2.i.i.i.skb_cow_head.exit.i.i_crit_edge:  ; preds = %if.end.i2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_cow_head.exit.i.i

if.end.i2.i.i.i.if.end.i.i_crit_edge:             ; preds = %if.end.i2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

skb_cow_head.exit.i.i:                            ; preds = %if.end.i2.i.i.i.skb_cow_head.exit.i.i_crit_edge, %if.end.thread.i.i.i.i
  %delta.010.i.i.i.i = phi i32 [ %phi.bo11.i.i.i.i, %if.end.thread.i.i.i.i ], [ 0, %if.end.i2.i.i.i.skb_cow_head.exit.i.i_crit_edge ]
  %call4.i.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %31, i32 noundef %delta.010.i.i.i.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i.i.i, 0
  br i1 %cmp.i.i, label %skb_cow_head.exit.i.i.if.end45_crit_edge, label %skb_cow_head.exit.i.i.if.end.i.i_crit_edge

skb_cow_head.exit.i.i.if.end.i.i_crit_edge:       ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

skb_cow_head.exit.i.i.if.end45_crit_edge:         ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.end.i.i:                                       ; preds = %skb_cow_head.exit.i.i.if.end.i.i_crit_edge, %if.end.i2.i.i.i.if.end.i.i_crit_edge, %skb_header_cloned.exit.thread.i.i.i.if.end.i.i_crit_edge
  %call1.i.i = tail call ptr @skb_push(ptr noundef %31, i32 noundef 4) #14
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 4
  %47 = call ptr @memmove(ptr %46, ptr %add.ptr.i.i, i32 12)
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 15, i32 0, i32 21
  %48 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %mac_header.i.i, align 2
  %sub7.i.i = add i16 %49, -4
  store i16 %sub7.i.i, ptr %mac_header.i.i, align 2
  %50 = load ptr, ptr %data.i.i, align 4
  %h_vlan_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %h_vlan_proto.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -32512, ptr %h_vlan_proto.i.i, align 2
  %h_vlan_TCI.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %50, i32 0, i32 2
  %52 = ptrtoint ptr %h_vlan_TCI.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %29, ptr %h_vlan_TCI.i.i, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.end.i.i, %skb_cow_head.exit.i.i.if.end45_crit_edge, %if.end38.if.end45_crit_edge
  %ll2_lock = getelementptr inbounds %struct.qedi_ctx, ptr %cookie, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %ll2_lock) #14
  %ll2_skb_list = getelementptr inbounds %struct.qedi_ctx, ptr %cookie, i32 0, i32 9
  %prev.i84 = getelementptr inbounds %struct.qedi_ctx, ptr %cookie, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i84, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %54, ptr noundef %ll2_skb_list) #14
  br i1 %call.i.i, label %if.end.i.i85, label %if.end45.list_add_tail.exit_crit_edge

if.end45.list_add_tail.exit_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i85:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i, ptr %prev.i84, align 4
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ll2_skb_list, ptr %call7.i.i, align 8
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call7.i.i, ptr %54, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i85, %if.end45.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ll2_lock) #14
  %ll2_recv_thread = getelementptr inbounds %struct.qedi_ctx, ptr %cookie, i32 0, i32 12
  %59 = ptrtoint ptr %ll2_recv_thread to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ll2_recv_thread, align 4
  %call48 = tail call i32 @wake_up_process(ptr noundef %60) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then32, %if.then21, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then21 ], [ 0, %list_add_tail.exit ], [ 0, %if.then32 ], [ 0, %if.then2 ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uio_event_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_process_iscsi_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_process_tcp_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qedi_alloc_uio_rings(ptr nocapture noundef %udev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ll2_ring = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 4
  %0 = ptrtoint ptr %ll2_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll2_ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ll2_buf = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 6
  %2 = ptrtoint ptr %ll2_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ll2_buf, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #14
  %4 = inttoptr i32 %call to ptr
  %uctrl = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 11
  %5 = ptrtoint ptr %uctrl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %uctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ll2_ring_size = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 3
  %6 = ptrtoint ptr %ll2_ring_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %ll2_ring_size, align 4
  %call6 = tail call i32 @get_zeroed_page(i32 noundef 265408) #14
  %7 = inttoptr i32 %call6 to ptr
  %8 = ptrtoint ptr %ll2_ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %ll2_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool9.not = icmp eq i32 %call6, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %9 = load i32, ptr @qedi_ll2_buf_size, align 4
  %mul = shl i32 %9, 4
  %ll2_buf_size = getelementptr inbounds %struct.qedi_uio_dev, ptr %udev, i32 0, i32 5
  %add = add i32 %mul, 4095
  %and = and i32 %add, -4096
  %10 = ptrtoint ptr %ll2_buf_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %ll2_buf_size, align 4
  %call14 = tail call i32 @__get_free_pages(i32 noundef 265664, i32 noundef 2) #14
  %11 = inttoptr i32 %call14 to ptr
  %12 = ptrtoint ptr %ll2_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %ll2_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool17.not = icmp eq i32 %call14, 0
  br i1 %tobool17.not, label %if.then18, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %ll2_ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ll2_ring, align 4
  %15 = ptrtoint ptr %14 to i32
  tail call void @free_pages(i32 noundef %15, i32 noundef 0) #14
  %16 = ptrtoint ptr %ll2_ring to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ll2_ring, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_uio_open(ptr nocapture noundef readonly %uinfo, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.uio_info, ptr %uinfo, i32 0, i32 7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %qedi1 = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedi1, align 4
  %call = tail call zeroext i1 @capable(i32 noundef 12) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %uio_dev = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %uio_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uio_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtnl_lock() #14
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %6 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %7, 1048575
  %8 = ptrtoint ptr %uio_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %uio_dev, align 4
  %9 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qedi1, align 4
  %uctrl2.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %uctrl2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uctrl2.i, align 4
  %ll2_lock.i = getelementptr inbounds %struct.qedi_ctx, ptr %10, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %ll2_lock.i) #14
  %host_rx_cons.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %host_rx_cons.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %host_rx_cons.i, align 4
  %hw_rx_prod.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %12, i32 0, i32 7
  %14 = ptrtoint ptr %hw_rx_prod.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hw_rx_prod.i, align 4
  %hw_rx_bd_prod.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %hw_rx_bd_prod.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %hw_rx_bd_prod.i, align 4
  %host_rx_bd_cons.i = getelementptr inbounds %struct.qedi_uio_ctrl, ptr %12, i32 0, i32 3
  %16 = ptrtoint ptr %host_rx_bd_cons.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %host_rx_bd_cons.i, align 4
  %ll2_ring.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %ll2_ring.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ll2_ring.i, align 4
  %ll2_ring_size.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %ll2_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ll2_ring_size.i, align 4
  %21 = call ptr @memset(ptr %18, i32 0, i32 %20)
  %ll2_buf.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %ll2_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ll2_buf.i, align 4
  %ll2_buf_size.i = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %ll2_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ll2_buf_size.i, align 4
  %26 = call ptr @memset(ptr %23, i32 0, i32 %25)
  tail call void @_raw_spin_unlock_bh(ptr noundef %ll2_lock.i) #14
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  tail call void @rtnl_unlock() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -1, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_uio_close(ptr nocapture noundef readonly %uinfo, ptr nocapture noundef readnone %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.uio_info, ptr %uinfo, i32 0, i32 7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %qedi1 = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %qedi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedi1, align 4
  %uio_dev = getelementptr inbounds %struct.qedi_uio_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %uio_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %uio_dev, align 4
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #14
  %ll2_lock.i = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %ll2_lock.i) #14
  %ll2_skb_list.i = getelementptr inbounds %struct.qedi_ctx, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %ll2_skb_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ll2_skb_list.i, align 4
  %cmp.not22.i = icmp eq ptr %6, %ll2_skb_list.i
  br i1 %cmp.not22.i, label %entry.qedi_ll2_free_skbs.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.qedi_ll2_free_skbs.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_ll2_free_skbs.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %work.023.i = phi ptr [ %work_tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %6, %entry.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %work.023.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %work_tmp.0.i = load ptr, ptr %work.023.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work.023.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %work.023.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %work.023.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %work.023.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %work.023.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %work.023.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.023.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %skb.i = getelementptr inbounds %struct.skb_work_list, ptr %work.023.i, i32 0, i32 1
  %16 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %17, i32 noundef 0) #14
  tail call void @kfree(ptr noundef %work.023.i) #14
  %cmp.not.i = icmp eq ptr %work_tmp.0.i, %ll2_skb_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.qedi_ll2_free_skbs.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.qedi_ll2_free_skbs.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_ll2_free_skbs.exit

qedi_ll2_free_skbs.exit:                          ; preds = %list_del.exit.i.qedi_ll2_free_skbs.exit_crit_edge, %entry.qedi_ll2_free_skbs.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ll2_lock.i) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__uio_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_mark_conn_recovery(ptr nocapture noundef readonly %cls_session) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %leadconn = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %leadconn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %leadconn, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd_data2, align 8
  tail call void @iscsi_conn_failure(ptr noundef %9, i32 noundef 1011) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qedi_remove(ptr nocapture noundef readonly %pdev, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %mode, label %entry.if.end12_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 0, label %entry.if.then_crit_edge111
  ]

entry.if.then_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge111
  %shost = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shost, align 4
  tail call void @iscsi_host_remove(ptr noundef %4) #14
  %tmf_thread = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 47
  %5 = ptrtoint ptr %tmf_thread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmf_thread, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @flush_workqueue(ptr noundef nonnull %6) #14
  %7 = ptrtoint ptr %tmf_thread to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmf_thread, align 8
  tail call void @destroy_workqueue(ptr noundef %8) #14
  %9 = ptrtoint ptr %tmf_thread to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tmf_thread, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %offload_thread = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 48
  %10 = ptrtoint ptr %offload_thread to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %offload_thread, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @flush_workqueue(ptr noundef nonnull %11) #14
  %12 = ptrtoint ptr %offload_thread to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %offload_thread, align 4
  tail call void @destroy_workqueue(ptr noundef %13) #14
  %14 = ptrtoint ptr %offload_thread to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %offload_thread, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  tail call void @qedi_dbg_host_exit(ptr noundef %1) #14
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool14.not = icmp eq i32 %17, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %18 = load ptr, ptr @qedi_ops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %set_power_state = getelementptr inbounds %struct.qed_common_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_power_state, align 4
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cdev, align 4
  %call16 = tail call i32 %22(ptr noundef %24, i32 noundef 0) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  tail call fastcc void @qedi_sync_free_irqs(ptr noundef %1)
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool20.not = icmp eq i32 %27, 0
  br i1 %tobool20.not, label %while.cond.preheader, label %if.end17.if.end31_crit_edge

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

while.cond.preheader:                             ; preds = %if.end17
  %cdev23 = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 3
  %28 = load ptr, ptr @qedi_ops, align 4
  %stop = getelementptr inbounds %struct.qed_iscsi_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stop, align 4
  %31 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cdev23, align 4
  %call24 = tail call i32 %30(ptr noundef %32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then26:                                        ; preds = %while.cond.preheader
  tail call void @msleep(i32 noundef 1000) #14
  %33 = load ptr, ptr @qedi_ops, align 4
  %stop.1 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %stop.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stop.1, align 4
  %36 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cdev23, align 4
  %call24.1 = tail call i32 %35(ptr noundef %37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1)
  %cmp25.1 = icmp slt i32 %call24.1, 0
  br i1 %cmp25.1, label %if.then26.1, label %if.then26.while.end_crit_edge

if.then26.while.end_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then26.1:                                      ; preds = %if.then26
  tail call void @msleep(i32 noundef 1000) #14
  %38 = load ptr, ptr @qedi_ops, align 4
  %stop.2 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %stop.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stop.2, align 4
  %41 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cdev23, align 4
  %call24.2 = tail call i32 %40(ptr noundef %42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.2)
  %cmp25.2 = icmp slt i32 %call24.2, 0
  br i1 %cmp25.2, label %if.then26.2, label %if.then26.1.while.end_crit_edge

if.then26.1.while.end_crit_edge:                  ; preds = %if.then26.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then26.2:                                      ; preds = %if.then26.1
  tail call void @msleep(i32 noundef 1000) #14
  %43 = load ptr, ptr @qedi_ops, align 4
  %stop.3 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %stop.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stop.3, align 4
  %46 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cdev23, align 4
  %call24.3 = tail call i32 %45(ptr noundef %47) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.3)
  %cmp25.3 = icmp slt i32 %call24.3, 0
  br i1 %cmp25.3, label %if.then26.3, label %if.then26.2.while.end_crit_edge

if.then26.2.while.end_crit_edge:                  ; preds = %if.then26.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then26.3:                                      ; preds = %if.then26.2
  tail call void @msleep(i32 noundef 1000) #14
  %48 = load ptr, ptr @qedi_ops, align 4
  %stop.4 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %stop.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stop.4, align 4
  %51 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cdev23, align 4
  %call24.4 = tail call i32 %50(ptr noundef %52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.4)
  %cmp25.4 = icmp slt i32 %call24.4, 0
  br i1 %cmp25.4, label %if.then26.4, label %if.then26.3.while.end_crit_edge

if.then26.3.while.end_crit_edge:                  ; preds = %if.then26.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then26.4:                                      ; preds = %if.then26.3
  tail call void @msleep(i32 noundef 1000) #14
  %53 = load ptr, ptr @qedi_ops, align 4
  %stop.5 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %stop.5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stop.5, align 4
  %56 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cdev23, align 4
  %call24.5 = tail call i32 %55(ptr noundef %57) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.5)
  %cmp25.5 = icmp slt i32 %call24.5, 0
  br i1 %cmp25.5, label %if.then26.5, label %if.then26.4.while.end_crit_edge

if.then26.4.while.end_crit_edge:                  ; preds = %if.then26.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then26.5:                                      ; preds = %if.then26.4
  tail call void @msleep(i32 noundef 1000) #14
  %58 = load ptr, ptr @qedi_ops, align 4
  %stop.6 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %stop.6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stop.6, align 4
  %61 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cdev23, align 4
  %call24.6 = tail call i32 %60(ptr noundef %62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.6)
  %cmp25.6 = icmp slt i32 %call24.6, 0
  br i1 %cmp25.6, label %if.then26.6, label %if.then26.5.while.end_crit_edge

if.then26.5.while.end_crit_edge:                  ; preds = %if.then26.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then26.6:                                      ; preds = %if.then26.5
  tail call void @msleep(i32 noundef 1000) #14
  %63 = load ptr, ptr @qedi_ops, align 4
  %stop.7 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %stop.7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %stop.7, align 4
  %66 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cdev23, align 4
  %call24.7 = tail call i32 %65(ptr noundef %67) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.7)
  %cmp25.7 = icmp slt i32 %call24.7, 0
  br i1 %cmp25.7, label %if.then26.7, label %if.then26.6.while.end_crit_edge

if.then26.6.while.end_crit_edge:                  ; preds = %if.then26.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then26.7:                                      ; preds = %if.then26.6
  tail call void @msleep(i32 noundef 1000) #14
  %68 = load ptr, ptr @qedi_ops, align 4
  %stop.8 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %stop.8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %stop.8, align 4
  %71 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cdev23, align 4
  %call24.8 = tail call i32 %70(ptr noundef %72) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.8)
  %cmp25.8 = icmp slt i32 %call24.8, 0
  br i1 %cmp25.8, label %if.then26.8, label %if.then26.7.while.end_crit_edge

if.then26.7.while.end_crit_edge:                  ; preds = %if.then26.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then26.8:                                      ; preds = %if.then26.7
  tail call void @msleep(i32 noundef 1000) #14
  %73 = load ptr, ptr @qedi_ops, align 4
  %stop.9 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %stop.9 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %stop.9, align 4
  %76 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cdev23, align 4
  %call24.9 = tail call i32 %75(ptr noundef %77) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.9)
  %cmp25.9 = icmp slt i32 %call24.9, 0
  br i1 %cmp25.9, label %if.then26.9, label %if.then26.8.while.end_crit_edge

if.then26.8.while.end_crit_edge:                  ; preds = %if.then26.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then26.9:                                      ; preds = %if.then26.8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @msleep(i32 noundef 1000) #14
  br label %while.end

while.end:                                        ; preds = %if.then26.9, %if.then26.8.while.end_crit_edge, %if.then26.7.while.end_crit_edge, %if.then26.6.while.end_crit_edge, %if.then26.5.while.end_crit_edge, %if.then26.4.while.end_crit_edge, %if.then26.3.while.end_crit_edge, %if.then26.2.while.end_crit_edge, %if.then26.1.while.end_crit_edge, %if.then26.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %78 = load ptr, ptr @qedi_ops, align 4
  %ll2 = getelementptr inbounds %struct.qed_iscsi_ops, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ll2, align 4
  %stop28 = getelementptr inbounds %struct.qed_ll2_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %stop28 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %stop28, align 4
  %83 = ptrtoint ptr %cdev23 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cdev23, align 4
  %call30 = tail call i32 %82(ptr noundef %84) #14
  br label %if.end31

if.end31:                                         ; preds = %while.end, %if.end17.if.end31_crit_edge
  %p_cpuq.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 6
  %85 = ptrtoint ptr %p_cpuq.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %p_cpuq.i, align 8
  %tobool.not.i = icmp eq ptr %86, null
  br i1 %tobool.not.i, label %if.end31.qedi_free_iscsi_pf_param.exit_crit_edge, label %if.then.i

if.end31.qedi_free_iscsi_pf_param.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_free_iscsi_pf_param.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %num_queues.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 33
  %87 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_queues.i, align 8
  %conv.i = zext i8 %88 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 24
  %pdev.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %hw_p_cpuq.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 18
  %91 = ptrtoint ptr %hw_p_cpuq.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hw_p_cpuq.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef nonnull %86, i32 noundef %92, i32 noundef 0) #14
  br label %qedi_free_iscsi_pf_param.exit

qedi_free_iscsi_pf_param.exit:                    ; preds = %if.then.i, %if.end31.qedi_free_iscsi_pf_param.exit_crit_edge
  tail call fastcc void @qedi_free_global_queues(ptr noundef %1) #14
  %global_queues.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 7
  %93 = ptrtoint ptr %global_queues.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %global_queues.i, align 4
  tail call void @kfree(ptr noundef %94) #14
  %95 = load ptr, ptr @qedi_ops, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %update_drv_state = getelementptr inbounds %struct.qed_common_ops, ptr %97, i32 0, i32 35
  %98 = ptrtoint ptr %update_drv_state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %update_drv_state, align 4
  %cdev33 = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 3
  %100 = ptrtoint ptr %cdev33 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cdev33, align 4
  %call34 = tail call i32 %99(ptr noundef %101, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %qedi_free_iscsi_pf_param.exit.if.end38_crit_edge, label %if.then36

qedi_free_iscsi_pf_param.exit.if.end38_crit_edge: ; preds = %qedi_free_iscsi_pf_param.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then36:                                        ; preds = %qedi_free_iscsi_pf_param.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.__qedi_remove, i32 noundef 2456, ptr noundef nonnull @.str.54) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %qedi_free_iscsi_pf_param.exit.if.end38_crit_edge
  %102 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %flags, align 4
  %104 = and i32 %103, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool41.not = icmp eq i32 %104, 0
  br i1 %tobool41.not, label %if.then42, label %if.end38.if.end48_crit_edge

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %105 = load ptr, ptr @qedi_ops, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %slowpath_stop = getelementptr inbounds %struct.qed_common_ops, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %slowpath_stop to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %slowpath_stop, align 4
  %110 = ptrtoint ptr %cdev33 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cdev33, align 4
  %call45 = tail call i32 %109(ptr noundef %111) #14
  %112 = load ptr, ptr @qedi_ops, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %remove = getelementptr inbounds %struct.qed_common_ops, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %remove, align 4
  %117 = ptrtoint ptr %cdev33 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cdev33, align 4
  tail call void %116(ptr noundef %118) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.end38.if.end48_crit_edge
  %num_cqs.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 4, i32 3
  %119 = ptrtoint ptr %num_cqs.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %num_cqs.i.i, align 4
  %conv13.i.i = zext i8 %120 to i32
  %call.i.i.i14.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %121 = load volatile i32, ptr @__num_online_cpus, align 4
  %122 = tail call i32 @llvm.umin.i32(i32 %121, i32 %conv13.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp215.not.i.i = icmp eq i32 %122, 0
  br i1 %cmp215.not.i.i, label %if.end48.qedi_destroy_fp.exit_crit_edge, label %for.body.lr.ph.i.i

if.end48.qedi_destroy_fp.exit_crit_edge:          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_destroy_fp.exit

for.body.lr.ph.i.i:                               ; preds = %if.end48
  %sb_array.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 39
  %pdev.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %id.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %123 = ptrtoint ptr %sb_array.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sb_array.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.qed_sb_info, ptr %124, i32 %id.016.i.i
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %127 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  %sb_phys.i.i = getelementptr %struct.qed_sb_info, ptr %124, i32 %id.016.i.i, i32 1
  %129 = ptrtoint ptr %sb_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sb_phys.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef 32, ptr noundef nonnull %126, i32 noundef %130, i32 noundef 0) #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %id.016.i.i, 1
  %131 = ptrtoint ptr %num_cqs.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %num_cqs.i.i, align 4
  %conv.i.i = zext i8 %132 to i32
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %133 = load volatile i32, ptr @__num_online_cpus, align 4
  %134 = tail call i32 @llvm.umin.i32(i32 %133, i32 %conv.i.i) #14
  %cmp2.i.i = icmp ult i32 %inc.i.i, %134
  br i1 %cmp2.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.qedi_destroy_fp.exit_crit_edge

for.inc.i.i.qedi_destroy_fp.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_destroy_fp.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

qedi_destroy_fp.exit:                             ; preds = %for.inc.i.i.qedi_destroy_fp.exit_crit_edge, %if.end48.qedi_destroy_fp.exit_crit_edge
  %fp_array.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 40
  %135 = ptrtoint ptr %fp_array.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fp_array.i.i, align 8
  tail call void @kfree(ptr noundef %136) #14
  %sb_array.i2.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 39
  %137 = ptrtoint ptr %sb_array.i2.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sb_array.i2.i, align 4
  tail call void @kfree(ptr noundef %138) #14
  %139 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %mode, label %qedi_destroy_fp.exit.if.end64_crit_edge [
    i32 2, label %qedi_destroy_fp.exit.if.then52_crit_edge
    i32 0, label %qedi_destroy_fp.exit.if.then52_crit_edge112
  ]

qedi_destroy_fp.exit.if.then52_crit_edge112:      ; preds = %qedi_destroy_fp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then52

qedi_destroy_fp.exit.if.then52_crit_edge:         ; preds = %qedi_destroy_fp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then52

qedi_destroy_fp.exit.if.end64_crit_edge:          ; preds = %qedi_destroy_fp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then52:                                        ; preds = %qedi_destroy_fp.exit.if.then52_crit_edge, %qedi_destroy_fp.exit.if.then52_crit_edge112
  %cid_que.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 36
  %140 = ptrtoint ptr %cid_que.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cid_que.i, align 4
  tail call void @kfree(ptr noundef %141) #14
  %142 = ptrtoint ptr %cid_que.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %cid_que.i, align 4
  %conn_cid_tbl.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 36, i32 6
  %143 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %conn_cid_tbl.i, align 4
  tail call void @kfree(ptr noundef %144) #14
  %145 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %conn_cid_tbl.i, align 4
  %ep_tbl.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 37
  %146 = ptrtoint ptr %ep_tbl.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ep_tbl.i, align 8
  tail call void @kfree(ptr noundef %147) #14
  %148 = ptrtoint ptr %ep_tbl.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %ep_tbl.i, align 8
  %table.i.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 38, i32 4
  %149 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %table.i.i, align 4
  tail call void @kfree(ptr noundef %150) #14
  %151 = ptrtoint ptr %table.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %table.i.i, align 4
  %udev = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 8
  %152 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %udev, align 8
  tail call fastcc void @qedi_free_uio(ptr noundef %153)
  %itt_map.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 44
  %154 = ptrtoint ptr %itt_map.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %itt_map.i, align 8
  tail call void @kfree(ptr noundef %155) #14
  %ll2_recv_thread = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 12
  %156 = ptrtoint ptr %ll2_recv_thread to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ll2_recv_thread, align 4
  %tobool53.not = icmp eq ptr %157, null
  br i1 %tobool53.not, label %if.then52.if.end58_crit_edge, label %if.then54

if.then52.if.end58_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then54:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  %call56 = tail call i32 @kthread_stop(ptr noundef nonnull %157) #14
  %158 = ptrtoint ptr %ll2_recv_thread to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %ll2_recv_thread, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.then52.if.end58_crit_edge
  %ll2_lock.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %ll2_lock.i) #14
  %ll2_skb_list.i = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 9
  %159 = ptrtoint ptr %ll2_skb_list.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ll2_skb_list.i, align 4
  %cmp.not22.i = icmp eq ptr %160, %ll2_skb_list.i
  br i1 %cmp.not22.i, label %if.end58.qedi_ll2_free_skbs.exit_crit_edge, label %if.end58.for.body.i_crit_edge

if.end58.for.body.i_crit_edge:                    ; preds = %if.end58
  br label %for.body.i

if.end58.qedi_ll2_free_skbs.exit_crit_edge:       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_ll2_free_skbs.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end58.for.body.i_crit_edge
  %work.023.i = phi ptr [ %work_tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %160, %if.end58.for.body.i_crit_edge ]
  %161 = ptrtoint ptr %work.023.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %work_tmp.0.i = load ptr, ptr %work.023.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work.023.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %work.023.i, i32 0, i32 1
  %162 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %prev.i.i.i, align 4
  %164 = ptrtoint ptr %work.023.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %work.023.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %163, ptr %prev1.i.i.i.i, align 4
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %165, ptr %163, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %168 = ptrtoint ptr %work.023.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr inttoptr (i32 256 to ptr), ptr %work.023.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.023.i, i32 0, i32 1
  %169 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %skb.i = getelementptr inbounds %struct.skb_work_list, ptr %work.023.i, i32 0, i32 1
  %170 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %171, i32 noundef 0) #14
  tail call void @kfree(ptr noundef %work.023.i) #14
  %cmp.not.i = icmp eq ptr %work_tmp.0.i, %ll2_skb_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.qedi_ll2_free_skbs.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.qedi_ll2_free_skbs.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_ll2_free_skbs.exit

qedi_ll2_free_skbs.exit:                          ; preds = %list_del.exit.i.qedi_ll2_free_skbs.exit_crit_edge, %if.end58.qedi_ll2_free_skbs.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ll2_lock.i) #14
  %boot_kset = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 67
  %172 = ptrtoint ptr %boot_kset to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %boot_kset, align 4
  %tobool59.not = icmp eq ptr %173, null
  br i1 %tobool59.not, label %qedi_ll2_free_skbs.exit.if.end62_crit_edge, label %if.then60

qedi_ll2_free_skbs.exit.if.end62_crit_edge:       ; preds = %qedi_ll2_free_skbs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then60:                                        ; preds = %qedi_ll2_free_skbs.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iscsi_boot_destroy_kset(ptr noundef nonnull %173) #14
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %qedi_ll2_free_skbs.exit.if.end62_crit_edge
  %shost63 = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 1
  %174 = ptrtoint ptr %shost63 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %shost63, align 4
  tail call void @iscsi_host_free(ptr noundef %175) #14
  br label %if.end64

if.end64:                                         ; preds = %if.end62, %qedi_destroy_fp.exit.if.end64_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_failure(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_boot_destroy_kset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_boot_create_host_kset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_boot_create_target(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_show_boot_tgt_pri_info(ptr noundef %data, i32 noundef %type, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qedi_show_boot_tgt_info(ptr noundef %data, i32 noundef %type, ptr noundef %buf, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @qedi_tgt_get_attr_visibility(ptr nocapture noundef readnone %data, i32 noundef %type) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 11
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [11 x i16], ptr @switch.table.qedi_tgt_get_attr_visibility, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %rc.0 = phi i16 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i16 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedi_boot_release(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shost = getelementptr inbounds %struct.qedi_ctx, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 4
  tail call void @scsi_host_put(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_show_boot_tgt_sec_info(ptr noundef %data, i32 noundef %type, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qedi_show_boot_tgt_info(ptr noundef %data, i32 noundef %type, ptr noundef %buf, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_boot_create_initiator(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_show_boot_ini_info(ptr nocapture noundef readonly %data, i32 noundef %type, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %abs_pf_id.i = getelementptr inbounds %struct.qedi_ctx, ptr %data, i32 0, i32 4, i32 0, i32 24
  %0 = ptrtoint ptr %abs_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %abs_pf_id.i, align 1
  %iscsi_image.i = getelementptr inbounds %struct.qedi_ctx, ptr %data, i32 0, i32 26
  %2 = ptrtoint ptr %iscsi_image.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iscsi_image.i, align 8
  %block1.i = getelementptr inbounds %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1
  %conv.i = zext i8 %1 to i32
  %4 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block1.i, align 4
  %6 = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp ne i32 %6, 0
  %and4.i = and i32 %5, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %conv.i)
  %cmp6.i = icmp eq i32 %and4.i, %conv.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %entry.qedi_get_nvram_block.exit_crit_edge, label %for.inc.i

entry.qedi_get_nvram_block.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.i:                                        ; preds = %entry
  %incdec.ptr.i = getelementptr %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr.i, align 4
  %9 = and i32 %8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i = icmp ne i32 %9, 0
  %and4.1.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.1.i, i32 %conv.i)
  %cmp6.1.i = icmp eq i32 %and4.1.i, %conv.i
  %or.cond.1.i = select i1 %tobool.not.1.i, i1 %cmp6.1.i, i1 false
  br i1 %or.cond.1.i, label %for.inc.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.1.i

for.inc.i.qedi_get_nvram_block.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %incdec.ptr.1.i = getelementptr %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.1.i, align 4
  %12 = and i32 %11, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.2.i = icmp ne i32 %12, 0
  %and4.2.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.2.i, i32 %conv.i)
  %cmp6.2.i = icmp eq i32 %and4.2.i, %conv.i
  %or.cond.2.i = select i1 %tobool.not.2.i, i1 %cmp6.2.i, i1 false
  br i1 %or.cond.2.i, label %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.qedi_get_nvram_block.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.2.i = getelementptr %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr.2.i, align 4
  %15 = and i32 %14, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.3.i = icmp ne i32 %15, 0
  %and4.3.i = and i32 %14, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.3.i, i32 %conv.i)
  %cmp6.3.i = icmp eq i32 %and4.3.i, %conv.i
  %or.cond.3.i = select i1 %tobool.not.3.i, i1 %cmp6.3.i, i1 false
  %spec.select.i = select i1 %or.cond.3.i, ptr %incdec.ptr.2.i, ptr null
  br label %qedi_get_nvram_block.exit

qedi_get_nvram_block.exit:                        ; preds = %for.inc.2.i, %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge, %for.inc.i.qedi_get_nvram_block.exit_crit_edge, %entry.qedi_get_nvram_block.exit_crit_edge
  %retval.0.i = phi ptr [ %block1.i, %entry.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.i, %for.inc.i.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.1.i, %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %tobool.not = icmp ne ptr %retval.0.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cond = icmp eq i32 %type, 6
  %or.cond = and i1 %cond, %tobool.not
  br i1 %or.cond, label %sw.bb, label %qedi_get_nvram_block.exit.cleanup_crit_edge

qedi_get_nvram_block.exit.cleanup_crit_edge:      ; preds = %qedi_get_nvram_block.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %qedi_get_nvram_block.exit
  call void @__sanitizer_cov_trace_pc() #16
  %initiator_name = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 3, i32 2
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef 256, ptr noundef %initiator_name)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %qedi_get_nvram_block.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qedi_get_nvram_block.exit.cleanup_crit_edge ], [ %call2, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @qedi_ini_get_attr_visibility(ptr nocapture noundef readnone %data, i32 noundef %type) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cond = icmp eq i32 %type, 6
  %. = select i1 %cond, i16 292, i16 0
  ret i16 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_boot_create_ethernet(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_show_boot_eth_info(ptr noundef %data, i32 noundef %type, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %abs_pf_id.i = getelementptr inbounds %struct.qedi_ctx, ptr %data, i32 0, i32 4, i32 0, i32 24
  %0 = ptrtoint ptr %abs_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %abs_pf_id.i, align 1
  %iscsi_image.i = getelementptr inbounds %struct.qedi_ctx, ptr %data, i32 0, i32 26
  %2 = ptrtoint ptr %iscsi_image.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iscsi_image.i, align 8
  %block1.i = getelementptr inbounds %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1
  %conv.i = zext i8 %1 to i32
  %4 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block1.i, align 4
  %6 = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp ne i32 %6, 0
  %and4.i = and i32 %5, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %conv.i)
  %cmp6.i = icmp eq i32 %and4.i, %conv.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %entry.qedi_get_nvram_block.exit_crit_edge, label %for.inc.i

entry.qedi_get_nvram_block.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.i:                                        ; preds = %entry
  %incdec.ptr.i = getelementptr %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr.i, align 4
  %9 = and i32 %8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i = icmp ne i32 %9, 0
  %and4.1.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.1.i, i32 %conv.i)
  %cmp6.1.i = icmp eq i32 %and4.1.i, %conv.i
  %or.cond.1.i = select i1 %tobool.not.1.i, i1 %cmp6.1.i, i1 false
  br i1 %or.cond.1.i, label %for.inc.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.1.i

for.inc.i.qedi_get_nvram_block.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %incdec.ptr.1.i = getelementptr %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.1.i, align 4
  %12 = and i32 %11, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.2.i = icmp ne i32 %12, 0
  %and4.2.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.2.i, i32 %conv.i)
  %cmp6.2.i = icmp eq i32 %and4.2.i, %conv.i
  %or.cond.2.i = select i1 %tobool.not.2.i, i1 %cmp6.2.i, i1 false
  br i1 %or.cond.2.i, label %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.qedi_get_nvram_block.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %incdec.ptr.2.i = getelementptr %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr.2.i, align 4
  %15 = and i32 %14, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.3.i = icmp ne i32 %15, 0
  %and4.3.i = and i32 %14, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.3.i, i32 %conv.i)
  %cmp6.3.i = icmp eq i32 %and4.3.i, %conv.i
  %or.cond.3.i = select i1 %tobool.not.3.i, i1 %cmp6.3.i, i1 false
  br i1 %or.cond.3.i, label %for.inc.2.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.2.i.cleanup_crit_edge

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.2.i.qedi_get_nvram_block.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

qedi_get_nvram_block.exit:                        ; preds = %for.inc.2.i.qedi_get_nvram_block.exit_crit_edge, %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge, %for.inc.i.qedi_get_nvram_block.exit_crit_edge, %entry.qedi_get_nvram_block.exit_crit_edge
  %retval.0.i = phi ptr [ %block1.i, %entry.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.i, %for.inc.i.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.1.i, %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.2.i, %for.inc.2.i.qedi_get_nvram_block.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %qedi_get_nvram_block.exit.cleanup_crit_edge, label %if.end

qedi_get_nvram_block.exit.cleanup_crit_edge:      ; preds = %qedi_get_nvram_block.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %qedi_get_nvram_block.exit
  %generic = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %generic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %generic, align 4
  %and = and i32 %17, 8
  %and4 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool5.not, ptr @.str.95, ptr @.str.96
  %initiator1 = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 3
  %ipv6 = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 3, i32 1
  %cond11 = select i1 %tobool5.not, i32 17, i32 41
  %cond9 = select i1 %tobool5.not, ptr %initiator1, ptr %ipv6
  %subnet_mask = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 3, i32 1, i32 1
  %subnet_mask18 = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 3, i32 0, i32 1
  %cond21 = select i1 %tobool5.not, ptr %subnet_mask18, ptr %subnet_mask
  %gateway = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 3, i32 1, i32 2
  %gateway28 = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 3, i32 0, i32 2
  %cond31 = select i1 %tobool5.not, ptr %gateway28, ptr %gateway
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool32.not = icmp eq i32 %and4, 0
  %cond36 = select i1 %tobool32.not, ptr %cond, ptr @.str.123
  br i1 %tobool32.not, label %if.end.if.end43_crit_edge, label %if.then38

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %cond40 = select i1 %tobool5.not, ptr @.str.125, ptr @.str.124
  %cond42 = select i1 %tobool5.not, i32 8, i32 5
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end.if.end43_crit_edge
  %ip_len.0 = phi i32 [ %cond42, %if.then38 ], [ %cond11, %if.end.if.end43_crit_edge ]
  %ip.0 = phi ptr [ %cond40, %if.then38 ], [ %cond9, %if.end.if.end43_crit_edge ]
  %sub.0 = phi ptr [ %cond40, %if.then38 ], [ %cond21, %if.end.if.end43_crit_edge ]
  %gw.0 = phi ptr [ %cond40, %if.then38 ], [ %cond31, %if.end.if.end43_crit_edge ]
  %18 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %type, label %if.end43.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb45
    i32 6, label %sw.bb47
    i32 1, label %sw.bb49
    i32 0, label %sw.bb51
    i32 11, label %sw.bb53
    i32 10, label %sw.bb56
    i32 5, label %sw.bb59
  ]

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %call44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %ip_len.0, ptr noundef nonnull %cond36, ptr noundef %ip.0)
  br label %cleanup

sw.bb45:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %call46 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %ip_len.0, ptr noundef nonnull %cond36, ptr noundef %sub.0)
  br label %cleanup

sw.bb47:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %call48 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %ip_len.0, ptr noundef nonnull %cond36, ptr noundef %gw.0)
  br label %cleanup

sw.bb49:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %call50 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 3, ptr noundef nonnull @.str.120, i32 noundef 2)
  br label %cleanup

sw.bb51:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %19 = call ptr @memcpy(ptr %buf, ptr @.str.122, i32 3)
  br label %cleanup

sw.bb53:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %mac = getelementptr inbounds %struct.qedi_ctx, ptr %data, i32 0, i32 15
  %call55 = tail call i32 @sysfs_format_mac(ptr noundef %buf, ptr noundef %mac, i32 noundef 6) #14
  br label %cleanup

sw.bb56:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %generic_cont0 = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %generic_cont0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generic_cont0, align 4
  %and57 = and i32 %21, 65535
  %call58 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 12, ptr noundef nonnull @.str.120, i32 noundef %and57)
  br label %cleanup

sw.bb59:                                          ; preds = %if.end43
  br i1 %tobool32.not, label %sw.bb59.cleanup_crit_edge, label %if.then61

sw.bb59.cleanup_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then61:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #16
  %22 = call ptr @memcpy(ptr %buf, ptr @.str.126, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %sw.bb59.cleanup_crit_edge, %sw.bb56, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb, %if.end43.cleanup_crit_edge, %qedi_get_nvram_block.exit.cleanup_crit_edge, %for.inc.2.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qedi_get_nvram_block.exit.cleanup_crit_edge ], [ 2, %if.then61 ], [ 1, %sw.bb59.cleanup_crit_edge ], [ %call58, %sw.bb56 ], [ %call55, %sw.bb53 ], [ 2, %sw.bb51 ], [ %call50, %sw.bb49 ], [ %call48, %sw.bb47 ], [ %call46, %sw.bb45 ], [ %call44, %sw.bb ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %for.inc.2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @qedi_eth_get_attr_visibility(ptr nocapture noundef readnone %data, i32 noundef %type) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %type)
  %0 = icmp ult i32 %type, 12
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [12 x i16], ptr @switch.table.qedi_eth_get_attr_visibility, i32 0, i32 %type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %rc.0 = phi i16 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i16 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedi_show_boot_tgt_info(ptr noundef %qedi, i32 noundef %type, ptr nocapture noundef writeonly %buf, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %abs_pf_id.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 4, i32 0, i32 24
  %0 = ptrtoint ptr %abs_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %abs_pf_id.i, align 1
  %iscsi_image.i = getelementptr inbounds %struct.qedi_ctx, ptr %qedi, i32 0, i32 26
  %2 = ptrtoint ptr %iscsi_image.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iscsi_image.i, align 8
  %block1.i = getelementptr inbounds %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1
  %conv.i = zext i8 %1 to i32
  %4 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block1.i, align 4
  %6 = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp ne i32 %6, 0
  %and4.i = and i32 %5, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %conv.i)
  %cmp6.i = icmp eq i32 %and4.i, %conv.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %entry.qedi_get_nvram_block.exit_crit_edge, label %for.inc.i

entry.qedi_get_nvram_block.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.i:                                        ; preds = %entry
  %incdec.ptr.i = getelementptr %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr.i, align 4
  %9 = and i32 %8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i = icmp ne i32 %9, 0
  %and4.1.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.1.i, i32 %conv.i)
  %cmp6.1.i = icmp eq i32 %and4.1.i, %conv.i
  %or.cond.1.i = select i1 %tobool.not.1.i, i1 %cmp6.1.i, i1 false
  br i1 %or.cond.1.i, label %for.inc.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.1.i

for.inc.i.qedi_get_nvram_block.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %incdec.ptr.1.i = getelementptr %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.1.i, align 4
  %12 = and i32 %11, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.2.i = icmp ne i32 %12, 0
  %and4.2.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.2.i, i32 %conv.i)
  %cmp6.2.i = icmp eq i32 %and4.2.i, %conv.i
  %or.cond.2.i = select i1 %tobool.not.2.i, i1 %cmp6.2.i, i1 false
  br i1 %or.cond.2.i, label %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.qedi_get_nvram_block.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %incdec.ptr.2.i = getelementptr %struct.nvm_iscsi_cfg, ptr %3, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr.2.i, align 4
  %15 = and i32 %14, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.3.i = icmp ne i32 %15, 0
  %and4.3.i = and i32 %14, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.3.i, i32 %conv.i)
  %cmp6.3.i = icmp eq i32 %and4.3.i, %conv.i
  %or.cond.3.i = select i1 %tobool.not.3.i, i1 %cmp6.3.i, i1 false
  br i1 %or.cond.3.i, label %for.inc.2.i.qedi_get_nvram_block.exit_crit_edge, label %for.inc.2.i.exit_show_tgt_info_crit_edge

for.inc.2.i.exit_show_tgt_info_crit_edge:         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_show_tgt_info

for.inc.2.i.qedi_get_nvram_block.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qedi_get_nvram_block.exit

qedi_get_nvram_block.exit:                        ; preds = %for.inc.2.i.qedi_get_nvram_block.exit_crit_edge, %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge, %for.inc.i.qedi_get_nvram_block.exit_crit_edge, %entry.qedi_get_nvram_block.exit_crit_edge
  %retval.0.i = phi ptr [ %block1.i, %entry.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.i, %for.inc.i.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.1.i, %for.inc.1.i.qedi_get_nvram_block.exit_crit_edge ], [ %incdec.ptr.2.i, %for.inc.2.i.qedi_get_nvram_block.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %qedi_get_nvram_block.exit.exit_show_tgt_info_crit_edge, label %if.end

qedi_get_nvram_block.exit.exit_show_tgt_info_crit_edge: ; preds = %qedi_get_nvram_block.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_show_tgt_info

if.end:                                           ; preds = %qedi_get_nvram_block.exit
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i, align 4
  %and = and i32 %17, 15
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_show_boot_tgt_info, i32 noundef 2192, i32 noundef 32, ptr noundef nonnull @.str.117, i32 noundef %and, i32 noundef %idx) #14
  %arrayidx = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 %idx
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %and2 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi, ptr noundef nonnull @__func__.qedi_show_boot_tgt_info, i32 noundef 2199, i32 noundef 32, ptr noundef nonnull @.str.118) #14
  br label %exit_show_tgt_info

if.end6:                                          ; preds = %if.end
  %generic = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %generic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generic, align 4
  %and8 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond = select i1 %tobool9.not, i32 17, i32 41
  %and12 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and25 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %22 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %type, label %if.end6.exit_show_tgt_info_crit_edge [
    i32 7, label %sw.bb
    i32 2, label %sw.bb48
    i32 3, label %sw.bb60
    i32 4, label %sw.bb66
    i32 8, label %sw.bb75
    i32 9, label %sw.bb77
    i32 10, label %sw.bb79
    i32 11, label %sw.bb81
    i32 1, label %sw.bb83
    i32 6, label %sw.bb85
  ]

if.end6.exit_show_tgt_info_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_show_tgt_info

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %target_name = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 %idx, i32 7
  %call47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef 256, ptr noundef %target_name)
  br label %exit_show_tgt_info

sw.bb48:                                          ; preds = %if.end6
  br i1 %tobool9.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  %ipv6_addr = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 %idx, i32 5
  %call54 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str.96, ptr noundef %ipv6_addr)
  br label %exit_show_tgt_info

if.else:                                          ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  %ipv4_addr = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 %idx, i32 4
  %call58 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str.95, ptr noundef %ipv4_addr)
  br label %exit_show_tgt_info

sw.bb60:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %generic_cont0 = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 %idx, i32 1
  %23 = ptrtoint ptr %generic_cont0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %generic_cont0, align 4
  %and63 = and i32 %24, 65535
  %call65 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 12, ptr noundef nonnull @.str.120, i32 noundef %and63)
  br label %exit_show_tgt_info

sw.bb66:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %lun = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 %idx, i32 6
  %arrayidx69 = getelementptr [2 x i32], ptr %lun, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx69, align 4
  %27 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lun, align 4
  %call74 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 22, ptr noundef nonnull @.str.121, i32 noundef %26, i32 noundef %28)
  br label %exit_show_tgt_info

sw.bb75:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %chap_name14 = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 3, i32 3
  %spec.select = select i1 %tobool13.not, ptr null, ptr %chap_name14
  %call76 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef 256, ptr noundef %spec.select)
  br label %exit_show_tgt_info

sw.bb77:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %chap_password = getelementptr inbounds %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 3, i32 4
  %cond22 = select i1 %tobool13.not, ptr null, ptr %chap_password
  %call78 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef 16, ptr noundef %cond22)
  br label %exit_show_tgt_info

sw.bb79:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %chap_name30 = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 %idx, i32 8
  %cond34 = select i1 %tobool26.not, ptr null, ptr %chap_name30
  %call80 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef 256, ptr noundef %cond34)
  br label %exit_show_tgt_info

sw.bb81:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %chap_password39 = getelementptr %struct.nvm_iscsi_block, ptr %retval.0.i, i32 0, i32 4, i32 %idx, i32 9
  %cond43 = select i1 %tobool26.not, ptr null, ptr %chap_password39
  %call82 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef 16, ptr noundef %cond43)
  br label %exit_show_tgt_info

sw.bb83:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %call84 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 3, ptr noundef nonnull @.str.120, i32 noundef 2)
  br label %exit_show_tgt_info

sw.bb85:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %29 = call ptr @memcpy(ptr %buf, ptr @.str.122, i32 3)
  br label %exit_show_tgt_info

exit_show_tgt_info:                               ; preds = %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb66, %sw.bb60, %if.else, %if.then50, %sw.bb, %if.end6.exit_show_tgt_info_crit_edge, %if.then4, %qedi_get_nvram_block.exit.exit_show_tgt_info_crit_edge, %for.inc.2.i.exit_show_tgt_info_crit_edge
  %rc.0 = phi i32 [ 2, %sw.bb85 ], [ %call84, %sw.bb83 ], [ %call82, %sw.bb81 ], [ %call80, %sw.bb79 ], [ %call78, %sw.bb77 ], [ %call76, %sw.bb75 ], [ %call74, %sw.bb66 ], [ %call65, %sw.bb60 ], [ %call54, %if.then50 ], [ %call58, %if.else ], [ %call47, %sw.bb ], [ 1, %if.then4 ], [ 1, %qedi_get_nvram_block.exit.exit_show_tgt_info_crit_edge ], [ 0, %if.end6.exit_show_tgt_info_crit_edge ], [ 1, %for.inc.2.i.exit_show_tgt_info_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_format_mac(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uio_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_io_error_detected(ptr nocapture noundef readonly %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedi_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedi_io_error_detected, i32 noundef 2398, ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.qedi_io_error_detected, i32 noundef %state) #14
  %flags = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 14
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedi_io_error_detected, i32 noundef 2402, i32 noundef 2, ptr noundef nonnull @.str.129) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = load ptr, ptr @qedi_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %recovery_process = getelementptr inbounds %struct.qed_common_ops, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %recovery_process to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %recovery_process, align 4
  %cdev = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdev, align 4
  %call3 = tail call i32 %6(ptr noundef %8) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_get_iscsi_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_cpu_online(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !395) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @qedi_percpu to i32)
  %6 = inttoptr i32 %add to ptr
  %call3 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @qedi_percpu_io_thread, ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.135, i32 noundef %cpu) #14
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kthread_bind(ptr noundef %call3, i32 noundef %cpu) #14
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %6, align 4
  %call6 = tail call i32 @wake_up_process(ptr noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_cpu_offline(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !395) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @qedi_percpu to i32)
  %6 = inttoptr i32 %add to ptr
  %p_work_lock = getelementptr inbounds %struct.qedi_percpu_s, ptr %6, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %p_work_lock) #14
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  store ptr null, ptr %6, align 4
  %work_list = getelementptr inbounds %struct.qedi_percpu_s, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %work_list, align 4
  %cmp.not36 = icmp eq ptr %10, %work_list
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %work.037 = phi ptr [ %tmp3.039, %for.inc.for.body_crit_edge ], [ %10, %entry.for.body_crit_edge ]
  %11 = ptrtoint ptr %work.037 to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp3.039 = load ptr, ptr %work.037, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work.037) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.037, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %work.037 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %work.037, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %work.037 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %work.037, ptr %work.037, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %work.037, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %work.037, ptr %prev.i3.i, align 4
  tail call void @qedi_fp_process_cqes(ptr noundef %work.037) #14
  %is_solicited = getelementptr inbounds %struct.qedi_work, ptr %work.037, i32 0, i32 4
  %20 = ptrtoint ptr %is_solicited to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_solicited, align 2, !range !419
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.then, label %list_del_init.exit.for.inc_crit_edge

list_del_init.exit.for.inc_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %work.037) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %list_del_init.exit.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp3.039, %work_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %p_work_lock) #14
  %tobool19.not = icmp eq ptr %8, null
  br i1 %tobool19.not, label %for.end.if.end22_crit_edge, label %if.then20

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %call21 = tail call i32 @kthread_stop(ptr noundef nonnull %8) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.end.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_percpu_io_thread(ptr noundef %arg) #0 align 64 {
entry:
  %work_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %work_list) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %work_list, i32 0, i32 1
  %1 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %work_list, ptr %work_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %work_list, ptr %0, align 4
  %3 = call i32 @llvm.read_register.i32(metadata !395) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  call void @set_user_nice(ptr noundef %6, i32 noundef -20) #14
  %call1215 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call1215, label %entry.__here171_crit_edge, label %do.body2.lr.ph

entry.__here171_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here171

do.body2.lr.ph:                                   ; preds = %entry
  %p_work_lock = getelementptr inbounds %struct.qedi_percpu_s, ptr %arg, i32 0, i32 2
  %work_list9 = getelementptr inbounds %struct.qedi_percpu_s, ptr %arg, i32 0, i32 1
  %prev2.i.i = getelementptr inbounds %struct.qedi_percpu_s, ptr %arg, i32 0, i32 1, i32 1
  br label %do.body2

do.body2:                                         ; preds = %__here.do.body2_crit_edge, %do.body2.lr.ph
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %p_work_lock) #14
  %7 = ptrtoint ptr %work_list9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %work_list9, align 4
  %cmp.i.not213 = icmp eq ptr %8, %work_list9
  br i1 %cmp.i.not213, label %do.body2.__here_crit_edge, label %do.body2.while.body12_crit_edge

do.body2.while.body12_crit_edge:                  ; preds = %do.body2
  br label %while.body12

do.body2.__here_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

while.body12:                                     ; preds = %for.end.while.body12_crit_edge, %do.body2.while.body12_crit_edge
  %flags.0214 = phi i32 [ %call43, %for.end.while.body12_crit_edge ], [ %call5, %do.body2.while.body12_crit_edge ]
  %9 = ptrtoint ptr %work_list9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %work_list9, align 4
  %cmp.i.not.i = icmp eq ptr %10, %work_list9
  br i1 %cmp.i.not.i, label %while.body12.list_splice_init.exit_crit_edge, label %if.then.i

while.body12.list_splice_init.exit_crit_edge:     ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #16
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
  %18 = ptrtoint ptr %work_list9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %work_list9, ptr %work_list9, align 4
  store ptr %work_list9, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %while.body12.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %p_work_lock, i32 noundef %flags.0214) #14
  %19 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %work_list, align 4
  %cmp22.not209 = icmp eq ptr %20, %work_list
  br i1 %cmp22.not209, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %work.0210 = phi ptr [ %tmp.0212, %for.inc.for.body_crit_edge ], [ %20, %list_splice_init.exit.for.body_crit_edge ]
  %21 = ptrtoint ptr %work.0210 to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp.0212 = load ptr, ptr %work.0210, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %work.0210) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.0210, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %work.0210 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %work.0210, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %28 = ptrtoint ptr %work.0210 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %work.0210, ptr %work.0210, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %work.0210, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %work.0210, ptr %prev.i3.i, align 4
  call void @qedi_fp_process_cqes(ptr noundef %work.0210) #14
  %is_solicited = getelementptr inbounds %struct.qedi_work, ptr %work.0210, i32 0, i32 4
  %30 = ptrtoint ptr %is_solicited to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_solicited, align 2, !range !419
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool26.not = icmp eq i8 %31, 0
  br i1 %tobool26.not, label %if.then, label %list_del_init.exit.for.inc_crit_edge

list_del_init.exit.for.inc_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef %work.0210) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %list_del_init.exit.for.inc_crit_edge
  %cmp22.not = icmp eq ptr %tmp.0212, %work_list
  br i1 %cmp22.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 1945, i32 noundef 0) #14
  %call.i = call i32 @__cond_resched() #14
  %call43 = call i32 @_raw_spin_lock_irqsave(ptr noundef %p_work_lock) #14
  %32 = ptrtoint ptr %work_list9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %work_list9, align 4
  %cmp.i.not = icmp eq ptr %33, %work_list9
  br i1 %cmp.i.not, label %for.end.__here_crit_edge, label %for.end.while.body12_crit_edge

for.end.while.body12_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body12

for.end.__here_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %for.end.__here_crit_edge, %do.body2.__here_crit_edge
  %flags.0.lcssa = phi i32 [ %call5, %do.body2.__here_crit_edge ], [ %call43, %for.end.__here_crit_edge ]
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 212
  %36 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 ptrtoint (ptr blockaddress(@qedi_percpu_io_thread, %__here) to i32), ptr %task_state_change, align 4
  %37 = load ptr, ptr %task, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 1, ptr %37, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !420
  call void @_raw_spin_unlock_irqrestore(ptr noundef %p_work_lock, i32 noundef %flags.0.lcssa) #14
  call void @schedule() #14
  %call1 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call1, label %__here.__here171_crit_edge, label %__here.do.body2_crit_edge

__here.do.body2_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

__here.__here171_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here171

__here171:                                        ; preds = %__here.__here171_crit_edge, %entry.__here171_crit_edge
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %task_state_change175 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 212
  %41 = ptrtoint ptr %task_state_change175 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 ptrtoint (ptr blockaddress(@qedi_percpu_io_thread, %__here171) to i32), ptr %task_state_change175, align 4
  %42 = load ptr, ptr %task, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %42, align 128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %work_list) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_bind(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_fp_process_cqes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !54, !56, !57, !59, !61, !62, !64, !66, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !90, !91, !92, !93, !94, !96, !97, !99, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !180, !182, !183, !185, !187, !188, !190, !192, !194, !195, !197, !199, !201, !203, !205, !207, !208, !210, !212, !214, !216, !218, !219, !221, !223, !224, !226, !227, !229, !231, !233, !234, !236, !238, !239, !241, !243, !245, !246, !248, !249, !251, !253, !255, !256, !258, !260, !261, !263, !264, !266, !268, !269, !271, !273, !274, !276, !277, !279, !280, !282, !283, !285, !287, !289, !291, !293, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !315, !317, !319, !321, !323, !325, !327, !329, !330, !332, !333, !335, !336, !338, !340, !341, !343, !344, !346, !348, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !370, !372, !374, !375, !377, !379, !380, !382, !384, !385, !387, !389, !391, !393}
!llvm.named.register.sp = !{!395}
!llvm.module.flags = !{!396, !397, !398, !399, !400, !401, !402, !403}
!llvm.ident = !{!404}

!0 = !{ptr @__param_qedi_qed_debug, !1, !"__param_qedi_qed_debug", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_qedi_qed_debugtype393, !1, !"__UNIQUE_ID_qedi_qed_debugtype393", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_qedi_qed_debug394, !4, !"__UNIQUE_ID_qedi_qed_debug394", i1 false, i1 false}
!4 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 33, i32 1}
!5 = !{ptr @__param_qedi_fw_debug, !6, !"__param_qedi_fw_debug", i1 false, i1 false}
!6 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 36, i32 1}
!7 = !{ptr @__UNIQUE_ID_qedi_fw_debugtype395, !6, !"__UNIQUE_ID_qedi_fw_debugtype395", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_qedi_fw_debug396, !9, !"__UNIQUE_ID_qedi_fw_debug396", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 37, i32 1}
!10 = !{ptr @qedi_dbg_log, !11, !"qedi_dbg_log", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 39, i32 6}
!12 = !{ptr @__param_qedi_dbg_log, !13, !"__param_qedi_dbg_log", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 40, i32 1}
!14 = !{ptr @__UNIQUE_ID_qedi_dbg_logtype397, !13, !"__UNIQUE_ID_qedi_dbg_logtype397", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_qedi_dbg_log398, !16, !"__UNIQUE_ID_qedi_dbg_log398", i1 false, i1 false}
!16 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 41, i32 1}
!17 = !{ptr @__param_qedi_io_tracing, !18, !"__param_qedi_io_tracing", i1 false, i1 false}
!18 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 44, i32 1}
!19 = !{ptr @__UNIQUE_ID_qedi_io_tracingtype399, !18, !"__UNIQUE_ID_qedi_io_tracingtype399", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_qedi_io_tracing400, !21, !"__UNIQUE_ID_qedi_io_tracing400", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 45, i32 1}
!22 = !{ptr @__param_qedi_ll2_buf_size, !23, !"__param_qedi_ll2_buf_size", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 49, i32 1}
!24 = !{ptr @__UNIQUE_ID_qedi_ll2_buf_sizetype401, !23, !"__UNIQUE_ID_qedi_ll2_buf_sizetype401", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_qedi_ll2_buf_size402, !26, !"__UNIQUE_ID_qedi_ll2_buf_size402", i1 false, i1 false}
!26 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 50, i32 1}
!27 = !{ptr @__param_qedi_flags_override, !28, !"__param_qedi_flags_override", i1 false, i1 false}
!28 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 54, i32 1}
!29 = !{ptr @__UNIQUE_ID_qedi_flags_overridetype403, !28, !"__UNIQUE_ID_qedi_flags_overridetype403", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_qedi_flags_override404, !31, !"__UNIQUE_ID_qedi_flags_override404", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 55, i32 1}
!32 = !{ptr @__func__.qedi_alloc_sq, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1776, i32 3}
!34 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1784, i32 3}
!37 = !{ptr @__func__.qedi_get_task_idx, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1831, i32 3}
!39 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__func__.qedi_clear_task_idx, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1846, i32 3}
!42 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__func__.qedi_update_itt_map, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1856, i32 2}
!45 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__func__.qedi_get_task_tid, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1868, i32 4}
!48 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1875, i32 2}
!51 = !{ptr @__func__.qedi_get_proto_itt, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1881, i32 2}
!53 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__func__.qedi_reset_host_mtu, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2006, i32 2}
!56 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_description429, !58, !"__UNIQUE_ID_description429", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2936, i32 1}
!59 = !{ptr @__UNIQUE_ID_file430, !60, !"__UNIQUE_ID_file430", i1 false, i1 false}
!60 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2937, i32 1}
!61 = !{ptr @__UNIQUE_ID_license431, !60, !"__UNIQUE_ID_license431", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_author432, !63, !"__UNIQUE_ID_author432", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2938, i32 1}
!64 = !{ptr @__UNIQUE_ID_version433, !65, !"__UNIQUE_ID_version433", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2939, i32 1}
!66 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__modver_attr, !65, !"__modver_attr", i1 false, i1 false}
!70 = !{ptr @__initcall__kmod_qedi__434_2940_qedi_init6, !71, !"__initcall__kmod_qedi__434_2940_qedi_init6", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2940, i32 1}
!72 = !{ptr @__exitcall_qedi_cleanup, !73, !"__exitcall_qedi_cleanup", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2941, i32 1}
!74 = !{ptr @qedi_qed_debug, !75, !"qedi_qed_debug", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 31, i32 13}
!76 = !{ptr @qedi_fw_debug, !77, !"qedi_fw_debug", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 35, i32 13}
!78 = !{ptr @qedi_io_tracing, !79, !"qedi_io_tracing", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 43, i32 6}
!80 = !{ptr @qedi_flags_override, !81, !"qedi_flags_override", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 53, i32 13}
!82 = !{ptr @qedi_ops, !83, !"qedi_ops", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 57, i32 29}
!84 = !{ptr @__pcpu_unique_qedi_percpu, !85, !"__pcpu_unique_qedi_percpu", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 60, i32 8}
!86 = !{ptr @qedi_percpu, !85, !"qedi_percpu", i1 false, i1 false}
!87 = !{ptr @qedi_cpuhp_state, !88, !"qedi_cpuhp_state", i1 false, i1 false}
!88 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2854, i32 25}
!89 = !{ptr @__param_str_qedi_qed_debug, !1, !"__param_str_qedi_qed_debug", i1 false, i1 false}
!90 = !{ptr @__param_str_qedi_fw_debug, !6, !"__param_str_qedi_fw_debug", i1 false, i1 false}
!91 = !{ptr @__param_str_qedi_dbg_log, !13, !"__param_str_qedi_dbg_log", i1 false, i1 false}
!92 = !{ptr @__param_str_qedi_io_tracing, !18, !"__param_str_qedi_io_tracing", i1 false, i1 false}
!93 = !{ptr @__param_str_qedi_ll2_buf_size, !23, !"__param_str_qedi_ll2_buf_size", i1 false, i1 false}
!94 = !{ptr @qedi_ll2_buf_size, !95, !"qedi_ll2_buf_size", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 48, i32 13}
!96 = !{ptr @__param_str_qedi_flags_override, !28, !"__param_str_qedi_flags_override", i1 false, i1 false}
!97 = !{ptr @qedi_pci_driver, !98, !"qedi_pci_driver", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2860, i32 26}
!99 = !{ptr @qedi_pci_tbl, !100, !"qedi_pci_tbl", i1 false, i1 false}
!100 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2847, i32 29}
!101 = !{ptr @__func__.__qedi_probe, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2545, i32 4}
!103 = !{ptr @.str.12, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.13, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2552, i32 3}
!106 = !{ptr @.str.14, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2564, i32 2}
!108 = !{ptr @.str.15, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2572, i32 3}
!110 = !{ptr @.str.16, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2581, i32 3}
!112 = !{ptr @.str.17, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2592, i32 26}
!114 = !{ptr @.str.18, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2595, i32 3}
!116 = !{ptr @.str.19, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2618, i32 2}
!118 = !{ptr @.str.20, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2629, i32 2}
!120 = !{ptr @.str.21, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2638, i32 2}
!122 = !{ptr @.str.22, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2641, i32 39}
!124 = !{ptr @__qedi_probe.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2656, i32 3}
!126 = !{ptr @.str.23, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @__qedi_probe.__key.24, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2658, i32 3}
!129 = !{ptr @.str.25, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @__qedi_probe.__key.26, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2659, i32 3}
!132 = !{ptr @.str.27, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @__qedi_probe.__key.28, !134, !"__key", i1 false, i1 false}
!134 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2660, i32 3}
!135 = !{ptr @.str.29, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.30, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2666, i32 27}
!138 = !{ptr @.str.31, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2675, i32 3}
!140 = !{ptr @.str.32, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2681, i32 2}
!142 = !{ptr @.str.33, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2689, i32 3}
!144 = !{ptr @.str.34, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2697, i32 2}
!146 = !{ptr @.str.35, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2704, i32 4}
!148 = !{ptr @.str.36, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2713, i32 4}
!150 = !{ptr @.str.37, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2720, i32 4}
!152 = !{ptr @.str.38, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2728, i32 4}
!154 = !{ptr @.str.39, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2735, i32 4}
!156 = !{ptr @.str.40, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2742, i32 4}
!158 = !{ptr @.str.41, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2748, i32 22}
!160 = !{ptr @.str.42, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2750, i32 4}
!162 = !{ptr @.str.43, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2756, i32 21}
!164 = !{ptr @.str.44, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2759, i32 4}
!166 = !{ptr @__qedi_probe.__key.45, !167, !"__key", i1 false, i1 false}
!167 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2765, i32 3}
!168 = !{ptr @.str.46, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @__qedi_probe.__key.47, !167, !"__key", i1 false, i1 false}
!170 = !{ptr @.str.48, !167, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @__qedi_probe.__key.49, !172, !"__key", i1 false, i1 false}
!172 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2766, i32 3}
!173 = !{ptr @.str.50, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @__qedi_probe.__key.51, !172, !"__key", i1 false, i1 false}
!175 = !{ptr @.str.52, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.53, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2774, i32 4}
!178 = !{ptr @.str.54, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2779, i32 4}
!180 = !{ptr @__func__.qedi_host_alloc, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 639, i32 3}
!182 = !{ptr @.str.55, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @qedi_scsi_transport, !184, !"qedi_scsi_transport", i1 false, i1 false}
!184 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 58, i32 40}
!185 = !{ptr @__func__.qedi_set_iscsi_pf_param, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 838, i32 2}
!187 = !{ptr @.str.56, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.57, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 848, i32 3}
!190 = !{ptr @.str.58, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 855, i32 3}
!192 = !{ptr @__func__.qedi_alloc_global_queues, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1632, i32 3}
!194 = !{ptr @.str.59, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.60, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1647, i32 3}
!197 = !{ptr @.str.61, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1651, i32 2}
!199 = !{ptr @.str.62, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1672, i32 4}
!201 = !{ptr @.str.63, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1697, i32 4}
!203 = !{ptr @.str.64, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1708, i32 4}
!205 = !{ptr @__func__.qedi_alloc_bdq, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1550, i32 4}
!207 = !{ptr @.str.65, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.66, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1561, i32 2}
!210 = !{ptr @.str.67, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1568, i32 3}
!212 = !{ptr @.str.68, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1582, i32 3}
!214 = !{ptr @.str.69, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1598, i32 3}
!216 = !{ptr @__func__.qedi_alloc_nvm_iscsi_cfg, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1483, i32 3}
!218 = !{ptr @.str.70, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.71, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1486, i32 2}
!221 = !{ptr @__func__.qedi_prepare_fp, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 474, i32 4}
!223 = !{ptr @.str.72, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @__func__.qedi_alloc_fp, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 414, i32 3}
!226 = !{ptr @.str.73, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.74, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 422, i32 3}
!229 = !{ptr @.str.75, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 450, i32 40}
!231 = !{ptr @__func__.qedi_alloc_and_init_sb, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 362, i32 3}
!233 = !{ptr @.str.76, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.77, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 371, i32 3}
!236 = !{ptr @__func__.qedi_setup_int, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1451, i32 2}
!238 = !{ptr @.str.78, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @__func__.qedi_request_msix_irq, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1415, i32 3}
!241 = !{ptr @.str.79, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1424, i32 4}
!243 = !{ptr @__func__.qedi_msix_handler, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1349, i32 3}
!245 = !{ptr @.str.80, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @__func__.qedi_process_completions, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1279, i32 2}
!248 = !{ptr @.str.81, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.82, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1294, i32 3}
!251 = !{ptr @.str.83, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1300, i32 4}
!253 = !{ptr @__func__.qedi_queue_cqe, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1216, i32 3}
!255 = !{ptr @.str.84, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.85, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1254, i32 3}
!258 = !{ptr @__func__.qedi_sync_free_irqs, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1387, i32 4}
!260 = !{ptr @.str.86, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @__func__.qedi_simd_int_handler, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1373, i32 2}
!263 = !{ptr @.str.87, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @qedi_cb_ops, !265, !"qedi_cb_ops", i1 false, i1 false}
!265 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1194, i32 32}
!266 = !{ptr @__func__.qedi_link_update, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1184, i32 3}
!268 = !{ptr @.str.88, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.89, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1187, i32 3}
!271 = !{ptr @__func__.qedi_schedule_recovery_handler, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1160, i32 2}
!273 = !{ptr @.str.90, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @__func__.qedi_schedule_hw_err_handler, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1129, i32 2}
!276 = !{ptr @.str.91, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @__func__.qedi_get_generic_tlv_data, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1045, i32 3}
!279 = !{ptr @.str.92, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @__func__.qedi_get_protocol_tlv_data, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1069, i32 3}
!282 = !{ptr @.str.93, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.94, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1111, i32 4}
!285 = !{ptr @.str.95, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 980, i32 35}
!287 = !{ptr @.str.96, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 983, i32 35}
!289 = !{ptr @qedi_ll2_cb_ops, !290, !"qedi_ll2_cb_ops", i1 false, i1 false}
!290 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1919, i32 30}
!291 = !{ptr @__func__.qedi_ll2_rx, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 673, i32 3}
!293 = !{ptr @.str.97, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.98, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 678, i32 3}
!296 = !{ptr @.str.99, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 696, i32 3}
!298 = !{ptr @.str.100, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 703, i32 2}
!300 = !{ptr @.str.101, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 709, i32 3}
!302 = distinct !{null, !303, !"__already_done", i1 false, i1 false}
!303 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 818, i32 3}
!304 = distinct !{null, !305, !"__already_done", i1 false, i1 false}
!305 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 823, i32 2}
!306 = !{ptr @__func__.qedi_ll2_process_skb, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 747, i32 3}
!308 = !{ptr @.str.103, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 773, i32 2}
!310 = !{ptr @.str.104, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 777, i32 2}
!312 = !{ptr @__func__.qedi_iscsi_event_cb, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 81, i32 3}
!314 = !{ptr @.str.105, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.106, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 86, i32 2}
!317 = !{ptr @.str.107, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 90, i32 2}
!319 = !{ptr @.str.108, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 98, i32 3}
!321 = !{ptr @.str.109, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 129, i32 3}
!323 = !{ptr @qedi_udev_list, !324, !"qedi_udev_list", i1 false, i1 false}
!324 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 61, i32 8}
!325 = !{ptr @.str.110, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 329, i32 16}
!327 = !{ptr @__func__.qedi_init_uio, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 342, i32 5}
!329 = !{ptr @.str.111, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @qedi_init_id_tbl.__key, !331, !"__key", i1 false, i1 false}
!331 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 537, i32 2}
!332 = !{ptr @.str.112, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @__func__.qedi_alloc_itt, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1907, i32 3}
!335 = !{ptr @.str.113, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @__func__.__qedi_remove, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2456, i32 3}
!338 = !{ptr @__func__.qedi_board_disable_work, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2490, i32 2}
!340 = !{ptr @.str.114, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @__func__.qedi_get_boot_info, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2319, i32 2}
!343 = !{ptr @.str.115, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.116, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2326, i32 3}
!346 = !{ptr @__func__.qedi_show_boot_tgt_info, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2190, i32 2}
!348 = !{ptr @.str.117, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.118, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2198, i32 3}
!351 = !{ptr @.str.119, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2218, i32 21}
!353 = !{ptr @.str.120, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2230, i32 26}
!355 = !{ptr @.str.121, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2235, i32 26}
!357 = !{ptr @.str.122, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2259, i32 25}
!359 = !{ptr @.str.123, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2070, i32 18}
!361 = !{ptr @.str.124, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2072, i32 18}
!363 = !{ptr @.str.125, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2072, i32 27}
!365 = !{ptr @.str.126, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2104, i32 26}
!367 = !{ptr @__func__.qedi_shutdown, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2503, i32 2}
!369 = !{ptr @.str.127, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @qedi_err_handler, !371, !"qedi_err_handler", i1 false, i1 false}
!371 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2856, i32 34}
!372 = !{ptr @__func__.qedi_io_error_detected, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2397, i32 2}
!374 = !{ptr @.str.128, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @.str.129, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2401, i32 3}
!377 = !{ptr @__func__.qedi_init, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2876, i32 3}
!379 = !{ptr @.str.130, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.131, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2886, i32 3}
!382 = !{ptr @qedi_init.__key, !383, !"__key", i1 false, i1 false}
!383 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2894, i32 3}
!384 = !{ptr @.str.132, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.133, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2898, i32 46}
!387 = !{ptr @.str.134, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 2906, i32 3}
!389 = !{ptr @.str.135, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1964, i32 6}
!391 = distinct !{null, !392, !"__already_done", i1 false, i1 false}
!392 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1948, i32 3}
!393 = distinct !{null, !394, !"__already_done", i1 false, i1 false}
!394 = !{!"../drivers/scsi/qedi/qedi_main.c", i32 1952, i32 2}
!395 = !{!"sp"}
!396 = !{i32 1, !"wchar_size", i32 2}
!397 = !{i32 1, !"min_enum_size", i32 4}
!398 = !{i32 8, !"branch-target-enforcement", i32 0}
!399 = !{i32 8, !"sign-return-address", i32 0}
!400 = !{i32 8, !"sign-return-address-all", i32 0}
!401 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!402 = !{i32 7, !"uwtable", i32 1}
!403 = !{i32 7, !"frame-pointer", i32 2}
!404 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!405 = !{!"auto-init"}
!406 = !{i64 2157787583}
!407 = !{i64 5051148}
!408 = !{i64 5051348}
!409 = !{i64 2157788314}
!410 = !{i64 2157788550}
!411 = !{i64 2157789291}
!412 = !{i64 2157738223}
!413 = !{!"branch_weights", i32 1, i32 2000}
!414 = !{i64 2157608795}
!415 = !{i64 5051768}
!416 = !{i64 2157609104}
!417 = !{i64 2157751891}
!418 = !{i64 2157752083}
!419 = !{i8 0, i8 2}
!420 = !{i64 2157770280}
