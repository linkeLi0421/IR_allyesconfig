; ModuleID = '/llk/IR_all_yes/drivers/scsi/csiostor/csio_scsi.c_pt.bc'
source_filename = "../drivers/scsi/csiostor/csio_scsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.csio_hw = type { %struct.csio_sm, %struct.spinlock, %struct.csio_scsim, %struct.csio_wrm, ptr, ptr, i32, i32, [4 x [128 x %struct.csio_scsi_qset]], [4 x %struct.csio_scsi_cpu_info], i32, i32, %struct.csio_mgmtm, %struct.csio_mbm, i32, ptr, %struct.list_head, i32, i32, %struct.work_struct, %struct.list_head, %struct.list_head, [32 x i8], [16 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i8, i16, i32, %struct.csio_vpd, i8, i32, i8, i8, i8, i8, i32, [4 x %struct.csio_pport], %struct.csio_hw_params, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.csio_fcoe_res_info, ptr, [514 x %struct.csio_msix_entries], ptr, %struct.csio_hw_stats }
%struct.csio_sm = type { %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.csio_scsim = type { ptr, i8, i8, i16, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.csio_scsi_stats }
%struct.csio_scsi_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_wrm = type { i32, ptr, i32, i32, [128 x ptr], i32, %struct.csio_sge }
%struct.csio_sge = type { i32, i32, i32, [16 x i32], [6 x i16], [4 x i8] }
%struct.csio_scsi_qset = type { i32, i32, i32 }
%struct.csio_scsi_cpu_info = type { i16 }
%struct.csio_mgmtm = type { ptr, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.csio_mgmtm_stats }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.csio_mgmtm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_mbm = type { i32, i32, %struct.timer_list, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.csio_mbm_stats }
%struct.csio_mbm_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.csio_vpd = type { i32, [17 x i8], [17 x i8], [17 x i8] }
%struct.csio_pport = type { i16, i16, i8, i8, i16, [6 x i8], i8, i8, i8, i8, %struct.link_config }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.csio_hw_params = type { i32, i32, %struct.pci_params, i32 }
%struct.pci_params = type { i16, i16, i32, i16, i8 }
%struct.csio_fcoe_res_info = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_msix_entries = type { ptr, [24 x i8] }
%struct.csio_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], i64, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct.cpl_fw6_msg = type { i8, i8, i16, i32, [4 x i64] }
%struct.fw_cmd_hdr = type { i32, i32 }
%struct.csio_ioreq = type { %struct.csio_sm, i32, i32, i32, i32, i32, %struct.csio_dma_buf, i16, i16, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, i8, i8, i16, %struct.completion, [100 x i8] }
%struct.csio_dma_buf = type { %struct.list_head, ptr, i32, i32 }
%struct.csio_lnode = type { %struct.csio_sm, ptr, i8, i8, i16, i32, i32, %struct.list_head, ptr, ptr, [6 x i8], i32, %struct.csio_service_parms, i32, i32, i16, i8, i8, %struct.list_head, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, %struct.fc_host_statistics, %struct.csio_lnode_stats, %struct.csio_lnode_params }
%struct.csio_service_parms = type { %struct.fc_els_csp, [8 x i8], [8 x i8], [4 x %struct.fc_els_cssp], [16 x i8] }
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.80, i32 }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.csio_lnode_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [27 x i32], [7 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_lnode_params = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.csio_scsi_level_data = type { i32, ptr, ptr, i64 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.csio_rnode = type { %struct.csio_sm, ptr, i32, %struct.list_head, i32, i16, i8, i8, i32, ptr, %struct.csio_service_parms, ptr, i32, i32, i32, %struct.csio_rnode_stats }
%struct.csio_rnode_stats = type { i32, i32, i32, i32, i32, [27 x i32], [10 x i32], i32, i32, i32, i32 }
%struct.csio_wr_pair = type { ptr, i32, ptr, i32 }
%struct.csio_q = type { i16, i16, i16, i16, i32, ptr, ptr, i32, ptr, %union.anon.2, i32, i32, i32, %struct.csio_qstats, [44 x i8] }
%union.anon.2 = type { %struct.csio_iq, [500 x i8] }
%struct.csio_iq = type { i16, i16, i16, i32, ptr }
%struct.csio_qstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.62 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fcp_resp_with_ext = type { %struct.fcp_resp, %struct.fcp_resp_ext }
%struct.fcp_resp = type { [8 x i8], i16, i8, i8 }
%struct.fcp_resp_ext = type { i32, i32, i32 }
%struct.fw_scsi_abrt_cls_wr = type { i32, i32, i64, i16, i8, i8, [4 x i8], i64 }
%struct.fw_scsi_write_wr = type { i32, i32, i64, i16, i8, i8, %union.fw_scsi_write_priv, i32, i32, i64, i32, i32 }
%union.fw_scsi_write_priv = type { %struct.fcoe_write_priv }
%struct.fcoe_write_priv = type { i8, i8, [2 x i8] }
%struct.fcp_cmnd = type { %struct.scsi_lun, i8, i8, i8, i8, [16 x i8], i32 }
%struct.scsi_lun = type { [8 x i8] }
%struct.ulptx_sgl = type { i32, i32, i64, [0 x %struct.ulptx_sge_pair] }
%struct.ulptx_sge_pair = type { [2 x i32], [2 x i64] }
%struct.fw_scsi_read_wr = type { i32, i32, i64, i16, i8, i8, %union.fw_scsi_read_priv, i32, i32, i64, i32, i32 }
%union.fw_scsi_read_priv = type { %struct.fcoe_read_priv }
%struct.fcoe_read_priv = type { i8, i8, [2 x i8] }
%struct.fw_scsi_cmd_wr = type { i32, i32, i64, i16, i8, i8, %union.fw_scsi_cmd_priv, [8 x i8], i64, i32, i32 }
%union.fw_scsi_cmd_priv = type { %struct.fcoe_cmd_priv }
%struct.fcoe_cmd_priv = type { i8, i8, [2 x i8] }

@csio_scsi_eqsize = dso_local global { i32, [28 x i8] } { i32 65536, [28 x i8] zeroinitializer }, align 32
@csio_scsi_iqlen = dso_local global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@csio_scsi_ioreqs = dso_local global { i32, [28 x i8] } { i32 2048, [28 x i8] zeroinitializer }, align 32
@csio_delta_scan_tmo = dso_local global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@csio_lun_qdepth = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@csio_scsi_cmpl_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error: Invalid CPL msg %x recvd on SCSI q\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csio_scsi_cmpl_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/scsi/csiostor/csio_scsi.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csio_scsi_cmpl_handler._entry_ptr = internal global ptr @csio_scsi_cmpl_handler._entry, section ".printk_index", align 4
@csio_scsi_cmpl_handler._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WR with invalid opcode in SCSI IQ: %x\0A\00", [57 x i8] zeroinitializer }, align 32
@csio_scsi_cmpl_handler._entry_ptr.7 = internal global ptr @csio_scsi_cmpl_handler._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chelsio FCoE driver\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csiostor\00", [23 x i8] zeroinitializer }, align 32
@csio_fcoe_lport_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @csio_fcoe_lport_group, ptr null], [24 x i8] zeroinitializer }, align 32
@csio_fcoe_shost_template = dso_local global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @csio_queuecommand, ptr null, ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr @csio_eh_abort_handler, ptr @csio_eh_lun_reset_handler, ptr null, ptr null, ptr null, ptr @csio_slave_alloc, ptr @csio_slave_configure, ptr @csio_slave_destroy, ptr null, ptr null, ptr @csio_scan_finished, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_eh_timed_out, ptr null, ptr null, ptr @.str.9, ptr null, i32 0, i32 -1, i16 35, i16 0, i32 128, i32 0, i32 0, i32 0, i16 32, i8 0, i32 0, i8 0, i32 0, ptr @csio_fcoe_lport_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@csio_fcoe_vport_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @csio_fcoe_vport_group, ptr null], [24 x i8] zeroinitializer }, align 32
@csio_fcoe_shost_vport_template = dso_local global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @csio_queuecommand, ptr null, ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr @csio_eh_abort_handler, ptr @csio_eh_lun_reset_handler, ptr null, ptr null, ptr null, ptr @csio_slave_alloc, ptr @csio_slave_configure, ptr @csio_slave_destroy, ptr null, ptr null, ptr @csio_scan_finished, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_eh_timed_out, ptr null, ptr null, ptr @.str.9, ptr null, i32 0, i32 -1, i16 35, i16 0, i32 128, i32 0, i32 0, i32 0, i16 32, i8 0, i32 0, i8 0, i32 0, ptr @csio_fcoe_vport_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@csio_scsim_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&scm->freelist_lock\00", [44 x i8] zeroinitializer }, align 32
@csio_scsim_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 2440, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"I/O request element allocation failed,  Num allocated = %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csio_scsim_init\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@csio_scsim_init._entry_ptr = internal global ptr @csio_scsim_init._entry, section ".printk_index", align 4
@csio_scsim_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 2452, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SCSI response DMA buffer allocation failed!\0A\00", [51 x i8] zeroinitializer }, align 32
@csio_scsim_init._entry_ptr.16 = internal global ptr @csio_scsim_init._entry.14, section ".printk_index", align 4
@csio_max_scan_tmo = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@csio_queuecommand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1819, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"More SGEs than can be supported. SGEs: %d, Max SGEs: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_queuecommand\00", [46 x i8] zeroinitializer }, align 32
@csio_queuecommand._entry_ptr = internal global ptr @csio_queuecommand._entry, section ".printk_index", align 4
@csio_queuecommand._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1828, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Out of I/O request elements. Active #:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@csio_queuecommand._entry_ptr.21 = internal global ptr @csio_queuecommand._entry.19, section ".printk_index", align 4
@csio_queuecommand._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 1867, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ioreq: %p couldn't be started, status:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@csio_queuecommand._entry_ptr.24 = internal global ptr @csio_queuecommand._entry.22, section ".printk_index", align 4
@csio_scsi_copy_to_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1535, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to kmap sg:%p of ioreq:%p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_scsi_copy_to_sgl\00", [42 x i8] zeroinitializer }, align 32
@csio_scsi_copy_to_sgl._entry_ptr = internal global ptr @csio_scsi_copy_to_sgl._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@csio_scsi_err_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1632, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Over-flow error,cmnd:0x%x expected len:0x%x resid:0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_scsi_err_handler\00", [42 x i8] zeroinitializer }, align 32
@csio_scsi_err_handler._entry_ptr = internal global ptr @csio_scsi_err_handler._entry, section ".printk_index", align 4
@csio_scsi_err_handler._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1643, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Under-flow error,cmnd:0x%x expected len:0x%x resid:0x%x lun:0x%llx ssn:0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@csio_scsi_err_handler._entry_ptr.31 = internal global ptr @csio_scsi_err_handler._entry.29, section ".printk_index", align 4
@csio_scsi_err_handler._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 1711, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unknown SCSI FW WR status:%d req:%p cmnd:%p\0A\00", [51 x i8] zeroinitializer }, align 32
@csio_scsi_err_handler._entry_ptr.34 = internal global ptr @csio_scsi_err_handler._entry.32, section ".printk_index", align 4
@csio_eh_abort_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1974, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Abort timed out -- req: %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_eh_abort_handler\00", [42 x i8] zeroinitializer }, align 32
@csio_eh_abort_handler._entry_ptr = internal global ptr @csio_eh_abort_handler._entry, section ".printk_index", align 4
@csio_eh_abort_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 1996, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Aborted SCSI command to (%d:%llu) tag %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@csio_eh_abort_handler._entry_ptr.40 = internal global ptr @csio_eh_abort_handler._entry.37, section ".printk_index", align 4
@csio_eh_abort_handler._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.2, i32 2002, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to abort SCSI command, (%d:%llu) tag %u\0A\00", [48 x i8] zeroinitializer }, align 32
@csio_eh_abort_handler._entry_ptr.43 = internal global ptr @csio_eh_abort_handler._entry.41, section ".printk_index", align 4
@csio_eh_lun_reset_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 2086, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"LUN reset cannot be issued on non-ready local node vnpi:0x%x (LUN:%llu)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"csio_eh_lun_reset_handler\00", [38 x i8] zeroinitializer }, align 32
@csio_eh_lun_reset_handler._entry_ptr = internal global ptr @csio_eh_lun_reset_handler._entry, section ".printk_index", align 4
@csio_eh_lun_reset_handler._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 2106, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"LUN reset cannot be issued on non-ready remote node ssni:0x%x (LUN:%llu)\0A\00", [54 x i8] zeroinitializer }, align 32
@csio_eh_lun_reset_handler._entry_ptr.48 = internal global ptr @csio_eh_lun_reset_handler._entry.46, section ".printk_index", align 4
@csio_eh_lun_reset_handler._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 2115, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Out of IO request elements. Active # :%d\0A\00", [54 x i8] zeroinitializer }, align 32
@csio_eh_lun_reset_handler._entry_ptr.51 = internal global ptr @csio_eh_lun_reset_handler._entry.49, section ".printk_index", align 4
@csio_eh_lun_reset_handler._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 2156, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to issue LUN reset, req:%p, status:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@csio_eh_lun_reset_handler._entry_ptr.54 = internal global ptr @csio_eh_lun_reset_handler._entry.52, section ".printk_index", align 4
@csio_eh_lun_reset_handler._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.2, i32 2170, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LUN reset (%d:%llu) timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@csio_eh_lun_reset_handler._entry_ptr.57 = internal global ptr @csio_eh_lun_reset_handler._entry.55, section ".printk_index", align 4
@csio_eh_lun_reset_handler._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.2, i32 2183, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"LUN reset failed (%d:%llu), status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@csio_eh_lun_reset_handler._entry_ptr.60 = internal global ptr @csio_eh_lun_reset_handler._entry.58, section ".printk_index", align 4
@csio_eh_lun_reset_handler._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.45, ptr @.str.2, i32 2203, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Attempt to abort I/Os during LUN reset of %llu returned %d\0A\00", [36 x i8] zeroinitializer }, align 32
@csio_eh_lun_reset_handler._entry_ptr.63 = internal global ptr @csio_eh_lun_reset_handler._entry.61, section ".printk_index", align 4
@csio_eh_lun_reset_handler._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.45, ptr @.str.2, i32 2214, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LUN reset occurred (%d:%llu)\0A\00", [34 x i8] zeroinitializer }, align 32
@csio_eh_lun_reset_handler._entry_ptr.66 = internal global ptr @csio_eh_lun_reset_handler._entry.64, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@csio_fcoe_lport_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @csio_fcoe_lport_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@csio_fcoe_lport_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_hw_state, ptr @dev_attr_device_reset, ptr @dev_attr_disable_port, ptr @dev_attr_dbg_level, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_hw_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @csio_show_hw_state, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @csio_device_reset }, [36 x i8] zeroinitializer }, align 32
@dev_attr_disable_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @csio_disable_port }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dbg_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @csio_show_dbg_level, ptr @csio_store_dbg_level }, [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hw_state\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ready\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"not ready\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable_port\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dbg_level\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%i\00", [29 x i8] zeroinitializer }, align 32
@csio_fcoe_vport_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @csio_fcoe_vport_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@csio_fcoe_vport_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_num_reg_rnodes, ptr @dev_attr_dbg_level, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_num_reg_rnodes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @csio_show_num_reg_rnodes, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"num_reg_rnodes\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@csio_scsis_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 763, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Trying to abort/close completed IO:%p!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_scsis_uninit\00", [46 x i8] zeroinitializer }, align 32
@csio_scsis_uninit._entry_ptr = internal global ptr @csio_scsis_uninit._entry, section ".printk_index", align 4
@csio_scsis_aborting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 925, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Abort completed before original I/O, req:%p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"csio_scsis_aborting\00", [44 x i8] zeroinitializer }, align 32
@csio_scsis_aborting._entry_ptr = internal global ptr @csio_scsis_aborting._entry, section ".printk_index", align 4
@csio_scsis_closing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 1015, ptr @.str.83, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Close completed before original I/O, req:%p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csio_scsis_closing\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@csio_scsis_closing._entry_ptr = internal global ptr @csio_scsis_closing._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@csio_scsi_alloc_ddp_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 2346, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to allocate ddp descriptors, Num allocated = %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"csio_scsi_alloc_ddp_bufs\00", [39 x i8] zeroinitializer }, align 32
@csio_scsi_alloc_ddp_bufs._entry_ptr = internal global ptr @csio_scsi_alloc_ddp_bufs._entry, section ".printk_index", align 4
@csio_scsi_alloc_ddp_bufs._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 2356, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SCSI response DMA buffer (ddp) allocation failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@csio_scsi_alloc_ddp_bufs._entry_ptr.89 = internal global ptr @csio_scsi_alloc_ddp_bufs._entry.87, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.96 = internal global [16 x i64] [i64 14, i64 16, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 255]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.99 = internal global [7 x i64] [i64 5, i64 16, i64 132, i64 133, i64 134, i64 135, i64 138]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.103 = internal global [9 x i64] [i64 7, i64 16, i64 0, i64 22, i64 132, i64 133, i64 134, i64 135, i64 138]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 7, i64 8]
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"csio_scsi_eqsize\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 56, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"csio_scsi_iqlen\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 57, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"csio_scsi_ioreqs\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 58, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"csio_delta_scan_tmo\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 60, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"csio_lun_qdepth\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 61, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1115, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1146, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2271, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2272, i32 16 }
@___asan_gen_.150 = private unnamed_addr constant [23 x i8] c"csio_fcoe_lport_groups\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [25 x i8] c"csio_fcoe_shost_template\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2269, i32 27 }
@___asan_gen_.156 = private unnamed_addr constant [23 x i8] c"csio_fcoe_vport_groups\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [31 x i8] c"csio_fcoe_shost_vport_template\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2288, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2429, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2437, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2450, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"csio_max_scan_tmo\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 59, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1817, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1827, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1866, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1534, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1629, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1638, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1710, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1974, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1993, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1999, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2083, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2103, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2114, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2155, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2169, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2182, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2201, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2213, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [22 x i8] c"csio_fcoe_lport_group\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1471, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant [22 x i8] c"csio_fcoe_lport_attrs\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1463, i32 26 }
@___asan_gen_.321 = private unnamed_addr constant [18 x i8] c"dev_attr_hw_state\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [22 x i8] c"dev_attr_device_reset\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [22 x i8] c"dev_attr_disable_port\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [19 x i8] c"dev_attr_dbg_level\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1457, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1369, i32 35 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1371, i32 35 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1458, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1459, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1460, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1433, i32 34 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1448, i32 18 }
@___asan_gen_.357 = private unnamed_addr constant [22 x i8] c"csio_fcoe_vport_group\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1490, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant [22 x i8] c"csio_fcoe_vport_attrs\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1484, i32 26 }
@___asan_gen_.363 = private unnamed_addr constant [24 x i8] c"dev_attr_num_reg_rnodes\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1482, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1479, i32 34 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 763, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 923, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1013, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 87, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2343, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.421 = private constant [37 x i8] c"../drivers/scsi/csiostor/csio_scsi.c\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2354, i32 4 }
@llvm.compiler.used = appending global [133 x ptr] [ptr @csio_eh_abort_handler._entry, ptr @csio_eh_abort_handler._entry.37, ptr @csio_eh_abort_handler._entry.41, ptr @csio_eh_abort_handler._entry_ptr, ptr @csio_eh_abort_handler._entry_ptr.40, ptr @csio_eh_abort_handler._entry_ptr.43, ptr @csio_eh_lun_reset_handler._entry, ptr @csio_eh_lun_reset_handler._entry.46, ptr @csio_eh_lun_reset_handler._entry.49, ptr @csio_eh_lun_reset_handler._entry.52, ptr @csio_eh_lun_reset_handler._entry.55, ptr @csio_eh_lun_reset_handler._entry.58, ptr @csio_eh_lun_reset_handler._entry.61, ptr @csio_eh_lun_reset_handler._entry.64, ptr @csio_eh_lun_reset_handler._entry_ptr, ptr @csio_eh_lun_reset_handler._entry_ptr.48, ptr @csio_eh_lun_reset_handler._entry_ptr.51, ptr @csio_eh_lun_reset_handler._entry_ptr.54, ptr @csio_eh_lun_reset_handler._entry_ptr.57, ptr @csio_eh_lun_reset_handler._entry_ptr.60, ptr @csio_eh_lun_reset_handler._entry_ptr.63, ptr @csio_eh_lun_reset_handler._entry_ptr.66, ptr @csio_queuecommand._entry, ptr @csio_queuecommand._entry.19, ptr @csio_queuecommand._entry.22, ptr @csio_queuecommand._entry_ptr, ptr @csio_queuecommand._entry_ptr.21, ptr @csio_queuecommand._entry_ptr.24, ptr @csio_scsi_alloc_ddp_bufs._entry, ptr @csio_scsi_alloc_ddp_bufs._entry.87, ptr @csio_scsi_alloc_ddp_bufs._entry_ptr, ptr @csio_scsi_alloc_ddp_bufs._entry_ptr.89, ptr @csio_scsi_cmpl_handler._entry, ptr @csio_scsi_cmpl_handler._entry.5, ptr @csio_scsi_cmpl_handler._entry_ptr, ptr @csio_scsi_cmpl_handler._entry_ptr.7, ptr @csio_scsi_copy_to_sgl._entry, ptr @csio_scsi_copy_to_sgl._entry_ptr, ptr @csio_scsi_err_handler._entry, ptr @csio_scsi_err_handler._entry.29, ptr @csio_scsi_err_handler._entry.32, ptr @csio_scsi_err_handler._entry_ptr, ptr @csio_scsi_err_handler._entry_ptr.31, ptr @csio_scsi_err_handler._entry_ptr.34, ptr @csio_scsim_init._entry, ptr @csio_scsim_init._entry.14, ptr @csio_scsim_init._entry_ptr, ptr @csio_scsim_init._entry_ptr.16, ptr @csio_scsis_aborting._entry, ptr @csio_scsis_aborting._entry_ptr, ptr @csio_scsis_closing._entry, ptr @csio_scsis_closing._entry_ptr, ptr @csio_scsis_uninit._entry, ptr @csio_scsis_uninit._entry_ptr, ptr @csio_scsi_eqsize, ptr @csio_scsi_iqlen, ptr @csio_scsi_ioreqs, ptr @csio_delta_scan_tmo, ptr @csio_lun_qdepth, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @csio_fcoe_lport_groups, ptr @csio_fcoe_shost_template, ptr @csio_fcoe_vport_groups, ptr @csio_fcoe_shost_vport_template, ptr @csio_scsim_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @csio_max_scan_tmo, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @csio_fcoe_lport_group, ptr @csio_fcoe_lport_attrs, ptr @dev_attr_hw_state, ptr @dev_attr_device_reset, ptr @dev_attr_disable_port, ptr @dev_attr_dbg_level, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @csio_fcoe_vport_group, ptr @csio_fcoe_vport_attrs, ptr @dev_attr_num_reg_rnodes, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @init_completion.__key, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_eqsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_iqlen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_ioreqs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_delta_scan_tmo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_lun_qdepth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_cmpl_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_cmpl_handler._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_lport_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_shost_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_vport_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_shost_vport_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsim_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsim_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsim_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_max_scan_tmo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_queuecommand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_queuecommand._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_queuecommand._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_copy_to_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_err_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_err_handler._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_err_handler._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_abort_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_abort_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_abort_handler._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_lun_reset_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_lun_reset_handler._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_lun_reset_handler._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_lun_reset_handler._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_lun_reset_handler._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_lun_reset_handler._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_lun_reset_handler._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_eh_lun_reset_handler._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_lport_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_lport_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disable_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dbg_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_vport_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_vport_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_num_reg_rnodes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsis_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsis_aborting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsis_closing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_alloc_ddp_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_scsi_alloc_ddp_bufs._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @csio_scsi_cmpl_handler(ptr nocapture noundef %hw, ptr noundef %wr, i32 noundef %len, ptr nocapture noundef readnone %flb, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %scsiwr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wr to i32
  %add = add i32 %0, 8
  %1 = inttoptr i32 %add to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %3)
  %cmp.not = icmp eq i8 %3, -32
  br i1 %cmp.not, label %if.end, label %do.end, !prof !198

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %3 to i32
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv) #15
  %n_inval_cplop = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 32
  %6 = ptrtoint ptr %n_inval_cplop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_inval_cplop, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %n_inval_cplop, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cpl_fw6_msg, ptr %1, i32 0, i32 4
  %lo = getelementptr inbounds %struct.fw_cmd_hdr, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lo, align 4
  %shr = lshr i32 %9, 8
  %10 = ptrtoint ptr %scsiwr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data, ptr %scsiwr, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %.off = add i8 %12, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then21, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %12)
  %cmp26 = icmp eq i8 %12, 52
  br i1 %cmp26, label %if.then28, label %do.end36

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cookie = getelementptr inbounds %struct.cpl_fw6_msg, ptr %1, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cookie, align 8
  %conv22 = trunc i64 %14 to i32
  %15 = inttoptr i32 %conv22 to ptr
  %16 = trunc i32 %shr to i16
  %conv23 = and i16 %16, 255
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %wr_status to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv23, ptr %wr_status, align 4
  br label %cleanup

if.then28:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %cookie29 = getelementptr inbounds %struct.cpl_fw6_msg, ptr %1, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %cookie29 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cookie29, align 8
  %conv30 = trunc i64 %19 to i32
  %20 = inttoptr i32 %conv30 to ptr
  %21 = trunc i32 %shr to i16
  %conv31 = and i16 %21, 255
  %wr_status32 = getelementptr inbounds %struct.csio_ioreq, ptr %20, i32 0, i32 7
  %22 = ptrtoint ptr %wr_status32 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv31, ptr %wr_status32, align 4
  br label %cleanup

do.end36:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %conv25 = zext i8 %12 to i32
  %pdev37 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %23 = ptrtoint ptr %pdev37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev37, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev38, ptr noundef nonnull @.str.6, i32 noundef %conv25) #15
  %n_inval_scsiop = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 33
  %25 = ptrtoint ptr %n_inval_scsiop to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_inval_scsiop, align 8
  %inc41 = add i32 %26, 1
  store i32 %inc41, ptr %n_inval_scsiop, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.then28, %if.then21, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %15, %if.then21 ], [ %20, %if.then28 ], [ null, %do.end36 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_scsi_cleanup_io_q(ptr noundef %scm, ptr noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scm, align 8
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %cmp.i.not23 = icmp eq ptr %3, %q
  br i1 %cmp.i.not23, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  %freelist_lock = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 4
  %ioreq_freelist.i = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 6
  %prev.i.i21 = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 6, i32 1
  %n_free_ioreq.i = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 8, i32 29
  br label %for.body

for.body:                                         ; preds = %csio_put_scsi_ioreq.exit.for.body_crit_edge, %for.body.lr.ph
  %tmp.024 = phi ptr [ %3, %for.body.lr.ph ], [ %next.025, %csio_put_scsi_ioreq.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %tmp.024 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.025 = load ptr, ptr %tmp.024, align 4
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.024, i32 0, i32 1
  %5 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sm_state.i.i, align 4
  tail call void %6(ptr noundef %tmp.024, i32 noundef 8) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.024) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.024, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %tmp.024 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tmp.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %tmp.024 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %tmp.024, ptr %tmp.024, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %tmp.024, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tmp.024, ptr %prev.i3.i, align 4
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.024, i32 0, i32 12
  %15 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scratch1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %cmp.not = icmp eq ptr %16, null
  br i1 %cmp.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %io_cbfn = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.024, i32 0, i32 11
  %17 = ptrtoint ptr %io_cbfn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_cbfn, align 64
  tail call void %18(ptr noundef %1, ptr noundef %tmp.024) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %freelist_lock) #12
  %19 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i21, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tmp.024, ptr noundef %20, ptr noundef %ioreq_freelist.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.csio_put_scsi_ioreq.exit_crit_edge

if.end.csio_put_scsi_ioreq.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_put_scsi_ioreq.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tmp.024, ptr %prev.i.i21, align 4
  %22 = ptrtoint ptr %tmp.024 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ioreq_freelist.i, ptr %tmp.024, align 4
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev.i3.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %tmp.024, ptr %20, align 4
  br label %csio_put_scsi_ioreq.exit

csio_put_scsi_ioreq.exit:                         ; preds = %if.end.i.i.i, %if.end.csio_put_scsi_ioreq.exit_crit_edge
  %25 = ptrtoint ptr %n_free_ioreq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_free_ioreq.i, align 8
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %n_free_ioreq.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %freelist_lock) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %cmp.i.not = icmp eq ptr %next.025, %q
  br i1 %cmp.i.not, label %csio_put_scsi_ioreq.exit.for.end_crit_edge, label %csio_put_scsi_ioreq.exit.for.body_crit_edge

csio_put_scsi_ioreq.exit.for.body_crit_edge:      ; preds = %csio_put_scsi_ioreq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

csio_put_scsi_ioreq.exit.for.end_crit_edge:       ; preds = %csio_put_scsi_ioreq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %csio_put_scsi_ioreq.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_scsim_cleanup_io(ptr noundef %scm, i1 noundef zeroext %abort) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scm, align 8
  %active_q = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 5
  %2 = ptrtoint ptr %active_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active_q, align 4
  %cmp.i.not = icmp eq ptr %3, %active_q
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %active_q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %active_q, align 4
  %cmp.i3236 = icmp eq ptr %5, %active_q
  br i1 %cmp.i3236, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %count.037 = phi i32 [ 30, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %count.037, -1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call void @msleep(i32 noundef 2000) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %6 = ptrtoint ptr %active_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %active_q, align 4
  %cmp.i32 = icmp eq ptr %7, %active_q
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp.i32, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %8 = ptrtoint ptr %active_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %active_q, align 4
  %cmp.i34.not = icmp eq ptr %9, %active_q
  br i1 %cmp.i34.not, label %while.end.cleanup_crit_edge, label %if.end11

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %while.end
  br i1 %abort, label %if.then13, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %call15 = tail call fastcc i32 @csio_scsi_abort_io_q(ptr noundef %scm, ptr noundef %active_q)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %if.then13.cleanup_crit_edge, label %if.then13.if.end18_crit_edge

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %rv.0 = phi i32 [ %call15, %if.then13.if.end18_crit_edge ], [ 0, %if.end11.if.end18_crit_edge ]
  tail call void @csio_scsi_cleanup_io_q(ptr noundef %scm, ptr noundef %active_q)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then13.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_scsi_abort_io_q(ptr nocapture noundef readonly %scm, ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scm, align 8
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %q, align 4
  %cmp.i.not = icmp eq ptr %3, %q
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %csio_abrt_cls.exit
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %q, align 4
  %cmp.i311 = icmp eq ptr %5, %q
  br i1 %cmp.i311, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  br label %while.body

if.end.i:                                         ; preds = %csio_abrt_cls.exit.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %tmp.09 = phi ptr [ %next.010, %csio_abrt_cls.exit.if.end.i_crit_edge ], [ %3, %entry.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %tmp.09 to i32
  call void @__asan_load4_noabort(i32 %6)
  %next.010 = load ptr, ptr %tmp.09, align 4
  %lnode.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.09, i32 0, i32 9
  %7 = ptrtoint ptr %lnode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lnode.i, align 8
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwp.i, align 4
  %call.i = tail call i32 @csio_is_lnode_ready(ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %11 = tail call i32 @llvm.read_register.i32(metadata !188) #12
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu1.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu1.i.i, align 4
  %15 = ptrtoint ptr %lnode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lnode.i, align 8
  %portid.i.i = getelementptr inbounds %struct.csio_lnode, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %portid.i.i, align 8
  %idxprom.i.i = zext i8 %18 to i32
  %tmo.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.09, i32 0, i32 4
  %19 = ptrtoint ptr %tmo.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 60000, ptr %tmo.i.i, align 8
  %eq_idx.i.i = getelementptr %struct.csio_hw, ptr %10, i32 0, i32 8, i32 %idxprom.i.i, i32 %14, i32 1
  %20 = ptrtoint ptr %eq_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eq_idx.i.i, align 4
  %eq_idx4.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.09, i32 0, i32 2
  %22 = ptrtoint ptr %eq_idx4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %eq_idx4.i.i, align 16
  %sm_state.i.i12.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.09, i32 0, i32 1
  %23 = ptrtoint ptr %sm_state.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sm_state.i.i12.i.i, align 4
  %..i.i = select i1 %tobool.not.i, i32 6, i32 4
  tail call void %24(ptr noundef %tmp.09, i32 noundef %..i.i) #12
  %rv.0.in.in.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.09, i32 0, i32 8
  %25 = ptrtoint ptr %rv.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %rv.0.in.i.i = load i16, ptr %rv.0.in.in.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rv.0.in.i.i)
  %cmp4.not.i = icmp eq i16 %rv.0.in.i.i, 0
  br i1 %cmp4.not.i, label %if.end.i.csio_abrt_cls.exit_crit_edge, label %if.then5.i

if.end.i.csio_abrt_cls.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_abrt_cls.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %n_abrt_busy_error.i = getelementptr inbounds %struct.csio_hw, ptr %10, i32 0, i32 2, i32 8, i32 23
  %n_cls_busy_error.i = getelementptr inbounds %struct.csio_hw, ptr %10, i32 0, i32 2, i32 8, i32 25
  %n_abrt_busy_error.i.sink13 = select i1 %tobool.not.i, ptr %n_cls_busy_error.i, ptr %n_abrt_busy_error.i
  %26 = ptrtoint ptr %n_abrt_busy_error.i.sink13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_abrt_busy_error.i.sink13, align 8
  %inc9.i = add i32 %27, 1
  store i32 %inc9.i, ptr %n_abrt_busy_error.i.sink13, align 8
  br label %csio_abrt_cls.exit

csio_abrt_cls.exit:                               ; preds = %if.then5.i, %if.end.i.csio_abrt_cls.exit_crit_edge
  %cmp.i1.not = icmp eq ptr %next.010, %q
  br i1 %cmp.i1.not, label %while.cond.preheader, label %csio_abrt_cls.exit.if.end.i_crit_edge

csio_abrt_cls.exit.if.end.i_crit_edge:            ; preds = %csio_abrt_cls.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %count.012 = phi i32 [ 15, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %count.012, -1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call void @msleep(i32 noundef 2000) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %28 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %q, align 4
  %cmp.i3 = icmp eq ptr %29, %q
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool9.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp.i3, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %30 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %q, align 4
  %cmp.i5.not = icmp eq ptr %31, %q
  %. = select i1 %cmp.i5.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_scsim_cleanup_io_lnode(ptr noundef %scm, ptr noundef %ln) local_unnamed_addr #0 align 64 {
entry:
  %sld = alloca %struct.csio_scsi_level_data, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scm, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sld) #12
  %2 = call ptr @memset(ptr %sld, i32 255, i32 24)
  %3 = ptrtoint ptr %sld to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %sld, align 8
  %lnode = getelementptr inbounds %struct.csio_scsi_level_data, ptr %sld, i32 0, i32 2
  %4 = ptrtoint ptr %lnode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ln, ptr %lnode, align 8
  %cmpl_q = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 21
  %5 = ptrtoint ptr %cmpl_q to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %cmpl_q, ptr %cmpl_q, align 4
  %prev.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cmpl_q, ptr %prev.i, align 4
  call fastcc void @csio_scsi_gather_active_ios(ptr noundef %scm, ptr noundef nonnull %sld, ptr noundef %cmpl_q)
  %7 = ptrtoint ptr %cmpl_q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %cmpl_q, align 4
  %cmp.i.not = icmp eq ptr %8, %cmpl_q
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %9 = ptrtoint ptr %cmpl_q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %cmpl_q, align 4
  %cmp.i3438 = icmp eq ptr %10, %cmpl_q
  br i1 %cmp.i3438, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %count.039 = phi i32 [ 30, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %count.039, -1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call void @msleep(i32 noundef 2000) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %11 = ptrtoint ptr %cmpl_q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %cmpl_q, align 4
  %cmp.i34 = icmp eq ptr %12, %cmpl_q
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool7.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp.i34, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %13 = ptrtoint ptr %cmpl_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %cmpl_q, align 4
  %cmp.i36.not = icmp eq ptr %14, %cmpl_q
  br i1 %cmp.i36.not, label %while.end.cleanup_crit_edge, label %if.end13

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %while.end
  %call15 = tail call fastcc i32 @csio_scsi_abort_io_q(ptr noundef %scm, ptr noundef %cmpl_q)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp.not = icmp eq i32 %call15, 0
  br i1 %cmp.not, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @csio_scsi_cleanup_io_q(ptr noundef %scm, ptr noundef %cmpl_q)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end13.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ %call15, %if.then16 ], [ 0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sld) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_scsi_gather_active_ios(ptr noundef %scm, ptr nocapture noundef readonly %sld, ptr noundef %dest) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_q = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 5
  %0 = ptrtoint ptr %active_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active_q, align 4
  %cmp.i.not = icmp eq ptr %1, %active_q
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sld, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then1, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %lnode17.i = getelementptr inbounds %struct.csio_scsi_level_data, ptr %sld, i32 0, i32 2
  %rnode12.i = getelementptr inbounds %struct.csio_scsi_level_data, ptr %sld, i32 0, i32 1
  %oslun.i = getelementptr inbounds %struct.csio_scsi_level_data, ptr %sld, i32 0, i32 3
  %prev.i28 = getelementptr inbounds %struct.list_head, ptr %dest, i32 0, i32 1
  br label %for.body

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %active_q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %active_q, align 4
  %cmp.i.not.i = icmp eq ptr %5, %active_q
  br i1 %cmp.i.not.i, label %if.then1.cleanup_crit_edge, label %if.then.i

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dest, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %7, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dest, ptr %9, align 4
  store ptr %9, ptr %prev.i, align 4
  %13 = ptrtoint ptr %active_q to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %active_q, ptr %active_q, align 4
  store ptr %active_q, ptr %prev2.i.i, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.037 = phi ptr [ %1, %for.body.lr.ph ], [ %next.038, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %tmp.037 to i32
  call void @__asan_load4_noabort(i32 %14)
  %next.038 = load ptr, ptr %tmp.037, align 4
  %scratch1.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.037, i32 0, i32 12
  %15 = ptrtoint ptr %scratch1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scratch1.i, align 4
  %17 = ptrtoint ptr %sld to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sld, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %for.body.for.inc_crit_edge [
    i32 4, label %sw.bb.i
    i32 3, label %sw.bb6.i
    i32 2, label %sw.bb15.i
    i32 1, label %for.body.if.then11_crit_edge
  ]

for.body.if.then11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

sw.bb.i:                                          ; preds = %for.body
  %cmp.i27 = icmp eq ptr %16, null
  br i1 %cmp.i27, label %sw.bb.i.for.inc_crit_edge, label %if.end.i

sw.bb.i.for.inc_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i:                                         ; preds = %sw.bb.i
  %lnode.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.037, i32 0, i32 9
  %20 = ptrtoint ptr %lnode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lnode.i, align 8
  %22 = ptrtoint ptr %lnode17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lnode17.i, align 8
  %cmp2.i = icmp eq ptr %21, %23
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end.i
  %rnode.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.037, i32 0, i32 10
  %24 = ptrtoint ptr %rnode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rnode.i, align 4
  %26 = ptrtoint ptr %rnode12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rnode12.i, align 4
  %cmp4.i = icmp eq ptr %25, %27
  br i1 %cmp4.i, label %land.rhs.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 1
  %28 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 18
  %30 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lun.i, align 8
  %32 = ptrtoint ptr %oslun.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %oslun.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp5.i = icmp eq i64 %31, %33
  br i1 %cmp5.i, label %land.rhs.i.if.then11_crit_edge, label %land.rhs.i.for.inc_crit_edge

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.rhs.i.if.then11_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

sw.bb6.i:                                         ; preds = %for.body
  %lnode7.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.037, i32 0, i32 9
  %34 = ptrtoint ptr %lnode7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lnode7.i, align 8
  %36 = ptrtoint ptr %lnode17.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lnode17.i, align 8
  %cmp9.i = icmp eq ptr %35, %37
  br i1 %cmp9.i, label %csio_scsi_match_io.exit, label %sw.bb6.i.for.inc_crit_edge

sw.bb6.i.for.inc_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

sw.bb15.i:                                        ; preds = %for.body
  %lnode16.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.037, i32 0, i32 9
  %38 = ptrtoint ptr %lnode16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lnode16.i, align 8
  %40 = ptrtoint ptr %lnode17.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lnode17.i, align 8
  %cmp18.i = icmp eq ptr %39, %41
  br i1 %cmp18.i, label %sw.bb15.i.if.then11_crit_edge, label %sw.bb15.i.for.inc_crit_edge

sw.bb15.i.for.inc_crit_edge:                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

sw.bb15.i.if.then11_crit_edge:                    ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

csio_scsi_match_io.exit:                          ; preds = %sw.bb6.i
  %rnode11.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.037, i32 0, i32 10
  %42 = ptrtoint ptr %rnode11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rnode11.i, align 4
  %44 = ptrtoint ptr %rnode12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rnode12.i, align 4
  %cmp13.i = icmp eq ptr %43, %45
  br i1 %cmp13.i, label %csio_scsi_match_io.exit.if.then11_crit_edge, label %csio_scsi_match_io.exit.for.inc_crit_edge

csio_scsi_match_io.exit.for.inc_crit_edge:        ; preds = %csio_scsi_match_io.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

csio_scsi_match_io.exit.if.then11_crit_edge:      ; preds = %csio_scsi_match_io.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then11:                                        ; preds = %csio_scsi_match_io.exit.if.then11_crit_edge, %sw.bb15.i.if.then11_crit_edge, %land.rhs.i.if.then11_crit_edge, %for.body.if.then11_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.037) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del_init.exit_crit_edge

if.then11.list_del_init.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.037, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %tmp.037 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tmp.037, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then11.list_del_init.exit_crit_edge
  %52 = ptrtoint ptr %tmp.037 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %tmp.037, ptr %tmp.037, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %tmp.037, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %tmp.037, ptr %prev.i3.i, align 4
  %54 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i28, align 4
  %call.i.i29 = tail call zeroext i1 @__list_add_valid(ptr noundef %tmp.037, ptr noundef %55, ptr noundef %dest) #12
  br i1 %call.i.i29, label %if.end.i.i31, label %list_del_init.exit.for.inc_crit_edge

list_del_init.exit.for.inc_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i31:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %tmp.037, ptr %prev.i28, align 4
  %57 = ptrtoint ptr %tmp.037 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dest, ptr %tmp.037, align 4
  %58 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev.i3.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %tmp.037, ptr %55, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i31, %list_del_init.exit.for.inc_crit_edge, %csio_scsi_match_io.exit.for.inc_crit_edge, %sw.bb15.i.for.inc_crit_edge, %sw.bb6.i.for.inc_crit_edge, %land.rhs.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %sw.bb.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.i25.not = icmp eq ptr %next.038, %active_q
  br i1 %cmp.i25.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.i, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_queuecommand(ptr noundef %host, ptr noundef %cmnd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 55, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %7, i32 136
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call5 = tail call i32 @scsi_is_fc_rport(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %parent.i192 = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 55, i32 1
  %12 = ptrtoint ptr %parent.i192 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i192, align 8
  %parent9 = getelementptr i8, ptr %13, i32 136
  %14 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent9, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 -240
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %portid = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 2
  %16 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %portid, align 8
  %idxprom = zext i8 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %cmnd, i32 -192
  %call12 = tail call i32 @blk_mq_rq_cpu(ptr noundef %add.ptr.i.i) #12
  %arrayidx13 = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 8, i32 %idxprom, i32 %call12
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 8
  %18 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_state.i, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %19, label %cond.end.if.then_crit_edge [
    i32 2, label %cond.end.sw.bb.i_crit_edge
    i32 11, label %cond.end.sw.bb.i_crit_edge207
    i32 4, label %sw.bb6.i
  ]

cond.end.sw.bb.i_crit_edge207:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

cond.end.sw.bb.i_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.bb.i:                                          ; preds = %cond.end.sw.bb.i_crit_edge, %cond.end.sw.bb.i_crit_edge207
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 7
  %21 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 8
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not.i = icmp eq i8 %25, 0
  %..i = select i1 %tobool2.not.i, i32 65536, i32 786432
  br label %if.then

sw.bb6.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags7.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %26 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags7.i, align 8
  %28 = and i8 %27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool10.not.i = icmp eq i8 %28, 0
  %.17.i = select i1 %tobool10.not.i, i32 786432, i32 983040
  br label %if.then

if.then:                                          ; preds = %sw.bb6.i, %if.else.i, %cond.end.if.then_crit_edge
  %result.0.i.ph = phi i32 [ 65536, %cond.end.if.then_crit_edge ], [ %.17.i, %sw.bb6.i ], [ %..i, %if.else.i ]
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 24
  %29 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %result.0.i.ph, ptr %result, align 4
  %n_rn_nr_error = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 8, i32 1
  %30 = ptrtoint ptr %n_rn_nr_error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_rn_nr_error, align 8
  %inc = add i32 %31, 1
  store i32 %inc, ptr %n_rn_nr_error, align 8
  br label %err_done

if.end:                                           ; preds = %sw.bb.i
  %call16 = tail call i32 @csio_is_hw_ready(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then21, label %if.end25, !prof !199

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %result22 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 24
  %32 = ptrtoint ptr %result22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 851968, ptr %result22, align 4
  %n_hw_nr_error = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 8, i32 2
  %33 = ptrtoint ptr %n_hw_nr_error to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_hw_nr_error, align 4
  %inc24 = add i32 %34, 1
  store i32 %inc24, ptr %n_hw_nr_error, align 4
  br label %err_done

if.end25:                                         ; preds = %if.end
  %call26 = tail call i32 @scsi_dma_map(ptr noundef %cmnd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.then33, label %if.end36, !prof !199

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %n_dmamap_error = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 8, i32 3
  %35 = ptrtoint ptr %n_dmamap_error to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_dmamap_error, align 8
  %inc35 = add i32 %36, 1
  store i32 %inc35, ptr %n_dmamap_error, align 8
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %max_sge = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %max_sge to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_sge, align 4
  %conv = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %conv)
  %cmp37 = icmp ugt i32 %call26, %conv
  br i1 %cmp37, label %err_dma_unmap.thread, label %if.end51, !prof !199

err_dma_unmap.thread:                             ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev46, ptr noundef nonnull @.str.17, i32 noundef %call26, i32 noundef %conv) #15
  %n_unsupp_sge_error = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 8, i32 4
  %41 = ptrtoint ptr %n_unsupp_sge_error to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_unsupp_sge_error, align 4
  %inc50 = add i32 %42, 1
  store i32 %inc50, ptr %n_unsupp_sge_error, align 4
  br label %if.then115

if.end51:                                         ; preds = %if.end36
  %freelist_lock.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %freelist_lock.i) #12
  %ioreq_freelist.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 6
  %43 = ptrtoint ptr %ioreq_freelist.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %ioreq_freelist.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %44, %ioreq_freelist.i.i
  br i1 %cmp.i.not.i.i, label %csio_get_scsi_ioreq_lock.exit.thread, label %if.then.i.i, !prof !199

csio_get_scsi_ioreq_lock.exit.thread:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %freelist_lock.i, i32 noundef %call2.i) #12
  br label %do.end57

if.then.i.i:                                      ; preds = %if.end51
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.csio_get_scsi_ioreq_lock.exit_crit_edge

if.then.i.i.csio_get_scsi_ioreq_lock.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_get_scsi_ioreq_lock.exit

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %csio_get_scsi_ioreq_lock.exit

csio_get_scsi_ioreq_lock.exit:                    ; preds = %if.end.i.i.i.i, %if.then.i.i.csio_get_scsi_ioreq_lock.exit_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %44, ptr %44, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %44, ptr %prev.i3.i.i.i, align 4
  %n_free_ioreq.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 8, i32 29
  %53 = ptrtoint ptr %n_free_ioreq.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_free_ioreq.i.i, align 8
  %dec.i.i = add i32 %54, -1
  store i32 %dec.i.i, ptr %n_free_ioreq.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %freelist_lock.i, i32 noundef %call2.i) #12
  %tobool53.not = icmp eq ptr %44, null
  br i1 %tobool53.not, label %csio_get_scsi_ioreq_lock.exit.do.end57_crit_edge, label %if.end63

csio_get_scsi_ioreq_lock.exit.do.end57_crit_edge: ; preds = %csio_get_scsi_ioreq_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

do.end57:                                         ; preds = %csio_get_scsi_ioreq_lock.exit.do.end57_crit_edge, %csio_get_scsi_ioreq_lock.exit.thread
  %pdev58 = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev58, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %n_active = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 8, i32 26
  %57 = ptrtoint ptr %n_active to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_active, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.20, i32 noundef %58) #15
  %n_no_req_error = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 8, i32 5
  %59 = ptrtoint ptr %n_no_req_error to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %n_no_req_error, align 8
  %inc62 = add i32 %60, 1
  store i32 %inc62, ptr %n_no_req_error, align 8
  br label %err_dma_unmap

if.end63:                                         ; preds = %csio_get_scsi_ioreq_lock.exit
  %nsge64 = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 3
  %61 = ptrtoint ptr %nsge64 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call26, ptr %nsge64, align 4
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 9
  %62 = ptrtoint ptr %lnode to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %hostdata.i, ptr %lnode, align 8
  %rnode = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 10
  %63 = ptrtoint ptr %rnode to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %5, ptr %rnode, align 4
  %64 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx13, align 4
  %iq_idx65 = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 1
  %66 = ptrtoint ptr %iq_idx65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %iq_idx65, align 4
  %eq_idx = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 8, i32 %idxprom, i32 %call12, i32 1
  %67 = ptrtoint ptr %eq_idx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %eq_idx, align 4
  %eq_idx66 = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 2
  %69 = ptrtoint ptr %eq_idx66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %eq_idx66, align 16
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 7
  %70 = ptrtoint ptr %wr_status to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %wr_status, align 4
  %drv_status = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 8
  %71 = ptrtoint ptr %drv_status to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %drv_status, align 2
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 12
  %72 = ptrtoint ptr %scratch1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %cmnd, ptr %scratch1, align 4
  %tmo = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 4
  %73 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %tmo, align 8
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 15
  %74 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sc_data_direction, align 4
  %datadir = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 5
  %76 = ptrtoint ptr %datadir to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %datadir, align 4
  %77 = load i32, ptr %sc_data_direction, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %77, label %if.else84 [
    i32 1, label %if.then70
    i32 2, label %if.then78
  ]

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %n_output_requests = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 49, i32 0, i32 7, i32 1, i32 2
  %79 = ptrtoint ptr %n_output_requests to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %n_output_requests, align 8
  %inc72 = add i32 %80, 1
  store i32 %inc72, ptr %n_output_requests, align 8
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 17, i32 1
  %81 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %length.i, align 4
  %n_output_bytes = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1
  %83 = ptrtoint ptr %n_output_bytes to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %n_output_bytes, align 4
  %add = add i32 %84, %82
  store i32 %add, ptr %n_output_bytes, align 4
  br label %if.end88

if.then78:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %n_input_requests = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 49, i32 0, i32 7, i32 1, i32 1
  %85 = ptrtoint ptr %n_input_requests to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %n_input_requests, align 4
  %inc80 = add i32 %86, 1
  store i32 %inc80, ptr %n_input_requests, align 4
  %length.i194 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 17, i32 1
  %87 = ptrtoint ptr %length.i194 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length.i194, align 4
  %n_input_bytes = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4
  %89 = ptrtoint ptr %n_input_bytes to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %n_input_bytes, align 8
  %add83 = add i32 %90, %88
  store i32 %add83, ptr %n_input_bytes, align 8
  br label %if.end88

if.else84:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %n_control_requests = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 49, i32 0, i32 7, i32 1, i32 3
  %91 = ptrtoint ptr %n_control_requests to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %n_control_requests, align 4
  %inc86 = add i32 %92, 1
  store i32 %inc86, ptr %n_control_requests, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.else84, %if.then78, %if.then70
  %io_cbfn = getelementptr inbounds %struct.csio_ioreq, ptr %44, i32 0, i32 11
  %93 = ptrtoint ptr %io_cbfn to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @csio_scsi_cbfn, ptr %io_cbfn, align 64
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 23
  %94 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %44, ptr %host_scribble, align 4
  %Message = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 6
  %95 = ptrtoint ptr %Message to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 0, ptr %Message, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  %call95 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %44, i32 0, i32 1
  %96 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sm_state.i.i, align 4
  tail call void %97(ptr noundef nonnull %44, i32 noundef 1) #12
  %98 = ptrtoint ptr %drv_status to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %drv_status, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call95) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp102.not = icmp eq i16 %99, 0
  br i1 %cmp102.not, label %if.end88.cleanup_crit_edge, label %do.end107

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end107:                                        ; preds = %if.end88
  %conv.i = sext i16 %99 to i32
  %pdev108 = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %pdev108 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev108, align 8
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev109, ptr noundef nonnull @.str.23, ptr noundef nonnull %44, i32 noundef %conv.i) #15
  %n_busy_error = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 8, i32 6
  %102 = ptrtoint ptr %n_busy_error to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %n_busy_error, align 4
  %inc111 = add i32 %103, 1
  store i32 %inc111, ptr %n_busy_error, align 4
  %call2.i196 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %freelist_lock.i) #12
  %prev.i.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 6, i32 1
  %104 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i198 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %44, ptr noundef %105, ptr noundef %ioreq_freelist.i.i) #12
  br i1 %call.i.i.i.i198, label %if.end.i.i.i.i199, label %do.end107.csio_put_scsi_ioreq_lock.exit_crit_edge

do.end107.csio_put_scsi_ioreq_lock.exit_crit_edge: ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_put_scsi_ioreq_lock.exit

if.end.i.i.i.i199:                                ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %44, ptr %prev.i.i.i, align 4
  %107 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %ioreq_freelist.i.i, ptr %44, align 4
  %108 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev.i3.i.i.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %44, ptr %105, align 4
  br label %csio_put_scsi_ioreq_lock.exit

csio_put_scsi_ioreq_lock.exit:                    ; preds = %if.end.i.i.i.i199, %do.end107.csio_put_scsi_ioreq_lock.exit_crit_edge
  %110 = ptrtoint ptr %n_free_ioreq.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %n_free_ioreq.i.i, align 8
  %inc.i.i = add i32 %111, 1
  store i32 %inc.i.i, ptr %n_free_ioreq.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %freelist_lock.i, i32 noundef %call2.i196) #12
  br label %err_dma_unmap

err_dma_unmap:                                    ; preds = %csio_put_scsi_ioreq_lock.exit, %do.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp113.not = icmp eq i32 %call26, 0
  br i1 %cmp113.not, label %err_dma_unmap.cleanup_crit_edge, label %err_dma_unmap.if.then115_crit_edge

err_dma_unmap.if.then115_crit_edge:               ; preds = %err_dma_unmap
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then115

err_dma_unmap.cleanup_crit_edge:                  ; preds = %err_dma_unmap
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then115:                                       ; preds = %err_dma_unmap.if.then115_crit_edge, %err_dma_unmap.thread
  tail call void @scsi_dma_unmap(ptr noundef %cmnd) #12
  br label %cleanup

err_done:                                         ; preds = %if.then21, %if.then
  tail call void @scsi_done(ptr noundef %cmnd) #12
  br label %cleanup

cleanup:                                          ; preds = %err_done, %if.then115, %err_dma_unmap.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.then33
  %retval.0 = phi i32 [ 0, %err_done ], [ 0, %if.end88.cleanup_crit_edge ], [ 4181, %err_dma_unmap.cleanup_crit_edge ], [ 4181, %if.then115 ], [ 4181, %if.then33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_eh_abort_handler(ptr noundef %cmnd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwp, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata, align 8
  %call3 = tail call i32 @fc_block_scsi_eh(ptr noundef %cmnd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 23
  %8 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_scribble, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scratch1, align 4
  %cmp.not = icmp eq ptr %11, %cmnd
  br i1 %cmp.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %n_abrt_race_comp = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 2, i32 8, i32 22
  %12 = ptrtoint ptr %n_abrt_race_comp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_abrt_race_comp, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %n_abrt_race_comp, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  %call12 = tail call i32 @csio_is_lnode_ready(ptr noundef %hostdata.i) #12
  %cmplobj = getelementptr inbounds %struct.csio_ioreq, ptr %9, i32 0, i32 19
  %14 = ptrtoint ptr %cmplobj to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cmplobj, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %15 = tail call i32 @llvm.read_register.i32(metadata !188) #12
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu1.i, align 4
  %lnode.i = getelementptr inbounds %struct.csio_ioreq, ptr %9, i32 0, i32 9
  %19 = ptrtoint ptr %lnode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lnode.i, align 8
  %portid.i = getelementptr inbounds %struct.csio_lnode, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %portid.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %portid.i, align 8
  %idxprom.i = zext i8 %22 to i32
  %tmo.i = getelementptr inbounds %struct.csio_ioreq, ptr %9, i32 0, i32 4
  %23 = ptrtoint ptr %tmo.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 60000, ptr %tmo.i, align 8
  %eq_idx.i = getelementptr %struct.csio_hw, ptr %5, i32 0, i32 8, i32 %idxprom.i, i32 %18, i32 1
  %24 = ptrtoint ptr %eq_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eq_idx.i, align 4
  %eq_idx4.i = getelementptr inbounds %struct.csio_ioreq, ptr %9, i32 0, i32 2
  %26 = ptrtoint ptr %eq_idx4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %eq_idx4.i, align 16
  %sm_state.i.i12.i = getelementptr inbounds %struct.csio_sm, ptr %9, i32 0, i32 1
  %27 = ptrtoint ptr %sm_state.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sm_state.i.i12.i, align 4
  %..i = select i1 %tobool13.not, i32 6, i32 4
  tail call void %28(ptr noundef nonnull %9, i32 noundef %..i) #12
  %rv.0.in.in.i = getelementptr inbounds %struct.csio_ioreq, ptr %9, i32 0, i32 8
  %29 = ptrtoint ptr %rv.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %rv.0.in.i = load i16, ptr %rv.0.in.in.i, align 2
  %rv.0.i = sext i16 %rv.0.in.i to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %30 = zext i32 %rv.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %rv.0.i, label %if.end21 [
    i32 0, label %if.end29
    i32 -22, label %if.end11.cleanup_crit_edge
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  br i1 %tobool13.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %n_abrt_busy_error = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 2, i32 8, i32 23
  br label %inval_scmnd

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %n_cls_busy_error = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 2, i32 8, i32 25
  br label %inval_scmnd

if.end29:                                         ; preds = %if.end11
  %call32 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmplobj, i32 noundef 6000) #12
  %31 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scratch1, align 4
  %cmp34 = icmp eq ptr %32, %cmnd
  br i1 %cmp34, label %do.end, label %if.end44

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull %9) #15
  %n_abrt_timedout = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 2, i32 8, i32 19
  br label %inval_scmnd

inval_scmnd:                                      ; preds = %do.end, %if.else, %if.then23
  %n_abrt_busy_error.sink115 = phi ptr [ %n_abrt_busy_error, %if.then23 ], [ %n_cls_busy_error, %if.else ], [ %n_abrt_timedout, %do.end ]
  %35 = ptrtoint ptr %n_abrt_busy_error.sink115 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_abrt_busy_error.sink115, align 8
  %inc25 = add i32 %36, 1
  store i32 %inc25, ptr %n_abrt_busy_error.sink115, align 8
  %nsge = getelementptr inbounds %struct.csio_ioreq, ptr %9, i32 0, i32 3
  %37 = ptrtoint ptr %nsge to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nsge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp38.not = icmp eq i32 %38, 0
  br i1 %cmp38.not, label %inval_scmnd.if.end40_crit_edge, label %if.then39

inval_scmnd.if.end40_crit_edge:                   ; preds = %inval_scmnd
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %inval_scmnd
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_dma_unmap(ptr noundef %cmnd) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %inval_scmnd.if.end40_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %39 = ptrtoint ptr %scratch1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %scratch1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 24
  %40 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 458752, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %cmnd) #12
  br label %cleanup

if.end44:                                         ; preds = %if.end29
  %result45 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 24
  %41 = ptrtoint ptr %result45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %result45, align 4
  %43 = and i32 %42, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 851968, i32 %43)
  %cmp46 = icmp eq i32 %43, 851968
  %pdev51 = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %44 = ptrtoint ptr %pdev51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev51, align 8
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 18
  %50 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %lun, align 8
  %tag = getelementptr i8, ptr %cmnd, i32 -172
  %52 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tag, align 4
  br i1 %cmp46, label %do.end50, label %do.end59

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev52, ptr noundef nonnull @.str.38, i32 noundef %49, i64 noundef %51, i32 noundef %53) #15
  br label %cleanup

do.end59:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev52, ptr noundef nonnull @.str.42, i32 noundef %49, i64 noundef %51, i32 noundef %53) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %do.end50, %if.end40, %if.end11.cleanup_crit_edge, %if.then10, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8194, %if.then10 ], [ 8195, %if.end40 ], [ 8194, %do.end50 ], [ 8195, %do.end59 ], [ %call3, %entry.cleanup_crit_edge ], [ 8194, %if.end.cleanup_crit_edge ], [ 8195, %if.end6.cleanup_crit_edge ], [ 8194, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_eh_lun_reset_handler(ptr noundef %cmnd) #0 align 64 {
entry:
  %local_q = alloca %struct.list_head, align 4
  %sld = alloca %struct.csio_scsi_level_data, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwp, align 4
  %scsim1 = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 2
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_q) #12
  %8 = getelementptr inbounds %struct.list_head, ptr %local_q, i32 0, i32 1
  %9 = ptrtoint ptr %local_q to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %local_q, ptr %local_q, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %local_q, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sld) #12
  %11 = getelementptr inbounds i8, ptr %sld, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %11, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end:                                           ; preds = %entry
  %call4 = call i32 @csio_is_lnode_ready(ptr noundef %hostdata.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %vnp_flowid = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 7
  %15 = ptrtoint ptr %vnp_flowid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vnp_flowid, align 4
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %lun, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %16, i64 noundef %20) #15
  br label %fail

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @fc_block_scsi_eh(ptr noundef %cmnd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %rport = getelementptr inbounds %struct.csio_rnode, ptr %7, i32 0, i32 11
  %21 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rport, align 4
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_state.i, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %24, label %if.end12.do.end18_crit_edge [
    i32 2, label %if.end12.sw.bb.i_crit_edge
    i32 11, label %if.end12.sw.bb.i_crit_edge229
  ]

if.end12.sw.bb.i_crit_edge229:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end12.sw.bb.i_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

sw.bb.i:                                          ; preds = %if.end12.sw.bb.i_crit_edge, %if.end12.sw.bb.i_crit_edge229
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %22, i32 0, i32 7
  %26 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.do.end18_crit_edge, label %if.end23

sw.bb.i.do.end18_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

do.end18:                                         ; preds = %sw.bb.i.do.end18_crit_edge, %if.end12.do.end18_crit_edge
  %pdev19 = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %28 = ptrtoint ptr %pdev19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev19, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %flowid = getelementptr inbounds %struct.csio_rnode, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %flowid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flowid, align 4
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %lun22 = getelementptr inbounds %struct.scsi_device, ptr %33, i32 0, i32 18
  %34 = ptrtoint ptr %lun22 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %lun22, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.47, i32 noundef %31, i64 noundef %35) #15
  br label %fail

if.end23:                                         ; preds = %sw.bb.i
  %call24 = call fastcc ptr @csio_get_scsi_ioreq_lock(ptr noundef %scsim1)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %pdev30 = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %36 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev30, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %n_active = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 2, i32 8, i32 26
  %38 = ptrtoint ptr %n_active to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_active, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.50, i32 noundef %39) #15
  br label %fail

if.end32:                                         ; preds = %if.end23
  %portid = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 2
  %40 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %portid, align 8
  %idxprom = zext i8 %41 to i32
  %42 = call i32 @llvm.read_register.i32(metadata !188) #12
  %and.i218 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i218 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu, align 4
  %arrayidx35 = getelementptr %struct.csio_hw, ptr %5, i32 0, i32 8, i32 %idxprom, i32 %45
  %nsge = getelementptr inbounds %struct.csio_ioreq, ptr %call24, i32 0, i32 3
  %46 = ptrtoint ptr %nsge to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %nsge, align 4
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %call24, i32 0, i32 9
  %47 = ptrtoint ptr %lnode to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %hostdata.i, ptr %lnode, align 8
  %rnode = getelementptr inbounds %struct.csio_ioreq, ptr %call24, i32 0, i32 10
  %48 = ptrtoint ptr %rnode to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %7, ptr %rnode, align 4
  %49 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx35, align 4
  %iq_idx36 = getelementptr inbounds %struct.csio_ioreq, ptr %call24, i32 0, i32 1
  %51 = ptrtoint ptr %iq_idx36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %iq_idx36, align 4
  %eq_idx = getelementptr %struct.csio_hw, ptr %5, i32 0, i32 8, i32 %idxprom, i32 %45, i32 1
  %52 = ptrtoint ptr %eq_idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %eq_idx, align 4
  %eq_idx37 = getelementptr inbounds %struct.csio_ioreq, ptr %call24, i32 0, i32 2
  %54 = ptrtoint ptr %eq_idx37 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %eq_idx37, align 16
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %call24, i32 0, i32 12
  %55 = ptrtoint ptr %scratch1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cmnd, ptr %scratch1, align 4
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 23
  %56 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call24, ptr %host_scribble, align 4
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 5
  %57 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 0, ptr %Status, align 4
  %Message = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 6
  %58 = ptrtoint ptr %Message to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 16, ptr %Message, align 4
  %tmo = getelementptr inbounds %struct.csio_ioreq, ptr %call24, i32 0, i32 4
  %59 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 60, ptr %tmo, align 8
  %io_cbfn = getelementptr inbounds %struct.csio_ioreq, ptr %call24, i32 0, i32 11
  %60 = ptrtoint ptr %io_cbfn to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @csio_tm_cbfn, ptr %io_cbfn, align 64
  %61 = ptrtoint ptr %sld to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %sld, align 8
  %62 = load ptr, ptr %lnode, align 8
  %lnode42 = getelementptr inbounds %struct.csio_scsi_level_data, ptr %sld, i32 0, i32 2
  %63 = ptrtoint ptr %lnode42 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %lnode42, align 8
  %64 = load ptr, ptr %rnode, align 4
  %rnode44 = getelementptr inbounds %struct.csio_scsi_level_data, ptr %sld, i32 0, i32 1
  %65 = ptrtoint ptr %rnode44 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %rnode44, align 4
  %66 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device, align 4
  %lun46 = getelementptr inbounds %struct.scsi_device, ptr %67, i32 0, i32 18
  %68 = ptrtoint ptr %lun46 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %lun46, align 8
  %oslun = getelementptr inbounds %struct.csio_scsi_level_data, ptr %sld, i32 0, i32 3
  %70 = ptrtoint ptr %oslun to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %oslun, align 8
  %lock = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 1
  %call50 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %call24, i32 0, i32 1
  %71 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sm_state.i.i, align 4
  call void %72(ptr noundef nonnull %call24, i32 noundef 2) #12
  %drv_status.i = getelementptr inbounds %struct.csio_ioreq, ptr %call24, i32 0, i32 8
  %73 = ptrtoint ptr %drv_status.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %drv_status.i, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call50) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp57.not = icmp eq i16 %74, 0
  br i1 %cmp57.not, label %while.cond.preheader, label %do.end62

while.cond.preheader:                             ; preds = %if.end32
  %75 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %scratch1, align 4
  %cmp67222.not = icmp eq ptr %76, %cmnd
  br i1 %cmp67222.not, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

do.end62:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = sext i16 %74 to i32
  %pdev63 = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %77 = ptrtoint ptr %pdev63 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev63, align 8
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.53, ptr noundef nonnull %call24, i32 noundef %conv.i) #15
  br label %fail_ret_ioreq

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %count.0223 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 35, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %count.0223, -1
  call void @msleep(i32 noundef 2000) #12
  %79 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %scratch1, align 4
  %cmp67 = icmp ne ptr %80, %cmnd
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool69.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp67, i1 true, i1 %tobool69.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.lcssa = phi ptr [ %76, %while.cond.preheader.while.end_crit_edge ], [ %80, %while.body.while.end_crit_edge ]
  %cmp71 = icmp eq ptr %.lcssa, %cmnd
  br i1 %cmp71, label %do.end76, label %if.end84

do.end76:                                         ; preds = %while.end
  %pdev77 = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %81 = ptrtoint ptr %pdev77 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev77, align 8
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %83 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id, align 8
  %lun81 = getelementptr inbounds %struct.scsi_device, ptr %84, i32 0, i32 18
  %87 = ptrtoint ptr %lun81 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %lun81, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef nonnull @.str.56, i32 noundef %86, i64 noundef %88) #15
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %89 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sm_state.i.i, align 4
  call void %90(ptr noundef nonnull %call24, i32 noundef 8) #12
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call24) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end76.list_del_init.exit_crit_edge

do.end76.list_del_init.exit_crit_edge:            ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call24, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i, align 4
  %93 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end76.list_del_init.exit_crit_edge
  %97 = ptrtoint ptr %call24 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %call24, ptr %call24, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %call24, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call24, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %fail_ret_ioreq

if.end84:                                         ; preds = %while.end
  %99 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %Status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp87.not = icmp eq i32 %100, 0
  br i1 %cmp87.not, label %if.end101, label %do.end92

do.end92:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %pdev93 = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %101 = ptrtoint ptr %pdev93 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev93, align 8
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %103 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device, align 4
  %id96 = getelementptr inbounds %struct.scsi_device, ptr %104, i32 0, i32 16
  %105 = ptrtoint ptr %id96 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %id96, align 8
  %lun98 = getelementptr inbounds %struct.scsi_device, ptr %104, i32 0, i32 18
  %107 = ptrtoint ptr %lun98 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %lun98, align 8
  %109 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %Status, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.59, i32 noundef %106, i64 noundef %108, i32 noundef %110) #15
  br label %fail

if.end101:                                        ; preds = %if.end84
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  call fastcc void @csio_scsi_gather_active_ios(ptr noundef %scsim1, ptr noundef nonnull %sld, ptr noundef nonnull %local_q)
  %call103 = call fastcc i32 @csio_scsi_abort_io_q(ptr noundef %scsim1, ptr noundef nonnull %local_q)
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp105.not = icmp eq i32 %call103, 0
  br i1 %cmp105.not, label %if.end117, label %do.end110

do.end110:                                        ; preds = %if.end101
  %pdev111 = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %111 = ptrtoint ptr %pdev111 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev111, align 8
  %dev112 = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %113 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device, align 4
  %lun114 = getelementptr inbounds %struct.scsi_device, ptr %114, i32 0, i32 18
  %115 = ptrtoint ptr %lun114 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %lun114, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev112, ptr noundef nonnull @.str.62, i64 noundef %116, i32 noundef %call103) #15
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %117 = ptrtoint ptr %local_q to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %local_q, align 4
  %cmp.i.not.i = icmp eq ptr %118, %local_q
  br i1 %cmp.i.not.i, label %do.end110.list_splice_tail_init.exit_crit_edge, label %if.then.i

do.end110.list_splice_tail_init.exit_crit_edge:   ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #14
  %active_q = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 2, i32 5
  %prev.i = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 2, i32 5, i32 1
  %119 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i, align 4
  %121 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %8, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %123 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev3.i.i, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %118, ptr %120, align 4
  %125 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %active_q, ptr %122, align 4
  store ptr %122, ptr %prev.i, align 4
  %126 = ptrtoint ptr %local_q to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %local_q, ptr %local_q, align 4
  store ptr %local_q, ptr %8, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %do.end110.list_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %fail

if.end117:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %n_lun_rst = getelementptr inbounds %struct.csio_rnode, ptr %7, i32 0, i32 15, i32 7
  %127 = ptrtoint ptr %n_lun_rst to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %n_lun_rst, align 4
  %inc = add i32 %128, 1
  store i32 %inc, ptr %n_lun_rst, align 4
  %pdev122 = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %129 = ptrtoint ptr %pdev122 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdev122, align 8
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  %131 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device, align 4
  %id125 = getelementptr inbounds %struct.scsi_device, ptr %132, i32 0, i32 16
  %133 = ptrtoint ptr %id125 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %id125, align 8
  %lun127 = getelementptr inbounds %struct.scsi_device, ptr %132, i32 0, i32 18
  %135 = ptrtoint ptr %lun127 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %lun127, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev123, ptr noundef nonnull @.str.65, i32 noundef %134, i64 noundef %136) #15
  br label %cleanup

fail_ret_ioreq:                                   ; preds = %list_del_init.exit, %do.end62
  call fastcc void @csio_put_scsi_ioreq_lock(ptr noundef %scsim1, ptr noundef nonnull %call24)
  br label %fail

fail:                                             ; preds = %fail_ret_ioreq, %list_splice_tail_init.exit, %do.end92, %do.end29, %do.end18, %do.end, %entry.fail_crit_edge
  %n_lun_rst_fail = getelementptr inbounds %struct.csio_rnode, ptr %7, i32 0, i32 15, i32 8
  %137 = ptrtoint ptr %n_lun_rst_fail to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %n_lun_rst_fail, align 4
  %inc129 = add i32 %138, 1
  store i32 %inc129, ptr %n_lun_rst_fail, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end117, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 8195, %fail ], [ 8194, %if.end117 ], [ %call9, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sld) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_q) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_slave_alloc(ptr nocapture noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end:                                         ; preds = %entry
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %parent4 = getelementptr i8, ptr %5, i32 136
  %6 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent4, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 -240
  %tobool5.not = icmp eq ptr %add.ptr, null
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %lor.lhs.false

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %port_state.i = getelementptr i8, ptr %7, i32 -40
  %8 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_state.i, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %9, label %lor.lhs.false.cleanup_crit_edge [
    i32 2, label %lor.lhs.false.sw.bb.i_crit_edge
    i32 11, label %lor.lhs.false.sw.bb.i_crit_edge18
  ]

lor.lhs.false.sw.bb.i_crit_edge18:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

lor.lhs.false.sw.bb.i_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %lor.lhs.false.sw.bb.i_crit_edge, %lor.lhs.false.sw.bb.i_crit_edge18
  %roles.i = getelementptr i8, ptr %7, i32 -44
  %11 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.end

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %dd_data = getelementptr i8, ptr %7, i32 -28
  %13 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dd_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %17 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %hostdata, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %cond.end.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -6, %sw.bb.i.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_slave_configure(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @csio_lun_qdepth, align 4
  %call = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %0) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @csio_slave_destroy(ptr nocapture noundef writeonly %sdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %hostdata, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_scan_finished(ptr noundef %shost, i32 noundef %time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #12
  %hwp = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 4
  %cmp.i = icmp eq ptr %5, %hostdata.i
  br i1 %cmp.i, label %csio_list_deleted.exit, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

csio_list_deleted.exit:                           ; preds = %lor.lhs.false
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %cmp1.i.not = icmp eq ptr %7, %hostdata.i
  br i1 %cmp1.i.not, label %csio_list_deleted.exit.out_crit_edge, label %csio_list_deleted.exit.if.end_crit_edge

csio_list_deleted.exit.if.end_crit_edge:          ; preds = %csio_list_deleted.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

csio_list_deleted.exit.out_crit_edge:             ; preds = %csio_list_deleted.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %csio_list_deleted.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = load i32, ptr @csio_max_scan_tmo, align 4
  %mul = mul i32 %9, 100
  %10 = load i32, ptr @csio_delta_scan_tmo, align 4
  %mul3 = mul i32 %10, 100
  %call4 = tail call i32 @csio_scan_done(ptr noundef %hostdata.i, i32 noundef %8, i32 noundef %time, i32 noundef %mul, i32 noundef %mul3) #12
  br label %out

out:                                              ; preds = %if.end, %csio_list_deleted.exit.out_crit_edge, %entry.out_crit_edge
  %rv.0 = phi i32 [ 1, %csio_list_deleted.exit.out_crit_edge ], [ %call4, %if.end ], [ 1, %entry.out_crit_edge ]
  %11 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %12) #12
  ret i32 %rv.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_eh_timed_out(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_scsim_init(ptr noundef %scm, ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_q = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 5
  %0 = ptrtoint ptr %active_q to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %active_q, ptr %active_q, align 4
  %prev.i = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %active_q, ptr %prev.i, align 4
  %2 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hw, ptr %scm, align 8
  %proto_cmd_len = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 2
  %3 = ptrtoint ptr %proto_cmd_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 32, ptr %proto_cmd_len, align 1
  %proto_rsp_len = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 3
  %4 = ptrtoint ptr %proto_rsp_len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 156, ptr %proto_rsp_len, align 2
  %max_sge = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 1
  %5 = ptrtoint ptr %max_sge to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 35, ptr %max_sge, align 4
  %freelist_lock = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %freelist_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @csio_scsim_init.__key, i16 noundef signext 3) #12
  %ioreq_freelist = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 6
  %6 = ptrtoint ptr %ioreq_freelist to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ioreq_freelist, ptr %ioreq_freelist, align 4
  %prev.i75 = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ioreq_freelist, ptr %prev.i75, align 4
  %8 = load i32, ptr @csio_scsi_ioreqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp90 = icmp sgt i32 %8, 0
  br i1 %cmp90, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %scsi_dma_pool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 43
  %n_free_ioreq21 = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 8, i32 29
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc22, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 256) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end5, label %if.end

do.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %n_free_ioreq21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_free_ioreq21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %13) #15
  br label %free_ioreq

if.end:                                           ; preds = %for.body
  %14 = ptrtoint ptr %scsi_dma_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scsi_dma_pool, align 8
  %paddr = getelementptr inbounds %struct.csio_ioreq, ptr %call7.i.i, i32 0, i32 6, i32 2
  %call7 = tail call ptr @dma_pool_alloc(ptr noundef %15, i32 noundef 3264, ptr noundef %paddr) #12
  %vaddr = getelementptr inbounds %struct.csio_ioreq, ptr %call7.i.i, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %vaddr, align 8
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev14 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %17 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev14, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.15) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %free_ioreq

if.end16:                                         ; preds = %if.end
  %19 = ptrtoint ptr %proto_rsp_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %proto_rsp_len, align 2
  %conv = zext i16 %20 to i32
  %len = getelementptr inbounds %struct.csio_ioreq, ptr %call7.i.i, i32 0, i32 6, i32 3
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %len, align 8
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @csio_scsis_uninit, ptr %sm_state.i.i, align 8
  %gen_list = getelementptr inbounds %struct.csio_ioreq, ptr %call7.i.i, i32 0, i32 14
  %23 = ptrtoint ptr %gen_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %gen_list, ptr %gen_list, align 4
  %prev.i76 = getelementptr inbounds %struct.csio_ioreq, ptr %call7.i.i, i32 0, i32 14, i32 1
  %24 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %gen_list, ptr %prev.i76, align 8
  %cmplobj = getelementptr inbounds %struct.csio_ioreq, ptr %call7.i.i, i32 0, i32 19
  %25 = ptrtoint ptr %cmplobj to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cmplobj, align 4
  %wait.i = getelementptr inbounds %struct.csio_ioreq, ptr %call7.i.i, i32 0, i32 19, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @init_completion.__key) #12
  %26 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i75, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %27, ptr noundef %ioreq_freelist) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_add_tail.exit_crit_edge

if.end16.list_add_tail.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %prev.i75, align 4
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ioreq_freelist, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end16.list_add_tail.exit_crit_edge
  %32 = ptrtoint ptr %n_free_ioreq21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_free_ioreq21, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %n_free_ioreq21, align 8
  %inc22 = add nuw nsw i32 %i.091, 1
  %34 = load i32, ptr @csio_scsi_ioreqs, align 4
  %cmp = icmp slt i32 %inc22, %34
  br i1 %cmp, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ddp_freelist.i = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 7
  %35 = ptrtoint ptr %ddp_freelist.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %ddp_freelist.i, ptr %ddp_freelist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ddp_freelist.i, ptr %prev.i.i, align 4
  %pdev7.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %n_free_ddp21.i = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 8, i32 30
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.end
  %n.05.i = phi i32 [ 0, %for.end ], [ %inc22.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 20) #16
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  %38 = ptrtoint ptr %pdev7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev7.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  br i1 %tobool4.not.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %n_free_ddp21.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_free_ddp21.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.85, i32 noundef %41) #15
  br label %no_mem.i

if.end6.i:                                        ; preds = %for.body.i
  %paddr.i = getelementptr inbounds %struct.csio_dma_buf, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i78 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef %paddr.i, i32 noundef 3264, i32 noundef 0) #12
  %vaddr.i = getelementptr inbounds %struct.csio_dma_buf, ptr %call7.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i78, ptr %vaddr.i, align 8
  %tobool11.not.i = icmp eq ptr %call.i.i78, null
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end18.i

do.end15.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %pdev7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev7.i, align 8
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.88) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %no_mem.i

if.end18.i:                                       ; preds = %if.end6.i
  %len.i = getelementptr inbounds %struct.csio_dma_buf, ptr %call7.i.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4096, ptr %len.i, align 8
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %47, ptr noundef %ddp_freelist.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end18.i.list_add_tail.exit.i_crit_edge

if.end18.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %ddp_freelist.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call7.i.i.i, ptr %47, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end18.i.list_add_tail.exit.i_crit_edge
  %52 = ptrtoint ptr %n_free_ddp21.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n_free_ddp21.i, align 4
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %n_free_ddp21.i, align 4
  %inc22.i = add nuw nsw i32 %n.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc22.i, 128
  br i1 %exitcond.not.i, label %list_add_tail.exit.i.cleanup_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

no_mem.i:                                         ; preds = %do.end15.i, %do.end.i
  %54 = ptrtoint ptr %ddp_freelist.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %tmp.06.i = load ptr, ptr %ddp_freelist.i, align 4
  %cmp.i.not7.i = icmp eq ptr %tmp.06.i, %ddp_freelist.i
  br i1 %cmp.i.not7.i, label %no_mem.i.csio_scsi_alloc_ddp_bufs.exit_crit_edge, label %no_mem.i.for.body28.i_crit_edge

no_mem.i.for.body28.i_crit_edge:                  ; preds = %no_mem.i
  br label %for.body28.i

no_mem.i.csio_scsi_alloc_ddp_bufs.exit_crit_edge: ; preds = %no_mem.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_alloc_ddp_bufs.exit

for.body28.i:                                     ; preds = %list_del_init.exit.i.for.body28.i_crit_edge, %no_mem.i.for.body28.i_crit_edge
  %tmp.08.i = phi ptr [ %tmp.0.i, %list_del_init.exit.i.for.body28.i_crit_edge ], [ %tmp.06.i, %no_mem.i.for.body28.i_crit_edge ]
  %prev.i79 = getelementptr inbounds %struct.list_head, ptr %tmp.08.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i79, align 4
  %57 = ptrtoint ptr %pdev7.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev7.i, align 8
  %dev30.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %len31.i = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.08.i, i32 0, i32 3
  %59 = ptrtoint ptr %len31.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len31.i, align 4
  %vaddr32.i = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.08.i, i32 0, i32 1
  %61 = ptrtoint ptr %vaddr32.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vaddr32.i, align 4
  %paddr33.i = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.08.i, i32 0, i32 2
  %63 = ptrtoint ptr %paddr33.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %paddr33.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev30.i, i32 noundef %60, ptr noundef %62, i32 noundef %64, i32 noundef 0) #12
  %call.i.i2.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.08.i) #12
  br i1 %call.i.i2.i, label %if.end.i.i3.i, label %for.body28.i.list_del_init.exit.i_crit_edge

for.body28.i.list_del_init.exit.i_crit_edge:      ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i3.i:                                    ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i79, align 4
  %67 = ptrtoint ptr %tmp.08.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tmp.08.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i3.i, %for.body28.i.list_del_init.exit.i_crit_edge
  %71 = ptrtoint ptr %tmp.08.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %tmp.08.i, ptr %tmp.08.i, align 4
  %72 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %tmp.08.i, ptr %prev.i79, align 4
  tail call void @kfree(ptr noundef %tmp.08.i) #12
  %73 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %73)
  %tmp.0.i = load ptr, ptr %56, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %ddp_freelist.i
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.csio_scsi_alloc_ddp_bufs.exit_crit_edge, label %list_del_init.exit.i.for.body28.i_crit_edge

list_del_init.exit.i.for.body28.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28.i

list_del_init.exit.i.csio_scsi_alloc_ddp_bufs.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_alloc_ddp_bufs.exit

csio_scsi_alloc_ddp_bufs.exit:                    ; preds = %list_del_init.exit.i.csio_scsi_alloc_ddp_bufs.exit_crit_edge, %no_mem.i.csio_scsi_alloc_ddp_bufs.exit_crit_edge
  %74 = ptrtoint ptr %n_free_ddp21.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %n_free_ddp21.i, align 4
  br label %free_ioreq

free_ioreq:                                       ; preds = %csio_scsi_alloc_ddp_bufs.exit, %do.end13, %do.end5
  %75 = ptrtoint ptr %ioreq_freelist to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %ioreq_freelist, align 4
  %cmp.i.not92 = icmp eq ptr %76, %ioreq_freelist
  br i1 %cmp.i.not92, label %free_ioreq.while.end_crit_edge, label %while.body.lr.ph

free_ioreq.while.end_crit_edge:                   ; preds = %free_ioreq
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %free_ioreq
  %scsi_dma_pool34 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 43
  br label %while.body

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.body.lr.ph
  %77 = phi ptr [ %76, %while.body.lr.ph ], [ %93, %list_del_init.exit.while.body_crit_edge ]
  %call.i.i80 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %77) #12
  br i1 %call.i.i80, label %if.end.i.i82, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i82:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i81 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i81 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i81, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i82, %while.body.list_del_init.exit_crit_edge
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %77, ptr %77, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %77, ptr %prev.i3.i, align 4
  %86 = ptrtoint ptr %scsi_dma_pool34 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %scsi_dma_pool34, align 8
  %vaddr35 = getelementptr inbounds %struct.csio_ioreq, ptr %77, i32 0, i32 6, i32 1
  %88 = ptrtoint ptr %vaddr35 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vaddr35, align 4
  %paddr36 = getelementptr inbounds %struct.csio_ioreq, ptr %77, i32 0, i32 6, i32 2
  %90 = ptrtoint ptr %paddr36 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %paddr36, align 4
  tail call void @dma_pool_free(ptr noundef %87, ptr noundef %89, i32 noundef %91) #12
  tail call void @kfree(ptr noundef %77) #12
  %92 = ptrtoint ptr %ioreq_freelist to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %ioreq_freelist, align 4
  %cmp.i.not = icmp eq ptr %93, %ioreq_freelist
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %free_ioreq.while.end_crit_edge
  %n_free_ioreq38 = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 8, i32 29
  %94 = ptrtoint ptr %n_free_ioreq38 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %n_free_ioreq38, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %list_add_tail.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %while.end ], [ 0, %list_add_tail.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_scsis_uninit(ptr noundef %req, i32 noundef %evt) #0 align 64 {
entry:
  %wrp.i78 = alloca %struct.csio_wr_pair, align 4
  %wrp.i59 = alloca %struct.csio_wr_pair, align 4
  %wrp.i84.i = alloca %struct.csio_wr_pair, align 4
  %wrp.i.i = alloca %struct.csio_wr_pair, align 4
  %wrp.i = alloca %struct.csio_wr_pair, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %evt, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 4, label %entry.sw.bb27_crit_edge
    i32 6, label %entry.sw.bb27_crit_edge115
  ]

entry.sw.bb27_crit_edge115:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %nsge = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %nsge to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nsge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %sw.bb
  %datadir = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 5
  %7 = ptrtoint ptr %datadir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %datadir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then2, label %for.body.preheader.i

if.then2:                                         ; preds = %if.then
  %dcopy = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 16
  %9 = ptrtoint ptr %dcopy to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dcopy, align 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrp.i) #12
  %10 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i, i32 0, i32 2
  %12 = call ptr @memset(ptr %wrp.i, i32 255, i32 16)
  %13 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwp, align 4
  %proto_cmd_len.i = getelementptr inbounds %struct.csio_hw, ptr %14, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %proto_cmd_len.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %proto_cmd_len.i, align 1
  %conv.i = zext i8 %16 to i32
  %add.i = add nuw nsw i32 %conv.i, 15
  %and.i = and i32 %add.i, 496
  %add3.i = add nuw nsw i32 %and.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp ugt i32 %6, 1
  br i1 %cmp.i, label %if.then.i, label %if.then2.do.end.i_crit_edge, !prof !199

if.then2.do.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %div59.i = lshr i32 %6, 1
  %mul.i = mul i32 %div59.i, 24
  %add9.i = add i32 %add3.i, %mul.i
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then2.do.end.i_crit_edge
  %size.0.i = phi i32 [ %add9.i, %if.then.i ], [ %add3.i, %if.then2.do.end.i_crit_edge ]
  %add10.i = add i32 %size.0.i, 15
  %and11.i = and i32 %add10.i, -16
  %eq_idx.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 2
  %17 = ptrtoint ptr %eq_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eq_idx.i, align 16
  %call.i = call i32 @csio_wr_get(ptr noundef %14, i32 noundef %18, i32 noundef %and11.i, ptr noundef nonnull %wrp.i) #12
  %conv12.i = trunc i32 %call.i to i16
  %drv_status.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %19 = ptrtoint ptr %drv_status.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv12.i, ptr %drv_status.i, align 2
  %sext.mask.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i)
  %cmp15.i = icmp eq i32 %sext.mask.i, 0
  br i1 %cmp15.i, label %if.then23.i, label %do.end.i.csio_scsi_write.exit_crit_edge, !prof !198

do.end.i.csio_scsi_write.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_write.exit

if.then23.i:                                      ; preds = %do.end.i
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and11.i)
  %cmp24.not.i = icmp ult i32 %21, %and11.i
  br i1 %cmp24.not.i, label %if.else.i, label %if.then32.i, !prof !199

if.then32.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %wrp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wrp.i, align 4
  call fastcc void @csio_scsi_init_write_wr(ptr noundef %req, ptr noundef %23, i32 noundef %and11.i) #12
  br label %csio_scsi_write.exit

if.else.i:                                        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  %q_arr.i = getelementptr inbounds %struct.csio_hw, ptr %14, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %q_arr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %q_arr.i, align 4
  %26 = ptrtoint ptr %eq_idx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eq_idx.i, align 16
  %arrayidx.i = getelementptr ptr, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %wrap.i = getelementptr inbounds %struct.csio_q, ptr %29, i32 0, i32 9, i32 0, i32 2
  call fastcc void @csio_scsi_init_write_wr(ptr noundef %req, ptr noundef %wrap.i, i32 noundef %and11.i) #12
  %30 = ptrtoint ptr %wrp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wrp.i, align 4
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %10, align 4
  %34 = call ptr @memcpy(ptr %31, ptr %wrap.i, i32 %33)
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %11, align 4
  %37 = load i32, ptr %10, align 4
  %add.ptr.i = getelementptr i8, ptr %wrap.i, i32 %37
  %sub38.i = sub i32 %and11.i, %37
  %38 = call ptr @memcpy(ptr %36, ptr %add.ptr.i, i32 %sub38.i)
  br label %csio_scsi_write.exit

csio_scsi_write.exit:                             ; preds = %if.else.i, %if.then32.i, %do.end.i.csio_scsi_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i) #12
  br label %if.end4

for.body.preheader.i:                             ; preds = %if.then
  %scratch1.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 12
  %39 = ptrtoint ptr %scratch1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %scratch1.i, align 4
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sdb.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %43 = phi i32 [ %50, %for.inc.i.for.body.i_crit_edge ], [ %6, %for.body.preheader.i ]
  %i.0129.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sgel.0128.i = phi ptr [ %call15.i, %for.inc.i.for.body.i_crit_edge ], [ %42, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sgel.0128.i, i32 0, i32 3
  %44 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sgel.0128.i, i32 0, i32 4
  %46 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0129.i)
  %cmp3.not.i = icmp eq i32 %i.0129.i, 0
  %48 = and i32 %45, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  %or.cond.i = select i1 %cmp3.not.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end.i, label %for.body.i.unaligned.i_crit_edge

for.body.i.unaligned.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unaligned.i

if.end.i:                                         ; preds = %for.body.i
  %sub6.i = add i32 %43, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0129.i, i32 %sub6.i)
  %cmp7.not.i = icmp eq i32 %i.0129.i, %sub6.i
  br i1 %cmp7.not.i, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true9.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %if.end.i
  %add.i55 = add i32 %47, %45
  %and11.i56 = and i32 %add.i55, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i56)
  %tobool12.not.i = icmp eq i32 %and11.i56, 0
  br i1 %tobool12.not.i, label %land.lhs.true9.i.for.inc.i_crit_edge, label %land.lhs.true9.i.unaligned.i_crit_edge

land.lhs.true9.i.unaligned.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unaligned.i

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true9.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0129.i, 1
  %call15.i = tail call ptr @sg_next(ptr noundef %sgel.0128.i) #12
  %49 = ptrtoint ptr %nsge to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nsge, align 4
  %cmp.i57 = icmp ult i32 %inc.i, %50
  br i1 %cmp.i57, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %dcopy.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 16
  %51 = ptrtoint ptr %dcopy.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %dcopy.i, align 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrp.i.i) #12
  %52 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i.i, i32 0, i32 1
  %53 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i.i, i32 0, i32 2
  %54 = call ptr @memset(ptr %wrp.i.i, i32 255, i32 16)
  %55 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lnode, align 8
  %hwp.i.i = getelementptr inbounds %struct.csio_lnode, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %hwp.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hwp.i.i, align 4
  %proto_cmd_len.i.i = getelementptr inbounds %struct.csio_hw, ptr %58, i32 0, i32 2, i32 2
  %59 = ptrtoint ptr %proto_cmd_len.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %proto_cmd_len.i.i, align 1
  %conv.i.i = zext i8 %60 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 15
  %and.i.i = and i32 %add.i.i, 496
  %add3.i.i = add nuw nsw i32 %and.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i.i = icmp ugt i32 %50, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %for.end.i.do.end.i.i_crit_edge, !prof !199

for.end.i.do.end.i.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %div59.i.i = lshr i32 %50, 1
  %mul.i.i = mul i32 %div59.i.i, 24
  %add9.i.i = add i32 %add3.i.i, %mul.i.i
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %for.end.i.do.end.i.i_crit_edge
  %size.0.i.i = phi i32 [ %add9.i.i, %if.then.i.i ], [ %add3.i.i, %for.end.i.do.end.i.i_crit_edge ]
  %add10.i.i = add i32 %size.0.i.i, 15
  %and11.i.i = and i32 %add10.i.i, -16
  %eq_idx.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 2
  %61 = ptrtoint ptr %eq_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %eq_idx.i.i, align 16
  %call.i.i = call i32 @csio_wr_get(ptr noundef %58, i32 noundef %62, i32 noundef %and11.i.i, ptr noundef nonnull %wrp.i.i) #12
  %conv12.i.i = trunc i32 %call.i.i to i16
  %drv_status.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %63 = ptrtoint ptr %drv_status.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv12.i.i, ptr %drv_status.i.i, align 2
  %sext.mask.i.i = and i32 %call.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i.i)
  %cmp15.i.i = icmp eq i32 %sext.mask.i.i, 0
  br i1 %cmp15.i.i, label %if.then23.i.i, label %do.end.i.i.csio_scsi_read.exit.i_crit_edge, !prof !198

do.end.i.i.csio_scsi_read.exit.i_crit_edge:       ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_read.exit.i

if.then23.i.i:                                    ; preds = %do.end.i.i
  %64 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %and11.i.i)
  %cmp24.not.i.i = icmp ult i32 %65, %and11.i.i
  br i1 %cmp24.not.i.i, label %if.else.i.i, label %if.then32.i.i, !prof !199

if.then32.i.i:                                    ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %wrp.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wrp.i.i, align 4
  call fastcc void @csio_scsi_init_read_wr(ptr noundef %req, ptr noundef %67, i32 noundef %and11.i.i) #12
  br label %csio_scsi_read.exit.i

if.else.i.i:                                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %q_arr.i.i = getelementptr inbounds %struct.csio_hw, ptr %58, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %q_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %q_arr.i.i, align 4
  %70 = ptrtoint ptr %eq_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %eq_idx.i.i, align 16
  %arrayidx.i.i = getelementptr ptr, ptr %69, i32 %71
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i, align 4
  %wrap.i.i = getelementptr inbounds %struct.csio_q, ptr %73, i32 0, i32 9, i32 0, i32 2
  call fastcc void @csio_scsi_init_read_wr(ptr noundef %req, ptr noundef %wrap.i.i, i32 noundef %and11.i.i) #12
  %74 = ptrtoint ptr %wrp.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wrp.i.i, align 4
  %76 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %52, align 4
  %78 = call ptr @memcpy(ptr %75, ptr %wrap.i.i, i32 %77)
  %79 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %53, align 4
  %81 = load i32, ptr %52, align 4
  %add.ptr.i.i = getelementptr i8, ptr %wrap.i.i, i32 %81
  %sub38.i.i = sub i32 %and11.i.i, %81
  %82 = call ptr @memcpy(ptr %80, ptr %add.ptr.i.i, i32 %sub38.i.i)
  br label %csio_scsi_read.exit.i

csio_scsi_read.exit.i:                            ; preds = %if.else.i.i, %if.then32.i.i, %do.end.i.i.csio_scsi_read.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i.i) #12
  br label %if.end4

unaligned.i:                                      ; preds = %land.lhs.true9.i.unaligned.i_crit_edge, %for.body.i.unaligned.i_crit_edge
  %n_unaligned.i = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 31
  %83 = ptrtoint ptr %n_unaligned.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %n_unaligned.i, align 8
  %inc16.i = add i32 %84, 1
  store i32 %inc16.i, ptr %n_unaligned.i, align 8
  %dcopy17.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 16
  %85 = ptrtoint ptr %dcopy17.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %dcopy17.i, align 32
  %gen_list.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 14
  %86 = ptrtoint ptr %gen_list.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %gen_list.i, ptr %gen_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 14, i32 1
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %gen_list.i, ptr %prev.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %40, i32 0, i32 17, i32 1
  %88 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp19130.not.i = icmp eq i32 %89, 0
  br i1 %cmp19130.not.i, label %while.end.thread.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %unaligned.i
  %ddp_freelist.i.i = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 7
  %n_free_ddp.i.i = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 30
  %max_sge.i = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %list_add_tail.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.1132.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc31.i, %list_add_tail.exit.i.while.body.i_crit_edge ]
  %alloc_len.0131.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add29.i, %list_add_tail.exit.i.while.body.i_crit_edge ]
  %90 = ptrtoint ptr %ddp_freelist.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %ddp_freelist.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %91, %ddp_freelist.i.i
  br i1 %cmp.i.not.i.i, label %while.body.i.if.then27.i_crit_edge, label %if.then.i82.i, !prof !199

while.body.i.if.then27.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

if.then.i82.i:                                    ; preds = %while.body.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %91) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i82.i.csio_get_scsi_ddp.exit.i_crit_edge

if.then.i82.i.csio_get_scsi_ddp.exit.i_crit_edge: ; preds = %if.then.i82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_get_scsi_ddp.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i82.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i.i.i, align 4
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %91, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %csio_get_scsi_ddp.exit.i

csio_get_scsi_ddp.exit.i:                         ; preds = %if.end.i.i.i.i, %if.then.i82.i.csio_get_scsi_ddp.exit.i_crit_edge
  %98 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %91, ptr %91, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %91, ptr %prev.i3.i.i.i, align 4
  %100 = ptrtoint ptr %n_free_ddp.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %n_free_ddp.i.i, align 4
  %dec.i.i = add i32 %101, -1
  store i32 %dec.i.i, ptr %n_free_ddp.i.i, align 4
  %cmp22.i = icmp eq ptr %91, null
  br i1 %cmp22.i, label %csio_get_scsi_ddp.exit.i.if.then27.i_crit_edge, label %lor.lhs.false.i

csio_get_scsi_ddp.exit.i.if.then27.i_crit_edge:   ; preds = %csio_get_scsi_ddp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

lor.lhs.false.i:                                  ; preds = %csio_get_scsi_ddp.exit.i
  %102 = ptrtoint ptr %max_sge.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %max_sge.i, align 4
  %conv24.i = zext i8 %103 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1132.i, i32 %conv24.i)
  %cmp25.i = icmp ugt i32 %i.1132.i, %conv24.i
  br i1 %cmp25.i, label %lor.lhs.false.i.if.then27.i_crit_edge, label %if.end28.i

lor.lhs.false.i.if.then27.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

if.then27.i:                                      ; preds = %lor.lhs.false.i.if.then27.i_crit_edge, %csio_get_scsi_ddp.exit.i.if.then27.i_crit_edge, %while.body.i.if.then27.i_crit_edge
  %drv_status.i58 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %104 = ptrtoint ptr %drv_status.i58 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -16, ptr %drv_status.i58, align 2
  br label %while.end.i

if.end28.i:                                       ; preds = %lor.lhs.false.i
  %len.i = getelementptr inbounds %struct.csio_dma_buf, ptr %91, i32 0, i32 3
  %105 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len.i, align 4
  %add29.i = add i32 %106, %alloc_len.0131.i
  %107 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %91, ptr noundef %108, ptr noundef %gen_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end28.i.list_add_tail.exit.i_crit_edge

if.end28.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %91, ptr %prev.i.i, align 4
  %110 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %gen_list.i, ptr %91, align 4
  %111 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev.i3.i.i.i, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %91, ptr %108, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end28.i.list_add_tail.exit.i_crit_edge
  %inc31.i = add nuw nsw i32 %i.1132.i, 1
  %cmp19.i = icmp ult i32 %add29.i, %89
  br i1 %cmp19.i, label %list_add_tail.exit.i.while.body.i_crit_edge, label %list_add_tail.exit.i.while.end.i_crit_edge

list_add_tail.exit.i.while.end.i_crit_edge:       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

list_add_tail.exit.i.while.body.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %list_add_tail.exit.i.while.end.i_crit_edge, %if.then27.i
  %i.1124.i = phi i32 [ %i.1132.i, %if.then27.i ], [ %inc31.i, %list_add_tail.exit.i.while.end.i_crit_edge ]
  %drv_status32.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %113 = ptrtoint ptr %drv_status32.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %drv_status32.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool33.not.i = icmp eq i16 %114, 0
  br i1 %tobool33.not.i, label %while.end.i.if.then34.i_crit_edge, label %if.end36.i

while.end.i.if.then34.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i

while.end.thread.i:                               ; preds = %unaligned.i
  %drv_status32137.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %115 = ptrtoint ptr %drv_status32137.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %drv_status32137.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool33.not138.i = icmp eq i16 %116, 0
  br i1 %tobool33.not138.i, label %while.end.thread.i.if.then34.i_crit_edge, label %while.end.thread.i.if.end4_crit_edge

while.end.thread.i.if.end4_crit_edge:             ; preds = %while.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

while.end.thread.i.if.then34.i_crit_edge:         ; preds = %while.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i

if.then34.i:                                      ; preds = %while.end.thread.i.if.then34.i_crit_edge, %while.end.i.if.then34.i_crit_edge
  %drv_status32141.i = phi ptr [ %drv_status32137.i, %while.end.thread.i.if.then34.i_crit_edge ], [ %drv_status32.i, %while.end.i.if.then34.i_crit_edge ]
  %i.1124139.i = phi i32 [ 0, %while.end.thread.i.if.then34.i_crit_edge ], [ %i.1124.i, %while.end.i.if.then34.i_crit_edge ]
  %117 = ptrtoint ptr %nsge to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %i.1124139.i, ptr %nsge, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrp.i84.i) #12
  %118 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i84.i, i32 0, i32 1
  %119 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i84.i, i32 0, i32 2
  %120 = call ptr @memset(ptr %wrp.i84.i, i32 255, i32 16)
  %121 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %lnode, align 8
  %hwp.i86.i = getelementptr inbounds %struct.csio_lnode, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %hwp.i86.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hwp.i86.i, align 4
  %proto_cmd_len.i87.i = getelementptr inbounds %struct.csio_hw, ptr %124, i32 0, i32 2, i32 2
  %125 = ptrtoint ptr %proto_cmd_len.i87.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %proto_cmd_len.i87.i, align 1
  %conv.i88.i = zext i8 %126 to i32
  %add.i89.i = add nuw nsw i32 %conv.i88.i, 15
  %and.i90.i = and i32 %add.i89.i, 496
  %add3.i91.i = add nuw nsw i32 %and.i90.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1124139.i)
  %cmp.i93.i = icmp ugt i32 %i.1124139.i, 1
  br i1 %cmp.i93.i, label %if.then.i97.i, label %if.then34.i.do.end.i107.i_crit_edge, !prof !199

if.then34.i.do.end.i107.i_crit_edge:              ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i107.i

if.then.i97.i:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  %div59.i94.i = lshr i32 %i.1124139.i, 1
  %mul.i95.i = mul i32 %div59.i94.i, 24
  %add9.i96.i = add i32 %add3.i91.i, %mul.i95.i
  br label %do.end.i107.i

do.end.i107.i:                                    ; preds = %if.then.i97.i, %if.then34.i.do.end.i107.i_crit_edge
  %size.0.i98.i = phi i32 [ %add9.i96.i, %if.then.i97.i ], [ %add3.i91.i, %if.then34.i.do.end.i107.i_crit_edge ]
  %add10.i99.i = add i32 %size.0.i98.i, 15
  %and11.i100.i = and i32 %add10.i99.i, -16
  %eq_idx.i101.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 2
  %127 = ptrtoint ptr %eq_idx.i101.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %eq_idx.i101.i, align 16
  %call.i102.i = call i32 @csio_wr_get(ptr noundef %124, i32 noundef %128, i32 noundef %and11.i100.i, ptr noundef nonnull %wrp.i84.i) #12
  %conv12.i103.i = trunc i32 %call.i102.i to i16
  %129 = ptrtoint ptr %drv_status32141.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv12.i103.i, ptr %drv_status32141.i, align 2
  %sext.mask.i105.i = and i32 %call.i102.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i105.i)
  %cmp15.i106.i = icmp eq i32 %sext.mask.i105.i, 0
  br i1 %cmp15.i106.i, label %if.then23.i109.i, label %do.end.i107.i.csio_scsi_read.exit117.i_crit_edge, !prof !198

do.end.i107.i.csio_scsi_read.exit117.i_crit_edge: ; preds = %do.end.i107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_read.exit117.i

if.then23.i109.i:                                 ; preds = %do.end.i107.i
  %130 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %and11.i100.i)
  %cmp24.not.i108.i = icmp ult i32 %131, %and11.i100.i
  br i1 %cmp24.not.i108.i, label %if.else.i116.i, label %if.then32.i110.i, !prof !199

if.then32.i110.i:                                 ; preds = %if.then23.i109.i
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %wrp.i84.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wrp.i84.i, align 4
  call fastcc void @csio_scsi_init_read_wr(ptr noundef %req, ptr noundef %133, i32 noundef %and11.i100.i) #12
  br label %csio_scsi_read.exit117.i

if.else.i116.i:                                   ; preds = %if.then23.i109.i
  call void @__sanitizer_cov_trace_pc() #14
  %q_arr.i111.i = getelementptr inbounds %struct.csio_hw, ptr %124, i32 0, i32 3, i32 1
  %134 = ptrtoint ptr %q_arr.i111.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %q_arr.i111.i, align 4
  %136 = ptrtoint ptr %eq_idx.i101.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %eq_idx.i101.i, align 16
  %arrayidx.i112.i = getelementptr ptr, ptr %135, i32 %137
  %138 = ptrtoint ptr %arrayidx.i112.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i112.i, align 4
  %wrap.i113.i = getelementptr inbounds %struct.csio_q, ptr %139, i32 0, i32 9, i32 0, i32 2
  call fastcc void @csio_scsi_init_read_wr(ptr noundef %req, ptr noundef %wrap.i113.i, i32 noundef %and11.i100.i) #12
  %140 = ptrtoint ptr %wrp.i84.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wrp.i84.i, align 4
  %142 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %118, align 4
  %144 = call ptr @memcpy(ptr %141, ptr %wrap.i113.i, i32 %143)
  %145 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %119, align 4
  %147 = load i32, ptr %118, align 4
  %add.ptr.i114.i = getelementptr i8, ptr %wrap.i113.i, i32 %147
  %sub38.i115.i = sub i32 %and11.i100.i, %147
  %148 = call ptr @memcpy(ptr %146, ptr %add.ptr.i114.i, i32 %sub38.i115.i)
  br label %csio_scsi_read.exit117.i

csio_scsi_read.exit117.i:                         ; preds = %if.else.i116.i, %if.then32.i110.i, %do.end.i107.i.csio_scsi_read.exit117.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i84.i) #12
  br label %if.end4

if.end36.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1124.i)
  %cmp37.not.i = icmp eq i32 %i.1124.i, 0
  br i1 %cmp37.not.i, label %if.end36.i.if.end4_crit_edge, label %if.then39.i

if.end36.i.if.end4_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then39.i:                                      ; preds = %if.end36.i
  %149 = ptrtoint ptr %gen_list.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile ptr, ptr %gen_list.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %150, %gen_list.i
  br i1 %cmp.i.not.i.i.i, label %if.then39.i.csio_put_scsi_ddp_list.exit.i_crit_edge, label %if.then.i.i.i

if.then39.i.csio_put_scsi_ddp_list.exit.i_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_put_scsi_ddp_list.exit.i

if.then.i.i.i:                                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 7, i32 1
  %151 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %prev.i.i.i, align 4
  %153 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %prev.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  %155 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %152, ptr %prev3.i.i.i.i, align 4
  %156 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %150, ptr %152, align 4
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %ddp_freelist.i.i, ptr %154, align 4
  store ptr %154, ptr %prev.i.i.i, align 4
  %158 = ptrtoint ptr %gen_list.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %gen_list.i, ptr %gen_list.i, align 4
  store ptr %gen_list.i, ptr %prev.i.i, align 4
  br label %csio_put_scsi_ddp_list.exit.i

csio_put_scsi_ddp_list.exit.i:                    ; preds = %if.then.i.i.i, %if.then39.i.csio_put_scsi_ddp_list.exit.i_crit_edge
  %159 = ptrtoint ptr %n_free_ddp.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %n_free_ddp.i.i, align 4
  %add.i120.i = add i32 %160, %i.1124.i
  store i32 %add.i120.i, ptr %n_free_ddp.i.i, align 4
  br label %if.end4

if.else3:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrp.i59) #12
  %161 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i59, i32 0, i32 1
  %162 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i59, i32 0, i32 2
  %163 = call ptr @memset(ptr %wrp.i59, i32 255, i32 16)
  %164 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hwp, align 4
  %proto_cmd_len.i62 = getelementptr inbounds %struct.csio_hw, ptr %165, i32 0, i32 2, i32 2
  %166 = ptrtoint ptr %proto_cmd_len.i62 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %proto_cmd_len.i62, align 1
  %conv.i63 = zext i8 %167 to i32
  %add.i64 = add nuw nsw i32 %conv.i63, 15
  %and.i65 = and i32 %add.i64, 496
  %add3.i66 = add nuw nsw i32 %and.i65, 63
  %and4.i = and i32 %add3.i66, 1008
  %eq_idx.i67 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 2
  %168 = ptrtoint ptr %eq_idx.i67 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %eq_idx.i67, align 16
  %call.i68 = call i32 @csio_wr_get(ptr noundef %165, i32 noundef %169, i32 noundef %and4.i, ptr noundef nonnull %wrp.i59) #12
  %conv5.i = trunc i32 %call.i68 to i16
  %drv_status.i69 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %170 = ptrtoint ptr %drv_status.i69 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv5.i, ptr %drv_status.i69, align 2
  %sext.mask.i70 = and i32 %call.i68, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i70)
  %cmp.not.i = icmp eq i32 %sext.mask.i70, 0
  br i1 %cmp.not.i, label %if.end.i71, label %if.else3.csio_scsi_cmd.exit_crit_edge, !prof !198

if.else3.csio_scsi_cmd.exit_crit_edge:            ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_cmd.exit

if.end.i71:                                       ; preds = %if.else3
  %171 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %161, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %and4.i)
  %cmp10.not.i = icmp ult i32 %172, %and4.i
  br i1 %cmp10.not.i, label %if.else.i76, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #14
  %173 = ptrtoint ptr %wrp.i59 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %wrp.i59, align 4
  call fastcc void @csio_scsi_init_cmd_wr(ptr noundef %req, ptr noundef %174, i32 noundef %and4.i) #12
  br label %csio_scsi_cmd.exit

if.else.i76:                                      ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #14
  %q_arr.i72 = getelementptr inbounds %struct.csio_hw, ptr %165, i32 0, i32 3, i32 1
  %175 = ptrtoint ptr %q_arr.i72 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %q_arr.i72, align 4
  %177 = ptrtoint ptr %eq_idx.i67 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %eq_idx.i67, align 16
  %arrayidx.i73 = getelementptr ptr, ptr %176, i32 %178
  %179 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx.i73, align 4
  %wrap.i74 = getelementptr inbounds %struct.csio_q, ptr %180, i32 0, i32 9, i32 0, i32 2
  call fastcc void @csio_scsi_init_cmd_wr(ptr noundef %req, ptr noundef %wrap.i74, i32 noundef %and4.i) #12
  %181 = ptrtoint ptr %wrp.i59 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %wrp.i59, align 4
  %183 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %161, align 4
  %185 = call ptr @memcpy(ptr %182, ptr %wrap.i74, i32 %184)
  %186 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %162, align 4
  %188 = load i32, ptr %161, align 4
  %add.ptr.i75 = getelementptr i8, ptr %wrap.i74, i32 %188
  %sub.i = sub i32 %and4.i, %188
  %189 = call ptr @memcpy(ptr %187, ptr %add.ptr.i75, i32 %sub.i)
  br label %csio_scsi_cmd.exit

csio_scsi_cmd.exit:                               ; preds = %if.else.i76, %if.then12.i, %if.else3.csio_scsi_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i59) #12
  br label %if.end4

if.end4:                                          ; preds = %csio_scsi_cmd.exit, %csio_put_scsi_ddp_list.exit.i, %if.end36.i.if.end4_crit_edge, %csio_scsi_read.exit117.i, %while.end.thread.i.if.end4_crit_edge, %csio_scsi_read.exit.i, %csio_scsi_write.exit
  %drv_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %190 = ptrtoint ptr %drv_status to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %drv_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %191)
  %cmp5 = icmp eq i16 %191, 0
  br i1 %cmp5, label %if.then9, label %if.end4.cleanup_crit_edge, !prof !198

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %192 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @csio_scsis_io_active, ptr %sm_state.i, align 4
  %active_q = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 5
  %prev.i = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 5, i32 1
  %193 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %prev.i, align 4
  %call.i.i77 = call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %194, ptr noundef %active_q) #12
  br i1 %call.i.i77, label %if.end.i.i, label %if.then9.list_add_tail.exit_crit_edge

if.then9.list_add_tail.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %195 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %req, ptr %prev.i, align 4
  %196 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %active_q, ptr %req, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %197 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %194, ptr %prev3.i.i, align 4
  %198 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile ptr %req, ptr %194, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then9.list_add_tail.exit_crit_edge
  %eq_idx = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 2
  %199 = ptrtoint ptr %eq_idx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %eq_idx, align 16
  %call = call i32 @csio_wr_issue(ptr noundef %3, i32 noundef %200, i1 noundef zeroext false) #12
  %n_active = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 26
  %201 = ptrtoint ptr %n_active to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %n_active, align 4
  %inc = add i32 %202, 1
  store i32 %inc, ptr %n_active, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrp.i78) #12
  %203 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i78, i32 0, i32 1
  %204 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i78, i32 0, i32 2
  %205 = call ptr @memset(ptr %wrp.i78, i32 255, i32 16)
  %206 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %hwp, align 4
  %proto_cmd_len.i81 = getelementptr inbounds %struct.csio_hw, ptr %207, i32 0, i32 2, i32 2
  %208 = ptrtoint ptr %proto_cmd_len.i81 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %proto_cmd_len.i81, align 1
  %conv.i82 = zext i8 %209 to i32
  %add.i83 = add nuw nsw i32 %conv.i82, 15
  %and.i84 = and i32 %add.i83, 496
  %add3.i85 = add nuw nsw i32 %and.i84, 63
  %and4.i86 = and i32 %add3.i85, 1008
  %eq_idx.i87 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 2
  %210 = ptrtoint ptr %eq_idx.i87 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %eq_idx.i87, align 16
  %call.i88 = call i32 @csio_wr_get(ptr noundef %207, i32 noundef %211, i32 noundef %and4.i86, ptr noundef nonnull %wrp.i78) #12
  %conv5.i89 = trunc i32 %call.i88 to i16
  %drv_status.i90 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %212 = ptrtoint ptr %drv_status.i90 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv5.i89, ptr %drv_status.i90, align 2
  %sext.mask.i91 = and i32 %call.i88, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i91)
  %cmp.not.i92 = icmp eq i32 %sext.mask.i91, 0
  br i1 %cmp.not.i92, label %if.end.i94, label %sw.bb12.csio_scsi_cmd.exit102_crit_edge, !prof !198

sw.bb12.csio_scsi_cmd.exit102_crit_edge:          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_cmd.exit102

if.end.i94:                                       ; preds = %sw.bb12
  %213 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %203, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %and4.i86)
  %cmp10.not.i93 = icmp ult i32 %214, %and4.i86
  br i1 %cmp10.not.i93, label %if.else.i101, label %if.then12.i95

if.then12.i95:                                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #14
  %215 = ptrtoint ptr %wrp.i78 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %wrp.i78, align 4
  call fastcc void @csio_scsi_init_cmd_wr(ptr noundef %req, ptr noundef %216, i32 noundef %and4.i86) #12
  br label %csio_scsi_cmd.exit102thread-pre-split

if.else.i101:                                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #14
  %q_arr.i96 = getelementptr inbounds %struct.csio_hw, ptr %207, i32 0, i32 3, i32 1
  %217 = ptrtoint ptr %q_arr.i96 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %q_arr.i96, align 4
  %219 = ptrtoint ptr %eq_idx.i87 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %eq_idx.i87, align 16
  %arrayidx.i97 = getelementptr ptr, ptr %218, i32 %220
  %221 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx.i97, align 4
  %wrap.i98 = getelementptr inbounds %struct.csio_q, ptr %222, i32 0, i32 9, i32 0, i32 2
  call fastcc void @csio_scsi_init_cmd_wr(ptr noundef %req, ptr noundef %wrap.i98, i32 noundef %and4.i86) #12
  %223 = ptrtoint ptr %wrp.i78 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %wrp.i78, align 4
  %225 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %203, align 4
  %227 = call ptr @memcpy(ptr %224, ptr %wrap.i98, i32 %226)
  %228 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %204, align 4
  %230 = load i32, ptr %203, align 4
  %add.ptr.i99 = getelementptr i8, ptr %wrap.i98, i32 %230
  %sub.i100 = sub i32 %and4.i86, %230
  %231 = call ptr @memcpy(ptr %229, ptr %add.ptr.i99, i32 %sub.i100)
  br label %csio_scsi_cmd.exit102thread-pre-split

csio_scsi_cmd.exit102thread-pre-split:            ; preds = %if.else.i101, %if.then12.i95
  %232 = ptrtoint ptr %drv_status.i90 to i32
  call void @__asan_load2_noabort(i32 %232)
  %.pr = load i16, ptr %drv_status.i90, align 2
  br label %csio_scsi_cmd.exit102

csio_scsi_cmd.exit102:                            ; preds = %csio_scsi_cmd.exit102thread-pre-split, %sw.bb12.csio_scsi_cmd.exit102_crit_edge
  %233 = phi i16 [ %.pr, %csio_scsi_cmd.exit102thread-pre-split ], [ %conv5.i89, %sw.bb12.csio_scsi_cmd.exit102_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i78) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %233)
  %cmp15 = icmp eq i16 %233, 0
  br i1 %cmp15, label %if.then17, label %csio_scsi_cmd.exit102.cleanup_crit_edge

csio_scsi_cmd.exit102.cleanup_crit_edge:          ; preds = %csio_scsi_cmd.exit102
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17:                                        ; preds = %csio_scsi_cmd.exit102
  %sm_state.i103 = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %234 = ptrtoint ptr %sm_state.i103 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @csio_scsis_tm_active, ptr %sm_state.i103, align 4
  %active_q21 = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 5
  %prev.i104 = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 5, i32 1
  %235 = ptrtoint ptr %prev.i104 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %prev.i104, align 4
  %call.i.i105 = call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %236, ptr noundef %active_q21) #12
  br i1 %call.i.i105, label %if.end.i.i107, label %if.then17.list_add_tail.exit108_crit_edge

if.then17.list_add_tail.exit108_crit_edge:        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit108

if.end.i.i107:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %237 = ptrtoint ptr %prev.i104 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %req, ptr %prev.i104, align 4
  %238 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %active_q21, ptr %req, align 4
  %prev3.i.i106 = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %239 = ptrtoint ptr %prev3.i.i106 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %236, ptr %prev3.i.i106, align 4
  %240 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %240)
  store volatile ptr %req, ptr %236, align 4
  br label %list_add_tail.exit108

list_add_tail.exit108:                            ; preds = %if.end.i.i107, %if.then17.list_add_tail.exit108_crit_edge
  %241 = ptrtoint ptr %eq_idx.i87 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %eq_idx.i87, align 16
  %call23 = call i32 @csio_wr_issue(ptr noundef %3, i32 noundef %242, i1 noundef zeroext false) #12
  %n_tm_active = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 27
  %243 = ptrtoint ptr %n_tm_active to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %n_tm_active, align 8
  %inc25 = add i32 %244, 1
  store i32 %inc25, ptr %n_tm_active, align 8
  br label %cleanup

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge115
  %drv_status28 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %245 = ptrtoint ptr %drv_status28 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 -22, ptr %drv_status28, align 2
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 4
  %246 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %247, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef %req) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %list_add_tail.exit108, %csio_scsi_cmd.exit102.cleanup_crit_edge, %list_add_tail.exit, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_scsim_exit(ptr noundef %scm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioreq_freelist = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 6
  %0 = ptrtoint ptr %ioreq_freelist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ioreq_freelist, align 4
  %cmp.i.not13 = icmp eq ptr %1, %ioreq_freelist
  br i1 %cmp.i.not13, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %20, %list_del_init.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  %11 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scm, align 8
  %scsi_dma_pool = getelementptr inbounds %struct.csio_hw, ptr %12, i32 0, i32 43
  %13 = ptrtoint ptr %scsi_dma_pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scsi_dma_pool, align 8
  %vaddr = getelementptr inbounds %struct.csio_ioreq, ptr %2, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vaddr, align 4
  %paddr = getelementptr inbounds %struct.csio_ioreq, ptr %2, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %paddr, align 4
  tail call void @dma_pool_free(ptr noundef %14, ptr noundef %16, i32 noundef %18) #12
  tail call void @kfree(ptr noundef %2) #12
  %19 = ptrtoint ptr %ioreq_freelist to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %ioreq_freelist, align 4
  %cmp.i.not = icmp eq ptr %20, %ioreq_freelist
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %n_free_ioreq = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 8, i32 29
  %21 = ptrtoint ptr %n_free_ioreq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %n_free_ioreq, align 8
  %ddp_freelist.i = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 7
  %22 = ptrtoint ptr %ddp_freelist.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.012.i = load ptr, ptr %ddp_freelist.i, align 4
  %cmp.i.not13.i = icmp eq ptr %tmp.012.i, %ddp_freelist.i
  br i1 %cmp.i.not13.i, label %while.end.csio_scsi_free_ddp_bufs.exit_crit_edge, label %for.body.lr.ph.i

while.end.csio_scsi_free_ddp_bufs.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_free_ddp_bufs.exit

for.body.lr.ph.i:                                 ; preds = %while.end
  %23 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scm, align 8
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %24, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.014.i = phi ptr [ %tmp.012.i, %for.body.lr.ph.i ], [ %tmp.0.i, %list_del_init.exit.i.for.body.i_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.014.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %len.i = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.014.i, i32 0, i32 3
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  %vaddr.i = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.014.i, i32 0, i32 1
  %31 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vaddr.i, align 4
  %paddr.i = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.014.i, i32 0, i32 2
  %33 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef 0) #12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.014.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %37 = ptrtoint ptr %tmp.014.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tmp.014.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %41 = ptrtoint ptr %tmp.014.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %tmp.014.i, ptr %tmp.014.i, align 4
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %tmp.014.i, ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tmp.014.i) #12
  %43 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %tmp.0.i = load ptr, ptr %26, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %ddp_freelist.i
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.csio_scsi_free_ddp_bufs.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del_init.exit.i.csio_scsi_free_ddp_bufs.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_free_ddp_bufs.exit

csio_scsi_free_ddp_bufs.exit:                     ; preds = %list_del_init.exit.i.csio_scsi_free_ddp_bufs.exit_crit_edge, %while.end.csio_scsi_free_ddp_bufs.exit_crit_edge
  %n_free_ddp.i = getelementptr inbounds %struct.csio_scsim, ptr %scm, i32 0, i32 8, i32 30
  %44 = ptrtoint ptr %n_free_ddp.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %n_free_ddp.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_is_lnode_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_fc_rport(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_rq_cpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_is_hw_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @csio_get_scsi_ioreq_lock(ptr noundef %scsim) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %freelist_lock = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %freelist_lock) #12
  %ioreq_freelist.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 6
  %0 = ptrtoint ptr %ioreq_freelist.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ioreq_freelist.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %ioreq_freelist.i
  br i1 %cmp.i.not.i, label %entry.csio_get_scsi_ioreq.exit_crit_edge, label %if.then.i, !prof !199

entry.csio_get_scsi_ioreq.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_get_scsi_ioreq.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i, align 4
  %n_free_ioreq.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 8, i32 29
  %10 = ptrtoint ptr %n_free_ioreq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_free_ioreq.i, align 8
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %n_free_ioreq.i, align 8
  br label %csio_get_scsi_ioreq.exit

csio_get_scsi_ioreq.exit:                         ; preds = %list_del_init.exit.i, %entry.csio_get_scsi_ioreq.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %list_del_init.exit.i ], [ null, %entry.csio_get_scsi_ioreq.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %freelist_lock, i32 noundef %call2) #12
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_scsi_cbfn(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 12
  %0 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scratch1, align 4
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 7
  %2 = ptrtoint ptr %wr_status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wr_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %if.then, label %if.else, !prof !198

if.then:                                          ; preds = %entry
  %nsge = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %nsge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nsge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not = icmp eq i32 %5, 0
  br i1 %cmp3.not, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %if.then
  tail call void @scsi_dma_unmap(ptr noundef %1) #12
  %dcopy = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 16
  %6 = ptrtoint ptr %dcopy to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcopy, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.then5.if.end8_crit_edge, label %if.then7

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @csio_scsi_copy_to_sgl(ptr noundef %hw, ptr noundef %req)
  %phi.bo = shl i32 %call, 16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %host_status.0 = phi i32 [ %phi.bo, %if.then7 ], [ 0, %if.then5.if.end8_crit_edge ], [ 0, %if.then.if.end8_crit_edge ]
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %host_status.0, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %1) #12
  %9 = ptrtoint ptr %scratch1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %scratch1, align 4
  %stats = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %stats, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %stats, align 8
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_scsi_err_handler(ptr noundef %hw, ptr noundef %req)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_put_scsi_ioreq_lock(ptr noundef %scsim, ptr noundef %ioreq) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %freelist_lock = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %freelist_lock) #12
  %ioreq_freelist.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ioreq, ptr noundef %1, ptr noundef %ioreq_freelist.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.csio_put_scsi_ioreq.exit_crit_edge

entry.csio_put_scsi_ioreq.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_put_scsi_ioreq.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ioreq, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %ioreq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ioreq_freelist.i, ptr %ioreq, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ioreq, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ioreq, ptr %1, align 4
  br label %csio_put_scsi_ioreq.exit

csio_put_scsi_ioreq.exit:                         ; preds = %if.end.i.i.i, %entry.csio_put_scsi_ioreq.exit_crit_edge
  %n_free_ioreq.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 8, i32 29
  %6 = ptrtoint ptr %n_free_ioreq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_free_ioreq.i, align 8
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %n_free_ioreq.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %freelist_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_scsi_copy_to_sgl(ptr nocapture noundef readonly %hw, ptr noundef %req) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 12
  %0 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scratch1, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdb.i, align 4
  %gen_list = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 14
  %6 = ptrtoint ptr %gen_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gen_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not123 = icmp eq i32 %3, 0
  %tobool2.not112124 = icmp eq ptr %7, null
  %tobool.not106113125 = icmp eq ptr %5, null
  %or.cond107114126 = select i1 %cmp.not123, i1 true, i1 %tobool.not106113125
  %or.cond87108115127 = select i1 %or.cond107114126, i1 true, i1 %tobool2.not112124
  br i1 %or.cond87108115127, label %entry.while.end_crit_edge, label %entry.while.body.lr.ph.lr.ph_crit_edge

entry.while.body.lr.ph.lr.ph_crit_edge:           ; preds = %entry
  br label %while.body.lr.ph.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %if.end27.while.body.lr.ph.lr.ph_crit_edge, %entry.while.body.lr.ph.lr.ph_crit_edge
  %sg.0.ph132 = phi ptr [ %sg.0110, %if.end27.while.body.lr.ph.lr.ph_crit_edge ], [ %5, %entry.while.body.lr.ph.lr.ph_crit_edge ]
  %dma_buf.0.ph131 = phi ptr [ %dma_buf.0.ph91118, %if.end27.while.body.lr.ph.lr.ph_crit_edge ], [ %7, %entry.while.body.lr.ph.lr.ph_crit_edge ]
  %start_off.0.ph130 = phi i32 [ %add36, %if.end27.while.body.lr.ph.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph.lr.ph_crit_edge ]
  %buf_off.0.ph129 = phi i32 [ %add37, %if.end27.while.body.lr.ph.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph.lr.ph_crit_edge ]
  %bytes_left.0.ph128 = phi i32 [ %sub38, %if.end27.while.body.lr.ph.lr.ph_crit_edge ], [ %3, %entry.while.body.lr.ph.lr.ph_crit_edge ]
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %sg.0.ph92119 = phi ptr [ %sg.0.ph132, %while.body.lr.ph.lr.ph ], [ %sg.0110, %if.then.while.body.lr.ph_crit_edge ]
  %dma_buf.0.ph91118 = phi ptr [ %dma_buf.0.ph131, %while.body.lr.ph.lr.ph ], [ %11, %if.then.while.body.lr.ph_crit_edge ]
  %start_off.0.ph90117 = phi i32 [ %start_off.0.ph130, %while.body.lr.ph.lr.ph ], [ %start_off.0109, %if.then.while.body.lr.ph_crit_edge ]
  %buf_off.0.ph89116 = phi i32 [ %buf_off.0.ph129, %while.body.lr.ph.lr.ph ], [ 0, %if.then.while.body.lr.ph_crit_edge ]
  %len = getelementptr inbounds %struct.csio_dma_buf, ptr %dma_buf.0.ph91118, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.then6.while.body_crit_edge, %while.body.lr.ph
  %sg.0110 = phi ptr [ %sg.0.ph92119, %while.body.lr.ph ], [ %call8, %if.then6.while.body_crit_edge ]
  %start_off.0109 = phi i32 [ %start_off.0.ph90117, %while.body.lr.ph ], [ %sub, %if.then6.while.body_crit_edge ]
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %buf_off.0.ph89116)
  %cmp3.not = icmp ugt i32 %9, %buf_off.0.ph89116
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %10 = ptrtoint ptr %dma_buf.0.ph91118 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_buf.0.ph91118, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.then.while.end.thread_crit_edge, label %if.then.while.body.lr.ph_crit_edge

if.then.while.body.lr.ph_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph

if.then.while.end.thread_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread

if.end:                                           ; preds = %while.body
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0110, i32 0, i32 2
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start_off.0109, i32 %13)
  %cmp5.not = icmp ult i32 %start_off.0109, %13
  br i1 %cmp5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %sub = sub i32 %start_off.0109, %13
  %call8 = tail call ptr @sg_next(ptr noundef nonnull %sg.0110) #12
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then6.while.end.thread_crit_edge, label %if.then6.while.body_crit_edge

if.then6.while.body_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.then6.while.end.thread_crit_edge:              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread

if.end9:                                          ; preds = %if.end
  %vaddr = getelementptr inbounds %struct.csio_dma_buf, ptr %dma_buf.0.ph91118, i32 0, i32 1
  %14 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vaddr, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %buf_off.0.ph89116
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0110, i32 0, i32 1
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %add = add i32 %17, %start_off.0109
  %sub11 = sub i32 %9, %buf_off.0.ph89116
  %sub13 = sub i32 %13, %start_off.0109
  %18 = tail call i32 @llvm.umin.i32(i32 %sub11, i32 %sub13)
  %and = and i32 %add, 4095
  %sub15 = sub nuw nsw i32 4096, %and
  %19 = tail call i32 @llvm.umin.i32(i32 %sub15, i32 %18)
  %20 = ptrtoint ptr %sg.0110 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg.0110, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !198

do.body2.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !200
  unreachable

sg_page.exit:                                     ; preds = %if.end9
  %and.i = and i32 %21, -4
  %22 = inttoptr i32 %and.i to ptr
  %shr = lshr i32 %add, 12
  %add.ptr23 = getelementptr %struct.page, ptr %22, i32 %shr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %23 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %23, 512
  %24 = tail call i32 @llvm.read_register.i32(metadata !188) #12
  %and.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !201
  %28 = tail call i32 @llvm.read_register.i32(metadata !188) #12
  %and.i.i.i1.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %33, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !202
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr23, i32 noundef %or.i) #12
  %tobool25.not = icmp eq ptr %call.i.i, null
  br i1 %tobool25.not, label %do.end, label %if.end27

do.end:                                           ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull %sg.0110, ptr noundef %req) #15
  br label %while.end.thread

if.end27:                                         ; preds = %sg_page.exit
  %add.ptr29 = getelementptr i8, ptr %call.i.i, i32 %and
  %36 = call ptr @memcpy(ptr %add.ptr29, ptr %add.ptr, i32 %19)
  tail call void @kunmap_local_indexed(ptr noundef nonnull %call.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !203
  %37 = tail call i32 @llvm.read_register.i32(metadata !188) #12
  %and.i.i.i1.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 213
  %41 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %42, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
  %43 = tail call i32 @llvm.read_register.i32(metadata !188) #12
  %and.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %add36 = add i32 %19, %start_off.0109
  %add37 = add i32 %19, %buf_off.0.ph89116
  %sub38 = sub i32 %bytes_left.0.ph128, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub38)
  %cmp.not = icmp eq i32 %sub38, 0
  %tobool2.not112 = icmp eq ptr %dma_buf.0.ph91118, null
  %tobool.not106113 = icmp eq ptr %sg.0110, null
  %or.cond107114 = select i1 %cmp.not, i1 true, i1 %tobool.not106113
  %or.cond87108115 = select i1 %or.cond107114, i1 true, i1 %tobool2.not112
  br i1 %or.cond87108115, label %if.end27.while.end_crit_edge, label %if.end27.while.body.lr.ph.lr.ph_crit_edge

if.end27.while.body.lr.ph.lr.ph_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph.lr.ph

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %entry.while.end_crit_edge
  %cmp.not95 = phi i1 [ %cmp.not123, %entry.while.end_crit_edge ], [ %cmp.not, %if.end27.while.end_crit_edge ]
  %spec.select = select i1 %cmp.not95, i32 0, i32 7
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end, %do.end, %if.then6.while.end.thread_crit_edge, %if.then.while.end.thread_crit_edge
  %47 = phi i32 [ 7, %do.end ], [ %spec.select, %while.end ], [ 7, %if.then6.while.end.thread_crit_edge ], [ 7, %if.then.while.end.thread_crit_edge ]
  ret i32 %47
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_scsi_err_handler(ptr noundef %hw, ptr noundef %req) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 12
  %0 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scratch1, align 4
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 7
  %2 = ptrtoint ptr %wr_status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wr_status, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %3, label %do.end121 [
    i16 255, label %sw.bb
    i16 137, label %sw.bb4
    i16 140, label %do.end
    i16 139, label %do.end77
    i16 136, label %sw.bb116
    i16 132, label %sw.bb113
    i16 138, label %entry.out_crit_edge
    i16 129, label %sw.bb100
    i16 133, label %sw.bb103
    i16 134, label %sw.bb106
    i16 135, label %sw.bb109
    i16 131, label %if.then93
    i16 128, label %entry.if.else96_crit_edge
    i16 130, label %entry.if.else96_crit_edge223
  ]

entry.if.else96_crit_edge223:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else96

entry.if.else96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else96

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @csio_is_hw_ready(ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end, !prof !199

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %n_hosterror = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 7
  %5 = ptrtoint ptr %n_hosterror to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_hosterror, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %n_hosterror, align 8
  br label %out

sw.bb4:                                           ; preds = %entry
  %vaddr = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vaddr, align 4
  %add.ptr = getelementptr %struct.fcp_resp_with_ext, ptr %8, i32 1
  %fr_flags = getelementptr inbounds %struct.fcp_resp, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %fr_flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fr_flags, align 2
  %fr_status = getelementptr inbounds %struct.fcp_resp, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %fr_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fr_status, align 1
  %conv7 = zext i8 %10 to i32
  %and = and i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %sw.bb4.if.end21_crit_edge, label %if.then9

sw.bb4.if.end21_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then9:                                         ; preds = %sw.bb4
  %fr_rsp_len = getelementptr inbounds %struct.fcp_resp_with_ext, ptr %8, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %fr_rsp_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fr_rsp_len, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %14, label %if.then9.out_crit_edge [
    i32 0, label %if.then9.lor.lhs.false_crit_edge
    i32 4, label %if.then9.lor.lhs.false_crit_edge224
    i32 8, label %if.then9.lor.lhs.false_crit_edge225
  ]

if.then9.lor.lhs.false_crit_edge225:              ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.then9.lor.lhs.false_crit_edge224:              ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.then9.lor.lhs.false_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %if.then9.lor.lhs.false_crit_edge, %if.then9.lor.lhs.false_crit_edge224, %if.then9.lor.lhs.false_crit_edge225
  %rsp_code = getelementptr %struct.fcp_resp_with_ext, ptr %8, i32 1, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %rsp_code to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rsp_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp17.not = icmp eq i8 %17, 0
  br i1 %cmp17.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %lor.lhs.false.if.end21_crit_edge, %sw.bb4.if.end21_crit_edge
  %rsp_len.0 = phi i32 [ %14, %lor.lhs.false.if.end21_crit_edge ], [ 0, %sw.bb4.if.end21_crit_edge ]
  %and23 = and i32 %conv7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end38_crit_edge, label %land.lhs.true25

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true25:                                  ; preds = %if.end21
  %fr_sns_len = getelementptr inbounds %struct.fcp_resp_with_ext, ptr %8, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %fr_sns_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fr_sns_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not = icmp eq i32 %19, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.end38_crit_edge, label %if.then28

land.lhs.true25.if.end38_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 96)
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %21 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sense_buffer, align 4
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %rsp_len.0
  %23 = call ptr @memcpy(ptr %22, ptr %add.ptr35, i32 %20)
  %n_autosense = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 9
  %24 = ptrtoint ptr %n_autosense to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_autosense, align 8
  %inc37 = add i32 %25, 1
  store i32 %inc37, ptr %n_autosense, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then28, %land.lhs.true25.if.end38_crit_edge, %if.end21.if.end38_crit_edge
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %resid_len.i, align 4
  %and40 = and i32 %conv7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end38
  %ext43 = getelementptr inbounds %struct.fcp_resp_with_ext, ptr %8, i32 0, i32 1
  %27 = ptrtoint ptr %ext43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ext43, align 4
  %29 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %resid_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp49 = icmp eq i8 %12, 0
  %or.cond = select i1 %tobool24.not, i1 %cmp49, i1 false
  br i1 %or.cond, label %land.lhs.true51, label %if.then42.if.end63_crit_edge

if.then42.if.end63_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true51:                                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i, align 4
  %sub = sub i32 %31, %28
  %underflow = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 19
  %32 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %underflow, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %33)
  %cmp54 = icmp ult i32 %sub, %33
  %spec.select = select i1 %cmp54, i32 7, i32 0
  br label %if.end63

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %and59 = and i32 %conv7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %spec.select215 = select i1 %tobool60.not, i32 0, i32 7
  br label %if.end63

if.end63:                                         ; preds = %if.else, %land.lhs.true51, %if.then42.if.end63_crit_edge
  %host_status.0 = phi i32 [ 0, %if.then42.if.end63_crit_edge ], [ %spec.select, %land.lhs.true51 ], [ %spec.select215, %if.else ]
  %n_rsperror = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 8
  %34 = ptrtoint ptr %n_rsperror to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_rsperror, align 4
  %inc65 = add i32 %35, 1
  store i32 %inc65, ptr %n_rsperror, align 4
  br label %out

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %cmnd67 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %cmnd67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmnd67, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv69 = zext i8 %41 to i32
  %length.i219 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %42 = ptrtoint ptr %length.i219 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i219, align 4
  %resid_len.i220 = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %resid_len.i220 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %resid_len.i220, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv69, i32 noundef %43, i32 noundef %45) #15
  %n_ovflerror = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 10
  %46 = ptrtoint ptr %n_ovflerror to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_ovflerror, align 4
  %inc73 = add i32 %47, 1
  store i32 %inc73, ptr %n_ovflerror, align 4
  br label %out

do.end77:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %49, i32 0, i32 21
  %50 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hostdata, align 8
  %pdev78 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %52 = ptrtoint ptr %pdev78 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev78, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %cmnd80 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %54 = ptrtoint ptr %cmnd80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cmnd80, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  %conv82 = zext i8 %57 to i32
  %length.i221 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %58 = ptrtoint ptr %length.i221 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length.i221, align 4
  %resid_len.i222 = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %60 = ptrtoint ptr %resid_len.i222 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %resid_len.i222, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %49, i32 0, i32 18
  %62 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %lun, align 8
  %flowid = getelementptr inbounds %struct.csio_rnode, ptr %51, i32 0, i32 2
  %64 = ptrtoint ptr %flowid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flowid, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev79, ptr noundef nonnull @.str.30, i32 noundef %conv82, i32 noundef %59, i32 noundef %61, i64 noundef %63, i32 noundef %65) #15
  %n_unflerror = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 11
  %66 = ptrtoint ptr %n_unflerror to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_unflerror, align 8
  %inc87 = add i32 %67, 1
  store i32 %inc87, ptr %n_unflerror, align 8
  br label %out

if.then93:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_closed = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 24
  %68 = ptrtoint ptr %n_closed to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %n_closed, align 4
  %inc95 = add i32 %69, 1
  store i32 %inc95, ptr %n_closed, align 4
  br label %out

if.else96:                                        ; preds = %entry.if.else96_crit_edge, %entry.if.else96_crit_edge223
  %n_aborted = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 18
  %70 = ptrtoint ptr %n_aborted to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_aborted, align 4
  %inc98 = add i32 %71, 1
  store i32 %inc98, ptr %n_aborted, align 4
  br label %out

sw.bb100:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_abrt_timedout = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 19
  %72 = ptrtoint ptr %n_abrt_timedout to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_abrt_timedout, align 8
  %inc102 = add i32 %73, 1
  store i32 %inc102, ptr %n_abrt_timedout, align 8
  br label %out

sw.bb103:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_rdev_nr_error = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 12
  %74 = ptrtoint ptr %n_rdev_nr_error to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %n_rdev_nr_error, align 4
  %inc105 = add i32 %75, 1
  store i32 %inc105, ptr %n_rdev_nr_error, align 4
  br label %out

sw.bb106:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_rdev_lost_error = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 13
  %76 = ptrtoint ptr %n_rdev_lost_error to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_rdev_lost_error, align 8
  %inc108 = add i32 %77, 1
  store i32 %inc108, ptr %n_rdev_lost_error, align 8
  br label %out

sw.bb109:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_rdev_logo_error = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 14
  %78 = ptrtoint ptr %n_rdev_logo_error to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n_rdev_logo_error, align 4
  %inc111 = add i32 %79, 1
  store i32 %inc111, ptr %n_rdev_logo_error, align 4
  br label %out

sw.bb113:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_link_down_error = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 15
  %80 = ptrtoint ptr %n_link_down_error to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %n_link_down_error, align 8
  %inc115 = add i32 %81, 1
  store i32 %inc115, ptr %n_link_down_error, align 8
  br label %out

sw.bb116:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_no_xchg_error = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 16
  %82 = ptrtoint ptr %n_no_xchg_error to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %n_no_xchg_error, align 4
  %inc118 = add i32 %83, 1
  store i32 %inc118, ptr %n_no_xchg_error, align 4
  br label %out

do.end121:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %3 to i32
  %pdev122 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %84 = ptrtoint ptr %pdev122 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev122, align 8
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev123, ptr noundef nonnull @.str.33, i32 noundef %conv, ptr noundef %req, ptr noundef %1) #15
  %n_unknown_error = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2, i32 8, i32 17
  %86 = ptrtoint ptr %n_unknown_error to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %n_unknown_error, align 8
  %inc127 = add i32 %87, 1
  store i32 %inc127, ptr %n_unknown_error, align 8
  br label %out

out:                                              ; preds = %do.end121, %sw.bb116, %sw.bb113, %sw.bb109, %sw.bb106, %sw.bb103, %sw.bb100, %if.else96, %if.then93, %do.end77, %do.end, %if.end63, %lor.lhs.false.out_crit_edge, %if.then9.out_crit_edge, %if.end, %entry.out_crit_edge
  %scsi_status.0 = phi i8 [ 0, %do.end121 ], [ 0, %sw.bb116 ], [ 0, %sw.bb113 ], [ 0, %sw.bb109 ], [ 0, %sw.bb106 ], [ 0, %sw.bb103 ], [ 0, %sw.bb100 ], [ 0, %if.then93 ], [ 0, %if.else96 ], [ 0, %do.end77 ], [ 0, %do.end ], [ %12, %if.end63 ], [ 0, %if.end ], [ %12, %if.then9.out_crit_edge ], [ %12, %lor.lhs.false.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  %host_status.1 = phi i32 [ 7, %do.end121 ], [ 7, %sw.bb116 ], [ 7, %sw.bb113 ], [ 7, %sw.bb109 ], [ 7, %sw.bb106 ], [ 7, %sw.bb103 ], [ 7, %sw.bb100 ], [ 13, %if.then93 ], [ 13, %if.else96 ], [ 7, %do.end77 ], [ 7, %do.end ], [ %host_status.0, %if.end63 ], [ 7, %if.end ], [ 7, %if.then9.out_crit_edge ], [ 7, %lor.lhs.false.out_crit_edge ], [ 7, %entry.out_crit_edge ]
  %nsge = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 3
  %88 = ptrtoint ptr %nsge to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nsge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp128.not = icmp eq i32 %89, 0
  br i1 %cmp128.not, label %out.if.end139_crit_edge, label %if.then130

out.if.end139_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

if.then130:                                       ; preds = %out
  tail call void @scsi_dma_unmap(ptr noundef %1) #12
  %dcopy = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 16
  %90 = ptrtoint ptr %dcopy to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %dcopy, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool132.not = icmp ne i8 %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %host_status.1)
  %cmp134 = icmp eq i32 %host_status.1, 0
  %or.cond216 = select i1 %tobool132.not, i1 %cmp134, i1 false
  br i1 %or.cond216, label %if.then136, label %if.then130.if.end139_crit_edge

if.then130.if.end139_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

if.then136:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  %call137 = tail call fastcc i32 @csio_scsi_copy_to_sgl(ptr noundef %hw, ptr noundef %req)
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.then130.if.end139_crit_edge, %out.if.end139_crit_edge
  %host_status.2 = phi i32 [ %call137, %if.then136 ], [ %host_status.1, %if.then130.if.end139_crit_edge ], [ %host_status.1, %out.if.end139_crit_edge ]
  %shl = shl i32 %host_status.2, 16
  %conv140 = zext i8 %scsi_status.0 to i32
  %or = or i32 %shl, %conv140
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %92 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %1) #12
  %93 = ptrtoint ptr %scratch1 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %scratch1, align 4
  %cmplobj = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 19
  tail call void @complete(ptr noundef %cmplobj) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_block_scsi_eh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_tm_cbfn(ptr nocapture noundef readnone %hw, ptr nocapture noundef %req) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 12
  %0 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scratch1, align 4
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 7
  %2 = ptrtoint ptr %wr_status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wr_status, align 4
  %conv = zext i16 %3 to i32
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 5
  %4 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %conv, ptr %Status, align 4
  %5 = load i16, ptr %wr_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 137, i16 %5)
  %cmp = icmp eq i16 %5, 137
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  %vaddr = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vaddr, align 4
  %fr_flags = getelementptr inbounds %struct.fcp_resp, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fr_flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fr_flags, align 2
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then.if.end14_crit_edge, label %if.then6

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then6:                                         ; preds = %if.then
  %rsp_code = getelementptr %struct.fcp_resp_with_ext, ptr %7, i32 1, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %rsp_code to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rsp_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp8 = icmp eq i8 %12, 0
  br i1 %cmp8, label %if.then10, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %Status, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then6.if.end14_crit_edge, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %14 = ptrtoint ptr %scratch1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %scratch1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_scan_done(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_show_hw_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr i8, ptr %dev, i32 948
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %call1 = tail call i32 @csio_is_hw_ready(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %buf, ptr @.str.68, i32 7)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.69, i32 11)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 6, %if.then ], [ 10, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_device_reset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %1)
  %cmp.not = icmp eq i8 %1, 49
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hwp = getelementptr i8, ptr %dev, i32 948
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  tail call void @csio_lnodes_exit(ptr noundef %3, i1 noundef zeroext true) #12
  tail call void @csio_lnodes_block_request(ptr noundef %3) #12
  %lock = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %call2 = tail call i32 @csio_hw_reset(ptr noundef %3) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call void @csio_lnodes_unblock_request(ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_lnodes_exit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_lnodes_block_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_hw_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_lnodes_unblock_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_disable_port(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %2 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %2)
  %switch = icmp eq i8 %2, 48
  br i1 %switch, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hwp = getelementptr i8, ptr %dev, i32 948
  %3 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %1)
  %cmp6 = icmp eq i8 %1, 49
  %portid = getelementptr i8, ptr %dev, i32 952
  %5 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portid, align 8
  tail call void @csio_lnodes_block_by_port(ptr noundef %4, i8 noundef zeroext %6) #12
  %lock = getelementptr inbounds %struct.csio_hw, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %7 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %portid, align 8
  tail call void @csio_disable_lnodes(ptr noundef %4, i8 noundef zeroext %8, i1 noundef zeroext %cmp6) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %9 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %portid, align 8
  tail call void @csio_lnodes_unblock_by_port(ptr noundef %4, i8 noundef zeroext %10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_lnodes_block_by_port(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_disable_lnodes(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_lnodes_unblock_by_port(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_show_dbg_level(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %log_level = getelementptr i8, ptr %dev, i32 1636
  %0 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %log_level, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.73, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_store_dbg_level(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  %dbg_level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr i8, ptr %dev, i32 948
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbg_level) #12
  %2 = ptrtoint ptr %dbg_level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dbg_level, align 4
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  %conv = zext i8 %4 to i32
  %5 = add nsw i32 %conv, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %5)
  %6 = icmp ult i32 %5, -10
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.74, ptr noundef nonnull %dbg_level)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dbg_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dbg_level, align 4
  %log_level = getelementptr i8, ptr %dev, i32 1636
  %9 = ptrtoint ptr %log_level to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %log_level, align 4
  %log_level7 = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 42, i32 3
  %10 = ptrtoint ptr %log_level7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %log_level7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbg_level) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_show_num_reg_rnodes(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_reg_rnodes = getelementptr i8, ptr %dev, i32 1148
  %0 = ptrtoint ptr %num_reg_rnodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_reg_rnodes, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.76, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_scsis_io_active(ptr noundef %req, i32 noundef %evt) #0 align 64 {
entry:
  %wrp.i62 = alloca %struct.csio_wr_pair, align 4
  %wrp.i = alloca %struct.csio_wr_pair, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %evt, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb13
    i32 6, label %sw.bb21
    i32 8, label %sw.bb31
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %n_active = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 26
  %5 = ptrtoint ptr %n_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_active, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %n_active, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req) #12
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb.list_del_init.exit_crit_edge

sw.bb.list_del_init.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %sw.bb.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %req, ptr %req, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %req, ptr %prev.i3.i, align 4
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @csio_scsis_uninit, ptr %sm_state.i, align 4
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 7
  %16 = ptrtoint ptr %wr_status to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wr_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.not = icmp eq i16 %17, 0
  br i1 %cmp.not, label %list_del_init.exit.sw.epilog_crit_edge, label %if.then, !prof !198

list_del_init.exit.sw.epilog_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %list_del_init.exit
  %rnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %18 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rnode, align 4
  %20 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %17, label %if.then.sw.epilog_crit_edge [
    i16 132, label %if.then.land.lhs.true_crit_edge
    i16 133, label %if.then.land.lhs.true_crit_edge123
    i16 134, label %if.then.land.lhs.true_crit_edge124
    i16 135, label %if.then.land.lhs.true_crit_edge125
    i16 138, label %if.then.land.lhs.true_crit_edge126
  ]

if.then.land.lhs.true_crit_edge126:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge125:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge124:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge123:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.then.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge123, %if.then.land.lhs.true_crit_edge124, %if.then.land.lhs.true_crit_edge125, %if.then.land.lhs.true_crit_edge126
  %call6 = tail call i32 @csio_is_rnode_ready(ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then8

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then8:                                         ; preds = %land.lhs.true
  %21 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @csio_scsis_shost_cmpl_await, ptr %sm_state.i, align 4
  %host_cmpl_q = getelementptr inbounds %struct.csio_rnode, ptr %19, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.csio_rnode, ptr %19, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i59 = tail call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %23, ptr noundef %host_cmpl_q) #12
  br i1 %call.i.i59, label %if.end.i.i60, label %if.then8.sw.epilog_crit_edge

if.then8.sw.epilog_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i.i60:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %req, ptr %prev.i, align 4
  %25 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %host_cmpl_q, ptr %req, align 4
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i3.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %req, ptr %23, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrp.i) #12
  %28 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i, i32 0, i32 1
  %29 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i, i32 0, i32 2
  %30 = call ptr @memset(ptr %wrp.i, i32 255, i32 16)
  %31 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwp, align 4
  %eq_idx.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 2
  %33 = ptrtoint ptr %eq_idx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %eq_idx.i, align 16
  %call.i = call i32 @csio_wr_get(ptr noundef %32, i32 noundef %34, i32 noundef 32, ptr noundef nonnull %wrp.i) #12
  %conv.i = trunc i32 %call.i to i16
  %drv_status.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %35 = ptrtoint ptr %drv_status.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %drv_status.i, align 2
  %sext.mask.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i)
  %cmp.not.i = icmp eq i32 %sext.mask.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb13.csio_scsi_abrt_cls.exit_crit_edge

sw.bb13.csio_scsi_abrt_cls.exit_crit_edge:        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_abrt_cls.exit

if.end.i:                                         ; preds = %sw.bb13
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %37)
  %cmp4.i = icmp ugt i32 %37, 31
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %wrp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wrp.i, align 4
  %40 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lnode, align 8
  %hwp.i.i = getelementptr inbounds %struct.csio_lnode, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %hwp.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hwp.i.i, align 4
  %rnode.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %44 = ptrtoint ptr %rnode.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rnode.i.i, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 872415232, ptr %39, align 8
  %flowid.i.i = getelementptr inbounds %struct.csio_rnode, ptr %45, i32 0, i32 2
  %47 = ptrtoint ptr %flowid.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flowid.i.i, align 4
  %shl.i.i = shl i32 %48, 8
  %or.i.i = or i32 %shl.i.i, 2
  %flowid_len16.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %39, i32 0, i32 1
  %49 = ptrtoint ptr %flowid_len16.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i.i, ptr %flowid_len16.i.i, align 4
  %50 = ptrtoint ptr %req to i32
  %conv.i.i = zext i32 %50 to i64
  %cookie.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %39, i32 0, i32 2
  %51 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv.i.i, ptr %cookie.i.i, align 8
  %q_arr.i.i = getelementptr inbounds %struct.csio_hw, ptr %43, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %q_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %q_arr.i.i, align 4
  %iq_idx.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %54 = ptrtoint ptr %iq_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iq_idx.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 4
  %physiqid.i.i = getelementptr inbounds %struct.csio_q, ptr %57, i32 0, i32 9, i32 0, i32 1
  %58 = ptrtoint ptr %physiqid.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %physiqid.i.i, align 2
  %iqid.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %39, i32 0, i32 3
  %60 = ptrtoint ptr %iqid.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %iqid.i.i, align 8
  %tmo.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %61 = ptrtoint ptr %tmo.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tmo.i.i, align 8
  %conv2.i.i = trunc i32 %62 to i8
  %tmo_val.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %39, i32 0, i32 4
  %63 = ptrtoint ptr %tmo_val.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv2.i.i, ptr %tmo_val.i.i, align 2
  %sub_opcode_to_chk_all_io.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %39, i32 0, i32 5
  %64 = ptrtoint ptr %sub_opcode_to_chk_all_io.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %sub_opcode_to_chk_all_io.i.i, align 1
  %r3.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %39, i32 0, i32 6
  %t_cookie.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %39, i32 0, i32 7
  %65 = ptrtoint ptr %r3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %r3.i.i, align 4
  %66 = ptrtoint ptr %t_cookie.i.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv.i.i, ptr %t_cookie.i.i, align 8
  br label %csio_scsi_abrt_cls.exitthread-pre-split

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %q_arr.i = getelementptr inbounds %struct.csio_hw, ptr %32, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %q_arr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %q_arr.i, align 4
  %69 = ptrtoint ptr %eq_idx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %eq_idx.i, align 16
  %arrayidx.i = getelementptr ptr, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i, align 4
  %wrap.i = getelementptr inbounds %struct.csio_q, ptr %72, i32 0, i32 9, i32 0, i32 2
  %73 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lnode, align 8
  %hwp.i31.i = getelementptr inbounds %struct.csio_lnode, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %hwp.i31.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hwp.i31.i, align 4
  %rnode.i32.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %77 = ptrtoint ptr %rnode.i32.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rnode.i32.i, align 4
  %79 = ptrtoint ptr %wrap.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 872415232, ptr %wrap.i, align 8
  %flowid.i33.i = getelementptr inbounds %struct.csio_rnode, ptr %78, i32 0, i32 2
  %80 = ptrtoint ptr %flowid.i33.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flowid.i33.i, align 4
  %shl.i34.i = shl i32 %81, 8
  %or.i35.i = or i32 %shl.i34.i, 2
  %flowid_len16.i36.i = getelementptr inbounds %struct.csio_q, ptr %72, i32 0, i32 9, i32 0, i32 3
  %82 = ptrtoint ptr %flowid_len16.i36.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or.i35.i, ptr %flowid_len16.i36.i, align 4
  %83 = ptrtoint ptr %req to i32
  %conv.i37.i = zext i32 %83 to i64
  %cookie.i38.i = getelementptr inbounds %struct.csio_q, ptr %72, i32 0, i32 9, i32 0, i32 4
  %84 = ptrtoint ptr %cookie.i38.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv.i37.i, ptr %cookie.i38.i, align 8
  %q_arr.i39.i = getelementptr inbounds %struct.csio_hw, ptr %76, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %q_arr.i39.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %q_arr.i39.i, align 4
  %iq_idx.i40.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %87 = ptrtoint ptr %iq_idx.i40.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %iq_idx.i40.i, align 4
  %arrayidx.i41.i = getelementptr ptr, ptr %86, i32 %88
  %89 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i41.i, align 4
  %physiqid.i42.i = getelementptr inbounds %struct.csio_q, ptr %90, i32 0, i32 9, i32 0, i32 1
  %91 = ptrtoint ptr %physiqid.i42.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %physiqid.i42.i, align 2
  %iqid.i43.i = getelementptr inbounds %struct.csio_q, ptr %72, i32 0, i32 9, i32 1, i32 4
  %93 = ptrtoint ptr %iqid.i43.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %iqid.i43.i, align 8
  %tmo.i44.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %94 = ptrtoint ptr %tmo.i44.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tmo.i44.i, align 8
  %conv2.i45.i = trunc i32 %95 to i8
  %tmo_val.i46.i = getelementptr inbounds %struct.csio_q, ptr %72, i32 0, i32 9, i32 1, i32 6
  %96 = ptrtoint ptr %tmo_val.i46.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv2.i45.i, ptr %tmo_val.i46.i, align 2
  %sub_opcode_to_chk_all_io.i48.i = getelementptr inbounds %struct.csio_q, ptr %72, i32 0, i32 9, i32 1, i32 7
  %97 = ptrtoint ptr %sub_opcode_to_chk_all_io.i48.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %sub_opcode_to_chk_all_io.i48.i, align 1
  %r3.i49.i = getelementptr inbounds %struct.csio_q, ptr %72, i32 0, i32 9, i32 1, i32 8
  %t_cookie.i50.i = getelementptr inbounds %struct.csio_q, ptr %72, i32 0, i32 9, i32 1, i32 12
  %98 = ptrtoint ptr %r3.i49.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %r3.i49.i, align 4
  %99 = ptrtoint ptr %t_cookie.i50.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv.i37.i, ptr %t_cookie.i50.i, align 8
  %100 = ptrtoint ptr %wrp.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wrp.i, align 4
  %102 = call ptr @memcpy(ptr %101, ptr %wrap.i, i32 %37)
  %103 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %29, align 4
  %105 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %28, align 4
  %add.ptr.i = getelementptr i8, ptr %wrap.i, i32 %106
  %sub.i = sub i32 32, %106
  %107 = call ptr @memcpy(ptr %104, ptr %add.ptr.i, i32 %sub.i)
  br label %csio_scsi_abrt_cls.exitthread-pre-split

csio_scsi_abrt_cls.exitthread-pre-split:          ; preds = %if.else.i, %if.then6.i
  %108 = ptrtoint ptr %drv_status.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %.pr = load i16, ptr %drv_status.i, align 2
  br label %csio_scsi_abrt_cls.exit

csio_scsi_abrt_cls.exit:                          ; preds = %csio_scsi_abrt_cls.exitthread-pre-split, %sw.bb13.csio_scsi_abrt_cls.exit_crit_edge
  %109 = phi i16 [ %.pr, %csio_scsi_abrt_cls.exitthread-pre-split ], [ %conv.i, %sw.bb13.csio_scsi_abrt_cls.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %cmp15 = icmp eq i16 %109, 0
  br i1 %cmp15, label %if.then17, label %csio_scsi_abrt_cls.exit.sw.epilog_crit_edge

csio_scsi_abrt_cls.exit.sw.epilog_crit_edge:      ; preds = %csio_scsi_abrt_cls.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then17:                                        ; preds = %csio_scsi_abrt_cls.exit
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %eq_idx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %eq_idx.i, align 16
  %call18 = call i32 @csio_wr_issue(ptr noundef %3, i32 noundef %111, i1 noundef zeroext false) #12
  %sm_state.i61 = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %112 = ptrtoint ptr %sm_state.i61 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @csio_scsis_aborting, ptr %sm_state.i61, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrp.i62) #12
  %113 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i62, i32 0, i32 1
  %114 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i62, i32 0, i32 2
  %115 = call ptr @memset(ptr %wrp.i62, i32 255, i32 16)
  %116 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hwp, align 4
  %eq_idx.i65 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 2
  %118 = ptrtoint ptr %eq_idx.i65 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %eq_idx.i65, align 16
  %call.i66 = call i32 @csio_wr_get(ptr noundef %117, i32 noundef %119, i32 noundef 32, ptr noundef nonnull %wrp.i62) #12
  %conv.i67 = trunc i32 %call.i66 to i16
  %drv_status.i68 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %120 = ptrtoint ptr %drv_status.i68 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i67, ptr %drv_status.i68, align 2
  %sext.mask.i69 = and i32 %call.i66, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i69)
  %cmp.not.i70 = icmp eq i32 %sext.mask.i69, 0
  br i1 %cmp.not.i70, label %if.end.i72, label %sw.bb21.csio_scsi_abrt_cls.exit118_crit_edge

sw.bb21.csio_scsi_abrt_cls.exit118_crit_edge:     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_abrt_cls.exit118

if.end.i72:                                       ; preds = %sw.bb21
  %121 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %122)
  %cmp4.i71 = icmp ugt i32 %122, 31
  br i1 %cmp4.i71, label %if.then6.i92, label %if.else.i117

if.then6.i92:                                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %wrp.i62 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wrp.i62, align 4
  %125 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %lnode, align 8
  %hwp.i.i73 = getelementptr inbounds %struct.csio_lnode, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %hwp.i.i73 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hwp.i.i73, align 4
  %rnode.i.i74 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %129 = ptrtoint ptr %rnode.i.i74 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rnode.i.i74, align 4
  %131 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 872415232, ptr %124, align 8
  %flowid.i.i75 = getelementptr inbounds %struct.csio_rnode, ptr %130, i32 0, i32 2
  %132 = ptrtoint ptr %flowid.i.i75 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flowid.i.i75, align 4
  %shl.i.i76 = shl i32 %133, 8
  %or.i.i77 = or i32 %shl.i.i76, 2
  %flowid_len16.i.i78 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %124, i32 0, i32 1
  %134 = ptrtoint ptr %flowid_len16.i.i78 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or.i.i77, ptr %flowid_len16.i.i78, align 4
  %135 = ptrtoint ptr %req to i32
  %conv.i.i79 = zext i32 %135 to i64
  %cookie.i.i80 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %124, i32 0, i32 2
  %136 = ptrtoint ptr %cookie.i.i80 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %conv.i.i79, ptr %cookie.i.i80, align 8
  %q_arr.i.i81 = getelementptr inbounds %struct.csio_hw, ptr %128, i32 0, i32 3, i32 1
  %137 = ptrtoint ptr %q_arr.i.i81 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %q_arr.i.i81, align 4
  %iq_idx.i.i82 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %139 = ptrtoint ptr %iq_idx.i.i82 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %iq_idx.i.i82, align 4
  %arrayidx.i.i83 = getelementptr ptr, ptr %138, i32 %140
  %141 = ptrtoint ptr %arrayidx.i.i83 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i.i83, align 4
  %physiqid.i.i84 = getelementptr inbounds %struct.csio_q, ptr %142, i32 0, i32 9, i32 0, i32 1
  %143 = ptrtoint ptr %physiqid.i.i84 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %physiqid.i.i84, align 2
  %iqid.i.i85 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %124, i32 0, i32 3
  %145 = ptrtoint ptr %iqid.i.i85 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %iqid.i.i85, align 8
  %tmo.i.i86 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %146 = ptrtoint ptr %tmo.i.i86 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tmo.i.i86, align 8
  %conv2.i.i87 = trunc i32 %147 to i8
  %tmo_val.i.i88 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %124, i32 0, i32 4
  %148 = ptrtoint ptr %tmo_val.i.i88 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv2.i.i87, ptr %tmo_val.i.i88, align 2
  %sub_opcode_to_chk_all_io.i.i89 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %124, i32 0, i32 5
  %149 = ptrtoint ptr %sub_opcode_to_chk_all_io.i.i89 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 4, ptr %sub_opcode_to_chk_all_io.i.i89, align 1
  %r3.i.i90 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %124, i32 0, i32 6
  %t_cookie.i.i91 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %124, i32 0, i32 7
  %150 = ptrtoint ptr %r3.i.i90 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %r3.i.i90, align 4
  %151 = ptrtoint ptr %t_cookie.i.i91 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %conv.i.i79, ptr %t_cookie.i.i91, align 8
  br label %csio_scsi_abrt_cls.exit118thread-pre-split

if.else.i117:                                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  %q_arr.i93 = getelementptr inbounds %struct.csio_hw, ptr %117, i32 0, i32 3, i32 1
  %152 = ptrtoint ptr %q_arr.i93 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %q_arr.i93, align 4
  %154 = ptrtoint ptr %eq_idx.i65 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %eq_idx.i65, align 16
  %arrayidx.i94 = getelementptr ptr, ptr %153, i32 %155
  %156 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx.i94, align 4
  %wrap.i95 = getelementptr inbounds %struct.csio_q, ptr %157, i32 0, i32 9, i32 0, i32 2
  %158 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %lnode, align 8
  %hwp.i31.i96 = getelementptr inbounds %struct.csio_lnode, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %hwp.i31.i96 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hwp.i31.i96, align 4
  %rnode.i32.i97 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %162 = ptrtoint ptr %rnode.i32.i97 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rnode.i32.i97, align 4
  %164 = ptrtoint ptr %wrap.i95 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 872415232, ptr %wrap.i95, align 8
  %flowid.i33.i98 = getelementptr inbounds %struct.csio_rnode, ptr %163, i32 0, i32 2
  %165 = ptrtoint ptr %flowid.i33.i98 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flowid.i33.i98, align 4
  %shl.i34.i99 = shl i32 %166, 8
  %or.i35.i100 = or i32 %shl.i34.i99, 2
  %flowid_len16.i36.i101 = getelementptr inbounds %struct.csio_q, ptr %157, i32 0, i32 9, i32 0, i32 3
  %167 = ptrtoint ptr %flowid_len16.i36.i101 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or.i35.i100, ptr %flowid_len16.i36.i101, align 4
  %168 = ptrtoint ptr %req to i32
  %conv.i37.i102 = zext i32 %168 to i64
  %cookie.i38.i103 = getelementptr inbounds %struct.csio_q, ptr %157, i32 0, i32 9, i32 0, i32 4
  %169 = ptrtoint ptr %cookie.i38.i103 to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %conv.i37.i102, ptr %cookie.i38.i103, align 8
  %q_arr.i39.i104 = getelementptr inbounds %struct.csio_hw, ptr %161, i32 0, i32 3, i32 1
  %170 = ptrtoint ptr %q_arr.i39.i104 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %q_arr.i39.i104, align 4
  %iq_idx.i40.i105 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %172 = ptrtoint ptr %iq_idx.i40.i105 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %iq_idx.i40.i105, align 4
  %arrayidx.i41.i106 = getelementptr ptr, ptr %171, i32 %173
  %174 = ptrtoint ptr %arrayidx.i41.i106 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.i41.i106, align 4
  %physiqid.i42.i107 = getelementptr inbounds %struct.csio_q, ptr %175, i32 0, i32 9, i32 0, i32 1
  %176 = ptrtoint ptr %physiqid.i42.i107 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %physiqid.i42.i107, align 2
  %iqid.i43.i108 = getelementptr inbounds %struct.csio_q, ptr %157, i32 0, i32 9, i32 1, i32 4
  %178 = ptrtoint ptr %iqid.i43.i108 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %iqid.i43.i108, align 8
  %tmo.i44.i109 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %179 = ptrtoint ptr %tmo.i44.i109 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tmo.i44.i109, align 8
  %conv2.i45.i110 = trunc i32 %180 to i8
  %tmo_val.i46.i111 = getelementptr inbounds %struct.csio_q, ptr %157, i32 0, i32 9, i32 1, i32 6
  %181 = ptrtoint ptr %tmo_val.i46.i111 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv2.i45.i110, ptr %tmo_val.i46.i111, align 2
  %sub_opcode_to_chk_all_io.i48.i112 = getelementptr inbounds %struct.csio_q, ptr %157, i32 0, i32 9, i32 1, i32 7
  %182 = ptrtoint ptr %sub_opcode_to_chk_all_io.i48.i112 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 4, ptr %sub_opcode_to_chk_all_io.i48.i112, align 1
  %r3.i49.i113 = getelementptr inbounds %struct.csio_q, ptr %157, i32 0, i32 9, i32 1, i32 8
  %t_cookie.i50.i114 = getelementptr inbounds %struct.csio_q, ptr %157, i32 0, i32 9, i32 1, i32 12
  %183 = ptrtoint ptr %r3.i49.i113 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %r3.i49.i113, align 4
  %184 = ptrtoint ptr %t_cookie.i50.i114 to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %conv.i37.i102, ptr %t_cookie.i50.i114, align 8
  %185 = ptrtoint ptr %wrp.i62 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %wrp.i62, align 4
  %187 = call ptr @memcpy(ptr %186, ptr %wrap.i95, i32 %122)
  %188 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %114, align 4
  %190 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %113, align 4
  %add.ptr.i115 = getelementptr i8, ptr %wrap.i95, i32 %191
  %sub.i116 = sub i32 32, %191
  %192 = call ptr @memcpy(ptr %189, ptr %add.ptr.i115, i32 %sub.i116)
  br label %csio_scsi_abrt_cls.exit118thread-pre-split

csio_scsi_abrt_cls.exit118thread-pre-split:       ; preds = %if.else.i117, %if.then6.i92
  %193 = ptrtoint ptr %drv_status.i68 to i32
  call void @__asan_load2_noabort(i32 %193)
  %.pr122 = load i16, ptr %drv_status.i68, align 2
  br label %csio_scsi_abrt_cls.exit118

csio_scsi_abrt_cls.exit118:                       ; preds = %csio_scsi_abrt_cls.exit118thread-pre-split, %sw.bb21.csio_scsi_abrt_cls.exit118_crit_edge
  %194 = phi i16 [ %.pr122, %csio_scsi_abrt_cls.exit118thread-pre-split ], [ %conv.i67, %sw.bb21.csio_scsi_abrt_cls.exit118_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i62) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %cmp24 = icmp eq i16 %194, 0
  br i1 %cmp24, label %if.then26, label %csio_scsi_abrt_cls.exit118.sw.epilog_crit_edge

csio_scsi_abrt_cls.exit118.sw.epilog_crit_edge:   ; preds = %csio_scsi_abrt_cls.exit118
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then26:                                        ; preds = %csio_scsi_abrt_cls.exit118
  call void @__sanitizer_cov_trace_pc() #14
  %195 = ptrtoint ptr %eq_idx.i65 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %eq_idx.i65, align 16
  %call28 = call i32 @csio_wr_issue(ptr noundef %3, i32 noundef %196, i1 noundef zeroext false) #12
  %sm_state.i119 = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %197 = ptrtoint ptr %sm_state.i119 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @csio_scsis_closing, ptr %sm_state.i119, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wr_status32 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 7
  %198 = ptrtoint ptr %wr_status32 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 255, ptr %wr_status32, align 4
  %n_active34 = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 26
  %199 = ptrtoint ptr %n_active34 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %n_active34, align 4
  %dec35 = add i32 %200, -1
  store i32 %dec35, ptr %n_active34, align 4
  %sm_state.i120 = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %201 = ptrtoint ptr %sm_state.i120 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @csio_scsis_uninit, ptr %sm_state.i120, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %if.then26, %csio_scsi_abrt_cls.exit118.sw.epilog_crit_edge, %if.then17, %csio_scsi_abrt_cls.exit.sw.epilog_crit_edge, %if.end.i.i60, %if.then8.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %list_del_init.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_issue(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_scsis_tm_active(ptr noundef %req, i32 noundef %evt) #0 align 64 {
entry:
  %wrp.i36 = alloca %struct.csio_wr_pair, align 4
  %wrp.i = alloca %struct.csio_wr_pair, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %evt, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 6, label %sw.bb5
    i32 8, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %n_tm_active = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 27
  %5 = ptrtoint ptr %n_tm_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_tm_active, align 8
  %dec = add i32 %6, -1
  store i32 %dec, ptr %n_tm_active, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req) #12
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb.list_del_init.exit_crit_edge

sw.bb.list_del_init.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %sw.bb.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %req, ptr %req, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %req, ptr %prev.i3.i, align 4
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrp.i) #12
  %15 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i, i32 0, i32 2
  %17 = call ptr @memset(ptr %wrp.i, i32 255, i32 16)
  %18 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwp, align 4
  %eq_idx.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %eq_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eq_idx.i, align 16
  %call.i = call i32 @csio_wr_get(ptr noundef %19, i32 noundef %21, i32 noundef 32, ptr noundef nonnull %wrp.i) #12
  %conv.i = trunc i32 %call.i to i16
  %drv_status.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %22 = ptrtoint ptr %drv_status.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %drv_status.i, align 2
  %sext.mask.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i)
  %cmp.not.i = icmp eq i32 %sext.mask.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb2.csio_scsi_abrt_cls.exit_crit_edge

sw.bb2.csio_scsi_abrt_cls.exit_crit_edge:         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_abrt_cls.exit

if.end.i:                                         ; preds = %sw.bb2
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %24)
  %cmp4.i = icmp ugt i32 %24, 31
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %wrp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wrp.i, align 4
  %27 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lnode, align 8
  %hwp.i.i = getelementptr inbounds %struct.csio_lnode, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %hwp.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hwp.i.i, align 4
  %rnode.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %31 = ptrtoint ptr %rnode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rnode.i.i, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 872415232, ptr %26, align 8
  %flowid.i.i = getelementptr inbounds %struct.csio_rnode, ptr %32, i32 0, i32 2
  %34 = ptrtoint ptr %flowid.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flowid.i.i, align 4
  %shl.i.i = shl i32 %35, 8
  %or.i.i = or i32 %shl.i.i, 2
  %flowid_len16.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %26, i32 0, i32 1
  %36 = ptrtoint ptr %flowid_len16.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.i, ptr %flowid_len16.i.i, align 4
  %37 = ptrtoint ptr %req to i32
  %conv.i.i = zext i32 %37 to i64
  %cookie.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %26, i32 0, i32 2
  %38 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv.i.i, ptr %cookie.i.i, align 8
  %q_arr.i.i = getelementptr inbounds %struct.csio_hw, ptr %30, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %q_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %q_arr.i.i, align 4
  %iq_idx.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %41 = ptrtoint ptr %iq_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iq_idx.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %physiqid.i.i = getelementptr inbounds %struct.csio_q, ptr %44, i32 0, i32 9, i32 0, i32 1
  %45 = ptrtoint ptr %physiqid.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %physiqid.i.i, align 2
  %iqid.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %26, i32 0, i32 3
  %47 = ptrtoint ptr %iqid.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %iqid.i.i, align 8
  %tmo.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %48 = ptrtoint ptr %tmo.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tmo.i.i, align 8
  %conv2.i.i = trunc i32 %49 to i8
  %tmo_val.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %26, i32 0, i32 4
  %50 = ptrtoint ptr %tmo_val.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv2.i.i, ptr %tmo_val.i.i, align 2
  %sub_opcode_to_chk_all_io.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %26, i32 0, i32 5
  %51 = ptrtoint ptr %sub_opcode_to_chk_all_io.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %sub_opcode_to_chk_all_io.i.i, align 1
  %r3.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %26, i32 0, i32 6
  %t_cookie.i.i = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %26, i32 0, i32 7
  %52 = ptrtoint ptr %r3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %r3.i.i, align 4
  %53 = ptrtoint ptr %t_cookie.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv.i.i, ptr %t_cookie.i.i, align 8
  br label %csio_scsi_abrt_cls.exitthread-pre-split

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %q_arr.i = getelementptr inbounds %struct.csio_hw, ptr %19, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %q_arr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %q_arr.i, align 4
  %56 = ptrtoint ptr %eq_idx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %eq_idx.i, align 16
  %arrayidx.i = getelementptr ptr, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i, align 4
  %wrap.i = getelementptr inbounds %struct.csio_q, ptr %59, i32 0, i32 9, i32 0, i32 2
  %60 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lnode, align 8
  %hwp.i31.i = getelementptr inbounds %struct.csio_lnode, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %hwp.i31.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hwp.i31.i, align 4
  %rnode.i32.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %64 = ptrtoint ptr %rnode.i32.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rnode.i32.i, align 4
  %66 = ptrtoint ptr %wrap.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 872415232, ptr %wrap.i, align 8
  %flowid.i33.i = getelementptr inbounds %struct.csio_rnode, ptr %65, i32 0, i32 2
  %67 = ptrtoint ptr %flowid.i33.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flowid.i33.i, align 4
  %shl.i34.i = shl i32 %68, 8
  %or.i35.i = or i32 %shl.i34.i, 2
  %flowid_len16.i36.i = getelementptr inbounds %struct.csio_q, ptr %59, i32 0, i32 9, i32 0, i32 3
  %69 = ptrtoint ptr %flowid_len16.i36.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i35.i, ptr %flowid_len16.i36.i, align 4
  %70 = ptrtoint ptr %req to i32
  %conv.i37.i = zext i32 %70 to i64
  %cookie.i38.i = getelementptr inbounds %struct.csio_q, ptr %59, i32 0, i32 9, i32 0, i32 4
  %71 = ptrtoint ptr %cookie.i38.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv.i37.i, ptr %cookie.i38.i, align 8
  %q_arr.i39.i = getelementptr inbounds %struct.csio_hw, ptr %63, i32 0, i32 3, i32 1
  %72 = ptrtoint ptr %q_arr.i39.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %q_arr.i39.i, align 4
  %iq_idx.i40.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %74 = ptrtoint ptr %iq_idx.i40.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %iq_idx.i40.i, align 4
  %arrayidx.i41.i = getelementptr ptr, ptr %73, i32 %75
  %76 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i41.i, align 4
  %physiqid.i42.i = getelementptr inbounds %struct.csio_q, ptr %77, i32 0, i32 9, i32 0, i32 1
  %78 = ptrtoint ptr %physiqid.i42.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %physiqid.i42.i, align 2
  %iqid.i43.i = getelementptr inbounds %struct.csio_q, ptr %59, i32 0, i32 9, i32 1, i32 4
  %80 = ptrtoint ptr %iqid.i43.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %iqid.i43.i, align 8
  %tmo.i44.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %81 = ptrtoint ptr %tmo.i44.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tmo.i44.i, align 8
  %conv2.i45.i = trunc i32 %82 to i8
  %tmo_val.i46.i = getelementptr inbounds %struct.csio_q, ptr %59, i32 0, i32 9, i32 1, i32 6
  %83 = ptrtoint ptr %tmo_val.i46.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv2.i45.i, ptr %tmo_val.i46.i, align 2
  %sub_opcode_to_chk_all_io.i48.i = getelementptr inbounds %struct.csio_q, ptr %59, i32 0, i32 9, i32 1, i32 7
  %84 = ptrtoint ptr %sub_opcode_to_chk_all_io.i48.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %sub_opcode_to_chk_all_io.i48.i, align 1
  %r3.i49.i = getelementptr inbounds %struct.csio_q, ptr %59, i32 0, i32 9, i32 1, i32 8
  %t_cookie.i50.i = getelementptr inbounds %struct.csio_q, ptr %59, i32 0, i32 9, i32 1, i32 12
  %85 = ptrtoint ptr %r3.i49.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %r3.i49.i, align 4
  %86 = ptrtoint ptr %t_cookie.i50.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv.i37.i, ptr %t_cookie.i50.i, align 8
  %87 = ptrtoint ptr %wrp.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wrp.i, align 4
  %89 = call ptr @memcpy(ptr %88, ptr %wrap.i, i32 %24)
  %90 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %16, align 4
  %92 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %15, align 4
  %add.ptr.i = getelementptr i8, ptr %wrap.i, i32 %93
  %sub.i = sub i32 32, %93
  %94 = call ptr @memcpy(ptr %91, ptr %add.ptr.i, i32 %sub.i)
  br label %csio_scsi_abrt_cls.exitthread-pre-split

csio_scsi_abrt_cls.exitthread-pre-split:          ; preds = %if.else.i, %if.then6.i
  %95 = ptrtoint ptr %drv_status.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %.pr = load i16, ptr %drv_status.i, align 2
  br label %csio_scsi_abrt_cls.exit

csio_scsi_abrt_cls.exit:                          ; preds = %csio_scsi_abrt_cls.exitthread-pre-split, %sw.bb2.csio_scsi_abrt_cls.exit_crit_edge
  %96 = phi i16 [ %.pr, %csio_scsi_abrt_cls.exitthread-pre-split ], [ %conv.i, %sw.bb2.csio_scsi_abrt_cls.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %cmp = icmp eq i16 %96, 0
  br i1 %cmp, label %if.then, label %csio_scsi_abrt_cls.exit.sw.epilog_crit_edge

csio_scsi_abrt_cls.exit.sw.epilog_crit_edge:      ; preds = %csio_scsi_abrt_cls.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %csio_scsi_abrt_cls.exit
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %eq_idx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %eq_idx.i, align 16
  %call = call i32 @csio_wr_issue(ptr noundef %3, i32 noundef %98, i1 noundef zeroext false) #12
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrp.i36) #12
  %99 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i36, i32 0, i32 1
  %100 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp.i36, i32 0, i32 2
  %101 = call ptr @memset(ptr %wrp.i36, i32 255, i32 16)
  %102 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hwp, align 4
  %eq_idx.i39 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 2
  %104 = ptrtoint ptr %eq_idx.i39 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %eq_idx.i39, align 16
  %call.i40 = call i32 @csio_wr_get(ptr noundef %103, i32 noundef %105, i32 noundef 32, ptr noundef nonnull %wrp.i36) #12
  %conv.i41 = trunc i32 %call.i40 to i16
  %drv_status.i42 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %106 = ptrtoint ptr %drv_status.i42 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i41, ptr %drv_status.i42, align 2
  %sext.mask.i43 = and i32 %call.i40, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i43)
  %cmp.not.i44 = icmp eq i32 %sext.mask.i43, 0
  br i1 %cmp.not.i44, label %if.end.i46, label %sw.bb5.csio_scsi_abrt_cls.exit92_crit_edge

sw.bb5.csio_scsi_abrt_cls.exit92_crit_edge:       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_scsi_abrt_cls.exit92

if.end.i46:                                       ; preds = %sw.bb5
  %107 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %108)
  %cmp4.i45 = icmp ugt i32 %108, 31
  br i1 %cmp4.i45, label %if.then6.i66, label %if.else.i91

if.then6.i66:                                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %wrp.i36 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wrp.i36, align 4
  %111 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %lnode, align 8
  %hwp.i.i47 = getelementptr inbounds %struct.csio_lnode, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %hwp.i.i47 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hwp.i.i47, align 4
  %rnode.i.i48 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %115 = ptrtoint ptr %rnode.i.i48 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rnode.i.i48, align 4
  %117 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 872415232, ptr %110, align 8
  %flowid.i.i49 = getelementptr inbounds %struct.csio_rnode, ptr %116, i32 0, i32 2
  %118 = ptrtoint ptr %flowid.i.i49 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flowid.i.i49, align 4
  %shl.i.i50 = shl i32 %119, 8
  %or.i.i51 = or i32 %shl.i.i50, 2
  %flowid_len16.i.i52 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %110, i32 0, i32 1
  %120 = ptrtoint ptr %flowid_len16.i.i52 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or.i.i51, ptr %flowid_len16.i.i52, align 4
  %121 = ptrtoint ptr %req to i32
  %conv.i.i53 = zext i32 %121 to i64
  %cookie.i.i54 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %110, i32 0, i32 2
  %122 = ptrtoint ptr %cookie.i.i54 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %conv.i.i53, ptr %cookie.i.i54, align 8
  %q_arr.i.i55 = getelementptr inbounds %struct.csio_hw, ptr %114, i32 0, i32 3, i32 1
  %123 = ptrtoint ptr %q_arr.i.i55 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %q_arr.i.i55, align 4
  %iq_idx.i.i56 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %125 = ptrtoint ptr %iq_idx.i.i56 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %iq_idx.i.i56, align 4
  %arrayidx.i.i57 = getelementptr ptr, ptr %124, i32 %126
  %127 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i.i57, align 4
  %physiqid.i.i58 = getelementptr inbounds %struct.csio_q, ptr %128, i32 0, i32 9, i32 0, i32 1
  %129 = ptrtoint ptr %physiqid.i.i58 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %physiqid.i.i58, align 2
  %iqid.i.i59 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %110, i32 0, i32 3
  %131 = ptrtoint ptr %iqid.i.i59 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %iqid.i.i59, align 8
  %tmo.i.i60 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %132 = ptrtoint ptr %tmo.i.i60 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tmo.i.i60, align 8
  %conv2.i.i61 = trunc i32 %133 to i8
  %tmo_val.i.i62 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %110, i32 0, i32 4
  %134 = ptrtoint ptr %tmo_val.i.i62 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv2.i.i61, ptr %tmo_val.i.i62, align 2
  %sub_opcode_to_chk_all_io.i.i63 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %110, i32 0, i32 5
  %135 = ptrtoint ptr %sub_opcode_to_chk_all_io.i.i63 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 4, ptr %sub_opcode_to_chk_all_io.i.i63, align 1
  %r3.i.i64 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %110, i32 0, i32 6
  %t_cookie.i.i65 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %110, i32 0, i32 7
  %136 = ptrtoint ptr %r3.i.i64 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %r3.i.i64, align 4
  %137 = ptrtoint ptr %t_cookie.i.i65 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv.i.i53, ptr %t_cookie.i.i65, align 8
  br label %csio_scsi_abrt_cls.exit92thread-pre-split

if.else.i91:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #14
  %q_arr.i67 = getelementptr inbounds %struct.csio_hw, ptr %103, i32 0, i32 3, i32 1
  %138 = ptrtoint ptr %q_arr.i67 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %q_arr.i67, align 4
  %140 = ptrtoint ptr %eq_idx.i39 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %eq_idx.i39, align 16
  %arrayidx.i68 = getelementptr ptr, ptr %139, i32 %141
  %142 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i68, align 4
  %wrap.i69 = getelementptr inbounds %struct.csio_q, ptr %143, i32 0, i32 9, i32 0, i32 2
  %144 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %lnode, align 8
  %hwp.i31.i70 = getelementptr inbounds %struct.csio_lnode, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %hwp.i31.i70 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hwp.i31.i70, align 4
  %rnode.i32.i71 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %148 = ptrtoint ptr %rnode.i32.i71 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rnode.i32.i71, align 4
  %150 = ptrtoint ptr %wrap.i69 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 872415232, ptr %wrap.i69, align 8
  %flowid.i33.i72 = getelementptr inbounds %struct.csio_rnode, ptr %149, i32 0, i32 2
  %151 = ptrtoint ptr %flowid.i33.i72 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flowid.i33.i72, align 4
  %shl.i34.i73 = shl i32 %152, 8
  %or.i35.i74 = or i32 %shl.i34.i73, 2
  %flowid_len16.i36.i75 = getelementptr inbounds %struct.csio_q, ptr %143, i32 0, i32 9, i32 0, i32 3
  %153 = ptrtoint ptr %flowid_len16.i36.i75 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or.i35.i74, ptr %flowid_len16.i36.i75, align 4
  %154 = ptrtoint ptr %req to i32
  %conv.i37.i76 = zext i32 %154 to i64
  %cookie.i38.i77 = getelementptr inbounds %struct.csio_q, ptr %143, i32 0, i32 9, i32 0, i32 4
  %155 = ptrtoint ptr %cookie.i38.i77 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %conv.i37.i76, ptr %cookie.i38.i77, align 8
  %q_arr.i39.i78 = getelementptr inbounds %struct.csio_hw, ptr %147, i32 0, i32 3, i32 1
  %156 = ptrtoint ptr %q_arr.i39.i78 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %q_arr.i39.i78, align 4
  %iq_idx.i40.i79 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %158 = ptrtoint ptr %iq_idx.i40.i79 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %iq_idx.i40.i79, align 4
  %arrayidx.i41.i80 = getelementptr ptr, ptr %157, i32 %159
  %160 = ptrtoint ptr %arrayidx.i41.i80 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i41.i80, align 4
  %physiqid.i42.i81 = getelementptr inbounds %struct.csio_q, ptr %161, i32 0, i32 9, i32 0, i32 1
  %162 = ptrtoint ptr %physiqid.i42.i81 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %physiqid.i42.i81, align 2
  %iqid.i43.i82 = getelementptr inbounds %struct.csio_q, ptr %143, i32 0, i32 9, i32 1, i32 4
  %164 = ptrtoint ptr %iqid.i43.i82 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %iqid.i43.i82, align 8
  %tmo.i44.i83 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %165 = ptrtoint ptr %tmo.i44.i83 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tmo.i44.i83, align 8
  %conv2.i45.i84 = trunc i32 %166 to i8
  %tmo_val.i46.i85 = getelementptr inbounds %struct.csio_q, ptr %143, i32 0, i32 9, i32 1, i32 6
  %167 = ptrtoint ptr %tmo_val.i46.i85 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv2.i45.i84, ptr %tmo_val.i46.i85, align 2
  %sub_opcode_to_chk_all_io.i48.i86 = getelementptr inbounds %struct.csio_q, ptr %143, i32 0, i32 9, i32 1, i32 7
  %168 = ptrtoint ptr %sub_opcode_to_chk_all_io.i48.i86 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 4, ptr %sub_opcode_to_chk_all_io.i48.i86, align 1
  %r3.i49.i87 = getelementptr inbounds %struct.csio_q, ptr %143, i32 0, i32 9, i32 1, i32 8
  %t_cookie.i50.i88 = getelementptr inbounds %struct.csio_q, ptr %143, i32 0, i32 9, i32 1, i32 12
  %169 = ptrtoint ptr %r3.i49.i87 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %r3.i49.i87, align 4
  %170 = ptrtoint ptr %t_cookie.i50.i88 to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %conv.i37.i76, ptr %t_cookie.i50.i88, align 8
  %171 = ptrtoint ptr %wrp.i36 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %wrp.i36, align 4
  %173 = call ptr @memcpy(ptr %172, ptr %wrap.i69, i32 %108)
  %174 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %100, align 4
  %176 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %99, align 4
  %add.ptr.i89 = getelementptr i8, ptr %wrap.i69, i32 %177
  %sub.i90 = sub i32 32, %177
  %178 = call ptr @memcpy(ptr %175, ptr %add.ptr.i89, i32 %sub.i90)
  br label %csio_scsi_abrt_cls.exit92thread-pre-split

csio_scsi_abrt_cls.exit92thread-pre-split:        ; preds = %if.else.i91, %if.then6.i66
  %179 = ptrtoint ptr %drv_status.i42 to i32
  call void @__asan_load2_noabort(i32 %179)
  %.pr95 = load i16, ptr %drv_status.i42, align 2
  br label %csio_scsi_abrt_cls.exit92

csio_scsi_abrt_cls.exit92:                        ; preds = %csio_scsi_abrt_cls.exit92thread-pre-split, %sw.bb5.csio_scsi_abrt_cls.exit92_crit_edge
  %180 = phi i16 [ %.pr95, %csio_scsi_abrt_cls.exit92thread-pre-split ], [ %conv.i41, %sw.bb5.csio_scsi_abrt_cls.exit92_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i36) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %cmp8 = icmp eq i16 %180, 0
  br i1 %cmp8, label %if.then10, label %csio_scsi_abrt_cls.exit92.sw.epilog_crit_edge

csio_scsi_abrt_cls.exit92.sw.epilog_crit_edge:    ; preds = %csio_scsi_abrt_cls.exit92
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then10:                                        ; preds = %csio_scsi_abrt_cls.exit92
  call void @__sanitizer_cov_trace_pc() #14
  %181 = ptrtoint ptr %eq_idx.i39 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %eq_idx.i39, align 16
  %call12 = call i32 @csio_wr_issue(ptr noundef %3, i32 noundef %182, i1 noundef zeroext false) #12
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 7
  %183 = ptrtoint ptr %wr_status to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 255, ptr %wr_status, align 4
  %n_tm_active17 = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 27
  %184 = ptrtoint ptr %n_tm_active17 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %n_tm_active17, align 8
  %dec18 = add i32 %185, -1
  store i32 %dec18, ptr %n_tm_active17, align 8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb15, %if.then10, %if.then, %list_del_init.exit
  %csio_scsis_closing.sink = phi ptr [ @csio_scsis_closing, %if.then10 ], [ @csio_scsis_aborting, %if.then ], [ @csio_scsis_uninit, %sw.bb15 ], [ @csio_scsis_uninit, %list_del_init.exit ]
  %sm_state.i93 = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %186 = ptrtoint ptr %sm_state.i93 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %csio_scsis_closing.sink, ptr %sm_state.i93, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %csio_scsi_abrt_cls.exit92.sw.epilog_crit_edge, %csio_scsi_abrt_cls.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_get(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_scsi_init_write_wr(ptr noundef %req, ptr noundef %wrp, i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  %rnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %4 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rnode, align 4
  %proto_cmd_len = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %proto_cmd_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %proto_cmd_len, align 1
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 12
  %8 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scratch1, align 4
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, 822083584
  %10 = ptrtoint ptr %wrp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %wrp, align 8
  %flowid = getelementptr inbounds %struct.csio_rnode, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %flowid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flowid, align 4
  %shl1 = shl i32 %12, 8
  %sub = add i32 %size, 15
  %div49 = lshr i32 %sub, 4
  %or3 = or i32 %shl1, %div49
  %flowid_len16 = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 1
  %13 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or3, ptr %flowid_len16, align 4
  %14 = ptrtoint ptr %req to i32
  %conv4 = zext i32 %14 to i64
  %cookie = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 2
  %15 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv4, ptr %cookie, align 8
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %q_arr, align 4
  %iq_idx = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %iq_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iq_idx, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %physiqid = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 9, i32 0, i32 1
  %22 = ptrtoint ptr %physiqid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %physiqid, align 2
  %iqid = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 3
  %24 = ptrtoint ptr %iqid to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %iqid, align 8
  %tmo = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %25 = ptrtoint ptr %tmo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmo, align 8
  %conv5 = trunc i32 %26 to i8
  %tmo_val = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 4
  %27 = ptrtoint ptr %tmo_val to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv5, ptr %tmo_val, align 2
  %use_xfer_cnt = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 5
  %28 = ptrtoint ptr %use_xfer_cnt to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %use_xfer_cnt, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %9, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i, align 4
  %xfer_cnt = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 7
  %31 = ptrtoint ptr %xfer_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %xfer_cnt, align 8
  %32 = load i32, ptr %length.i, align 4
  %ini_xfer_cnt = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 8
  %33 = ptrtoint ptr %ini_xfer_cnt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ini_xfer_cnt, align 4
  %len = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 6, i32 3
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %rsp_dmalen = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 10
  %36 = ptrtoint ptr %rsp_dmalen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rsp_dmalen, align 8
  %paddr = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %paddr, align 4
  %conv8 = zext i32 %38 to i64
  %rsp_dmaaddr = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 9
  %39 = ptrtoint ptr %rsp_dmaaddr to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv8, ptr %rsp_dmaaddr, align 8
  %r4 = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 11
  %40 = ptrtoint ptr %r4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %r4, align 4
  %u = getelementptr inbounds %struct.fw_scsi_write_wr, ptr %wrp, i32 0, i32 6
  %41 = ptrtoint ptr %wrp to i32
  %add15 = add i32 %41, 48
  %42 = inttoptr i32 %add15 to ptr
  %43 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %u, align 4
  %44 = load ptr, ptr %scratch1, align 4
  %Message.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 22, i32 6
  %45 = ptrtoint ptr %Message.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %Message.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i = icmp eq i32 %46, 0
  br i1 %cmp.i, label %if.then.i, label %if.else10.i, !prof !198

if.then.i:                                        ; preds = %entry
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lun.i, align 8
  tail call void @int_to_scsilun(i64 noundef %50, ptr noundef %42) #12
  %fc_tm_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 3
  %51 = ptrtoint ptr %fc_tm_flags.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %fc_tm_flags.i, align 2
  %fc_cmdref.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 1
  %52 = ptrtoint ptr %fc_cmdref.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %fc_cmdref.i, align 4
  %fc_cdb.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 5
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 16
  %53 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmnd.i, align 4
  %55 = call ptr @memcpy(ptr %fc_cdb.i, ptr %54, i32 16)
  %fc_pri_ta.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 2
  %56 = ptrtoint ptr %fc_pri_ta.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %fc_pri_ta.i, align 1
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 17, i32 1
  %57 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length.i.i, align 4
  %fc_dl.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 6
  %59 = ptrtoint ptr %fc_dl.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %fc_dl.i, align 4
  %nsge.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 3
  %60 = ptrtoint ptr %nsge.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nsge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool2.not.i = icmp eq i32 %61, 0
  br i1 %tobool2.not.i, label %if.else7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  %datadir.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 5
  %62 = ptrtoint ptr %datadir.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %datadir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp4.i = icmp eq i32 %63, 1
  %fc_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 4
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %fc_flags.i, align 1
  br label %csio_scsi_fcp_cmnd.exit

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %fc_flags.i, align 1
  br label %csio_scsi_fcp_cmnd.exit

if.else7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %fc_flags8.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 4
  %66 = ptrtoint ptr %fc_flags8.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %fc_flags8.i, align 1
  br label %csio_scsi_fcp_cmnd.exit

if.else10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %67 = call ptr @memset(ptr %42, i32 0, i32 32)
  %device11.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 1
  %68 = ptrtoint ptr %device11.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device11.i, align 4
  %lun12.i = getelementptr inbounds %struct.scsi_device, ptr %69, i32 0, i32 18
  %70 = ptrtoint ptr %lun12.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %lun12.i, align 8
  tail call void @int_to_scsilun(i64 noundef %71, ptr noundef %42) #12
  %72 = ptrtoint ptr %Message.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %Message.i, align 4
  %conv.i = trunc i32 %73 to i8
  %fc_tm_flags16.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 3
  %74 = ptrtoint ptr %fc_tm_flags16.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.i, ptr %fc_tm_flags16.i, align 2
  br label %csio_scsi_fcp_cmnd.exit

csio_scsi_fcp_cmnd.exit:                          ; preds = %if.else10.i, %if.else7.i, %if.else.i, %if.then5.i
  %add18 = add nuw nsw i32 %conv, 15
  %and = and i32 %add18, 496
  %add19 = add i32 %and, %add15
  %75 = inttoptr i32 %add19 to ptr
  tail call fastcc void @csio_scsi_init_ultptx_dsgl(ptr noundef %req, ptr noundef %75)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_scsi_init_ultptx_dsgl(ptr noundef readonly %req, ptr nocapture noundef writeonly %sgl) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 12
  %0 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scratch1, align 4
  %nsge = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %nsge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsge, align 4
  %or = or i32 %3, -2105540608
  %4 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %sgl, align 8
  %dcopy = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 16
  %5 = ptrtoint ptr %dcopy to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dcopy, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %if.else22, !prof !198

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %nsge to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nsge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13.not = icmp eq i32 %8, 0
  br i1 %cmp13.not, label %if.then.if.end92_crit_edge, label %for.inc.peel

if.then.if.end92_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

for.inc.peel:                                     ; preds = %if.then
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdb.i, align 4
  %len0 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 1
  %addr0 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 2
  %dma_address.peel = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dma_address.peel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address.peel, align 4
  %conv.peel = zext i32 %12 to i64
  %13 = ptrtoint ptr %addr0 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.peel, ptr %addr0, align 8
  %dma_length.peel = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 4
  %14 = ptrtoint ptr %dma_length.peel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_length.peel, align 4
  %16 = ptrtoint ptr %len0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %len0, align 4
  %call21.peel = tail call ptr @sg_next(ptr noundef %10) #12
  %17 = ptrtoint ptr %nsge to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nsge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.peel = icmp ugt i32 %18, 1
  br i1 %cmp.peel, label %if.end.preheader, label %for.inc.peel.if.end92_crit_edge

for.inc.peel.if.end92_crit_edge:                  ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.end.preheader:                                 ; preds = %for.inc.peel
  %add.ptr = getelementptr %struct.ulptx_sgl, ptr %sgl, i32 1
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %if.end.preheader
  %sge_pair.018 = phi ptr [ %sge_pair.1, %for.inc.if.end_crit_edge ], [ %add.ptr, %if.end.preheader ]
  %sgel.016 = phi ptr [ %call21, %for.inc.if.end_crit_edge ], [ %call21.peel, %if.end.preheader ]
  %i.014 = phi i32 [ %inc, %for.inc.if.end_crit_edge ], [ 1, %if.end.preheader ]
  %19 = and i32 %i.014, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not.not = icmp eq i32 %19, 0
  %dma_address9 = getelementptr inbounds %struct.scatterlist, ptr %sgel.016, i32 0, i32 3
  %20 = ptrtoint ptr %dma_address9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address9, align 4
  %conv10 = zext i32 %21 to i64
  br i1 %tobool7.not.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.ulptx_sge_pair, ptr %sge_pair.018, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv10, ptr %arrayidx, align 8
  %dma_length11 = getelementptr inbounds %struct.scatterlist, ptr %sgel.016, i32 0, i32 4
  %23 = ptrtoint ptr %dma_length11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_length11, align 4
  %arrayidx12 = getelementptr [2 x i32], ptr %sge_pair.018, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx12, align 4
  %incdec.ptr = getelementptr %struct.ulptx_sge_pair, ptr %sge_pair.018, i32 1
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %addr15 = getelementptr inbounds %struct.ulptx_sge_pair, ptr %sge_pair.018, i32 0, i32 1
  %26 = ptrtoint ptr %addr15 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv10, ptr %addr15, align 8
  %dma_length17 = getelementptr inbounds %struct.scatterlist, ptr %sgel.016, i32 0, i32 4
  %27 = ptrtoint ptr %dma_length17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_length17, align 4
  %29 = ptrtoint ptr %sge_pair.018 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sge_pair.018, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then8
  %sge_pair.1 = phi ptr [ %incdec.ptr, %if.then8 ], [ %sge_pair.018, %if.else ]
  %inc = add nuw i32 %i.014, 1
  %call21 = tail call ptr @sg_next(ptr noundef %sgel.016) #12
  %30 = ptrtoint ptr %nsge to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nsge, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.inc.if.end_crit_edge, label %for.inc.if.end92_crit_edge, !llvm.loop !205

for.inc.if.end92_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else22:                                        ; preds = %entry
  %gen_list = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 14
  %32 = ptrtoint ptr %gen_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp.05 = load ptr, ptr %gen_list, align 4
  %cmp.i.not6 = icmp eq ptr %tmp.05, %gen_list
  br i1 %cmp.i.not6, label %if.else22.if.end92_crit_edge, label %for.body30.lr.ph

if.else22.if.end92_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

for.body30.lr.ph:                                 ; preds = %if.else22
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length.i, align 4
  %addr035 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 2
  %len040 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 1
  %add.ptr41 = getelementptr %struct.ulptx_sgl, ptr %sgl, i32 1
  br label %for.body30

for.body30:                                       ; preds = %if.end78.for.body30_crit_edge, %for.body30.lr.ph
  %tmp.012 = phi ptr [ %tmp.05, %for.body30.lr.ph ], [ %tmp.0, %if.end78.for.body30_crit_edge ]
  %sge_pair.211 = phi ptr [ null, %for.body30.lr.ph ], [ %sge_pair.3, %if.end78.for.body30_crit_edge ]
  %i.19 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc88, %if.end78.for.body30_crit_edge ]
  %xfer_len.07 = phi i32 [ %34, %for.body30.lr.ph ], [ %57, %if.end78.for.body30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.19)
  %cmp31 = icmp eq i32 %i.19, 0
  br i1 %cmp31, label %if.then33, label %if.else42

if.then33:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  %paddr = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.012, i32 0, i32 2
  %35 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %paddr, align 4
  %conv34 = zext i32 %36 to i64
  %37 = ptrtoint ptr %addr035 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv34, ptr %addr035, align 8
  %len36 = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.012, i32 0, i32 3
  %38 = ptrtoint ptr %len36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len36, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %xfer_len.07, i32 %39)
  %41 = ptrtoint ptr %len040 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %len040, align 4
  br label %if.end78

if.else42:                                        ; preds = %for.body30
  %42 = and i32 %i.19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool45.not.not = icmp eq i32 %42, 0
  %paddr47 = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.012, i32 0, i32 2
  %43 = ptrtoint ptr %paddr47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %paddr47, align 4
  %conv48 = zext i32 %44 to i64
  br i1 %tobool45.not.not, label %if.then46, label %if.else62

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx50 = getelementptr %struct.ulptx_sge_pair, ptr %sge_pair.211, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv48, ptr %arrayidx50, align 8
  %len51 = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.012, i32 0, i32 3
  %46 = ptrtoint ptr %len51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len51, align 4
  %48 = tail call i32 @llvm.umin.i32(i32 %xfer_len.07, i32 %47)
  %arrayidx60 = getelementptr [2 x i32], ptr %sge_pair.211, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx60, align 4
  %incdec.ptr61 = getelementptr %struct.ulptx_sge_pair, ptr %sge_pair.211, i32 1
  br label %if.end78

if.else62:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  %addr65 = getelementptr inbounds %struct.ulptx_sge_pair, ptr %sge_pair.211, i32 0, i32 1
  %50 = ptrtoint ptr %addr65 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv48, ptr %addr65, align 8
  %len67 = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.012, i32 0, i32 3
  %51 = ptrtoint ptr %len67 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len67, align 4
  %53 = tail call i32 @llvm.umin.i32(i32 %xfer_len.07, i32 %52)
  %54 = ptrtoint ptr %sge_pair.211 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %sge_pair.211, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.else62, %if.then46, %if.then33
  %sge_pair.3 = phi ptr [ %add.ptr41, %if.then33 ], [ %incdec.ptr61, %if.then46 ], [ %sge_pair.211, %if.else62 ]
  %len79 = getelementptr inbounds %struct.csio_dma_buf, ptr %tmp.012, i32 0, i32 3
  %55 = ptrtoint ptr %len79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len79, align 4
  %57 = tail call i32 @llvm.usub.sat.i32(i32 %xfer_len.07, i32 %56)
  %inc88 = add i32 %i.19, 1
  %58 = ptrtoint ptr %tmp.012 to i32
  call void @__asan_load4_noabort(i32 %58)
  %tmp.0 = load ptr, ptr %tmp.012, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %gen_list
  br i1 %cmp.i.not, label %if.end78.if.end92_crit_edge, label %if.end78.for.body30_crit_edge

if.end78.for.body30_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30

if.end78.if.end92_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.end92:                                         ; preds = %if.end78.if.end92_crit_edge, %if.else22.if.end92_crit_edge, %for.inc.if.end92_crit_edge, %for.inc.peel.if.end92_crit_edge, %if.then.if.end92_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_scsi_init_read_wr(ptr noundef %req, ptr noundef %wrp, i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  %rnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %4 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rnode, align 4
  %proto_cmd_len = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %proto_cmd_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %proto_cmd_len, align 1
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 12
  %8 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scratch1, align 4
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, 838860800
  %10 = ptrtoint ptr %wrp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %wrp, align 8
  %flowid = getelementptr inbounds %struct.csio_rnode, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %flowid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flowid, align 4
  %shl1 = shl i32 %12, 8
  %sub = add i32 %size, 15
  %div49 = lshr i32 %sub, 4
  %or3 = or i32 %shl1, %div49
  %flowid_len16 = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 1
  %13 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or3, ptr %flowid_len16, align 4
  %14 = ptrtoint ptr %req to i32
  %conv4 = zext i32 %14 to i64
  %cookie = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 2
  %15 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv4, ptr %cookie, align 8
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %q_arr, align 4
  %iq_idx = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %iq_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iq_idx, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %physiqid = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 9, i32 0, i32 1
  %22 = ptrtoint ptr %physiqid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %physiqid, align 2
  %iqid = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 3
  %24 = ptrtoint ptr %iqid to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %iqid, align 8
  %tmo = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %25 = ptrtoint ptr %tmo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmo, align 8
  %conv5 = trunc i32 %26 to i8
  %tmo_val = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 4
  %27 = ptrtoint ptr %tmo_val to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv5, ptr %tmo_val, align 2
  %use_xfer_cnt = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 5
  %28 = ptrtoint ptr %use_xfer_cnt to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %use_xfer_cnt, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %9, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i, align 4
  %xfer_cnt = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 7
  %31 = ptrtoint ptr %xfer_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %xfer_cnt, align 8
  %32 = load i32, ptr %length.i, align 4
  %ini_xfer_cnt = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 8
  %33 = ptrtoint ptr %ini_xfer_cnt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ini_xfer_cnt, align 4
  %len = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 6, i32 3
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %rsp_dmalen = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 10
  %36 = ptrtoint ptr %rsp_dmalen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rsp_dmalen, align 8
  %paddr = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %paddr, align 4
  %conv8 = zext i32 %38 to i64
  %rsp_dmaaddr = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 9
  %39 = ptrtoint ptr %rsp_dmaaddr to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv8, ptr %rsp_dmaaddr, align 8
  %r4 = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 11
  %40 = ptrtoint ptr %r4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %r4, align 4
  %u = getelementptr inbounds %struct.fw_scsi_read_wr, ptr %wrp, i32 0, i32 6
  %41 = ptrtoint ptr %wrp to i32
  %add15 = add i32 %41, 48
  %42 = inttoptr i32 %add15 to ptr
  %43 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %u, align 4
  %44 = load ptr, ptr %scratch1, align 4
  %Message.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 22, i32 6
  %45 = ptrtoint ptr %Message.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %Message.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i = icmp eq i32 %46, 0
  br i1 %cmp.i, label %if.then.i, label %if.else10.i, !prof !198

if.then.i:                                        ; preds = %entry
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lun.i, align 8
  tail call void @int_to_scsilun(i64 noundef %50, ptr noundef %42) #12
  %fc_tm_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 3
  %51 = ptrtoint ptr %fc_tm_flags.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %fc_tm_flags.i, align 2
  %fc_cmdref.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 1
  %52 = ptrtoint ptr %fc_cmdref.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %fc_cmdref.i, align 4
  %fc_cdb.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 5
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 16
  %53 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmnd.i, align 4
  %55 = call ptr @memcpy(ptr %fc_cdb.i, ptr %54, i32 16)
  %fc_pri_ta.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 2
  %56 = ptrtoint ptr %fc_pri_ta.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %fc_pri_ta.i, align 1
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 17, i32 1
  %57 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length.i.i, align 4
  %fc_dl.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 6
  %59 = ptrtoint ptr %fc_dl.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %fc_dl.i, align 4
  %nsge.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 3
  %60 = ptrtoint ptr %nsge.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nsge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool2.not.i = icmp eq i32 %61, 0
  br i1 %tobool2.not.i, label %if.else7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  %datadir.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 5
  %62 = ptrtoint ptr %datadir.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %datadir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp4.i = icmp eq i32 %63, 1
  %fc_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 4
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %fc_flags.i, align 1
  br label %csio_scsi_fcp_cmnd.exit

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %fc_flags.i, align 1
  br label %csio_scsi_fcp_cmnd.exit

if.else7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %fc_flags8.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 4
  %66 = ptrtoint ptr %fc_flags8.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %fc_flags8.i, align 1
  br label %csio_scsi_fcp_cmnd.exit

if.else10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %67 = call ptr @memset(ptr %42, i32 0, i32 32)
  %device11.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 1
  %68 = ptrtoint ptr %device11.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device11.i, align 4
  %lun12.i = getelementptr inbounds %struct.scsi_device, ptr %69, i32 0, i32 18
  %70 = ptrtoint ptr %lun12.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %lun12.i, align 8
  tail call void @int_to_scsilun(i64 noundef %71, ptr noundef %42) #12
  %72 = ptrtoint ptr %Message.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %Message.i, align 4
  %conv.i = trunc i32 %73 to i8
  %fc_tm_flags16.i = getelementptr inbounds %struct.fcp_cmnd, ptr %42, i32 0, i32 3
  %74 = ptrtoint ptr %fc_tm_flags16.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.i, ptr %fc_tm_flags16.i, align 2
  br label %csio_scsi_fcp_cmnd.exit

csio_scsi_fcp_cmnd.exit:                          ; preds = %if.else10.i, %if.else7.i, %if.else.i, %if.then5.i
  %add18 = add nuw nsw i32 %conv, 15
  %and = and i32 %add18, 496
  %add19 = add i32 %and, %add15
  %75 = inttoptr i32 %add19 to ptr
  tail call fastcc void @csio_scsi_init_ultptx_dsgl(ptr noundef %req, ptr noundef %75)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_scsi_init_cmd_wr(ptr noundef %req, ptr noundef %addr, i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  %rnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 10
  %4 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rnode, align 4
  %proto_cmd_len = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %proto_cmd_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %proto_cmd_len, align 1
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, 855638016
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %addr, align 8
  %flowid = getelementptr inbounds %struct.csio_rnode, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %flowid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flowid, align 4
  %shl1 = shl i32 %10, 8
  %sub = add i32 %size, 15
  %div37 = lshr i32 %sub, 4
  %or3 = or i32 %shl1, %div37
  %flowid_len16 = getelementptr inbounds %struct.fw_scsi_cmd_wr, ptr %addr, i32 0, i32 1
  %11 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or3, ptr %flowid_len16, align 4
  %12 = ptrtoint ptr %req to i32
  %conv4 = zext i32 %12 to i64
  %cookie = getelementptr inbounds %struct.fw_scsi_cmd_wr, ptr %addr, i32 0, i32 2
  %13 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv4, ptr %cookie, align 8
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %q_arr, align 4
  %iq_idx = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %iq_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iq_idx, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %physiqid = getelementptr inbounds %struct.csio_q, ptr %19, i32 0, i32 9, i32 0, i32 1
  %20 = ptrtoint ptr %physiqid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %physiqid, align 2
  %iqid = getelementptr inbounds %struct.fw_scsi_cmd_wr, ptr %addr, i32 0, i32 3
  %22 = ptrtoint ptr %iqid to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %iqid, align 8
  %tmo = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 4
  %23 = ptrtoint ptr %tmo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmo, align 8
  %conv5 = trunc i32 %24 to i8
  %tmo_val = getelementptr inbounds %struct.fw_scsi_cmd_wr, ptr %addr, i32 0, i32 4
  %25 = ptrtoint ptr %tmo_val to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv5, ptr %tmo_val, align 2
  %r3 = getelementptr inbounds %struct.fw_scsi_cmd_wr, ptr %addr, i32 0, i32 5
  %26 = ptrtoint ptr %r3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %r3, align 1
  %r5 = getelementptr inbounds %struct.fw_scsi_cmd_wr, ptr %addr, i32 0, i32 7
  %27 = ptrtoint ptr %r5 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %r5, align 8
  %len = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %rsp_dmalen = getelementptr inbounds %struct.fw_scsi_cmd_wr, ptr %addr, i32 0, i32 9
  %30 = ptrtoint ptr %rsp_dmalen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rsp_dmalen, align 8
  %paddr = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %paddr, align 4
  %conv7 = zext i32 %32 to i64
  %rsp_dmaaddr = getelementptr inbounds %struct.fw_scsi_cmd_wr, ptr %addr, i32 0, i32 8
  %33 = ptrtoint ptr %rsp_dmaaddr to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv7, ptr %rsp_dmaaddr, align 8
  %r6 = getelementptr inbounds %struct.fw_scsi_cmd_wr, ptr %addr, i32 0, i32 10
  %34 = ptrtoint ptr %r6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %r6, align 4
  %u = getelementptr inbounds %struct.fw_scsi_cmd_wr, ptr %addr, i32 0, i32 6
  %35 = ptrtoint ptr %addr to i32
  %add14 = add i32 %35, 48
  %36 = inttoptr i32 %add14 to ptr
  %scratch1.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 12
  %37 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %u, align 4
  %38 = ptrtoint ptr %scratch1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %scratch1.i, align 4
  %Message.i = getelementptr inbounds %struct.scsi_cmnd, ptr %39, i32 0, i32 22, i32 6
  %40 = ptrtoint ptr %Message.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %Message.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i = icmp eq i32 %41, 0
  br i1 %cmp.i, label %if.then.i, label %if.else10.i, !prof !198

if.then.i:                                        ; preds = %entry
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %43, i32 0, i32 18
  %44 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %lun.i, align 8
  tail call void @int_to_scsilun(i64 noundef %45, ptr noundef %36) #12
  %fc_tm_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %36, i32 0, i32 3
  %46 = ptrtoint ptr %fc_tm_flags.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %fc_tm_flags.i, align 2
  %fc_cmdref.i = getelementptr inbounds %struct.fcp_cmnd, ptr %36, i32 0, i32 1
  %47 = ptrtoint ptr %fc_cmdref.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %fc_cmdref.i, align 4
  %fc_cdb.i = getelementptr inbounds %struct.fcp_cmnd, ptr %36, i32 0, i32 5
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %39, i32 0, i32 16
  %48 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cmnd.i, align 4
  %50 = call ptr @memcpy(ptr %fc_cdb.i, ptr %49, i32 16)
  %fc_pri_ta.i = getelementptr inbounds %struct.fcp_cmnd, ptr %36, i32 0, i32 2
  %51 = ptrtoint ptr %fc_pri_ta.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %fc_pri_ta.i, align 1
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %39, i32 0, i32 17, i32 1
  %52 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length.i.i, align 4
  %fc_dl.i = getelementptr inbounds %struct.fcp_cmnd, ptr %36, i32 0, i32 6
  %54 = ptrtoint ptr %fc_dl.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %fc_dl.i, align 4
  %nsge.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 3
  %55 = ptrtoint ptr %nsge.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nsge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool2.not.i = icmp eq i32 %56, 0
  br i1 %tobool2.not.i, label %if.else7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  %datadir.i = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 5
  %57 = ptrtoint ptr %datadir.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %datadir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp4.i = icmp eq i32 %58, 1
  %fc_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %36, i32 0, i32 4
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %fc_flags.i, align 1
  br label %csio_scsi_fcp_cmnd.exit

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %fc_flags.i, align 1
  br label %csio_scsi_fcp_cmnd.exit

if.else7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %fc_flags8.i = getelementptr inbounds %struct.fcp_cmnd, ptr %36, i32 0, i32 4
  %61 = ptrtoint ptr %fc_flags8.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %fc_flags8.i, align 1
  br label %csio_scsi_fcp_cmnd.exit

if.else10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %62 = call ptr @memset(ptr %36, i32 0, i32 32)
  %device11.i = getelementptr inbounds %struct.scsi_cmnd, ptr %39, i32 0, i32 1
  %63 = ptrtoint ptr %device11.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device11.i, align 4
  %lun12.i = getelementptr inbounds %struct.scsi_device, ptr %64, i32 0, i32 18
  %65 = ptrtoint ptr %lun12.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %lun12.i, align 8
  tail call void @int_to_scsilun(i64 noundef %66, ptr noundef %36) #12
  %67 = ptrtoint ptr %Message.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %Message.i, align 4
  %conv.i = trunc i32 %68 to i8
  %fc_tm_flags16.i = getelementptr inbounds %struct.fcp_cmnd, ptr %36, i32 0, i32 3
  %69 = ptrtoint ptr %fc_tm_flags16.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.i, ptr %fc_tm_flags16.i, align 2
  br label %csio_scsi_fcp_cmnd.exit

csio_scsi_fcp_cmnd.exit:                          ; preds = %if.else10.i, %if.else7.i, %if.else.i, %if.then5.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_is_rnode_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @csio_scsis_shost_cmpl_await(ptr nocapture noundef writeonly %req, i32 noundef %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %evt, label %entry.sw.epilog_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge3
    i32 8, label %sw.bb1
  ]

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge3
  %drv_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %1 = ptrtoint ptr %drv_status to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %drv_status, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @csio_scsis_uninit, ptr %sm_state.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_scsis_aborting(ptr noundef %req, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %evt, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
    i32 5, label %sw.bb2
    i32 8, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %drv_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %5 = ptrtoint ptr %drv_status to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -125, ptr %drv_status, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_abrt_dups = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 21
  %6 = ptrtoint ptr %n_abrt_dups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_abrt_dups, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %n_abrt_dups, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %drv_status3 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %8 = ptrtoint ptr %drv_status3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %drv_status3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -125, i16 %9)
  %cmp.not = icmp eq i16 %9, -125
  br i1 %cmp.not, label %sw.bb2.if.end_crit_edge, label %do.end

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef %req) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb2.if.end_crit_edge
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 7
  %12 = ptrtoint ptr %wr_status to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %wr_status, align 4
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %13, label %if.end.if.end17_crit_edge [
    i16 0, label %if.end.if.then15_crit_edge
    i16 22, label %if.end.if.then15_crit_edge42
    i16 132, label %if.end.if.then15_crit_edge43
    i16 133, label %if.end.if.then15_crit_edge44
    i16 134, label %if.end.if.then15_crit_edge45
    i16 135, label %if.end.if.then15_crit_edge46
    i16 138, label %if.end.if.then15_crit_edge47
  ]

if.end.if.then15_crit_edge47:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.if.then15_crit_edge46:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.if.then15_crit_edge45:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.if.then15_crit_edge44:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.if.then15_crit_edge43:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.if.then15_crit_edge42:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.end.if.then15_crit_edge, %if.end.if.then15_crit_edge42, %if.end.if.then15_crit_edge43, %if.end.if.then15_crit_edge44, %if.end.if.then15_crit_edge45, %if.end.if.then15_crit_edge46, %if.end.if.then15_crit_edge47
  %15 = ptrtoint ptr %wr_status to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 128, ptr %wr_status, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %n_active = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 26
  %16 = ptrtoint ptr %n_active to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_active, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %n_active, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.list_del_init.exit_crit_edge

if.end17.list_del_init.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end17.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %req, ptr %req, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %req, ptr %prev.i3.i, align 4
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @csio_scsis_uninit, ptr %sm_state.i, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wr_status21 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 7
  %27 = ptrtoint ptr %wr_status21 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 255, ptr %wr_status21, align 4
  %n_active23 = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 26
  %28 = ptrtoint ptr %n_active23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_active23, align 4
  %dec24 = add i32 %29, -1
  store i32 %dec24, ptr %n_active23, align 4
  %sm_state.i40 = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %30 = ptrtoint ptr %sm_state.i40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @csio_scsis_uninit, ptr %sm_state.i40, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %list_del_init.exit, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_scsis_closing(ptr noundef %req, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %evt, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 7, label %sw.bb1
    i32 8, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %drv_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %5 = ptrtoint ptr %drv_status to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -125, ptr %drv_status, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %drv_status2 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 8
  %6 = ptrtoint ptr %drv_status2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %drv_status2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -125, i16 %7)
  %cmp.not = icmp eq i16 %7, -125
  br i1 %cmp.not, label %sw.bb1.if.end_crit_edge, label %do.end

sw.bb1.if.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev, ptr noundef nonnull @.str.81, ptr noundef %req) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb1.if.end_crit_edge
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 7
  %10 = ptrtoint ptr %wr_status to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 131, ptr %wr_status, align 4
  %n_active = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 26
  %11 = ptrtoint ptr %n_active to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_active, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %n_active, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %req, ptr %req, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %req, ptr %prev.i3.i, align 4
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %21 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @csio_scsis_uninit, ptr %sm_state.i, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wr_status6 = getelementptr inbounds %struct.csio_ioreq, ptr %req, i32 0, i32 7
  %22 = ptrtoint ptr %wr_status6 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 255, ptr %wr_status6, align 4
  %n_active8 = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2, i32 8, i32 26
  %23 = ptrtoint ptr %n_active8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_active8, align 4
  %dec9 = add i32 %24, -1
  store i32 %dec9, ptr %n_active8, align 4
  %sm_state.i21 = getelementptr inbounds %struct.csio_sm, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %sm_state.i21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @csio_scsis_uninit, ptr %sm_state.i21, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %list_del_init.exit, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !130, !131, !133, !135, !137, !138, !140, !141, !143, !144, !146, !148, !150, !151, !153, !155, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !174, !176, !177, !179, !180, !181, !182, !184, !185, !186}
!llvm.named.register.sp = !{!188}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @csio_scsi_eqsize, !1, !"csio_scsi_eqsize", i1 false, i1 false}
!1 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 56, i32 5}
!2 = !{ptr @csio_scsi_iqlen, !3, !"csio_scsi_iqlen", i1 false, i1 false}
!3 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 57, i32 5}
!4 = !{ptr @csio_scsi_ioreqs, !5, !"csio_scsi_ioreqs", i1 false, i1 false}
!5 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 58, i32 5}
!6 = !{ptr @csio_delta_scan_tmo, !7, !"csio_delta_scan_tmo", i1 false, i1 false}
!7 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 60, i32 10}
!8 = !{ptr @csio_lun_qdepth, !9, !"csio_lun_qdepth", i1 false, i1 false}
!9 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 61, i32 5}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1115, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @csio_scsi_cmpl_handler._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @csio_scsi_cmpl_handler._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1146, i32 2}
!20 = !{ptr @csio_scsi_cmpl_handler._entry.5, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @csio_scsi_cmpl_handler._entry_ptr.7, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2271, i32 12}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2272, i32 16}
!26 = !{ptr @csio_fcoe_shost_template, !27, !"csio_fcoe_shost_template", i1 false, i1 false}
!27 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2269, i32 27}
!28 = !{ptr @csio_fcoe_shost_vport_template, !29, !"csio_fcoe_shost_vport_template", i1 false, i1 false}
!29 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2288, i32 27}
!30 = !{ptr @csio_scsim_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2429, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2437, i32 4}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @csio_scsim_init._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @csio_scsim_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2450, i32 4}
!41 = !{ptr @csio_scsim_init._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @csio_scsim_init._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @csio_max_scan_tmo, !44, !"csio_max_scan_tmo", i1 false, i1 false}
!44 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 59, i32 10}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1817, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @csio_queuecommand._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @csio_queuecommand._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1827, i32 3}
!52 = !{ptr @csio_queuecommand._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @csio_queuecommand._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1866, i32 3}
!56 = !{ptr @csio_queuecommand._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @csio_queuecommand._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1534, i32 4}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @csio_scsi_copy_to_sgl._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @csio_scsi_copy_to_sgl._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1629, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @csio_scsi_err_handler._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @csio_scsi_err_handler._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1638, i32 3}
!70 = !{ptr @csio_scsi_err_handler._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @csio_scsi_err_handler._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1710, i32 3}
!74 = !{ptr @csio_scsi_err_handler._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @csio_scsi_err_handler._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1974, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @csio_eh_abort_handler._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @csio_eh_abort_handler._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1993, i32 3}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @csio_eh_abort_handler._entry.37, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @csio_eh_abort_handler._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1999, i32 3}
!88 = !{ptr @csio_eh_abort_handler._entry.41, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @csio_eh_abort_handler._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2083, i32 3}
!92 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @csio_eh_lun_reset_handler._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @csio_eh_lun_reset_handler._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2103, i32 3}
!97 = !{ptr @csio_eh_lun_reset_handler._entry.46, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @csio_eh_lun_reset_handler._entry_ptr.48, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2114, i32 3}
!101 = !{ptr @csio_eh_lun_reset_handler._entry.49, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @csio_eh_lun_reset_handler._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2155, i32 3}
!105 = !{ptr @csio_eh_lun_reset_handler._entry.52, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @csio_eh_lun_reset_handler._entry_ptr.54, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2169, i32 3}
!109 = !{ptr @csio_eh_lun_reset_handler._entry.55, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @csio_eh_lun_reset_handler._entry_ptr.57, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2182, i32 3}
!113 = !{ptr @csio_eh_lun_reset_handler._entry.58, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @csio_eh_lun_reset_handler._entry_ptr.60, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2201, i32 3}
!117 = !{ptr @csio_eh_lun_reset_handler._entry.61, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @csio_eh_lun_reset_handler._entry_ptr.63, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2213, i32 2}
!121 = !{ptr @csio_eh_lun_reset_handler._entry.64, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @csio_eh_lun_reset_handler._entry_ptr.66, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @csio_fcoe_lport_groups, !124, !"csio_fcoe_lport_groups", i1 false, i1 false}
!124 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1471, i32 1}
!125 = !{ptr @csio_fcoe_lport_group, !124, !"csio_fcoe_lport_group", i1 false, i1 false}
!126 = !{ptr @csio_fcoe_lport_attrs, !127, !"csio_fcoe_lport_attrs", i1 false, i1 false}
!127 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1463, i32 26}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1457, i32 8}
!130 = !{ptr @dev_attr_hw_state, !129, !"dev_attr_hw_state", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1369, i32 35}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1371, i32 35}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1458, i32 8}
!137 = !{ptr @dev_attr_device_reset, !136, !"dev_attr_device_reset", i1 false, i1 false}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1459, i32 8}
!140 = !{ptr @dev_attr_disable_port, !139, !"dev_attr_disable_port", i1 false, i1 false}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1460, i32 8}
!143 = !{ptr @dev_attr_dbg_level, !142, !"dev_attr_dbg_level", i1 false, i1 false}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1433, i32 34}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1448, i32 18}
!148 = !{ptr @csio_fcoe_vport_groups, !149, !"csio_fcoe_vport_groups", i1 false, i1 false}
!149 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1490, i32 1}
!150 = !{ptr @csio_fcoe_vport_group, !149, !"csio_fcoe_vport_group", i1 false, i1 false}
!151 = !{ptr @csio_fcoe_vport_attrs, !152, !"csio_fcoe_vport_attrs", i1 false, i1 false}
!152 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1484, i32 26}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1482, i32 8}
!155 = !{ptr @dev_attr_num_reg_rnodes, !154, !"dev_attr_num_reg_rnodes", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1479, i32 34}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 763, i32 3}
!160 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @csio_scsis_uninit._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @csio_scsis_uninit._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 923, i32 4}
!165 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @csio_scsis_aborting._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @csio_scsis_aborting._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 1013, i32 4}
!170 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @csio_scsis_closing._entry, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @csio_scsis_closing._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @init_completion.__key, !175, !"__key", i1 false, i1 false}
!175 = !{!"../include/linux/completion.h", i32 87, i32 2}
!176 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2343, i32 4}
!179 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @csio_scsi_alloc_ddp_bufs._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @csio_scsi_alloc_ddp_bufs._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 2354, i32 4}
!184 = !{ptr @csio_scsi_alloc_ddp_bufs._entry.87, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @csio_scsi_alloc_ddp_bufs._entry_ptr.89, !183, !"_entry_ptr", i1 false, i1 false}
!186 = distinct !{null, !187, !"csio_ddp_descs", i1 false, i1 false}
!187 = !{!"../drivers/scsi/csiostor/csio_scsi.c", i32 63, i32 12}
!188 = !{!"sp"}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{i64 2153882513, i64 2153883005, i64 2153882550, i64 2153882606, i64 2153882640, i64 2153882664, i64 2153882705, i64 2153882726, i64 2153882754, i64 2153882788}
!201 = !{i64 2154224703}
!202 = !{i64 2153319522}
!203 = !{i64 2153319729}
!204 = !{i64 2154227474}
!205 = distinct !{!205, !206}
!206 = !{!"llvm.loop.peeled.count", i32 1}
